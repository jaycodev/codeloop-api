package com.course.platform.config;

import org.springframework.boot.web.error.ErrorAttributeOptions;
import org.springframework.boot.web.servlet.error.DefaultErrorAttributes;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.WebRequest;

import java.util.Map;

@Component
public class CustomErrorAttributes extends DefaultErrorAttributes {

   @Override
   public Map<String, Object> getErrorAttributes(WebRequest webRequest, ErrorAttributeOptions options) {
       options = options.excluding(
           ErrorAttributeOptions.Include.EXCEPTION,
           ErrorAttributeOptions.Include.STACK_TRACE,
           ErrorAttributeOptions.Include.BINDING_ERRORS
       );
       
       return super.getErrorAttributes(webRequest, options);
   }
}  
