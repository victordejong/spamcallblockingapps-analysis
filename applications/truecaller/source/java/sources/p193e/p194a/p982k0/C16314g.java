package p193e.p194a.p982k0;

import android.content.Context;
import android.content.SharedPreferences;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1133t0.AbstractC19316a;
import s1.f0.r;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.k0.g */
/* loaded from: classes7-dex2jar.jar:e/a/k0/g.class */
public final class C16314g extends AbstractC19316a implements AbstractC16313f {

    /* renamed from: b */
    public final int f45929b = 3;

    /* renamed from: c */
    public final String f45930c = "call_recording_settings";

    /* renamed from: d */
    public final Context f45931d;

    @Inject
    public C16314g(Context context) {
        super(C22128a.m8731B0(context, AnalyticsConstants.CONTEXT, "call_recording_settings", 0, "context.getSharedPrefere…ME, Context.MODE_PRIVATE)"));
        this.f45931d = context;
        m13467n3(context);
    }

    @Override // p193e.p194a.p982k0.AbstractC16313f
    /* renamed from: C1 */
    public void mo17563C1() {
        remove("callRecordingFloatingButtonSetupDisplayCount");
    }

    @Override // p193e.p194a.p982k0.AbstractC16313f
    /* renamed from: D */
    public void mo17562D(int i) {
        putInt("callRecordingSpeakerToastCount", i);
    }

    @Override // p193e.p194a.p982k0.AbstractC16313f
    /* renamed from: G */
    public void mo17561G(int i) {
        putInt("callRecordingFloatingButtonSetupDisplayCount", i);
    }

    @Override // p193e.p194a.p982k0.AbstractC16313f
    /* renamed from: G0 */
    public int mo17560G0() {
        return getInt("callRecordingFloatingButtonSetupDisplayCount", 0);
    }

    @Override // p193e.p194a.p982k0.AbstractC16313f
    /* renamed from: I0 */
    public void mo17559I0(String str) {
        putString("callRecordingSource", str);
    }

    @Override // p193e.p194a.p982k0.AbstractC16313f
    /* renamed from: I2 */
    public void mo17558I2(boolean z) {
        putBoolean("qaEnableRecorderLeak", z);
    }

    @Override // p193e.p194a.p982k0.AbstractC16313f
    /* renamed from: J0 */
    public void mo17557J0(boolean z) {
        putBoolean("callRecordingSideMenuBadge", z);
    }

    @Override // p193e.p194a.p982k0.AbstractC16313f
    /* renamed from: J2 */
    public String mo17556J2() {
        return getString("callRecordingConfiguration");
    }

    @Override // p193e.p194a.p982k0.AbstractC16313f
    /* renamed from: K0 */
    public void mo17555K0(boolean z) {
        putBoolean("callRecordingNotification", z);
    }

    @Override // p193e.p194a.p982k0.AbstractC16313f
    /* renamed from: L */
    public boolean mo17554L() {
        return getBoolean("callRecordingNotification", true);
    }

    @Override // p193e.p194a.p982k0.AbstractC16313f
    /* renamed from: L0 */
    public boolean mo17553L0() {
        return getBoolean("qaEnableRecorderLeak", false);
    }

    @Override // p193e.p194a.p982k0.AbstractC16313f
    /* renamed from: M0 */
    public int mo17552M0() {
        return getInt("callRecordingSpeakerToastCount", 0);
    }

    @Override // p193e.p194a.p982k0.AbstractC16313f
    /* renamed from: U1 */
    public boolean mo17551U1() {
        return getBoolean("callRecordingEnabled", false);
    }

    @Override // p193e.p194a.p982k0.AbstractC16313f
    /* renamed from: V */
    public boolean mo17550V() {
        return getBoolean("callRecordingsMigrationPending", true);
    }

    @Override // p193e.p194a.p982k0.AbstractC16313f
    /* renamed from: X2 */
    public void mo17549X2(boolean z) {
        putBoolean("callRecordingsMigrationPending", z);
    }

    @Override // p193e.p194a.p982k0.AbstractC16313f
    /* renamed from: d6 */
    public void mo17548d6(boolean z) {
        putBoolean("callRecordingEnabled", z);
    }

