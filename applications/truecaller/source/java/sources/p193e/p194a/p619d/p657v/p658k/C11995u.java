package p193e.p194a.p619d.p657v.p658k;

import javax.inject.Inject;
import p193e.p194a.p619d.p663x.p664q.AbstractC12236h;
import q3.a.i0;
import q3.a.x2.u0;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.d.v.k.u */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/k/u.class */
public final class C11995u implements AbstractC11976r, i0 {

    /* renamed from: a */
    public final i0 f35199a;

    /* renamed from: b */
    public final AbstractC12236h f35200b;

    /* renamed from: c */
    public final AbstractC11966p f35201c;

    @Inject
    public C11995u(i0 i0Var, AbstractC12236h abstractC12236h, AbstractC11966p abstractC11966p) {
        l.e(i0Var, "coroutineScope");
        l.e(abstractC12236h, "rtcManager");
        l.e(abstractC11966p, "endGroupCall");
        this.f35199a = i0Var;
        this.f35200b = abstractC12236h;
        this.f35201c = abstractC11966p;
        d.x2(new u0(new C11978s(abstractC12236h.mo23397e()), new C11991t(this, null)), this);
    }

    public f getCoroutineContext() {
        return this.f35199a.getCoroutineContext();
    }
}
