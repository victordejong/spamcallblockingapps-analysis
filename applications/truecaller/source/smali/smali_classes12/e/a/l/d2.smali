.class public final Le/a/l/d2;
.super Le/a/p5/t0/a;
.source "SourceFile"

# interfaces
.implements Le/a/l/c2;


# instance fields
.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    const-string v1, "tc_premium_settings"

    const/4 v2, 0x0

    const-string v3, "context.getSharedPrefere\u2026ME, Context.MODE_PRIVATE)"

    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->B0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1
    invoke-direct {p0, p1}, Le/a/p5/t0/a;-><init>(Landroid/content/SharedPreferences;)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Le/a/l/d2;->b:I

    .line 3
    iput-object v1, p0, Le/a/l/d2;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public C2(I)V
    .locals 1

    const-string v0, "SPAM_TAB_PROMO_DISMISS_COUNT"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public G2()Ljava/lang/String;
    .locals 1

    const-string v0, "KEY_HOME_TAB_PROMO_CAMPAIGN_NAME"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public H0(Z)V
    .locals 1

    const-string v0, "showReselectPaymentDisclaimer"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public I1()I
    .locals 2

    const-string v0, "KEY_HOME_TAB_PROMO_CAMPAIGN_DISMISSED_COUNT"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public K1()Ljava/lang/String;
    .locals 1

    const-string v0, "newFeatureSplatRecentlyDismissed"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public L2(J)V
    .locals 1

    const-string v0, "KEY_HOME_TAB_PROMO_GENERIC_DISMISSED"

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Le/a/p5/t0/a;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public M1()J
    .locals 3

    const-string v0, "SPAM_TAB_PROMO_LAST_DISMISSED"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Le/a/p5/t0/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public N2(I)V
    .locals 1

    const-string v0, "FRIEND_UPGRADED_PROMO_COUNT"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public O(Z)V
    .locals 1

    const-string v0, "KEY_IS_GOLD_PURCHASED_WITH_GIFT_PROMO"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public P2()Z
    .locals 2

    const-string v0, "isWebPurchasePendingStateChanged"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Q0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "FRIEND_UPGRADED_PROMO_IDS"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Q2(J)V
    .locals 1

    const-string v0, "ACS_SPAMMER_PROMO_LAST_SHOWN"

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Le/a/p5/t0/a;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public T0()J
    .locals 3

    const-string v0, "KEY_TEMPORARY_PROMO_CARD_MARK_DISMISSED"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Le/a/p5/t0/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public U()Z
    .locals 1

    const-string v0, "KEY_IS_PROMOTION_AVAILABLE"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public U2()J
    .locals 3

    const-string v0, "KEY_HOME_TAB_PROMO_CAMPAIGN_DISMISSED"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Le/a/p5/t0/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public V1(Ljava/lang/String;)V
    .locals 1

    const-string v0, "KEY_HOME_TAB_PROMO_CAMPAIGN_NAME"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public W()Ljava/lang/String;
    .locals 1

    const-string v0, "FRIEND_UPGRADED_PROMO_IDS"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public X0(Z)V
    .locals 1

    const-string v0, "KEY_IS_PROMOTION_AVAILABLE"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public Y2()I
    .locals 2

    const-string v0, "premiumTabAnimationLastShown"

    const/4 v1, -0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Z()Z
    .locals 2

    const-string v0, "KEY_IS_WINBACK_GOLD_PRODUCT_PRESENT"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public a0(I)V
    .locals 1

    const-string v0, "KEY_HOME_TAB_PROMO_CAMPAIGN_DISMISSED_COUNT"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public a2()Z
    .locals 2

    const-string v0, "showReselectPaymentDisclaimer"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b0(I)V
    .locals 1

    const-string v0, "KEY_HOME_TAB_PROMO_GENERIC_DISMISSED_COUNT"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public b1(Z)V
    .locals 1

    const-string v0, "KEY_IS_GOLD_GIFT_SENT"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public b2(Z)V
    .locals 1

    const-string v0, "KEY_FIRST_APP_OPEN_31778_EVENT_LOGGED"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public b3(Z)V
    .locals 1

    const-string v0, "KEY_IS_WINBACK_GOLD_PRODUCT_PRESENT"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public c0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "newFeatureSplatRecentlyDismissed"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c1()J
    .locals 3

    const-string v0, "ACS_SPAMMER_PROMO_LAST_SHOWN"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Le/a/p5/t0/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c2(J)V
    .locals 1

    const-string v0, "KEY_HOME_TAB_PROMO_CAMPAIGN_DISMISSED"

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Le/a/p5/t0/a;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public clear()V
    .locals 22

    const-string v0, "KEY_IS_WINBACK_PRODUCT_PRESENT"

    const-string v1, "KEY_IS_WINBACK_GOLD_PRODUCT_PRESENT"

    const-string v2, "SPAM_TAB_PROMO_DISMISS_COUNT"

    const-string v3, "SPAM_TAB_PROMO_LAST_DISMISSED"

    const-string v4, "ACS_SPAMMER_PROMO_LAST_SHOWN"

    const-string v5, "FRIEND_UPGRADED_PROMO_COUNT"

    const-string v6, "FRIEND_UPGRADED_PROMO_IDS"

    const-string v7, "KEY_IS_PROMOTION_AVAILABLE"

    const-string v8, "KEY_BOTTOM_BAR_ATTENTION_MARK_DISMISSED"

    const-string v9, "KEY_HOME_TAB_PROMO_GENERIC_DISMISSED"

    const-string v10, "KEY_HOME_TAB_PROMO_GENERIC_DISMISSED_COUNT"

    const-string v11, "KEY_HOME_TAB_PROMO_CAMPAIGN_NAME"

    const-string v12, "KEY_HOME_TAB_PROMO_CAMPAIGN_DISMISSED"

    const-string v13, "KEY_HOME_TAB_PROMO_CAMPAIGN_DISMISSED_COUNT"

    const-string v14, "KEY_FIRST_APP_OPEN_31778_EVENT_LOGGED"

    const-string v15, "KEY_IS_GOLD_GIFT_SENT"

    const-string v16, "KEY_IS_GOLD_PURCHASED_WITH_GIFT_PROMO"

    const-string v17, "KEY_CARD_DISMISS_CACHE"

    const-string v18, "KEY_TEMPORARY_PROMO_CARD_MARK_DISMISSED"

    const-string v19, "newFeatureSplatRecentlyDismissed"

    const-string v20, "showReselectPaymentDisclaimer"

    const-string v21, "isWebPurchasePendingStateChanged"

    .line 1
    filled-new-array/range {v0 .. v21}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v2, p0

    .line 4
    invoke-virtual {v2, v1}, Le/a/p5/t0/a;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v2, p0

    return-void
