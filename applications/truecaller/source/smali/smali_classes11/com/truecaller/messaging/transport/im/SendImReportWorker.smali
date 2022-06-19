.class public final Lcom/truecaller/messaging/transport/im/SendImReportWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R\"\u0010\u000c\u001a\u00020\u00058\u0000@\u0000X\u0081.\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/truecaller/messaging/transport/im/SendImReportWorker;",
        "Landroidx/work/Worker;",
        "Landroidx/work/ListenableWorker$a;",
        "doWork",
        "()Landroidx/work/ListenableWorker$a;",
        "Le/a/a/k/a/t;",
        "a",
        "Le/a/a/k/a/t;",
        "getImManager$truecaller_googlePlayRelease",
        "()Le/a/a/k/a/t;",
        "setImManager$truecaller_googlePlayRelease",
        "(Le/a/a/k/a/t;)V",
        "imManager",
        "Landroid/content/Context;",
        "context",
        "Landroidx/work/WorkerParameters;",
        "workerParams",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Le/a/a/k/a/t;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerParams"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 2
    sget-object p1, Le/a/k2;->a:Le/a/k2$a;

    invoke-virtual {p1}, Le/a/k2$a;->a()Le/a/k2;

    move-result-object p1

    invoke-interface {p1, p0}, Le/a/k2;->q(Lcom/truecaller/messaging/transport/im/SendImReportWorker;)V

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$a;
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v0

    const-string v1, "report_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ln3/m0/f;->c(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputReportType;->forNumber(I)Lcom/truecaller/api/services/messenger/v1/models/input/InputReportType;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v1

    const-string v3, "message_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v3, v4, v5}, Ln3/m0/f;->e(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v1, "Result.success()"

    if-eqz v0, :cond_7

    const/4 v3, 0x2

    new-array v8, v3, [Lcom/truecaller/api/services/messenger/v1/models/input/InputReportType;

    .line 3
    sget-object v9, Lcom/truecaller/api/services/messenger/v1/models/input/InputReportType;->RECEIVED:Lcom/truecaller/api/services/messenger/v1/models/input/InputReportType;

    aput-object v9, v8, v2

    sget-object v2, Lcom/truecaller/api/services/messenger/v1/models/input/InputReportType;->READ:Lcom/truecaller/api/services/messenger/v1/models/input/InputReportType;

    const/4 v9, 0x1

    aput-object v2, v8, v9

    invoke-static {v8}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    cmp-long v2, v6, v4

    if-nez v2, :cond_0

    goto :goto_3

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/truecaller/messaging/transport/im/SendImReportWorker;->a:Le/a/a/k/a/t;

    if-eqz v2, :cond_6

    invoke-interface {v2, v0, v6, v7}, Le/a/a/k/a/t;->b(Lcom/truecaller/api/services/messenger/v1/models/input/InputReportType;J)Le/a/r2/x;

    move-result-object v0

    invoke-virtual {v0}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/messaging/transport/im/SendResult;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v9, :cond_3

    if-ne v0, v3, :cond_2

    .line 5
    :goto_0
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 6
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    .line 7
    :cond_3
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getRunAttemptCount()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_4

    .line 8
    new-instance v0, Landroidx/work/ListenableWorker$a$b;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$b;-><init>()V

    goto :goto_1

    .line 9
    :cond_4
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    :goto_1
    const-string v1, "if (runAttemptCount < MA\u2026y() else Result.success()"

    .line 10
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 11
    :cond_5
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 12
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object v0

    :cond_6
    const-string v0, "imManager"

    .line 13
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    .line 14
    :cond_7
    :goto_3
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 15
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
