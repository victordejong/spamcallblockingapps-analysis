package com.google.p051a.p053b.p054a;

import com.google.p051a.AbstractC1378ae;
import com.google.p051a.AbstractC1380ag;
import com.google.p051a.AbstractC1517t;
import com.google.p051a.C1374aa;
import com.google.p051a.C1507k;
import com.google.p051a.C1515r;
import com.google.p051a.C1519v;
import com.google.p051a.C1520w;
import com.google.p051a.C1522y;
import com.google.p051a.p053b.AbstractC1481t;
import com.google.p051a.p053b.AbstractC1491z;
import com.google.p051a.p053b.C1451ab;
import com.google.p051a.p053b.C1457b;
import com.google.p051a.p053b.C1464c;
import com.google.p051a.p057c.C1493a;
import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.C1498d;
import com.google.p051a.p058d.EnumC1497c;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;
/* renamed from: com.google.a.b.a.k */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/k.class */
public final class C1429k implements AbstractC1380ag {

    /* renamed from: a */
    final boolean f5521a = false;

    /* renamed from: b */
    private final C1464c f5522b;

    /* renamed from: com.google.a.b.a.k$a */
    /* loaded from: classes-dex2jar.jar:com/google/a/b/a/k$a.class */
    private final class C1430a<K, V> extends AbstractC1378ae<Map<K, V>> {

        /* renamed from: b */
        private final AbstractC1378ae<K> f5524b;

        /* renamed from: c */
        private final AbstractC1378ae<V> f5525c;

        /* renamed from: d */
        private final AbstractC1491z<? extends Map<K, V>> f5526d;

        public C1430a(C1507k kVar, Type type, AbstractC1378ae<K> aeVar, Type type2, AbstractC1378ae<V> aeVar2, AbstractC1491z<? extends Map<K, V>> zVar) {
            this.f5524b = new C1444v(kVar, aeVar, type);
            this.f5525c = new C1444v(kVar, aeVar2, type2);
            this.f5526d = zVar;
        }

        @Override // com.google.p051a.AbstractC1378ae
        /* renamed from: a */
        public final /* synthetic */ Object mo6175a(C1495a aVar) {
            EnumC1497c f = aVar.mo6236f();
            if (f == EnumC1497c.NULL) {
                aVar.mo6232j();
                return null;
            }
            Map map = (Map) this.f5526d.mo6257a();
            if (f == EnumC1497c.BEGIN_ARRAY) {
                aVar.mo6250a();
                while (aVar.mo6237e()) {
                    aVar.mo6250a();
                    K a = this.f5524b.mo6175a(aVar);
                    if (map.put(a, this.f5525c.mo6175a(aVar)) == null) {
                        aVar.mo6245b();
                    } else {
                        throw new C1374aa("duplicate key: ".concat(String.valueOf(a)));
                    }
                }
                aVar.mo6245b();
            } else {
                aVar.mo6240c();
                while (aVar.mo6237e()) {
                    AbstractC1481t.f5672a.mo6216a(aVar);
                    K a2 = this.f5524b.mo6175a(aVar);
                    if (map.put(a2, this.f5525c.mo6175a(aVar)) != null) {
                        throw new C1374aa("duplicate key: ".concat(String.valueOf(a2)));
                    }
                }
                aVar.mo6238d();
            }
            return map;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.p051a.AbstractC1378ae
        /* renamed from: a */
        public final /* synthetic */ void mo6174a(C1498d dVar, Object obj) {
            String str;
            Map map = (Map) obj;
            if (map == null) {
                dVar.mo6195f();
            } else if (!C1429k.this.f5521a) {
                dVar.mo6199d();
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    dVar.mo6208a(String.valueOf(entry.getKey()));
                    this.f5525c.mo6174a(dVar, entry.getValue());
                }
                dVar.mo6196e();
            } else {
                ArrayList arrayList = new ArrayList(map.size());
                ArrayList arrayList2 = new ArrayList(map.size());
                boolean z = false;
                for (Map.Entry<K, V> entry2 : map.entrySet()) {
                    AbstractC1517t a = this.f5524b.m6354a((AbstractC1378ae<K>) entry2.getKey());
                    arrayList.add(a);
                    arrayList2.add(entry2.getValue());
                    z |= (a instanceof C1515r) || (a instanceof C1520w);
                }
                if (z) {
                    dVar.mo6206b();
                    int size = arrayList.size();
                    for (int i = 0; i < size; i++) {
                        dVar.mo6206b();
                        C1451ab.m6305a((AbstractC1517t) arrayList.get(i), dVar);
                        this.f5525c.mo6174a(dVar, arrayList2.get(i));
                        dVar.mo6202c();
                    }
                    dVar.mo6202c();
                    return;
                }
                dVar.mo6199d();
                int size2 = arrayList.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    AbstractC1517t tVar = (AbstractC1517t) arrayList.get(i2);
                    if (tVar instanceof C1522y) {
                        C1522y g = tVar.m6170g();
                        if (g.m6157i()) {
                            str = String.valueOf(g.mo6167a());
                        } else if (g.m6158h()) {
                            str = Boolean.toString(g.mo6159f());
                        } else if (g.m6156j()) {
                            str = g.mo6164b();
                        } else {
                            throw new AssertionError();
                        }
                    } else if (tVar instanceof C1519v) {
                        str = "null";
                    } else {
                        throw new AssertionError();
                    }
                    dVar.mo6208a(str);
                    this.f5525c.mo6174a(dVar, arrayList2.get(i2));
                }
                dVar.mo6196e();
            }
        }
    }

    public C1429k(C1464c cVar) {
        this.f5522b = cVar;
    }

    @Override // com.google.p051a.AbstractC1380ag
    /* renamed from: a */
    public final <T> AbstractC1378ae<T> mo6276a(C1507k kVar, C1493a<T> aVar) {
        Type b = aVar.m6251b();
        if (!Map.class.isAssignableFrom(aVar.m6254a())) {
            return null;
        }
        Type[] b2 = C1457b.m6293b(b, C1457b.m6294b(b));
        Type type = b2[0];
        return new C1430a(kVar, b2[0], (type == Boolean.TYPE || type == Boolean.class) ? C1445w.f5593f : kVar.m6182a((C1493a) C1493a.m6252a(type)), b2[1], kVar.m6182a((C1493a) C1493a.m6252a(b2[1])), this.f5522b.m6282a(aVar));
    }
}
