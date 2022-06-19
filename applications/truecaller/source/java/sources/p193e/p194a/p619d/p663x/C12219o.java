package p193e.p194a.p619d.p663x;

import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p194a.p619d.AbstractC11706g;
import p193e.p194a.p619d.p637c0.AbstractC11409g1;
import p193e.p194a.p619d.p637c0.AbstractC11421j1;
import p193e.p194a.p619d.p637c0.AbstractC11556y0;
import p193e.p194a.p682e.C12864a2;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.a.a.a.v0.f.d;
import s1.s;
import s1.w.f;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.d.x.o */
/* loaded from: classes15-dex2jar.jar:e/a/d/x/o.class */
public final class C12219o implements AbstractC12217m, i0 {

    /* renamed from: a */
    public volatile p1 f35680a;

    /* renamed from: b */
    public final f f35681b;

    /* renamed from: c */
    public final AbstractC11706g f35682c;

    /* renamed from: d */
    public final a<AbstractC11409g1> f35683d;

    /* renamed from: e */
    public final AbstractC11421j1 f35684e;

    /* renamed from: f */
    public final AbstractC11556y0 f35685f;

    /* renamed from: e.a.d.x.o$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/o$a.class */
    public static final class C12220a extends m implements l<Throwable, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12220a() {
            super(1);
            C12219o.this = r4;
        }

        /* renamed from: d */
        public Object m23435d(Object obj) {
            Throwable th = (Throwable) obj;
            C12219o.this.f35680a = null;
            return s.a;
        }
    }

    @Inject
    public C12219o(@Named("IO") f fVar, AbstractC11706g abstractC11706g, a<AbstractC11409g1> aVar, AbstractC11421j1 abstractC11421j1, AbstractC11556y0 abstractC11556y0) {
        s1.z.c.l.e(fVar, "asyncContext");
        s1.z.c.l.e(abstractC11706g, "voipConfig");
        s1.z.c.l.e(aVar, "voipSettings");
        s1.z.c.l.e(abstractC11421j1, "support");
        s1.z.c.l.e(abstractC11556y0, "voipIdProvider");
        this.f35681b = fVar;
        this.f35682c = abstractC11706g;
        this.f35683d = aVar;
        this.f35684e = abstractC11421j1;
        this.f35685f = abstractC11556y0;
    }

    @Override // p193e.p194a.p619d.p663x.AbstractC12217m
    /* renamed from: a */
    public void mo23437a() {
        ((AbstractC11409g1) this.f35683d.get()).remove("reportedVoipState");
    }

    @Override // p193e.p194a.p619d.p663x.AbstractC12217m
    /* renamed from: c */
    public void mo23436c() {
        synchronized (this) {
            if (this.f35680a != null) {
                p1 p1Var = this.f35680a;
                if (C12864a2.m22540r(p1Var != null ? Boolean.valueOf(p1Var.b()) : null)) {
                    return;
                }
            }
            this.f35680a = d.w2(this, (f) null, (j0) null, new C12218n(this, null), 3, (Object) null);
            p1 p1Var2 = this.f35680a;
            if (p1Var2 != null) {
                p1Var2.I(new C12220a());
            }
        }
    }

    public f getCoroutineContext() {
        return this.f35681b;
    }
}
