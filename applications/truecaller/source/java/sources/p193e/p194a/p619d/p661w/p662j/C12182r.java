package p193e.p194a.p619d.p661w.p662j;

import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i;
import q3.a.i0;
import q3.a.x2.u0;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.d.w.j.r */
/* loaded from: classes15-dex2jar.jar:e/a/d/w/j/r.class */
public final class C12182r implements i0, AbstractC12177o {

    /* renamed from: a */
    public final AbstractC11598i f35581a;

    /* renamed from: b */
    public final AbstractC12174m f35582b;

    /* renamed from: c */
    public final /* synthetic */ i0 f35583c;

    @Inject
    public C12182r(i0 i0Var, AbstractC11598i abstractC11598i, AbstractC12174m abstractC12174m) {
        l.e(i0Var, "coroutineScope");
        l.e(abstractC11598i, "callInfoRepository");
        l.e(abstractC12174m, AnalyticsConstants.END);
        this.f35583c = i0Var;
        this.f35581a = abstractC11598i;
        this.f35582b = abstractC12174m;
        d.x2(new u0(new C12178p(abstractC11598i.mo24399g()), new C12181q(this, null)), this);
    }

    public f getCoroutineContext() {
        return this.f35583c.getCoroutineContext();
    }
}
