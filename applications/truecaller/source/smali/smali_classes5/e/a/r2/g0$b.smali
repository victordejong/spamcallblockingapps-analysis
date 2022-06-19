.class public Le/a/r2/g0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/w;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r2/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/w;",
        "Landroid/content/ServiceConnection;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Landroid/content/Context;

.field public final c:Landroid/content/Intent;

.field public final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final e:Le/a/r2/n;

.field public f:Le/a/r2/i$b;

.field public g:Z

.field public final h:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Le/a/r2/h0;",
            ">;"
        }
    .end annotation
.end field

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/r2/n;Ljava/lang/Class;ILjava/lang/Object;Le/a/r2/g0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p6, Ljava/util/ArrayDeque;

    invoke-direct {p6}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p6, p0, Le/a/r2/g0$b;->h:Ljava/util/Queue;

    .line 3
    iput-object p1, p0, Le/a/r2/g0$b;->b:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Le/a/r2/g0$b;->e:Le/a/r2/n;

    .line 5
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p2, p0, Le/a/r2/g0$b;->c:Landroid/content/Intent;

    const-string p1, "com.truecaller.androidactors.ActorService"

    .line 6
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iput p4, p0, Le/a/r2/g0$b;->a:I

    .line 8
    iput-object p5, p0, Le/a/r2/g0$b;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Le/a/r2/u;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/r2/g0$b;->d:Ljava/lang/Object;

    iget-object v1, p0, Le/a/r2/g0$b;->e:Le/a/r2/n;

    invoke-static {v0, p1, v1}, Le/a/r2/h0;->a(Ljava/lang/Object;Le/a/r2/u;Le/a/r2/n;)Le/a/r2/h0;

    move-result-object p1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Le/a/r2/g0$b;->f:Le/a/r2/i$b;

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Le/a/r2/g0$b;->h:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0}, Le/a/r2/g0$b;->b()V

    return-void

    .line 7
    :cond_0
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p1}, Le/a/r2/i$b;->t0(Le/a/r2/h0;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Le/a/r2/g0$b;->h:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {p0}, Le/a/r2/g0$b;->c()V

    .line 10
    invoke-virtual {p0}, Le/a/r2/g0$b;->b()V

    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/r2/g0$b;->b:Landroid/content/Context;

    iget-object v1, p0, Le/a/r2/g0$b;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2
    iget-object v0, p0, Le/a/r2/g0$b;->b:Landroid/content/Context;

    iget-object v1, p0, Le/a/r2/g0$b;->c:Landroid/content/Intent;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Le/a/r2/g0$b;->i:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Le/a/r2/g0$b;->i:Z

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 5
    sget-object v0, Le/a/r2/g0;->f:Landroid/util/SparseArray;

    .line 6
    iget v1, p0, Le/a/r2/g0$b;->a:I

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    iget-object v0, p0, Le/a/r2/g0$b;->b:Landroid/content/Context;

    iget v1, p0, Le/a/r2/g0$b;->a:I

    iget-object v2, p0, Le/a/r2/g0$b;->c:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 8
    new-instance v3, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v3, v1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/16 v1, 0x0

    .line 9
    invoke-virtual {v3, v1, v2}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    .line 10
    invoke-virtual {v3, v1, v2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    const-string v2, "jobscheduler"

    .line 12
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 13
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final declared-synchronized c()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Le/a/r2/g0$b;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    :try_start_1
    iget-object v0, p0, Le/a/r2/g0$b;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :catch_0
    :cond_0
    :try_start_2
    iget-object v0, p0, Le/a/r2/g0$b;->b:Landroid/content/Context;

    iget-object v1, p0, Le/a/r2/g0$b;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Le/a/r2/g0$b;->b:Landroid/content/Context;

    iget v1, p0, Le/a/r2/g0$b;->a:I

    const-string v2, "jobscheduler"

    .line 6
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    :cond_1
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Le/a/r2/g0$b;->f:Le/a/r2/i$b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string p1, "ServiceMessageSender"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p2, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Le/a/r2/i$b;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p1

    :catch_0
    :goto_0
    if-nez v0, :cond_2

    .line 3
    :try_start_2
    invoke-virtual {p0}, Le/a/r2/g0$b;->c()V

    .line 4
    iget-boolean p1, p0, Le/a/r2/g0$b;->g:Z

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0}, Le/a/r2/g0$b;->b()V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Le/a/r2/g0$b;->g:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    :cond_1
    monitor-exit p0

    return-void

    .line 8
    :cond_2
    :goto_1
    :try_start_3
    iget-object p1, p0, Le/a/r2/g0$b;->h:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/r2/h0;

    if-eqz p1, :cond_3

    .line 9
    invoke-interface {v0, p1}, Le/a/r2/i$b;->t0(Le/a/r2/h0;)Z

    goto :goto_1

    .line 10
    :cond_3
    iput-object v0, p0, Le/a/r2/g0$b;->f:Le/a/r2/i$b;

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Le/a/r2/g0$b;->g:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    monitor-enter p0

    const/4 p1, 0x0

    .line 1
    :try_start_0
    iput-object p1, p0, Le/a/r2/g0$b;->f:Le/a/r2/i$b;

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Le/a/r2/g0$b;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
