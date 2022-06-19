package p193e.p194a.p619d.p663x.p665r;

import com.truecaller.voip.manager.rtm.RtmMsg;
import com.truecaller.voip.manager.rtm.RtmMsgAction;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.manager.rtm.AgoraRtmManager$deserializeAndValidateMessage$1", f = "RtmManager.kt", l = {270}, m = "invokeSuspend")
/* renamed from: e.a.d.x.r.e */
/* loaded from: classes15-dex2jar.jar:e/a/d/x/r/e.class */
public final class C12255e extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f35803e;

    /* renamed from: f */
    public final /* synthetic */ C12256f f35804f;

    /* renamed from: g */
    public final /* synthetic */ String f35805g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12255e(C12256f c12256f, String str, d dVar) {
        super(2, dVar);
        this.f35804f = c12256f;
        this.f35805g = str;
    }

    /* renamed from: i */
    public final d<s> m23359i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12255e(this.f35804f, this.f35805g, dVar);
    }

    /* renamed from: k */
    public final Object m23358k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12255e(this.f35804f, this.f35805g, dVar).m23357s(s.a);
    }

    /* renamed from: s */
    public final Object m23357s(Object obj) {
        a aVar = a.a;
        int i = this.f35803e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C12256f c12256f = this.f35804f;
            String str = this.f35805g;
            RtmMsg rtmMsg = new RtmMsg(RtmMsgAction.UNSUPPORTED, "");
            this.f35803e = 1;
            if (c12256f.mo23319b(str, rtmMsg, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return s.a;
    }
}
