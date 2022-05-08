package com.tmobile.services.nameid.utility;

import android.content.Context;
import android.content.Intent;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.Settings.MetroPinActivity;
import com.tmobile.services.nameid.model.LicenseResponseItem;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/MetroLicenseHelper.class */
public class MetroLicenseHelper {
    /* renamed from: a */
    public static int m5535a(LicenseResponseItem licenseResponseItem) {
        if (licenseResponseItem.isPendingCheckError()) {
            return C1517R.string.account_basic;
        }
        boolean equalsIgnoreCase = "trial".equalsIgnoreCase(licenseResponseItem.getLicenseState());
        int i = C1517R.string.account_pending;
        if (equalsIgnoreCase || "temp".equalsIgnoreCase(licenseResponseItem.getLicenseState())) {
            if (System.currentTimeMillis() >= licenseResponseItem.getLicenseTrialEnd().getTime()) {
                return C1517R.string.account_basic;
            }
            if (!licenseResponseItem.isPending()) {
                i = C1517R.string.subscription_status_trial;
            }
            return i;
        } else if (!"active".equalsIgnoreCase(licenseResponseItem.getLicenseState())) {
            if ("expired".equalsIgnoreCase(licenseResponseItem.getLicenseState())) {
            }
            return C1517R.string.account_basic;
        } else if ("nameid".equalsIgnoreCase(licenseResponseItem.getBillingSoc()) || "BLK2".equalsIgnoreCase(licenseResponseItem.getBillingSoc()) || "CMGR".equalsIgnoreCase(licenseResponseItem.getBillingSoc())) {
            if (!licenseResponseItem.isPending()) {
                i = C1517R.string.account_premium;
            }
            return i;
        } else if (!"BLK".equalsIgnoreCase(licenseResponseItem.getBillingSoc())) {
            return C1517R.string.account_basic;
        } else {
            if (!licenseResponseItem.isPending()) {
                i = C1517R.string.account_premium;
            }
            return i;
        }
    }

    /* renamed from: b */
    public static long m5534b(LicenseResponseItem licenseResponseItem) {
        if (licenseResponseItem == null || licenseResponseItem.getLicenseTrialEnd() == null || System.currentTimeMillis() >= licenseResponseItem.getLicenseTrialEnd().getTime()) {
            return 0L;
        }
        double time = (licenseResponseItem.getLicenseTrialEnd().getTime() - new Date(System.currentTimeMillis()).getTime()) / 8.64E7d;
        LogUtil.m5643d("MetroLicenseHelper#getTrialDaysLeft", "days in trial unrounded: " + time);
        if (time >= 1.0d || time <= 0.0d) {
            return Math.round(time);
        }
        return 1L;
    }

    /* renamed from: c */
    public static void m5533c(Context context, String str, boolean z) {
        Intent intent = new Intent(context, MetroPinActivity.class);
        intent.putExtra("METRO_PIN_SCREEN_SUBSCRIBE_UNSUBSCRIBE", z);
        intent.putExtra("METRO_PIN_SCREEN_STATE", str);
        context.startActivity(intent);
    }

    /* renamed from: d */
    public static void m5532d(LicenseResponseItem licenseResponseItem) {
        if (licenseResponseItem != null && licenseResponseItem.getLicenseState() != null) {
            if ("active".equalsIgnoreCase(licenseResponseItem.getLicenseState())) {
                PreferenceUtils.m5383n("PREF_METRO_LAST_LICENSE_OR_TRIAL", "active");
            } else if ("trial".equalsIgnoreCase(licenseResponseItem.getLicenseState())) {
                PreferenceUtils.m5383n("PREF_METRO_LAST_LICENSE_OR_TRIAL", "trial");
            }
        }
    }
}
