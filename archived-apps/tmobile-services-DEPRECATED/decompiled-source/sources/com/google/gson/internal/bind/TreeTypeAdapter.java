package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.Streams;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/gson/internal/bind/TreeTypeAdapter.class */
public final class TreeTypeAdapter<T> extends TypeAdapter<T> {

    /* renamed from: a */
    private final JsonSerializer<T> f12104a;

    /* renamed from: b */
    private final JsonDeserializer<T> f12105b;

    /* renamed from: c */
    final Gson f12106c;

    /* renamed from: d */
    private final TypeToken<T> f12107d;

    /* renamed from: e */
    private final TypeAdapterFactory f12108e;

    /* renamed from: f */
    private final TreeTypeAdapter<T>.GsonContextImpl f12109f = new GsonContextImpl();

    /* renamed from: g */
    private TypeAdapter<T> f12110g;

    /* loaded from: classes-dex2jar.jar:com/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl.class */
    private final class GsonContextImpl implements JsonSerializationContext, JsonDeserializationContext {
        private GsonContextImpl(TreeTypeAdapter treeTypeAdapter) {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory.class */
    private static final class SingleTypeFactory implements TypeAdapterFactory {

        /* renamed from: f */
        private final TypeToken<?> f12111f;

        /* renamed from: g */
        private final boolean f12112g;

        /* renamed from: h */
        private final Class<?> f12113h;

        /* renamed from: i */
        private final JsonSerializer<?> f12114i;

        /* renamed from: j */
        private final JsonDeserializer<?> f12115j;

        @Override // com.google.gson.TypeAdapterFactory
        /* renamed from: a */
        public <T> TypeAdapter<T> mo8188a(Gson gson, TypeToken<T> typeToken) {
            TypeToken<?> typeToken2 = this.f12111f;
            return typeToken2 != null ? typeToken2.equals(typeToken) || (this.f12112g && this.f12111f.m8158e() == typeToken.m8160c()) : this.f12113h.isAssignableFrom(typeToken.m8160c()) ? new TreeTypeAdapter(this.f12114i, this.f12115j, gson, typeToken, this) : null;
        }
    }

    public TreeTypeAdapter(JsonSerializer<T> jsonSerializer, JsonDeserializer<T> jsonDeserializer, Gson gson, TypeToken<T> typeToken, TypeAdapterFactory typeAdapterFactory) {
        this.f12104a = jsonSerializer;
        this.f12105b = jsonDeserializer;
        this.f12106c = gson;
        this.f12107d = typeToken;
        this.f12108e = typeAdapterFactory;
    }

    /* renamed from: e */
    private TypeAdapter<T> m8240e() {
        TypeAdapter<T> typeAdapter = this.f12110g;
        if (typeAdapter == null) {
            typeAdapter = this.f12106c.m8422m(this.f12108e, this.f12107d);
            this.f12110g = typeAdapter;
        }
        return typeAdapter;
    }

    @Override // com.google.gson.TypeAdapter
    /* renamed from: b */
    public T mo8175b(JsonReader jsonReader) throws IOException {
        if (this.f12105b == null) {
            return m8240e().mo8175b(jsonReader);
        }
        JsonElement a = Streams.m8277a(jsonReader);
        if (a.m8389g()) {
            return null;
        }
        return this.f12105b.m8394a(a, this.f12107d.m8158e(), this.f12109f);
    }

    @Override // com.google.gson.TypeAdapter
    /* renamed from: d */
    public void mo8174d(JsonWriter jsonWriter, T t) throws IOException {
        JsonSerializer<T> jsonSerializer = this.f12104a;
        if (jsonSerializer == null) {
            m8240e().mo8174d(jsonWriter, t);
        } else if (t == null) {
            jsonWriter.mo8094t();
        } else {
            Streams.m8276b(jsonSerializer.m8371a(t, this.f12107d.m8158e(), this.f12109f), jsonWriter);
        }
    }
}
