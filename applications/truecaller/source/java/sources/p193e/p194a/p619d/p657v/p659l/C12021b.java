package p193e.p194a.p619d.p657v.p659l;

import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p193e.p194a.p619d.p657v.C11821a;
import p193e.p194a.p619d.p657v.p659l.AbstractC12022c;
import p193e.p194a.p619d.p657v.p659l.p660e.AbstractC12039b;
import p193e.p194a.p619d.p657v.p659l.p660e.AbstractC12042d;
import p193e.p194a.p619d.p657v.p659l.p660e.AbstractC12052g;
import p193e.p194a.p619d.p657v.p659l.p660e.AbstractC12055i;
import q3.a.i0;
import q3.a.p1;
import q3.a.x2.a1;
import q3.a.x2.i1;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.d.v.l.b */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/l/b.class */
public final class C12021b implements i0, AbstractC12042d, AbstractC12039b, AbstractC12052g, AbstractC12020a {

    /* renamed from: a */
    public final i1<AbstractC12022c> f35236a;

    /* renamed from: b */
    public final i1<C11821a> f35237b;

    /* renamed from: c */
    public final i0 f35238c;

    /* renamed from: d */
    public final int f35239d;

    /* renamed from: e */
    public final boolean f35240e;

    /* renamed from: f */
    public final a1<Boolean> f35241f;

    /* renamed from: g */
    public final /* synthetic */ AbstractC12042d f35242g;

    /* renamed from: h */
    public final /* synthetic */ AbstractC12039b f35243h;

    /* renamed from: i */
    public final /* synthetic */ AbstractC12052g f35244i;

    @Inject
    public C12021b(i0 i0Var, int i, boolean z, a1<Boolean> a1Var, C12035d c12035d, AbstractC12042d abstractC12042d, AbstractC12055i abstractC12055i, AbstractC12039b abstractC12039b, AbstractC12052g abstractC12052g) {
        l.e(i0Var, "callScope");
        l.e(a1Var, "reachedOngoing");
        l.e(c12035d, "stateMachine");
        l.e(abstractC12042d, "connect");
        l.e(abstractC12055i, "handleCallSetting");
        l.e(abstractC12039b, "cancelInvite");
        l.e(abstractC12052g, AnalyticsConstants.END);
        this.f35242g = abstractC12042d;
        this.f35243h = abstractC12039b;
        this.f35244i = abstractC12052g;
        this.f35238c = i0Var;
        this.f35239d = i;
        this.f35240e = z;
        this.f35241f = a1Var;
        this.f35236a = c12035d;
        this.f35237b = abstractC12055i.mo23674b();
    }

    @Override // p193e.p194a.p619d.p657v.p659l.AbstractC12020a
    /* renamed from: a */
    public boolean mo23703a() {
        return this.f35240e;
    }

    @Override // p193e.p194a.p619d.p657v.p659l.AbstractC12020a
    /* renamed from: b */
    public i1<C11821a> mo23702b() {
        return this.f35237b;
    }

    @Override // p193e.p194a.p619d.p657v.p659l.p660e.AbstractC12042d
    /* renamed from: c */
    public p1 mo23695c() {
        return this.f35242g.mo23695c();
    }

    @Override // p193e.p194a.p619d.p657v.p659l.AbstractC12020a
    /* renamed from: d */
    public int mo23701d() {
        return this.f35239d;
    }

    @Override // p193e.p194a.p619d.p657v.p659l.p660e.AbstractC12052g
    /* renamed from: e */
    public p1 mo23679e(AbstractC12022c.AbstractC12024b abstractC12024b) {
        l.e(abstractC12024b, "endState");
        return this.f35244i.mo23679e(abstractC12024b);
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj != null) {
            if (!(obj instanceof AbstractC12020a)) {
                z = false;
            } else {
                z = false;
                if (this.f35239d == ((AbstractC12020a) obj).mo23701d()) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // p193e.p194a.p619d.p657v.p659l.AbstractC12020a
    /* renamed from: f */
    public i1 mo23700f() {
        return this.f35241f;
    }

    @Override // p193e.p194a.p619d.p657v.p659l.p660e.AbstractC12039b
    /* renamed from: g */
    public p1 mo23699g() {
        return this.f35243h.mo23699g();
    }

    public f getCoroutineContext() {
        return this.f35238c.getCoroutineContext();
    }

    @Override // p193e.p194a.p619d.p657v.p659l.AbstractC12020a
    public i1<AbstractC12022c> getState() {
        return this.f35236a;
    }

    public int hashCode() {
        return this.f35239d;
    }
}
