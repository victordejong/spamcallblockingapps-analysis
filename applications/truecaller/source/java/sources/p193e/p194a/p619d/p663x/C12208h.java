package p193e.p194a.p619d.p663x;

import io.agora.rtc.RtcEngine;
import java.util.concurrent.CancellationException;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.manager.AgoraVoipManager$stop$1", f = "VoipManager.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.d.x.h */
/* loaded from: classes15-dex2jar.jar:e/a/d/x/h.class */
public final class C12208h extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f35669e;

    /* renamed from: f */
    public final /* synthetic */ C12195d f35670f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12208h(C12195d c12195d, d dVar) {
        super(2, dVar);
        this.f35670f = c12195d;
    }

    /* renamed from: i */
    public final d<s> m23443i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C12208h c12208h = new C12208h(this.f35670f, dVar);
        c12208h.f35669e = obj;
        return c12208h;
    }

    /* renamed from: k */
    public final Object m23442k(Object obj, Object obj2) {
        s sVar = s.a;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C12195d c12195d = this.f35670f;
        dVar.getContext();
        C25225a.m3932a3(sVar);
        i0 i0Var = (i0) obj;
        RtcEngine m23470b = c12195d.m23470b();
        if (m23470b != null) {
            new Integer(m23470b.leaveChannel());
        }
        RtcEngine.destroy();
        s1.a.a.a.v0.f.d.R(i0Var.getCoroutineContext(), (CancellationException) null, 1, (Object) null);
        return sVar;
    }

    /* renamed from: s */
    public final Object m23441s(Object obj) {
        C25225a.m3932a3(obj);
        i0 i0Var = (i0) this.f35669e;
        RtcEngine m23470b = this.f35670f.m23470b();
        if (m23470b != null) {
            new Integer(m23470b.leaveChannel());
        }
        RtcEngine.destroy();
        s1.a.a.a.v0.f.d.R(i0Var.getCoroutineContext(), (CancellationException) null, 1, (Object) null);
        return s.a;
    }
}
