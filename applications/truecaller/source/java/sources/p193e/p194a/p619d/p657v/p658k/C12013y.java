package p193e.p194a.p619d.p657v.p658k;

import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i;
import q3.a.i0;
import q3.a.x2.u0;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.d.v.k.y */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/k/y.class */
public final class C12013y implements i0, AbstractC11997v {

    /* renamed from: a */
    public final AbstractC11598i f35226a;

    /* renamed from: b */
    public final AbstractC11966p f35227b;

    /* renamed from: c */
    public final /* synthetic */ i0 f35228c;

    @Inject
    public C12013y(i0 i0Var, AbstractC11598i abstractC11598i, AbstractC11966p abstractC11966p) {
        l.e(i0Var, "coroutineScope");
        l.e(abstractC11598i, "callInfoRepository");
        l.e(abstractC11966p, AnalyticsConstants.END);
        this.f35228c = i0Var;
        this.f35226a = abstractC11598i;
        this.f35227b = abstractC11966p;
        d.x2(new u0(new C12001w(abstractC11598i.mo24399g()), new C12005x(this, null)), this);
    }

    public f getCoroutineContext() {
        return this.f35228c.getCoroutineContext();
    }
}
