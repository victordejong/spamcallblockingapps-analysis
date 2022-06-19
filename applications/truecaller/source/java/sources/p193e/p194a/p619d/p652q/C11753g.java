package p193e.p194a.p619d.p652q;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p663x.C12221p;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.callconnection.LegacyVoipCallConnection$listenServiceSettings$1", f = "LegacyVoipCallConnection.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.d.q.g */
/* loaded from: classes15-dex2jar.jar:e/a/d/q/g.class */
public final class C11753g extends i implements p<C12221p, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f34548e;

    /* renamed from: f */
    public final /* synthetic */ C11746b f34549f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11753g(C11746b c11746b, d dVar) {
        super(2, dVar);
        this.f34549f = c11746b;
    }

    /* renamed from: i */
    public final d<s> m24050i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C11753g c11753g = new C11753g(this.f34549f, dVar);
        c11753g.f34548e = obj;
        return c11753g;
    }

    /* renamed from: k */
    public final Object m24049k(Object obj, Object obj2) {
        s sVar = s.a;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C11746b c11746b = this.f34549f;
        dVar.getContext();
        C25225a.m3932a3(sVar);
        C12221p c12221p = (C12221p) obj;
        String str = "New setting is received " + c12221p;
        boolean z = c12221p.f35689c;
        if (z) {
            c11746b.setOnHold();
        } else if (!z) {
            c11746b.setActive();
        }
        return sVar;
    }

    /* renamed from: s */
    public final Object m24048s(Object obj) {
        C25225a.m3932a3(obj);
        C12221p c12221p = (C12221p) this.f34548e;
        String str = "New setting is received " + c12221p;
        boolean z = c12221p.f35689c;
        if (z) {
            this.f34549f.setOnHold();
        } else if (!z) {
            this.f34549f.setActive();
        }
        return s.a;
    }
}
