package p193e.p194a.p614c3;

import android.content.Context;
import android.content.SharedPreferences;
import com.razorpay.AnalyticsConstants;
import p193e.p194a.p1129p5.p1133t0.AbstractC19316a;
import s1.f0.r;
import s1.f0.v;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.c3.e */
/* loaded from: classes6-dex2jar.jar:e/a/c3/e.class */
public final class C10931e extends AbstractC19316a implements AbstractC10930d {

    /* renamed from: b */
    public final int f32444b = 1;

    /* renamed from: c */
    public final String f32445c = "build_settings";

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10931e(SharedPreferences sharedPreferences) {
        super(sharedPreferences);
        l.e(sharedPreferences, "prefs");
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: j3 */
    public int mo8946j3() {
        return this.f32444b;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: k3 */
    public String mo8945k3() {
        return this.f32445c;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: o3 */
    public void mo8944o3(int i, Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        if (i < 1) {
            m13464p3(i.T(new SharedPreferences[]{context.getSharedPreferences("core_settings", 0), context.getSharedPreferences("tc.settings", 0)}), i.y0("BUILD_KEY"));
            String string = getString("BUILD_KEY");
            if (string == null) {
                return;
            }
            if (!v.B(string, "_NATIVE", false, 2)) {
                string = null;
            }
            if (string == null) {
                return;
            }
            putString("BUILD_KEY", r.t(string, "_NATIVE", "", false, 4));
        }
    }
}
