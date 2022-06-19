.class public final Le/a/l/p2/w0;
.super Le/a/p5/t0/a;
.source "SourceFile"

# interfaces
.implements Le/a/l/p2/v0;


# instance fields
.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    const-string v1, "tc_premium_state_settings"

    const/4 v2, 0x0

    const-string v3, "context.getSharedPrefere\u2026ME, Context.MODE_PRIVATE)"

    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->B0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1
    invoke-direct {p0, p1}, Le/a/p5/t0/a;-><init>(Landroid/content/SharedPreferences;)V

    const/4 p1, 0x2

    .line 2
    iput p1, p0, Le/a/l/p2/w0;->b:I

    .line 3
    iput-object v1, p0, Le/a/l/p2/w0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A0()Ljava/lang/String;
    .locals 1

    const-string v0, "purchaseToken"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public B()Z
    .locals 2

    const-string v0, "premiumHadPremiumBefore"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public C()Z
    .locals 1

    const-string v0, "premiumLastFetchDate"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "premiumLevel"

    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "premiumKind"

    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public D2()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/l/p2/w0;->H()Z

    move-result v0

    const-string v1, "none"

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "premiumLevel"

    .line 2
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Le/a/l/p2/w0;->H()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "regular"

    :cond_1
    return-object v0
.end method

