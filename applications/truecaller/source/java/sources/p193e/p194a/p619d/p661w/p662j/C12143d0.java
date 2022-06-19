package p193e.p194a.p619d.p661w.p662j;

import java.util.Map;
import java.util.Objects;
import java.util.Set;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11634o;
import p193e.p194a.p619d.p663x.p665r.C12262i;
import p193e.p194a.p619d.p663x.p665r.C12282l;
import q3.a.x2.h;
import q3.a.x2.u0;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.invitation.action.UpdatePeersImpl$listenRtmPeerChanges$3", f = "UpdatePeers.kt", l = {68}, m = "invokeSuspend")
/* renamed from: e.a.d.w.j.d0 */
/* loaded from: classes15-dex2jar.jar:e/a/d/w/j/d0.class */
public final class C12143d0 extends i implements p<k<? extends Set<? extends C12282l>, ? extends Set<? extends C12262i>>, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f35486e;

    /* renamed from: f */
    public int f35487f;

    /* renamed from: g */
    public final /* synthetic */ C12158h0 f35488g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12143d0(C12158h0 c12158h0, d dVar) {
        super(2, dVar);
        this.f35488g = c12158h0;
    }

    /* renamed from: i */
    public final d<s> m23569i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C12143d0 c12143d0 = new C12143d0(this.f35488g, dVar);
        c12143d0.f35486e = obj;
        return c12143d0;
    }

    /* renamed from: k */
    public final Object m23568k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C12143d0 c12143d0 = new C12143d0(this.f35488g, dVar);
        c12143d0.f35486e = obj;
        return c12143d0.m23567s(s.a);
    }

    /* renamed from: s */
    public final Object m23567s(Object obj) {
        C12186v c12186v;
        a aVar = a.a;
        int i = this.f35487f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            k kVar = (k) this.f35486e;
            Set<C12282l> set = (Set) kVar.a;
            Set<C12262i> set2 = (Set) kVar.b;
            String str = "Updating peers for members: " + set + " and attributes: " + set2;
            c12186v = this.f35488g.m23538a(set, set2);
            AbstractC11598i abstractC11598i = this.f35488g.f35532d;
            Set<AbstractC11634o> set3 = c12186v.f35589a;
            this.f35486e = c12186v;
            this.f35487f = 1;
            obj = abstractC11598i.mo24403c(set3, this);
            if (obj == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            c12186v = (C12186v) this.f35486e;
            C25225a.m3932a3(obj);
        }
        this.f35488g.f35532d.mo24393m(s1.u.i.d1(((Map) obj).values()));
        C12158h0 c12158h0 = this.f35488g;
        Set<Long> set4 = c12186v.f35590b;
        Objects.requireNonNull(c12158h0);
        s1.a.a.a.v0.f.d.x2(new u0(s1.a.a.a.v0.f.d.V0(new C12147f0(new h(set4)), 0, 1, (Object) null), new C12152g0(c12158h0, null)), c12158h0);
        return s.a;
    }
}
