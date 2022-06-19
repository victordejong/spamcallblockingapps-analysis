.class public final Lcom/truecaller/insights/workers/InsightsReSyncWorker;
.super Lcom/truecaller/background_work/TrackedWorker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/insights/workers/InsightsReSyncWorker$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 /2\u00020\u0001:\u0001$BE\u0008\u0007\u0012\u0008\u0008\u0001\u0010&\u001a\u00020#\u0012\u0008\u0008\u0001\u0010,\u001a\u00020+\u0012\u0006\u0010\u0014\u001a\u00020\u000f\u0012\u0006\u0010\u001e\u001a\u00020\u0019\u0012\u0006\u0010\u0018\u001a\u00020\u0015\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010*\u001a\u00020\'\u00a2\u0006\u0004\u0008-\u0010.J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nR\u0016\u0010\u000e\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u001c\u0010\u0014\u001a\u00020\u000f8\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u001e\u001a\u00020\u00198\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u0016\u0010\"\u001a\u00020\u001f8B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u0016\u0010&\u001a\u00020#8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0016\u0010*\u001a\u00020\'8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008(\u0010)\u00a8\u00060"
    }
    d2 = {
        "Lcom/truecaller/insights/workers/InsightsReSyncWorker;",
        "Lcom/truecaller/background_work/TrackedWorker;",
        "",
        "q",
        "()Z",
        "Landroidx/work/ListenableWorker$a;",
        "r",
        "()Landroidx/work/ListenableWorker$a;",
        "",
        "u",
        "()Ljava/lang/String;",
        "Le/a/c/i/m/f;",
        "e",
        "Le/a/c/i/m/f;",
        "insightsSyncStatusManager",
        "Le/a/q2/a;",
        "b",
        "Le/a/q2/a;",
        "n",
        "()Le/a/q2/a;",
        "analytics",
        "Le/a/c/b/j;",
        "d",
        "Le/a/c/b/j;",
        "insightsStatusProvider",
        "Le/a/u3/g;",
        "c",
        "Le/a/u3/g;",
        "o",
        "()Le/a/u3/g;",
        "featuresRegistry",
        "Le/a/h4/n;",
        "t",
        "()Le/a/h4/n;",
        "notificationManager",
        "Landroid/content/Context;",
        "a",
        "Landroid/content/Context;",
        "context",
        "Le/a/c/i/m/c;",
        "f",
        "Le/a/c/i/m/c;",
        "insightsSyncManager",
        "Landroidx/work/WorkerParameters;",
        "params",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/q2/a;Le/a/u3/g;Le/a/c/b/j;Le/a/c/i/m/f;Le/a/c/i/m/c;)V",
        "g",
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
.field public static final g:Lcom/truecaller/insights/workers/InsightsReSyncWorker$a;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/q2/a;

.field public final c:Le/a/u3/g;

.field public final d:Le/a/c/b/j;

.field public final e:Le/a/c/i/m/f;

.field public final f:Le/a/c/i/m/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/insights/workers/InsightsReSyncWorker$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/insights/workers/InsightsReSyncWorker$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/insights/workers/InsightsReSyncWorker;->g:Lcom/truecaller/insights/workers/InsightsReSyncWorker$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/q2/a;Le/a/u3/g;Le/a/c/b/j;Le/a/c/i/m/f;Le/a/c/i/m/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsStatusProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsSyncStatusManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsSyncManager"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/background_work/TrackedWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p1, p0, Lcom/truecaller/insights/workers/InsightsReSyncWorker;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/truecaller/insights/workers/InsightsReSyncWorker;->b:Le/a/q2/a;

    iput-object p4, p0, Lcom/truecaller/insights/workers/InsightsReSyncWorker;->c:Le/a/u3/g;

    iput-object p5, p0, Lcom/truecaller/insights/workers/InsightsReSyncWorker;->d:Le/a/c/b/j;

    iput-object p6, p0, Lcom/truecaller/insights/workers/InsightsReSyncWorker;->e:Le/a/c/i/m/f;

    iput-object p7, p0, Lcom/truecaller/insights/workers/InsightsReSyncWorker;->f:Le/a/c/i/m/c;

    return-void
.end method

