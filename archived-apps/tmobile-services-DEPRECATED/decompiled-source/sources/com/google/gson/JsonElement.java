package com.google.gson;

import com.google.gson.internal.Streams;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.StringWriter;
/* loaded from: classes-dex2jar.jar:com/google/gson/JsonElement.class */
public abstract class JsonElement {
    /* renamed from: c */
    public JsonArray m8393c() {
        if (m8390f()) {
            return (JsonArray) this;
        }
        throw new IllegalStateException("Not a JSON Array: " + this);
    }

    /* renamed from: d */
    public JsonObject m8392d() {
        if (m8388h()) {
            return (JsonObject) this;
        }
        throw new IllegalStateException("Not a JSON Object: " + this);
    }

    /* renamed from: e */
    public JsonPrimitive m8391e() {
        if (m8387j()) {
            return (JsonPrimitive) this;
        }
        throw new IllegalStateException("Not a JSON Primitive: " + this);
    }

    /* renamed from: f */
    public boolean m8390f() {
        return this instanceof JsonArray;
    }

    /* renamed from: g */
    public boolean m8389g() {
        return this instanceof JsonNull;
    }

    /* renamed from: h */
    public boolean m8388h() {
        return this instanceof JsonObject;
    }

    /* renamed from: j */
    public boolean m8387j() {
        return this instanceof JsonPrimitive;
    }

    public String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            JsonWriter jsonWriter = new JsonWriter(stringWriter);
            jsonWriter.m8115V(true);
            Streams.m8276b(this, jsonWriter);
            return stringWriter.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
