.class public Le/a/a/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/i0;


# instance fields
.field public final a:Landroid/content/SharedPreferences;

.field public final b:Le/a/b0/o/a;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Le/a/b0/o/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    .line 3
    iput-object p2, p0, Le/a/a/j0;->b:Le/a/b0/o/a;

    return-void
.end method


# virtual methods
.method public A()Lw3/b/a/b;
    .locals 5

    .line 1
    new-instance v0, Lw3/b/a/b;

    iget-object v1, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v2, "spamTabPromoLastDismissedDate"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lw3/b/a/b;-><init>(J)V

    return-object v0
.end method

.method public A0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "imHistoryEventLimit"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public A1()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "hasDismissedReadReplyPromo"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public A2(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "isAutoCleanupEnabled"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public A3()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "lastCallBanner"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public B(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "mapPreviewZoom"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public B0(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "autoDownloadMedia"

    .line 2
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public B1(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "autoCleanupSpamPeriod"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public B2(I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "MmsAutoDownloadWhenRoaming"

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    const-string p1, "SimTwoMmsAutoDownloadWhenRoaming"

    .line 1
    :goto_0
    iget-object v1, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public B3(Lw3/b/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    iget-wide v1, p1, Lw3/b/a/e0/e;->a:J

    const-string p1, "LastMessagePromotionDate"

    .line 3
    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public C(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "conversationSpamSearchCount"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public C0(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "featureDefaultSmsAppPromoDate"

    invoke-static {v0, v1, p1, p2}, Le/d/c/a/a;->o0(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    return-void
.end method

.method public C1()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->b:Le/a/b0/o/a;

    const-string v1, "featureAvailability"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public C2()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "BlockedMessagesNotification"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public C3(Lw3/b/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    iget-wide v1, p1, Lw3/b/a/e0/e;->a:J

    const-string p1, "lastUnreadShortReminderDate"

    .line 3
    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public D(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "pendingIncomingMsgNotificationsCount"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public D0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "messagingVibration"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public D1(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "mapPreviewWidth"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public D2()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "imCreateGroupAnimShown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public D3()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "promotionalMessagesMigrated"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public E(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "featureDefaultSmsAppPromoDuration"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public E0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "additionalPermissionsDialogShown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public E1(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "lastTimeAppUpdatePromo"

    invoke-static {v0, v1, p1, p2}, Le/d/c/a/a;->o0(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    return-void
.end method

.method public E2()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "allTimeCleanupStatsSpamCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public E3(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "inboxCleanupShown"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public F()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "imNewJoinersPeriodDays"

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public F0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "autoJoinGroupsShown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public F1(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "isImPresenceReported"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public F2()Lw3/b/a/b;
    .locals 5

    .line 1
    new-instance v0, Lw3/b/a/b;

    iget-object v1, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v2, "lastUnreadShortReminderDate"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lw3/b/a/b;-><init>(J)V

    return-object v0
.end method

.method public F3()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "hasShownUndoTip"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public G(Lw3/b/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    iget-wide v1, p1, Lw3/b/a/e0/e;->a:J

    const-string p1, "manualCleanupLastDate"

    .line 3
    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public G0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "hadSmsReadAccess"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public G1(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v1, "messagingRingtone"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public G2()J
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "lastInboxBannerDate"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public G3()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "imGroupRecoveryState"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public H(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "promotionalMessagesMigrated"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public H0(I)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const-string p1, "MmsAutoDownload"

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    const-string p1, "SimTwoMmsAutoDownload"

    .line 1
    :goto_0
    iget-object v1, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public H1(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "manualCleanupSpamPeriod"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public H2()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "isTypingIndicatorEnabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public H3(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "wasReadReceiptsSyncedWithBE"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public I()Lw3/b/a/b;
    .locals 5

    .line 1
    new-instance v0, Lw3/b/a/b;

    iget-object v1, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v2, "autoCleanupLastDate"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lw3/b/a/b;-><init>(J)V

    return-object v0
.end method

.method public I0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "lastDmaNotificationClicked"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public I1(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "defaultSmsAppTimestamp"

    invoke-static {v0, v1, p1, p2}, Le/d/c/a/a;->o0(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    return-void
.end method

.method public I2()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "messagingVibration"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public I3(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "mapPreviewHeight"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public J(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "isGroupAutoJoinEnabled"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public J0()J
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "spamTabVisitedTimestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public J1()Lw3/b/a/b;
    .locals 5

    .line 1
    new-instance v0, Lw3/b/a/b;

    iget-object v1, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v2, "manualCleanupNextStepLastShownDate"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lw3/b/a/b;-><init>(J)V

    return-object v0
.end method

.method public J2(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "autoCleanupPromotionalPeriod"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public J3(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "appUpdateToVersion"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public K(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "unreadReminderDailyCount"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public K0()Lw3/b/a/b;
    .locals 5

    .line 1
    new-instance v0, Lw3/b/a/b;

    iget-object v1, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v2, "manualCleanupLastDate"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lw3/b/a/b;-><init>(J)V

    return-object v0
.end method

.method public K1(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "lastInboxBannerDate"

    invoke-static {v0, v1, p1, p2}, Le/d/c/a/a;->o0(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    return-void
.end method

.method public K2()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "allTimeCleanupStatsOtpCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public K3()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "wasReadReceiptsSyncedWithBE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public L()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "reactions_emoji"

    const-string v2, "\ud83d\udc4d,\ud83e\udd23,\ud83d\ude2e,\ud83d\ude0d,\ud83d\ude20,\ud83d\ude22,\ud83d\udc4e"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Collections2;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public L0()[Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "replyOptions"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Le/m/e/k;

    invoke-direct {v1}, Le/m/e/k;-><init>()V

    const-class v2, [Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v0, v2}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-static {v2}, Le/m/d/y/n;->B1(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public L1()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "isManualCleanupPromotionalEnabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public L2(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "spamTabVisitedTimestamp"

    invoke-static {v0, v1, p1, p2}, Le/d/c/a/a;->o0(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    return-void
.end method

.method public L3()J
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "getImUserMissTtl"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public M()J
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "businessTabVisitedTimestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public M0()J
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "lastMessageReceivedWorkerRunDate"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public M1()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "manualCleanupFailureRunCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public M2(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "BlockedMessagesNotification"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public M3()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "autoCleanupFailureRunCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public N()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "defaultSmsNotificationPromoShown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public N0()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "imGroupMaxParticipantCount"

    const/16 v2, 0x19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public N1()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "imHistoryMessageMaxCount"

    const/16 v2, 0x12c

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public N2(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "isTypingIndicatorEnabled"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public N3()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "isTenorGIFEnabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public O()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "umOnboardingShown"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public O0(F)F
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "lastUrgentBubblePositionY"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public O1()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "manualCleanupStatsPromotionalCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public O2()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "appUpdateToVersion"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public O3(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "lastCallBannerDate"

    invoke-static {v0, v1, p1, p2}, Le/d/c/a/a;->o0(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    return-void
.end method

.method public P()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "autoCleanupRunCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public P0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "scheduleMessageTooltipShown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public P1()J
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "promotionalTabVisitedTimestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public P2(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "wasDefaultSmsApp"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public P3()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "enableUrgentMessages"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Q()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "autoCleanupOtpPeriod"

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Q0()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "mmsMaxImageHeightLimit"

    const/16 v2, 0x1e0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Q1(Lw3/b/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    iget-wide v1, p1, Lw3/b/a/e0/e;->a:J

    const-string p1, "spamTabPromoLastDismissedDate"

    .line 3
    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public Q2()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "messagingSendGroupSms"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Q3(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "imHistoryMessageMaxCount"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public R()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    const-string v3, "manualCleanupFailureRunCount"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 3
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public R0()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "unreadReminderDailyCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public R1()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "manualCleanupOtpPeriod"

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public R2(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "defaultSmsNotificationPromoShownDate"

    invoke-static {v0, v1, p1, p2}, Le/d/c/a/a;->o0(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    return-void
.end method

.method public R3(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "conversationSpamSearchCount"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public S(Lw3/b/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    iget-wide v1, p1, Lw3/b/a/e0/e;->a:J

    const-string p1, "manualCleanupNextStepLastShownDate"

    .line 3
    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public S0(IJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MsgLastTransportSyncTime_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public S1()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "imForceUpgradeVersion"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public S2(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "imNewJoinersPeriodDays"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public S3(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "reactions_emoji"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->p0(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public T(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "isManualCleanupOtpEnabled"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public T0()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "mmsMaxImageWidthLimit"

    const/16 v2, 0x280

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public T1()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "isManualCleanupOtpEnabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public T2()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "manualCleanupDone"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public T3(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "othersTabVisitedTimestamp"

    invoke-static {v0, v1, p1, p2}, Le/d/c/a/a;->o0(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    return-void
.end method

.method public U()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    const-string v3, "autoCleanupFailureRunCount"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 3
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public U0(Lw3/b/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    iget-wide v1, p1, Lw3/b/a/e0/e;->a:J

    const-string p1, "autoCleanupLastDate"

    .line 3
    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public U1()Lw3/b/a/b;
    .locals 5

    .line 1
    new-instance v0, Lw3/b/a/b;

    iget-object v1, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v2, "featureDefaultSmsAppPromoDate"

    const-wide v3, 0x1788abac800L

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lw3/b/a/b;-><init>(J)V

    return-object v0
.end method

.method public U2()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "imTracingEnabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public U3(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "messagingSendGroupSms"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public V(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "smsPermissionForBlockQuestionCount"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public V0()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "autoCleanupSpamPeriod"

    const/16 v2, 0x1e

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public V1([Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Le/m/e/k;

    invoke-direct {v1}, Le/m/e/k;-><init>()V

    const-class v2, [Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Le/m/e/k;->n(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "replyOptions"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public V2()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "autoCleanupPromotionalPeriod"

    const/16 v2, 0x1e

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public V3()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "manualCleanupStatsOtpCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public W(IZ)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "MmsAutoDownloadWhenRoaming"

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    const-string p1, "SimTwoMmsAutoDownloadWhenRoaming"

    .line 1
    :goto_0
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    invoke-static {v0, p1, p2}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public W0()J
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "lastCallBannerDate"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public W1()V
    .locals 1

    const-string v0, "addressFieldBlinkedCount"

    .line 1
    invoke-virtual {p0, v0}, Le/a/a/j0;->q4(Ljava/lang/String;)V

    return-void
.end method

.method public W2(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "additionalPermissionsDialogShown"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public W3(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "scheduleMessageTooltipShown"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public X()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "historyMessagesInitialSyncCompleted"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public X0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "imTracingEnabled"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public X1()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "lastTimeZoneSync"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public X2(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "imGroupMaxParticipantCount"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public X3(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "imVoiceClipMaxDurationMins"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public Y(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "allTimeCleanupStatsOtpCount"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public Y0()J
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "imGroupRecoveryAttemptTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Y1()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "groupInviteLink"

    const-string v2, "https://chat.truecaller.com/group/"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Y2()Lw3/b/a/b;
    .locals 5

    .line 1
    new-instance v0, Lw3/b/a/b;

    iget-object v1, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v2, "lastGroupUnreadShortReminderDate"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lw3/b/a/b;-><init>(J)V

    return-object v0
.end method

.method public Y3()V
    .locals 1

    const-string v0, "counterFacebookInvite"

    .line 1
    invoke-virtual {p0, v0}, Le/a/a/j0;->q4(Ljava/lang/String;)V

    return-void
.end method

.method public Z(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "hasShownUndoTip"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public Z0(IZ)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "MmsAutoDownload"

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    const-string p1, "SimTwoMmsAutoDownload"

    .line 1
    :goto_0
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    invoke-static {v0, p1, p2}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public Z1(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "hasDismissedNewInboxPromo"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public Z2(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "allTimeCleanupStatsSpamCount"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public Z3()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "starredMessagesShown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public a()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->b:Le/a/b0/o/a;

    const-string v1, "availability_disabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public a0()Lw3/b/a/b;
    .locals 5

    .line 1
    new-instance v0, Lw3/b/a/b;

    iget-object v1, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v2, "lastDmaNotificationShownDate"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lw3/b/a/b;-><init>(J)V

    return-object v0
.end method

.method public a1(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastUrgentBubblePositionY"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a2()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "spamSearchStatus"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a3(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "starredMessagesShown"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public a4(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "isAutoCleanupNotifEnabled"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->b:Le/a/b0/o/a;

    const-string v1, "flash_disabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public b0()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "imGroupBatchParticipantCount"

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public b1(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "isManualCleanupSpamEnabled"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public b2()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "isGroupAutoJoinEnabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b3()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "imVoiceClipMaxDurationMins"

    const/16 v2, 0x3b

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public b4(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "MsgLastSyncTime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public c(Lw3/b/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    iget-wide v1, p1, Lw3/b/a/e0/e;->a:J

    const-string p1, "lastImReadTime"

    .line 3
    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public c0()Lw3/b/a/b;
    .locals 5

    .line 1
    new-instance v0, Lw3/b/a/b;

    iget-object v1, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v2, "lastUnreadLongReminderDate"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lw3/b/a/b;-><init>(J)V

    return-object v0
.end method

.method public c1()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "allTimeCleanupStatsPromotionalCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public c2()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "smsPermissionForBlockQuestionCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public c3()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "messagingSendGroupSms"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c4(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "imCreateGroupAnimShown"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public d(IZ)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "requestSmsDeliveryReport"

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    const-string p1, "requestSimTwoSmsDeliveryReport"

    .line 1
    :goto_0
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    invoke-static {v0, p1, p2}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public d0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "messagingRingtone"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d1()J
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "personalTabVisitedTimestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public d2(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "nudgeToSendNotificationTimestamp"

    invoke-static {v0, v1, p1, p2}, Le/d/c/a/a;->o0(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    return-void
.end method

.method public d3(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "isTenorGIFEnabled"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public d4(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "autoJoinGroupsShown"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public e(Lw3/b/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    iget-wide v1, p1, Lw3/b/a/e0/e;->a:J

    const-string p1, "lastGroupUnreadShortReminderDate"

    .line 3
    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public e0(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "getImUserMissTtl"

    invoke-static {v0, v1, p1, p2}, Le/d/c/a/a;->o0(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    return-void
.end method

.method public e1()Lw3/b/a/b;
    .locals 5

    .line 1
    new-instance v0, Lw3/b/a/b;

    iget-object v1, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v2, "JoinImUsersNotificationDate"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lw3/b/a/b;-><init>(J)V

    return-object v0
.end method

.method public e2()J
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "lastTimeAppUpdatePromo"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public e3(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "inboxCleanupPromoShown"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public e4(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v1, "chatMessagingRingtone"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "imPeerId"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f0(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "imGroupRecoveryAttemptTime"

    invoke-static {v0, v1, p1, p2}, Le/d/c/a/a;->o0(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    return-void
.end method

.method public f1(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "manualCleanupPromotionalPeriod"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public f2()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "imHistoryEventLimit"

    const/16 v2, 0x32

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public f3(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "imGroupBatchParticipantCount"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public f4()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "lastInboxBanner"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "chatMessagingRingtone"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public g0(Lw3/b/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    iget-wide v1, p1, Lw3/b/a/e0/e;->a:J

    const-string p1, "JoinImUsersNotificationDate"

    .line 3
    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public g1(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "historyMessagesInitialSyncCompleted"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public g2()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "qaEnableAvailability"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public g3()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "umOnboardingShown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public g4()Lw3/b/a/b;
    .locals 5

    .line 1
    new-instance v0, Lw3/b/a/b;

    iget-object v1, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v2, "promotionalTabPromoLastDismissedDate"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lw3/b/a/b;-><init>(J)V

    return-object v0
.end method

.method public h()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "translationPreferencesShown"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public h0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "isImPresenceReported"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public h1()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "pendingIncomingMsgNotificationsCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public h2(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "manualCleanupStatsOtpCount"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public h3(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "spamSearchStatus"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public h4(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "enableUrgentMessages"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public i()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Le/a/a/j0;->o2()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, "manualCleanupRunCount"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public i0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "searchInConversationShown"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public i1(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "autoDownloadTranslations"

    .line 2
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public i2(IJ)J
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MsgLastTransportSyncTime_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public i3()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "chatMessagingRingtone"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public i4(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "imInitialSyncTimestamp"

    invoke-static {v0, v1, p1, p2}, Le/d/c/a/a;->o0(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    return-void
.end method

.method public j()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "hasDismissedCallsMessagesSeparatelyPromo"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public j0()J
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "imInitialSyncTimestamp"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public j1()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "messagingRingtone"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public j2()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "autoDownloadTranslations"

    const-string v2, "wifiOrMobile"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j3()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "hasDismissedNewInboxPromo"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public j4()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    const-string v3, "addressFieldBlinkedCount"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "isReadReceiptsEnabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public k0()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "manualCleanupPromotionalPeriod"

    const/16 v2, 0x1e

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public k1(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "manualCleanupStatsSpamCount"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public k2(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "isReadReceiptsEnabled"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public k3(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "showCallHistoryInConversations"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public k4(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "starredMessagesTooltipShown"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public l()J
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "imMaxMediaSize"

    const-wide/32 v2, 0x6400000

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public l0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "lastDmaNotificationClicked"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public l1()J
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "defaultSmsAppTimestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public l2(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "lastInboxBanner"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->p0(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public l3()Lw3/b/a/b;
    .locals 5

    .line 1
    new-instance v0, Lw3/b/a/b;

    iget-object v1, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v2, "lastGroupUnreadLongReminderDate"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lw3/b/a/b;-><init>(J)V

    return-object v0
.end method

.method public l4(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "imPeerId"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->p0(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "lastCallBanner"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->p0(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public m0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "lastCleverTapDefaultSmsAppState"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public m1()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "promotionalMessagesNotifications"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public m2()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "appUpdatePromo"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public m3()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "isManualCleanupSpamEnabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public m4(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "hadSmsReadAccess"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public n()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "inboxCleanupPromoShown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public n0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "lastCleverTapDefaultSmsAppState"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public n1(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "MsgLastSyncTime"

    invoke-static {v0, v1, p1, p2}, Le/d/c/a/a;->o0(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    return-void
.end method

.method public n2(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "appUpdatePromoPeriod"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public n3()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "isImAttachmentMigrationPending"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public n4(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "autoCleanupOtpPeriod"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public o(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "mmsMaxImageHeightLimit"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public o0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "translationPreferencesShown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public o1()Lw3/b/a/b;
    .locals 5

    .line 1
    new-instance v0, Lw3/b/a/b;

    iget-object v1, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v2, "firstDmaNotificationShownDate"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lw3/b/a/b;-><init>(J)V

    return-object v0
.end method

.method public o2()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "manualCleanupRunCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public o3(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "personalTabVisitedTimestamp"

    invoke-static {v0, v1, p1, p2}, Le/d/c/a/a;->o0(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    return-void
.end method

.method public o4()J
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "typingIndicatorTimeout"

    const-wide/16 v2, 0x2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public p()Lw3/b/a/b;
    .locals 5

    .line 1
    new-instance v0, Lw3/b/a/b;

    iget-object v1, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v2, "LastMessagePromotionDate"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lw3/b/a/b;-><init>(J)V

    return-object v0
.end method

.method public p0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "manualCleanupDone"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public p1(Lw3/b/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    iget-wide v1, p1, Lw3/b/a/e0/e;->a:J

    const-string p1, "lastGroupUnreadLongReminderDate"

    .line 3
    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public p2(Lw3/b/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    iget-wide v1, p1, Lw3/b/a/e0/e;->a:J

    const-string p1, "lastDmaNotificationShownDate"

    .line 3
    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public p3()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "starredMessagesTooltipShown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public p4(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "promotionalMessagesNotifications"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public q(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "allTimeCleanupStatsPromotionalCount"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public q0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "isAutoCleanupEnabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public q1(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "mmsMaxMessageSizeLimit"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public q2(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "isImAttachmentMigrationPending"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public q3()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "showCallHistoryInConversations"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final q4(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    invoke-interface {v1, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public r()[Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "fileMimeTypes"

    const-string v2, "application/vnd.ms-powerpoint|application/vnd.openxmlformats-officedocument.presentationml.presentation|application/vnd.ms-excel|application/vnd.openxmlformats-officedocument.spreadsheetml.sheet|application/msword|application/vnd.openxmlformats-officedocument.wordprocessingml.document|application/pdf|text/plain"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "imForceUpgradeVersion"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public r1(I)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const-string p1, "requestSmsDeliveryReport"

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    const-string p1, "requestSimTwoSmsDeliveryReport"

    .line 1
    :goto_0
    iget-object v1, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public r2(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "hasCallHistoryConfirmationShown"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public r3(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "groupInviteLink"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->p0(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public s(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "hasUnconsumedEvents"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public s0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "defaultTabLongPressTooltipShown"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public s1()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "defaultTabLongPressTooltipShown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public s2(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "imGroupRecoveryState"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public s3()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "featureDefaultSmsAppPromoDuration"

    const/16 v2, 0x1c

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public t(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "isManualCleanupPromotionalEnabled"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public t0(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "lastTimeZoneSync"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->p0(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public t1(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "mmsMaxImageWidthLimit"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public t2()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "autoDownloadMedia"

    const-string v2, "wifi"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t3(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "typingIndicatorTimeout"

    invoke-static {v0, v1, p1, p2}, Le/d/c/a/a;->o0(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    return-void
.end method

.method public u(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "imMaxMediaSize"

    invoke-static {v0, v1, p1, p2}, Le/d/c/a/a;->o0(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    return-void
.end method

.method public u0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "isAutoCleanupNotifEnabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public u1()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "enableSwishWithUrgentMessages"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public u2(Lw3/b/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    iget-wide v1, p1, Lw3/b/a/e0/e;->a:J

    const-string p1, "lastUnreadLongReminderDate"

    .line 3
    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public u3(Lw3/b/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    iget-wide v1, p1, Lw3/b/a/e0/e;->a:J

    const-string p1, "lastImSendTime"

    .line 3
    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public v(Lw3/b/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    iget-wide v1, p1, Lw3/b/a/e0/e;->a:J

    const-string p1, "promotionalTabPromoLastDismissedDate"

    .line 3
    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public v0(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "fileMimeTypes"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->p0(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public v1(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "defaultSmsNotificationPromoShown"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public v2(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "lastMessageReceivedWorkerRunDate"

    invoke-static {v0, v1, p1, p2}, Le/d/c/a/a;->o0(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    return-void
.end method

.method public v3(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "enableSwishWithUrgentMessages"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public w()J
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "othersTabVisitedTimestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public w0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "manualCleanupOtpPeriod"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public w1()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "hasCallHistoryConfirmationShown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public w2()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "appUpdatePromoPeriod"

    const/16 v2, 0x1e

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public w3(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "manualCleanupStatsPromotionalCount"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public x(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "hasDismissedCallsMessagesSeparatelyPromo"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public x0(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "businessTabVisitedTimestamp"

    invoke-static {v0, v1, p1, p2}, Le/d/c/a/a;->o0(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    return-void
.end method

.method public x1()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "mmsMaxMessageSizeLimit"

    const v2, 0x4b000

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public x2()J
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "nudgeToSendNotificationTimestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public x3(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "appUpdatePromo"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public y()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "manualCleanupSpamPeriod"

    const/16 v2, 0x1e

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public y0()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Le/a/a/j0;->P()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, "autoCleanupRunCount"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public y1()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "manualCleanupStatsSpamCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public y2()Lw3/b/a/b;
    .locals 5

    .line 1
    new-instance v0, Lw3/b/a/b;

    iget-object v1, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v2, "defaultSmsNotificationPromoShownDate"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lw3/b/a/b;-><init>(J)V

    return-object v0
.end method

.method public y3(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "promotionalTabVisitedTimestamp"

    invoke-static {v0, v1, p1, p2}, Le/d/c/a/a;->o0(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    return-void
.end method

.method public z(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "hasDismissedReadReplyPromo"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public z0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "inboxCleanupShown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public z1()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "searchInConversationShown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public z2(Lw3/b/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    iget-wide v1, p1, Lw3/b/a/e0/e;->a:J

    const-string p1, "firstDmaNotificationShownDate"

    .line 3
    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public z3()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j0;->a:Landroid/content/SharedPreferences;

    const-string v1, "wasDefaultSmsApp"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
