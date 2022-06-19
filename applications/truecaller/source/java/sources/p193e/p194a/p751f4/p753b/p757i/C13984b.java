package p193e.p194a.p751f4.p753b.p757i;

import android.content.Context;
import android.content.SharedPreferences;
import com.razorpay.AnalyticsConstants;
import java.util.List;
import p193e.p194a.p1129p5.p1133t0.AbstractC19316a;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.f4.b.i.b */
/* loaded from: classes11-dex2jar.jar:e/a/f4/b/i/b.class */
public final class C13984b extends AbstractC19316a implements AbstractC13983a {

    /* renamed from: b */
    public final int f40430b = 1;

    /* renamed from: c */
    public final String f40431c = "network-advanced";

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13984b(SharedPreferences sharedPreferences) {
        super(sharedPreferences);
        l.e(sharedPreferences, "sharedPrefs");
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a, p193e.p194a.p372b0.p406e.p409r.AbstractC8438a
    public /* bridge */ /* synthetic */ Long getLong(String str, long j) {
        return Long.valueOf(getLong(str, j));
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: j3 */
    public int mo8946j3() {
        return this.f40430b;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: k3 */
    public String mo8945k3() {
        return this.f40431c;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: o3 */
    public void mo8944o3(int i, Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        List<? extends SharedPreferences> T = i.T(new SharedPreferences[]{context.getSharedPreferences("core_settings", 0), context.getSharedPreferences("tc.settings", 0)});
        if (i < 1) {
            m13464p3(T, i.z0(new String[]{"edgeLocationsExpiration", "edgeLocationsLastRequestTime"}));
        }
    }
}
