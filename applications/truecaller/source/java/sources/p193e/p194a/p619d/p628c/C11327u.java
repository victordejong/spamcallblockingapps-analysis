package p193e.p194a.p619d.p628c;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.ui.VoipPresenter$onAddPeersPositioned$1", f = "VoipPresenter.kt", l = {148}, m = "invokeSuspend")
/* renamed from: e.a.d.c.u */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/u.class */
public final class C11327u extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f33331e;

    /* renamed from: f */
    public final /* synthetic */ C11325t f33332f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11327u(C11325t c11325t, d dVar) {
        super(2, dVar);
        this.f33332f = c11325t;
    }

    /* renamed from: i */
    public final d<s> m24820i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11327u(this.f33332f, dVar);
    }

    /* renamed from: k */
    public final Object m24819k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11327u(this.f33332f, dVar).m24818s(s.a);
    }

    /* renamed from: s */
    public final Object m24818s(Object obj) {
        a aVar = a.a;
        int i = this.f33331e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            this.f33331e = 1;
            if (s1.a.a.a.v0.f.d.D0(10L, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        AbstractC11302l abstractC11302l = (AbstractC11302l) this.f33332f.f57683a;
        if (abstractC11302l != null) {
            abstractC11302l.mo24880a3();
        }
        C11325t c11325t = this.f33332f;
        boolean z = c11325t.f33329o.getBoolean("voiceGroupToolTip");
        boolean z2 = c11325t.f33329o.getBoolean("voiceGroupBadge");
        if (z && !z2) {
            AbstractC11302l abstractC11302l2 = (AbstractC11302l) c11325t.f57683a;
            if (abstractC11302l2 != null) {
                abstractC11302l2.mo24874h3();
            }
            c11325t.f33329o.putBoolean("voiceGroupBadge", true);
        }
        return s.a;
    }
}
