package com.google.gson;

import com.google.gson.internal.bind.JsonTreeWriter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/gson/TypeAdapter.class */
public abstract class TypeAdapter<T> {
    /* renamed from: a */
    public final TypeAdapter<T> m8369a() {
        return new TypeAdapter<T>() { // from class: com.google.gson.TypeAdapter.1
            @Override // com.google.gson.TypeAdapter
            /* renamed from: b */
            public T mo8175b(JsonReader jsonReader) throws IOException {
                if (jsonReader.mo8147Z() != JsonToken.NULL) {
                    return (T) TypeAdapter.this.mo8175b(jsonReader);
                }
                jsonReader.mo8151V();
                return null;
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: d */
            public void mo8174d(JsonWriter jsonWriter, T t) throws IOException {
                if (t == null) {
                    jsonWriter.mo8094t();
                } else {
                    TypeAdapter.this.mo8174d(jsonWriter, t);
                }
            }
        };
    }

    /* renamed from: b */
    public abstract T mo8175b(JsonReader jsonReader) throws IOException;

    /* renamed from: c */
    public final JsonElement m8368c(T t) {
        try {
            JsonTreeWriter jsonTreeWriter = new JsonTreeWriter();
            mo8174d(jsonTreeWriter, t);
            return jsonTreeWriter.m8259j0();
        } catch (IOException e) {
            throw new JsonIOException(e);
        }
    }

    /* renamed from: d */
    public abstract void mo8174d(JsonWriter jsonWriter, T t) throws IOException;
}
