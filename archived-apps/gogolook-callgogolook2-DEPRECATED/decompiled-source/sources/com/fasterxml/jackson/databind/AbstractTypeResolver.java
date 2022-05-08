package com.fasterxml.jackson.databind;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/AbstractTypeResolver.class */
public abstract class AbstractTypeResolver {
    public JavaType findTypeMapping(DeserializationConfig deserializationConfig, JavaType javaType) {
        return null;
    }

    public JavaType resolveAbstractType(DeserializationConfig deserializationConfig, BeanDescription beanDescription) {
        return resolveAbstractType(deserializationConfig, beanDescription.getType());
    }

    public JavaType resolveAbstractType(DeserializationConfig deserializationConfig, JavaType javaType) {
        return null;
    }
}
