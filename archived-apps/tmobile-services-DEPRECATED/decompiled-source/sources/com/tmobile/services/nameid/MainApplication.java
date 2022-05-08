package com.tmobile.services.nameid;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Process;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.app.AppCompatDelegate;
import com.facebook.stetho.Stetho;
import com.google.firebase.FirebaseApp;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.iid.FirebaseInstanceId;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.tmobile.services.nameid.NameIDPage;
import com.tmobile.services.nameid.Startup.IdentifyingNumbersActivity;
import com.tmobile.services.nameid.activity.ActivityFragment;
import com.tmobile.services.nameid.activity.ActivityPresenter;
import com.tmobile.services.nameid.api.TmoApiWrapper;
import com.tmobile.services.nameid.model.CallerSetting;
import com.tmobile.services.nameid.model.activity.ActivityItem;
import com.tmobile.services.nameid.model.activity.ActivityRealm;
import com.tmobile.services.nameid.utility.AirplaneModeReceiver;
import com.tmobile.services.nameid.utility.AnalyticsWrapper;
import com.tmobile.services.nameid.utility.BuildUtils;
import com.tmobile.services.nameid.utility.CustomRealmMigration;
import com.tmobile.services.nameid.utility.DeviceInfoUtils;
import com.tmobile.services.nameid.utility.EventManager;
import com.tmobile.services.nameid.utility.FcmService;
import com.tmobile.services.nameid.utility.IamWrapper;
import com.tmobile.services.nameid.utility.LogRecorder;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.MigrationHelper;
import com.tmobile.services.nameid.utility.NotificationUtil;
import com.tmobile.services.nameid.utility.PhoneNumberHelper;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import com.tmobile.services.nameid.utility.SitStateCheck;
import com.uphyca.stetho_realm.RealmInspectorModulesProvider;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import io.reactivex.subjects.PublishSubject;
import io.reactivex.subjects.Subject;
import io.realm.Realm;
import io.realm.RealmConfiguration;
import io.realm.RealmQuery;
import io.realm.RealmResults;
import io.realm.exceptions.RealmError;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/MainApplication.class */
public class MainApplication extends Application {

    /* renamed from: j */
    private static WeakReference<Context> f12642j;

    /* renamed from: n */
    private static FirebaseAnalytics f12646n;

    /* renamed from: h */
    private Observable<NameIDPage> f12655h;
    @Nonnull

    /* renamed from: k */
    private static SitStateCheck f12643k = new SitStateCheck();
    @Nullable

    /* renamed from: l */
    private static WeakReference<Activity> f12644l = null;

    /* renamed from: m */
    private static final AirplaneModeReceiver f12645m = new AirplaneModeReceiver();

    /* renamed from: o */
    private static boolean f12647o = true;

    /* renamed from: p */
    private static String f12648p = null;

    /* renamed from: q */
    private static boolean f12649q = false;

    /* renamed from: r */
    private static boolean f12650r = false;

    /* renamed from: s */
    public static boolean f12651s = false;

    /* renamed from: t */
    public static long f12652t = 0;

    /* renamed from: f */
    private NameIDPage f12653f = null;

    /* renamed from: g */
    private Subject<NameIDPage> f12654g = PublishSubject.m3207f();

    /* renamed from: i */
    Application.ActivityLifecycleCallbacks f12656i = new Application.ActivityLifecycleCallbacks(this) { // from class: com.tmobile.services.nameid.MainApplication.1
        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            Log.d("MainApplication#lifeCb", "onActivityCreated.");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            Log.d("MainApplication#lifeCb", "onActivityDestroyed.");
            LogRecorder.m5667b();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            Log.d("MainApplication#lifeCb", "onActivityPaused.");
            PreferenceUtils.m5386k("PREF_IS_APP_RESUMED", false);
            if (MainApplication.m7527m() == activity) {
                MainApplication.m7542N(null);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            Log.d("MainApplication#lifeCb", "onActivityResumed.");
            PreferenceUtils.m5386k("PREF_IS_APP_RESUMED", true);
            MainApplication.m7542N(activity);
            if (PreferenceUtils.m5395b("PREF_MSISDN_CHANGE_CLEAR_DATA", false)) {
                Log.d("MainApplication#", "MSISDN changed while app was backgrounded, restarting.");
                MainApplication.m7550F();
                return;
            }
            MainApplication.m7537c(activity);
            if (!IamWrapper.m5679i()) {
                Log.d("MainApplication#", "Need to refresh SIT token.");
                IamWrapper.m5683e(activity, true, null).subscribeOn(Schedulers.m3239b()).subscribe();
                return;
            }
            Log.d("MainApplication#", "Don't need to refresh SIT token now.");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            Log.d("MainApplication#lifeCb", "onActivitySaveInstanceState.");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            Log.d("MainApplication#lifeCb", "onActivityStarted.");
            PreferenceUtils.m5384m("PREF_SESSION_START", System.currentTimeMillis());
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            Log.d("MainApplication#lifeCb", "onActivityStopped.");
            LogRecorder.m5667b();
            PreferenceUtils.m5384m("PREF_SESSION_END", System.currentTimeMillis());
            AnalyticsWrapper.m5862r();
        }
    };

