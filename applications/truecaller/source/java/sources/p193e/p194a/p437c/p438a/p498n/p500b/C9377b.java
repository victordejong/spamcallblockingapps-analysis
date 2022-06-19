package p193e.p194a.p437c.p438a.p498n.p500b;

import javax.inject.Inject;
import javax.inject.Named;
import p1727n3.p1868v.C27010k0;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.c.a.n.b.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/n/b/b.class */
public final class C9377b implements AbstractC9376a {

    /* renamed from: a */
    public final C9390e f28492a;

    /* renamed from: b */
    public final f f28493b;

    @Inject
    public C9377b(C9390e c9390e, @Named("IO") f fVar) {
        l.e(c9390e, "remindersPageFlowUseCase");
        l.e(fVar, "ioContext");
        this.f28492a = c9390e;
        this.f28493b = fVar;
    }

    @Override // p193e.p194a.p437c.p438a.p498n.p500b.AbstractC9376a
    /* renamed from: a */
    public C9389d mo27629a(C27010k0<Boolean> c27010k0) {
        return new C9389d(this.f28492a, this.f28493b, c27010k0);
    }
}