.end method

.method public e1()I
    .locals 2

    const-string v0, "SPAM_TAB_PROMO_DISMISS_COUNT"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public e3()Z
    .locals 1

    const-string v0, "KEY_IS_GOLD_GIFT_SENT"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public f0()J
    .locals 3

    const-string v0, "KEY_HOME_TAB_PROMO_GENERIC_DISMISSED"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Le/a/p5/t0/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public g0(J)V
    .locals 1

    const-string v0, "premiumTabAnimationShownForPurchaseTime"

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Le/a/p5/t0/a;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public i1()I
    .locals 2

    const-string v0, "FRIEND_UPGRADED_PROMO_COUNT"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public i2()J
    .locals 3

    const-string v0, "KEY_BOTTOM_BAR_ATTENTION_MARK_DISMISSED"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Le/a/p5/t0/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public i3(J)V
    .locals 1

    const-string v0, "KEY_BOTTOM_BAR_ATTENTION_MARK_DISMISSED"

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Le/a/p5/t0/a;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public j1(J)V
    .locals 1

    const-string v0, "SPAM_TAB_PROMO_LAST_DISMISSED"

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Le/a/p5/t0/a;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public j2()Z
    .locals 1

    const-string v0, "KEY_FIRST_APP_OPEN_31778_EVENT_LOGGED"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public j3()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/l/d2;->b:I

    return v0
.end method

.method public k3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l/d2;->c:Ljava/lang/String;

    return-object v0
.end method

.method public n2()Z
    .locals 1

    const-string v0, "KEY_IS_GOLD_PURCHASED_WITH_GIFT_PROMO"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public o3(ILandroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    const-string v1, "tc_premium_state_settings"

    .line 1
    invoke-virtual {p2, v1, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "premiumStateSetting"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "premiumTabAnimationLastShown"

    .line 3
    invoke-static {p2}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    .line 4
    invoke-virtual {p0, p1, p2, v0}, Le/a/p5/t0/a;->l3(Landroid/content/SharedPreferences;Ljava/util/Set;Z)I

    :cond_0
    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "KEY_CARD_DISMISS_CACHE"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public t0()I
    .locals 2

    const-string v0, "KEY_HOME_TAB_PROMO_GENERIC_DISMISSED_COUNT"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public t1()Z
    .locals 2

    const-string v0, "KEY_IS_WINBACK_PRODUCT_PRESENT"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public u2(Z)V
    .locals 1

    const-string v0, "KEY_IS_WINBACK_PRODUCT_PRESENT"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public v()J
    .locals 3

    const-string v0, "premiumTabAnimationShownForPurchaseTime"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Le/a/p5/t0/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public v0(J)V
    .locals 1

    const-string v0, "KEY_TEMPORARY_PROMO_CARD_MARK_DISMISSED"

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Le/a/p5/t0/a;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public x1(I)V
    .locals 1

    const-string v0, "premiumTabAnimationLastShown"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public y0(Z)V
    .locals 1

    const-string v0, "isWebPurchasePendingStateChanged"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public y2()Ljava/lang/String;
    .locals 2

    const-string v0, "KEY_CARD_DISMISS_CACHE"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
