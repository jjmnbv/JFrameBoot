package com.jf.system.conf;

import com.jf.commons.LogManager;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;

/**
 * Created with IntelliJ IDEA.
 * Description: 应用启动后执行方法
 * User: xujunfei
 * Date: 2018-04-17
 * Time: 10:35
 */
//@Component
//@Order(1)
public class AppRunners implements ApplicationRunner {

    @Override
    public void run(ApplicationArguments args) throws Exception {
        LogManager.info("runner start...");
    }

}
