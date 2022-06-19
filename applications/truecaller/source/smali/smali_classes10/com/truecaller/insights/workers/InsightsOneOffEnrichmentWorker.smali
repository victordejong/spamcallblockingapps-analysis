.class public final Lcom/truecaller/insights/workers/InsightsOneOffEnrichmentWorker;
.super Lcom/truecaller/background_work/TrackedWorker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/insights/workers/InsightsOneOffEnrichmentWorker$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 &2\u00020\u0001:\u0001\u0011BE\u0008\u0007\u0012\u0008\u0008\u0001\u0010!\u001a\u00020 \u0012\u0008\u0008\u0001\u0010#\u001a\u00020\"\u0012\u0006\u0010\u0015\u001a\u00020\u0010\u0012\u0006\u0010\u001b\u001a\u00020\u0016\u0012\u0006\u0010\u001f\u001a\u00020\u001c\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u0012\u0006\u0010\u000f\u001a\u00020\u000c\u00a2\u0006\u0004\u0008$\u0010%J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\u000b\u001a\u00020\u00088\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0016\u0010\u000f\u001a\u00020\u000c8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u001c\u0010\u0015\u001a\u00020\u00108\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u001b\u001a\u00020\u00168\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/truecaller/insights/workers/InsightsOneOffEnrichmentWorker;",
        "Lcom/truecaller/background_work/TrackedWorker;",
        "",
        "q",
        "()Z",
        "Landroidx/work/ListenableWorker$a;",
        "r",
        "()Landroidx/work/ListenableWorker$a;",
        "Le/a/c/i/m/f;",
        "d",
        "Le/a/c/i/m/f;",
        "insightsSyncStatusManager",
        "Le/a/c/b/j;",
        "e",
        "Le/a/c/b/j;",
        "insightsStatusProvider",
        "Le/a/q2/a;",
        "a",
        "Le/a/q2/a;",
        "n",
        "()Le/a/q2/a;",
        "analytics",
        "Le/a/u3/g;",
        "b",
        "Le/a/u3/g;",
        "o",
        "()Le/a/u3/g;",
        "featuresRegistry",
        "Le/a/c/i/d/a;",
        "c",
        "Le/a/c/i/d/a;",
        "enrichmentManager",
        "Landroid/content/Context;",
        "context",
        "Landroidx/work/WorkerParameters;",
        "params",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/q2/a;Le/a/u3/g;Le/a/c/i/d/a;Le/a/c/i/m/f;Le/a/c/b/j;)V",
        "f",
        "insights_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final f:Lcom/truecaller/insights/workers/InsightsOneOffEnrichmentWorker$a;


# instance fields
.field public final a:Le/a/q2/a;

.field public final b:Le/a/u3/g;

.field public final c:Le/a/c/i/d/a;

.field public final d:Le/a/c/i/m/f;

.field public final e:Le/a/c/b/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/insights/workers/InsightsOneOffEnrichmentWorker$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/insights/workers/InsightsOneOffEnrichmentWorker$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/insights/workers/InsightsOneOffEnrichmentWorker;->f:Lcom/truecaller/insights/workers/InsightsOneOffEnrichmentWorker$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/q2/a;Le/a/u3/g;Le/a/c/i/d/a;Le/a/c/i/m/f;Le/a/c/b/j;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enrichmentManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsSyncStatusManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsStatusProvider"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/background_work/TrackedWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p3, p0, Lcom/truecaller/insights/workers/InsightsOneOffEnrichmentWorker;->a:Le/a/q2/a;

    iput-object p4, p0, Lcom/truecaller/insights/workers/InsightsOneOffEnrichmentWorker;->b:Le/a/u3/g;

    iput-object p5, p0, Lcom/truecaller/insights/workers/InsightsOneOffEnrichmentWorker;->c:Le/a/c/i/d/a;

    iput-object p6, p0, Lcom/truecaller/insights/workers/InsightsOneOffEnrichmentWorker;->d:Le/a/c/i/m/f;

    iput-object p7, p0, Lcom/truecaller/insights/workers/InsightsOneOffEnrichmentWorker;->e:Le/a/c/b/j;

    return-void
.end method

