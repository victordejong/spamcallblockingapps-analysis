package com.google.gson;

import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import com.google.gson.internal.Excluder;
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
import p081h.p203i.p384e.AbstractC10098d;
import p081h.p203i.p384e.AbstractC10100f;
import p081h.p203i.p384e.AbstractC10104j;
import p081h.p203i.p384e.AbstractC10117u;
import p081h.p203i.p384e.C10105k;
import p081h.p203i.p384e.C10106l;
import p081h.p203i.p384e.C10113s;
import p081h.p203i.p384e.EnumC10091c;
import p081h.p203i.p384e.EnumC10114t;
import p081h.p203i.p384e.p386w.C10128c;
import p081h.p203i.p384e.p386w.C10156j;
import p081h.p203i.p384e.p386w.C10157k;
import p081h.p203i.p384e.p386w.p387m.C10165a;
import p081h.p203i.p384e.p390x.C10173a;
import p081h.p203i.p384e.p391y.C10174a;
import p081h.p203i.p384e.p391y.C10177c;
import p081h.p203i.p384e.p391y.C10178d;
import p081h.p203i.p384e.p391y.EnumC10176b;
/* loaded from: classes2-dex2jar.jar:com/google/gson/Gson.class */
public final class Gson {

    /* renamed from: k */
    public static final C10173a<?> f7810k = C10173a.m13279a(Object.class);

    /* renamed from: a */
    public final ThreadLocal<Map<C10173a<?>, FutureTypeAdapter<?>>> f7811a;

    /* renamed from: b */
    public final Map<C10173a<?>, TypeAdapter<?>> f7812b;

    /* renamed from: c */
    public final C10128c f7813c;

    /* renamed from: d */
    public final JsonAdapterAnnotationTypeAdapterFactory f7814d;

    /* renamed from: e */
    public final List<AbstractC10117u> f7815e;

    /* renamed from: f */
    public final boolean f7816f;

    /* renamed from: g */
    public final boolean f7817g;

    /* renamed from: h */
    public final boolean f7818h;

    /* renamed from: i */
    public final boolean f7819i;

    /* renamed from: j */
    public final boolean f7820j;

    /* loaded from: classes2-dex2jar.jar:com/google/gson/Gson$FutureTypeAdapter.class */
    public static class FutureTypeAdapter<T> extends TypeAdapter<T> {

        /* renamed from: a */
        public TypeAdapter<T> f7823a;

        /* renamed from: a */
        public void m30972a(TypeAdapter<T> typeAdapter) {
            if (this.f7823a == null) {
                this.f7823a = typeAdapter;
                return;
            }
            throw new AssertionError();
        }

        @Override // com.google.gson.TypeAdapter
        public T read(C10174a aVar) throws IOException {
            TypeAdapter<T> typeAdapter = this.f7823a;
            if (typeAdapter != null) {
                return typeAdapter.read(aVar);
            }
            throw new IllegalStateException();
        }

        @Override // com.google.gson.TypeAdapter
        public void write(C10177c cVar, T t) throws IOException {
            TypeAdapter<T> typeAdapter = this.f7823a;
            if (typeAdapter != null) {
                typeAdapter.write(cVar, t);
                return;
            }
            throw new IllegalStateException();
        }
    }

    public Gson() {
        this(Excluder.f7825g, EnumC10091c.f22808a, Collections.emptyMap(), false, false, false, true, false, false, false, EnumC10114t.f22835a, null, 2, 2, Collections.emptyList(), Collections.emptyList(), Collections.emptyList());
    }

