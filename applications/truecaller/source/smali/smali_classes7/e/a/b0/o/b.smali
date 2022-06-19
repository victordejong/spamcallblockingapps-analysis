.class public final Le/a/b0/o/b;
.super Le/a/p5/t0/a;
.source "SourceFile"

# interfaces
.implements Le/a/b0/o/a;


# instance fields
.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "core_settings"

    .line 1
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "getSharedPreferences(PRE\u2026ME, Context.MODE_PRIVATE)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Le/a/p5/t0/a;-><init>(Landroid/content/SharedPreferences;)V

    const/16 p1, 0x9

    .line 3
    iput p1, p0, Le/a/b0/o/b;->b:I

    const-string p1, "core"

    .line 4
    iput-object p1, p0, Le/a/b0/o/b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public j3()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/b0/o/b;->b:I

    return v0
.end method

.method public k3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b0/o/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public o3(ILandroid/content/Context;)V
    .locals 105

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v0, p2

    const-string v1, "context"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "tc.settings"

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "oldSharedPreferences"

    const/4 v10, 0x1

    if-ge v7, v10, :cond_0

    .line 2
    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "featureCacheAdAfterCall"

    const-string v12, "featureAdCtpRotation"

    const-string v13, "availability_enabled"

    const-string v14, "featureAvailability"

    const-string v15, "featureFlash"

    const-string v16, "featureCleverTap"

    const-string v17, "flash_enabled"

    const-string v18, "swish_flash_enabled"

    const-string v19, "featureUgcDisabled"

    const-string v20, "featureUgcContactsWithoutIdentity"

    const-string v21, "backup_enabled"

    const-string v22, "featureNumberScanner"

    const-string v23, "restoreOnboardingShown"

    const-string v24, "featureOTPNotificationEnabled"

    const-string v25, "backupSignInRequired"

    const-string v26, "backupForceRootFolder"

    const-string v27, "core_agreed_region_1"

    const-string v28, "profileBusiness"

    const-string v29, "isUserChangingNumber"

    const-string v30, "whoViewedMeIncognitoEnabled"

    const-string v31, "whoViewedMePBContactEnabled"

    const-string v32, "whoViewedMeACSEnabled"

    const-string v33, "core_viewed_region_1"

    const-string v34, "core_accepted_region_1"

    const-string v35, "cleverTapFirstInit"

    const-string v36, "deleteBackupDuplicates"

    const-string v37, "smart_notifications"

    const-string v38, "smart_notifications_clicked"

    const-string v39, "featureSmartNotifications"

    const-string v40, "featureShareImageInFlash"

    const-string v41, "subscriptionPaymentFailedViewShownOnce"

    const-string v42, "core_isReturningUser"

    const-string v43, "subscriptionStatusChangedIsFreeTrial"

    const-string v44, "premiumHadPremiumBefore"

    const-string v45, "premiumHadPremiumBlockingFeatures"

    const-string v46, "forceRemoteGeocoding"

    const-string v47, "forceTestApiKeys"

    const-string v48, "profileSendRegistrationCompleteEvent"

    const-string v49, "last_availability_update_success"

    const-string v50, "profileFirstName"

    const-string v51, "profileLastName"

    const-string v52, "profileCompanyJob"

    const-string v53, "profileCompanyName"

    const-string v54, "profileStreet"

    const-string v55, "profileCity"

    const-string v56, "profileZip"

    const-string v57, "profileWeb"

    const-string v58, "profileGender"

    const-string v59, "profileFacebook"

    const-string v60, "profileTwitter"

    const-string v61, "profileAvatar"

    const-string v62, "profileBackgroundColor"

    const-string v63, "profileVerificationMode"

    const-string v64, "profileSimNumber"

    const-string v65, "profileEmail"

    const-string v66, "profileTag"

    const-string v67, "profileStatus"

    const-string v68, "profileSize"

    const-string v69, "profileOpeningHours"

    const-string v70, "profileImageUrls"

    const-string v71, "profileAcceptAuto"

    const-string v72, "profileNationalNumber"

    const-string v73, "payloads"

    const-string v74, "subscriptionErrorResolveUrl"

    const-string v75, "subscriptionStatusChangedReason"

    const-string v76, "subscriptionPurchaseSource"

    const-string v77, "premiumScope"

    const-string v78, "key_last_set_status_time"

    const-string v79, "last_successful_availability_update_time"

    const-string v80, "key_last_set_last_seen_time"

    const-string v81, "key_backup_frequency_hours"

    const-string v82, "key_backup_last_success"

    const-string v83, "key_backup_fetched_timestamp"

    const-string v84, "profileUserId"

    const-string v85, "premiumLastFetchDate"

    const-string v86, "profileVerificationDate"

    const-string v87, "initializeJobLastRun"

    const-string v88, "checkCredentialsLastTime"

    const-string v89, "checkCredentialsTtl"

    const-string v90, "recurring_task_last_run_time"

    const-string v91, "premiumDuration"

    const-string v92, "presence_interval"

    const-string v93, "presence_initial_delay"

    const-string v94, "presence_stop_time"

    const-string v95, "presence_recheck_time"

    const-string v96, "featureWhoViewedMeNewViewIntervalInDays"

    const-string v97, "featureWhoViewedMeShowNotificationAfterXDays"

    const-string v98, "featureWhoViewedMeShowNotificationAfterXLookups"

    const-string v99, "searchHitTtl"

    const-string v100, "searchMissTtl"

    const-string v101, "backupNetworkType"

    const-string v102, "lastUpdateInstallationVersion"

    const-string v103, "profileLatitude"

    const-string v104, "profileLongitude"

    .line 3
    filled-new-array/range {v11 .. v104}, [Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    .line 5
    invoke-static/range {v0 .. v5}, Le/a/p5/t0/a;->m3(Le/a/p5/t0/a;Landroid/content/SharedPreferences;Ljava/util/Set;ZILjava/lang/Object;)I

    .line 6
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "VERSION_core"

    .line 7
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "profileTrueName"

    .line 8
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "profileAmbassador"

    .line 9
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_pending_first_name"

    .line 10
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_pending_last_name"

    .line 11
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_call_recording_trial_start_timestamp"

    .line 12
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "keyCallRecordingProNudgeLastShown"

    .line 13
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "keyCallRecordingProNudgeShownCount"

    .line 14
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notificationChannelInitialized"

    .line 15
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "wizard_HasSentFirstStartEvent"

    .line 16
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "subscriptionPurchaseSku"

    .line 17
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "featureOfflineDirectory"

    .line 18
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 19
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    const/4 v0, 0x2

    if-ge v7, v0, :cond_1

    const-string v0, "core_agreed_region_1"

    .line 20
    invoke-virtual {v6, v0}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "ppolicy_accepted"

    invoke-virtual {v6, v2, v1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "core_viewed_region_1"

    .line 21
    invoke-virtual {v6, v1}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "ppolicy_viewed"

    invoke-virtual {v6, v3, v2}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "core_accepted_region_1"

    .line 22
    invoke-virtual {v6, v2}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "ppolicy_analytics"

    invoke-virtual {v6, v4, v3}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    .line 23
    invoke-virtual {v6, v0}, Le/a/p5/t0/a;->remove(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v6, v1}, Le/a/p5/t0/a;->remove(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v6, v2}, Le/a/p5/t0/a;->remove(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x3

    if-ge v7, v0, :cond_2

    const-string v0, "autoLoginHappened"

    .line 26
    invoke-virtual {v6, v0}, Le/a/p5/t0/a;->remove(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x4

    if-ge v7, v0, :cond_5

    const-string v0, "availability_enabled"

    .line 27
    invoke-virtual {v6, v0}, Le/a/p5/t0/a;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v6, v0}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "availability_disabled"

    .line 28
    invoke-virtual {v6, v0, v10}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    const-string v0, "flash_enabled"

    .line 29
    invoke-virtual {v6, v0}, Le/a/p5/t0/a;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v6, v0}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "flash_disabled"

    .line 30
    invoke-virtual {v6, v0, v10}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    const-string v0, "smart_notifications"

    .line 31
    invoke-virtual {v6, v0}, Le/a/p5/t0/a;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v6, v0}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "smart_notifications_disabled"

    .line 32
    invoke-virtual {v6, v0, v10}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    const/4 v0, 0x5

    if-ge v7, v0, :cond_6

    .line 33
    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qaDisableFirebaseConfig"

    const-string v1, "qaAbTestEnableLocalConfig"

    .line 34
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v0}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    .line 36
    invoke-static/range {v0 .. v5}, Le/a/p5/t0/a;->m3(Le/a/p5/t0/a;Landroid/content/SharedPreferences;Ljava/util/Set;ZILjava/lang/Object;)I

    :cond_6
    const/4 v0, 0x6

    if-ge v7, v0, :cond_7

    const-string v0, "recurring_task_last_run_time10028"

    .line 37
    invoke-virtual {v6, v0}, Le/a/p5/t0/a;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-wide/16 v1, 0x0

    .line 38
    invoke-virtual {v6, v0, v1, v2}, Le/a/p5/t0/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "hbLastTime"

    invoke-virtual {v6, v3, v1, v2}, Le/a/p5/t0/a;->putLong(Ljava/lang/String;J)V

    .line 39
    invoke-virtual {v6, v0}, Le/a/p5/t0/a;->remove(Ljava/lang/String;)V

    :cond_7
    const/4 v0, 0x7

    if-ge v7, v0, :cond_9

    const-string v0, "callRecordingSerial"

    const-string v1, "callRecordingLicense"

    .line 40
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 42
    invoke-virtual {v6, v1}, Le/a/p5/t0/a;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 43
    invoke-virtual {v6, v1}, Le/a/p5/t0/a;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const/16 v0, 0x9

    if-ge v7, v0, :cond_a

    const-string v0, "callRecordingDisabledPopupShown"

    .line 44
    invoke-virtual {v6, v0}, Le/a/p5/t0/a;->remove(Ljava/lang/String;)V

    :cond_a
    return-void
.end method
