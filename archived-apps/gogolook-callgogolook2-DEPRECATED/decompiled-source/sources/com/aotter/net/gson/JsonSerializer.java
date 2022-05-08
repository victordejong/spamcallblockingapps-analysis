package com.aotter.net.gson;

import java.lang.reflect.Type;
/* loaded from: classes-dex2jar.jar:com/aotter/net/gson/JsonSerializer.class */
public interface JsonSerializer<T> {
    JsonElement serialize(T t, Type type, JsonSerializationContext jsonSerializationContext);
}
