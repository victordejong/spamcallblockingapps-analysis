package com.fasterxml.jackson.databind.exc;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.JsonMappingException;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/exc/InvalidFormatException.class */
public class InvalidFormatException extends JsonMappingException {
    public InvalidFormatException(JsonParser jsonParser, String str, Object obj, Class<?> cls) {
        super(jsonParser, str);
    }

    public static InvalidFormatException from(JsonParser jsonParser, String str, Object obj, Class<?> cls) {
        return new InvalidFormatException(jsonParser, str, obj, cls);
    }
}
