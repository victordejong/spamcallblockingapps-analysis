package p193e.p194a.p717f.p734z;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1272u3.C20590f;
import p193e.p194a.p717f.AbstractC13706b;
import s1.z.c.l;
/* renamed from: e.a.f.z.p */
/* loaded from: classes10-dex2jar.jar:e/a/f/z/p.class */
public final class C13850p implements C20590f.AbstractC20591a {

    /* renamed from: a */
    public final String f40181a = "featureInCallUI";

    /* renamed from: b */
    public final Context f40182b;

    /* renamed from: c */
    public final a<AbstractC13706b> f40183c;

    @Inject
    public C13850p(Context context, a<AbstractC13706b> aVar) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(aVar, "incallUI");
        this.f40182b = context;
        this.f40183c = aVar;
    }

    @Override // p193e.p194a.p1272u3.C20590f.AbstractC20591a
    /* renamed from: Q1 */
    public void mo11006Q1() {
        ((AbstractC13706b) this.f40183c.get()).mo21252q(this.f40182b);
    }

    @Override // p193e.p194a.p1272u3.C20590f.AbstractC20591a
    /* renamed from: a */
    public void mo11005a() {
        ((AbstractC13706b) this.f40183c.get()).mo21252q(this.f40182b);
    }

    /* renamed from: b */
    public String m21001b() {
        return this.f40181a;
    }
}
