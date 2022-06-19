.class public final Le/a/a/u0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Intent;)Le/a/c/r/d/c;
    .locals 13

    const-string v0, "$this$buildAnalyticsBuilder"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Le/a/a/u0/h;->b(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Le/a/c/r/d/c;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7f

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Le/a/c/r/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    return-object p0

    :cond_0
    const-string v0, "extra_action_info"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    const-string v2, "getStringExtra(EXTRA_ACTION_INFO) ?: \"\""

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "extra_action_type"

    .line 3
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object v1, v2

    :cond_2
    const-string v2, "getStringExtra(EXTRA_ACTION_TYPE) ?: \"\""

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "extra_promo_banner_data"

    .line 4
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/truecaller/insights/models/smartnotifications/NotificationBannerMetaData;

    const-string v3, "click"

    if-eqz v2, :cond_3

    const-string p0, "$this$createNotifEventBuilder"

    .line 5
    invoke-static {v2, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance p0, Le/a/c/r/d/c;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x7f

    move-object v4, p0

    invoke-direct/range {v4 .. v12}, Le/a/c/r/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    const-string v0, "promo_banner"

    .line 7
    invoke-virtual {p0, v0}, Le/a/c/r/d/c;->g(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2}, Lcom/truecaller/insights/models/smartnotifications/NotificationBannerMetaData;->getBannerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/a/c/r/d/c;->e(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Lcom/truecaller/insights/models/smartnotifications/NotificationBannerMetaData;->getBannerCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/a/c/r/d/c;->f(Ljava/lang/String;)V

    const-string v0, "smart_notification"

    .line 10
    invoke-virtual {p0, v0}, Le/a/c/r/d/c;->d(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, v3}, Le/a/c/r/d/c;->c(Ljava/lang/String;)V

    const-string v0, "show_details"

    .line 12
    invoke-virtual {p0, v0}, Le/a/c/r/d/c;->b(Ljava/lang/String;)V

    return-object p0

    :cond_3
    const-string v2, "extra_otp_analytics_model"

    .line 13
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/truecaller/notifications/OtpAnalyticsModel;

    if-eqz v2, :cond_4

    const-string p0, "show_message"

    const-string v0, "$this$createOtpNotifEventBuilder"

    .line 14
    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionInfo"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Le/a/c/r/d/c;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x7f

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Le/a/c/r/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    const-string v1, "otp_notification"

    .line 16
    invoke-virtual {v0, v1}, Le/a/c/r/d/c;->g(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v2}, Lcom/truecaller/notifications/OtpAnalyticsModel;->getOtpProcessor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/c/r/d/c;->e(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v2}, Lcom/truecaller/notifications/OtpAnalyticsModel;->getEventInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/c/r/d/c;->f(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v2}, Lcom/truecaller/notifications/OtpAnalyticsModel;->getContext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/c/r/d/c;->d(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, v3}, Le/a/c/r/d/c;->c(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, p0}, Le/a/c/r/d/c;->b(Ljava/lang/String;)V

    return-object v0

    :cond_4
    const-string v2, "extra_smart_notif_metadata"

    .line 22
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    .line 23
    new-instance v11, Le/a/c/r/d/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x7f

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Le/a/c/r/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    const-string v2, "custom_smart_notification"

    if-eqz p0, :cond_6

    .line 24
    invoke-virtual {p0}, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->isUpdateNotification()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v2, "updates_notification"

    .line 25
    :cond_5
    invoke-virtual {p0}, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Le/a/c/r/d/c;->e(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->getSenderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->isIM()Z

    move-result p0

    invoke-static {v3, p0}, Le/a/c/c0/q;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v11, p0}, Le/a/c/r/d/c;->f(Ljava/lang/String;)V

    .line 27
    :cond_6
    invoke-virtual {v11, v2}, Le/a/c/r/d/c;->g(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v11, v1}, Le/a/c/r/d/c;->c(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v11, v0}, Le/a/c/r/d/c;->b(Ljava/lang/String;)V

    return-object v11
.end method

.method public static final b(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "$this$isSmartNotifIntent"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extra_notification_origin"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "extra_smart_notification"

    invoke-static {p0, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
