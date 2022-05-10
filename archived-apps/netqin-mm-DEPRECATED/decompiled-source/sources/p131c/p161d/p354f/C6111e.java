package p131c.p161d.p354f;

import com.google.gson.FieldNamingPolicy;
import com.google.gson.JsonIOException;
import com.google.gson.JsonSyntaxException;
import com.google.gson.LongSerializationPolicy;
import com.google.gson.stream.JsonToken;
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
import p131c.p161d.p354f.p356t.C6138b;
import p131c.p161d.p354f.p356t.C6153c;
import p131c.p161d.p354f.p356t.C6159h;
import p131c.p161d.p354f.p356t.C6160i;
import p131c.p161d.p354f.p356t.p357k.C6168a;
import p131c.p161d.p354f.p356t.p357k.C6170b;
import p131c.p161d.p354f.p356t.p357k.C6172c;
import p131c.p161d.p354f.p356t.p357k.C6174d;
import p131c.p161d.p354f.p356t.p357k.C6179g;
import p131c.p161d.p354f.p356t.p357k.C6181h;
import p131c.p161d.p354f.p356t.p357k.C6184i;
import p131c.p161d.p354f.p356t.p357k.C6188j;
import p131c.p161d.p354f.p356t.p357k.C6190k;
import p131c.p161d.p354f.p356t.p357k.C6196n;
import p131c.p161d.p354f.p360u.C6239a;
import p131c.p161d.p354f.p361v.C6240a;
import p131c.p161d.p354f.p361v.C6242b;
/* renamed from: c.d.f.e */
/* loaded from: classes2-dex2jar.jar:c/d/f/e.class */
public final class C6111e {

    /* renamed from: k */
    public static final C6239a<?> f19613k = C6239a.m21835a(Object.class);

    /* renamed from: a */
    public final ThreadLocal<Map<C6239a<?>, C6117f<?>>> f19614a;

    /* renamed from: b */
    public final Map<C6239a<?>, AbstractC6129q<?>> f19615b;

    /* renamed from: c */
    public final C6138b f19616c;

    /* renamed from: d */
    public final C6174d f19617d;

    /* renamed from: e */
    public final List<AbstractC6131r> f19618e;

    /* renamed from: f */
    public final boolean f19619f;

    /* renamed from: g */
    public final boolean f19620g;

    /* renamed from: h */
    public final boolean f19621h;

    /* renamed from: i */
    public final boolean f19622i;

    /* renamed from: j */
    public final boolean f19623j;

    /* renamed from: c.d.f.e$a */
    /* loaded from: classes2-dex2jar.jar:c/d/f/e$a.class */
    public class C6112a extends AbstractC6129q<Number> {
        public C6112a(C6111e eVar) {
        }

        /* renamed from: a */
        public void write(C6242b bVar, Number number) throws IOException {
            if (number == null) {
                bVar.mo21770k();
                return;
            }
            C6111e.m21998a(number.doubleValue());
            bVar.mo21790a(number);
        }

        @Override // p131c.p161d.p354f.AbstractC6129q
        /* renamed from: read */
        public Number read2(C6240a aVar) throws IOException {
            if (aVar.mo21802u() != JsonToken.NULL) {
                return Double.valueOf(aVar.mo21809m());
            }
            aVar.mo21805r();
            return null;
        }
    }

    /* renamed from: c.d.f.e$b */
    /* loaded from: classes2-dex2jar.jar:c/d/f/e$b.class */
    public class C6113b extends AbstractC6129q<Number> {
        public C6113b(C6111e eVar) {
        }

        /* renamed from: a */
        public void write(C6242b bVar, Number number) throws IOException {
            if (number == null) {
                bVar.mo21770k();
                return;
            }
            C6111e.m21998a(number.floatValue());
            bVar.mo21790a(number);
        }

        @Override // p131c.p161d.p354f.AbstractC6129q
        /* renamed from: read */
        public Number read2(C6240a aVar) throws IOException {
            if (aVar.mo21802u() != JsonToken.NULL) {
                return Float.valueOf((float) aVar.mo21809m());
            }
            aVar.mo21805r();
            return null;
        }
    }

