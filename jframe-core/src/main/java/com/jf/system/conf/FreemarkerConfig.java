package com.jf.system.conf;

import com.jf.freemarker.TemplateDirectivePage;
import com.jf.freemarker.TemplateMethod;
import freemarker.template.TemplateModelException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.view.freemarker.FreeMarkerViewResolver;

import javax.annotation.PostConstruct;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * Description: Freemarker自定义标签和指令
 * User: xujunfei
 * Date: 2017-11-28
 * Time: 11:58
 */
@Configuration
public class FreemarkerConfig {

    @Autowired
    private freemarker.template.Configuration configuration;
    @Autowired
    private TemplateDirectivePage directivePage;

    @PostConstruct
    public void setSharedVariable() throws TemplateModelException {
        // 自定义指令
        configuration.setSharedVariable("pagination", directivePage);
    }

    @Bean
    public CommandLineRunner customFreemarker(FreeMarkerViewResolver resolver) {
        return new CommandLineRunner() {
            @Override
            public void run(String... strings) throws Exception {
                // 添加自定义解析器
                Map map = resolver.getAttributesMap();
                map.put("convert", new TemplateMethod());
            }
        };
    }

}
