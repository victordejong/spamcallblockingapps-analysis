package p193e.p194a.p619d.p652q;

import android.telecom.DisconnectCause;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.callconnection.VoipCallConnectionImpl$endWhenIdle$3", f = "VoipCallConnection.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.d.q.n */
/* loaded from: classes15-dex2jar.jar:e/a/d/q/n.class */
public final class C11763n extends i implements p<Boolean, d<? super s>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C11775u f34563e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11763n(C11775u c11775u, d dVar) {
        super(2, dVar);
        this.f34563e = c11775u;
    }

    /* renamed from: i */
    public final d<s> m24037i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11763n(this.f34563e, dVar);
    }

    /* renamed from: k */
    public final Object m24036k(Object obj, Object obj2) {
        s sVar = s.a;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C11775u c11775u = this.f34563e;
        dVar.getContext();
        C25225a.m3932a3(sVar);
        int i = C11775u.f34586g;
        Objects.requireNonNull(c11775u);
        c11775u.setDisconnected(new DisconnectCause(4));
        a<s> aVar = c11775u.f34588b;
        if (aVar != null) {
            s sVar2 = (s) aVar.invoke();
        }
        c11775u.destroy();
        s1.a.a.a.v0.f.d.R(c11775u.f34589c, (CancellationException) null, 1, (Object) null);
        return sVar;
    }

    /* renamed from: s */
    public final Object m24035s(Object obj) {
        C25225a.m3932a3(obj);
        C11775u c11775u = this.f34563e;
        int i = C11775u.f34586g;
        Objects.requireNonNull(c11775u);
        c11775u.setDisconnected(new DisconnectCause(4));
        a<s> aVar = c11775u.f34588b;
        if (aVar != null) {
            s sVar = (s) aVar.invoke();
        }
        C11775u c11775u2 = this.f34563e;
        c11775u2.destroy();
        s1.a.a.a.v0.f.d.R(c11775u2.f34589c, (CancellationException) null, 1, (Object) null);
        return s.a;
    }
}
