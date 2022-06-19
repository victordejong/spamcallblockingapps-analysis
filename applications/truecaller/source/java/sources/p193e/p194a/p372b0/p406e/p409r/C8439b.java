package p193e.p194a.p372b0.p406e.p409r;

import android.content.Context;
import android.content.SharedPreferences;
import com.razorpay.AnalyticsConstants;
import java.util.List;
import p193e.p194a.p1129p5.p1133t0.AbstractC19316a;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.b0.e.r.b */
/* loaded from: classes7-dex2jar.jar:e/a/b0/e/r/b.class */
public final class C8439b extends AbstractC19316a implements AbstractC8438a {

    /* renamed from: b */
    public final int f26142b = 7;

    /* renamed from: c */
    public final String f26143c = "account";

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8439b(SharedPreferences sharedPreferences) {
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
        return this.f26142b;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: k3 */
    public String mo8945k3() {
        return this.f26143c;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: o3 */
    public void mo8944o3(int i, Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        List<? extends SharedPreferences> T = i.T(new SharedPreferences[]{context.getSharedPreferences("core_settings", 0), context.getSharedPreferences("tc.settings", 0)});
        if (i < 2) {
            m13464p3(T, i.z0(new String[]{"accountAutobackupLogInfo", "accountFileWasBackedUpByAutobackup", "accountFileWasRestoredByAutobackup", "accountRestorationSource"}));
        }
        if (i < 3) {
            m13464p3(T, i.z0(new String[]{"installationId", "installationIdFetchTime", "installationIdTtl"}));
        }
        if (i < 4) {
            m13464p3(T, i.y0("profileCountryIso"));
        }
        if (i < 5) {
            m13464p3(T, i.y0("profileNumber"));
        }
        if (i < 6) {
            m13464p3(T, i.z0(new String[]{"key_region_1_timestamp", "featureRegion1", "featureRegion1_qa", "featureRegionC_qa", "region_c_accepted", "useUkLogo"}));
        }
        if (i < 7) {
            m13464p3(T, i.y0("networkDomain"));
        }
    }
}