.method public static final s(Ljava/lang/String;ZZ)V
    .locals 1

    sget-object v0, Lcom/truecaller/insights/workers/InsightsReSyncWorker;->g:Lcom/truecaller/insights/workers/InsightsReSyncWorker$a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/truecaller/insights/workers/InsightsReSyncWorker$a;->b(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public n()Le/a/q2/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/workers/InsightsReSyncWorker;->b:Le/a/q2/a;

    return-object v0
.end method

.method public o()Le/a/u3/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/workers/InsightsReSyncWorker;->c:Le/a/u3/g;

    return-object v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/workers/InsightsReSyncWorker;->d:Le/a/c/b/j;

    invoke-interface {v0}, Le/a/c/b/j;->n()Z

    move-result v0

    return v0
.end method

.method public r()Landroidx/work/ListenableWorker$a;
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :try_start_0
    new-instance v3, Ls1/z/c/y;

    invoke-direct {v3}, Ls1/z/c/y;-><init>()V

    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v4

    const-string v5, "re_run_param_clean"

    invoke-virtual {v4, v5, v1}, Ln3/m0/f;->b(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Ls1/z/c/y;->a:Z

    .line 2
    new-instance v4, Ls1/z/c/y;

    invoke-direct {v4}, Ls1/z/c/y;-><init>()V

    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v5

    const-string v6, "re_run_param_notify"

    invoke-virtual {v5, v6, v1}, Ln3/m0/f;->b(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v4, Ls1/z/c/y;->a:Z

    .line 3
    iget-object v5, p0, Lcom/truecaller/insights/workers/InsightsReSyncWorker;->e:Le/a/c/i/m/f;

    invoke-interface {v5}, Le/a/c/i/m/f;->h()V

    .line 4
    new-instance v5, Lcom/truecaller/insights/workers/InsightsReSyncWorker$b;

    invoke-direct {v5, p0, v4, v3, v2}, Lcom/truecaller/insights/workers/InsightsReSyncWorker$b;-><init>(Lcom/truecaller/insights/workers/InsightsReSyncWorker;Ls1/z/c/y;Ls1/z/c/y;Ls1/w/d;)V

    invoke-static {v2, v5, v0, v2}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/work/ListenableWorker$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 5
    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    .line 6
    iget-object v4, p0, Lcom/truecaller/insights/workers/InsightsReSyncWorker;->e:Le/a/c/i/m/f;

    invoke-interface {v4}, Le/a/c/i/m/f;->b()V

    .line 7
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v4

    const-string v5, "rerun_sms_event"

    .line 8
    invoke-virtual {v4, v5}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    const/4 v5, 0x3

    new-array v5, v5, [Ls1/k;

    .line 9
    new-instance v6, Ls1/k;

    const-string v7, "false"

    const-string v8, "rerun_status"

    invoke-direct {v6, v8, v7}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v5, v1

    .line 10
    new-instance v1, Ls1/k;

    const-string v6, "enrichment_status"

    invoke-direct {v1, v6, v7}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v5, v0

    const/4 v0, 0x2

    .line 11
    invoke-virtual {p0}, Lcom/truecaller/insights/workers/InsightsReSyncWorker;->u()Ljava/lang/String;

    move-result-object v1

    .line 12
    new-instance v6, Ls1/k;

    const-string v7, "re_run_context"

    invoke-direct {v6, v7, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v5, v0

    .line 13
    invoke-static {v5}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v4, v0}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    .line 14
    invoke-virtual {v4}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/truecaller/insights/workers/InsightsReSyncWorker;->b:Le/a/q2/a;

    const-string v4, "it"

    .line 16
    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 17
    sget-object v0, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    .line 18
    invoke-virtual {v0, v3, v2}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 19
    new-instance v3, Landroidx/work/ListenableWorker$a$a;

    invoke-direct {v3}, Landroidx/work/ListenableWorker$a$a;-><init>()V

    const-string v0, "Result.failure()"

    .line 20
    invoke-static {v3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v3
.end method

.method public final t()Le/a/h4/n;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/workers/InsightsReSyncWorker;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Le/a/h4/q/g;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Le/a/h4/q/g;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Le/a/h4/q/g;->n()Le/a/h4/n;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Application class does not implement "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Le/a/h4/q/g;

    invoke-static {v2, v1}, Le/d/c/a/a;->a2(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final u()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v0

    const-string v1, "re_run_context"

    invoke-virtual {v0, v1}, Ln3/m0/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "UNKNOWN"

    :goto_0
    const-string v1, "inputData.getString(RE_RUN_CONTEXT) ?: \"UNKNOWN\""

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
