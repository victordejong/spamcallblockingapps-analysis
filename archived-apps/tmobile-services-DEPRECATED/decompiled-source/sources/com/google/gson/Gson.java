package com.google.gson;

import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.Primitives;
import com.google.gson.internal.Streams;
import com.google.gson.internal.bind.ArrayTypeAdapter;
import com.google.gson.internal.bind.CollectionTypeAdapterFactory;
import com.google.gson.internal.bind.DateTypeAdapter;
import com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory;
import com.google.gson.internal.bind.MapTypeAdapterFactory;
import com.google.gson.internal.bind.ObjectTypeAdapter;
import com.google.gson.internal.bind.ReflectiveTypeAdapterFactory;
import com.google.gson.internal.bind.SqlDateTypeAdapter;
import com.google.gson.internal.bind.TimeTypeAdapter;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.google.gson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;
/* loaded from: classes-dex2jar.jar:com/google/gson/Gson.class */
public final class Gson {

    /* renamed from: k */
    private static final TypeToken<?> f11924k = TypeToken.m8162a(Object.class);

    /* renamed from: a */
    private final ThreadLocal<Map<TypeToken<?>, FutureTypeAdapter<?>>> f11925a;

    /* renamed from: b */
    private final Map<TypeToken<?>, TypeAdapter<?>> f11926b;

    /* renamed from: c */
    private final ConstructorConstructor f11927c;

    /* renamed from: d */
    private final JsonAdapterAnnotationTypeAdapterFactory f11928d;

    /* renamed from: e */
    final List<TypeAdapterFactory> f11929e;

    /* renamed from: f */
    final boolean f11930f;

    /* renamed from: g */
    final boolean f11931g;

    /* renamed from: h */
    final boolean f11932h;

    /* renamed from: i */
    final boolean f11933i;

    /* renamed from: j */
    final boolean f11934j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/gson/Gson$FutureTypeAdapter.class */
    public static class FutureTypeAdapter<T> extends TypeAdapter<T> {

        /* renamed from: a */
        private TypeAdapter<T> f11937a;

