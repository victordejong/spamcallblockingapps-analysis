package p193e.p194a.p619d.p637c0;

import javax.inject.Inject;
import javax.inject.Named;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.d.c0.s0 */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/s0.class */
public final class C11475s0 implements AbstractC11462q0 {

    /* renamed from: a */
    public final f f33689a;

    /* renamed from: b */
    public final AbstractC11421j1 f33690b;

    /* renamed from: c */
    public final AbstractC11394e f33691c;

    @Inject
    public C11475s0(@Named("CPU") f fVar, AbstractC11421j1 abstractC11421j1, AbstractC11394e abstractC11394e) {
        l.e(fVar, "asyncContext");
        l.e(abstractC11421j1, "voipSupport");
        l.e(abstractC11394e, "callUserResolver");
        this.f33689a = fVar;
        this.f33690b = abstractC11421j1;
        this.f33691c = abstractC11394e;
    }
}
