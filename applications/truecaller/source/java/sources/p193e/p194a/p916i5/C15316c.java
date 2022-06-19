package p193e.p194a.p916i5;

import android.content.Context;
import android.content.SharedPreferences;
import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1133t0.AbstractC19316a;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.i5.c */
/* loaded from: classes14-dex2jar.jar:e/a/i5/c.class */
public final class C15316c extends AbstractC19316a implements AbstractC15315b {

    /* renamed from: b */
    public final int f43583b = 3;

    /* renamed from: c */
    public final String f43584c = "theme_settings";

    public C15316c(Context context) {
        super(C22128a.m8731B0(context, AnalyticsConstants.CONTEXT, "theme_settings", 0, "context.getSharedPrefere…ME, Context.MODE_PRIVATE)"));
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: j3 */
    public int mo8946j3() {
        return this.f43583b;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: k3 */
    public String mo8945k3() {
        return this.f43584c;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: o3 */
    public void mo8944o3(int i, Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        if (i < 1) {
            SharedPreferences sharedPreferences = context.getSharedPreferences("tc.settings", 0);
            l.d(sharedPreferences, "oldSharedPreferences");
            AbstractC19316a.m13468m3(this, sharedPreferences, i.y0("currentTheme"), false, 4, null);
        }
        if (i < 2) {
            String str = "DEFAULT";
            String string = getString("currentTheme", "DEFAULT");
            int hashCode = string.hashCode();
            if (hashCode == -1922109952 ? string.equals("PITCH_BLACK") : !(hashCode == 2090870 ? !string.equals("DARK") : hashCode != 1694867598 || !string.equals("RAMADAN"))) {
                str = "DARK";
            }
            putString("currentTheme", str);
        }
        if (i < 3) {
            String str2 = "INHERIT_BRIGHT";
            String string2 = getString("currentTheme", "INHERIT_BRIGHT");
            int hashCode2 = string2.hashCode();
            if (hashCode2 == 325543646) {
                string2.equals("INHERIT_BRIGHT");
            } else if (hashCode2 != 719934554) {
                if (hashCode2 == 1967497978 && string2.equals("BRIGHT")) {
                    str2 = "BRIGHT";
                }
            } else if (string2.equals("INHERIT_DARK")) {
                str2 = "INHERIT_DARK";
            }
            putString("currentTheme", str2);
        }
    }
}
