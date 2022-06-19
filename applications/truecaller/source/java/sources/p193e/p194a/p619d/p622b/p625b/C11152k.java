package p193e.p194a.p619d.p622b.p625b;

import com.truecaller.voip.VoipState;
import com.truecaller.voip.VoipStateReason;
import com.truecaller.voip.manager.rtm.RtmMsg;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.legacy.incoming.LegacyIncomingVoipServicePresenter$listenForRtmMessages$1", f = "LegacyIncomingVoipServicePresenter.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.d.b.b.k */
/* loaded from: classes15-dex2jar.jar:e/a/d/b/b/k.class */
public final class C11152k extends i implements p<RtmMsg, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f32970e;

    /* renamed from: f */
    public final /* synthetic */ C11139b f32971f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11152k(C11139b c11139b, d dVar) {
        super(2, dVar);
        this.f32971f = c11139b;
    }

    /* renamed from: i */
    public final d<s> m25105i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C11152k c11152k = new C11152k(this.f32971f, dVar);
        c11152k.f32970e = obj;
        return c11152k;
    }

    /* renamed from: k */
    public final Object m25104k(Object obj, Object obj2) {
        s sVar = s.a;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C11139b c11139b = this.f32971f;
        dVar.getContext();
        C25225a.m3932a3(sVar);
        RtmMsg rtmMsg = (RtmMsg) obj;
        if (!(!l.a(rtmMsg.getSenderId(), c11139b.m25139Kj())) && rtmMsg.getAction().ordinal() == 6) {
            c11139b.m25134Pj(VoipState.ENDED, VoipStateReason.RECEIVED_END);
        }
        return sVar;
    }

    /* renamed from: s */
    public final Object m25103s(Object obj) {
        s sVar = s.a;
        C25225a.m3932a3(obj);
        RtmMsg rtmMsg = (RtmMsg) this.f32970e;
        if (!l.a(rtmMsg.getSenderId(), this.f32971f.m25139Kj())) {
            return sVar;
        }
        if (rtmMsg.getAction().ordinal() == 6) {
            this.f32971f.m25134Pj(VoipState.ENDED, VoipStateReason.RECEIVED_END);
        }
        return sVar;
    }
}
