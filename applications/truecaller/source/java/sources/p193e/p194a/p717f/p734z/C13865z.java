package p193e.p194a.p717f.p734z;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1133t0.AbstractC19316a;
import s1.z.c.l;
/* renamed from: e.a.f.z.z */
/* loaded from: classes10-dex2jar.jar:e/a/f/z/z.class */
public final class C13865z extends AbstractC19316a implements AbstractC13864y {

    /* renamed from: b */
    public final int f40221b = 2;

    /* renamed from: c */
    public final String f40222c = "incallui_settings";

    @Inject
    public C13865z(Context context) {
        super(C22128a.m8731B0(context, AnalyticsConstants.CONTEXT, "incallui_settings", 0, "context.getSharedPrefere…ME, Context.MODE_PRIVATE)"));
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: j3 */
    public int mo8946j3() {
        return this.f40221b;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: k3 */
    public String mo8945k3() {
        return this.f40222c;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: o3 */
    public void mo8944o3(int i, Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        if (i >= 2 || getBoolean("incalluiEnabled")) {
            return;
        }
        remove("incalluiEnabled");
    }
}