    /* renamed from: c.d.f.e$c */
    /* loaded from: classes2-dex2jar.jar:c/d/f/e$c.class */
    public class C6114c extends AbstractC6129q<Number> {
        /* renamed from: a */
        public void write(C6242b bVar, Number number) throws IOException {
            if (number == null) {
                bVar.mo21770k();
            } else {
                bVar.mo21778d(number.toString());
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p131c.p161d.p354f.AbstractC6129q
        public Number read(C6240a aVar) throws IOException {
            if (aVar.mo21802u() != JsonToken.NULL) {
                return Long.valueOf(aVar.mo21807p());
            }
            aVar.mo21805r();
            return null;
        }
    }

    /* renamed from: c.d.f.e$d */
    /* loaded from: classes2-dex2jar.jar:c/d/f/e$d.class */
    public class C6115d extends AbstractC6129q<AtomicLong> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC6129q f19624a;

        public C6115d(AbstractC6129q qVar) {
            this.f19624a = qVar;
        }

        /* renamed from: a */
        public void write(C6242b bVar, AtomicLong atomicLong) throws IOException {
            this.f19624a.write(bVar, Long.valueOf(atomicLong.get()));
        }

        @Override // p131c.p161d.p354f.AbstractC6129q
        public AtomicLong read(C6240a aVar) throws IOException {
            return new AtomicLong(((Number) this.f19624a.read(aVar)).longValue());
        }
    }

    /* renamed from: c.d.f.e$e */
    /* loaded from: classes2-dex2jar.jar:c/d/f/e$e.class */
    public class C6116e extends AbstractC6129q<AtomicLongArray> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC6129q f19625a;

        public C6116e(AbstractC6129q qVar) {
            this.f19625a = qVar;
        }

        /* renamed from: a */
        public void write(C6242b bVar, AtomicLongArray atomicLongArray) throws IOException {
            bVar.mo21783c();
            int length = atomicLongArray.length();
            for (int i = 0; i < length; i++) {
                this.f19625a.write(bVar, Long.valueOf(atomicLongArray.get(i)));
            }
            bVar.mo21776e();
        }

        @Override // p131c.p161d.p354f.AbstractC6129q
        public AtomicLongArray read(C6240a aVar) throws IOException {
            ArrayList arrayList = new ArrayList();
            aVar.mo21830a();
            while (aVar.mo21813i()) {
                arrayList.add(Long.valueOf(((Number) this.f19625a.read(aVar)).longValue()));
            }
            aVar.mo21816f();
            int size = arrayList.size();
            AtomicLongArray atomicLongArray = new AtomicLongArray(size);
            for (int i = 0; i < size; i++) {
                atomicLongArray.set(i, ((Long) arrayList.get(i)).longValue());
            }
            return atomicLongArray;
        }
    }

    /* renamed from: c.d.f.e$f */
    /* loaded from: classes2-dex2jar.jar:c/d/f/e$f.class */
    public static class C6117f<T> extends AbstractC6129q<T> {

        /* renamed from: a */
        public AbstractC6129q<T> f19626a;

        /* renamed from: a */
        public void m21969a(AbstractC6129q<T> qVar) {
            if (this.f19626a == null) {
                this.f19626a = qVar;
                return;
            }
            throw new AssertionError();
        }

        @Override // p131c.p161d.p354f.AbstractC6129q
        public T read(C6240a aVar) throws IOException {
            AbstractC6129q<T> qVar = this.f19626a;
            if (qVar != null) {
                return qVar.read(aVar);
            }
            throw new IllegalStateException();
        }

        @Override // p131c.p161d.p354f.AbstractC6129q
        public void write(C6242b bVar, T t) throws IOException {
            AbstractC6129q<T> qVar = this.f19626a;
            if (qVar != null) {
                qVar.write(bVar, t);
                return;
            }
            throw new IllegalStateException();
        }
    }

    public C6111e() {
        this(C6153c.f19659g, FieldNamingPolicy.IDENTITY, Collections.emptyMap(), false, false, false, true, false, false, false, LongSerializationPolicy.DEFAULT, null, 2, 2, Collections.emptyList(), Collections.emptyList(), Collections.emptyList());
    }

