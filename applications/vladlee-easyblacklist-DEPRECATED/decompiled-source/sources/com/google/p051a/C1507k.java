package com.google.p051a;

import com.google.p051a.p053b.C1450aa;
import com.google.p051a.p053b.C1451ab;
import com.google.p051a.p053b.C1464c;
import com.google.p051a.p053b.C1479r;
import com.google.p051a.p053b.p054a.C1383a;
import com.google.p051a.p053b.p054a.C1420c;
import com.google.p051a.p053b.p054a.C1422d;
import com.google.p051a.p053b.p054a.C1424f;
import com.google.p051a.p053b.p054a.C1429k;
import com.google.p051a.p053b.p054a.C1431l;
import com.google.p051a.p053b.p054a.C1434o;
import com.google.p051a.p053b.p054a.C1438q;
import com.google.p051a.p053b.p054a.C1440s;
import com.google.p051a.p053b.p054a.C1445w;
import com.google.p051a.p057c.C1493a;
import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.C1498d;
import com.google.p051a.p058d.C1499e;
import com.google.p051a.p058d.EnumC1497c;
import java.io.EOFException;
import java.io.IOException;
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
/* renamed from: com.google.a.k */
/* loaded from: classes-dex2jar.jar:com/google/a/k.class */
public final class C1507k {

    /* renamed from: r */
    private static final C1493a<?> f5748r = C1493a.m6253a(Object.class);

    /* renamed from: a */
    final List<AbstractC1380ag> f5749a;

    /* renamed from: b */
    final C1479r f5750b;

    /* renamed from: c */
    final AbstractC1506j f5751c;

    /* renamed from: d */
    final Map<Type, AbstractC1514q<?>> f5752d;

    /* renamed from: e */
    final boolean f5753e;

    /* renamed from: f */
    final boolean f5754f;

    /* renamed from: g */
    final boolean f5755g;

    /* renamed from: h */
    final boolean f5756h;

    /* renamed from: i */
    final boolean f5757i;

    /* renamed from: j */
    final boolean f5758j;

    /* renamed from: k */
    final boolean f5759k;

    /* renamed from: l */
    final String f5760l;

    /* renamed from: m */
    final int f5761m;

    /* renamed from: n */
    final int f5762n;

    /* renamed from: o */
    final EnumC1375ab f5763o;

    /* renamed from: p */
    final List<AbstractC1380ag> f5764p;

    /* renamed from: q */
    final List<AbstractC1380ag> f5765q;

    /* renamed from: s */
    private final ThreadLocal<Map<C1493a<?>, C1508a<?>>> f5766s;

    /* renamed from: t */
    private final Map<C1493a<?>, AbstractC1378ae<?>> f5767t;

    /* renamed from: u */
    private final C1464c f5768u;

    /* renamed from: v */
    private final C1424f f5769v;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.a.k$a */
    /* loaded from: classes-dex2jar.jar:com/google/a/k$a.class */
    public static final class C1508a<T> extends AbstractC1378ae<T> {

        /* renamed from: a */
        private AbstractC1378ae<T> f5770a;

        C1508a() {
        }

        @Override // com.google.p051a.AbstractC1378ae
        /* renamed from: a */
        public final T mo6175a(C1495a aVar) {
            AbstractC1378ae<T> aeVar = this.f5770a;
            if (aeVar != null) {
                return aeVar.mo6175a(aVar);
            }
            throw new IllegalStateException();
        }

        /* renamed from: a */
        public final void m6176a(AbstractC1378ae<T> aeVar) {
            if (this.f5770a == null) {
                this.f5770a = aeVar;
                return;
            }
            throw new AssertionError();
        }

        @Override // com.google.p051a.AbstractC1378ae
        /* renamed from: a */
        public final void mo6174a(C1498d dVar, T t) {
            AbstractC1378ae<T> aeVar = this.f5770a;
            if (aeVar != null) {
                aeVar.mo6174a(dVar, t);
                return;
            }
            throw new IllegalStateException();
        }
    }

    public C1507k() {
        this(C1479r.f5659a, EnumC1492c.IDENTITY, Collections.emptyMap(), EnumC1375ab.DEFAULT, Collections.emptyList(), Collections.emptyList(), Collections.emptyList());
    }

