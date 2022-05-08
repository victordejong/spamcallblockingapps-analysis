package com.aotter.net.gson;

import com.aotter.net.gson.reflect.TypeToken;
/* loaded from: classes-dex2jar.jar:com/aotter/net/gson/TypeAdapterFactory.class */
public interface TypeAdapterFactory {
    <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken);
}
