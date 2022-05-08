package com.google.gson.internal.bind;

import com.google.gson.FieldNamingStrategy;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.internal.C$Gson$Types;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.internal.Primitives;
import com.google.gson.internal.reflect.ReflectionAccessor;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/gson/internal/bind/ReflectiveTypeAdapterFactory.class */
public final class ReflectiveTypeAdapterFactory implements TypeAdapterFactory {

    /* renamed from: f */
    private final ConstructorConstructor f12084f;

    /* renamed from: g */
    private final FieldNamingStrategy f12085g;

    /* renamed from: h */
    private final Excluder f12086h;

    /* renamed from: i */
    private final JsonAdapterAnnotationTypeAdapterFactory f12087i;

    /* renamed from: j */
    private final ReflectionAccessor f12088j = ReflectionAccessor.m8167a();

    /* loaded from: classes-dex2jar.jar:com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter.class */
    public static final class Adapter<T> extends TypeAdapter<T> {

        /* renamed from: a */
        private final ObjectConstructor<T> f12095a;

        /* renamed from: b */
        private final Map<String, BoundField> f12096b;

        Adapter(ObjectConstructor<T> objectConstructor, Map<String, BoundField> map) {
            this.f12095a = objectConstructor;
            this.f12096b = map;
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: b */
        public T mo8175b(JsonReader jsonReader) throws IOException {
            if (jsonReader.mo8147Z() == JsonToken.NULL) {
                jsonReader.mo8151V();
                return null;
            }
            T a = this.f12095a.mo8284a();
            try {
                jsonReader.mo8145b();
                while (jsonReader.mo8132o()) {
                    BoundField boundField = this.f12096b.get(jsonReader.mo8153L());
                    if (boundField != null && boundField.f12099c) {
                        boundField.mo8247a(jsonReader, a);
                    }
                    jsonReader.mo8124x0();
                }
                jsonReader.mo8135k();
                return a;
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (IllegalStateException e2) {
                throw new JsonSyntaxException(e2);
            }
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: d */
        public void mo8174d(JsonWriter jsonWriter, T t) throws IOException {
            if (t == null) {
                jsonWriter.mo8094t();
                return;
            }
            jsonWriter.mo8105e();
            try {
                for (BoundField boundField : this.f12096b.values()) {
                    if (boundField.mo8245c(t)) {
                        jsonWriter.mo8096p(boundField.f12097a);
                        boundField.mo8246b(jsonWriter, t);
                    }
                }
                jsonWriter.mo8100k();
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField.class */
    public static abstract class BoundField {

        /* renamed from: a */
        final String f12097a;

        /* renamed from: b */
        final boolean f12098b;

        /* renamed from: c */
        final boolean f12099c;

        protected BoundField(String str, boolean z, boolean z2) {
            this.f12097a = str;
            this.f12098b = z;
            this.f12099c = z2;
        }

        /* renamed from: a */
        abstract void mo8247a(JsonReader jsonReader, Object obj) throws IOException, IllegalAccessException;

        /* renamed from: b */
        abstract void mo8246b(JsonWriter jsonWriter, Object obj) throws IOException, IllegalAccessException;

        /* renamed from: c */
        abstract boolean mo8245c(Object obj) throws IOException, IllegalAccessException;
    }

    public ReflectiveTypeAdapterFactory(ConstructorConstructor constructorConstructor, FieldNamingStrategy fieldNamingStrategy, Excluder excluder, JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory) {
        this.f12084f = constructorConstructor;
        this.f12085g = fieldNamingStrategy;
        this.f12086h = excluder;
        this.f12087i = jsonAdapterAnnotationTypeAdapterFactory;
    }

    /* renamed from: b */
    private BoundField m8252b(final Gson gson, final Field field, String str, final TypeToken<?> typeToken, boolean z, boolean z2) {
        final boolean b = Primitives.m8279b(typeToken.m8160c());
        JsonAdapter jsonAdapter = (JsonAdapter) field.getAnnotation(JsonAdapter.class);
        TypeAdapter<?> b2 = jsonAdapter != null ? this.f12087i.m8266b(this.f12084f, gson, typeToken, jsonAdapter) : null;
        final boolean z3 = b2 != null;
        final TypeAdapter<?> typeAdapter = b2;
        if (b2 == null) {
            typeAdapter = gson.m8424k(typeToken);
        }
        return new BoundField(this, str, z, z2) { // from class: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.1
            @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.BoundField
            /* renamed from: a */
            void mo8247a(JsonReader jsonReader, Object obj) throws IOException, IllegalAccessException {
                Object b3 = typeAdapter.mo8175b(jsonReader);
                if (b3 != null || !b) {
                    field.set(obj, b3);
                }
            }

            @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.BoundField
            /* renamed from: b */
            void mo8246b(JsonWriter jsonWriter, Object obj) throws IOException, IllegalAccessException {
                (z3 ? typeAdapter : new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter, typeToken.m8158e())).mo8174d(jsonWriter, field.get(obj));
            }

            @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.BoundField
            /* renamed from: c */
            public boolean mo8245c(Object obj) throws IOException, IllegalAccessException {
                boolean z4 = false;
                if (!this.f12098b) {
                    return false;
                }
                if (field.get(obj) != obj) {
                    z4 = true;
                }
                return z4;
            }
        };
    }

    /* renamed from: d */
    static boolean m8250d(Field field, boolean z, Excluder excluder) {
        return !excluder.m8339c(field.getType(), z) && !excluder.m8336g(field, z);
    }

    /* renamed from: e */
    private Map<String, BoundField> m8249e(Gson gson, TypeToken<?> typeToken, Class<?> cls) {
        Field[] declaredFields;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (cls.isInterface()) {
            return linkedHashMap;
        }
        Type e = typeToken.m8158e();
        TypeToken<?> typeToken2 = typeToken;
        while (cls != Object.class) {
            for (Field field : cls.getDeclaredFields()) {
                boolean c = m8251c(field, true);
                boolean c2 = m8251c(field, false);
                if (c || c2) {
                    this.f12088j.mo8166b(field);
                    Type p = C$Gson$Types.m8350p(typeToken2.m8158e(), cls, field.getGenericType());
                    List<String> f = m8248f(field);
                    int size = f.size();
                    BoundField boundField = null;
                    for (int i = 0; i < size; i++) {
                        String str = f.get(i);
                        if (i != 0) {
                            c = false;
                        }
                        boundField = (BoundField) linkedHashMap.put(str, m8252b(gson, field, str, TypeToken.m8161b(p), c, c2));
                        if (boundField == null) {
                        }
                    }
                    if (boundField != null) {
                        throw new IllegalArgumentException(e + " declares multiple JSON fields named " + boundField.f12097a);
                    }
                }
            }
            typeToken2 = TypeToken.m8161b(C$Gson$Types.m8350p(typeToken2.m8158e(), cls, cls.getGenericSuperclass()));
            cls = typeToken2.m8160c();
        }
        return linkedHashMap;
    }

    /* renamed from: f */
    private List<String> m8248f(Field field) {
        SerializedName serializedName = (SerializedName) field.getAnnotation(SerializedName.class);
        if (serializedName == null) {
            return Collections.singletonList(this.f12085g.translateName(field));
        }
        String value = serializedName.value();
        String[] alternate = serializedName.alternate();
        if (alternate.length == 0) {
            return Collections.singletonList(value);
        }
        ArrayList arrayList = new ArrayList(alternate.length + 1);
        arrayList.add(value);
        for (String str : alternate) {
            arrayList.add(str);
        }
        return arrayList;
    }

    @Override // com.google.gson.TypeAdapterFactory
    /* renamed from: a */
    public <T> TypeAdapter<T> mo8188a(Gson gson, TypeToken<T> typeToken) {
        Class<? super T> c = typeToken.m8160c();
        if (!Object.class.isAssignableFrom(c)) {
            return null;
        }
        return new Adapter(this.f12084f.m8344a(typeToken), m8249e(gson, typeToken, c));
    }

    /* renamed from: c */
    public boolean m8251c(Field field, boolean z) {
        return m8250d(field, z, this.f12086h);
    }
}