    private C1507k(C1479r rVar, AbstractC1506j jVar, Map<Type, AbstractC1514q<?>> map, EnumC1375ab abVar, List<AbstractC1380ag> list, List<AbstractC1380ag> list2, List<AbstractC1380ag> list3) {
        this.f5766s = new ThreadLocal<>();
        this.f5767t = new ConcurrentHashMap();
        this.f5750b = rVar;
        this.f5751c = jVar;
        this.f5752d = map;
        this.f5768u = new C1464c(map);
        this.f5753e = false;
        this.f5754f = false;
        this.f5755g = false;
        this.f5756h = true;
        this.f5757i = false;
        this.f5758j = false;
        this.f5759k = false;
        this.f5763o = abVar;
        this.f5760l = null;
        this.f5761m = 2;
        this.f5762n = 2;
        this.f5764p = list;
        this.f5765q = list2;
        ArrayList arrayList = new ArrayList();
        arrayList.add(C1445w.f5586Y);
        arrayList.add(C1431l.f5527a);
        arrayList.add(rVar);
        arrayList.addAll(list3);
        arrayList.add(C1445w.f5565D);
        arrayList.add(C1445w.f5600m);
        arrayList.add(C1445w.f5594g);
        arrayList.add(C1445w.f5596i);
        arrayList.add(C1445w.f5598k);
        AbstractC1378ae nVar = abVar == EnumC1375ab.DEFAULT ? C1445w.f5607t : new C1511n();
        arrayList.add(C1445w.m6313a(Long.TYPE, Long.class, nVar));
        arrayList.add(C1445w.m6313a(Double.TYPE, Double.class, new C1509l(this)));
        arrayList.add(C1445w.m6313a(Float.TYPE, Float.class, new C1510m(this)));
        arrayList.add(C1445w.f5611x);
        arrayList.add(C1445w.f5602o);
        arrayList.add(C1445w.f5604q);
        arrayList.add(C1445w.m6314a(AtomicLong.class, new C1512o(nVar).m6355a()));
        arrayList.add(C1445w.m6314a(AtomicLongArray.class, new C1513p(nVar).m6355a()));
        arrayList.add(C1445w.f5606s);
        arrayList.add(C1445w.f5613z);
        arrayList.add(C1445w.f5567F);
        arrayList.add(C1445w.f5569H);
        arrayList.add(C1445w.m6314a(BigDecimal.class, C1445w.f5563B));
        arrayList.add(C1445w.m6314a(BigInteger.class, C1445w.f5564C));
        arrayList.add(C1445w.f5571J);
        arrayList.add(C1445w.f5573L);
        arrayList.add(C1445w.f5577P);
        arrayList.add(C1445w.f5579R);
        arrayList.add(C1445w.f5584W);
        arrayList.add(C1445w.f5575N);
        arrayList.add(C1445w.f5591d);
        arrayList.add(C1422d.f5507a);
        arrayList.add(C1445w.f5582U);
        arrayList.add(C1440s.f5549a);
        arrayList.add(C1438q.f5547a);
        arrayList.add(C1445w.f5580S);
        arrayList.add(C1383a.f5485a);
        arrayList.add(C1445w.f5589b);
        arrayList.add(new C1420c(this.f5768u));
        arrayList.add(new C1429k(this.f5768u));
        this.f5769v = new C1424f(this.f5768u);
        arrayList.add(this.f5769v);
        arrayList.add(C1445w.f5587Z);
        arrayList.add(new C1434o(this.f5768u, jVar, rVar, this.f5769v));
        this.f5749a = Collections.unmodifiableList(arrayList);
    }

    /* renamed from: a */
    private C1498d m6180a(Writer writer) {
        if (this.f5755g) {
            writer.write(")]}'\n");
        }
        C1498d dVar = new C1498d(writer);
        if (this.f5757i) {
            dVar.m6201c("  ");
        }
        dVar.m6197d(this.f5753e);
        return dVar;
    }

