package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.databind.DatabindContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import com.fasterxml.jackson.databind.type.TypeFactory;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase.class */
public abstract class TypeIdResolverBase implements TypeIdResolver {
    public final JavaType _baseType;
    public final TypeFactory _typeFactory;

    public TypeIdResolverBase() {
        this(null, null);
    }

    public TypeIdResolverBase(JavaType javaType, TypeFactory typeFactory) {
        this._baseType = javaType;
        this._typeFactory = typeFactory;
    }

    public String getDescForKnownTypeIds() {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeIdResolver
    public String idFromBaseType() {
        return idFromValueAndType(null, this._baseType.getRawClass());
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeIdResolver
    public void init(JavaType javaType) {
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeIdResolver
    public JavaType typeFromId(DatabindContext databindContext, String str) {
        throw new IllegalStateException("Sub-class " + getClass().getName() + " MUST implement `typeFromId(DatabindContext,String)");
    }
}
