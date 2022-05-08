package com.google.gson.internal;

import com.google.gson.JsonElement;
import com.google.gson.JsonIOException;
import com.google.gson.JsonNull;
import com.google.gson.JsonParseException;
import com.google.gson.JsonSyntaxException;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.google.gson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;
/* loaded from: classes-dex2jar.jar:com/google/gson/internal/Streams.class */
public final class Streams {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/gson/internal/Streams$AppendableWriter.class */
    public static final class AppendableWriter extends Writer {

        /* renamed from: f */
        private final Appendable f12048f;

        /* renamed from: g */
        private final CurrentWrite f12049g = new CurrentWrite();

        /* loaded from: classes-dex2jar.jar:com/google/gson/internal/Streams$AppendableWriter$CurrentWrite.class */
        static class CurrentWrite implements CharSequence {

            /* renamed from: f */
            char[] f12050f;

            CurrentWrite() {
            }

            @Override // java.lang.CharSequence
            public char charAt(int i) {
                return this.f12050f[i];
            }

            @Override // java.lang.CharSequence
            public int length() {
                return this.f12050f.length;
            }

            @Override // java.lang.CharSequence
            public CharSequence subSequence(int i, int i2) {
                return new String(this.f12050f, i, i2 - i);
            }
        }

        AppendableWriter(Appendable appendable) {
            this.f12048f = appendable;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.Writer
        public void write(int i) throws IOException {
            this.f12048f.append((char) i);
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) throws IOException {
            CurrentWrite currentWrite = this.f12049g;
            currentWrite.f12050f = cArr;
            this.f12048f.append(currentWrite, i, i2 + i);
        }
    }

    private Streams() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public static JsonElement m8277a(JsonReader jsonReader) throws JsonParseException {
        boolean z;
        EOFException e;
        try {
            try {
                jsonReader.mo8147Z();
                z = false;
                try {
                    return TypeAdapters.f12142X.mo8175b(jsonReader);
                } catch (EOFException e2) {
                    e = e2;
                    if (z) {
                        return JsonNull.f11955a;
                    }
                    throw new JsonSyntaxException(e);
                }
            } catch (EOFException e3) {
                e = e3;
                z = true;
            }
        } catch (MalformedJsonException e4) {
            throw new JsonSyntaxException(e4);
        } catch (IOException e5) {
            throw new JsonIOException(e5);
        } catch (NumberFormatException e6) {
            throw new JsonSyntaxException(e6);
        }
    }

    /* renamed from: b */
    public static void m8276b(JsonElement jsonElement, JsonWriter jsonWriter) throws IOException {
        TypeAdapters.f12142X.mo8174d(jsonWriter, jsonElement);
    }

    /* renamed from: c */
    public static Writer m8275c(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new AppendableWriter(appendable);
    }
}
