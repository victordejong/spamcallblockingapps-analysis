package com.tmobile.services.nameid.utility;

import android.app.ActivityManager;
import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import com.apptentive.android.sdk.Apptentive;
import com.google.android.gms.common.api.Api;
import com.tmobile.services.nameid.api.MetroApiWrapper;
import com.tmobile.services.nameid.model.LicenseResponseItem;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/MetroDowngradeService.class */
public class MetroDowngradeService extends IntentService {
    public MetroDowngradeService() {
        super("MetroDowngradeService");
    }

    /* renamed from: a */
    private void m5538a(int i, SubscriptionHelper.State state) {
        LogUtil.m5643d("MetroDowngradeService#", "Looking for desired state of " + state.name());
        if (i > 960) {
            LogUtil.m5632o("MetroDowngradeService#", "Timeout trying to update license");
            m5536c();
            return;
        }
        LogUtil.m5632o("MetroDowngradeService#", "Looking for license update. Waiting " + i + Apptentive.DateTime.SEC);
        try {
            Thread.sleep(i * 1000);
        } catch (Exception e) {
            LogUtil.m5641f("MetroDowngradeService#", "Error sleeping", e);
        }
        LogUtil.m5632o("MetroDowngradeService#", "Woke up.");
        LicenseResponseItem f = MetroApiWrapper.m6729f();
        if (f == null || !MetroApiWrapper.m6727h(f, state)) {
            m5538a(i * 2, state);
        } else {
            m5536c();
        }
    }

    /* renamed from: b */
    public static boolean m5537b(Context context) {
        for (ActivityManager.RunningServiceInfo runningServiceInfo : ((ActivityManager) context.getSystemService("activity")).getRunningServices(Api.BaseClientBuilder.API_PRIORITY_OTHER)) {
            if (runningServiceInfo.service.getClassName().toLowerCase().contains("metrodowngradeservice")) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    void m5536c() {
        PreferenceUtils.m5384m("PREF_METRO_UNSUBSCRIBED_AT", 0L);
        stopSelf();
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(@Nullable Intent intent) {
        if (intent == null) {
            LogUtil.m5631p("MetroDowngradeService#", "Intent was null");
            m5536c();
            return;
        }
        SubscriptionHelper.State state = SubscriptionHelper.State.NONE;
        if (BuildUtils.m5848f()) {
            try {
                Thread.sleep(30000L);
            } catch (Exception e) {
                LogUtil.m5641f("MetroDowngradeService#", "Error sleeping", e);
            }
        }
        LogUtil.m5631p("MetroDowngradeService#", "Starting to check");
        m5538a(60, state);
    }
}