    /* renamed from: A */
    public static void m7555A(String str, @Nullable Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String format = simpleDateFormat.format(new Date());
        Date date2 = date;
        if (date == null) {
            long d = PreferenceUtils.m5393d("PREF_TRIAL_EXPIRATION_TMO");
            date2 = (!BuildUtils.m5851c() || d == 0) ? new Date() : new Date(d);
        }
        String lowerCase = str.toLowerCase();
        String str2 = "";
        if (lowerCase.contains("cnambase-canceled") || lowerCase.contains("cnambase_canceled")) {
            str2 = "CNAMBASE_CANCELED";
        } else if (lowerCase.contains("cnamfree_expired")) {
            str2 = "CNAMFREE_EXPIRED";
        } else if (lowerCase.contains("cnamfree_canceled")) {
            str2 = "CNAMFREE_CANCELED";
        } else if (lowerCase.contains("cnambase")) {
            str2 = "CNAMBASE";
        } else if (lowerCase.contains("cnambndl")) {
            str2 = "CNAMBNDL";
        } else if (lowerCase.contains("cmgr-spt")) {
            str2 = "CMGR-SPT";
        } else if (lowerCase.contains("cnamfree")) {
            str2 = simpleDateFormat.format(date2);
            str2 = "CNAMFREE";
        } else if (lowerCase.contains("cmgrfree-spt")) {
            str2 = simpleDateFormat.format(date2);
            str2 = "CMGRFREE-SPT";
        } else if (lowerCase.contains("cnammpcs_canceled") || lowerCase.contains("cnammpcs-canceled")) {
            str2 = "CNAMMPCS_CANCELED";
        } else if (lowerCase.contains("cnammpcs-free_expired")) {
            str2 = "CNAMMPCSFREE_EXPIRED";
        } else if (lowerCase.contains("cnammpcs-free") || lowerCase.contains("cnammpcs_free")) {
            str2 = simpleDateFormat.format(date2);
            str2 = "CNAMMPCSFREE";
        } else if (lowerCase.matches(".*cnammpcs([^-].*)?")) {
            str2 = "CNAMMPCS";
        } else {
            str2 = "";
            LogUtil.m5631p("MainApplication#logAccountChangedEvent", "SOC: " + str2 + "; Trial Expiration: " + date2);
            m7553C("account_status_change", new String[]{"soc", FirebaseAnalytics.Param.START_DATE, "trial_expiration"}, new String[]{str2, format, str2});
            AnalyticsWrapper.m5863q(str2, format, str2);
        }
        LogUtil.m5631p("MainApplication#logAccountChangedEvent", "SOC: " + str2 + "; Trial Expiration: " + date2);
        m7553C("account_status_change", new String[]{"soc", FirebaseAnalytics.Param.START_DATE, "trial_expiration"}, new String[]{str2, format, str2});
        AnalyticsWrapper.m5863q(str2, format, str2);
    }

    /* renamed from: B */
    public static void m7554B(NameIDPage nameIDPage) {
        if (nameIDPage instanceof NameIDPage.ManageTab) {
            AnalyticsWrapper.m5883E(nameIDPage.m7485a(), PreferenceUtils.m5390g("PREF_LAST_MANAGE_PAGE"));
        } else {
            AnalyticsWrapper.m5883E(nameIDPage.m7485a(), "");
        }
    }

