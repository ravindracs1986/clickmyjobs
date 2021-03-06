package com.clickmyjobs.portal.config;

import java.util.Properties;

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;

import org.dozer.DozerBeanMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.*;
import org.springframework.core.env.Environment;
import org.springframework.dao.annotation.PersistenceExceptionTranslationPostProcessor;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.*;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;



@Configuration
@EnableTransactionManagement
@ComponentScan("com.clickmyjobs.portal.persist")
@EnableJpaRepositories(basePackages = { "com.clickmyjobs.portal.persist.repo"},transactionManagerRef="transactionManager")
@PropertySource(value = { "classpath:clickmyjobs-portal.properties" })
public class JPAConfig {

	@Autowired
    private Environment environment;
	
	@Value("${" + ConfigConstants.DB_CONF_DRIVER + "}")
	private String dbDriver;
	
	@Value("${" + ConfigConstants.DB_CONF_URL + "}")
	private String dbUrl;

	@Value("${" + ConfigConstants.DB_CONF_UNAME + "}")
	private String dbUserName;

	@Value("${" + ConfigConstants.DB_CONF_PWORD + "}")
	private String dbPassword;
	
	
    @Bean(name = "dataSource")
    public DataSource dataSource() {
       /* return new EmbeddedDatabaseBuilder().setType(EmbeddedDatabaseType.HSQL).setName("myDb")
                .addScript("classpath:schema.sql").addScript("classpath:data.sql").build();*/
    	
    	DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName(environment.getRequiredProperty("mysql.db.driver"));
        dataSource.setUrl(environment.getRequiredProperty("mysql.db.url"));
        dataSource.setUsername(environment.getRequiredProperty("mysql.db.uname"));
        dataSource.setPassword(environment.getRequiredProperty("mysql.db.pword"));
        return dataSource;
    	
    }

    @Bean(name = "entityManagerFactory")
    public LocalContainerEntityManagerFactoryBean entityManagerFactoryBean() {
        LocalContainerEntityManagerFactoryBean factoryBean = new LocalContainerEntityManagerFactoryBean();
        factoryBean.setDataSource(dataSource());
        factoryBean.setPackagesToScan(new String[] { "com.clickmyjobs.portal.persist.*" });
        HibernateJpaVendorAdapter vendorAdapter = new HibernateJpaVendorAdapter();
        vendorAdapter.setShowSql(true);
        factoryBean.setJpaVendorAdapter(vendorAdapter);
        factoryBean.setJpaProperties(additionalProperties());
        return factoryBean;
    }

    @Bean
    public PlatformTransactionManager transactionManager(EntityManagerFactory emf) {
        JpaTransactionManager transactionManager = new JpaTransactionManager();
       // transactionManager.setEntityManagerFactory(entityManagerFactoryBean().getObject());
        transactionManager.setEntityManagerFactory(emf);
        return transactionManager;
    }

    @Bean
    public PersistenceExceptionTranslationPostProcessor exceptionTranslation() {
        return new PersistenceExceptionTranslationPostProcessor();
    }

       Properties additionalProperties() {
        Properties properties = new Properties();
        //properties.setProperty("hibernate.hbm2ddl.auto", "create");
        properties.setProperty("hibernate.dialect", "org.hibernate.dialect.MySQL5Dialect");
         
        return properties;
    }
    @Bean
    public DozerBeanMapper getMapper() {
        return new DozerBeanMapper();
    }

}
