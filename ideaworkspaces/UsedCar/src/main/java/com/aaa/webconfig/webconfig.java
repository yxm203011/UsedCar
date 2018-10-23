package com.aaa.webconfig;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
public class webconfig extends WebMvcConfigurerAdapter {

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/Images/**").addResourceLocations("file:D:/ideaworkspaces/UsedCar/src/main/resources/static/Images/");
        super.addResourceHandlers(registry);
    }
}
