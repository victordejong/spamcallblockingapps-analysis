package p193e.p194a.p619d.p637c0;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1133t0.AbstractC19316a;
import s1.z.c.l;
/* renamed from: e.a.d.c0.h1 */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/h1.class */
public final class C11412h1 extends AbstractC19316a implements AbstractC11409g1 {

    /* renamed from: b */
    public final int f33527b = 1;

    /* renamed from: c */
    public final String f33528c = "voip_settings";

    @Inject
    public C11412h1(Context context) {
        super(C22128a.m8731B0(context, AnalyticsConstants.CONTEXT, "voip_settings", 0, "context.getSharedPrefere…ME, Context.MODE_PRIVATE)"));
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: j3 */
    public int mo8946j3() {
        return this.f33527b;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: k3 */
    public String mo8945k3() {
        return this.f33528c;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: o3 */
    public void mo8944o3(int i, Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        if (i < 1) {
            remove("ownVoipId");
        }
    }
}
