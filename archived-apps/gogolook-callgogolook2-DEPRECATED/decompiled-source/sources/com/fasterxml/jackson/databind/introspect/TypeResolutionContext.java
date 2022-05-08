package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.lang.reflect.Type;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/introspect/TypeResolutionContext.class */
public interface TypeResolutionContext {

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/introspect/TypeResolutionContext$Basic.class */
    public static class Basic implements TypeResolutionContext {
        public final TypeBindings _bindings;
        public final TypeFactory _typeFactory;

        public Basic(TypeFactory typeFactory, TypeBindings typeBindings) {
            this._typeFactory = typeFactory;
            this._bindings = typeBindings;
        }

        @Override // com.fasterxml.jackson.databind.introspect.TypeResolutionContext
        public JavaType resolveType(Type type) {
            return this._typeFactory.constructType(type, this._bindings);
        }
    }

    JavaType resolveType(Type type);
}
