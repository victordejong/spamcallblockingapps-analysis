package p193e.p194a.p717f.p718a.p721b;

import com.truecaller.incallui.service.CallState;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p717f.p718a.C13642g;
import p193e.p194a.p717f.p731w.AbstractC13738f;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.incallui.callui.ongoing.OngoingCallPresenter$listenToCallersInfoChannel$1", f = "OngoingCallPresenter.kt", l = {570}, m = "invokeSuspend")
/* renamed from: e.a.f.a.b.m */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/b/m.class */
public final class C13602m extends i implements p<AbstractC13738f, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f39434e;

    /* renamed from: f */
    public int f39435f;

    /* renamed from: g */
    public final /* synthetic */ C13590j f39436g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13602m(C13590j c13590j, d dVar) {
        super(2, dVar);
        this.f39436g = c13590j;
    }

    /* renamed from: i */
    public final d<s> m21515i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C13602m c13602m = new C13602m(this.f39436g, dVar);
        c13602m.f39434e = obj;
        return c13602m;
    }

    /* renamed from: k */
    public final Object m21514k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C13602m c13602m = new C13602m(this.f39436g, dVar);
        c13602m.f39434e = obj;
        return c13602m.m21513s(s.a);
    }

    /* renamed from: s */
    public final Object m21513s(Object obj) {
        Object obj2;
        a aVar = a.a;
        int i = this.f39435f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            obj2 = (AbstractC13738f) this.f39434e;
            C13590j.m21549Pj(this.f39436g);
            if (obj2 instanceof AbstractC13738f.C13741c) {
                C13590j c13590j = this.f39436g;
                c13590j.m21536ck();
                CallState callState = (CallState) C19291g.m13593R0(c13590j.f39376p.mo21199h());
                if (callState != null && callState.ordinal() == 4) {
                    AbstractC13589i abstractC13589i = (AbstractC13589i) c13590j.f57683a;
                    if (abstractC13589i != null) {
                        abstractC13589i.mo21413r1();
                    }
                } else {
                    AbstractC13589i abstractC13589i2 = (AbstractC13589i) c13590j.f57683a;
                    if (abstractC13589i2 != null) {
                        abstractC13589i2.mo21432Oz();
                    }
                }
            } else if (obj2 instanceof AbstractC13738f.C13740b) {
                C13590j c13590j2 = this.f39436g;
                C13642g c13642g = ((AbstractC13738f.C13740b) obj2).f39794a;
                this.f39434e = obj2;
                this.f39435f = 1;
                if (c13590j2.m21535dk(c13642g, this) == aVar) {
                    return aVar;
                }
            } else if (obj2 instanceof AbstractC13738f.C13739a) {
                this.f39436g.m21536ck();
                this.f39436g.m21545Tj();
                this.f39436g.m21534ek();
            }
            return s.a;
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
            obj2 = (AbstractC13738f) this.f39434e;
        }
        this.f39436g.f39381u.mo21030j(((AbstractC13738f.C13740b) obj2).f39794a, "OngoingInCallUI");
        return s.a;
    }
}
