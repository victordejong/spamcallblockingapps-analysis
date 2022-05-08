package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/AsArraySerializerBase.class */
public abstract class AsArraySerializerBase<T> extends ContainerSerializer<T> implements ContextualSerializer {
    public PropertySerializerMap _dynamicSerializers;
    public final JsonSerializer<Object> _elementSerializer;
    public final JavaType _elementType;
    public final BeanProperty _property;
    public final boolean _staticTyping;
    public final Boolean _unwrapSingle;
    public final TypeSerializer _valueTypeSerializer;

    public AsArraySerializerBase(AsArraySerializerBase<?> asArraySerializerBase, BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer, Boolean bool) {
        super(asArraySerializerBase);
        this._elementType = asArraySerializerBase._elementType;
        this._staticTyping = asArraySerializerBase._staticTyping;
        this._valueTypeSerializer = typeSerializer;
        this._property = beanProperty;
        this._elementSerializer = jsonSerializer;
        this._dynamicSerializers = asArraySerializerBase._dynamicSerializers;
        this._unwrapSingle = bool;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0020, code lost:
        if (r6.isFinal() != false) goto L_0x0023;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AsArraySerializerBase(java.lang.Class<?> r5, com.fasterxml.jackson.databind.JavaType r6, boolean r7, com.fasterxml.jackson.databind.jsontype.TypeSerializer r8, com.fasterxml.jackson.databind.JsonSerializer<java.lang.Object> r9) {
        /*
            r4 = this;
            r0 = 0
            r10 = r0
            r0 = r4
            r1 = r5
            r2 = 0
            r0.<init>(r1, r2)
            r0 = r4
            r1 = r6
            r0._elementType = r1
            r0 = r7
            if (r0 != 0) goto L_0x0023
            r0 = r10
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0025
            r0 = r10
            r7 = r0
            r0 = r6
            boolean r0 = r0.isFinal()
            if (r0 == 0) goto L_0x0025
        L_0x0023:
            r0 = 1
            r7 = r0
        L_0x0025:
            r0 = r4
            r1 = r7
            r0._staticTyping = r1
            r0 = r4
            r1 = r8
            r0._valueTypeSerializer = r1
            r0 = r4
            r1 = 0
            r0._property = r1
            r0 = r4
            r1 = r9
            r0._elementSerializer = r1
            r0 = r4
            com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap r1 = com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap.emptyForProperties()
            r0._dynamicSerializers = r1
            r0 = r4
            r1 = 0
            r0._unwrapSingle = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase.<init>(java.lang.Class, com.fasterxml.jackson.databind.JavaType, boolean, com.fasterxml.jackson.databind.jsontype.TypeSerializer, com.fasterxml.jackson.databind.JsonSerializer):void");
    }

    public final JsonSerializer<Object> _findAndAddDynamic(PropertySerializerMap propertySerializerMap, JavaType javaType, SerializerProvider serializerProvider) throws JsonMappingException {
        PropertySerializerMap.SerializerAndMapResult findAndAddSecondarySerializer = propertySerializerMap.findAndAddSecondarySerializer(javaType, serializerProvider, this._property);
        PropertySerializerMap propertySerializerMap2 = findAndAddSecondarySerializer.map;
        if (propertySerializerMap != propertySerializerMap2) {
            this._dynamicSerializers = propertySerializerMap2;
        }
        return findAndAddSecondarySerializer.serializer;
    }

    public final JsonSerializer<Object> _findAndAddDynamic(PropertySerializerMap propertySerializerMap, Class<?> cls, SerializerProvider serializerProvider) throws JsonMappingException {
        PropertySerializerMap.SerializerAndMapResult findAndAddSecondarySerializer = propertySerializerMap.findAndAddSecondarySerializer(cls, serializerProvider, this._property);
        PropertySerializerMap propertySerializerMap2 = findAndAddSecondarySerializer.map;
        if (propertySerializerMap != propertySerializerMap2) {
            this._dynamicSerializers = propertySerializerMap2;
        }
        return findAndAddSecondarySerializer.serializer;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        JsonSerializer<Object> jsonSerializer = this._elementSerializer;
        JsonSerializer<Object> jsonSerializer2 = jsonSerializer;
        if (jsonSerializer == null) {
            jsonSerializer2 = jsonFormatVisitorWrapper.getProvider().findValueSerializer(this._elementType, this._property);
        }
        visitArrayFormat(jsonFormatVisitorWrapper, javaType, jsonSerializer2, this._elementType);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    public JsonSerializer<?> createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer<Object> jsonSerializer;
        JsonSerializer<?> jsonSerializer2;
        Object findContentSerializer;
        TypeSerializer typeSerializer = this._valueTypeSerializer;
        TypeSerializer typeSerializer2 = typeSerializer;
        if (typeSerializer != null) {
            typeSerializer2 = typeSerializer.forProperty(beanProperty);
        }
        Boolean bool = null;
        if (beanProperty != null) {
            AnnotationIntrospector annotationIntrospector = serializerProvider.getAnnotationIntrospector();
            AnnotatedMember member = beanProperty.getMember();
            JsonSerializer<Object> serializerInstance = (member == null || (findContentSerializer = annotationIntrospector.findContentSerializer(member)) == null) ? null : serializerProvider.serializerInstance(member, findContentSerializer);
            JsonFormat.Value findPropertyFormat = beanProperty.findPropertyFormat(serializerProvider.getConfig(), this._handledType);
            jsonSerializer = serializerInstance;
            if (findPropertyFormat != null) {
                bool = findPropertyFormat.getFeature(JsonFormat.Feature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED);
                jsonSerializer = serializerInstance;
            }
        } else {
            jsonSerializer = null;
        }
        JsonSerializer<Object> jsonSerializer3 = jsonSerializer;
        if (jsonSerializer == null) {
            jsonSerializer3 = this._elementSerializer;
        }
        JsonSerializer<?> findConvertingContentSerializer = findConvertingContentSerializer(serializerProvider, beanProperty, jsonSerializer3);
        if (findConvertingContentSerializer == null) {
            JavaType javaType = this._elementType;
            jsonSerializer2 = findConvertingContentSerializer;
            if (javaType != null) {
                jsonSerializer2 = findConvertingContentSerializer;
                if (this._staticTyping) {
                    jsonSerializer2 = findConvertingContentSerializer;
                    if (!javaType.isJavaLangObject()) {
                        jsonSerializer2 = serializerProvider.findValueSerializer(this._elementType, beanProperty);
                    }
                }
            }
        } else {
            jsonSerializer2 = serializerProvider.handleSecondaryContextualization(findConvertingContentSerializer, beanProperty);
        }
        return (jsonSerializer2 == this._elementSerializer && beanProperty == this._property && this._valueTypeSerializer == typeSerializer2 && this._unwrapSingle == bool) ? this : withResolved(beanProperty, typeSerializer2, jsonSerializer2, bool);
    }

    public abstract void serializeContents(T t, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException;

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public void serializeWithType(T t, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
        typeSerializer.writeTypePrefixForArray(t, jsonGenerator);
        jsonGenerator.setCurrentValue(t);
        serializeContents(t, jsonGenerator, serializerProvider);
        typeSerializer.writeTypeSuffixForArray(t, jsonGenerator);
    }

    public abstract AsArraySerializerBase<T> withResolved(BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer, Boolean bool);
}
