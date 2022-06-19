package p193e.p194a.p437c.p531c0;

import android.content.SharedPreferences;
import android.support.p001v4.media.session.MediaSessionCompat;
import androidx.lifecycle.LiveData;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.utils.BannerState;
import com.truecaller.insights.utils.HideTrxTempState;
import java.util.Date;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import p1727n3.p1746c.p1747a.p1750c.AbstractC25640a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p578p.C10480a;
import s1.f0.v;
import s1.u.i;
import s1.u.u;
import s1.z.c.l;
/* renamed from: e.a.c.c0.p */
/* loaded from: classes10-dex2jar.jar:e/a/c/c0/p.class */
public final class C10029p implements AbstractC10028o {

    /* renamed from: a */
    public final SharedPreferences f29860a;

    /* renamed from: e.a.c.c0.p$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c0/p$a.class */
    public static final class C10030a<I, O> implements AbstractC25640a<String, HideTrxTempState> {

        /* renamed from: a */
        public static final C10030a f29861a = new C10030a();

        @Override // p1727n3.p1746c.p1747a.p1750c.AbstractC25640a
        public HideTrxTempState apply(String str) {
            String str2 = str;
            if (str2 == null) {
                str2 = HideTrxTempState.DEFAULT.name();
            }
            return HideTrxTempState.valueOf(str2);
        }
    }

