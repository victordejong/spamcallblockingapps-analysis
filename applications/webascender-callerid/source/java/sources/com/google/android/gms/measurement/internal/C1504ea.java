package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.h2;
import com.google.android.gms.internal.measurement.ha;
import com.google.android.gms.internal.measurement.i2;
import com.google.android.gms.internal.measurement.j2;
import com.google.android.gms.internal.measurement.k2;
import com.google.android.gms.internal.measurement.n1;
import com.google.android.gms.internal.measurement.o1;
import com.google.android.gms.internal.measurement.p1;
import com.google.android.gms.internal.measurement.q1;
import f.e.a;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.measurement.internal.ea */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ea.class */
final class C1504ea {

    /* renamed from: a */
    private String f4232a;

    /* renamed from: b */
    private boolean f4233b;

    /* renamed from: c */
    private i2 f4234c;

    /* renamed from: d */
    private BitSet f4235d;

    /* renamed from: e */
    private BitSet f4236e;

    /* renamed from: f */
    private Map<Integer, Long> f4237f;

    /* renamed from: g */
    private Map<Integer, List<Long>> f4238g;

    /* renamed from: h */
    final /* synthetic */ ja f4239h;

    /* synthetic */ C1504ea(ja jaVar, String str, i2 i2Var, BitSet bitSet, BitSet bitSet2, Map map, Map map2, C1496da c1496da) {
        this.f4239h = jaVar;
        this.f4232a = str;
        this.f4235d = bitSet;
        this.f4236e = bitSet2;
        this.f4237f = map;
        this.f4238g = new a();
        for (Integer num : map2.keySet()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add((Long) map2.get(num));
            this.f4238g.put(num, arrayList);
        }
        this.f4233b = false;
        this.f4234c = i2Var;
    }

    /* synthetic */ C1504ea(ja jaVar, String str, C1496da c1496da) {
        this.f4239h = jaVar;
        this.f4232a = str;
        this.f4233b = true;
        this.f4235d = new BitSet();
        this.f4236e = new BitSet();
        this.f4237f = new a();
        this.f4238g = new a();
    }

    /* renamed from: a */
    final void m1674a(AbstractC1524ha abstractC1524ha) {
        int m1587a = abstractC1524ha.m1587a();
        Boolean bool = abstractC1524ha.f4319c;
        if (bool != null) {
            this.f4236e.set(m1587a, bool.booleanValue());
        }
        Boolean bool2 = abstractC1524ha.f4320d;
        if (bool2 != null) {
            this.f4235d.set(m1587a, bool2.booleanValue());
        }
        if (abstractC1524ha.f4321e != null) {
            Map<Integer, Long> map = this.f4237f;
            Integer valueOf = Integer.valueOf(m1587a);
            Long l = map.get(valueOf);
            long longValue = abstractC1524ha.f4321e.longValue() / 1000;
            if (l == null || longValue > l.longValue()) {
                this.f4237f.put(valueOf, Long.valueOf(longValue));
            }
        }
        if (abstractC1524ha.f4322f != null) {
            Map<Integer, List<Long>> map2 = this.f4238g;
            Integer valueOf2 = Integer.valueOf(m1587a);
            List<Long> list = map2.get(valueOf2);
            ArrayList arrayList = list;
            if (list == null) {
                arrayList = new ArrayList();
                this.f4238g.put(valueOf2, arrayList);
            }
            if (abstractC1524ha.m1586b()) {
                arrayList.clear();
            }
            ha.a();
            f z = ((l5) this.f4239h).a.z();
            String str = this.f4232a;
            C1630z2<Boolean> c1630z2 = C1470a3.f4094b0;
            if (z.w(str, c1630z2) && abstractC1524ha.m1585c()) {
                arrayList.clear();
            }
            ha.a();
            if (!((l5) this.f4239h).a.z().w(this.f4232a, c1630z2)) {
                arrayList.add(Long.valueOf(abstractC1524ha.f4322f.longValue() / 1000));
                return;
            }
            Long valueOf3 = Long.valueOf(abstractC1524ha.f4322f.longValue() / 1000);
            if (arrayList.contains(valueOf3)) {
                return;
            }
            arrayList.add(valueOf3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v50, types: [java.util.List] */
    /* renamed from: b */
    final o1 m1673b(int i) {
        ArrayList arrayList;
        ArrayList arrayList2;
        n1 D = o1.D();
        D.s(i);
        D.v(this.f4233b);
        i2 i2Var = this.f4234c;
        if (i2Var != null) {
            D.u(i2Var);
        }
        h2 G = i2.G();
        G.u(o9.D(this.f4235d));
        G.s(o9.D(this.f4236e));
        Map<Integer, Long> map = this.f4237f;
        if (map == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList(map.size());
            for (Integer num : this.f4237f.keySet()) {
                int intValue = num.intValue();
                Long l = this.f4237f.get(Integer.valueOf(intValue));
                if (l != null) {
                    p1 A = q1.A();
                    A.s(intValue);
                    A.t(l.longValue());
                    arrayList.add(A.m());
                }
            }
        }
        if (arrayList != null) {
            G.w(arrayList);
        }
        Map<Integer, List<Long>> map2 = this.f4238g;
        if (map2 == null) {
            arrayList2 = Collections.emptyList();
        } else {
            arrayList2 = new ArrayList(map2.size());
            for (Integer num2 : this.f4238g.keySet()) {
                j2 B = k2.B();
                B.s(num2.intValue());
                List<Long> list = this.f4238g.get(num2);
                if (list != null) {
                    Collections.sort(list);
                    B.t(list);
                }
                arrayList2.add(B.m());
            }
        }
        G.y(arrayList2);
        D.t(G);
        return D.m();
    }
}
