package p193e.p194a.p619d.p661w.p662j;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11634o;
import p193e.p194a.p619d.p663x.p665r.AbstractC12261h;
import p193e.p194a.p619d.p663x.p665r.C12262i;
import p193e.p194a.p619d.p663x.p665r.C12282l;
import q3.a.i0;
import q3.a.w2.i;
import q3.a.x2.g1;
import q3.a.x2.t;
import q3.a.x2.u0;
import q3.a.x2.w0;
import q3.a.x2.z0;
import s1.a.a.a.v0.f.d;
import s1.k;
import s1.s;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.d.w.j.h0 */
/* loaded from: classes15-dex2jar.jar:e/a/d/w/j/h0.class */
public final class C12158h0 implements i0, AbstractC12132a0 {

    /* renamed from: a */
    public final z0<s> f35529a;

    /* renamed from: b */
    public final i0 f35530b;

    /* renamed from: c */
    public final AbstractC12261h f35531c;

    /* renamed from: d */
    public final AbstractC11598i f35532d;

    @Inject
    public C12158h0(i0 i0Var, AbstractC12261h abstractC12261h, AbstractC11598i abstractC11598i) {
        l.e(i0Var, "coroutineScope");
        l.e(abstractC12261h, "rtmChannel");
        l.e(abstractC11598i, "callInfoRepository");
        this.f35530b = i0Var;
        this.f35531c = abstractC12261h;
        this.f35532d = abstractC11598i;
        z0<s> a = g1.a(0, 0, (i) null, 7);
        this.f35529a = a;
        abstractC11598i.mo24393m(s1.u.i.d1(abstractC11598i.mo24388r(m23538a((Set) abstractC12261h.mo23345o().getValue(), (Set) abstractC12261h.mo23354a().getValue()).f35589a).values()));
        d.x2(new u0(new w0(new w0(abstractC12261h.mo23345o(), abstractC12261h.mo23354a(), new C12137b0(null)), new t(new C12145e0(null), a), new C12139c0(null)), new C12143d0(this, null)), this);
    }

    /* renamed from: a */
    public final C12186v m23538a(Set<C12282l> set, Set<C12262i> set2) {
        ArrayList<C12282l> arrayList = new ArrayList();
        for (Object obj : set) {
            if (!l.a(((C12282l) obj).f35910a, this.f35532d.mo24400f())) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(C25225a.m4004J(arrayList, 10));
        for (C12282l c12282l : arrayList) {
            arrayList2.add(C19291g.m13620I0(c12282l.f35910a));
        }
        ArrayList<C12262i> arrayList3 = new ArrayList();
        for (Object obj2 : set2) {
            if (!((C12262i) obj2).m23355a(this.f35532d.mo24400f())) {
                arrayList3.add(obj2);
            }
        }
        ArrayList arrayList4 = new ArrayList();
        for (C12262i c12262i : arrayList3) {
            Long m13579W = C19291g.m13579W(c12262i, this.f35532d.getCurrentTime(), set);
            k kVar = m13579W != null ? new k(c12262i.f35822a, m13579W) : null;
            if (kVar != null) {
                arrayList4.add(kVar);
            }
        }
        Map V0 = s1.u.i.V0(arrayList4);
        List<String> l0 = s1.u.i.l0(arrayList2, V0.keySet());
        ArrayList arrayList5 = new ArrayList(C25225a.m4004J(l0, 10));
        for (String str : l0) {
            arrayList5.add(new AbstractC11634o.C11638d(str));
        }
        return new C12186v(s1.u.i.d1(arrayList5), s1.u.i.d1(V0.values()));
    }

    public f getCoroutineContext() {
        return this.f35530b.getCoroutineContext();
    }
}