    /* renamed from: a */
    private <T> T m6181a(C1495a aVar, Type type) {
        boolean q = aVar.m6225q();
        boolean z = true;
        aVar.m6246a(true);
        try {
            try {
                try {
                    try {
                        aVar.mo6236f();
                        z = false;
                        T a = m6182a((C1493a) C1493a.m6252a(type)).mo6175a(aVar);
                        aVar.m6246a(q);
                        return a;
                    } catch (EOFException e) {
                        if (z) {
                            aVar.m6246a(q);
                            return null;
                        }
                        throw new C1374aa(e);
                    }
                } catch (IOException e2) {
                    throw new C1374aa(e2);
                }
            } catch (IllegalStateException e3) {
                throw new C1374aa(e3);
            }
        } catch (Throwable th) {
            aVar.m6246a(q);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m6184a(double d) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            throw new IllegalArgumentException(d + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    /* renamed from: a */
    public final <T> AbstractC1378ae<T> m6183a(AbstractC1380ag agVar, C1493a<T> aVar) {
        AbstractC1380ag agVar2 = agVar;
        if (!this.f5749a.contains(agVar)) {
            agVar2 = this.f5769v;
        }
        boolean z = false;
        for (AbstractC1380ag agVar3 : this.f5749a) {
            if (z) {
                AbstractC1378ae<T> a = agVar3.mo6276a(this, aVar);
                if (a != null) {
                    return a;
                }
            } else if (agVar3 == agVar2) {
                z = true;
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize ".concat(String.valueOf(aVar)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final <T> AbstractC1378ae<T> m6182a(C1493a<T> aVar) {
        AbstractC1378ae aeVar;
        AbstractC1378ae<T> aeVar2 = (AbstractC1378ae<T>) this.f5767t.get(aVar == null ? f5748r : aVar);
        if (aeVar2 != null) {
            return aeVar2;
        }
        Map<C1493a<?>, C1508a<?>> map = this.f5766s.get();
        boolean z = false;
        Map<C1493a<?>, C1508a<?>> map2 = map;
        if (map == null) {
            map2 = new HashMap<>();
            this.f5766s.set(map2);
            z = true;
        }
        C1508a<?> aVar2 = map2.get(aVar);
        if (aVar2 != null) {
            return aVar2;
        }
        try {
            C1508a<?> aVar3 = new C1508a<>();
            map2.put(aVar, aVar3);
            Iterator<AbstractC1380ag> it = this.f5749a.iterator();
            do {
                if (it.hasNext()) {
                    aeVar = (AbstractC1378ae<T>) it.next().mo6276a(this, aVar);
                } else {
                    throw new IllegalArgumentException("GSON cannot handle ".concat(String.valueOf(aVar)));
                }
            } while (aeVar == null);
            aVar3.m6176a((AbstractC1378ae<?>) aeVar);
            this.f5767t.put(aVar, aeVar);
            return aeVar;
        } finally {
            map2.remove(aVar);
            if (z) {
                this.f5766s.remove();
            }
        }
    }

    /* renamed from: a */
    public final <T> AbstractC1378ae<T> m6179a(Class<T> cls) {
        return m6182a((C1493a) C1493a.m6253a((Class) cls));
    }

    /* renamed from: a */
    public final <T> T m6177a(String str, Class<T> cls) {
        Object obj;
        if (str == null) {
            obj = null;
        } else {
            C1495a aVar = new C1495a(new StringReader(str));
            aVar.m6246a(this.f5758j);
            Object a = m6181a(aVar, cls);
            obj = a;
            if (a != null) {
                try {
                    if (aVar.mo6236f() == EnumC1497c.END_DOCUMENT) {
                        obj = a;
                    } else {
                        throw new C1518u("JSON document was not fully consumed.");
                    }
                } catch (C1499e e) {
                    throw new C1374aa(e);
                } catch (IOException e2) {
                    throw new C1518u(e2);
                }
            }
        }
        return (T) C1450aa.m6309a((Class) cls).cast(obj);
    }

    /* renamed from: a */
    public final String m6178a(Object obj) {
        if (obj == null) {
            C1519v vVar = C1519v.f5776a;
            StringWriter stringWriter = new StringWriter();
            try {
                C1498d a = m6180a((Writer) stringWriter);
                boolean g = a.m6194g();
                a.m6203b(true);
                boolean h = a.m6193h();
                a.m6200c(this.f5756h);
                boolean i = a.m6192i();
                a.m6197d(this.f5753e);
                try {
                    C1451ab.m6305a(vVar, a);
                    a.m6203b(g);
                    a.m6200c(h);
                    a.m6197d(i);
                    return stringWriter.toString();
                } catch (IOException e) {
                    throw new C1518u(e);
                }
            } catch (IOException e2) {
                throw new C1518u(e2);
            }
        } else {
            Class<?> cls = obj.getClass();
            StringWriter stringWriter2 = new StringWriter();
            try {
                C1498d a2 = m6180a((Writer) stringWriter2);
                AbstractC1378ae a3 = m6182a((C1493a) C1493a.m6252a((Type) cls));
                boolean g2 = a2.m6194g();
                a2.m6203b(true);
                boolean h2 = a2.m6193h();
                a2.m6200c(this.f5756h);
                boolean i2 = a2.m6192i();
                a2.m6197d(this.f5753e);
                try {
                    a3.mo6174a(a2, obj);
                    a2.m6203b(g2);
                    a2.m6200c(h2);
                    a2.m6197d(i2);
                    return stringWriter2.toString();
                } catch (IOException e3) {
                    throw new C1518u(e3);
                }
            } catch (IOException e4) {
                throw new C1518u(e4);
            }
        }
    }

    public final String toString() {
        return "{serializeNulls:" + this.f5753e + ",factories:" + this.f5749a + ",instanceCreators:" + this.f5768u + "}";
    }
}
