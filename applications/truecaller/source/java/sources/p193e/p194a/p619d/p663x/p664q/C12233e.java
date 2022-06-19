package p193e.p194a.p619d.p663x.p664q;

import com.truecaller.voip.manager.VoipMsg;
import com.truecaller.voip.manager.VoipMsgAction;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.manager.rtc.AgoraRtcManager$listenAndHandleTokenExpiration$1", f = "RtcManager.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.d.x.q.e */
/* loaded from: classes15-dex2jar.jar:e/a/d/x/q/e.class */
public final class C12233e extends i implements p<VoipMsg, d<? super Boolean>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f35734e;

    public C12233e(d dVar) {
        super(2, dVar);
    }

    /* renamed from: i */
    public final d<s> m23410i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C12233e c12233e = new C12233e(dVar);
        c12233e.f35734e = obj;
        return c12233e;
    }

    /* renamed from: k */
    public final Object m23409k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        dVar.getContext();
        C25225a.m3932a3(s.a);
        return Boolean.valueOf(((VoipMsg) obj).getAction() != VoipMsgAction.LEFT_CHANNEL);
    }

    /* renamed from: s */
    public final Object m23408s(Object obj) {
        C25225a.m3932a3(obj);
        return Boolean.valueOf(((VoipMsg) this.f35734e).getAction() != VoipMsgAction.LEFT_CHANNEL);
    }
}
