package p193e.p194a.p619d.p657v.p658k;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.groupcall.action.LogCallFinishedEventImpl$collectMaxPeerSizeInRtc$2", f = "LogCallFinishedEvent.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.d.v.k.g0 */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/k/g0.class */
public final class C11914g0 extends i implements p<Integer, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ int f34990e;

    /* renamed from: f */
    public final /* synthetic */ C11918h0 f34991f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11914g0(C11918h0 c11918h0, d dVar) {
        super(2, dVar);
        this.f34991f = c11918h0;
    }

    /* renamed from: i */
    public final d<s> m23841i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C11914g0 c11914g0 = new C11914g0(this.f34991f, dVar);
        Number number = (Number) obj;
        number.intValue();
        c11914g0.f34990e = number.intValue();
        return c11914g0;
    }

    /* renamed from: k */
    public final Object m23840k(Object obj, Object obj2) {
        C11914g0 m23841i = m23841i(obj, (d) obj2);
        s sVar = s.a;
        m23841i.m23839s(sVar);
        return sVar;
    }

    /* renamed from: s */
    public final Object m23839s(Object obj) {
        C25225a.m3932a3(obj);
        int i = this.f34990e;
        C11918h0 c11918h0 = this.f34991f;
        synchronized (c11918h0) {
            if (i > c11918h0.f34999a) {
                c11918h0.f34999a = i;
            }
        }
        return s.a;
    }
}
