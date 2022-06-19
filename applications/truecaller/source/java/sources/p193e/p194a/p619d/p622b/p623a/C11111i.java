package p193e.p194a.p619d.p622b.p623a;

import com.truecaller.voip.VoipState;
import com.truecaller.voip.VoipStateReason;
import com.truecaller.voip.manager.rtm.RtmMsg;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.p1;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.legacy.incall.LegacyVoipServicePresenter$listenForRtmMessages$1", f = "LegacyVoipServicePresenter.kt", l = {491, 501}, m = "invokeSuspend")
/* renamed from: e.a.d.b.a.i */
/* loaded from: classes15-dex2jar.jar:e/a/d/b/a/i.class */
public final class C11111i extends i implements p<RtmMsg, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f32854e;

    /* renamed from: f */
    public int f32855f;

    /* renamed from: g */
    public final /* synthetic */ C11087b f32856g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11111i(C11087b c11087b, d dVar) {
        super(2, dVar);
        this.f32856g = c11087b;
    }

    /* renamed from: i */
    public final d<s> m25196i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C11111i c11111i = new C11111i(this.f32856g, dVar);
        c11111i.f32854e = obj;
        return c11111i;
    }

    /* renamed from: k */
    public final Object m25195k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C11111i c11111i = new C11111i(this.f32856g, dVar);
        c11111i.f32854e = obj;
        return c11111i.m25194s(s.a);
    }

    /* renamed from: s */
    public final Object m25194s(Object obj) {
        RtmMsg rtmMsg;
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f32855f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            RtmMsg rtmMsg2 = (RtmMsg) this.f32854e;
            p1 p1Var = this.f32856g.f32785n;
            rtmMsg = rtmMsg2;
            if (p1Var != null) {
                this.f32854e = rtmMsg2;
                this.f32855f = 1;
                rtmMsg = rtmMsg2;
                if (p1Var.k(this) == aVar) {
                    return aVar;
                }
            }
        } else if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C25225a.m3932a3(obj);
            return sVar;
        } else {
            C25225a.m3932a3(obj);
            rtmMsg = (RtmMsg) this.f32854e;
        }
        String str = "New rtm message:" + rtmMsg;
        if (!l.a(rtmMsg.getSenderId(), C11087b.m25287Jj(this.f32856g).f16283a)) {
            return sVar;
        }
        switch (rtmMsg.getAction().ordinal()) {
            case 2:
                this.f32856g.m25264gk(VoipState.REJECTED, null);
                break;
            case 3:
                this.f32856g.m25264gk(VoipState.BUSY, null);
                break;
            case 4:
                C11087b.m25285Lj(this.f32856g, true);
                break;
            case 5:
                C11087b.m25285Lj(this.f32856g, false);
                break;
            case 6:
                this.f32856g.m25264gk(VoipState.ENDED, VoipStateReason.RECEIVED_END);
                break;
            case 7:
                C11087b c11087b = this.f32856g;
                this.f32854e = null;
                this.f32855f = 2;
                if (c11087b.m25279Rj(this) == aVar) {
                    return aVar;
                }
                break;
            case 9:
                C11087b c11087b2 = this.f32856g;
                if (c11087b2.f32780i.f34449a == VoipState.INVITED) {
                    c11087b2.m25264gk(VoipState.RINGING, null);
                    break;
                }
                break;
        }
        return sVar;
    }
}
