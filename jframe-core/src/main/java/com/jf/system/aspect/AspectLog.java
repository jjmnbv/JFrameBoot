package com.jf.system.aspect;

import com.jf.system.conf.SysConfig;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.slf4j.MDC;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Map;
import java.util.Set;

/**
 * Created with IntelliJ IDEA.
 * Description: 全局系统日志处理
 * User: xujunfei
 * Date: 2018-05-23
 * Time: 12:00
 */
@Aspect
@Component
@Order(99)
public class AspectLog {

    private final static Logger log = LoggerFactory.getLogger(AspectLog.class);

    @Resource
    private SysConfig config;

    // 针对所有controller(包含子包)
    @Pointcut("execution(public * com.jf.controller..*.*(..))")
    public void ctl() {
    }

    /**
     * 记录请求参数，客户端IP等
     *
     * @param point
     */
    @Before("ctl()")
    public void log(JoinPoint point) {
        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = attributes.getRequest();

        // 请求ID
        String requestId = String.valueOf(System.nanoTime());
        MDC.put("rid", requestId);
        // 服务器名称
        MDC.put("server", config.getServerId());
        // 客户端IP
        String remote = request.getHeader("x-forwarded-for") == null ? request.getRemoteAddr() : request.getHeader("x-forwarded-for");
        // 参数
        Map<String, String[]> parameters = request.getParameterMap();
        String param = "";
        if (!parameters.isEmpty()) {
            Set<String> keys = parameters.keySet();
            for (String key : keys) {
                String[] params = parameters.get(key);
                param += "|" + key + "=" + params[0];
            }
            param += "|";
        } else {
            param = "-";
        }
        // String method = point.getSignature().getDeclaringTypeName() + "." + point.getSignature().getName();
        log.info("{} => {}, Params: {}", remote, request.getRequestURI(), param);
    }

    // 异常在每个端下的切点进行捕捉

    @AfterReturning(pointcut = "ctl()", returning = "ret")
    public void ret(Object ret) {
        log.info("Returns: {}", ret);
        MDC.clear();
    }

    /* 环绕方法
    @Around("log()")
    public Object around(ProceedingJoinPoint pjp) {
        Object[] objects = pjp.getArgs();
        MethodSignature signature = (MethodSignature) pjp.getSignature();
        Method method = signature.getMethod();
        Annotation[][] annotations = method.getParameterAnnotations();
        for (int i = 0; i < objects.length; i++) {
            if (annotations.length > 0) {
                for (Annotation annotation : annotations[i]) {
                    if (annotation.annotationType() == Token.class) {
                        objects[i] = "1234";
                    }
                }
            }
        }

        Object result = null;
        try {
            result = pjp.proceed(objects);
        } catch (Throwable throwable) {
            throwable.printStackTrace();
        }
        return result;
    }*/
}