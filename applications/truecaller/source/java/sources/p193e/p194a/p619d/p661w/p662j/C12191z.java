package p193e.p194a.p619d.p661w.p662j;

import javax.inject.Inject;
import p193e.p194a.p619d.p637c0.AbstractC11438o;
import p193e.p194a.p619d.p637c0.p640x1.AbstractC11522e;
import p193e.p194a.p619d.p661w.C12130i;
import q3.a.i0;
import q3.a.j0;
import q3.a.x2.u0;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.d.w.j.z */
/* loaded from: classes15-dex2jar.jar:e/a/d/w/j/z.class */
public final class C12191z implements i0, AbstractC12187w {

    /* renamed from: a */
    public final C12130i f35595a;

    /* renamed from: b */
    public final AbstractC11522e f35596b;

    /* renamed from: c */
    public final AbstractC11438o f35597c;

    /* renamed from: d */
    public final /* synthetic */ i0 f35598d;

    @Inject
    public C12191z(i0 i0Var, C12130i c12130i, AbstractC11522e abstractC11522e, AbstractC11438o abstractC11438o) {
        l.e(i0Var, "coroutineScope");
        l.e(c12130i, "stateMachine");
        l.e(abstractC11522e, "audioUtil");
        l.e(abstractC11438o, "hapticFeedbackUtil");
        this.f35598d = i0Var;
        this.f35595a = c12130i;
        this.f35596b = abstractC11522e;
        this.f35597c = abstractC11438o;
        d.x2(new u0(abstractC11438o.mo24682f(), new C12190y(this, null)), this);
        d.w2(this, (f) null, (j0) null, new C12188x(this, null), 3, (Object) null);
    }

    public f getCoroutineContext() {
        return this.f35598d.getCoroutineContext();
    }

    @Override // p193e.p194a.p619d.p661w.p662j.AbstractC12187w
    /* renamed from: k */
    public void mo23481k() {
        this.f35596b.mo24555c();
        this.f35597c.mo24687a();
    }
}
