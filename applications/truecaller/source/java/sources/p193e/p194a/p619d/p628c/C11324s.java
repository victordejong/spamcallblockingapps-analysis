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
@e(c = "com.truecaller.voip.ui.VoipPresenter$maybeShowVoiceGroupToolTip$1", f = "VoipPresenter.kt", l = {163}, m = "invokeSuspend")
/* renamed from: e.a.d.c.s */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/s.class */
public final class C11324s extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f33316e;

    /* renamed from: f */
    public final /* synthetic */ C11325t f33317f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11324s(C11325t c11325t, d dVar) {
        super(2, dVar);
        this.f33317f = c11325t;
    }

    /* renamed from: i */
    public final d<s> m24831i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11324s(this.f33317f, dVar);
    }

    /* renamed from: k */
    public final Object m24830k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11324s(this.f33317f, dVar).m24829s(s.a);
    }

    /* renamed from: s */
    public final Object m24829s(Object obj) {
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f33316e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            if (this.f33317f.f33329o.getBoolean("voiceGroupToolTip")) {
                return sVar;
            }
            AbstractC11302l abstractC11302l = (AbstractC11302l) this.f33317f.f57683a;
            if (abstractC11302l != null) {
                abstractC11302l.mo24881Z2();
            }
            this.f33317f.f33329o.putBoolean("voiceGroupToolTip", true);
            this.f33316e = 1;
            if (s1.a.a.a.v0.f.d.D0(7000L, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        AbstractC11302l abstractC11302l2 = (AbstractC11302l) this.f33317f.f57683a;
        if (abstractC11302l2 != null) {
            abstractC11302l2.mo24872n9();
        }
        return sVar;
    }
}
