package com.clickmyjobs.portal.utils;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;

@Component
public class StaticMap {

public static final Map<String,String> jobTypeMap = getJobTypeMap();
	
	public static Map<String,String> getJobTypeMap() {
        Map<String,String> result = new HashMap<String,String>();
        result.put("1", "Full-Time");
        result.put("2", "Part-Time");
        return Collections.unmodifiableMap(result);
    }
	
}
