package p193e.p194a.p619d.p663x;

import com.truecaller.voip.manager.VoipMsg;
import com.truecaller.voip.manager.VoipMsgAction;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.manager.AgoraVoipManager$listenAndHandleTokenExpiration$1", f = "VoipManager.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.d.x.e */
/* loaded from: classes15-dex2jar.jar:e/a/d/x/e.class */
public final class C12205e extends i implements p<VoipMsg, d<? super Boolean>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f35659e;

    public C12205e(d dVar) {
        super(2, dVar);
    }

    /* renamed from: i */
    public final d<s> m23452i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C12205e c12205e = new C12205e(dVar);
        c12205e.f35659e = obj;
        return c12205e;
    }

    /* renamed from: k */
    public final Object m23451k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        dVar.getContext();
        C25225a.m3932a3(s.a);
        return Boolean.valueOf(((VoipMsg) obj).getAction() != VoipMsgAction.LEFT_CHANNEL);
    }

    /* renamed from: s */
    public final Object m23450s(Object obj) {
        C25225a.m3932a3(obj);
        return Boolean.valueOf(((VoipMsg) this.f35659e).getAction() != VoipMsgAction.LEFT_CHANNEL);
    }
}
