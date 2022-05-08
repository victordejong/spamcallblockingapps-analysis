package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.C$Gson$Types;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.JsonReaderInternalAccess;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.internal.Streams;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/gson/internal/bind/MapTypeAdapterFactory.class */
public final class MapTypeAdapterFactory implements TypeAdapterFactory {

    /* renamed from: f */
    private final ConstructorConstructor f12075f;

    /* renamed from: g */
    final boolean f12076g;

    /* loaded from: classes-dex2jar.jar:com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter.class */
    private final class Adapter<K, V> extends TypeAdapter<Map<K, V>> {

        /* renamed from: a */
        private final TypeAdapter<K> f12077a;

        /* renamed from: b */
        private final TypeAdapter<V> f12078b;

        /* renamed from: c */
        private final ObjectConstructor<? extends Map<K, V>> f12079c;

        public Adapter(Gson gson, Type type, TypeAdapter<K> typeAdapter, Type type2, TypeAdapter<V> typeAdapter2, ObjectConstructor<? extends Map<K, V>> objectConstructor) {
            this.f12077a = new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter, type);
            this.f12078b = new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter2, type2);
            this.f12079c = objectConstructor;
        }

        /* renamed from: e */
        private String m8255e(JsonElement jsonElement) {
            if (jsonElement.m8387j()) {
                JsonPrimitive e = jsonElement.m8391e();
                if (e.m8374x()) {
                    return String.valueOf(e.m8378t());
                }
                if (e.m8376v()) {
                    return Boolean.toString(e.m8383k());
                }
                if (e.m8372z()) {
                    return e.m8377u();
                }
                throw new AssertionError();
            } else if (jsonElement.m8389g()) {
                return "null";
            } else {
                throw new AssertionError();
            }
        }

        /* renamed from: f */
        public Map<K, V> mo8175b(JsonReader jsonReader) throws IOException {
            JsonToken Z = jsonReader.mo8147Z();
            if (Z == JsonToken.NULL) {
                jsonReader.mo8151V();
                return null;
            }
            Map<K, V> map = (Map) this.f12079c.mo8284a();
            if (Z == JsonToken.BEGIN_ARRAY) {
                jsonReader.mo8146a();
                while (jsonReader.mo8132o()) {
                    jsonReader.mo8146a();
                    K b = this.f12077a.mo8175b(jsonReader);
                    if (map.put(b, this.f12078b.mo8175b(jsonReader)) == null) {
                        jsonReader.mo8138i();
                    } else {
                        throw new JsonSyntaxException("duplicate key: " + b);
                    }
                }
                jsonReader.mo8138i();
            } else {
                jsonReader.mo8145b();
                while (jsonReader.mo8132o()) {
                    JsonReaderInternalAccess.f11994a.mo8122a(jsonReader);
                    K b2 = this.f12077a.mo8175b(jsonReader);
                    if (map.put(b2, this.f12078b.mo8175b(jsonReader)) != null) {
                        throw new JsonSyntaxException("duplicate key: " + b2);
                    }
                }
                jsonReader.mo8135k();
            }
            return map;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: g */
        public void mo8174d(JsonWriter jsonWriter, Map<K, V> map) throws IOException {
            if (map == null) {
                jsonWriter.mo8094t();
            } else if (!MapTypeAdapterFactory.this.f12076g) {
                jsonWriter.mo8105e();
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    jsonWriter.mo8096p(String.valueOf(entry.getKey()));
                    this.f12078b.mo8174d(jsonWriter, entry.getValue());
                }
                jsonWriter.mo8100k();
            } else {
                ArrayList arrayList = new ArrayList(map.size());
                ArrayList arrayList2 = new ArrayList(map.size());
                boolean z = false;
                for (Map.Entry<K, V> entry2 : map.entrySet()) {
                    JsonElement c = this.f12077a.m8368c(entry2.getKey());
                    arrayList.add(c);
                    arrayList2.add(entry2.getValue());
                    z |= c.m8390f() || c.m8388h();
                }
                if (z) {
                    jsonWriter.mo8107d();
                    int size = arrayList.size();
                    for (int i = 0; i < size; i++) {
                        jsonWriter.mo8107d();
                        Streams.m8276b((JsonElement) arrayList.get(i), jsonWriter);
                        this.f12078b.mo8174d(jsonWriter, arrayList2.get(i));
                        jsonWriter.mo8102i();
                    }
                    jsonWriter.mo8102i();
                    return;
                }
                jsonWriter.mo8105e();
                int size2 = arrayList.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    jsonWriter.mo8096p(m8255e((JsonElement) arrayList.get(i2)));
                    this.f12078b.mo8174d(jsonWriter, arrayList2.get(i2));
                }
                jsonWriter.mo8100k();
            }
        }
    }

    public MapTypeAdapterFactory(ConstructorConstructor constructorConstructor, boolean z) {
        this.f12075f = constructorConstructor;
        this.f12076g = z;
    }

    /* renamed from: b */
    private TypeAdapter<?> m8256b(Gson gson, Type type) {
        return (type == Boolean.TYPE || type == Boolean.class) ? TypeAdapters.f12150f : gson.m8424k(TypeToken.m8161b(type));
    }

    @Override // com.google.gson.TypeAdapterFactory
    /* renamed from: a */
    public <T> TypeAdapter<T> mo8188a(Gson gson, TypeToken<T> typeToken) {
        Type e = typeToken.m8158e();
        if (!Map.class.isAssignableFrom(typeToken.m8160c())) {
            return null;
        }
        Type[] j = C$Gson$Types.m8356j(e, C$Gson$Types.m8355k(e));
        return new Adapter(gson, j[0], m8256b(gson, j[0]), j[1], gson.m8424k(TypeToken.m8161b(j[1])), this.f12075f.m8344a(typeToken));
    }
}
