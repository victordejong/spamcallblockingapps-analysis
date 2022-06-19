package p193e.p194a.p619d.p657v.p658k;

import javax.inject.Inject;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i;
import p193e.p194a.p619d.p657v.C11839g;
import q3.a.b3.c;
import q3.a.i0;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.d.v.k.o */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/k/o.class */
public final class C11964o implements i0, AbstractC11940m {

    /* renamed from: a */
    public final c f35119a;

    /* renamed from: b */
    public final C11839g f35120b;

    /* renamed from: c */
    public final AbstractC11598i f35121c;

    /* renamed from: d */
    public final /* synthetic */ i0 f35122d;

    @Inject
    public C11964o(i0 i0Var, c cVar, C11839g c11839g, AbstractC11598i abstractC11598i) {
        l.e(i0Var, "coroutineScope");
        l.e(cVar, "remotePeersMutex");
        l.e(c11839g, "peers");
        l.e(abstractC11598i, "callInfoRepository");
        this.f35122d = i0Var;
        this.f35119a = cVar;
        this.f35120b = c11839g;
        this.f35121c = abstractC11598i;
        d.w2(this, (f) null, (j0) null, new C11942n(this, null), 3, (Object) null);
    }

    public f getCoroutineContext() {
        return this.f35122d.getCoroutineContext();
    }
}
