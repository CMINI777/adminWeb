package com.boot.controller;

import org.springframework.boot.web.server.*;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpStatus;

/**
 * Created by minichn
 */
@Configuration
public class ErrorConfigurarController {

//    @Override   // ErrorConfigurar implements ErrorPageRegistrar
//    public void registerErrorPages(ErrorPageRegistry registry) {
//        ErrorPage[] errorPages = new ErrorPage[2];
//        errorPages[0] = new ErrorPage(HttpStatus.NOT_FOUND, "/static/404.html");
//        errorPages[1] = new ErrorPage(HttpStatus.INTERNAL_SERVER_ERROR, "/static/500.html");
//
//        registry.addErrorPages(errorPages);
//    }

    //@Bean必须加上
    @Bean
    public WebServerFactoryCustomizer<ConfigurableWebServerFactory> webServerFactoryCustomizer() {
//        //第一种：java7 常规写法
//        return new WebServerFactoryCustomizer<ConfigurableWebServerFactory>() {
//            @Override
//            public void customize(ConfigurableWebServerFactory factory) {
//                ErrorPage errorPage404 = new ErrorPage(HttpStatus.NOT_FOUND, "/static/404.html");
//                factory.addErrorPages(errorPage404);
//            }
//        };
        //第二种写法：java8 lambda写法
        return (factory -> {
            ErrorPage[] errorPages = new ErrorPage[2];
            errorPages[0] = new ErrorPage(HttpStatus.NOT_FOUND, "/static/404.html");
            errorPages[1] = new ErrorPage(HttpStatus.INTERNAL_SERVER_ERROR, "/static/500.html");
            factory.addErrorPages(errorPages);
        });
    }
}
