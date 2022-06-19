package p193e.p194a.p619d.p661w.p662j;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p619d.p627b0.C11161a;
import p193e.p194a.p619d.p637c0.C11513x0;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i;
import p193e.p194a.p619d.p637c0.p642z1.C11593e;
import q3.a.i0;
import q3.a.x2.f;
import q3.a.x2.u0;
import s1.a.a.a.v0.f.d;
import s1.k;
import s1.u.i;
import s1.u.u;
import s1.z.c.l;
/* renamed from: e.a.d.w.j.f */
/* loaded from: classes15-dex2jar.jar:e/a/d/w/j/f.class */
public final class C12146f implements i0, AbstractC12138c {

    /* renamed from: a */
    public final LinkedHashMap<Integer, k<Integer, C11593e>> f35493a = new LinkedHashMap<>();

    /* renamed from: b */
    public int f35494b;

    /* renamed from: c */
    public final AbstractC11598i f35495c;

    /* renamed from: d */
    public final /* synthetic */ i0 f35496d;

    @Inject
    public C12146f(i0 i0Var, AbstractC11598i abstractC11598i) {
        f m13539k;
        l.e(i0Var, "coroutineScope");
        l.e(abstractC11598i, "callInfoRepository");
        this.f35496d = i0Var;
        this.f35495c = abstractC11598i;
        m13539k = C19291g.m13539k(abstractC11598i.mo24405a(), (r5 & 1) != 0 ? u.a : null);
        d.x2(new u0(new C12140d(m13539k), new C12144e(this, null)), this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v33, types: [java.util.List] */
    @Override // p193e.p194a.p619d.p661w.p662j.AbstractC12138c
    /* renamed from: f */
    public List<C11513x0> mo23560f(C11161a c11161a) {
        boolean z;
        Collection<k<Integer, C11593e>> values = this.f35493a.values();
        l.d(values, "peerIdCallMap.values");
        List<k> S0 = i.S0(values);
        ArrayList arrayList = new ArrayList(C25225a.m4004J(S0, 10));
        for (k kVar : S0) {
            arrayList.add(new C11513x0(this.f35495c.mo24387s(((C11593e) kVar.b).f33990a), 0, ((Number) kVar.a).intValue()));
        }
        String str = "History is: " + arrayList;
        ArrayList arrayList2 = arrayList;
        if (c11161a != null) {
            if (!arrayList.isEmpty()) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    if (l.a(((C11513x0) it.next()).f33804a, c11161a.f32996d)) {
                        z = true;
                        break;
                    }
                }
            }
            z = false;
            arrayList2 = arrayList;
            if (!z) {
                List m3962T1 = C25225a.m3962T1(new C11513x0(c11161a.f32996d, 0, 0));
                ArrayList arrayList3 = new ArrayList(C25225a.m4004J(arrayList, 10));
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    C11513x0 c11513x0 = (C11513x0) it2.next();
                    arrayList3.add(new C11513x0(c11513x0.f33804a, c11513x0.f33805b, c11513x0.f33806c + 1));
                }
                arrayList2 = i.l0(m3962T1, arrayList3);
            }
        }
        return arrayList2;
    }

    public s1.w.f getCoroutineContext() {
        return this.f35496d.getCoroutineContext();
    }
}
