.class public final Lcom/truecaller/messaging/transport/im/SendReactionWorker;
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
        "Lcom/truecaller/messaging/transport/im/SendReactionWorker;",
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

    invoke-interface {p1, p0}, Le/a/k2;->v(Lcom/truecaller/messaging/transport/im/SendReactionWorker;)V

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$a;
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v0

    const-string v1, "raw_id"

    invoke-virtual {v0, v1}, Ln3/m0/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "Result.success()"

    if-eqz v3, :cond_7

    .line 2
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v1

    const-string v2, "message_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v2, v4, v5}, Ln3/m0/f;->e(Ljava/lang/String;J)J

    move-result-wide v6

    .line 3
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v1

    const-string v2, "from_peer_id"

    invoke-virtual {v1, v2}, Ln3/m0/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 4
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v2

    const-string v8, "particpant_id"

    invoke-virtual {v2, v8, v4, v5}, Ln3/m0/f;->e(Ljava/lang/String;J)J

    move-result-wide v8

    .line 5
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v2

    const-string v4, "to_group_id"

    invoke-virtual {v2, v4}, Ln3/m0/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 6
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v2

    const-string v4, "emoji"

    invoke-virtual {v2, v4}, Ln3/m0/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 7
    iget-object v2, p0, Lcom/truecaller/messaging/transport/im/SendReactionWorker;->a:Le/a/a/k/a/t;

    if-eqz v2, :cond_5

    move-wide v4, v6

    move-object v6, v1

    move-wide v7, v8

    move-object v9, v10

    move-object v10, v11

    invoke-interface/range {v2 .. v10}, Le/a/a/k/a/t;->e(Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)Le/a/r2/x;

    move-result-object v1

    invoke-virtual {v1}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/messaging/transport/im/SendResult;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 8
    :goto_0
    new-instance v1, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v1}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 9
    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    .line 10
    :cond_2
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getRunAttemptCount()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    .line 11
    new-instance v0, Landroidx/work/ListenableWorker$a$b;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$b;-><init>()V

    goto :goto_1

    .line 12
    :cond_3
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    :goto_1
    move-object v1, v0

    const-string v0, "if (runAttemptCount < MA\u2026y() else Result.success()"

    .line 13
    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 14
    :cond_4
    new-instance v1, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v1}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 15
    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object v1

    :cond_5
    const-string v0, "imManager"

    .line 16
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    .line 17
    :cond_6
    new-instance v1, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v1}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 18
    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 19
    :cond_7
    new-instance v1, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v1}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 20
    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method