        FutureTypeAdapter() {
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: b */
        public T mo8175b(JsonReader jsonReader) throws IOException {
            TypeAdapter<T> typeAdapter = this.f11937a;
            if (typeAdapter != null) {
                return typeAdapter.mo8175b(jsonReader);
            }
            throw new IllegalStateException();
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: d */
        public void mo8174d(JsonWriter jsonWriter, T t) throws IOException {
            TypeAdapter<T> typeAdapter = this.f11937a;
            if (typeAdapter != null) {
                typeAdapter.mo8174d(jsonWriter, t);
                return;
            }
            throw new IllegalStateException();
        }

        /* renamed from: e */
        public void m8401e(TypeAdapter<T> typeAdapter) {
            if (this.f11937a == null) {
                this.f11937a = typeAdapter;
                return;
            }
            throw new AssertionError();
        }
    }

    public Gson() {
        this(Excluder.f11980l, FieldNamingPolicy.IDENTITY, Collections.emptyMap(), false, false, false, true, false, false, false, LongSerializationPolicy.DEFAULT, null, 2, 2, Collections.emptyList(), Collections.emptyList(), Collections.emptyList());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Gson(Excluder excluder, FieldNamingStrategy fieldNamingStrategy, Map<Type, InstanceCreator<?>> map, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, LongSerializationPolicy longSerializationPolicy, String str, int i, int i2, List<TypeAdapterFactory> list, List<TypeAdapterFactory> list2, List<TypeAdapterFactory> list3) {
        this.f11925a = new ThreadLocal<>();
        this.f11926b = new ConcurrentHashMap();
        this.f11927c = new ConstructorConstructor(map);
        this.f11930f = z;
        this.f11931g = z3;
        this.f11932h = z4;
        this.f11933i = z5;
        this.f11934j = z6;
        ArrayList arrayList = new ArrayList();
        arrayList.add(TypeAdapters.f12143Y);
        arrayList.add(ObjectTypeAdapter.f12081b);
        arrayList.add(excluder);
        arrayList.addAll(list3);
        arrayList.add(TypeAdapters.f12122D);
        arrayList.add(TypeAdapters.f12157m);
        arrayList.add(TypeAdapters.f12151g);
        arrayList.add(TypeAdapters.f12153i);
        arrayList.add(TypeAdapters.f12155k);
        TypeAdapter<Number> n = m8421n(longSerializationPolicy);
        arrayList.add(TypeAdapters.m8237b(Long.TYPE, Long.class, n));
        arrayList.add(TypeAdapters.m8237b(Double.TYPE, Double.class, m8430e(z7)));
        arrayList.add(TypeAdapters.m8237b(Float.TYPE, Float.class, m8429f(z7)));
        arrayList.add(TypeAdapters.f12168x);
        arrayList.add(TypeAdapters.f12159o);
        arrayList.add(TypeAdapters.f12161q);
        arrayList.add(TypeAdapters.m8238a(AtomicLong.class, m8433b(n)));
        arrayList.add(TypeAdapters.m8238a(AtomicLongArray.class, m8432c(n)));
        arrayList.add(TypeAdapters.f12163s);
        arrayList.add(TypeAdapters.f12170z);
        arrayList.add(TypeAdapters.f12124F);
        arrayList.add(TypeAdapters.f12126H);
        arrayList.add(TypeAdapters.m8238a(BigDecimal.class, TypeAdapters.f12120B));
        arrayList.add(TypeAdapters.m8238a(BigInteger.class, TypeAdapters.f12121C));
        arrayList.add(TypeAdapters.f12128J);
        arrayList.add(TypeAdapters.f12130L);
        arrayList.add(TypeAdapters.f12134P);
        arrayList.add(TypeAdapters.f12136R);
        arrayList.add(TypeAdapters.f12141W);
        arrayList.add(TypeAdapters.f12132N);
        arrayList.add(TypeAdapters.f12148d);
        arrayList.add(DateTypeAdapter.f12062b);
        arrayList.add(TypeAdapters.f12139U);
        arrayList.add(TimeTypeAdapter.f12102b);
        arrayList.add(SqlDateTypeAdapter.f12100b);
        arrayList.add(TypeAdapters.f12137S);
        arrayList.add(ArrayTypeAdapter.f12056c);
        arrayList.add(TypeAdapters.f12146b);
        arrayList.add(new CollectionTypeAdapterFactory(this.f11927c));
        arrayList.add(new MapTypeAdapterFactory(this.f11927c, z2));
        JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory = new JsonAdapterAnnotationTypeAdapterFactory(this.f11927c);
        this.f11928d = jsonAdapterAnnotationTypeAdapterFactory;
        arrayList.add(jsonAdapterAnnotationTypeAdapterFactory);
        arrayList.add(TypeAdapters.f12144Z);
        arrayList.add(new ReflectiveTypeAdapterFactory(this.f11927c, fieldNamingStrategy, excluder, this.f11928d));
        this.f11929e = Collections.unmodifiableList(arrayList);
    }

    /* renamed from: a */
    private static void m8434a(Object obj, JsonReader jsonReader) {
        if (obj != null) {
            try {
                if (jsonReader.mo8147Z() != JsonToken.END_DOCUMENT) {
                    throw new JsonIOException("JSON document was not fully consumed.");
                }
            } catch (MalformedJsonException e) {
                throw new JsonSyntaxException(e);
            } catch (IOException e2) {
                throw new JsonIOException(e2);
            }
        }
    }

    /* renamed from: b */
    private static TypeAdapter<AtomicLong> m8433b(final TypeAdapter<Number> typeAdapter) {
        return new TypeAdapter<AtomicLong>() { // from class: com.google.gson.Gson.4
            /* renamed from: e */
            public AtomicLong mo8175b(JsonReader jsonReader) throws IOException {
                return new AtomicLong(((Number) TypeAdapter.this.mo8175b(jsonReader)).longValue());
            }

            /* renamed from: f */
            public void mo8174d(JsonWriter jsonWriter, AtomicLong atomicLong) throws IOException {
                TypeAdapter.this.mo8174d(jsonWriter, Long.valueOf(atomicLong.get()));
            }
        }.m8369a();
    }

    /* renamed from: c */
    private static TypeAdapter<AtomicLongArray> m8432c(final TypeAdapter<Number> typeAdapter) {
        return new TypeAdapter<AtomicLongArray>() { // from class: com.google.gson.Gson.5
            /* renamed from: e */
            public AtomicLongArray mo8175b(JsonReader jsonReader) throws IOException {
                ArrayList arrayList = new ArrayList();
                jsonReader.mo8146a();
                while (jsonReader.mo8132o()) {
                    arrayList.add(Long.valueOf(((Number) TypeAdapter.this.mo8175b(jsonReader)).longValue()));
                }
                jsonReader.mo8138i();
                int size = arrayList.size();
                AtomicLongArray atomicLongArray = new AtomicLongArray(size);
                for (int i = 0; i < size; i++) {
                    atomicLongArray.set(i, ((Long) arrayList.get(i)).longValue());
                }
                return atomicLongArray;
            }

            /* renamed from: f */
            public void mo8174d(JsonWriter jsonWriter, AtomicLongArray atomicLongArray) throws IOException {
                jsonWriter.mo8107d();
                int length = atomicLongArray.length();
                for (int i = 0; i < length; i++) {
                    TypeAdapter.this.mo8174d(jsonWriter, Long.valueOf(atomicLongArray.get(i)));
                }
                jsonWriter.mo8102i();
            }
        }.m8369a();
    }

    /* renamed from: d */
    static void m8431d(double d) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            throw new IllegalArgumentException(d + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    /* renamed from: e */
    private TypeAdapter<Number> m8430e(boolean z) {
        return z ? TypeAdapters.f12166v : new TypeAdapter<Number>(this) { // from class: com.google.gson.Gson.1
            /* renamed from: e */
            public Double mo8175b(JsonReader jsonReader) throws IOException {
                if (jsonReader.mo8147Z() != JsonToken.NULL) {
                    return Double.valueOf(jsonReader.mo8156I());
                }
                jsonReader.mo8151V();
                return null;
            }

            /* renamed from: f */
            public void mo8174d(JsonWriter jsonWriter, Number number) throws IOException {
                if (number == null) {
                    jsonWriter.mo8094t();
                    return;
                }
                Gson.m8431d(number.doubleValue());
                jsonWriter.mo8108b0(number);
            }
        };
    }

    /* renamed from: f */
    private TypeAdapter<Number> m8429f(boolean z) {
        return z ? TypeAdapters.f12165u : new TypeAdapter<Number>(this) { // from class: com.google.gson.Gson.2
            /* renamed from: e */
            public Float mo8175b(JsonReader jsonReader) throws IOException {
                if (jsonReader.mo8147Z() != JsonToken.NULL) {
                    return Float.valueOf((float) jsonReader.mo8156I());
                }
                jsonReader.mo8151V();
                return null;
            }

            /* renamed from: f */
            public void mo8174d(JsonWriter jsonWriter, Number number) throws IOException {
                if (number == null) {
                    jsonWriter.mo8094t();
                    return;
                }
                Gson.m8431d(number.floatValue());
                jsonWriter.mo8108b0(number);
            }
        };
    }

    /* renamed from: n */
    private static TypeAdapter<Number> m8421n(LongSerializationPolicy longSerializationPolicy) {
        return longSerializationPolicy == LongSerializationPolicy.DEFAULT ? TypeAdapters.f12164t : new TypeAdapter<Number>() { // from class: com.google.gson.Gson.3
            /* renamed from: e */
            public Number mo8175b(JsonReader jsonReader) throws IOException {
                if (jsonReader.mo8147Z() != JsonToken.NULL) {
                    return Long.valueOf(jsonReader.mo8154K());
                }
                jsonReader.mo8151V();
                return null;
            }

            /* renamed from: f */
            public void mo8174d(JsonWriter jsonWriter, Number number) throws IOException {
                if (number == null) {
                    jsonWriter.mo8094t();
                } else {
                    jsonWriter.mo8106d0(number.toString());
                }
            }
        };
    }

    /* renamed from: g */
    public <T> T m8428g(JsonReader jsonReader, Type type) throws JsonIOException, JsonSyntaxException {
        boolean p = jsonReader.m8130p();
        boolean z = true;
        jsonReader.m8136j0(true);
        try {
            try {
                try {
                    try {
                        jsonReader.mo8147Z();
                        z = false;
                        T b = m8424k(TypeToken.m8161b(type)).mo8175b(jsonReader);
                        jsonReader.m8136j0(p);
                        return b;
                    } catch (IllegalStateException e) {
                        throw new JsonSyntaxException(e);
                    }
                } catch (IOException e2) {
                    throw new JsonSyntaxException(e2);
                }
            } catch (EOFException e3) {
                if (z) {
                    jsonReader.m8136j0(p);
                    return null;
                }
                throw new JsonSyntaxException(e3);
            } catch (AssertionError e4) {
                throw new AssertionError("AssertionError (GSON 2.8.5): " + e4.getMessage(), e4);
            }
        } catch (Throwable th) {
            jsonReader.m8136j0(p);
            throw th;
        }
    }

    /* renamed from: h */
    public <T> T m8427h(Reader reader, Type type) throws JsonIOException, JsonSyntaxException {
        JsonReader o = m8420o(reader);
        T t = (T) m8428g(o, type);
        m8434a(t, o);
        return t;
    }

    /* renamed from: i */
    public <T> T m8426i(String str, Class<T> cls) throws JsonSyntaxException {
        return (T) Primitives.m8278c(cls).cast(m8425j(str, cls));
    }

    /* renamed from: j */
    public <T> T m8425j(String str, Type type) throws JsonSyntaxException {
        if (str == null) {
            return null;
        }
        return (T) m8427h(new StringReader(str), type);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: k */
    public <T> TypeAdapter<T> m8424k(TypeToken<T> typeToken) {
        TypeAdapter typeAdapter;
        TypeAdapter<T> typeAdapter2 = (TypeAdapter<T>) this.f11926b.get(typeToken == null ? f11924k : typeToken);
        if (typeAdapter2 != null) {
            return typeAdapter2;
        }
        Map<TypeToken<?>, FutureTypeAdapter<?>> map = this.f11925a.get();
        boolean z = false;
        Map<TypeToken<?>, FutureTypeAdapter<?>> map2 = map;
        if (map == null) {
            map2 = new HashMap<>();
            this.f11925a.set(map2);
            z = true;
        }
        FutureTypeAdapter<?> futureTypeAdapter = map2.get(typeToken);
        if (futureTypeAdapter != null) {
            return futureTypeAdapter;
        }
        try {
            FutureTypeAdapter<?> futureTypeAdapter2 = new FutureTypeAdapter<>();
            map2.put(typeToken, futureTypeAdapter2);
            Iterator<TypeAdapterFactory> it = this.f11929e.iterator();
            do {
                if (it.hasNext()) {
                    typeAdapter = (TypeAdapter<T>) it.next().mo8188a(this, typeToken);
                } else {
                    throw new IllegalArgumentException("GSON (2.8.5) cannot handle " + typeToken);
                }
            } while (typeAdapter == null);
            futureTypeAdapter2.m8401e(typeAdapter);
            this.f11926b.put(typeToken, typeAdapter);
            return typeAdapter;
        } finally {
            map2.remove(typeToken);
            if (z) {
                this.f11925a.remove();
            }
        }
    }

    /* renamed from: l */
    public <T> TypeAdapter<T> m8423l(Class<T> cls) {
        return m8424k(TypeToken.m8162a(cls));
    }

    /* renamed from: m */
    public <T> TypeAdapter<T> m8422m(TypeAdapterFactory typeAdapterFactory, TypeToken<T> typeToken) {
        TypeAdapterFactory typeAdapterFactory2 = typeAdapterFactory;
        if (!this.f11929e.contains(typeAdapterFactory)) {
            typeAdapterFactory2 = this.f11928d;
        }
        boolean z = false;
        for (TypeAdapterFactory typeAdapterFactory3 : this.f11929e) {
            if (z) {
                TypeAdapter<T> a = typeAdapterFactory3.mo8188a(this, typeToken);
                if (a != null) {
                    return a;
                }
            } else if (typeAdapterFactory3 == typeAdapterFactory2) {
                z = true;
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize " + typeToken);
    }

    /* renamed from: o */
    public JsonReader m8420o(Reader reader) {
        JsonReader jsonReader = new JsonReader(reader);
        jsonReader.m8136j0(this.f11934j);
        return jsonReader;
    }

    /* renamed from: p */
    public JsonWriter m8419p(Writer writer) throws IOException {
        if (this.f11931g) {
            writer.write(")]}'\n");
        }
        JsonWriter jsonWriter = new JsonWriter(writer);
        if (this.f11933i) {
            jsonWriter.m8116N("  ");
        }
        jsonWriter.m8114W(this.f11930f);
        return jsonWriter;
    }

    /* renamed from: q */
    public String m8418q(JsonElement jsonElement) {
        StringWriter stringWriter = new StringWriter();
        m8414u(jsonElement, stringWriter);
        return stringWriter.toString();
    }

    /* renamed from: r */
    public String m8417r(Object obj) {
        return obj == null ? m8418q(JsonNull.f11955a) : m8416s(obj, obj.getClass());
    }

    /* renamed from: s */
    public String m8416s(Object obj, Type type) {
        StringWriter stringWriter = new StringWriter();
        m8412w(obj, type, stringWriter);
        return stringWriter.toString();
    }

    /* renamed from: t */
    public void m8415t(JsonElement jsonElement, JsonWriter jsonWriter) throws JsonIOException {
        boolean o = jsonWriter.m8097o();
        jsonWriter.m8115V(true);
        boolean m = jsonWriter.m8098m();
        jsonWriter.m8117L(this.f11932h);
        boolean l = jsonWriter.m8099l();
        jsonWriter.m8114W(this.f11930f);
        try {
            try {
                Streams.m8276b(jsonElement, jsonWriter);
                jsonWriter.m8115V(o);
                jsonWriter.m8117L(m);
                jsonWriter.m8114W(l);
            } catch (IOException e) {
                throw new JsonIOException(e);
            } catch (AssertionError e2) {
                throw new AssertionError("AssertionError (GSON 2.8.5): " + e2.getMessage(), e2);
            }
        } catch (Throwable th) {
            jsonWriter.m8115V(o);
            jsonWriter.m8117L(m);
            jsonWriter.m8114W(l);
            throw th;
        }
    }

    public String toString() {
        return "{serializeNulls:" + this.f11930f + ",factories:" + this.f11929e + ",instanceCreators:" + this.f11927c + "}";
    }

    /* renamed from: u */
    public void m8414u(JsonElement jsonElement, Appendable appendable) throws JsonIOException {
        try {
            m8415t(jsonElement, m8419p(Streams.m8275c(appendable)));
        } catch (IOException e) {
            throw new JsonIOException(e);
        }
    }

    /* renamed from: v */
    public void m8413v(Object obj, Type type, JsonWriter jsonWriter) throws JsonIOException {
        TypeAdapter k = m8424k(TypeToken.m8161b(type));
        boolean o = jsonWriter.m8097o();
        jsonWriter.m8115V(true);
        boolean m = jsonWriter.m8098m();
        jsonWriter.m8117L(this.f11932h);
        boolean l = jsonWriter.m8099l();
        jsonWriter.m8114W(this.f11930f);
        try {
            try {
                k.mo8174d(jsonWriter, obj);
                jsonWriter.m8115V(o);
                jsonWriter.m8117L(m);
                jsonWriter.m8114W(l);
            } catch (IOException e) {
                throw new JsonIOException(e);
            } catch (AssertionError e2) {
                throw new AssertionError("AssertionError (GSON 2.8.5): " + e2.getMessage(), e2);
            }
        } catch (Throwable th) {
            jsonWriter.m8115V(o);
            jsonWriter.m8117L(m);
            jsonWriter.m8114W(l);
            throw th;
        }
    }

    /* renamed from: w */
    public void m8412w(Object obj, Type type, Appendable appendable) throws JsonIOException {
        try {
            m8413v(obj, type, m8419p(Streams.m8275c(appendable)));
        } catch (IOException e) {
            throw new JsonIOException(e);
        }
    }
}
