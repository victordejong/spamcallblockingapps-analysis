.class public final Le/a/c/i/l/g/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/i/l/g/a;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/c/i/l/f/a;

.field public final c:Le/a/c/e/c;

.field public final d:Le/a/c/b0/a;

.field public final e:Le/a/b0/m/c/a;

.field public final f:Le/a/c/a/i/g;

.field public final g:Le/a/c/w/o0/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/c/i/l/f/a;Le/a/c/e/c;Le/a/c/b0/a;Le/a/b0/m/c/a;Le/a/c/a/i/g;Le/a/c/w/o0/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartNotificationManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsAnalyticsManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsUpdateProcessor"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addressProfileLoader"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsUiStringResourceFetcher"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartSmsFeatureFilter"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/i/l/g/b;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/c/i/l/g/b;->b:Le/a/c/i/l/f/a;

    iput-object p3, p0, Le/a/c/i/l/g/b;->c:Le/a/c/e/c;

    iput-object p4, p0, Le/a/c/i/l/g/b;->d:Le/a/c/b0/a;

    iput-object p5, p0, Le/a/c/i/l/g/b;->e:Le/a/b0/m/c/a;

    iput-object p6, p0, Le/a/c/i/l/g/b;->f:Le/a/c/a/i/g;

    iput-object p7, p0, Le/a/c/i/l/g/b;->g:Le/a/c/w/o0/g;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/insights/models/pdo/ExtendedPdo;ILe/a/c/i/l/f/f;ZLjava/lang/String;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            "I",
            "Le/a/c/i/l/f/f;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p8

    instance-of v1, v0, Le/a/c/i/l/g/b$a;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Le/a/c/i/l/g/b$a;

    iget v2, v1, Le/a/c/i/l/g/b$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/c/i/l/g/b$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/c/i/l/g/b$a;

    invoke-direct {v1, v8, v0}, Le/a/c/i/l/g/b$a;-><init>(Le/a/c/i/l/g/b;Ls1/w/d;)V

    :goto_0
    move-object v7, v1

    iget-object v0, v7, Le/a/c/i/l/g/b$a;->d:Ljava/lang/Object;

    sget-object v9, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v7, Le/a/c/i/l/g/b$a;->e:I

    const/4 v10, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v10, :cond_1

    iget-boolean v1, v7, Le/a/c/i/l/g/b$a;->i:Z

    iget v2, v7, Le/a/c/i/l/g/b$a;->h:I

    iget-object v3, v7, Le/a/c/i/l/g/b$a;->g:Ljava/lang/Object;

    check-cast v3, Le/a/c/i/l/g/b;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move v12, v1

    move v11, v2

    goto :goto_1

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object v8, v7, Le/a/c/i/l/g/b$a;->g:Ljava/lang/Object;

    move/from16 v11, p2

    iput v11, v7, Le/a/c/i/l/g/b$a;->h:I

    move/from16 v12, p7

    iput-boolean v12, v7, Le/a/c/i/l/g/b$a;->i:Z

    iput v10, v7, Le/a/c/i/l/g/b$a;->e:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p7

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 5
    invoke-virtual/range {v0 .. v7}, Le/a/c/i/l/g/b;->b(Lcom/truecaller/insights/models/pdo/ExtendedPdo;ZZLe/a/c/i/l/f/f;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_3

    return-object v9

    :cond_3
    move-object v3, v8

    .line 6
    :goto_1
    check-cast v0, Le/a/c/r/k/f;

    if-eqz v0, :cond_6

    .line 7
    iget-object v1, v3, Le/a/c/i/l/g/b;->b:Le/a/c/i/l/f/a;

    invoke-interface {v1, v11}, Le/a/c/i/l/f/a;->d(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    move v10, v2

    goto :goto_2

    .line 8
    :cond_4
    iget-object v1, v3, Le/a/c/i/l/g/b;->b:Le/a/c/i/l/f/a;

    invoke-interface {v1, v0, v11}, Le/a/c/i/l/f/a;->c(Le/a/c/r/k/f;I)V

    :goto_2
    if-eqz v10, :cond_6

    const-string v1, ""

    .line 9
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v4, "feature"

    .line 10
    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "eventCategory"

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "eventInfo"

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "actionType"

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "actionInfo"

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "propertyMap"

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "updates_notification"

    const-string v4, "<set-?>"

    .line 11
    invoke-static {v14, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "create"

    .line 12
    invoke-static {v5, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v6, v0, Le/a/c/r/k/f;->k:Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    .line 14
    invoke-virtual {v6}, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->getCategory()Ljava/lang/String;

    move-result-object v15

    .line 15
    invoke-static {v15, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v0, v0, Le/a/c/r/k/f;->k:Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    .line 17
    invoke-virtual {v0}, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->getSenderId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Le/a/c/c0/q;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v12, :cond_5

    const-string v6, "im"

    goto :goto_3

    :cond_5
    const-string v6, "sms"

    .line 19
    :goto_3
    invoke-static {v6, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v4, Le/a/c/r/d/b;

    .line 21
    new-instance v7, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1c0

    const/16 v25, 0x0

    move-object v13, v7

    move-object/from16 v16, v0

    move-object/from16 v17, v6

    move-object/from16 v18, v5

    move-object/from16 v19, v1

    invoke-direct/range {v13 .. v25}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 22
    invoke-static {v2}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 23
    invoke-direct {v4, v7, v0}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 24
    iget-object v0, v3, Le/a/c/i/l/g/b;->c:Le/a/c/e/c;

    invoke-interface {v0, v4}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    .line 25
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 26
    :cond_6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final b(Lcom/truecaller/insights/models/pdo/ExtendedPdo;ZZLe/a/c/i/l/f/f;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            "ZZ",
            "Le/a/c/i/l/f/f;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/c/r/k/f;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    instance-of v5, v4, Le/a/c/i/l/g/b$b;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Le/a/c/i/l/g/b$b;

    iget v6, v5, Le/a/c/i/l/g/b$b;->e:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_0

    sub-int/2addr v6, v7

    iput v6, v5, Le/a/c/i/l/g/b$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v5, Le/a/c/i/l/g/b$b;

    invoke-direct {v5, v0, v4}, Le/a/c/i/l/g/b$b;-><init>(Le/a/c/i/l/g/b;Ls1/w/d;)V

    :goto_0
    iget-object v4, v5, Le/a/c/i/l/g/b$b;->d:Ljava/lang/Object;

    sget-object v6, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v7, v5, Le/a/c/i/l/g/b$b;->e:I

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v7, :cond_3

    if-eq v7, v9, :cond_2

    if-ne v7, v8, :cond_1

    iget-boolean v1, v5, Le/a/c/i/l/g/b$b;->o:Z

    iget-boolean v2, v5, Le/a/c/i/l/g/b$b;->n:Z

    iget-object v3, v5, Le/a/c/i/l/g/b$b;->m:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v6, v5, Le/a/c/i/l/g/b$b;->l:Ljava/lang/Object;

    check-cast v6, Le/a/b0/m/a/a;

    iget-object v7, v5, Le/a/c/i/l/g/b$b;->k:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v5, Le/a/c/i/l/g/b$b;->j:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v11, v5, Le/a/c/i/l/g/b$b;->i:Ljava/lang/Object;

    check-cast v11, Le/a/c/i/l/f/f;

    iget-object v12, v5, Le/a/c/i/l/g/b$b;->h:Ljava/lang/Object;

    check-cast v12, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    iget-object v5, v5, Le/a/c/i/l/g/b$b;->g:Ljava/lang/Object;

    check-cast v5, Le/a/c/i/l/g/b;

    invoke-static {v4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v9, v3

    move-object v3, v7

    move-object v7, v6

    move v6, v2

    goto/16 :goto_2

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-boolean v1, v5, Le/a/c/i/l/g/b$b;->o:Z

    iget-boolean v2, v5, Le/a/c/i/l/g/b$b;->n:Z

    iget-object v3, v5, Le/a/c/i/l/g/b$b;->l:Ljava/lang/Object;

    check-cast v3, Le/a/b0/m/a/a;

    iget-object v7, v5, Le/a/c/i/l/g/b$b;->k:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v11, v5, Le/a/c/i/l/g/b$b;->j:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v5, Le/a/c/i/l/g/b$b;->i:Ljava/lang/Object;

    check-cast v12, Le/a/c/i/l/f/f;

    iget-object v13, v5, Le/a/c/i/l/g/b$b;->h:Ljava/lang/Object;

    check-cast v13, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    iget-object v14, v5, Le/a/c/i/l/g/b$b;->g:Ljava/lang/Object;

    check-cast v14, Le/a/c/i/l/g/b;

    invoke-static {v4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v16, v12

    move v12, v2

    move-object v2, v11

    move-object/from16 v11, v16

    move-object/from16 v17, v7

    move-object v7, v3

    move-object/from16 v3, v17

    goto :goto_1

    :cond_3
    invoke-static {v4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v4, v0, Le/a/c/i/l/g/b;->e:Le/a/b0/m/c/a;

    invoke-interface {v4, v3}, Le/a/b0/m/c/a;->Kw(Ljava/lang/String;)Le/a/b0/m/a/a;

    move-result-object v4

    .line 5
    iget-object v7, v0, Le/a/c/i/l/g/b;->d:Le/a/c/b0/a;

    .line 6
    iput-object v0, v5, Le/a/c/i/l/g/b$b;->g:Ljava/lang/Object;

    iput-object v1, v5, Le/a/c/i/l/g/b$b;->h:Ljava/lang/Object;

    move-object/from16 v11, p4

    iput-object v11, v5, Le/a/c/i/l/g/b$b;->i:Ljava/lang/Object;

    iput-object v2, v5, Le/a/c/i/l/g/b$b;->j:Ljava/lang/Object;

    iput-object v3, v5, Le/a/c/i/l/g/b$b;->k:Ljava/lang/Object;

    iput-object v4, v5, Le/a/c/i/l/g/b$b;->l:Ljava/lang/Object;

    move/from16 v12, p2

    iput-boolean v12, v5, Le/a/c/i/l/g/b$b;->n:Z

    move/from16 v13, p3

    iput-boolean v13, v5, Le/a/c/i/l/g/b$b;->o:Z

    iput v9, v5, Le/a/c/i/l/g/b$b;->e:I

    .line 7
    invoke-virtual {v7, v2, v1, v10, v5}, Le/a/c/b0/a;->a(Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ExtendedPdo;Le/a/c/g/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v6, :cond_4

    return-object v6

    :cond_4
    move-object v14, v0

    move/from16 v16, v13

    move-object v13, v1

    move/from16 v1, v16

    move-object/from16 v17, v7

    move-object v7, v4

    move-object/from16 v4, v17

    .line 8
    :goto_1
    check-cast v4, Le/a/c/b0/c;

    if-eqz v4, :cond_9

    .line 9
    iget-object v4, v4, Le/a/c/b0/c;->a:Ljava/lang/String;

    .line 10
    invoke-static {v4}, Le/a/c/p/a;->v2(Ljava/lang/String;)Le/a/c/r/m/b;

    move-result-object v15

    .line 11
    iget-object v9, v14, Le/a/c/i/l/g/b;->f:Le/a/c/a/i/g;

    iget-object v10, v14, Le/a/c/i/l/g/b;->a:Landroid/content/Context;

    .line 12
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "updatesLabel"

    invoke-static {v15, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "context"

    invoke-static {v10, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {v15, v10}, Le/a/c/a/r/f;->b(Le/a/c/r/m/b;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 14
    iput-object v14, v5, Le/a/c/i/l/g/b$b;->g:Ljava/lang/Object;

    iput-object v13, v5, Le/a/c/i/l/g/b$b;->h:Ljava/lang/Object;

    iput-object v11, v5, Le/a/c/i/l/g/b$b;->i:Ljava/lang/Object;

    iput-object v2, v5, Le/a/c/i/l/g/b$b;->j:Ljava/lang/Object;

    iput-object v3, v5, Le/a/c/i/l/g/b$b;->k:Ljava/lang/Object;

    iput-object v7, v5, Le/a/c/i/l/g/b$b;->l:Ljava/lang/Object;

    iput-object v9, v5, Le/a/c/i/l/g/b$b;->m:Ljava/lang/Object;

    iput-boolean v12, v5, Le/a/c/i/l/g/b$b;->n:Z

    iput-boolean v1, v5, Le/a/c/i/l/g/b$b;->o:Z

    iput v8, v5, Le/a/c/i/l/g/b$b;->e:I

    .line 15
    iget-object v8, v14, Le/a/c/i/l/g/b;->g:Le/a/c/w/o0/g;

    new-instance v10, Le/a/c/g/v;

    invoke-direct {v10, v3, v4}, Le/a/c/g/v;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v10, v5}, Le/a/c/w/o0/g;->d(Le/a/c/g/v;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v6, :cond_5

    return-object v6

    :cond_5
    move-object v8, v2

    move v6, v12

    move-object v12, v13

    move-object v5, v14

    .line 16
    :goto_2
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x0

    return-object v2

    :cond_6
    const/4 v2, 0x0

    if-eqz v12, :cond_7

    .line 17
    invoke-virtual {v12}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getSpamCategory()I

    move-result v4

    const/4 v10, 0x4

    if-ne v4, v10, :cond_7

    return-object v2

    .line 18
    :cond_7
    new-instance v2, Le/a/c/r/b$g;

    const-wide/16 v12, -0x1

    const/4 v4, 0x1

    move-object/from16 p1, v2

    move-wide/from16 p2, v12

    move-object/from16 p4, v3

    move-object/from16 p5, v9

    move/from16 p6, v4

    invoke-direct/range {p1 .. p6}, Le/a/c/r/b$g;-><init>(JLjava/lang/String;Ljava/lang/String;Z)V

    .line 19
    :try_start_0
    iget-object v3, v5, Le/a/c/i/l/g/b;->a:Landroid/content/Context;

    if-eqz v1, :cond_8

    const/4 v9, 0x1

    goto :goto_3

    :cond_8
    const/4 v9, 0x0

    :goto_3
    move-object v4, v8

    move-object v5, v7

    move v7, v9

    move-object v8, v11

    .line 20
    invoke-static/range {v2 .. v8}, Le/a/m0/a1$k;->F1(Le/a/c/r/b$g;Landroid/content/Context;Ljava/lang/String;Le/a/b0/m/a/a;ZZLe/a/c/i/l/f/f;)Le/a/c/r/k/f;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 21
    :catch_0
    sget-object v1, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    new-instance v2, Lcom/truecaller/log/UnmutedException$j;

    const-string v3, "Binding Ui for Insights Update Notification failed"

    invoke-direct {v2, v3}, Lcom/truecaller/log/UnmutedException$j;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 22
    invoke-virtual {v1, v2, v3}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object v10, v3

    :goto_4
    return-object v10

    :cond_9
    move-object v3, v10

    return-object v3
.end method
