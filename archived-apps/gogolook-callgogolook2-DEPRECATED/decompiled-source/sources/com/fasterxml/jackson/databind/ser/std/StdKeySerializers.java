package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/StdKeySerializers.class */
public class StdKeySerializers {
    public static final JsonSerializer<Object> DEFAULT_KEY_SERIALIZER = new StdKeySerializer();
    public static final JsonSerializer<Object> DEFAULT_STRING_SERIALIZER = new StringKeySerializer();

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default.class */
    public static class Default extends StdSerializer<Object> {
        public final int _typeId;

        public Default(int i, Class<?> cls) {
            super(cls, false);
            this._typeId = i;
        }

        @Override // com.fasterxml.jackson.databind.JsonSerializer
        public void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
            int i = this._typeId;
            if (i == 1) {
                serializerProvider.defaultSerializeDateKey((Date) obj, jsonGenerator);
            } else if (i == 2) {
                serializerProvider.defaultSerializeDateKey(((Calendar) obj).getTimeInMillis(), jsonGenerator);
            } else if (i == 3) {
                jsonGenerator.writeFieldName(((Class) obj).getName());
            } else if (i != 4) {
                jsonGenerator.writeFieldName(obj.toString());
            } else {
                jsonGenerator.writeFieldName(serializerProvider.isEnabled(SerializationFeature.WRITE_ENUMS_USING_TO_STRING) ? obj.toString() : ((Enum) obj).name());
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/StdKeySerializers$Dynamic.class */
    public static class Dynamic extends StdSerializer<Object> {
        public transient PropertySerializerMap _dynamicSerializers = PropertySerializerMap.emptyForProperties();

        public Dynamic() {
            super(String.class, false);
        }

        public JsonSerializer<Object> _findAndAddDynamic(PropertySerializerMap propertySerializerMap, Class<?> cls, SerializerProvider serializerProvider) throws JsonMappingException {
            PropertySerializerMap.SerializerAndMapResult findAndAddKeySerializer = propertySerializerMap.findAndAddKeySerializer(cls, serializerProvider, null);
            PropertySerializerMap propertySerializerMap2 = findAndAddKeySerializer.map;
            if (propertySerializerMap != propertySerializerMap2) {
                this._dynamicSerializers = propertySerializerMap2;
            }
            return findAndAddKeySerializer.serializer;
        }

        public Object readResolve() {
            this._dynamicSerializers = PropertySerializerMap.emptyForProperties();
            return this;
        }

        @Override // com.fasterxml.jackson.databind.JsonSerializer
        public void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
            Class<?> cls = obj.getClass();
            PropertySerializerMap propertySerializerMap = this._dynamicSerializers;
            JsonSerializer<Object> serializerFor = propertySerializerMap.serializerFor(cls);
            JsonSerializer<Object> jsonSerializer = serializerFor;
            if (serializerFor == null) {
                jsonSerializer = _findAndAddDynamic(propertySerializerMap, cls, serializerProvider);
            }
            jsonSerializer.serialize(obj, jsonGenerator, serializerProvider);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/StdKeySerializers$StringKeySerializer.class */
    public static class StringKeySerializer extends StdSerializer<Object> {
        public StringKeySerializer() {
            super(String.class, false);
        }

        @Override // com.fasterxml.jackson.databind.JsonSerializer
        public void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
            jsonGenerator.writeFieldName((String) obj);
        }
    }

    public static JsonSerializer<Object> getFallbackKeySerializer(SerializationConfig serializationConfig, Class<?> cls) {
        if (cls != null) {
            if (cls == Enum.class) {
                return new Dynamic();
            }
            if (cls.isEnum()) {
                return new Default(4, cls);
            }
        }
        return DEFAULT_KEY_SERIALIZER;
    }

    public static JsonSerializer<Object> getStdKeySerializer(SerializationConfig serializationConfig, Class<?> cls, boolean z) {
        if (cls == null || cls == Object.class) {
            return new Dynamic();
        }
        if (cls == String.class) {
            return DEFAULT_STRING_SERIALIZER;
        }
        if (cls.isPrimitive() || Number.class.isAssignableFrom(cls)) {
            return DEFAULT_KEY_SERIALIZER;
        }
        if (cls == Class.class) {
            return new Default(3, cls);
        }
        if (Date.class.isAssignableFrom(cls)) {
            return new Default(1, cls);
        }
        if (Calendar.class.isAssignableFrom(cls)) {
            return new Default(2, cls);
        }
        if (cls == UUID.class) {
            return new Default(5, cls);
        }
        return z ? DEFAULT_KEY_SERIALIZER : null;
    }
}
