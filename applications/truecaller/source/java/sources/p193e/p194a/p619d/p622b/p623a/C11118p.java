package p193e.p194a.p619d.p622b.p623a;

import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import com.truecaller.voip.VoipState;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.legacy.incall.LegacyVoipServicePresenter$scheduleRingingEnd$1", f = "LegacyVoipServicePresenter.kt", l = {866}, m = "invokeSuspend")
/* renamed from: e.a.d.b.a.p */
/* loaded from: classes15-dex2jar.jar:e/a/d/b/a/p.class */
public final class C11118p extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f32874e;

    /* renamed from: f */
    public final /* synthetic */ C11087b f32875f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11118p(C11087b c11087b, d dVar) {
        super(2, dVar);
        this.f32875f = c11087b;
    }

    /* renamed from: i */
    public final d<s> m25181i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11118p(this.f32875f, dVar);
    }

    /* renamed from: k */
    public final Object m25180k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11118p(this.f32875f, dVar).m25179s(s.a);
    }

    /* renamed from: s */
    public final Object m25179s(Object obj) {
        a aVar = a.a;
        int i = this.f32874e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            this.f32874e = 1;
            if (s1.a.a.a.v0.f.d.D0((long) DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        C11087b c11087b = this.f32875f;
        if (c11087b.f32780i.f34449a == VoipState.RINGING) {
            c11087b.m25264gk(VoipState.NO_ANSWER, null);
        }
        return s.a;
    }
}