    public Gson(Excluder excluder, AbstractC10098d dVar, Map<Type, AbstractC10100f<?>> map, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, EnumC10114t tVar, String str, int i, int i2, List<AbstractC10117u> list, List<AbstractC10117u> list2, List<AbstractC10117u> list3) {
        this.f7811a = new ThreadLocal<>();
        this.f7812b = new ConcurrentHashMap();
        this.f7813c = new C10128c(map);
        this.f7816f = z;
        this.f7817g = z3;
        this.f7818h = z4;
        this.f7819i = z5;
        this.f7820j = z6;
        ArrayList arrayList = new ArrayList();
        arrayList.add(TypeAdapters.f7915Y);
        arrayList.add(ObjectTypeAdapter.f7853b);
        arrayList.add(excluder);
        arrayList.addAll(list3);
        arrayList.add(TypeAdapters.f7894D);
        arrayList.add(TypeAdapters.f7929m);
        arrayList.add(TypeAdapters.f7923g);
        arrayList.add(TypeAdapters.f7925i);
        arrayList.add(TypeAdapters.f7927k);
        TypeAdapter<Number> a = m30997a(tVar);
        arrayList.add(TypeAdapters.m30937a(Long.TYPE, Long.class, a));
        arrayList.add(TypeAdapters.m30937a(Double.TYPE, Double.class, m30980a(z7)));
        arrayList.add(TypeAdapters.m30937a(Float.TYPE, Float.class, m30978b(z7)));
        arrayList.add(TypeAdapters.f7940x);
        arrayList.add(TypeAdapters.f7931o);
        arrayList.add(TypeAdapters.f7933q);
        arrayList.add(TypeAdapters.m30938a(AtomicLong.class, m31003a(a)));
        arrayList.add(TypeAdapters.m30938a(AtomicLongArray.class, m30979b(a)));
        arrayList.add(TypeAdapters.f7935s);
        arrayList.add(TypeAdapters.f7942z);
        arrayList.add(TypeAdapters.f7896F);
        arrayList.add(TypeAdapters.f7898H);
        arrayList.add(TypeAdapters.m30938a(BigDecimal.class, TypeAdapters.f7892B));
        arrayList.add(TypeAdapters.m30938a(BigInteger.class, TypeAdapters.f7893C));
        arrayList.add(TypeAdapters.f7900J);
        arrayList.add(TypeAdapters.f7902L);
        arrayList.add(TypeAdapters.f7906P);
        arrayList.add(TypeAdapters.f7908R);
        arrayList.add(TypeAdapters.f7913W);
        arrayList.add(TypeAdapters.f7904N);
        arrayList.add(TypeAdapters.f7920d);
        arrayList.add(DateTypeAdapter.f7844b);
        arrayList.add(TypeAdapters.f7911U);
        arrayList.add(TimeTypeAdapter.f7874b);
        arrayList.add(SqlDateTypeAdapter.f7872b);
        arrayList.add(TypeAdapters.f7909S);
        arrayList.add(ArrayTypeAdapter.f7838c);
        arrayList.add(TypeAdapters.f7918b);
        arrayList.add(new CollectionTypeAdapterFactory(this.f7813c));
        arrayList.add(new MapTypeAdapterFactory(this.f7813c, z2));
        this.f7814d = new JsonAdapterAnnotationTypeAdapterFactory(this.f7813c);
        arrayList.add(this.f7814d);
        arrayList.add(TypeAdapters.f7916Z);
        arrayList.add(new ReflectiveTypeAdapterFactory(this.f7813c, dVar, excluder, this.f7814d));
        this.f7815e = Collections.unmodifiableList(arrayList);
    }

    /* renamed from: a */
    public static TypeAdapter<AtomicLong> m31003a(final TypeAdapter<Number> typeAdapter) {
        return new TypeAdapter<AtomicLong>() { // from class: com.google.gson.Gson.4
            /* renamed from: a */
            public void write(C10177c cVar, AtomicLong atomicLong) throws IOException {
                TypeAdapter.this.write(cVar, Long.valueOf(atomicLong.get()));
            }

            @Override // com.google.gson.TypeAdapter
            public AtomicLong read(C10174a aVar) throws IOException {
                return new AtomicLong(((Number) TypeAdapter.this.read(aVar)).longValue());
            }
        }.nullSafe();
    }

