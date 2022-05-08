package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatTypes;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.std.ArraySerializerBase;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.io.IOException;
@JacksonStdImpl
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/ser/impl/StringArraySerializer.class */
public class StringArraySerializer extends ArraySerializerBase<String[]> implements ContextualSerializer {
    public static final StringArraySerializer instance = new StringArraySerializer();
    public final JsonSerializer<Object> _elementSerializer;

    static {
        TypeFactory.defaultInstance().uncheckedSimpleType(String.class);
    }

    public StringArraySerializer() {
        super(String[].class);
        this._elementSerializer = null;
    }

    public StringArraySerializer(StringArraySerializer stringArraySerializer, BeanProperty beanProperty, JsonSerializer<?> jsonSerializer, Boolean bool) {
        super(stringArraySerializer, beanProperty, bool);
        this._elementSerializer = jsonSerializer;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
    public JsonSerializer<?> _withResolved(BeanProperty beanProperty, Boolean bool) {
        return new StringArraySerializer(this, beanProperty, this._elementSerializer, bool);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public ContainerSerializer<?> _withValueTypeSerializer(TypeSerializer typeSerializer) {
        return this;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        visitArrayFormat(jsonFormatVisitorWrapper, javaType, JsonFormatTypes.STRING);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0076  */
    @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase, com.fasterxml.jackson.databind.ser.ContextualSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.fasterxml.jackson.databind.JsonSerializer<?> createContextual(com.fasterxml.jackson.databind.SerializerProvider r8, com.fasterxml.jackson.databind.BeanProperty r9) throws com.fasterxml.jackson.databind.JsonMappingException {
        /*
            r7 = this;
            r0 = r9
            if (r0 == 0) goto L_0x002d
            r0 = r8
            com.fasterxml.jackson.databind.AnnotationIntrospector r0 = r0.getAnnotationIntrospector()
            r10 = r0
            r0 = r9
            com.fasterxml.jackson.databind.introspect.AnnotatedMember r0 = r0.getMember()
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L_0x002d
            r0 = r10
            r1 = r11
            java.lang.Object r0 = r0.findContentSerializer(r1)
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x002d
            r0 = r8
            r1 = r11
            r2 = r10
            com.fasterxml.jackson.databind.JsonSerializer r0 = r0.serializerInstance(r1, r2)
            r11 = r0
            goto L_0x0030
        L_0x002d:
            r0 = 0
            r11 = r0
        L_0x0030:
            r0 = r7
            r1 = r8
            r2 = r9
            java.lang.Class<java.lang.String[]> r3 = java.lang.String[].class
            com.fasterxml.jackson.annotation.JsonFormat$Feature r4 = com.fasterxml.jackson.annotation.JsonFormat.Feature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED
            java.lang.Boolean r0 = r0.findFormatFeature(r1, r2, r3, r4)
            r12 = r0
            r0 = r11
            r10 = r0
            r0 = r11
            if (r0 != 0) goto L_0x004a
            r0 = r7
            com.fasterxml.jackson.databind.JsonSerializer<java.lang.Object> r0 = r0._elementSerializer
            r10 = r0
        L_0x004a:
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r10
            com.fasterxml.jackson.databind.JsonSerializer r0 = r0.findConvertingContentSerializer(r1, r2, r3)
            r11 = r0
            r0 = r11
            if (r0 != 0) goto L_0x0063
            r0 = r8
            java.lang.Class<java.lang.String> r1 = java.lang.String.class
            r2 = r9
            com.fasterxml.jackson.databind.JsonSerializer r0 = r0.findValueSerializer(r1, r2)
            r8 = r0
            goto L_0x006b
        L_0x0063:
            r0 = r8
            r1 = r11
            r2 = r9
            com.fasterxml.jackson.databind.JsonSerializer r0 = r0.handleSecondaryContextualization(r1, r2)
            r8 = r0
        L_0x006b:
            r0 = r8
            r11 = r0
            r0 = r7
            r1 = r8
            boolean r0 = r0.isDefaultSerializer(r1)
            if (r0 == 0) goto L_0x0079
            r0 = 0
            r11 = r0
        L_0x0079:
            r0 = r11
            r1 = r7
            com.fasterxml.jackson.databind.JsonSerializer<java.lang.Object> r1 = r1._elementSerializer
            if (r0 != r1) goto L_0x008d
            r0 = r12
            r1 = r7
            java.lang.Boolean r1 = r1._unwrapSingle
            if (r0 != r1) goto L_0x008d
            r0 = r7
            return r0
        L_0x008d:
            com.fasterxml.jackson.databind.ser.impl.StringArraySerializer r0 = new com.fasterxml.jackson.databind.ser.impl.StringArraySerializer
            r1 = r0
            r2 = r7
            r3 = r9
            r4 = r11
            r5 = r12
            r1.<init>(r2, r3, r4, r5)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.impl.StringArraySerializer.createContextual(com.fasterxml.jackson.databind.SerializerProvider, com.fasterxml.jackson.databind.BeanProperty):com.fasterxml.jackson.databind.JsonSerializer");
    }

    public boolean isEmpty(SerializerProvider serializerProvider, String[] strArr) {
        return strArr == null || strArr.length == 0;
    }

    public final void serialize(String[] strArr, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        int length = strArr.length;
        if (length != 1 || ((this._unwrapSingle != null || !serializerProvider.isEnabled(SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED)) && this._unwrapSingle != Boolean.TRUE)) {
            jsonGenerator.writeStartArray(length);
            serializeContents(strArr, jsonGenerator, serializerProvider);
            jsonGenerator.writeEndArray();
            return;
        }
        serializeContents(strArr, jsonGenerator, serializerProvider);
    }

    public void serializeContents(String[] strArr, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        int length = strArr.length;
        if (length != 0) {
            JsonSerializer<Object> jsonSerializer = this._elementSerializer;
            if (jsonSerializer != null) {
                serializeContentsSlow(strArr, jsonGenerator, serializerProvider, jsonSerializer);
                return;
            }
            for (int i = 0; i < length; i++) {
                if (strArr[i] == null) {
                    jsonGenerator.writeNull();
                } else {
                    jsonGenerator.writeString(strArr[i]);
                }
            }
        }
    }

    public final void serializeContentsSlow(String[] strArr, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, JsonSerializer<Object> jsonSerializer) throws IOException {
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            if (strArr[i] == null) {
                serializerProvider.defaultSerializeNull(jsonGenerator);
            } else {
                jsonSerializer.serialize(strArr[i], jsonGenerator, serializerProvider);
            }
        }
    }
}
