package p193e.p194a.p619d.p622b.p623a;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.voip.VoipState;
import com.truecaller.voip.VoipStateReason;
import com.truecaller.voip.VoipUser;
import com.truecaller.voip.util.VoipAnalyticsCallDirection;
import com.truecaller.voip.util.VoipAnalyticsState;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p637c0.AbstractC11500u1;
import p193e.p194a.p619d.p637c0.C11395e0;
import p193e.p194a.p619d.p637c0.C11503v1;
import p193e.p194a.p619d.p637c0.C11509w1;
import p193e.p194a.p619d.p663x.C12195d;
import p193e.p194a.p619d.p663x.C12212j;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.legacy.incall.LegacyVoipServicePresenter$maybeSendWakeUpPushAsync$1", f = "LegacyVoipServicePresenter.kt", l = {413}, m = "invokeSuspend")
/* renamed from: e.a.d.b.a.m */
/* loaded from: classes15-dex2jar.jar:e/a/d/b/a/m.class */
public final class C11115m extends i implements p<i0, d<? super Boolean>, Object> {

    /* renamed from: e */
    public int f32861e;

    /* renamed from: f */
    public final /* synthetic */ C11087b f32862f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11115m(C11087b c11087b, d dVar) {
        super(2, dVar);
        this.f32862f = c11087b;
    }

    /* renamed from: i */
    public final d<s> m25190i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11115m(this.f32862f, dVar);
    }

    /* renamed from: k */
    public final Object m25189k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11115m(this.f32862f, dVar).m25188s(s.a);
    }

    /* renamed from: s */
    public final Object m25188s(Object obj) {
        a aVar = a.a;
        int i = this.f32861e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C11087b c11087b = this.f32862f;
            AbstractC11500u1 abstractC11500u1 = c11087b.f32772L;
            String str = C11087b.m25287Jj(c11087b).f16284b;
            String m25288Ij = C11087b.m25288Ij(this.f32862f);
            this.f32861e = 1;
            C11503v1 c11503v1 = (C11503v1) abstractC11500u1;
            Object a4 = s1.a.a.a.v0.f.d.a4(c11503v1.f33773a, new C11509w1(c11503v1, str, m25288Ij, null), this);
            obj = a4;
            if (a4 == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        if (booleanValue) {
            C11087b c11087b2 = this.f32862f;
            VoipAnalyticsCallDirection voipAnalyticsCallDirection = c11087b2.f32782k ? VoipAnalyticsCallDirection.INCOMING : VoipAnalyticsCallDirection.OUTGOING;
            String str2 = c11087b2.f32776e;
            if (str2 == null) {
                l.l(RemoteMessageConst.Notification.CHANNEL_ID);
                throw null;
            }
            String mo23324c = c11087b2.f32768D.mo23324c();
            C12212j c12212j = ((C12195d) c11087b2.f32792u).f35615c;
            Integer valueOf = c12212j != null ? Integer.valueOf(c12212j.f35674b) : null;
            VoipUser voipUser = c11087b2.f32777f;
            if (voipUser == null) {
                l.l("voipUser");
                throw null;
            }
            c11087b2.f32769E.mo24715d(new C11395e0(voipAnalyticsCallDirection, str2, mo23324c, valueOf, voipUser.f16283a, voipUser.f16290h, c11087b2.f32786o, false, 128), VoipAnalyticsState.WAKE_UP_SENT, null);
        } else {
            this.f32862f.m25264gk(VoipState.FAILED, VoipStateReason.INVITE_FAILED);
        }
        return Boolean.valueOf(booleanValue);
    }
}
