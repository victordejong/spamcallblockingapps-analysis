package p193e.p194a.p619d.p622b.p625b;

import com.truecaller.voip.VoipUser;
import com.truecaller.voip.manager.rtm.RtmMsg;
import com.truecaller.voip.manager.rtm.RtmMsgAction;
import com.truecaller.voip.util.VoipSearchDirection;
import io.agora.rtc.Constants;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p637c0.AbstractC11463q1;
import p193e.p194a.p619d.p637c0.C11467r1;
import p193e.p194a.p619d.p663x.p665r.AbstractC12285o;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.legacy.incoming.LegacyIncomingVoipServicePresenter$rejectAnotherIncomingCall$1", f = "LegacyIncomingVoipServicePresenter.kt", l = {Constants.ERR_WATERMARK_READ, 133}, m = "invokeSuspend")
/* renamed from: e.a.d.b.b.o */
/* loaded from: classes15-dex2jar.jar:e/a/d/b/b/o.class */
public final class C11156o extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f32981e;

    /* renamed from: f */
    public int f32982f;

    /* renamed from: g */
    public final /* synthetic */ C11139b f32983g;

    /* renamed from: h */
    public final /* synthetic */ String f32984h;

    /* renamed from: i */
    public final /* synthetic */ String f32985i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11156o(C11139b c11139b, String str, String str2, d dVar) {
        super(2, dVar);
        this.f32983g = c11139b;
        this.f32984h = str;
        this.f32985i = str2;
    }

    /* renamed from: i */
    public final d<s> m25096i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11156o(this.f32983g, this.f32984h, this.f32985i, dVar);
    }

    /* renamed from: k */
    public final Object m25095k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11156o(this.f32983g, this.f32984h, this.f32985i, dVar).m25094s(s.a);
    }

    /* renamed from: s */
    public final Object m25094s(Object obj) {
        VoipUser voipUser;
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f32982f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC11463q1 abstractC11463q1 = this.f32983g.f32944n;
            String str = this.f32984h;
            VoipSearchDirection voipSearchDirection = VoipSearchDirection.INCOMING;
            this.f32982f = 1;
            Object m24635a = ((C11467r1) abstractC11463q1).m24635a(str, voipSearchDirection, this);
            obj = m24635a;
            if (m24635a == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C25225a.m3932a3(obj);
            voipUser = (VoipUser) this.f32981e;
            this.f32983g.m25137Mj(voipUser);
            return sVar;
        } else {
            C25225a.m3932a3(obj);
        }
        voipUser = (VoipUser) obj;
        if (voipUser != null) {
            if (voipUser.f16287e) {
                this.f32983g.m25138Lj(voipUser.f16284b);
            } else {
                AbstractC12285o abstractC12285o = this.f32983g.f32943m;
                RtmMsg rtmMsg = new RtmMsg(RtmMsgAction.BUSY, this.f32985i);
                this.f32981e = voipUser;
                this.f32982f = 2;
                if (abstractC12285o.mo23320a(voipUser, rtmMsg, this) == aVar) {
                    return aVar;
                }
                this.f32983g.m25137Mj(voipUser);
            }
        }
        return sVar;
    }
}
