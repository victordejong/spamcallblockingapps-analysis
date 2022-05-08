package com.google.gson;

import com.google.gson.internal.Streams;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/gson/JsonStreamParser.class */
public final class JsonStreamParser implements Iterator<JsonElement> {

    /* renamed from: f */
    private final JsonReader f11959f;

    /* renamed from: g */
    private final Object f11960g;

    /* renamed from: a */
    public JsonElement next() throws JsonParseException {
        if (hasNext()) {
            try {
                return Streams.m8277a(this.f11959f);
            } catch (JsonParseException e) {
                Throwable th = e;
                if (e.getCause() instanceof EOFException) {
                    th = new NoSuchElementException();
                }
                throw th;
            } catch (OutOfMemoryError e2) {
                throw new JsonParseException("Failed parsing JSON source to Json", e2);
            } catch (StackOverflowError e3) {
                throw new JsonParseException("Failed parsing JSON source to Json", e3);
            }
        } else {
            throw new NoSuchElementException();
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        boolean z;
        synchronized (this.f11960g) {
            try {
                z = this.f11959f.mo8147Z() != JsonToken.END_DOCUMENT;
            } catch (MalformedJsonException e) {
                throw new JsonSyntaxException(e);
            } catch (IOException e2) {
                throw new JsonIOException(e2);
            }
        }
        return z;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
