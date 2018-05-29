package com.clickmyjobs.portal.config;

import java.io.File;

import org.apache.commons.lang3.StringUtils;
import org.dozer.DozerBeanMapper;
import org.dozer.Mapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.XmlViewResolver;



@EnableWebMvc
@Configuration
@ComponentScan(basePackages = { "com.clickmyjobs.portal.web.controller","com.clickmyjobs.portal.validators" })
public class MvcConfig extends WebMvcConfigurerAdapter {
	private static final Logger LOGGER = LoggerFactory.getLogger(MvcConfig.class);
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
        registry.addResourceHandler("/webjars/**").addResourceLocations("classpath:/META-INF/resources/webjars/");
        //registry.addResourceHandler("/WEB-INF/assets/css/**").addResourceLocations("/css/").setCachePeriod(31556926);
        //registry.addResourceHandler("/WEB-INF/assets/img/**").addResourceLocations("/img/").setCachePeriod(31556926);
        //registry.addResourceHandler("/WEB-INF/assets/js/**").addResourceLocations("/js/").setCachePeriod(31556926);
        registry.addResourceHandler("/resources/**").addResourceLocations("/resources/assets/").setCachePeriod(31556926);
        registry.addResourceHandler("/assets/**").addResourceLocations("/assets/");
    }

    @Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
    }

    @Bean
    public InternalResourceViewResolver jspViewResolver() {
        InternalResourceViewResolver bean = new InternalResourceViewResolver();
        bean.setPrefix("/WEB-INF/views/");
        bean.setSuffix(".jsp");
        return bean;
    }

    @Bean(name = "messageSource")
    public ReloadableResourceBundleMessageSource getMessageSource() {
        ReloadableResourceBundleMessageSource resource = new ReloadableResourceBundleMessageSource();
        resource.setBasename("classpath:messages");
        resource.setDefaultEncoding("UTF-8");
        return resource;
    }
    
    @Bean
	public static PropertySourcesPlaceholderConfigurer propertyConfigInDev() {
		PropertySourcesPlaceholderConfigurer ppc = new PropertySourcesPlaceholderConfigurer();
		FileSystemResource[] resources = new FileSystemResource[]{ new FileSystemResource( getPropertyPath() + ConfigConstants.PROPERTIES_EXT )};
	    ppc.setLocations( resources );
	    ppc.setIgnoreUnresolvablePlaceholders( false );
	    return ppc;
	}
    private static String propertyPath;
    
    public static String getPropertyPath() {
    	if(!StringUtils.isEmpty(propertyPath)) {
    		return propertyPath;
    	}
    	// Get from PROJECT CONFIGURATION server
		/*String propertyHome = System.getProperty(ConfigConstants.PATH_PROJ_CONFIG) != null ? System.getProperty(ConfigConstants.PATH_PROJ_CONFIG) : System.getenv(ConfigConstants.PATH_PROJ_CONFIG);
	    LOGGER.info("PROJECT CONFIGURATION HOME >> " + propertyHome);
	    File file = new File(propertyHome + ConfigConstants.FILE_SYS_RESOURCE);
		if (!file.exists()) propertyHome = null;*/
	    
	    // Get from TOMCAT server
    	File file =null;
	    	String propertyHome = System.getProperty(ConfigConstants.PATH_CATALINA_HOME) != null ? System.getProperty(ConfigConstants.PATH_CATALINA_HOME) : System.getProperty(ConfigConstants.PATH_CATALINA_BASE);
	    	if(!StringUtils.isEmpty(propertyHome)) {
	    		propertyHome = propertyHome + File.separator + "conf";
	    	}
	    	LOGGER.info("CATALINA HOME >> " + propertyHome);
	    	file = new File(propertyHome + ConfigConstants.FILE_SYS_RESOURCE);
			if (!file.exists()) propertyHome = null;
	 
	    
	   /* // Get from JBOSS server
    	if(BaseUtil.isObjNull(propertyHome)) {
    		propertyHome = System.getProperty(ConfigConstants.PROJ_JBOSS_HOME);
    		if(!BaseUtil.isObjNull(propertyHome)) {
	    		propertyHome = propertyHome + File.separator + "configuration";
	    	}
			LOGGER.info("JBOSS HOME >> " + propertyHome);
			file = new File(propertyHome + ConfigConstants.FILE_SYS_RESOURCE);
			if (!file.exists()) propertyHome = null;
	    }*/
    	    	
	    if(!StringUtils.isEmpty(propertyHome)) {
	    	file = new File(propertyHome + ConfigConstants.FILE_SYS_RESOURCE);
			if (file.exists() && !file.isDirectory()) {
				propertyPath = propertyHome + File.separator + ConfigConstants.PROPERTY_FILENAME;
			} else {
				LOGGER.info("Missing properties file >> " + propertyHome + ConfigConstants.FILE_SYS_RESOURCE);
			}
	    }
	    
	    // Get from Application CLASSPATH
	    propertyPath = propertyPath != null ? propertyPath : ConfigConstants.PROPERTY_CLASSPATH;
	    
	    LOGGER.info("\n[Application Properties :: \n\tPath : " + propertyPath + "\n]");
	    
	    return propertyPath;
    }
    
    @Bean public Mapper dozerMapper() { return new DozerBeanMapper(); }
}
