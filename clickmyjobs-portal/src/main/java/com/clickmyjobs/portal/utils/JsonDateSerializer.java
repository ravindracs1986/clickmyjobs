package com.clickmyjobs.portal.utils;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;

public class JsonDateSerializer extends JsonSerializer<Date>{

	private static final SimpleDateFormat dateformat=new SimpleDateFormat("YYYY-MM-DD");
	
	@Override
	public void serialize(Date date, JsonGenerator gen, SerializerProvider provider)
			throws IOException, JsonProcessingException {
		gen.writeString(dateformat.format(date));
		
	}

}
