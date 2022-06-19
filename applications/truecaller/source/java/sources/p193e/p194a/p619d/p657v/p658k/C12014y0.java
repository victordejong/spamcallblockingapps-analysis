package p193e.p194a.p619d.p657v.p658k;

import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p619d.p657v.C11839g;
import q3.a.i0;
import q3.a.j0;
import q3.a.x2.a1;
import q3.a.x2.i1;
import q3.a.x2.k1;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.d.v.k.y0 */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/k/y0.class */
public final class C12014y0 implements i0, AbstractC12004w0 {

    /* renamed from: a */
    public final a1<Long> f35229a = k1.a((Object) null);

    /* renamed from: b */
    public final C11839g f35230b;

    /* renamed from: c */
    public final AbstractC19222c f35231c;

    /* renamed from: d */
    public final /* synthetic */ i0 f35232d;

    @Inject
    public C12014y0(i0 i0Var, C11839g c11839g, AbstractC19222c abstractC19222c) {
        l.e(i0Var, "coroutineScope");
        l.e(c11839g, "peers");
        l.e(abstractC19222c, "clock");
        this.f35232d = i0Var;
        this.f35230b = c11839g;
        this.f35231c = abstractC19222c;
        d.w2(this, (f) null, (j0) null, new C12006x0(this, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC12004w0
    /* renamed from: f */
    public i1 mo23704f() {
        return this.f35229a;
    }

    public f getCoroutineContext() {
        return this.f35232d.getCoroutineContext();
    }
}
