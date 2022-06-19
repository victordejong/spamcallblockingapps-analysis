package p193e.p194a.p619d.p622b.p623a;

import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import com.truecaller.voip.VoipState;
import com.truecaller.voip.VoipStateReason;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.legacy.incall.LegacyVoipServicePresenter$scheduleConnectingEnd$1", f = "LegacyVoipServicePresenter.kt", l = {855}, m = "invokeSuspend")
/* renamed from: e.a.d.b.a.o */
/* loaded from: classes15-dex2jar.jar:e/a/d/b/a/o.class */
public final class C11117o extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f32872e;

    /* renamed from: f */
    public final /* synthetic */ C11087b f32873f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11117o(C11087b c11087b, d dVar) {
        super(2, dVar);
        this.f32873f = c11087b;
    }

    /* renamed from: i */
    public final d<s> m25184i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11117o(this.f32873f, dVar);
    }

    /* renamed from: k */
    public final Object m25183k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11117o(this.f32873f, dVar).m25182s(s.a);
    }

    /* renamed from: s */
    public final Object m25182s(Object obj) {
        a aVar = a.a;
        int i = this.f32872e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            this.f32872e = 1;
            if (s1.a.a.a.v0.f.d.D0((long) DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        int ordinal = this.f32873f.f32780i.f34449a.ordinal();
        VoipStateReason voipStateReason = (ordinal == 1 || ordinal == 2) ? VoipStateReason.WAKE_UP_TIMEOUT : ordinal != 3 ? null : VoipStateReason.INVITE_TIMEOUT;
        if (voipStateReason != null) {
            this.f32873f.m25264gk(VoipState.FAILED, voipStateReason);
        }
        return s.a;
    }
}