    public C6111e(C6153c cVar, AbstractC6110d dVar, Map<Type, AbstractC6119g<?>> map, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, LongSerializationPolicy longSerializationPolicy, String str, int i, int i2, List<AbstractC6131r> list, List<AbstractC6131r> list2, List<AbstractC6131r> list3) {
        this.f19614a = new ThreadLocal<>();
        this.f19615b = new ConcurrentHashMap();
        this.f19616c = new C6138b(map);
        this.f19619f = z;
        this.f19620g = z3;
        this.f19621h = z4;
        this.f19622i = z5;
        this.f19623j = z6;
        ArrayList arrayList = new ArrayList();
        arrayList.add(C6196n.f19765Y);
        arrayList.add(C6181h.f19708b);
        arrayList.add(cVar);
        arrayList.addAll(list3);
        arrayList.add(C6196n.f19744D);
        arrayList.add(C6196n.f19779m);
        arrayList.add(C6196n.f19773g);
        arrayList.add(C6196n.f19775i);
        arrayList.add(C6196n.f19777k);
        AbstractC6129q<Number> a = m21990a(longSerializationPolicy);
        arrayList.add(C6196n.m21877a(Long.TYPE, Long.class, a));
        arrayList.add(C6196n.m21877a(Double.TYPE, Double.class, m21977a(z7)));
        arrayList.add(C6196n.m21877a(Float.TYPE, Float.class, m21975b(z7)));
        arrayList.add(C6196n.f19790x);
        arrayList.add(C6196n.f19781o);
        arrayList.add(C6196n.f19783q);
        arrayList.add(C6196n.m21878a(AtomicLong.class, m21994a(a)));
        arrayList.add(C6196n.m21878a(AtomicLongArray.class, m21976b(a)));
        arrayList.add(C6196n.f19785s);
        arrayList.add(C6196n.f19792z);
        arrayList.add(C6196n.f19746F);
        arrayList.add(C6196n.f19748H);
        arrayList.add(C6196n.m21878a(BigDecimal.class, C6196n.f19742B));
        arrayList.add(C6196n.m21878a(BigInteger.class, C6196n.f19743C));
        arrayList.add(C6196n.f19750J);
        arrayList.add(C6196n.f19752L);
        arrayList.add(C6196n.f19756P);
        arrayList.add(C6196n.f19758R);
        arrayList.add(C6196n.f19763W);
        arrayList.add(C6196n.f19754N);
        arrayList.add(C6196n.f19770d);
        arrayList.add(C6172c.f19688b);
        arrayList.add(C6196n.f19761U);
        arrayList.add(C6190k.f19729b);
        arrayList.add(C6188j.f19727b);
        arrayList.add(C6196n.f19759S);
        arrayList.add(C6168a.f19682c);
        arrayList.add(C6196n.f19768b);
        arrayList.add(new C6170b(this.f19616c));
        arrayList.add(new C6179g(this.f19616c, z2));
        C6174d dVar2 = new C6174d(this.f19616c);
        this.f19617d = dVar2;
        arrayList.add(dVar2);
        arrayList.add(C6196n.f19766Z);
        arrayList.add(new C6184i(this.f19616c, dVar, cVar, this.f19617d));
        this.f19618e = Collections.unmodifiableList(arrayList);
    }

    /* renamed from: a */
    public static AbstractC6129q<AtomicLong> m21994a(AbstractC6129q<Number> qVar) {
        return new C6115d(qVar).nullSafe();
    }

    /* renamed from: a */
    public static AbstractC6129q<Number> m21990a(LongSerializationPolicy longSerializationPolicy) {
        return longSerializationPolicy == LongSerializationPolicy.DEFAULT ? C6196n.f19786t : new C6114c();
    }

