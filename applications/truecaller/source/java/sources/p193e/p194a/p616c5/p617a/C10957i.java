package p193e.p194a.p616c5.p617a;

import com.facebook.GraphRequest;
import p193e.p1538j.C23244l0;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
@e(c = "com.truecaller.social_login.facebook.FacebookSignInProxyImpl$executeGetProfileRequest$2", f = "FacebookSignInProxy.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.c5.a.i */
/* loaded from: classes13-dex2jar.jar:e/a/c5/a/i.class */
public final class C10957i extends i implements p<i0, d<? super C23244l0>, Object> {

    /* renamed from: e */
    public final /* synthetic */ c0 f32472e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10957i(c0 c0Var, d dVar) {
        super(2, dVar);
        this.f32472e = c0Var;
    }

    /* renamed from: i */
    public final d<s> m25473i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C10957i(this.f32472e, dVar);
    }

    /* renamed from: k */
    public final Object m25472k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        c0 c0Var = this.f32472e;
        dVar.getContext();
        C25225a.m3932a3(s.a);
        return ((GraphRequest) c0Var.a).m42017c();
    }

    /* renamed from: s */
    public final Object m25471s(Object obj) {
        C25225a.m3932a3(obj);
        return ((GraphRequest) this.f32472e.a).m42017c();
    }
}
