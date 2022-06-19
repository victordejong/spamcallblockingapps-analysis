package p193e.p194a.p619d.p663x;

import com.truecaller.voip.manager.VoipMsg;
import io.agora.rtc.RtcEngine;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
@e(c = "com.truecaller.voip.manager.AgoraVoipManager$listenAndHandleTokenExpiration$2", f = "VoipManager.kt", l = {432}, m = "invokeSuspend")
/* renamed from: e.a.d.x.f */
/* loaded from: classes15-dex2jar.jar:e/a/d/x/f.class */
public final class C12206f extends i implements p<VoipMsg, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f35660e;

    /* renamed from: f */
    public int f35661f;

    /* renamed from: g */
    public final /* synthetic */ C12195d f35662g;

    /* renamed from: h */
    public final /* synthetic */ l f35663h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12206f(C12195d c12195d, l lVar, d dVar) {
        super(2, dVar);
        this.f35662g = c12195d;
        this.f35663h = lVar;
    }

    /* renamed from: i */
    public final d<s> m23449i(Object obj, d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        C12206f c12206f = new C12206f(this.f35662g, this.f35663h, dVar);
        c12206f.f35660e = obj;
        return c12206f;
    }

    /* renamed from: k */
    public final Object m23448k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        s1.z.c.l.e(dVar, "completion");
        C12206f c12206f = new C12206f(this.f35662g, this.f35663h, dVar);
        c12206f.f35660e = obj;
        return c12206f.m23447s(s.a);
    }

    /* renamed from: s */
    public final Object m23447s(Object obj) {
        RtcEngine m23470b;
        a aVar = a.a;
        int i = this.f35661f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            if (((VoipMsg) this.f35660e).getAction().ordinal() == 12) {
                l lVar = this.f35663h;
                this.f35661f = 1;
                Object d = lVar.d(this);
                obj = d;
                if (d == aVar) {
                    return aVar;
                }
            }
            return s.a;
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        String str = (String) obj;
        if (str != null && (m23470b = this.f35662g.m23470b()) != null) {
            new Integer(m23470b.renewToken(str));
        }
        return s.a;
    }
}
