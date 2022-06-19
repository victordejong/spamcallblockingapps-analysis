package p193e.p194a.p619d.p622b.p625b;

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
@e(c = "com.truecaller.voip.legacy.incoming.LegacyIncomingVoipServicePresenter$scheduleConnectingEnd$1", f = "LegacyIncomingVoipServicePresenter.kt", l = {398}, m = "invokeSuspend")
/* renamed from: e.a.d.b.b.q */
/* loaded from: classes15-dex2jar.jar:e/a/d/b/b/q.class */
public final class C11158q extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f32989e;

    /* renamed from: f */
    public final /* synthetic */ C11139b f32990f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11158q(C11139b c11139b, d dVar) {
        super(2, dVar);
        this.f32990f = c11139b;
    }

    /* renamed from: i */
    public final d<s> m25090i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11158q(this.f32990f, dVar);
    }

    /* renamed from: k */
    public final Object m25089k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11158q(this.f32990f, dVar).m25088s(s.a);
    }

    /* renamed from: s */
    public final Object m25088s(Object obj) {
        a aVar = a.a;
        int i = this.f32989e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            this.f32989e = 1;
            if (s1.a.a.a.v0.f.d.D0((long) DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        C11139b c11139b = this.f32990f;
        if (c11139b.f32939i.f34449a == VoipState.CONNECTING) {
            c11139b.m25134Pj(VoipState.FAILED, null);
        }
        return s.a;
    }
}
