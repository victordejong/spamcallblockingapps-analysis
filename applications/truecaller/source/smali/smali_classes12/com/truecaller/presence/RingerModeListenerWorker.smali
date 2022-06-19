.class public final Lcom/truecaller/presence/RingerModeListenerWorker;
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
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R(\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/truecaller/presence/RingerModeListenerWorker;",
        "Landroidx/work/Worker;",
        "Landroidx/work/ListenableWorker$a;",
        "doWork",
        "()Landroidx/work/ListenableWorker$a;",
        "Le/a/r2/f;",
        "Le/a/l4/h;",
        "a",
        "Le/a/r2/f;",
        "getPresenceManager",
        "()Le/a/r2/f;",
        "setPresenceManager",
        "(Le/a/r2/f;)V",
        "presenceManager",
        "Landroid/content/Context;",
        "context",
        "Landroidx/work/WorkerParameters;",
        "workerParameters",
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
.field public a:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/l4/h;",
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

    const-string v0, "workerParameters"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method public static final n(Landroid/content/Context;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v0

    const-string v1, "WorkManager.getInstance(context)"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Ln3/m0/d$a;

    invoke-direct {v1}, Ln3/m0/d$a;-><init>()V

    .line 4
    sget-object v2, Ln3/m0/q;->b:Ln3/m0/q;

    .line 5
    iput-object v2, v1, Ln3/m0/d$a;->c:Ln3/m0/q;

    const-wide/16 v2, 0x3e8

    .line 6
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    iput-wide v2, v1, Ln3/m0/d$a;->f:J

    const-wide/16 v2, 0xbb8

    .line 8
    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    iput-wide v2, v1, Ln3/m0/d$a;->e:J

    const-string v2, "mode_ringer"

    .line 9
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    .line 10
    iget-object v4, v1, Ln3/m0/d$a;->g:Ln3/m0/e;

    .line 11
    new-instance v5, Ln3/m0/e$a;

    invoke-direct {v5, v2, v3}, Ln3/m0/e$a;-><init>(Landroid/net/Uri;Z)V

    .line 12
    iget-object v2, v4, Ln3/m0/e;->a:Ljava/util/Set;

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v2, Ln3/m0/d;

    invoke-direct {v2, v1}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    const-string v1, "Constraints.Builder()\n  \u2026\n                .build()"

    .line 14
    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v1, Ln3/m0/r$a;

    const-class v3, Lcom/truecaller/presence/RingerModeListenerWorker;

    invoke-direct {v1, v3}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 16
    iget-object v3, v1, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v2, v3, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 17
    check-cast v1, Ln3/m0/r$a;

    .line 18
    invoke-virtual {v1}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v1

    const-string v2, "OneTimeWorkRequest.Build\u2026\n                .build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    check-cast v1, Ln3/m0/r;

    .line 20
    iget-object v2, v1, Ln3/m0/z;->a:Ljava/util/UUID;

    .line 21
    invoke-virtual {v0, v2}, Ln3/m0/c0/l;->l(Ljava/util/UUID;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    .line 22
    new-instance v3, Le/a/l4/s;

    invoke-direct {v3, p0}, Le/a/l4/s;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/LiveData;->g(Ln3/v/l0;)V

    .line 23
    sget-object p0, Ln3/m0/h;->a:Ln3/m0/h;

    const-string v2, "com.truecaller.presence.RingerModeListenerWorker"

    invoke-virtual {v0, v2, p0, v1}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$a;
    .locals 3

    .line 1
    sget-object v0, Le/a/k2;->a:Le/a/k2$a;

    invoke-virtual {v0}, Le/a/k2$a;->a()Le/a/k2;

    move-result-object v0

    invoke-interface {v0, p0}, Le/a/k2;->A(Lcom/truecaller/presence/RingerModeListenerWorker;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/presence/RingerModeListenerWorker;->a:Le/a/r2/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l4/h;

    sget-object v1, Lcom/truecaller/presence/AvailabilityTrigger;->USER_ACTION:Lcom/truecaller/presence/AvailabilityTrigger;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Le/a/l4/h;->d(Lcom/truecaller/presence/AvailabilityTrigger;Z)V

    .line 3
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v1, "Result.success()"

    .line 4
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v0, "presenceManager"

    .line 5
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