    /* renamed from: C */
    public static void m7553C(String str, @Nonnull String[] strArr, @Nonnull String[] strArr2) {
        if (!f12647o) {
            LogUtil.m5639h("MainApplication#logFbEvent", "Firebase disabled.");
        } else if (strArr.length != strArr2.length) {
            LogUtil.m5631p("MainApplication#logFbEvent", "params length does not equal values length");
        } else {
            StringBuilder sb = new StringBuilder(10);
            sb.append("event: ");
            sb.append(str);
            sb.append(" - ");
            Bundle bundle = new Bundle();
            for (int i = 0; i < strArr.length; i++) {
                sb.append("[");
                sb.append(strArr[i]);
                sb.append("|");
                sb.append(strArr2[i]);
                sb.append("]");
                bundle.putString(strArr[i], strArr2[i]);
            }
            LogUtil.m5643d("MainApplication#logFbEvent", "Sending Firebase event... " + sb.toString());
            f12646n.logEvent(str, bundle);
        }
    }

    /* renamed from: D */
    public static void m7552D(@NonNull Activity activity, @NonNull String str) {
        FirebaseAnalytics firebaseAnalytics = f12646n;
        if (firebaseAnalytics != null) {
            firebaseAnalytics.setCurrentScreen(activity, str, null);
        } else {
            LogUtil.m5631p("MainApplication#logFbScreenChange", "FirebaseAnalytics was null!");
        }
    }

    /* renamed from: F */
    public static void m7550F() {
        LogUtil.m5631p("MainApplication#", "MSISDN Changed. App will reset to EULA.");
        PreferenceUtils.m5386k("PREF_MSISDN_CHANGE_CLEAR_DATA", true);
        Activity m = m7527m();
        if (m instanceof AppCompatActivity) {
            Intent intent = new Intent(m, IdentifyingNumbersActivity.class);
            intent.setFlags(335577088);
            m.startActivity(intent);
            m.finishAffinity();
        }
    }

