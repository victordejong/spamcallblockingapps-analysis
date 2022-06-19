.class public final Le/a/r/n;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.wizard.WizardListenerImpl$onWizardCompleted$2"
    f = "WizardListenerImpl.kt"
    l = {
        0x5e,
        0x67
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/r/o;

.field public final synthetic g:Lcom/truecaller/wizard/framework/WizardCompletionType;


# direct methods
.method public constructor <init>(Le/a/r/o;Lcom/truecaller/wizard/framework/WizardCompletionType;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r/n;->f:Le/a/r/o;

    iput-object p2, p0, Le/a/r/n;->g:Lcom/truecaller/wizard/framework/WizardCompletionType;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/r/n;

    iget-object v0, p0, Le/a/r/n;->f:Le/a/r/o;

    iget-object v1, p0, Le/a/r/n;->g:Lcom/truecaller/wizard/framework/WizardCompletionType;

    invoke-direct {p1, v0, v1, p2}, Le/a/r/n;-><init>(Le/a/r/o;Lcom/truecaller/wizard/framework/WizardCompletionType;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/r/n;

    iget-object v0, p0, Le/a/r/n;->f:Le/a/r/o;

    iget-object v1, p0, Le/a/r/n;->g:Lcom/truecaller/wizard/framework/WizardCompletionType;

    invoke-direct {p1, v0, v1, p2}, Le/a/r/n;-><init>(Le/a/r/o;Lcom/truecaller/wizard/framework/WizardCompletionType;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/r/n;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/r/n;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Le/a/r/n;->g:Lcom/truecaller/wizard/framework/WizardCompletionType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_4

    if-eq v2, v3, :cond_3

    goto/16 :goto_2

    .line 5
    :cond_3
    iget-object v2, v0, Le/a/r/n;->f:Le/a/r/o;

    .line 6
    iget-object v2, v2, Le/a/r/o;->d:Lo3/a;

    .line 7
    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a4/e;

    iput v3, v0, Le/a/r/n;->e:I

    invoke-interface {v2, v0}, Le/a/a4/e;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_b

    return-object v1

    .line 8
    :cond_4
    iget-object v2, v0, Le/a/r/n;->f:Le/a/r/o;

    .line 9
    iget-object v2, v2, Le/a/r/o;->d:Lo3/a;

    .line 10
    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a4/e;

    iput v4, v0, Le/a/r/n;->e:I

    invoke-interface {v2, v0}, Le/a/a4/e;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    return-object v1

    .line 11
    :cond_5
    :goto_0
    iget-object v1, v0, Le/a/r/n;->f:Le/a/r/o;

    .line 12
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "languageAuto"

    .line 13
    invoke-static {v2, v4}, Le/a/n/g0;->B(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_6

    .line 14
    sget-boolean v3, Lcom/truecaller/TrueApp;->r:Z

    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v3

    .line 15
    iget-object v1, v1, Le/a/r/o;->i:Le/a/b0/k/f;

    const-string v6, "language"

    invoke-static {v6}, Le/a/n/g0;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "CommonSettings.getString\u2026monSettings.LANGUAGE_ISO)"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Le/a/b0/k/f;->e(Ljava/lang/String;)Le/a/b0/k/c;

    move-result-object v1

    .line 16
    invoke-static {v2, v5}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    .line 17
    iget-object v1, v1, Le/a/b0/k/c;->b:Ljava/lang/String;

    .line 18
    invoke-static {v6, v1}, Le/a/j4/b/a/h;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {v3}, Le/a/j4/b/a/h;->D(Landroid/content/Context;)V

    .line 20
    new-instance v1, Le/a/j4/b/a/c$a;

    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v2

    invoke-direct {v1, v2}, Le/a/j4/b/a/c$a;-><init>(Le/a/b0/g/a;)V

    const/4 v2, 0x0

    invoke-static {v1, v2, v4}, Le/a/e/a2;->q(Ljava/lang/Runnable;Lq3/a/g0;I)Lq3/a/p1;

    .line 21
    :cond_6
    iget-object v1, v0, Le/a/r/n;->f:Le/a/r/o;

    .line 22
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    add-long/2addr v6, v2

    const-string v2, "adsDisabledUntil"

    .line 24
    invoke-static {v2, v6, v7}, Le/a/j4/b/a/h;->w(Ljava/lang/String;J)V

    .line 25
    iget-object v1, v1, Le/a/r/o;->j:Le/a/n4/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 26
    sget-wide v6, Le/a/n4/c/e;->a:J

    add-long/2addr v2, v6

    const-string v4, "KeyCallLogPromoDisabledUntil"

    .line 27
    invoke-interface {v1, v4, v2, v3}, Le/a/b0/g/b;->a(Ljava/lang/String;J)V

    .line 28
    iget-object v1, v0, Le/a/r/n;->f:Le/a/r/o;

    .line 29
    iget-object v1, v1, Le/a/r/o;->c:Landroid/content/Context;

    .line 30
    invoke-static {v1, v5}, Le/a/e/a2;->c0(Landroid/content/Context;I)V

    .line 31
    iget-object v1, v0, Le/a/r/n;->f:Le/a/r/o;

    .line 32
    iget-object v2, v1, Le/a/r/o;->k:Le/a/b0/o/a;

    const-string v3, "ppolicy_viewed"

    invoke-interface {v2, v3}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "consentWizard"

    if-eqz v2, :cond_7

    .line 33
    iget-object v2, v1, Le/a/r/o;->l:Le/a/r2/f;

    const-string v6, "viewed"

    invoke-static {v2, v4, v6}, Le/m/d/y/n;->y1(Le/a/r2/f;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v2, v1, Le/a/r/o;->k:Le/a/b0/o/a;

    invoke-interface {v2, v3}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    .line 35
    :cond_7
    iget-object v2, v1, Le/a/r/o;->k:Le/a/b0/o/a;

    const-string v3, "ppolicy_analytics"

    invoke-interface {v2, v3}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 36
    iget-object v2, v1, Le/a/r/o;->l:Le/a/r2/f;

    const-string v6, "accepted"

    invoke-static {v2, v4, v6}, Le/m/d/y/n;->y1(Le/a/r2/f;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v1, v1, Le/a/r/o;->k:Le/a/b0/o/a;

    invoke-interface {v1, v3}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    .line 38
    :cond_8
    iget-object v1, v0, Le/a/r/n;->f:Le/a/r/o;

    .line 39
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v2, Ln3/m0/q;->b:Ln3/m0/q;

    sget-object v3, Ln3/m0/h;->a:Ln3/m0/h;

    const-wide/16 v6, 0xf

    invoke-static {v6, v7}, Le/m/d/y/n;->G0(J)Ls1/k;

    move-result-object v4

    const-string v8, "TopSpammersSyncWorkAction"

    const-string v9, "BackupLogWorker"

    const-string v10, "SendPresenceSettingWorkAction"

    const-string v11, "AdsConsentRefreshAction"

    .line 41
    filled-new-array {v8, v9, v10, v11}, [Ljava/lang/String;

    move-result-object v14

    :goto_1
    const/4 v8, 0x4

    if-ge v5, v8, :cond_9

    .line 42
    aget-object v9, v14, v5

    .line 43
    iget-object v8, v1, Le/a/r/o;->h:Le/a/y2/q/a;

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    move-object v10, v4

    invoke-static/range {v8 .. v13}, Le/m/d/y/n;->z1(Le/a/y2/q/a;Ljava/lang/String;Ls1/k;Ln3/m0/f;ILjava/lang/Object;)Ln3/m0/s;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 44
    :cond_9
    iget-object v8, v1, Le/a/r/o;->h:Le/a/y2/q/a;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    const-string v9, "SpamCategoriesFetchWorkAction"

    invoke-static/range {v8 .. v13}, Le/m/d/y/n;->z1(Le/a/y2/q/a;Ljava/lang/String;Ls1/k;Ln3/m0/f;ILjava/lang/Object;)Ln3/m0/s;

    .line 45
    iget-object v4, v1, Le/a/r/o;->c:Landroid/content/Context;

    const-string v5, "context"

    .line 46
    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-static {v4}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v14

    const-string v8, "WorkManager.getInstance(context)"

    .line 48
    invoke-static {v14, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v19, 0xc

    const/16 v17, 0x0

    const-string v15, "AvailableTagsDownloadWorkAction"

    move-object/from16 v16, v4

    move-object/from16 v18, v10

    invoke-static/range {v14 .. v19}, Le/a/y2/q/c;->c(Ln3/m0/y;Ljava/lang/String;Landroid/content/Context;Ls1/k;Ln3/m0/f;I)Ln3/m0/s;

    .line 49
    iget-object v4, v1, Le/a/r/o;->c:Landroid/content/Context;

    .line 50
    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-static {v4}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v11

    .line 52
    invoke-static {v11, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v26, 0x0

    const/16 v24, 0x0

    const/16 v25, 0xc

    const/16 v23, 0x0

    const-string v21, "TagKeywordsDownloadWorkAction"

    move-object/from16 v20, v11

    move-object/from16 v22, v4

    invoke-static/range {v20 .. v25}, Le/a/y2/q/c;->c(Ln3/m0/y;Ljava/lang/String;Landroid/content/Context;Ls1/k;Ln3/m0/f;I)Ln3/m0/s;

    .line 53
    iget-object v4, v1, Le/a/r/o;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v11, "context.applicationContext"

    invoke-static {v4, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object v12, Lcom/truecaller/analytics/heartbeat/HeartBeatType;->Activation:Lcom/truecaller/analytics/heartbeat/HeartBeatType;

    .line 56
    invoke-static {v4}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v13

    const-string v14, "WorkManager.getInstance(this)"

    .line 57
    invoke-static {v13, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v14, 0x5

    .line 58
    invoke-static {v14, v15}, Le/m/d/y/n;->G0(J)Ls1/k;

    move-result-object v14

    .line 59
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 60
    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    const-string v9, "beatType"

    .line 61
    invoke-virtual {v15, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v9, Ln3/m0/f;

    invoke-direct {v9, v15}, Ln3/m0/f;-><init>(Ljava/util/Map;)V

    .line 63
    invoke-static {v9}, Ln3/m0/f;->g(Ln3/m0/f;)[B

    const-string v12, "Data.Builder().putString\u2026_TYPE, type.name).build()"

    .line 64
    invoke-static {v9, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "AppHeartBeatWorkAction"

    .line 65
    invoke-static {v13, v12, v4, v14, v9}, Le/a/y2/q/c;->b(Ln3/m0/y;Ljava/lang/String;Landroid/content/Context;Ls1/k;Ln3/m0/f;)Ln3/m0/s;

    .line 66
    iget-object v4, v1, Le/a/r/o;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-static {v4}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v9

    .line 69
    invoke-static {v9, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-static {v6, v7}, Le/m/d/y/n;->G0(J)Ls1/k;

    move-result-object v6

    .line 71
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 72
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v12, "exec_one_off"

    invoke-virtual {v7, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v11, Ln3/m0/f;

    invoke-direct {v11, v7}, Ln3/m0/f;-><init>(Ljava/util/Map;)V

    .line 74
    invoke-static {v11}, Ln3/m0/f;->g(Ln3/m0/f;)[B

    const-string v7, "AppSettingsWorkAction"

    .line 75
    invoke-static {v9, v7, v4, v6, v11}, Le/a/y2/q/c;->b(Ln3/m0/y;Ljava/lang/String;Landroid/content/Context;Ls1/k;Ln3/m0/f;)Ln3/m0/s;

    .line 76
    iget-object v4, v1, Le/a/r/o;->c:Landroid/content/Context;

    .line 77
    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-static {v4}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v15

    .line 79
    invoke-static {v15, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v20, 0xc

    const-string v16, "FetchSearchWarningsWorkAction"

    move-object/from16 v17, v4

    const/4 v4, 0x0

    move-object/from16 v19, v4

    invoke-static/range {v15 .. v20}, Le/a/y2/q/c;->c(Ln3/m0/y;Ljava/lang/String;Landroid/content/Context;Ls1/k;Ln3/m0/f;I)Ln3/m0/s;

    .line 80
    iget-object v14, v1, Le/a/r/o;->c:Landroid/content/Context;

    .line 81
    invoke-static {v14, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-static {v14}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v12

    .line 83
    invoke-static {v12, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x0

    const/16 v17, 0xc

    const-string v13, "FetchSurveysWorkAction"

    move-object/from16 v16, v26

    invoke-static/range {v12 .. v17}, Le/a/y2/q/c;->c(Ln3/m0/y;Ljava/lang/String;Landroid/content/Context;Ls1/k;Ln3/m0/f;I)Ln3/m0/s;

    .line 84
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v4

    .line 85
    invoke-static {v4}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v4

    .line 86
    new-instance v6, Ln3/m0/r$a;

    const-class v7, Lcom/truecaller/filters/sync/FilterRestoreWorker;

    invoke-direct {v6, v7}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 87
    new-instance v7, Ln3/m0/d$a;

    invoke-direct {v7}, Ln3/m0/d$a;-><init>()V

    .line 88
    iput-object v2, v7, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 89
    new-instance v8, Ln3/m0/d;

    invoke-direct {v8, v7}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 90
    iget-object v7, v6, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v8, v7, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 91
    invoke-virtual {v6}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v6

    check-cast v6, Ln3/m0/r;

    const-string v7, "FilterRestoreWorker"

    .line 92
    invoke-virtual {v4, v7, v3, v6}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    const-wide/16 v6, 0x0

    .line 93
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v4

    .line 94
    invoke-static {v4}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v4

    .line 95
    new-instance v8, Ln3/m0/r$a;

    const-class v9, Lcom/truecaller/businesscard/BusinessCardBackgroundWorker;

    invoke-direct {v8, v9}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 96
    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v6, v7, v9}, Ln3/m0/z$a;->f(JLjava/util/concurrent/TimeUnit;)Ln3/m0/z$a;

    move-result-object v6

    check-cast v6, Ln3/m0/r$a;

    .line 97
    new-instance v7, Ln3/m0/d$a;

    invoke-direct {v7}, Ln3/m0/d$a;-><init>()V

    .line 98
    iput-object v2, v7, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 99
    new-instance v8, Ln3/m0/d;

    invoke-direct {v8, v7}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 100
    iget-object v7, v6, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v8, v7, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 101
    invoke-virtual {v6}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v6

    check-cast v6, Ln3/m0/r;

    const-string v7, "BusinessCardBackgroundWorker"

    .line 102
    invoke-virtual {v4, v7, v3, v6}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    .line 103
    iget-object v4, v1, Le/a/r/o;->n:Lo3/a;

    invoke-interface {v4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b0/e/f;

    invoke-interface {v4}, Le/a/b0/e/f;->d()Z

    move-result v4

    if-nez v4, :cond_a

    .line 104
    iget-object v1, v1, Le/a/r/o;->c:Landroid/content/Context;

    .line 105
    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-static {v1}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v1

    .line 107
    new-instance v4, Ln3/m0/r$a;

    const-class v5, Lcom/truecaller/searchwarnings/supernova/GetSupernovaSettingsWorker;

    invoke-direct {v4, v5}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 108
    new-instance v5, Ln3/m0/d$a;

    invoke-direct {v5}, Ln3/m0/d$a;-><init>()V

    .line 109
    iput-object v2, v5, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 110
    new-instance v2, Ln3/m0/d;

    invoke-direct {v2, v5}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 111
    iget-object v5, v4, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v2, v5, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 112
    invoke-virtual {v4}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v2

    const-string v4, "OneTimeWorkRequest.Build\u2026d())\n            .build()"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ln3/m0/r;

    const-string v4, "javaClass"

    .line 113
    invoke-virtual {v1, v4, v3, v2}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    .line 114
    :cond_a
    iget-object v1, v0, Le/a/r/n;->f:Le/a/r/o;

    .line 115
    iget-object v2, v1, Le/a/r/o;->k:Le/a/b0/o/a;

    const-string v3, "profileSendRegistrationCompleteEvent"

    invoke-interface {v2, v3}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 116
    iget-object v2, v1, Le/a/r/o;->m:Lcom/truecaller/clevertap/CleverTapManager;

    const-string v4, "UserRegistationComplete"

    invoke-interface {v2, v4}, Lcom/truecaller/clevertap/CleverTapManager;->push(Ljava/lang/String;)V

    .line 117
    iget-object v1, v1, Le/a/r/o;->k:Le/a/b0/o/a;

    invoke-interface {v1, v3}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    .line 118
    :cond_b
    :goto_2
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method
