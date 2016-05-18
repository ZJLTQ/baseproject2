package com.dcits.govsbu.southernbase.baseproject2.conf;

import java.lang.reflect.Method;

import org.springframework.cache.CacheManager;
import org.springframework.cache.annotation.CachingConfigurerSupport;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.cache.interceptor.KeyGenerator;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.data.redis.cache.RedisCacheManager;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.data.redis.serializer.Jackson2JsonRedisSerializer;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.PropertyAccessor;
import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * 
 * @author dc_zjl
 * @time 2015-05-10
 */
@Configuration
@PropertySource(value = "classpath:/redis.properties")
@EnableCaching
public class RedisConfig extends CachingConfigurerSupport {
	/**
	 * redis缓存配置--缓存key的生成规则（如：类名.append(方法名).append(参数值)）
	 * @return
	 */
	@Bean  
    public KeyGenerator wiselyKeyGenerator(){
        return new KeyGenerator() {
            @Override
            public Object generate(Object target, Method method, Object... params) {
                StringBuilder sb = new StringBuilder();
                sb.append(target.getClass().getName());
                sb.append(method.getName());
                for (Object obj : params) {
                    sb.append(obj.toString());
                }  
                return sb.toString();
            }
        };
  
    }  
	
	/**
	 * redis cache 缓存管理器配置
	 * @param redisTemplate
	 * @return
	 */
    @Bean  
    public CacheManager cacheManager(
            @SuppressWarnings("rawtypes") RedisTemplate redisTemplate) {
    	RedisCacheManager redisCacheManager = new RedisCacheManager(redisTemplate);
    	redisCacheManager.setDefaultExpiration(30);//设置缓存过期时间
        return redisCacheManager;
    }
    
    /**
     * redisTemplate--这里确定redis中存储的格式json、序列化工具
     * @param factory
     * @return
     */
    @Bean  
    public RedisTemplate<String, String> redisTemplate(
            RedisConnectionFactory factory) {
        StringRedisTemplate template = new StringRedisTemplate(factory);
        Jackson2JsonRedisSerializer jackson2JsonRedisSerializer = new Jackson2JsonRedisSerializer(Object.class);
        ObjectMapper om = new ObjectMapper();
        om.setVisibility(PropertyAccessor.ALL, JsonAutoDetect.Visibility.ANY);
        om.enableDefaultTyping(ObjectMapper.DefaultTyping.NON_FINAL);
        jackson2JsonRedisSerializer.setObjectMapper(om);
        template.setValueSerializer(jackson2JsonRedisSerializer);
        template.afterPropertiesSet();
        return template;
    }
}