.method public E1(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webPurchaseReport"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public G1()J
    .locals 3

    const-string v0, "premiumGraceExpiration"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Le/a/p5/t0/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public H()Z
    .locals 2

    const-string v0, "isPremiumExpired"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public H2()Lcom/truecaller/premium/data/ProductKind;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/truecaller/premium/data/ProductKind;->Companion:Lcom/truecaller/premium/data/ProductKind$a;

    const-string v1, "premiumKind"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Le/a/p5/t0/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/premium/data/ProductKind$a;->a(Ljava/lang/String;)Lcom/truecaller/premium/data/ProductKind;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    sget-object v0, Lcom/truecaller/premium/data/ProductKind;->NONE:Lcom/truecaller/premium/data/ProductKind;

    :goto_0
    return-object v0
.end method

.method public M()Z
    .locals 2

    const-string v0, "isWebPurchaseSuccessful"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public M2()J
    .locals 3

    const-string v0, "webPurchaseTimestamp"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Le/a/p5/t0/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public P()I
    .locals 3

    const-string v0, "premiumRenewable"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->contains(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, v0, v2}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    return v2
.end method

.method public R1()Z
    .locals 3

    const-string v0, "isInGracePeriod"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v0, "isPremiumExpired"

    .line 2
    invoke-virtual {p0, v0, v2}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public X(Z)V
    .locals 1

    const-string v0, "isWebPurchaseSuccessful"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public X1(J)V
    .locals 1

    const-string v0, "webPurchaseTimestamp"

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Le/a/p5/t0/a;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public clear()V
    .locals 18

    const-string v0, "isPremiumExpired"

    const-string v1, "premiumExpiresTimestamp"

    const-string v2, "premiumGraceExpiration"

    const-string v3, "premiumHadPremiumBefore"

    const-string v4, "premiumLevel"

    const-string v5, "premiumLastFetchDate"

    const-string v6, "premiumKind"

    const-string v7, "premiumRenewable"

    const-string v8, "premiumScope"

    const-string v9, "purchaseToken"

    const-string v10, "isInGracePeriod"

    const-string v11, "isInAppPurchaseAllowed"

    const-string v12, "paymentProvider"

    const-string v13, "webPurchaseTimestamp"

    const-string v14, "isWebPurchaseSuccessful"

    const-string v15, "webPurchaseReport"

    const-string v16, "isTruecallerAssistantSubscribed"

    const-string v17, "availableFeatures"

    .line 1
    filled-new-array/range {v0 .. v17}, [Ljava/lang/String;

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

.method public d0()Ljava/lang/String;
    .locals 2

    const-string v0, "webPurchaseReport"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f1(Ljava/lang/String;)V
    .locals 1

    const-string v0, "availableFeatures"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f2(Z)V
    .locals 1

    const-string v0, "isTruecallerAssistantSubscribed"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public getAvailableFeatures()Ljava/lang/String;
    .locals 1

    const-string v0, "availableFeatures"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h3()Z
    .locals 2

    const-string v0, "isTruecallerAssistantSubscribed"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public i0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "purchaseToken"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public j3()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/l/p2/w0;->b:I

    return v0
.end method

.method public k3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l/p2/w0;->c:Ljava/lang/String;

    return-object v0
.end method

.method public n()Le/a/l/p2/u0;
    .locals 4

    .line 1
    new-instance v0, Le/a/l/p2/u0;

    .line 2
    invoke-virtual {p0}, Le/a/l/p2/w0;->H()Z

    move-result v1

    .line 3
    invoke-virtual {p0}, Le/a/l/p2/w0;->D2()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Le/a/l/p2/w0;->H2()Lcom/truecaller/premium/data/ProductKind;

    move-result-object v3

    .line 5
    invoke-direct {v0, v1, v2, v3}, Le/a/l/p2/u0;-><init>(ZLjava/lang/String;Lcom/truecaller/premium/data/ProductKind;)V

    return-object v0
.end method

.method public o(Le/a/l/p2/x;)V
    .locals 5

    const-string v0, "premium"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p1, Le/a/l/p2/x;->j:Z

    const-string v1, "premiumExpiresTimestamp"

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Le/a/p5/t0/a;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "premiumHadPremiumBefore"

    .line 3
    invoke-virtual {p0, v0, v2}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    :cond_0
    invoke-virtual {p0, v1}, Le/a/p5/t0/a;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-wide v3, p1, Le/a/l/p2/x;->a:J

    .line 6
    invoke-virtual {p0, v1, v3, v4}, Le/a/p5/t0/a;->putLong(Ljava/lang/String;J)V

    .line 7
    :goto_0
    iget-boolean v0, p1, Le/a/l/p2/x;->j:Z

    const-string v1, "isPremiumExpired"

    .line 8
    invoke-virtual {p0, v1, v0}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    iget-boolean v0, p1, Le/a/l/p2/x;->k:Z

    const-string v1, "isInGracePeriod"

    .line 10
    invoke-virtual {p0, v1, v0}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    iget-wide v0, p1, Le/a/l/p2/x;->c:J

    const-string v3, "premiumGraceExpiration"

    .line 12
    invoke-virtual {p0, v3, v0, v1}, Le/a/p5/t0/a;->putLong(Ljava/lang/String;J)V

    .line 13
    iget-object v0, p1, Le/a/l/p2/x;->g:Ljava/lang/String;

    const-string v1, "value"

    .line 14
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "premiumLevel"

    .line 15
    invoke-virtual {p0, v3, v0}, Le/a/p5/t0/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0}, Lw3/b/a/b;-><init>()V

    const-string v3, "DateTime.now()"

    .line 17
    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-wide v3, v0, Lw3/b/a/e0/e;->a:J

    const-string v0, "premiumLastFetchDate"

    .line 19
    invoke-virtual {p0, v0, v3, v4}, Le/a/p5/t0/a;->putLong(Ljava/lang/String;J)V

    .line 20
    iget-object v0, p1, Le/a/l/p2/x;->h:Lcom/truecaller/premium/data/ProductKind;

    .line 21
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Lcom/truecaller/premium/data/ProductKind;->getKind()Ljava/lang/String;

    move-result-object v0

    const-string v3, "premiumKind"

    invoke-virtual {p0, v3, v0}, Le/a/p5/t0/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget v0, p1, Le/a/l/p2/x;->d:I

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const-string v3, "premiumRenewable"

    .line 24
    invoke-virtual {p0, v3, v0}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    .line 25
    iget-object v0, p1, Le/a/l/p2/x;->i:Lcom/truecaller/premium/data/PremiumScope;

    .line 26
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Lcom/truecaller/premium/data/PremiumScope;->getScope()Ljava/lang/String;

    move-result-object v0

    const-string v3, "premiumScope"

    invoke-virtual {p0, v3, v0}, Le/a/p5/t0/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-wide v3, p1, Le/a/l/p2/x;->b:J

    const-string v0, "purchaseTime"

    .line 29
    invoke-virtual {p0, v0, v3, v4}, Le/a/p5/t0/a;->putLong(Ljava/lang/String;J)V

    .line 30
    iget-boolean v0, p1, Le/a/l/p2/x;->j:Z

    xor-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 31
    iget-boolean v0, p1, Le/a/l/p2/x;->l:Z

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x0

    const-string v2, "purchaseToken"

    .line 32
    invoke-virtual {p0, v2, v0}, Le/a/p5/t0/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_4
    iget-boolean v0, p1, Le/a/l/p2/x;->l:Z

    const-string v2, "isInAppPurchaseAllowed"

    .line 34
    invoke-virtual {p0, v2, v0}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    .line 35
    iget-object p1, p1, Le/a/l/p2/x;->m:Lcom/truecaller/premium/provider/Store;

    .line 36
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lcom/truecaller/premium/provider/Store;->getProviderName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "paymentProvider"

    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public o3(ILandroid/content/Context;)V
    .locals 19

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v0, p2

    const-string v1, "context"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x1

    const-string v9, "isPremiumGracePeriodExpired"

    if-ge v7, v8, :cond_3

    const-string v1, "core_settings"

    const/4 v10, 0x0

    .line 1
    invoke-virtual {v0, v1, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v1, "tc.settings"

    .line 2
    invoke-virtual {v0, v1, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v0, "coreSettings"

    .line 3
    invoke-static {v11, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "isPremiumExpired"

    const-string v14, "isPremiumGracePeriodExpired"

    const-string v15, "premiumExpiresTimestamp"

    const-string v16, "premiumHadPremiumBefore"

    const-string v17, "premiumLastFetchDate"

    const-string v18, "premiumScope"

    .line 4
    filled-new-array/range {v13 .. v18}, [Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const/4 v13, 0x0

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    .line 6
    invoke-static/range {v0 .. v5}, Le/a/p5/t0/a;->m3(Le/a/p5/t0/a;Landroid/content/SharedPreferences;Ljava/util/Set;ZILjava/lang/Object;)I

    const-string v0, "oldTcSettings"

    .line 7
    invoke-static {v12, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "premiumGraceExpiration"

    const-string v0, "premiumLevel"

    const-string v1, "premiumKind"

    const-string v2, "premiumRenewable"

    .line 8
    filled-new-array {v5, v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    move-object/from16 v0, p0

    move-object v1, v12

    move v3, v13

    move v4, v14

    move-object v13, v5

    move-object v5, v15

    .line 10
    invoke-static/range {v0 .. v5}, Le/a/p5/t0/a;->m3(Le/a/p5/t0/a;Landroid/content/SharedPreferences;Ljava/util/Set;ZILjava/lang/Object;)I

    const-string v0, "isPremiumExpired"

    .line 11
    invoke-virtual {v6, v0}, Le/a/p5/t0/a;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v6, v9}, Le/a/p5/t0/a;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "premiumExpiresTimestamp"

    invoke-virtual {v6, v1}, Le/a/p5/t0/a;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-wide/16 v2, 0x0

    .line 12
    invoke-virtual {v6, v13, v2, v3}, Le/a/p5/t0/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 13
    new-instance v13, Lw3/b/a/b;

    invoke-direct {v13}, Lw3/b/a/b;-><init>()V

    const-string v14, "DateTime.now()"

    .line 14
    invoke-static {v13, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v9

    .line 15
    iget-wide v8, v13, Lw3/b/a/e0/e;->a:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v10

    :goto_0
    const-string v5, "isInGracePeriod"

    .line 16
    invoke-virtual {v6, v5, v4}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    const-wide/16 v4, 0x3e8

    const-string v8, "premiumDuration"

    .line 17
    invoke-interface {v11, v8, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    mul-long/2addr v8, v4

    const-string v4, "premiumTimestamp"

    .line 18
    invoke-interface {v12, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    add-long v11, v4, v8

    .line 19
    invoke-virtual {v6, v1, v11, v12}, Le/a/p5/t0/a;->putLong(Ljava/lang/String;J)V

    cmp-long v1, v8, v2

    if-lez v1, :cond_2

    .line 20
    new-instance v1, Lw3/b/a/b;

    invoke-direct {v1}, Lw3/b/a/b;-><init>()V

    .line 21
    invoke-static {v1, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-wide v1, v1, Lw3/b/a/e0/e;->a:J

    sub-long/2addr v1, v4

    cmp-long v1, v1, v8

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    move v8, v10

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v8, 0x1

    .line 23
    :goto_2
    invoke-virtual {v6, v0, v8}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_3
    move-object/from16 v16, v9

    :goto_3
    const/4 v0, 0x2

    if-ge v7, v0, :cond_4

    move-object/from16 v0, v16

    .line 24
    invoke-virtual {v6, v0}, Le/a/p5/t0/a;->remove(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public s()V
    .locals 1

    const-string v0, "premiumHadPremiumBefore"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public s1()Z
    .locals 2

    const-string v0, "isInAppPurchaseAllowed"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public w0()J
    .locals 3

    const-string v0, "premiumExpiresTimestamp"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Le/a/p5/t0/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public x()J
    .locals 3

    const-string v0, "purchaseTime"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Le/a/p5/t0/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
