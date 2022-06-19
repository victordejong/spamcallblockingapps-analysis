package p193e.p194a.p619d.p663x.p664q;

import com.truecaller.voip.manager.VoipMsg;
import io.agora.rtc.RtcEngine;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i;
import p193e.p194a.p619d.p637c0.p642z1.C11588a;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.manager.rtc.AgoraRtcManager$listenAndHandleTokenExpiration$2", f = "RtcManager.kt", l = {386}, m = "invokeSuspend")
/* renamed from: e.a.d.x.q.f */
/* loaded from: classes15-dex2jar.jar:e/a/d/x/q/f.class */
public final class C12234f extends i implements p<VoipMsg, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f35735e;

    /* renamed from: f */
    public int f35736f;

    /* renamed from: g */
    public final /* synthetic */ C12225d f35737g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12234f(C12225d c12225d, d dVar) {
        super(2, dVar);
        this.f35737g = c12225d;
    }

    /* renamed from: i */
    public final d<s> m23407i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C12234f c12234f = new C12234f(this.f35737g, dVar);
        c12234f.f35735e = obj;
        return c12234f;
    }

    /* renamed from: k */
    public final Object m23406k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C12234f c12234f = new C12234f(this.f35737g, dVar);
        c12234f.f35735e = obj;
        return c12234f.m23405s(s.a);
    }

    /* renamed from: s */
    public final Object m23405s(Object obj) {
        a aVar = a.a;
        int i = this.f35736f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            if (((VoipMsg) this.f35735e).getAction().ordinal() == 12) {
                AbstractC11598i abstractC11598i = this.f35737g.f35713h;
                this.f35736f = 1;
                Object mo24390p = abstractC11598i.mo24390p(true, this);
                obj = mo24390p;
                if (mo24390p == aVar) {
                    return aVar;
                }
            }
            return s.a;
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        String str = ((C11588a) obj).f33975b;
        RtcEngine m23424j = this.f35737g.m23424j();
        if (m23424j != null) {
            new Integer(m23424j.renewToken(str));
        }
        return s.a;
    }
}
