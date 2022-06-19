package p193e.p194a.p372b0.p425o;

import android.content.Context;
import android.content.SharedPreferences;
import com.razorpay.AnalyticsConstants;
import p193e.p194a.p1129p5.p1133t0.AbstractC19316a;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.b0.o.b */
/* loaded from: classes7-dex2jar.jar:e/a/b0/o/b.class */
public final class C8542b extends AbstractC19316a implements AbstractC8541a {

    /* renamed from: b */
    public final int f26330b = 9;

    /* renamed from: c */
    public final String f26331c = "core";

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C8542b(android.content.Context r5) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)
            r0 = r5
            java.lang.String r1 = "core_settings"
            r2 = 0
            android.content.SharedPreferences r0 = r0.getSharedPreferences(r1, r2)
            r5 = r0
            r0 = r5
            java.lang.String r1 = "getSharedPreferences(PRE…ME, Context.MODE_PRIVATE)"
            s1.z.c.l.d(r0, r1)
            r0 = r4
            r1 = r5
            r0.<init>(r1)
            r0 = r4
            r1 = 9
            r0.f26330b = r1
            r0 = r4
            java.lang.String r1 = "core"
            r0.f26331c = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p372b0.p425o.C8542b.<init>(android.content.Context):void");
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: j3 */
    public int mo8946j3() {
        return this.f26330b;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: k3 */
    public String mo8945k3() {
        return this.f26331c;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: o3 */
    public void mo8944o3(int i, Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        SharedPreferences sharedPreferences = context.getSharedPreferences("tc.settings", 0);
        if (i < 1) {
            l.d(sharedPreferences, "oldSharedPreferences");
            AbstractC19316a.m13468m3(this, sharedPreferences, i.z0(new String[]{"featureCacheAdAfterCall", "featureAdCtpRotation", "availability_enabled", "featureAvailability", "featureFlash", "featureCleverTap", "flash_enabled", "swish_flash_enabled", "featureUgcDisabled", "featureUgcContactsWithoutIdentity", "backup_enabled", "featureNumberScanner", "restoreOnboardingShown", "featureOTPNotificationEnabled", "backupSignInRequired", "backupForceRootFolder", "core_agreed_region_1", "profileBusiness", "isUserChangingNumber", "whoViewedMeIncognitoEnabled", "whoViewedMePBContactEnabled", "whoViewedMeACSEnabled", "core_viewed_region_1", "core_accepted_region_1", "cleverTapFirstInit", "deleteBackupDuplicates", "smart_notifications", "smart_notifications_clicked", "featureSmartNotifications", "featureShareImageInFlash", "subscriptionPaymentFailedViewShownOnce", "core_isReturningUser", "subscriptionStatusChangedIsFreeTrial", "premiumHadPremiumBefore", "premiumHadPremiumBlockingFeatures", "forceRemoteGeocoding", "forceTestApiKeys", "profileSendRegistrationCompleteEvent", "last_availability_update_success", "profileFirstName", "profileLastName", "profileCompanyJob", "profileCompanyName", "profileStreet", "profileCity", "profileZip", "profileWeb", "profileGender", "profileFacebook", "profileTwitter", "profileAvatar", "profileBackgroundColor", "profileVerificationMode", "profileSimNumber", "profileEmail", "profileTag", "profileStatus", "profileSize", "profileOpeningHours", "profileImageUrls", "profileAcceptAuto", "profileNationalNumber", "payloads", "subscriptionErrorResolveUrl", "subscriptionStatusChangedReason", "subscriptionPurchaseSource", "premiumScope", "key_last_set_status_time", "last_successful_availability_update_time", "key_last_set_last_seen_time", "key_backup_frequency_hours", "key_backup_last_success", "key_backup_fetched_timestamp", "profileUserId", "premiumLastFetchDate", "profileVerificationDate", "initializeJobLastRun", "checkCredentialsLastTime", "checkCredentialsTtl", "recurring_task_last_run_time", "premiumDuration", "presence_interval", "presence_initial_delay", "presence_stop_time", "presence_recheck_time", "featureWhoViewedMeNewViewIntervalInDays", "featureWhoViewedMeShowNotificationAfterXDays", "featureWhoViewedMeShowNotificationAfterXLookups", "searchHitTtl", "searchMissTtl", "backupNetworkType", "lastUpdateInstallationVersion", "profileLatitude", "profileLongitude"}), false, 4, null);
            sharedPreferences.edit().remove("VERSION_core").remove("profileTrueName").remove("profileAmbassador").remove("key_pending_first_name").remove("key_pending_last_name").remove("key_call_recording_trial_start_timestamp").remove("keyCallRecordingProNudgeLastShown").remove("keyCallRecordingProNudgeShownCount").remove("notificationChannelInitialized").remove("wizard_HasSentFirstStartEvent").remove("subscriptionPurchaseSku").remove("featureOfflineDirectory").apply();
        }
        if (i < 2) {
            putBoolean("ppolicy_accepted", getBoolean("core_agreed_region_1"));
            putBoolean("ppolicy_viewed", getBoolean("core_viewed_region_1"));
            putBoolean("ppolicy_analytics", getBoolean("core_accepted_region_1"));
            remove("core_agreed_region_1");
            remove("core_viewed_region_1");
            remove("core_accepted_region_1");
        }
        if (i < 3) {
            remove("autoLoginHappened");
        }
        if (i < 4) {
            if (contains("availability_enabled") && !getBoolean("availability_enabled")) {
                putBoolean("availability_disabled", true);
            }
            if (contains("flash_enabled") && !getBoolean("flash_enabled")) {
                putBoolean("flash_disabled", true);
            }
            if (contains("smart_notifications") && !getBoolean("smart_notifications")) {
                putBoolean("smart_notifications_disabled", true);
            }
        }
        if (i < 5) {
            l.d(sharedPreferences, "oldSharedPreferences");
            AbstractC19316a.m13468m3(this, sharedPreferences, i.z0(new String[]{"qaDisableFirebaseConfig", "qaAbTestEnableLocalConfig"}), false, 4, null);
        }
        if (i < 6 && contains("recurring_task_last_run_time10028")) {
            putLong("hbLastTime", getLong("recurring_task_last_run_time10028", 0L));
            remove("recurring_task_last_run_time10028");
        }
        if (i < 7) {
            for (String str : i.z0(new String[]{"callRecordingSerial", "callRecordingLicense"})) {
                if (contains(str)) {
                    remove(str);
                }
            }
        }
        if (i < 9) {
            remove("callRecordingDisabledPopupShown");
        }
    }
}
