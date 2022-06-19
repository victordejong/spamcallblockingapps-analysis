package p193e.p194a.p372b0.p412h;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1133t0.AbstractC19316a;
import s1.z.c.l;
/* renamed from: e.a.b0.h.c */
/* loaded from: classes7-dex2jar.jar:e/a/b0/h/c.class */
public final class C8447c extends AbstractC19316a {

    /* renamed from: b */
    public final int f26151b = 1;

    /* renamed from: c */
    public final String f26152c = "tc_abtest_settings";

    @Inject
    public C8447c(Context context) {
        super(C22128a.m8731B0(context, AnalyticsConstants.CONTEXT, "tc_abtest_settings", 0, "context.getSharedPrefere…ME, Context.MODE_PRIVATE)"));
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: j3 */
    public int mo8946j3() {
        return this.f26151b;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: k3 */
    public String mo8945k3() {
        return this.f26152c;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: o3 */
    public void mo8944o3(int i, Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
    }
}
