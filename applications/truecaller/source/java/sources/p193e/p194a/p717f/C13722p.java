package p193e.p194a.p717f;

import android.content.Context;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import javax.inject.Provider;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import s1.z.c.l;
/* renamed from: e.a.f.p */
/* loaded from: classes10-dex2jar.jar:e/a/f/p.class */
public final class C13722p {

    /* renamed from: a */
    public final Context f39750a;

    /* renamed from: b */
    public final Provider<AbstractC8621z> f39751b;

    /* renamed from: c */
    public final Provider<AbstractC19462a> f39752c;

    @Inject
    public C13722p(Context context, Provider<AbstractC8621z> provider, Provider<AbstractC19462a> provider2) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(provider, "phoneNumberHelper");
        l.e(provider2, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f39750a = context;
        this.f39751b = provider;
        this.f39752c = provider2;
    }
}