    @Override // p193e.p194a.p982k0.AbstractC16313f
    /* renamed from: f3 */
    public void mo17547f3() {
        if (contains("callRecordingEnabled") && !getBoolean("callRecordingEnabled", true) && !mo17546j0() && !getBoolean("callRecordingResetForLegacy", false)) {
            remove("callRecordingEnabled");
        }
        putBoolean("callRecordingResetForLegacy", true);
    }

    @Override // p193e.p194a.p982k0.AbstractC16313f
    /* renamed from: j0 */
    public boolean mo17546j0() {
        return getBoolean("callRecordingNewTermsAccepted", false);
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: j3 */
    public int mo8946j3() {
        return this.f45929b;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: k3 */
    public String mo8945k3() {
        return this.f45930c;
    }

    @Override // p193e.p194a.p982k0.AbstractC16313f
    /* renamed from: l2 */
    public boolean mo17545l2() {
        return getBoolean("callRecordingSpeakerTip", true);
    }

    @Override // p193e.p194a.p982k0.AbstractC16313f
    /* renamed from: m4 */
    public void mo17544m4(boolean z) {
        putBoolean("callRecordingAutoRecordingEnabled", z);
    }

    @Override // p193e.p194a.p982k0.AbstractC16313f
    /* renamed from: o0 */
    public void mo17543o0(boolean z) {
        putBoolean("callRecordingSpeakerTip", z);
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: o3 */
    public void mo8944o3(int i, Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        boolean z = false;
        if (i < 1) {
            SharedPreferences sharedPreferences = context.getSharedPreferences("core_settings", 0);
            if (sharedPreferences.contains("callRecordingEnbaled")) {
                putBoolean("callRecordingEnabled", sharedPreferences.getBoolean("callRecordingEnbaled", false));
                sharedPreferences.edit().remove("callRecordingEnbaled").apply();
            }
            l.d(sharedPreferences, "corePreferences");
            AbstractC19316a.m13468m3(this, sharedPreferences, i.z0(new String[]{"callRecordingTermsAccepted", "callRecordingOnBoardDismissed", "callRecordingResetForLegacy", "callRecordingNotification", "callRecordingButtonCount", "callRecordingConfiguration", "callRecordingPostEnableShown", "callRecordingMode"}), false, 4, null);
            context.getSharedPreferences("tc.settings", 0).edit().remove("qaEnableRecorderLeak").apply();
        }
        if (i < 2) {
            String string = getString("callRecordingMode");
            if (string != null) {
                z = r.n(string, "AUTO", true);
            }
            putBoolean("callRecordingAutoRecordingEnabled", z);
            remove("callRecordingMode");
        }
        if (i < 3) {
            remove("callRecordingPostEnableShown");
        }
        if (i > 0) {
            putInt("callRecordingFloatingButtonSetupDisplayCount", 3);
        }
    }

    @Override // p193e.p194a.p982k0.AbstractC16313f
    /* renamed from: q0 */
    public void mo17542q0(boolean z) {
        putBoolean("callRecordingNewTermsAccepted", z);
    }

    @Override // p193e.p194a.p982k0.AbstractC16313f
    /* renamed from: r0 */
    public void mo17541r0(String str) {
        putString("callRecordingConfiguration", str);
    }

    @Override // p193e.p194a.p982k0.AbstractC16313f
    /* renamed from: r1 */
    public int mo17540r1() {
        return getInt("callRecordingButtonCount", 0);
    }

    @Override // p193e.p194a.p982k0.AbstractC16313f
    public void reset() {
        m13471c(this.f45931d);
    }

    @Override // p193e.p194a.p982k0.AbstractC16313f
    /* renamed from: u0 */
    public String mo17539u0() {
        return getString("callRecordingSource");
    }

    @Override // p193e.p194a.p982k0.AbstractC16313f
    /* renamed from: w2 */
    public boolean mo17538w2() {
        return getBoolean("callRecordingSideMenuBadge", true);
    }

    @Override // p193e.p194a.p982k0.AbstractC16313f
    /* renamed from: y1 */
    public boolean mo17537y1() {
        return getBoolean("callRecordingAutoRecordingEnabled", true);
    }

    @Override // p193e.p194a.p982k0.AbstractC16313f
    /* renamed from: z1 */
    public void mo17536z1(int i) {
        putInt("callRecordingButtonCount", i);
    }
}