    /* renamed from: G */
    private void m7549G() {
        final Date date = new Date(System.currentTimeMillis() - 2592000000L);
        LogUtil.m5639h("MainApplication#", "Removing old activity older than " + date.toString());
        try {
            final Realm G0 = Realm.m3064G0();
            G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.t
                @Override // io.realm.Realm.Transaction
                /* renamed from: a */
                public final void mo3037a(Realm realm) {
                    MainApplication.m7514z(Realm.this, date, realm);
                }
            });
            PreferenceUtils.m5386k("PREF_CALL_LOG_RETRIEVED_ALL_ITEMS", false);
            if (G0 != null) {
                G0.close();
            }
        } catch (RealmError | Exception e) {
            LogUtil.m5641f("MainApplication#", "Error removing old activity.", e);
        }
    }

    /* renamed from: H */
    private void m7548H() {
        m7544L(ActivityPresenter.CallFilterType.ALL);
    }

    /* renamed from: I */
    private void m7547I() {
        PreferenceUtils.m5385l("PREF_LAST_USED_ACTIVITY_TYPE", ActivityFragment.ActivityType.CALLS.getValue());
    }

    /* renamed from: J */
    public static void m7546J() {
        PreferenceUtils.m5383n("PREF_LAST_MANAGE_PAGE", NameIDPage.ManageTab.FavoritesTab.f12679b.m7485a());
    }

    /* renamed from: K */
    private void m7545K() {
        PreferenceUtils.m5383n("PREF_PENDING_CONTACT_ADD_NAME", "");
        PreferenceUtils.m5383n("PREF_PENDING_CONTACT_ADD_E164", "");
    }

    /* renamed from: L */
    public static void m7544L(ActivityPresenter.CallFilterType callFilterType) {
        PreferenceUtils.m5385l("PREF_LAST_USED_CALL_FILTER", callFilterType.getValue());
    }

    /* renamed from: M */
    public static void m7543M(boolean z) {
        f12650r = z;
    }

    /* renamed from: N */
    protected static void m7542N(@Nullable Activity activity) {
        synchronized (MainApplication.class) {
            try {
                f12644l = new WeakReference<>(activity);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: O */
    public static void m7541O(boolean z) {
        f12649q = z;
    }

    /* renamed from: P */
    public static void m7540P(String str) {
        Activity m = m7527m();
        if (m instanceof MainActivity) {
            ((MainActivity) m).m7599a1(str);
        }
    }

    /* renamed from: b */
    public static void m7538b(boolean z) {
        LogUtil.m5643d("MainApplication#appVersionCheck", "Checking App Version. fromUpgradeReceiver: " + z);
        Context l = m7528l();
        if (l != null) {
            String i = DeviceInfoUtils.m5755i(l);
            String g = PreferenceUtils.m5390g("PREF_VERSION_NAME");
            int c = PreferenceUtils.m5394c("PREF_CURRENT_APP_VERSION_CODE", -1);
            LogUtil.m5643d("MainApplication#appVersionCheck", "savedVersionName: " + g + "; currentVersionName: " + i + "; savedVersionCode: " + c + "; currentVersionCode: 3336");
            if (c != 3336) {
                if (g.isEmpty()) {
                    if (c == -1) {
                        g = z ? "Phase 1" : "-1";
                    } else {
                        g = "3.0.5." + String.valueOf(c);
                    }
                }
                String str = Build.MANUFACTURER;
                String str2 = Build.MODEL;
                String str3 = Build.VERSION.RELEASE;
                m7553C("app_update_fo", new String[]{"old_version", "new_version", "device_make", "device_model", "device_os"}, new String[]{g, i, str, str2, str3});
                AnalyticsWrapper.m5861s(l.getPackageName(), g, i, str, str2, str3);
                LogUtil.m5632o("MainApplication#appVersionCheck", "Last app version code was " + c + ". This version code is 3336");
                PreferenceUtils.m5385l("PREF_CURRENT_APP_VERSION_CODE", 3336);
                PreferenceUtils.m5385l("PREF_LAST_APP_VERSION_CODE", c);
                PreferenceUtils.m5383n("PREF_VERSION_NAME", i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"HardwareIds", "MissingPermission"})
    /* renamed from: c */
    public static void m7537c(Activity activity) {
        TelephonyManager telephonyManager = (TelephonyManager) activity.getSystemService("phone");
        int simState = telephonyManager.getSimState();
        boolean b = PreferenceUtils.m5395b("PREF_EULA_ACCEPTED", false);
        if (simState == 5 || !b) {
            try {
                if (Build.VERSION.SDK_INT < 22) {
                    LogUtil.m5639h("MainApplication#", "Can't use hasCarrierPrivileges before API 22. Do nothing.");
                    return;
                }
                boolean hasCarrierPrivileges = telephonyManager.hasCarrierPrivileges();
                LogUtil.m5639h("MainApplication#", "hasCarrierPrivileges = " + hasCarrierPrivileges);
                if (hasCarrierPrivileges) {
                    String h = PreferenceUtils.m5389h("PREF_LAST_SIM_ID", "");
                    String subscriberId = telephonyManager.getSubscriberId();
                    PreferenceUtils.m5383n("PREF_LAST_SIM_ID", subscriberId);
                    LogUtil.m5639h("MainApplication#", "Old IMSI = " + h);
                    LogUtil.m5639h("MainApplication#", "New IMSI = " + subscriberId);
                    if (subscriberId != null && !subscriberId.isEmpty() && !h.isEmpty() && !subscriberId.equals(h)) {
                        LogUtil.m5639h("MainApplication#", "SIM change detected.");
                        m7550F();
                    }
                }
            } catch (Exception e) {
                LogUtil.m5641f("MainApplication#", "Exception while checking SIM info.", e);
            }
        } else {
            LogUtil.m5639h("MainApplication#", "SIM not ready. Clear data.");
            m7550F();
        }
    }

    /* renamed from: d */
    private void m7536d() {
        boolean b = PreferenceUtils.m5395b("PREF_PREPAID_USER_AUTH_ERROR", false);
        LogUtil.m5643d("MainApplication#", "Has prepaid lockout been shown already? " + b);
        if (b) {
            LogUtil.m5631p("MainApplication#", "Clearing app data due to prepaid status.");
            m7531i();
        }
    }

    /* renamed from: e */
    private boolean m7535e() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        long availableBlocksLong = statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong();
        f12652t = availableBlocksLong;
        return availableBlocksLong > 15728640;
    }

    /* renamed from: f */
    private static void m7534f() {
        if (!PreferenceUtils.m5395b("PREF_HAS_CLEANED_INTL_NUMS", false)) {
            PreferenceUtils.m5386k("PREF_HAS_CLEANED_INTL_NUMS", true);
            final PhoneNumberUtil t = PhoneNumberUtil.m7999t();
            try {
                Realm G0 = Realm.m3064G0();
                final RealmResults E = G0.m3053Q0(ActivityItem.class).m2918E();
                G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.v
                    @Override // io.realm.Realm.Transaction
                    /* renamed from: a */
                    public final void mo3037a(Realm realm) {
                        MainApplication.m7521s(RealmResults.this, t, realm);
                    }
                });
                if (G0 != null) {
                    G0.close();
                }
            } catch (Throwable th) {
                LogUtil.m5641f("MainApplication#", "Error while attempting to clean Activity Data.", th);
            }
        }
    }

    /* renamed from: g */
    private static void m7533g(ActivityItem activityItem, PhoneNumberUtil phoneNumberUtil) {
        String e164Number = activityItem.getE164Number();
        boolean m = PhoneNumberHelper.m5406m(e164Number);
        boolean u = PhoneNumberHelper.m5398u(phoneNumberUtil, e164Number);
        if (m && (!u)) {
            activityItem.setE164Number(PhoneNumberHelper.m5399t(e164Number));
        }
    }

    /* renamed from: i */
    public static void m7531i() {
        LogUtil.m5631p("MainApplication#", "Clearing everything and starting over");
        if (m7528l() != null) {
            NotificationUtil.m5445l(m7528l());
        }
        final Realm G0 = Realm.m3064G0();
        try {
            G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.x
                @Override // io.realm.Realm.Transaction
                /* renamed from: a */
                public final void mo3037a(Realm realm) {
                    Realm.this.m3146o();
                }
            });
            if (G0 != null) {
                G0.close();
            }
            G0 = MigrationHelper.m5527e();
            if (G0 != null) {
                try {
                    G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.q
                        @Override // io.realm.Realm.Transaction
                        /* renamed from: a */
                        public final void mo3037a(Realm realm) {
                            Realm.this.m3146o();
                        }
                    });
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            }
            if (G0 != null) {
                G0.close();
            }
            SharedPreferences f = PreferenceUtils.m5391f();
            if (f != null) {
                f.edit().clear().commit();
            }
            try {
                new Thread(RunnableC1868u.f13829f).start();
            } catch (OutOfMemoryError e) {
                LogUtil.m5641f("MainApplication#", "error trying to delete fcm keys", e);
            }
            PreferenceUtils.m5386k("PREF_CLEAR_SIT_CACHE", true);
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    /* renamed from: j */
    protected static void m7530j(MainApplication mainApplication) {
        synchronized (MainApplication.class) {
            try {
                f12642j = new WeakReference<>(mainApplication);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: k */
    public static ActivityPresenter.CallFilterType m7529k() {
        return ActivityPresenter.CallFilterType.fromValue(PreferenceUtils.m5394c("PREF_LAST_USED_CALL_FILTER", 0));
    }

    @Nullable
    /* renamed from: l */
    public static Context m7528l() {
        WeakReference<Context> weakReference = f12642j;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @Nullable
    /* renamed from: m */
    public static Activity m7527m() {
        synchronized (MainApplication.class) {
            try {
                if (f12644l == null) {
                    return null;
                }
                return f12644l.get();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: n */
    public static String m7526n() {
        String str = f12648p;
        String str2 = str;
        if (str == null) {
            str2 = "MainActivity";
        }
        return str2;
    }

    @Nonnull
    /* renamed from: p */
    public static SitStateCheck m7524p() {
        return f12643k;
    }

    /* renamed from: q */
    public static boolean m7523q() {
        return f12650r;
    }

    /* renamed from: r */
    public static boolean m7522r() {
        return f12649q;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public static /* synthetic */ void m7521s(RealmResults realmResults, PhoneNumberUtil phoneNumberUtil, Realm realm) {
        Iterator<E> it = realmResults.iterator();
        while (it.hasNext()) {
            m7533g((ActivityItem) it.next(), phoneNumberUtil);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public static /* synthetic */ void m7520t(RealmResults realmResults, Realm realm) {
        Iterator<E> it = realmResults.iterator();
        while (it.hasNext()) {
            CallerSetting callerSetting = (CallerSetting) it.next();
            String preferenceId = callerSetting.getPreferenceId();
            boolean z = preferenceId == null || preferenceId.isEmpty();
            boolean p = PhoneNumberHelper.m5403p(callerSetting.getE164Number());
            if (z && !p) {
                LogUtil.m5639h("MainApplication#cleanPNBData", "found invalid number: " + callerSetting.getE164Number());
                callerSetting.deleteFromRealm();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: w */
    public static /* synthetic */ void m7517w() {
        try {
            FirebaseInstanceId.getInstance(FcmService.m5713c()).deleteInstanceId();
        } catch (Exception e) {
            LogUtil.m5641f("MainApplication#", "error trying to delete fcm keys", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: z */
    public static /* synthetic */ void m7514z(Realm realm, Date date, Realm realm2) {
        RealmQuery Q0 = realm.m3053Q0(ActivityItem.class);
        Q0.m2907P("date", date);
        Q0.m2918E().m3099d();
        LogUtil.m5639h("MainApplication#", "Successfully removed old activity from Realm.");
    }

    /* renamed from: E */
    public void m7551E(@Nullable Activity activity, NameIDPage nameIDPage) {
        if (activity == null) {
            LogUtil.m5631p("MainApplication#notifyScreenChange", "parameter was null! [activity: " + activity + ", screenName: " + nameIDPage.m7485a() + "]");
            return;
        }
        LogUtil.m5643d("MainApplication#notifyScreenChange", "emitting screen change event - " + nameIDPage.m7485a());
        this.f12654g.onNext(nameIDPage);
    }

    /* renamed from: h */
    public void m7532h() {
        try {
            Realm G0 = Realm.m3064G0();
            final RealmResults E = G0.m3053Q0(CallerSetting.class).m2918E();
            G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.s
                @Override // io.realm.Realm.Transaction
                /* renamed from: a */
                public final void mo3037a(Realm realm) {
                    MainApplication.m7520t(RealmResults.this, realm);
                }
            });
            if (G0 != null) {
                G0.close();
            }
        } catch (Throwable th) {
            LogUtil.m5641f("MainApplication#", "Error during cleanPNBData: ", th);
        }
    }

    /* renamed from: o */
    public Observable<NameIDPage> m7525o() {
        return this.f12655h;
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        LogUtil.m5643d("MainApplication##onCreate", "Starting main application");
        if (!m7535e()) {
            f12651s = true;
            return;
        }
        AppCompatDelegate.m22275B(true);
        m7530j(this);
        NotificationUtil.m5439r(this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.AIRPLANE_MODE");
        registerReceiver(f12645m, intentFilter);
        Observable<NameIDPage> debounce = this.f12654g.debounce(100L, TimeUnit.MILLISECONDS);
        this.f12655h = debounce;
        debounce.subscribe(new Consumer() { // from class: com.tmobile.services.nameid.r
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                MainApplication.this.m7516x((NameIDPage) obj);
            }
        }, C2006w.f14629f);
        try {
            Realm.m3060K0(this);
            RealmConfiguration.Builder builder = new RealmConfiguration.Builder();
            builder.m2968g(new CustomRealmMigration());
            builder.m2966i(6L);
            Realm.m3054P0(builder.m2974a());
        } catch (RealmError | Exception e) {
            LogUtil.m5641f("MainApplication#onCreate", "Error initializing realm ", e);
            m7531i();
            if (Build.VERSION.SDK_INT < 29) {
                Runtime.getRuntime().exit(0);
            } else {
                Process.killProcess(Process.myPid());
            }
        }
        RealmInspectorModulesProvider build = RealmInspectorModulesProvider.builder(this).withLimit(1000L).databaseNamePattern(Pattern.compile("default\\.realm")).build();
        if (BuildUtils.m5853a()) {
            Stetho.initialize(Stetho.newInitializerBuilder(this).enableDumpapp(Stetho.defaultDumperPluginsProvider(this)).enableWebKitInspector(build).build());
            LogRecorder.m5661h();
        }
        FirebaseApp.initializeApp(this);
        FirebaseAnalytics instance = FirebaseAnalytics.getInstance(this);
        f12646n = instance;
        instance.setMinimumSessionDuration(1000L);
        f12646n.setSessionTimeoutDuration(5000L);
        EventManager.m5719g(this);
        if (PreferenceUtils.m5395b("PREF_MSISDN_CHANGE_CLEAR_DATA", false)) {
            m7531i();
            PreferenceUtils.m5386k("PREF_HAS_SHOWN_SCAM_SHIELD_UPGRADE", true);
        }
        m7538b(false);
        TmoApiWrapper.m6635j().observeOn(AndroidSchedulers.m4448c());
        m7549G();
        m7536d();
        ActivityRealm.setAllRead();
        registerActivityLifecycleCallbacks(this.f12656i);
        m7532h();
        m7534f();
        m7547I();
        m7546J();
        m7548H();
        m7545K();
    }

    /* renamed from: x */
    public /* synthetic */ void m7516x(NameIDPage nameIDPage) throws Exception {
        LogUtil.m5639h("MainApplication#notifyScreenChange", "Going to " + nameIDPage.m7485a());
        if (!nameIDPage.equals(this.f12653f)) {
            m7552D(m7527m(), nameIDPage.m7485a());
            m7554B(nameIDPage);
        }
        this.f12653f = nameIDPage;
        f12648p = nameIDPage.m7485a();
    }
}
