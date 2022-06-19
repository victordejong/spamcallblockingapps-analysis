package p193e.p194a.p682e;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p193e.p194a.p1011l.p1012a.C16604y;
import p193e.p194a.p1011l.p1013c.C16821l;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1114o5.C19029g0;
import p193e.p194a.p1410z4.AbstractC21881d;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import s1.z.c.l;
/* renamed from: e.a.e.q1 */
/* loaded from: classes15-dex2jar.jar:e/a/e/q1.class */
public final class C13305q1 {

    /* renamed from: a */
    public final String f38670a;

    /* renamed from: b */
    public final boolean f38671b;

    /* renamed from: c */
    public final boolean f38672c;

    /* renamed from: d */
    public final Context f38673d;

    /* renamed from: e */
    public final AbstractC8621z f38674e;

    /* renamed from: f */
    public final AbstractC17197v0 f38675f;

    /* renamed from: g */
    public final C16821l f38676g;

    /* renamed from: h */
    public final boolean f38677h;

    @Inject
    public C13305q1(Context context, AbstractC19022f0 abstractC19022f0, AbstractC8621z abstractC8621z, C16604y c16604y, AbstractC17197v0 abstractC17197v0, C16821l c16821l, boolean z, AbstractC21881d abstractC21881d) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC19022f0, "deviceManager");
        l.e(abstractC8621z, "phoneNumberHelper");
        l.e(c16604y, "premiumPurchaseSupportedCheck");
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(c16821l, "premiumUserTabUtils");
        l.e(abstractC21881d, "generalSettings");
        this.f38673d = context;
        this.f38674e = abstractC8621z;
        this.f38675f = abstractC17197v0;
        this.f38676g = c16821l;
        this.f38677h = z;
        this.f38670a = (z && abstractC21881d.getInt("default_tab_on_launch", 0) == 0) ? "calls" : "messages";
        boolean z2 = false;
        if (((C19029g0) abstractC19022f0).mo14245a()) {
            z2 = false;
            if (c16604y.m17198b()) {
                z2 = true;
            }
        }
        this.f38671b = z2;
        this.f38672c = !abstractC17197v0.mo16408H();
    }
}