    /* renamed from: a */
    public static TypeAdapter<Number> m30997a(EnumC10114t tVar) {
        return tVar == EnumC10114t.f22835a ? TypeAdapters.f7936t : new TypeAdapter<Number>() { // from class: com.google.gson.Gson.3
            /* renamed from: a */
            public void write(C10177c cVar, Number number) throws IOException {
                if (number == null) {
                    cVar.mo13214k();
                } else {
                    cVar.mo13223d(number.toString());
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.google.gson.TypeAdapter
            public Number read(C10174a aVar) throws IOException {
                if (aVar.mo13272F() != EnumC10176b.NULL) {
                    return Long.valueOf(aVar.mo13243n());
                }
                aVar.mo13241p();
                return null;
            }
        };
    }

    /* renamed from: a */
    public static void m31004a(double d) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            throw new IllegalArgumentException(d + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    /* renamed from: a */
    public static void m30987a(Object obj, C10174a aVar) {
        if (obj != null) {
            try {
                if (aVar.mo13272F() != EnumC10176b.END_DOCUMENT) {
                    throw new C10105k("JSON document was not fully consumed.");
                }
            } catch (C10178d e) {
                throw new C10113s(e);
            } catch (IOException e2) {
                throw new C10105k(e2);
            }
        }
    }

    /* renamed from: b */
    public static TypeAdapter<AtomicLongArray> m30979b(final TypeAdapter<Number> typeAdapter) {
        return new TypeAdapter<AtomicLongArray>() { // from class: com.google.gson.Gson.5
            /* renamed from: a */
            public void write(C10177c cVar, AtomicLongArray atomicLongArray) throws IOException {
                cVar.mo13227c();
                int length = atomicLongArray.length();
                for (int i = 0; i < length; i++) {
                    TypeAdapter.this.write(cVar, Long.valueOf(atomicLongArray.get(i)));
                }
                cVar.mo13221e();
            }

            @Override // com.google.gson.TypeAdapter
            public AtomicLongArray read(C10174a aVar) throws IOException {
                ArrayList arrayList = new ArrayList();
                aVar.mo13265a();
                while (aVar.mo13249h()) {
                    arrayList.add(Long.valueOf(((Number) TypeAdapter.this.read(aVar)).longValue()));
                }
                aVar.mo13251f();
                int size = arrayList.size();
                AtomicLongArray atomicLongArray = new AtomicLongArray(size);
                for (int i = 0; i < size; i++) {
                    atomicLongArray.set(i, ((Long) arrayList.get(i)).longValue());
                }
                return atomicLongArray;
            }
        }.nullSafe();
    }

    /* renamed from: a */
    public <T> TypeAdapter<T> m30996a(AbstractC10117u uVar, C10173a<T> aVar) {
        AbstractC10117u uVar2 = uVar;
        if (!this.f7815e.contains(uVar)) {
            uVar2 = this.f7814d;
        }
        boolean z = false;
        for (AbstractC10117u uVar3 : this.f7815e) {
            if (z) {
                TypeAdapter<T> create = uVar3.create(this, aVar);
                if (create != null) {
                    return create;
                }
            } else if (uVar3 == uVar2) {
                z = true;
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize " + aVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public <T> TypeAdapter<T> m30995a(C10173a<T> aVar) {
        TypeAdapter typeAdapter;
        TypeAdapter<T> typeAdapter2 = (TypeAdapter<T>) this.f7812b.get(aVar == null ? f7810k : aVar);
        if (typeAdapter2 != null) {
            return typeAdapter2;
        }
        Map<C10173a<?>, FutureTypeAdapter<?>> map = this.f7811a.get();
        boolean z = false;
        Map<C10173a<?>, FutureTypeAdapter<?>> map2 = map;
        if (map == null) {
            map2 = new HashMap<>();
            this.f7811a.set(map2);
            z = true;
        }
        FutureTypeAdapter<?> futureTypeAdapter = map2.get(aVar);
        if (futureTypeAdapter != null) {
            return futureTypeAdapter;
        }
        try {
            FutureTypeAdapter<?> futureTypeAdapter2 = new FutureTypeAdapter<>();
            map2.put(aVar, futureTypeAdapter2);
            Iterator<AbstractC10117u> it = this.f7815e.iterator();
            do {
                if (it.hasNext()) {
                    typeAdapter = (TypeAdapter<T>) it.next().create(this, aVar);
                } else {
                    throw new IllegalArgumentException("GSON (2.8.6) cannot handle " + aVar);
                }
            } while (typeAdapter == null);
            futureTypeAdapter2.m30972a(typeAdapter);
            this.f7812b.put(aVar, typeAdapter);
            return typeAdapter;
        } finally {
            map2.remove(aVar);
            if (z) {
                this.f7811a.remove();
            }
        }
    }

    /* renamed from: a */
    public <T> TypeAdapter<T> m30989a(Class<T> cls) {
        return m30995a((C10173a) C10173a.m13279a((Class) cls));
    }

    /* renamed from: a */
    public final TypeAdapter<Number> m30980a(boolean z) {
        return z ? TypeAdapters.f7938v : new TypeAdapter<Number>(this) { // from class: com.google.gson.Gson.1
            /* renamed from: a */
            public void write(C10177c cVar, Number number) throws IOException {
                if (number == null) {
                    cVar.mo13214k();
                    return;
                }
                Gson.m31004a(number.doubleValue());
                cVar.mo13234a(number);
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: read */
            public Number read2(C10174a aVar) throws IOException {
                if (aVar.mo13272F() != EnumC10176b.NULL) {
                    return Double.valueOf(aVar.mo13245l());
                }
                aVar.mo13241p();
                return null;
            }
        };
    }

    /* renamed from: a */
    public C10174a m30993a(Reader reader) {
        C10174a aVar = new C10174a(reader);
        aVar.m13256b(this.f7820j);
        return aVar;
    }

    /* renamed from: a */
    public C10177c m30990a(Writer writer) throws IOException {
        if (this.f7817g) {
            writer.write(com.aotter.net.gson.Gson.JSON_NON_EXECUTABLE_PREFIX);
        }
        C10177c cVar = new C10177c(writer);
        if (this.f7819i) {
            cVar.m13229b("  ");
        }
        cVar.m13225c(this.f7816f);
        return cVar;
    }

    /* renamed from: a */
    public <T> T m30999a(AbstractC10104j jVar, Class<T> cls) throws C10113s {
        return (T) C10156j.m13305a((Class) cls).cast(m30998a(jVar, (Type) cls));
    }

    /* renamed from: a */
    public <T> T m30998a(AbstractC10104j jVar, Type type) throws C10113s {
        if (jVar == null) {
            return null;
        }
        return (T) m30994a((C10174a) new C10165a(jVar), type);
    }

    /* renamed from: a */
    public <T> T m30994a(C10174a aVar, Type type) throws C10105k, C10113s {
        boolean i = aVar.m13248i();
        boolean z = true;
        aVar.m13256b(true);
        try {
            try {
                try {
                    aVar.mo13272F();
                    z = false;
                    T read = m30995a((C10173a) C10173a.m13278a(type)).read(aVar);
                    aVar.m13256b(i);
                    return read;
                } catch (EOFException e) {
                    if (z) {
                        aVar.m13256b(i);
                        return null;
                    }
                    throw new C10113s(e);
                } catch (IllegalStateException e2) {
                    throw new C10113s(e2);
                }
            } catch (IOException e3) {
                throw new C10113s(e3);
            } catch (AssertionError e4) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON 2.8.6): " + e4.getMessage());
                assertionError.initCause(e4);
                throw assertionError;
            }
        } catch (Throwable th) {
            aVar.m13256b(i);
            throw th;
        }
    }

    /* renamed from: a */
    public <T> T m30992a(Reader reader, Class<T> cls) throws C10113s, C10105k {
        C10174a a = m30993a(reader);
        Object a2 = m30994a(a, (Type) cls);
        m30987a(a2, a);
        return (T) C10156j.m13305a((Class) cls).cast(a2);
    }

    /* renamed from: a */
    public <T> T m30991a(Reader reader, Type type) throws C10105k, C10113s {
        C10174a a = m30993a(reader);
        T t = (T) m30994a(a, type);
        m30987a(t, a);
        return t;
    }

    /* renamed from: a */
    public <T> T m30982a(String str, Class<T> cls) throws C10113s {
        return (T) C10156j.m13305a((Class) cls).cast(m30981a(str, (Type) cls));
    }

    /* renamed from: a */
    public <T> T m30981a(String str, Type type) throws C10113s {
        if (str == null) {
            return null;
        }
        return (T) m30991a((Reader) new StringReader(str), type);
    }

    /* renamed from: a */
    public String m31002a(AbstractC10104j jVar) {
        StringWriter stringWriter = new StringWriter();
        m31000a(jVar, (Appendable) stringWriter);
        return stringWriter.toString();
    }

    /* renamed from: a */
    public String m30988a(Object obj) {
        return obj == null ? m31002a((AbstractC10104j) C10106l.f22832a) : m30985a(obj, obj.getClass());
    }

    /* renamed from: a */
    public String m30985a(Object obj, Type type) {
        StringWriter stringWriter = new StringWriter();
        m30983a(obj, type, stringWriter);
        return stringWriter.toString();
    }

    /* renamed from: a */
    public void m31001a(AbstractC10104j jVar, C10177c cVar) throws C10105k {
        boolean i = cVar.m13216i();
        cVar.m13228b(true);
        boolean h = cVar.m13217h();
        cVar.m13232a(this.f7818h);
        boolean g = cVar.m13219g();
        cVar.m13225c(this.f7816f);
        try {
            try {
                C10157k.m13303a(jVar, cVar);
                cVar.m13228b(i);
                cVar.m13232a(h);
                cVar.m13225c(g);
            } catch (IOException e) {
                throw new C10105k(e);
            } catch (AssertionError e2) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON 2.8.6): " + e2.getMessage());
                assertionError.initCause(e2);
                throw assertionError;
            }
        } catch (Throwable th) {
            cVar.m13228b(i);
            cVar.m13232a(h);
            cVar.m13225c(g);
            throw th;
        }
    }

    /* renamed from: a */
    public void m31000a(AbstractC10104j jVar, Appendable appendable) throws C10105k {
        try {
            m31001a(jVar, m30990a(C10157k.m13301a(appendable)));
        } catch (IOException e) {
            throw new C10105k(e);
        }
    }

    /* renamed from: a */
    public void m30986a(Object obj, Appendable appendable) throws C10105k {
        if (obj != null) {
            m30983a(obj, obj.getClass(), appendable);
        } else {
            m31000a((AbstractC10104j) C10106l.f22832a, appendable);
        }
    }

    /* renamed from: a */
    public void m30984a(Object obj, Type type, C10177c cVar) throws C10105k {
        TypeAdapter a = m30995a((C10173a) C10173a.m13278a(type));
        boolean i = cVar.m13216i();
        cVar.m13228b(true);
        boolean h = cVar.m13217h();
        cVar.m13232a(this.f7818h);
        boolean g = cVar.m13219g();
        cVar.m13225c(this.f7816f);
        try {
            try {
                a.write(cVar, obj);
                cVar.m13228b(i);
                cVar.m13232a(h);
                cVar.m13225c(g);
            } catch (IOException e) {
                throw new C10105k(e);
            } catch (AssertionError e2) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON 2.8.6): " + e2.getMessage());
                assertionError.initCause(e2);
                throw assertionError;
            }
        } catch (Throwable th) {
            cVar.m13228b(i);
            cVar.m13232a(h);
            cVar.m13225c(g);
            throw th;
        }
    }

    /* renamed from: a */
    public void m30983a(Object obj, Type type, Appendable appendable) throws C10105k {
        try {
            m30984a(obj, type, m30990a(C10157k.m13301a(appendable)));
        } catch (IOException e) {
            throw new C10105k(e);
        }
    }

    /* renamed from: b */
    public final TypeAdapter<Number> m30978b(boolean z) {
        return z ? TypeAdapters.f7937u : new TypeAdapter<Number>(this) { // from class: com.google.gson.Gson.2
            /* renamed from: a */
            public void write(C10177c cVar, Number number) throws IOException {
                if (number == null) {
                    cVar.mo13214k();
                    return;
                }
                Gson.m31004a(number.floatValue());
                cVar.mo13234a(number);
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: read */
            public Number read2(C10174a aVar) throws IOException {
                if (aVar.mo13272F() != EnumC10176b.NULL) {
                    return Float.valueOf((float) aVar.mo13245l());
                }
                aVar.mo13241p();
                return null;
            }
        };
    }

    public String toString() {
        return "{serializeNulls:" + this.f7816f + ",factories:" + this.f7815e + ",instanceCreators:" + this.f7813c + CssParser.BLOCK_END;
    }
}
