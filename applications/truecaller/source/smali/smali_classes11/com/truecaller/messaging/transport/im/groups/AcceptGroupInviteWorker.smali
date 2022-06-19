.class public final Lcom/truecaller/messaging/transport/im/groups/AcceptGroupInviteWorker;
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
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010.\u001a\u00020-\u00a2\u0006\u0004\u0008/\u00100J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R(\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0000@\u0000X\u0081.\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\"\u0010\u0015\u001a\u00020\u000e8\u0000@\u0000X\u0081.\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\"\u0010\u001d\u001a\u00020\u00168\u0000@\u0000X\u0081.\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR(\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u00058\u0000@\u0000X\u0081.\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010\u0008\u001a\u0004\u0008 \u0010\n\"\u0004\u0008!\u0010\u000cR\"\u0010*\u001a\u00020#8\u0000@\u0000X\u0081.\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)\u00a8\u00061"
    }
    d2 = {
        "Lcom/truecaller/messaging/transport/im/groups/AcceptGroupInviteWorker;",
        "Landroidx/work/Worker;",
        "Landroidx/work/ListenableWorker$a;",
        "doWork",
        "()Landroidx/work/ListenableWorker$a;",
        "Le/a/r2/f;",
        "Le/a/a/k/a/a/m;",
        "e",
        "Le/a/r2/f;",
        "getImGroupManager$truecaller_googlePlayRelease",
        "()Le/a/r2/f;",
        "setImGroupManager$truecaller_googlePlayRelease",
        "(Le/a/r2/f;)V",
        "imGroupManager",
        "Le/a/a/k/a/a/d;",
        "a",
        "Le/a/a/k/a/a/d;",
        "getImGroupHelper$truecaller_googlePlayRelease",
        "()Le/a/a/k/a/a/d;",
        "setImGroupHelper$truecaller_googlePlayRelease",
        "(Le/a/a/k/a/a/d;)V",
        "imGroupHelper",
        "Le/a/q2/a;",
        "b",
        "Le/a/q2/a;",
        "getAnalytics$truecaller_googlePlayRelease",
        "()Le/a/q2/a;",
        "setAnalytics$truecaller_googlePlayRelease",
        "(Le/a/q2/a;)V",
        "analytics",
        "Le/a/q2/a0;",
        "c",
        "getEventsTracker$truecaller_googlePlayRelease",
        "setEventsTracker$truecaller_googlePlayRelease",
        "eventsTracker",
        "Le/a/a/i0;",
        "d",
        "Le/a/a/i0;",
        "getMessageSettings$truecaller_googlePlayRelease",
        "()Le/a/a/i0;",
        "setMessageSettings$truecaller_googlePlayRelease",
        "(Le/a/a/i0;)V",
        "messageSettings",
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
.field public a:Le/a/a/k/a/a/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Le/a/q2/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public d:Le/a/a/i0;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/k/a/a/m;",
            ">;"
        }
    .end annotation

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

    invoke-interface {p1, p0}, Le/a/k2;->y(Lcom/truecaller/messaging/transport/im/groups/AcceptGroupInviteWorker;)V

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$a;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v0

    const-string v1, "group_id"

    invoke-virtual {v0, v1}, Ln3/m0/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Result.success()"

    if-eqz v0, :cond_10

    .line 2
    iget-object v2, p0, Lcom/truecaller/messaging/transport/im/groups/AcceptGroupInviteWorker;->d:Le/a/a/i0;

    const-string v3, "messageSettings"

    const/4 v4, 0x0

    if-eqz v2, :cond_f

    invoke-interface {v2}, Le/a/a/i0;->b2()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 4
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/truecaller/messaging/transport/im/groups/AcceptGroupInviteWorker;->e:Le/a/r2/f;

    if-eqz v2, :cond_e

    invoke-interface {v2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/k/a/a/m;

    invoke-interface {v2, v0}, Le/a/a/k/a/a/m;->w(Ljava/lang/String;)Le/a/r2/x;

    move-result-object v2

    invoke-virtual {v2}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz v2, :cond_d

    .line 6
    iget v5, v2, Lcom/truecaller/messaging/data/types/ImGroupInfo;->f:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_1

    goto/16 :goto_4

    .line 7
    :cond_1
    iget-object v5, v2, Lcom/truecaller/messaging/data/types/ImGroupInfo;->e:Ljava/lang/String;

    const-string v6, "imGroupHelper"

    if-eqz v5, :cond_3

    .line 8
    iget-object v7, p0, Lcom/truecaller/messaging/transport/im/groups/AcceptGroupInviteWorker;->a:Le/a/a/k/a/a/d;

    if-eqz v7, :cond_2

    invoke-interface {v7, v5}, Le/a/a/k/a/a/d;->r(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 9
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 10
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 11
    :cond_2
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 12
    :cond_3
    iget-object v5, p0, Lcom/truecaller/messaging/transport/im/groups/AcceptGroupInviteWorker;->a:Le/a/a/k/a/a/d;

    if-eqz v5, :cond_c

    const/4 v6, 0x1

    invoke-interface {v5, v0, v6}, Le/a/a/k/a/a/d;->c(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 13
    invoke-static {}, Le/a/l5/a/s0;->a()Le/a/l5/a/s0$b;

    move-result-object v5

    .line 14
    iget-object v7, v2, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    .line 15
    invoke-virtual {v5, v7}, Le/a/l5/a/s0$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/s0$b;

    .line 16
    iget-object v2, v2, Lcom/truecaller/messaging/data/types/ImGroupInfo;->e:Ljava/lang/String;

    const-string v7, ""

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    move-object v2, v7

    .line 17
    :goto_0
    invoke-virtual {v5, v2}, Le/a/l5/a/s0$b;->e(Ljava/lang/CharSequence;)Le/a/l5/a/s0$b;

    .line 18
    iget-object v2, p0, Lcom/truecaller/messaging/transport/im/groups/AcceptGroupInviteWorker;->d:Le/a/a/i0;

    if-eqz v2, :cond_7

    invoke-interface {v2}, Le/a/a/i0;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    move-object v7, v2

    :cond_5
    invoke-virtual {v5, v7}, Le/a/l5/a/s0$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/s0$b;

    const-string v2, "Accept"

    .line 19
    invoke-virtual {v5, v2}, Le/a/l5/a/s0$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/s0$b;

    .line 20
    iget-object v2, p0, Lcom/truecaller/messaging/transport/im/groups/AcceptGroupInviteWorker;->c:Le/a/r2/f;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/q2/a0;

    invoke-virtual {v5}, Le/a/l5/a/s0$b;->a()Le/a/l5/a/s0;

    move-result-object v3

    invoke-interface {v2, v3}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    goto :goto_1

    :cond_6
    const-string v0, "eventsTracker"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 21
    :cond_7
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_8
    :goto_1
    if-ne v0, v6, :cond_9

    .line 22
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 23
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    if-nez v0, :cond_b

    .line 24
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getRunAttemptCount()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_a

    .line 25
    new-instance v0, Landroidx/work/ListenableWorker$a$b;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$b;-><init>()V

    goto :goto_2

    .line 26
    :cond_a
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    :goto_2
    const-string v1, "if (runAttemptCount < MA\u2026y() else Result.success()"

    .line 27
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    return-object v0

    :cond_b
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    .line 28
    :cond_c
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 29
    :cond_d
    :goto_4
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 30
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_e
    const-string v0, "imGroupManager"

    .line 31
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 32
    :cond_f
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 33
    :cond_10
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 34
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