    /* renamed from: a */
    public static void m21998a(double d) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            throw new IllegalArgumentException(d + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    /* renamed from: a */
    public static void m21983a(Object obj, C6240a aVar) {
        if (obj != null) {
            try {
                if (aVar.mo21802u() != JsonToken.END_DOCUMENT) {
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
    public static AbstractC6129q<AtomicLongArray> m21976b(AbstractC6129q<Number> qVar) {
        return new C6116e(qVar).nullSafe();
    }

    /* renamed from: a */
    public <T> AbstractC6129q<T> m21993a(AbstractC6131r rVar, C6239a<T> aVar) {
        AbstractC6131r rVar2 = rVar;
        if (!this.f19618e.contains(rVar)) {
            rVar2 = this.f19617d;
        }
        boolean z = false;
        for (AbstractC6131r rVar3 : this.f19618e) {
            if (z) {
                AbstractC6129q<T> create = rVar3.create(this, aVar);
                if (create != null) {
                    return create;
                }
            } else if (rVar3 == rVar2) {
                z = true;
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize " + aVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public <T> AbstractC6129q<T> m21992a(C6239a<T> aVar) {
        AbstractC6129q qVar;
        AbstractC6129q<T> qVar2 = (AbstractC6129q<T>) this.f19615b.get(aVar == null ? f19613k : aVar);
        if (qVar2 != null) {
            return qVar2;
        }
        Map<C6239a<?>, C6117f<?>> map = this.f19614a.get();
        boolean z = false;
        Map<C6239a<?>, C6117f<?>> map2 = map;
        if (map == null) {
            map2 = new HashMap<>();
            this.f19614a.set(map2);
            z = true;
        }
        C6117f<?> fVar = map2.get(aVar);
        if (fVar != null) {
            return fVar;
        }
        try {
            C6117f<?> fVar2 = new C6117f<>();
            map2.put(aVar, fVar2);
            Iterator<AbstractC6131r> it = this.f19618e.iterator();
            do {
                if (it.hasNext()) {
                    qVar = (AbstractC6129q<T>) it.next().create(this, aVar);
                } else {
                    throw new IllegalArgumentException("GSON (2.8.6) cannot handle " + aVar);
                }
            } while (qVar == null);
            fVar2.m21969a(qVar);
            this.f19615b.put(aVar, qVar);
            return qVar;
        } finally {
            map2.remove(aVar);
            if (z) {
                this.f19614a.remove();
            }
        }
    }

    /* renamed from: a */
    public <T> AbstractC6129q<T> m21985a(Class<T> cls) {
        return m21992a((C6239a) C6239a.m21835a((Class) cls));
    }

    /* renamed from: a */
    public final AbstractC6129q<Number> m21977a(boolean z) {
        return z ? C6196n.f19788v : new C6112a(this);
    }

    /* renamed from: a */
    public C6240a m21989a(Reader reader) {
        C6240a aVar = new C6240a(reader);
        aVar.m21821b(this.f19623j);
        return aVar;
    }

    /* renamed from: a */
    public C6242b m21986a(Writer writer) throws IOException {
        if (this.f19620g) {
            writer.write(")]}'\n");
        }
        C6242b bVar = new C6242b(writer);
        if (this.f19622i) {
            bVar.m21785b("  ");
        }
        bVar.m21781c(this.f19619f);
        return bVar;
    }

    /* renamed from: a */
    public <T> T m21991a(C6240a aVar, Type type) throws JsonIOException, JsonSyntaxException {
        boolean j = aVar.m21812j();
        boolean z = true;
        aVar.m21821b(true);
        try {
            try {
                try {
                    aVar.mo21802u();
                    z = false;
                    T read = m21992a((C6239a) C6239a.m21834a(type)).read(aVar);
                    aVar.m21821b(j);
                    return read;
                } catch (EOFException e) {
                    if (z) {
                        aVar.m21821b(j);
                        return null;
                    }
                    throw new JsonSyntaxException(e);
                } catch (IllegalStateException e2) {
                    throw new JsonSyntaxException(e2);
                }
            } catch (IOException e3) {
                throw new JsonSyntaxException(e3);
            } catch (AssertionError e4) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON 2.8.6): " + e4.getMessage());
                assertionError.initCause(e4);
                throw assertionError;
            }
        } catch (Throwable th) {
            aVar.m21821b(j);
            throw th;
        }
    }

    /* renamed from: a */
    public <T> T m21988a(Reader reader, Class<T> cls) throws JsonSyntaxException, JsonIOException {
        C6240a a = m21989a(reader);
        Object a2 = m21991a(a, (Type) cls);
        m21983a(a2, a);
        return (T) C6159h.m21913a((Class) cls).cast(a2);
    }

    /* renamed from: a */
    public <T> T m21987a(Reader reader, Type type) throws JsonIOException, JsonSyntaxException {
        C6240a a = m21989a(reader);
        T t = (T) m21991a(a, type);
        m21983a(t, a);
        return t;
    }

    /* renamed from: a */
    public <T> T m21979a(String str, Class<T> cls) throws JsonSyntaxException {
        return (T) C6159h.m21913a((Class) cls).cast(m21978a(str, (Type) cls));
    }

    /* renamed from: a */
    public <T> T m21978a(String str, Type type) throws JsonSyntaxException {
        if (str == null) {
            return null;
        }
        return (T) m21987a((Reader) new StringReader(str), type);
    }

    /* renamed from: a */
    public String m21997a(AbstractC6123k kVar) {
        StringWriter stringWriter = new StringWriter();
        m21995a(kVar, stringWriter);
        return stringWriter.toString();
    }

    /* renamed from: a */
    public String m21984a(Object obj) {
        return obj == null ? m21997a((AbstractC6123k) C6124l.f19644a) : m21982a(obj, obj.getClass());
    }

    /* renamed from: a */
    public String m21982a(Object obj, Type type) {
        StringWriter stringWriter = new StringWriter();
        m21980a(obj, type, stringWriter);
        return stringWriter.toString();
    }

    /* renamed from: a */
    public void m21996a(AbstractC6123k kVar, C6242b bVar) throws JsonIOException {
        boolean i = bVar.m21772i();
        bVar.m21784b(true);
        boolean h = bVar.m21773h();
        bVar.m21788a(this.f19621h);
        boolean g = bVar.m21774g();
        bVar.m21781c(this.f19619f);
        try {
            try {
                C6160i.m21911a(kVar, bVar);
                bVar.m21784b(i);
                bVar.m21788a(h);
                bVar.m21781c(g);
            } catch (IOException e) {
                throw new JsonIOException(e);
            } catch (AssertionError e2) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON 2.8.6): " + e2.getMessage());
                assertionError.initCause(e2);
                throw assertionError;
            }
        } catch (Throwable th) {
            bVar.m21784b(i);
            bVar.m21788a(h);
            bVar.m21781c(g);
            throw th;
        }
    }

    /* renamed from: a */
    public void m21995a(AbstractC6123k kVar, Appendable appendable) throws JsonIOException {
        try {
            m21996a(kVar, m21986a(C6160i.m21909a(appendable)));
        } catch (IOException e) {
            throw new JsonIOException(e);
        }
    }

    /* renamed from: a */
    public void m21981a(Object obj, Type type, C6242b bVar) throws JsonIOException {
        AbstractC6129q a = m21992a((C6239a) C6239a.m21834a(type));
        boolean i = bVar.m21772i();
        bVar.m21784b(true);
        boolean h = bVar.m21773h();
        bVar.m21788a(this.f19621h);
        boolean g = bVar.m21774g();
        bVar.m21781c(this.f19619f);
        try {
            try {
                a.write(bVar, obj);
                bVar.m21784b(i);
                bVar.m21788a(h);
                bVar.m21781c(g);
            } catch (IOException e) {
                throw new JsonIOException(e);
            } catch (AssertionError e2) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON 2.8.6): " + e2.getMessage());
                assertionError.initCause(e2);
                throw assertionError;
            }
        } catch (Throwable th) {
            bVar.m21784b(i);
            bVar.m21788a(h);
            bVar.m21781c(g);
            throw th;
        }
    }

    /* renamed from: a */
    public void m21980a(Object obj, Type type, Appendable appendable) throws JsonIOException {
        try {
            m21981a(obj, type, m21986a(C6160i.m21909a(appendable)));
        } catch (IOException e) {
            throw new JsonIOException(e);
        }
    }

    /* renamed from: b */
    public final AbstractC6129q<Number> m21975b(boolean z) {
        return z ? C6196n.f19787u : new C6113b(this);
    }

    public String toString() {
        return "{serializeNulls:" + this.f19619f + ",factories:" + this.f19618e + ",instanceCreators:" + this.f19616c + "}";
    }
}
