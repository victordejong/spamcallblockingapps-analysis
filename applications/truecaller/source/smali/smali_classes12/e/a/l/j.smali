.class public final Le/a/l/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/n0;


# instance fields
.field public final a:Le/a/w2/a;


# direct methods
.method public constructor <init>(Le/a/w2/a;)V
    .locals 1

    const-string v0, "appsFlyerEventsTracker"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/j;->a:Le/a/w2/a;

    return-void
.end method


# virtual methods
.method public a(Le/a/l/m0;)V
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b(Le/a/l/m0;)V
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public c(Le/a/l/n2/f;)V
    .locals 6

    const-string v0, "subscription"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l/j;->a:Le/a/w2/a;

    .line 2
    iget-wide v1, p1, Le/a/l/n2/f;->e:J

    const v3, 0xf4240

    int-to-long v3, v3

    .line 3
    div-long/2addr v1, v3

    long-to-int v1, v1

    .line 4
    iget-object v2, p1, Le/a/l/n2/f;->d:Ljava/lang/String;

    .line 5
    iget-object p1, p1, Le/a/l/n2/f;->a:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "sku"

    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x4

    new-array v3, v3, [Ls1/k;

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 8
    new-instance v4, Ls1/k;

    const-string v5, "af_revenue"

    invoke-direct {v4, v5, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v4, v3, v1

    .line 9
    new-instance v1, Ls1/k;

    const-string v4, "af_currency"

    invoke-direct {v1, v4, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v1, v3, v2

    .line 10
    new-instance v1, Ls1/k;

    const-string v2, "af_content_id"

    invoke-direct {v1, v2, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x2

    aput-object v1, v3, p1

    .line 11
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    new-instance v1, Ls1/k;

    const-string v2, "renewal"

    invoke-direct {v1, v2, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x3

    aput-object v1, v3, p1

    .line 13
    invoke-static {v3}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object p1

    const-string v1, "af_subscribe"

    .line 14
    invoke-virtual {v0, v1, p1}, Le/a/w2/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public d(Le/a/l/m0;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "params"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v1, Le/a/l/m0;->d:Le/a/l/n2/f;

    if-eqz v2, :cond_2

    .line 2
    iget-object v3, v2, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    .line 3
    sget-object v4, Lcom/truecaller/premium/data/ProductKind;->CONSUMABLE_YEARLY:Lcom/truecaller/premium/data/ProductKind;

    const-string v5, "purchase_source"

    const-string v6, "af_currency"

    const-string v7, "af_revenue"

    const/4 v8, 0x5

    const-string v9, "source"

    const-string v10, "sku"

    const v11, 0xf4240

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/16 v16, 0x0

    if-ne v3, v4, :cond_0

    .line 4
    iget-object v3, v0, Le/a/l/j;->a:Le/a/w2/a;

    .line 5
    iget-wide v12, v2, Le/a/l/n2/f;->e:J

    move-object/from16 v17, v5

    int-to-long v4, v11

    .line 6
    div-long/2addr v12, v4

    long-to-int v4, v12

    .line 7
    iget-object v5, v2, Le/a/l/n2/f;->d:Ljava/lang/String;

    .line 8
    iget-object v2, v2, Le/a/l/n2/f;->a:Ljava/lang/String;

    .line 9
    iget-object v1, v1, Le/a/l/m0;->a:Lcom/truecaller/premium/PremiumLaunchContext;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v8, v8, [Ls1/k;

    .line 12
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 13
    new-instance v9, Ls1/k;

    invoke-direct {v9, v7, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v8, v16

    .line 14
    new-instance v4, Ls1/k;

    invoke-direct {v4, v6, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v8, v15

    .line 15
    new-instance v4, Ls1/k;

    move-object/from16 v5, v17

    invoke-direct {v4, v5, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v8, v14

    .line 16
    new-instance v1, Ls1/k;

    invoke-direct {v1, v10, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x3

    aput-object v1, v8, v4

    .line 17
    new-instance v1, Ls1/k;

    const-string v4, "af_content_id"

    invoke-direct {v1, v4, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x4

    aput-object v1, v8, v2

    .line 18
    invoke-static {v8}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "af_purchase"

    .line 19
    invoke-virtual {v3, v2, v1}, Le/a/w2/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 20
    :cond_0
    iget-object v3, v0, Le/a/l/j;->a:Le/a/w2/a;

    .line 21
    iget-boolean v12, v1, Le/a/l/m0;->e:Z

    xor-int/2addr v12, v15

    move-object/from16 v17, v5

    .line 22
    iget-wide v4, v2, Le/a/l/n2/f;->e:J

    int-to-long v14, v11

    .line 23
    div-long/2addr v4, v14

    long-to-int v4, v4

    .line 24
    iget-object v5, v2, Le/a/l/n2/f;->d:Ljava/lang/String;

    .line 25
    iget-object v11, v1, Le/a/l/m0;->a:Lcom/truecaller/premium/PremiumLaunchContext;

    .line 26
    invoke-virtual {v11}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v11

    .line 27
    iget-object v2, v2, Le/a/l/n2/f;->a:Ljava/lang/String;

    .line 28
    iget-object v1, v1, Le/a/l/m0;->c:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 29
    invoke-static {v1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 30
    :goto_0
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x6

    new-array v9, v9, [Ls1/k;

    .line 31
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 32
    new-instance v14, Ls1/k;

    const-string v15, "new_subscription"

    invoke-direct {v14, v15, v12}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v14, v9, v16

    .line 33
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 34
    new-instance v12, Ls1/k;

    invoke-direct {v12, v7, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x1

    aput-object v12, v9, v4

    .line 35
    new-instance v4, Ls1/k;

    invoke-direct {v4, v6, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x2

    aput-object v4, v9, v5

    .line 36
    new-instance v4, Ls1/k;

    move-object/from16 v5, v17

    invoke-direct {v4, v5, v11}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x3

    aput-object v4, v9, v5

    .line 37
    new-instance v4, Ls1/k;

    invoke-direct {v4, v10, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x4

    aput-object v4, v9, v2

    .line 38
    new-instance v2, Ls1/k;

    const-string v4, "old_sku"

    invoke-direct {v2, v4, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v9, v8

    .line 39
    invoke-static {v9}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "af_subscribe"

    .line 40
    invoke-virtual {v3, v2, v1}, Le/a/w2/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_1
    return-void
.end method
