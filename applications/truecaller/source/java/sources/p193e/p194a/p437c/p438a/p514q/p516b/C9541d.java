package p193e.p194a.p437c.p438a.p514q.p516b;

import javax.inject.Inject;
import javax.inject.Named;
import p1727n3.p1868v.C27010k0;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.c.a.q.b.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/q/b/d.class */
public final class C9541d implements AbstractC9540c {

    /* renamed from: a */
    public final C9554f f28890a;

    /* renamed from: b */
    public final f f28891b;

    /* renamed from: c */
    public final C9538a f28892c;

    @Inject
    public C9541d(C9554f c9554f, @Named("IO") f fVar, C9538a c9538a) {
        l.e(c9554f, "updatesPageFlowUseCase");
        l.e(fVar, "ioContext");
        l.e(c9538a, "updatesBoundaryUseCase");
        this.f28890a = c9554f;
        this.f28891b = fVar;
        this.f28892c = c9538a;
    }

    @Override // p193e.p194a.p437c.p438a.p514q.p516b.AbstractC9540c
    /* renamed from: a */
    public C9539b mo27464a(C27010k0<Boolean> c27010k0) {
        l.e(c27010k0, "emptyStateLv");
        return new C9539b(this.f28890a, this.f28891b, this.f28892c, c27010k0);
    }
}
