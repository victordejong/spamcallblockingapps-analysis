package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/ser/ContainerSerializer.class */
public abstract class ContainerSerializer<T> extends StdSerializer<T> {
    public ContainerSerializer(JavaType javaType) {
        super(javaType);
    }

    public ContainerSerializer(ContainerSerializer<?> containerSerializer) {
        super(containerSerializer._handledType, false);
    }

    public ContainerSerializer(Class<T> cls) {
        super(cls);
    }

    public ContainerSerializer(Class<?> cls, boolean z) {
        super(cls, z);
    }

    public abstract ContainerSerializer<?> _withValueTypeSerializer(TypeSerializer typeSerializer);

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    @Deprecated
    public boolean isEmpty(T t) {
        return isEmpty(null, t);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ContainerSerializer<?> withValueTypeSerializer(TypeSerializer typeSerializer) {
        return typeSerializer == null ? this : _withValueTypeSerializer(typeSerializer);
    }
}