.method public static final s()V
    .locals 6

    .line 1
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v0

    const-string v1, "WorkManager.getInstance(\u2026icationBase.getAppBase())"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v1, Ln3/m0/h;->a:Ln3/m0/h;

    .line 5
    new-instance v2, Le/a/y2/h;

    const-class v3, Lcom/truecaller/insights/workers/InsightsOneOffEnrichmentWorker;

    invoke-static {v3}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v3

    const-wide/16 v4, 0x5

    invoke-static {v4, v5}, Lw3/b/a/i;->d(J)Lw3/b/a/i;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Le/a/y2/h;-><init>(Ls1/a/c;Lw3/b/a/i;)V

    .line 6
    sget-object v3, Ln3/m0/q;->a:Ln3/m0/q;

    invoke-virtual {v2, v3}, Le/a/y2/h;->f(Ln3/m0/q;)Le/a/y2/h;

    .line 7
    invoke-virtual {v2}, Le/a/y2/h;->a()Ln3/m0/r;

    move-result-object v2

    const-string v3, "InsightsEnrichmentWorkerOneOff"

    .line 8
    invoke-virtual {v0, v3, v1, v2}, Ln3/m0/y;->a(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/w;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ln3/m0/w;->a()Ln3/m0/s;

    return-void
.end method


# virtual methods
.method public n()Le/a/q2/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/workers/InsightsOneOffEnrichmentWorker;->a:Le/a/q2/a;

    return-object v0
.end method

.method public o()Le/a/u3/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/workers/InsightsOneOffEnrichmentWorker;->b:Le/a/u3/g;

    return-object v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/workers/InsightsOneOffEnrichmentWorker;->d:Le/a/c/i/m/f;

    invoke-interface {v0}, Le/a/c/i/m/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/insights/workers/InsightsOneOffEnrichmentWorker;->c:Le/a/c/i/d/a;

    invoke-interface {v0}, Le/a/c/i/d/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()Landroidx/work/ListenableWorker$a;
    .locals 13

    const-wide/16 v0, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/truecaller/insights/workers/InsightsOneOffEnrichmentWorker;->e:Le/a/c/b/j;

    invoke-interface {v2}, Le/a/c/b/j;->E()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3
    iget-object v4, p0, Lcom/truecaller/insights/workers/InsightsOneOffEnrichmentWorker;->c:Le/a/c/i/d/a;

    invoke-interface {v4}, Le/a/c/i/d/a;->d()V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    sub-long/2addr v4, v2

    goto :goto_0

    :cond_0
    move-wide v4, v0

    .line 5
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/truecaller/insights/workers/InsightsOneOffEnrichmentWorker;->c:Le/a/c/i/d/a;

    invoke-interface {v2}, Le/a/c/i/d/a;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 6
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    .line 7
    sget-object v3, Le/a/c/o/a;->a:Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 8
    sget-object v3, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    new-instance v6, Lcom/truecaller/log/UnmutedException$InsightsExceptions;

    sget-object v7, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;->ACCOUNT_MODEL_EXCEPTION:Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

    invoke-direct {v6, v7}, Lcom/truecaller/log/UnmutedException$InsightsExceptions;-><init>(Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;)V

    invoke-virtual {v3, v6, v2}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 9
    :goto_1
    new-instance v2, Ln3/m0/f$a;

    invoke-direct {v2}, Ln3/m0/f$a;-><init>()V

    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v3

    .line 10
    iget-object v3, v3, Ln3/m0/f;->a:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ln3/m0/f$a;->b(Ljava/util/Map;)Ln3/m0/f$a;

    const-string v3, "Data.Builder().putAll(inputData)"

    .line 11
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v3, v2, Ln3/m0/f$a;->a:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "linking_model_time"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {v2}, Ln3/m0/f$a;->a()Ln3/m0/f;

    move-result-object v2

    const-string v3, "builder.apply {\n        \u2026ngTime)\n        }.build()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v3, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v3, v2}, Landroidx/work/ListenableWorker$a$c;-><init>(Ln3/m0/f;)V

    const-string v2, "Result.success(outputData)"

    .line 15
    invoke-static {v3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v2

    .line 16
    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    .line 17
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v2

    const-string v3, "inputData"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ln3/m0/f;->d()Ljava/util/Map;

    move-result-object v2

    const-string v3, "inputData.keyValueMap"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 18
    iget-object v2, p0, Lcom/truecaller/insights/workers/InsightsOneOffEnrichmentWorker;->d:Le/a/c/i/m/f;

    invoke-interface {v2}, Le/a/c/i/m/f;->b()V

    .line 19
    :cond_1
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v2

    const-string v4, "rerun_sms_event"

    .line 20
    invoke-virtual {v2, v4}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    const/4 v4, 0x3

    new-array v5, v4, [Ls1/k;

    .line 21
    new-instance v6, Ls1/k;

    const-string v7, "rerun_status"

    const-string v8, "true"

    invoke-direct {v6, v7, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 22
    new-instance v6, Ls1/k;

    const-string v8, "enrichment_status"

    const-string v9, "false"

    invoke-direct {v6, v8, v9}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v5, v3

    .line 23
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v6

    const-string v8, "re_run_context"

    invoke-virtual {v6, v8}, Ln3/m0/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    const-string v6, "UNKNOWN"

    :goto_2
    const-string v9, "inputData.getString(Insi\u2026RUN_CONTEXT) ?: \"UNKNOWN\""

    invoke-static {v6, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v9, Ls1/k;

    invoke-direct {v9, v8, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x2

    aput-object v9, v5, v6

    .line 25
    invoke-static {v5}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v2, v5}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    .line 26
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Integer;

    const-string v9, "rerun_catg_bank"

    .line 27
    invoke-static {p0, v9, v7}, Le/d/c/a/a;->w1(Lcom/truecaller/insights/workers/InsightsOneOffEnrichmentWorker;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    const-string v9, "rerun_catg_bill"

    .line 28
    invoke-static {p0, v9, v7}, Le/d/c/a/a;->w1(Lcom/truecaller/insights/workers/InsightsOneOffEnrichmentWorker;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    const-string v9, "rerun_catg_event"

    .line 29
    invoke-static {p0, v9, v7}, Le/d/c/a/a;->w1(Lcom/truecaller/insights/workers/InsightsOneOffEnrichmentWorker;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const-string v9, "rerun_catg_OTP"

    .line 30
    invoke-static {p0, v9, v7}, Le/d/c/a/a;->w1(Lcom/truecaller/insights/workers/InsightsOneOffEnrichmentWorker;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    const-string v9, "rerun_catg_notif"

    .line 31
    invoke-static {p0, v9, v7}, Le/d/c/a/a;->w1(Lcom/truecaller/insights/workers/InsightsOneOffEnrichmentWorker;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x4

    aput-object v9, v8, v10

    const-string v9, "rerun_catg_travel"

    .line 32
    invoke-static {p0, v9, v7}, Le/d/c/a/a;->w1(Lcom/truecaller/insights/workers/InsightsOneOffEnrichmentWorker;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x5

    aput-object v9, v8, v11

    const-string v9, "rerun_catg_offers"

    .line 33
    invoke-static {p0, v9, v7}, Le/d/c/a/a;->w1(Lcom/truecaller/insights/workers/InsightsOneOffEnrichmentWorker;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x6

    aput-object v9, v8, v11

    const-string v9, "rerun_catg_delivery"

    .line 34
    invoke-static {p0, v9, v7}, Le/d/c/a/a;->w1(Lcom/truecaller/insights/workers/InsightsOneOffEnrichmentWorker;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x7

    aput-object v9, v8, v11

    .line 35
    invoke-static {v8}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 36
    invoke-static {v8}, Ls1/u/i;->I0(Ljava/lang/Iterable;)I

    move-result v8

    int-to-double v8, v8

    new-array v10, v10, [Ls1/k;

    .line 37
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    .line 38
    new-instance v9, Ls1/k;

    const-string v11, "parsed_message_count"

    invoke-direct {v9, v11, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v10, v7

    .line 39
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v8

    const-string v9, "message_count"

    invoke-virtual {v8, v9, v7}, Ln3/m0/f;->c(Ljava/lang/String;I)I

    move-result v8

    int-to-double v11, v8

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    .line 40
    new-instance v11, Ls1/k;

    invoke-direct {v11, v9, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v10, v3

    .line 41
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v3

    const-string v8, "parsing_time"

    invoke-virtual {v3, v8, v0, v1}, Ln3/m0/f;->e(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 42
    new-instance v1, Ls1/k;

    invoke-direct {v1, v8, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v10, v6

    .line 43
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v0

    const-string v1, "rerun_exception_count"

    invoke-virtual {v0, v1, v7}, Ln3/m0/f;->c(Ljava/lang/String;I)I

    move-result v0

    int-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 44
    new-instance v3, Ls1/k;

    invoke-direct {v3, v1, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v10, v4

    .line 45
    invoke-static {v10}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v0

    .line 46
    invoke-interface {v5, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {v2, v5}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    .line 47
    invoke-virtual {v2}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/truecaller/insights/workers/InsightsOneOffEnrichmentWorker;->a:Le/a/q2/a;

    const-string v2, "it"

    .line 49
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 50
    new-instance v3, Landroidx/work/ListenableWorker$a$a;

    invoke-direct {v3}, Landroidx/work/ListenableWorker$a$a;-><init>()V

    const-string v0, "Result.failure()"

    .line 51
    invoke-static {v3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    return-object v3
.end method
