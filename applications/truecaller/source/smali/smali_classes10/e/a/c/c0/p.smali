.class public final Le/a/c/c0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/c0/o;


# instance fields
.field public final a:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1

    const-string v0, "mPrefs"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "insightsLastRerunAppVersion"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public A0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "isEditTagToolTipShown"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public B()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "blackListForNotifTarget"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public B0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "areRemindersEnabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public C(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "isHideTrxTipShown"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public C0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "isHideTrxTourOver"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public D()Lcom/truecaller/insights/utils/HideTrxTempState;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "hideTrxTemp"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/truecaller/insights/utils/HideTrxTempState;->DEFAULT:Lcom/truecaller/insights/utils/HideTrxTempState;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/truecaller/insights/utils/HideTrxTempState;->valueOf(Ljava/lang/String;)Lcom/truecaller/insights/utils/HideTrxTempState;

    move-result-object v0

    return-object v0
.end method

.method public D0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "isDebugLogEnabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public E()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "insightsReminderTime"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public E0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "areRemindersEnabled"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public F()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Ls1/u/u;->a:Ls1/u/u;

    const-string v2, "pendingMarkAsReadMessages"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public F0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "isInsightsLocalSenderFilterEnabled"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public G()J
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "syntheticRecordLastId"

    const-wide/16 v2, -0x2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "syntheticRecordLastId"

    const-wide/16 v4, 0x1

    sub-long v4, v0, v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public H(Ljava/lang/String;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "insightsRoWFeatureFlag"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->p0(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public I(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "isInsightsLocalMalanaSeedEnabled"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public J()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "isImportantTabOutDated"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Le/a/c/p/a;->H(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Le/a/c/c0/x;

    move-result-object v0

    return-object v0
.end method

.method public K()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "smartSmsBannerShownTime"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public L(Ljava/lang/String;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "insightsLastRerunAppVersion"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->p0(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public M(Lcom/truecaller/insights/utils/HideTrxTempState;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "hideTrxTemp"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public N()Landroidx/lifecycle/LiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "$this$intLiveData"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "smartSmsBannerShownTime"

    const-string v2, "key"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v2, Le/a/c/c0/w;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Le/a/c/c0/w;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-object v2
.end method

.method public O()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "insightsFeedbackConsent"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public P(Ljava/util/Date;)V
    .locals 3

    const-string v0, "date"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-string p1, "lastSmartCardShownCountDate"

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public Q()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "isCategorizerUpdatePopUpSeen"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public R(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "smartFeedOnboardingShown"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public S()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "insightsImportantTabSeen"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public T(Ljava/lang/String;J)V
    .locals 3

    const-string v0, "brandId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastBrandQueryRunTs_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public U(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "totalSmartCardsShown"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public V()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "insightsForceResyncAlphaVersion"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public W()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "insightsForceResyncVersion"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public X(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "insightsFinancePageSeen"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public Y()Landroidx/lifecycle/LiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/truecaller/insights/utils/HideTrxTempState;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/truecaller/insights/utils/HideTrxTempState;->DEFAULT:Lcom/truecaller/insights/utils/HideTrxTempState;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "$this$stringLiveData"

    .line 2
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "hideTrxTemp"

    const-string v3, "key"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "defValue"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v3, Le/a/c/c0/z;

    invoke-direct {v3, v0, v2, v1}, Le/a/c/c0/z;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v0, Le/a/c/c0/p$a;->a:Le/a/c/c0/p$a;

    invoke-static {v3, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->Q0(Landroidx/lifecycle/LiveData;Ln3/c/a/c/a;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    const-string v1, "Transformations.map(mPre\u2026e.DEFAULT.name)\n        }"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public Z(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "insightsImportantTabSeen"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public a()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "pdoViewerEnabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public a0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "isInsightsLocalSenderFilterEnabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "smartSmsBannerShownTime"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public b0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "insightsUpdatesPageSeen"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "insightsReSyncStatus"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public c0()Lcom/truecaller/insights/utils/BannerState;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/truecaller/insights/utils/BannerState;->NOT_SEEN:Lcom/truecaller/insights/utils/BannerState;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "impModelBannerState"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/truecaller/insights/utils/BannerState;->valueOf(Ljava/lang/String;)Lcom/truecaller/insights/utils/BannerState;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "isFinanceTrxHidden"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Le/a/c/p/a;->H(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Le/a/c/c0/x;

    move-result-object v0

    return-object v0
.end method

.method public d0()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "smartSmsBannerShownTime"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2
    iget-object v2, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public e(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "insightsForceResyncAlphaVersion"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public e0(Ljava/lang/String;)V
    .locals 3

    const-string v0, "value"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    sget-object v1, Ls1/u/u;->a:Ls1/u/u;

    const-string v2, "pendingMarkAsReadMessages"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ls1/u/i;->c1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public f()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "smartFeedOnboardingShown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public f0(Ljava/lang/String;)J
    .locals 3

    const-string v0, "brandId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastBrandQueryRunTs_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public g(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "isImportantTabOutDated"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public g0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "insightsModelDownloadBannerShownTimes"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public h()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "blackListForNotifTarget"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public h0()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "insightsReSyncStatus"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "bannerLastShownTime"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v2, v0

    :cond_0
    const-string v0, "mPrefs.getString(KEY_BAN\u2026Y_STRING) ?: EMPTY_STRING"

    invoke-static {v2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public i0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "smartSmsBannerDismissed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public j(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "insightsForceResyncVersion"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public j0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "isEditTagToolTipShown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public k(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "insightsRoWFeatureFlag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "|"

    .line 2
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v0, v2, v1, v1, v3}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public k0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "isFinanceTrxHidden"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public l()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "brandDetectionSeedVersion"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public l0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "isHideTrxTipShown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public m(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "insightsReminderTime"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public m0()Ljava/util/Date;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "lastSmartCardShownCountDate"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public n()Ljava/util/List;
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
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    sget-object v1, Ls1/u/u;->a:Ls1/u/u;

    const-string v2, "pendingMarkAsReadMessages"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    .line 2
    :cond_0
    invoke-static {v1}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public n0(Ljava/lang/String;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "bannerShownCount"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->p0(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public o(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "insightsModelDownloadBannerShownTs"

    invoke-static {v0, v1, p1, p2}, Le/d/c/a/a;->o0(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    return-void
.end method

.method public o0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "isHideTrxTourOver"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public p(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "insightsRemindersPageSeen"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public p0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "insightsUpdatesPageSeen"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public q(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "isFinanceTrxHidden"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public q0(Ljava/lang/String;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "bannerClickedCount"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->p0(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public r(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "isDebugLogEnabled"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public r0()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "bannerClickedCount"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v2, v0

    :cond_0
    const-string v0, "mPrefs.getString(KEY_BAN\u2026Y_STRING) ?: EMPTY_STRING"

    invoke-static {v2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public s(Lcom/truecaller/insights/utils/BannerState;)V
    .locals 2

    const-string v0, "bannerState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "impOnboardingBannerState"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public s0()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastSmartCardShownCountDate"

    .line 2
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "totalSmartCardsShown"

    .line 3
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public t(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "isInsightsTabUpdated"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public t0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "pdoViewerEnabled"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public u()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "isInsightsTabUpdated"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Le/a/c/p/a;->H(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Le/a/c/c0/x;

    move-result-object v0

    return-object v0
.end method

.method public u0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "isCategorizerUpdatePopUpSeen"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public v(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "smartSmsBannerDismissed"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public v0()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "smartSmsBannerShownTime"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public w()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "bannerShownCount"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v2, v0

    :cond_0
    const-string v0, "mPrefs.getString(KEY_BAN\u2026Y_STRING) ?: EMPTY_STRING"

    invoke-static {v2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public w0()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "insightsRoWFeatureFlag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "isInsightsLocalMalanaSeedEnabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public x0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "brandDetectionSeedVersion"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public y()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "totalSmartCardsShown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public y0()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "insightsModelDownloadBannerShownTimes"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public z(Ljava/lang/String;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "bannerLastShownTime"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->p0(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public z0()Landroidx/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c0/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "$this$longLiveData"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "insightsModelDownloadBannerShownTs"

    const-string v2, "key"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v2, Le/a/c/c0/y;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v0, v1, v3, v4}, Le/a/c/c0/y;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    return-object v2
.end method
