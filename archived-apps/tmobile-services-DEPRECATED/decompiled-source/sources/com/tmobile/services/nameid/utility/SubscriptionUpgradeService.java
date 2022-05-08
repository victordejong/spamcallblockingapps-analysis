package com.tmobile.services.nameid.utility;

import android.app.ActivityManager;
import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import com.apptentive.android.sdk.Apptentive;
import com.google.android.gms.common.api.Api;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.api.ApiUtils;
import com.tmobile.services.nameid.api.ApiWrapper;
import com.tmobile.services.nameid.api.MetroApiWrapper;
import com.tmobile.services.nameid.model.FeatureState;
import com.tmobile.services.nameid.model.LicenseResponseItem;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import io.realm.Realm;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/SubscriptionUpgradeService.class */
public class SubscriptionUpgradeService extends IntentService {
    public SubscriptionUpgradeService() {
        super("SubscriptionUpgradeService");
    }

    /* renamed from: a */
    private void m5300a(int i, SubscriptionHelper.State state) {
        LogUtil.m5643d("SubscriptionUpgradeService#doCheck", "Looking for desired state of " + state.name());
        if (i > 960) {
            LogUtil.m5632o("SubscriptionUpgradeService#", "Timeout trying to get user status");
            m5297d(false);
            return;
        }
        LogUtil.m5632o("SubscriptionUpgradeService#onHandleIntent", "Looking for user status update. Waiting " + i + Apptentive.DateTime.SEC);
        try {
            Thread.sleep(i * 1000);
        } catch (Exception e) {
            LogUtil.m5641f("SubscriptionUpgradeService#", "Error sleeping", e);
        }
        int i2 = i * 2;
        LogUtil.m5632o("SubscriptionUpgradeService#onHandleIntent", "Woke up.");
        FeatureState r = ApiWrapper.m6759r();
        if (r == null) {
            LogUtil.m5632o("SubscriptionUpgradeService#onHandleIntent", "Returned feature state was null, trying again");
            m5300a(i2, state);
        } else if (ApiUtils.m6894E(r, state)) {
            LogUtil.m5632o("SubscriptionUpgradeService#onHandleIntent", "Found correct feature state");
            if (BuildUtils.m5851c()) {
                MainApplication.m7555A(r.getActualNapFeatures(), null);
                m5297d(true);
            } else {
                LicenseResponseItem f = MetroApiWrapper.m6729f();
                if (MetroApiWrapper.m6727h(f, state)) {
                    MainApplication.m7555A(r.getActualNapFeatures(), f.getLicenseTrialEnd());
                    m5297d(true);
                } else {
                    m5300a(i2, state);
                }
            }
            if (state == SubscriptionHelper.State.PREMIUM) {
                LogUtil.m5639h("SubscriptionUpgradeService#", "User went from inactive to active. Purge/resync user preferences.");
                ApiUtils.m6865d0();
                ApiUtils.m6845n0(true);
            }
        } else {
            LogUtil.m5632o("SubscriptionUpgradeService#onHandleIntent", "User status has not yet changed. Checking again.");
            m5300a(i2, state);
        }
    }

    /* renamed from: b */
    public static boolean m5299b(Context context) {
        for (ActivityManager.RunningServiceInfo runningServiceInfo : ((ActivityManager) context.getSystemService("activity")).getRunningServices(Api.BaseClientBuilder.API_PRIORITY_OTHER)) {
            if (runningServiceInfo.service.getClassName().toLowerCase().contains("subscriptionupgradeservice")) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static /* synthetic */ void m5298c(TmoUserStatus tmoUserStatus, boolean z, Realm realm) {
        tmoUserStatus.setPending(false);
        tmoUserStatus.setPendingCheckError(!z);
    }

    /* renamed from: e */
    private void m5296e(final boolean z) {
        Realm G0 = Realm.m3064G0();
        try {
            final TmoUserStatus tmoUserStatus = (TmoUserStatus) G0.m3053Q0(TmoUserStatus.class).m2916G();
            if (tmoUserStatus != null) {
                G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.utility.r1
                    @Override // io.realm.Realm.Transaction
                    /* renamed from: a */
                    public final void mo3037a(Realm realm) {
                        SubscriptionUpgradeService.m5298c(TmoUserStatus.this, z, realm);
                    }
                });
            }
            if (G0 != null) {
                G0.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (G0 != null) {
                    try {
                        G0.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* renamed from: d */
    void m5297d(boolean z) {
        String str;
        m5296e(z);
        if (z) {
            if (BuildUtils.m5850d()) {
                PreferenceUtils.m5383n("PREF_METRO_STATE_PENDING", "");
                PreferenceUtils.m5383n("PREF_METRO_SOC_PENDING", "");
            }
            str = "BROADCAST_GOT_USER_STATUS";
        } else {
            str = "BROADCAST_GOT_USER_STATUS_ERROR";
        }
        Intent intent = new Intent(this, SubscriptionUpgradeReceiver.class);
        intent.putExtra("BROADCAST_USER_STATUS", str);
        LogUtil.m5632o("SubscriptionUpgradeService#onHandleIntent", "Doing broadcast " + str);
        sendBroadcast(intent);
        stopSelf();
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(@Nullable Intent intent) {
        if (intent == null) {
            LogUtil.m5631p("SubscriptionUpgradeService#onHandleIntent", "Intent was null");
            m5297d(false);
            return;
        }
        SubscriptionHelper.State state = (SubscriptionHelper.State) intent.getSerializableExtra("KEY_DESIRED_SUBSCRIPTION_STATE");
        if (state == SubscriptionHelper.State.PREMIUM || state == SubscriptionHelper.State.TRIAL || state == SubscriptionHelper.State.REDUCED || state == SubscriptionHelper.State.REDUCED_METRO) {
            if (BuildUtils.m5848f()) {
                try {
                    Thread.sleep(30000L);
                } catch (Exception e) {
                    LogUtil.m5641f("SubscriptionUpgradeService#", "Error sleeping", e);
                }
            }
            LogUtil.m5631p("SubscriptionUpgradeService#", "Starting to check");
            m5300a(30, state);
            return;
        }
        LogUtil.m5631p("SubscriptionUpgradeService#onHandleIntent", "Intent had type " + state.name() + " which we aren't going to handle.");
        m5297d(false);
    }
}
