package com.aotter.net.gson.internal.bind;

import com.aotter.net.gson.Gson;
import com.aotter.net.gson.JsonDeserializer;
import com.aotter.net.gson.JsonSerializer;
import com.aotter.net.gson.TypeAdapter;
import com.aotter.net.gson.TypeAdapterFactory;
import com.aotter.net.gson.annotations.JsonAdapter;
import com.aotter.net.gson.internal.ConstructorConstructor;
import com.aotter.net.gson.reflect.TypeToken;
/* loaded from: classes-dex2jar.jar:com/aotter/net/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory.class */
public final class JsonAdapterAnnotationTypeAdapterFactory implements TypeAdapterFactory {
    public final ConstructorConstructor constructorConstructor;

    public JsonAdapterAnnotationTypeAdapterFactory(ConstructorConstructor constructorConstructor) {
        this.constructorConstructor = constructorConstructor;
    }

    @Override // com.aotter.net.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        JsonAdapter jsonAdapter = (JsonAdapter) typeToken.getRawType().getAnnotation(JsonAdapter.class);
        if (jsonAdapter == null) {
            return null;
        }
        return (TypeAdapter<T>) getTypeAdapter(this.constructorConstructor, gson, typeToken, jsonAdapter);
    }

    public TypeAdapter<?> getTypeAdapter(ConstructorConstructor constructorConstructor, Gson gson, TypeToken<?> typeToken, JsonAdapter jsonAdapter) {
        TypeAdapter<?> typeAdapter;
        Object construct = constructorConstructor.get(TypeToken.get((Class) jsonAdapter.value())).construct();
        if (construct instanceof TypeAdapter) {
            typeAdapter = (TypeAdapter) construct;
        } else if (construct instanceof TypeAdapterFactory) {
            typeAdapter = ((TypeAdapterFactory) construct).create(gson, typeToken);
        } else {
            boolean z = construct instanceof JsonSerializer;
            if (z || (construct instanceof JsonDeserializer)) {
                JsonDeserializer jsonDeserializer = null;
                JsonSerializer jsonSerializer = z ? (JsonSerializer) construct : null;
                if (construct instanceof JsonDeserializer) {
                    jsonDeserializer = (JsonDeserializer) construct;
                }
                typeAdapter = new TreeTypeAdapter<>(jsonSerializer, jsonDeserializer, gson, typeToken, null);
            } else {
                throw new IllegalArgumentException("@JsonAdapter value must be TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer reference.");
            }
        }
        TypeAdapter<?> typeAdapter2 = typeAdapter;
        if (typeAdapter != null) {
            typeAdapter2 = typeAdapter.nullSafe();
        }
        return typeAdapter2;
    }
}