    public C10029p(SharedPreferences sharedPreferences) {
        l.e(sharedPreferences, "mPrefs");
        this.f29860a = sharedPreferences;
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: A */
    public String mo26887A() {
        return this.f29860a.getString("insightsLastRerunAppVersion", null);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: A0 */
    public void mo26886A0(boolean z) {
        C22128a.m8577r0(this.f29860a, "isEditTagToolTipShown", z);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: B */
    public boolean mo26885B() {
        return this.f29860a.getBoolean("blackListForNotifTarget", false);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: B0 */
    public boolean mo26884B0() {
        return this.f29860a.getBoolean("areRemindersEnabled", true);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: C */
    public void mo26883C(boolean z) {
        C22128a.m8577r0(this.f29860a, "isHideTrxTipShown", z);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: C0 */
    public boolean mo26882C0() {
        return this.f29860a.getBoolean("isHideTrxTourOver", false);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: D */
    public HideTrxTempState mo26881D() {
        String string = this.f29860a.getString("hideTrxTemp", null);
        if (string == null) {
            string = HideTrxTempState.DEFAULT.name();
        }
        return HideTrxTempState.valueOf(string);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: D0 */
    public boolean mo26880D0() {
        return this.f29860a.getBoolean("isDebugLogEnabled", false);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: E */
    public int mo26879E() {
        return this.f29860a.getInt("insightsReminderTime", 0);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: E0 */
    public void mo26878E0(boolean z) {
        C22128a.m8577r0(this.f29860a, "areRemindersEnabled", z);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: F */
    public void mo26877F() {
        this.f29860a.edit().putStringSet("pendingMarkAsReadMessages", u.a).apply();
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: F0 */
    public void mo26876F0(boolean z) {
        C22128a.m8577r0(this.f29860a, "isInsightsLocalSenderFilterEnabled", z);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: G */
    public long mo26875G() {
        long j;
        synchronized (this) {
            j = this.f29860a.getLong("syntheticRecordLastId", -2L);
            this.f29860a.edit().putLong("syntheticRecordLastId", j - 1).apply();
        }
        return j;
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: H */
    public void mo26874H(String str) {
        l.e(str, "value");
        C22128a.m8585p0(this.f29860a, "insightsRoWFeatureFlag", str);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: I */
    public void mo26873I(boolean z) {
        C22128a.m8577r0(this.f29860a, "isInsightsLocalMalanaSeedEnabled", z);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: J */
    public LiveData<Boolean> mo26872J() {
        return C10480a.m26067H(this.f29860a, "isImportantTabOutDated", false);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: K */
    public int mo26871K() {
        return this.f29860a.getInt("smartSmsBannerShownTime", 0);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: L */
    public void mo26870L(String str) {
        l.e(str, "value");
        C22128a.m8585p0(this.f29860a, "insightsLastRerunAppVersion", str);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: M */
    public void mo26869M(HideTrxTempState hideTrxTempState) {
        l.e(hideTrxTempState, "value");
        this.f29860a.edit().putString("hideTrxTemp", hideTrxTempState.name()).apply();
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: N */
    public LiveData<Integer> mo26868N() {
        SharedPreferences sharedPreferences = this.f29860a;
        l.e(sharedPreferences, "$this$intLiveData");
        l.e("smartSmsBannerShownTime", AnalyticsConstants.KEY);
        return new C10038w(sharedPreferences, "smartSmsBannerShownTime", 0);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: O */
    public boolean mo26867O() {
        return this.f29860a.getBoolean("insightsFeedbackConsent", false);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: P */
    public void mo26866P(Date date) {
        l.e(date, "date");
        this.f29860a.edit().putLong("lastSmartCardShownCountDate", date.getTime()).apply();
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: Q */
    public boolean mo26865Q() {
        return this.f29860a.getBoolean("isCategorizerUpdatePopUpSeen", true);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: R */
    public void mo26864R(boolean z) {
        C22128a.m8577r0(this.f29860a, "smartFeedOnboardingShown", z);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: S */
    public boolean mo26863S() {
        return this.f29860a.getBoolean("insightsImportantTabSeen", false);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: T */
    public void mo26862T(String str, long j) {
        l.e(str, "brandId");
        SharedPreferences.Editor edit = this.f29860a.edit();
        edit.putLong("lastBrandQueryRunTs_" + str, j).apply();
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: U */
    public void mo26861U(int i) {
        C22128a.m8593n0(this.f29860a, "totalSmartCardsShown", i);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: V */
    public int mo26860V() {
        return this.f29860a.getInt("insightsForceResyncAlphaVersion", 0);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: W */
    public int mo26859W() {
        return this.f29860a.getInt("insightsForceResyncVersion", 0);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: X */
    public void mo26858X(boolean z) {
        C22128a.m8577r0(this.f29860a, "insightsFinancePageSeen", z);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: Y */
    public LiveData<HideTrxTempState> mo26857Y() {
        SharedPreferences sharedPreferences = this.f29860a;
        String name = HideTrxTempState.DEFAULT.name();
        l.e(sharedPreferences, "$this$stringLiveData");
        l.e("hideTrxTemp", AnalyticsConstants.KEY);
        l.e(name, "defValue");
        LiveData<HideTrxTempState> m43275Q0 = MediaSessionCompat.m43275Q0(new C10042z(sharedPreferences, "hideTrxTemp", name), C10030a.f29861a);
        l.d(m43275Q0, "Transformations.map(mPre…e.DEFAULT.name)\n        }");
        return m43275Q0;
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: Z */
    public void mo26856Z(boolean z) {
        C22128a.m8577r0(this.f29860a, "insightsImportantTabSeen", z);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: a */
    public boolean mo26855a() {
        return this.f29860a.getBoolean("pdoViewerEnabled", false);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: a0 */
    public boolean mo26854a0() {
        return this.f29860a.getBoolean("isInsightsLocalSenderFilterEnabled", false);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: b */
    public void mo26853b(int i) {
        C22128a.m8593n0(this.f29860a, "smartSmsBannerShownTime", i);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: b0 */
    public void mo26852b0(boolean z) {
        C22128a.m8577r0(this.f29860a, "insightsUpdatesPageSeen", z);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: c */
    public void mo26851c(int i) {
        C22128a.m8593n0(this.f29860a, "insightsReSyncStatus", i);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: c0 */
    public BannerState mo26850c0() {
        SharedPreferences sharedPreferences = this.f29860a;
        BannerState bannerState = BannerState.NOT_SEEN;
        String string = sharedPreferences.getString("impModelBannerState", bannerState.name());
        if (string == null) {
            string = bannerState.name();
        }
        return BannerState.valueOf(string);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: d */
    public LiveData<Boolean> mo26849d() {
        return C10480a.m26067H(this.f29860a, "isFinanceTrxHidden", false);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: d0 */
    public void mo26848d0() {
        this.f29860a.edit().putInt("smartSmsBannerShownTime", this.f29860a.getInt("smartSmsBannerShownTime", 0) + 1).apply();
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: e */
    public void mo26847e(int i) {
        C22128a.m8593n0(this.f29860a, "insightsForceResyncAlphaVersion", i);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: e0 */
    public void mo26846e0(String str) {
        l.e(str, "value");
        Set<String> stringSet = this.f29860a.getStringSet("pendingMarkAsReadMessages", u.a);
        LinkedHashSet c1 = stringSet != null ? i.c1(stringSet) : new LinkedHashSet();
        c1.add(str);
        this.f29860a.edit().putStringSet("pendingMarkAsReadMessages", c1).apply();
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: f */
    public boolean mo26845f() {
        return this.f29860a.getBoolean("smartFeedOnboardingShown", false);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: f0 */
    public long mo26844f0(String str) {
        l.e(str, "brandId");
        SharedPreferences sharedPreferences = this.f29860a;
        return sharedPreferences.getLong("lastBrandQueryRunTs_" + str, 0L);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: g */
    public void mo26843g(boolean z) {
        C22128a.m8577r0(this.f29860a, "isImportantTabOutDated", z);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: g0 */
    public void mo26842g0(int i) {
        C22128a.m8593n0(this.f29860a, "insightsModelDownloadBannerShownTimes", i);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: h */
    public void mo26841h() {
        C22128a.m8577r0(this.f29860a, "blackListForNotifTarget", true);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: h0 */
    public int mo26840h0() {
        return this.f29860a.getInt("insightsReSyncStatus", 0);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: i */
    public String mo26839i() {
        String str = "";
        String string = this.f29860a.getString("bannerLastShownTime", "");
        if (string != null) {
            str = string;
        }
        l.d(str, "mPrefs.getString(KEY_BAN…Y_STRING) ?: EMPTY_STRING");
        return str;
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: i0 */
    public boolean mo26838i0() {
        return this.f29860a.getBoolean("smartSmsBannerDismissed", false);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: j */
    public void mo26837j(int i) {
        C22128a.m8593n0(this.f29860a, "insightsForceResyncVersion", i);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: j0 */
    public boolean mo26836j0() {
        return this.f29860a.getBoolean("isEditTagToolTipShown", false);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: k */
    public boolean mo26835k(String str) {
        l.e(str, AnalyticsConstants.KEY);
        String string = this.f29860a.getString("insightsRoWFeatureFlag", null);
        boolean z = false;
        if (string != null) {
            z = v.U(string, new String[]{"|"}, false, 0, 6).contains(str);
        }
        return z;
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: k0 */
    public boolean mo26834k0() {
        return this.f29860a.getBoolean("isFinanceTrxHidden", false);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: l */
    public int mo26833l() {
        return this.f29860a.getInt("brandDetectionSeedVersion", -1);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: l0 */
    public boolean mo26832l0() {
        return this.f29860a.getBoolean("isHideTrxTipShown", false);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: m */
    public void mo26831m(int i) {
        C22128a.m8593n0(this.f29860a, "insightsReminderTime", i);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: m0 */
    public Date mo26830m0() {
        long j = this.f29860a.getLong("lastSmartCardShownCountDate", 0L);
        return j == 0 ? null : new Date(j);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: n */
    public List<String> mo26829n() {
        SharedPreferences sharedPreferences = this.f29860a;
        Set<String> set = u.a;
        Set<String> stringSet = sharedPreferences.getStringSet("pendingMarkAsReadMessages", set);
        if (stringSet != null) {
            set = stringSet;
        }
        return i.S0(set);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: n0 */
    public void mo26828n0(String str) {
        l.e(str, "value");
        C22128a.m8585p0(this.f29860a, "bannerShownCount", str);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: o */
    public void mo26827o(long j) {
        C22128a.m8589o0(this.f29860a, "insightsModelDownloadBannerShownTs", j);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: o0 */
    public void mo26826o0(boolean z) {
        C22128a.m8577r0(this.f29860a, "isHideTrxTourOver", z);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: p */
    public void mo26825p(boolean z) {
        C22128a.m8577r0(this.f29860a, "insightsRemindersPageSeen", z);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: p0 */
    public boolean mo26824p0() {
        return this.f29860a.getBoolean("insightsUpdatesPageSeen", false);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: q */
    public void mo26823q(boolean z) {
        C22128a.m8577r0(this.f29860a, "isFinanceTrxHidden", z);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: q0 */
    public void mo26822q0(String str) {
        l.e(str, "value");
        C22128a.m8585p0(this.f29860a, "bannerClickedCount", str);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: r */
    public void mo26821r(boolean z) {
        C22128a.m8577r0(this.f29860a, "isDebugLogEnabled", z);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: r0 */
    public String mo26820r0() {
        String str = "";
        String string = this.f29860a.getString("bannerClickedCount", "");
        if (string != null) {
            str = string;
        }
        l.d(str, "mPrefs.getString(KEY_BAN…Y_STRING) ?: EMPTY_STRING");
        return str;
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: s */
    public void mo26819s(BannerState bannerState) {
        l.e(bannerState, "bannerState");
        this.f29860a.edit().putString("impOnboardingBannerState", bannerState.name()).apply();
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: s0 */
    public void mo26818s0() {
        SharedPreferences.Editor edit = this.f29860a.edit();
        edit.remove("lastSmartCardShownCountDate");
        edit.remove("totalSmartCardsShown").apply();
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: t */
    public void mo26817t(boolean z) {
        C22128a.m8577r0(this.f29860a, "isInsightsTabUpdated", z);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: t0 */
    public void mo26816t0(boolean z) {
        C22128a.m8577r0(this.f29860a, "pdoViewerEnabled", z);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: u */
    public LiveData<Boolean> mo26815u() {
        return C10480a.m26067H(this.f29860a, "isInsightsTabUpdated", false);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: u0 */
    public void mo26814u0(boolean z) {
        C22128a.m8577r0(this.f29860a, "isCategorizerUpdatePopUpSeen", z);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: v */
    public void mo26813v(boolean z) {
        C22128a.m8577r0(this.f29860a, "smartSmsBannerDismissed", z);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: v0 */
    public void mo26812v0() {
        C22128a.m8593n0(this.f29860a, "smartSmsBannerShownTime", 0);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: w */
    public String mo26811w() {
        String str = "";
        String string = this.f29860a.getString("bannerShownCount", "");
        if (string != null) {
            str = string;
        }
        l.d(str, "mPrefs.getString(KEY_BAN…Y_STRING) ?: EMPTY_STRING");
        return str;
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: w0 */
    public String mo26810w0() {
        return this.f29860a.getString("insightsRoWFeatureFlag", null);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: x */
    public boolean mo26809x() {
        return this.f29860a.getBoolean("isInsightsLocalMalanaSeedEnabled", false);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: x0 */
    public void mo26808x0(int i) {
        C22128a.m8593n0(this.f29860a, "brandDetectionSeedVersion", i);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: y */
    public int mo26807y() {
        return this.f29860a.getInt("totalSmartCardsShown", 0);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: y0 */
    public int mo26806y0() {
        return this.f29860a.getInt("insightsModelDownloadBannerShownTimes", 0);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: z */
    public void mo26805z(String str) {
        l.e(str, "value");
        C22128a.m8585p0(this.f29860a, "bannerLastShownTime", str);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10028o
    /* renamed from: z0 */
    public LiveData<Long> mo26804z0() {
        SharedPreferences sharedPreferences = this.f29860a;
        l.e(sharedPreferences, "$this$longLiveData");
        l.e("insightsModelDownloadBannerShownTs", AnalyticsConstants.KEY);
        return new C10041y(sharedPreferences, "insightsModelDownloadBannerShownTs", 0L);
    }
}
