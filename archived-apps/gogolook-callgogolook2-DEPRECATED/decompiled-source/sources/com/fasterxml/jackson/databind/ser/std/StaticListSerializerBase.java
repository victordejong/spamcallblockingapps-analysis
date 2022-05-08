package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonArrayFormatVisitor;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import java.util.Collection;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/StaticListSerializerBase.class */
public abstract class StaticListSerializerBase<T extends Collection<?>> extends StdSerializer<T> implements ContextualSerializer {
    public final JsonSerializer<String> _serializer;
    public final Boolean _unwrapSingle;

    /* JADX WARN: Multi-variable type inference failed */
    public StaticListSerializerBase(StaticListSerializerBase<?> staticListSerializerBase, JsonSerializer<?> jsonSerializer, Boolean bool) {
        super(staticListSerializerBase);
        this._serializer = jsonSerializer;
        this._unwrapSingle = bool;
    }

    public StaticListSerializerBase(Class<?> cls) {
        super(cls, false);
        this._serializer = null;
        this._unwrapSingle = null;
    }

    public abstract JsonSerializer<?> _withResolved(BeanProperty beanProperty, JsonSerializer<?> jsonSerializer, Boolean bool);

    public abstract void acceptContentVisitor(JsonArrayFormatVisitor jsonArrayFormatVisitor) throws JsonMappingException;

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        acceptContentVisitor(jsonFormatVisitorWrapper.expectArrayFormat(javaType));
    }

    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    public JsonSerializer<?> createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
        Boolean bool;
        JsonSerializer<Object> jsonSerializer;
        Object findContentSerializer;
        if (beanProperty != null) {
            AnnotationIntrospector annotationIntrospector = serializerProvider.getAnnotationIntrospector();
            AnnotatedMember member = beanProperty.getMember();
            jsonSerializer = (member == null || (findContentSerializer = annotationIntrospector.findContentSerializer(member)) == null) ? null : serializerProvider.serializerInstance(member, findContentSerializer);
            JsonFormat.Value findPropertyFormat = beanProperty.findPropertyFormat(serializerProvider.getConfig(), this._handledType);
            bool = findPropertyFormat != null ? findPropertyFormat.getFeature(JsonFormat.Feature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED) : null;
        } else {
            jsonSerializer = null;
            bool = null;
        }
        JsonSerializer<Object> jsonSerializer2 = jsonSerializer;
        if (jsonSerializer == null) {
            jsonSerializer2 = this._serializer;
        }
        JsonSerializer<?> findConvertingContentSerializer = findConvertingContentSerializer(serializerProvider, beanProperty, jsonSerializer2);
        JsonSerializer<?> findValueSerializer = findConvertingContentSerializer == null ? serializerProvider.findValueSerializer(String.class, beanProperty) : serializerProvider.handleSecondaryContextualization(findConvertingContentSerializer, beanProperty);
        JsonSerializer<?> jsonSerializer3 = findValueSerializer;
        if (isDefaultSerializer(findValueSerializer)) {
            jsonSerializer3 = null;
        }
        return (jsonSerializer3 == this._serializer && bool == this._unwrapSingle) ? this : _withResolved(beanProperty, jsonSerializer3, bool);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public /* bridge */ /* synthetic */ boolean isEmpty(SerializerProvider serializerProvider, Object obj) {
        return isEmpty(serializerProvider, (SerializerProvider) ((Collection) obj));
    }

    public boolean isEmpty(SerializerProvider serializerProvider, T t) {
        return t == null || t.size() == 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public /* bridge */ /* synthetic */ boolean isEmpty(Object obj) {
        return isEmpty((StaticListSerializerBase<T>) ((Collection) obj));
    }

    @Deprecated
    public boolean isEmpty(T t) {
        return isEmpty((SerializerProvider) null, (SerializerProvider) t);
    }
}
