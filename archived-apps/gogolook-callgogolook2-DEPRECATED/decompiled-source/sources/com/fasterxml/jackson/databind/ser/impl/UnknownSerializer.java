package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/ser/impl/UnknownSerializer.class */
public class UnknownSerializer extends StdSerializer<Object> {
    public UnknownSerializer() {
        super(Object.class);
    }

    public UnknownSerializer(Class<?> cls) {
        super(cls, false);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        jsonFormatVisitorWrapper.expectAnyFormat(javaType);
    }

    public void failForEmpty(JsonGenerator jsonGenerator, Object obj) throws JsonMappingException {
        throw JsonMappingException.from(jsonGenerator, "No serializer found for class " + obj.getClass().getName() + " and no properties discovered to create BeanSerializer (to avoid exception, disable SerializationFeature.FAIL_ON_EMPTY_BEANS) )");
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public boolean isEmpty(SerializerProvider serializerProvider, Object obj) {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        if (!serializerProvider.isEnabled(SerializationFeature.FAIL_ON_EMPTY_BEANS)) {
            jsonGenerator.writeStartObject();
            jsonGenerator.writeEndObject();
            return;
        }
        failForEmpty(jsonGenerator, obj);
        throw null;
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public final void serializeWithType(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
        if (!serializerProvider.isEnabled(SerializationFeature.FAIL_ON_EMPTY_BEANS)) {
            typeSerializer.writeTypePrefixForObject(obj, jsonGenerator);
            typeSerializer.writeTypeSuffixForObject(obj, jsonGenerator);
            return;
        }
        failForEmpty(jsonGenerator, obj);
        throw null;
    }
}
