.class public abstract Ln3/k/a/i;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/k/a/i$a;,
        Ln3/k/a/i$d;,
        Ln3/k/a/i$e;,
        Ln3/k/a/i$g;,
        Ln3/k/a/i$f;,
        Ln3/k/a/i$c;,
        Ln3/k/a/i$b;,
        Ln3/k/a/i$h;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "JobIntentService"

.field public static final sClassWorkEnqueuer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Ln3/k/a/i$h;",
            ">;"
        }
    .end annotation
.end field

.field public static final sLock:Ljava/lang/Object;


# instance fields
.field public final mCompatQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln3/k/a/i$d;",
            ">;"
        }
    .end annotation
.end field

.field public mCompatWorkEnqueuer:Ln3/k/a/i$h;

.field public mCurProcessor:Ln3/k/a/i$a;

.field public mDestroyed:Z

.field public mInterruptIfStopped:Z

.field public mJobImpl:Ln3/k/a/i$b;

.field public mStopped:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ln3/k/a/i;->sLock:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ln3/k/a/i;->sClassWorkEnqueuer:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ln3/k/a/i;->mInterruptIfStopped:Z

    .line 3
    iput-boolean v0, p0, Ln3/k/a/i;->mStopped:Z

    .line 4
    iput-boolean v0, p0, Ln3/k/a/i;->mDestroyed:Z

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Ln3/k/a/i;->mCompatQueue:Ljava/util/ArrayList;

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln3/k/a/i;->mCompatQueue:Ljava/util/ArrayList;

    :goto_0
    return-void
.end method

.method public static enqueueWork(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;)V
    .locals 2

    if-eqz p3, :cond_0

    .line 2
    sget-object v0, Ln3/k/a/i;->sLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-static {p0, p1, v1, p2}, Ln3/k/a/i;->getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZI)Ln3/k/a/i$h;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p2}, Ln3/k/a/i$h;->b(I)V

    .line 5
    invoke-virtual {p0, p3}, Ln3/k/a/i$h;->a(Landroid/content/Intent;)V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "work must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;I",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0, p2, p3}, Ln3/k/a/i;->enqueueWork(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;)V

    return-void
.end method

.method public static getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZI)Ln3/k/a/i$h;
    .locals 3

    .line 1
    sget-object v0, Ln3/k/a/i;->sClassWorkEnqueuer:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/k/a/i$h;

    if-nez v1, :cond_2

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    if-eqz p2, :cond_0

    .line 3
    new-instance p2, Ln3/k/a/i$g;

    invoke-direct {p2, p0, p1, p3}, Ln3/k/a/i$g;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t be here without a job id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance p2, Ln3/k/a/i$c;

    invoke-direct {p2, p0, p1}, Ln3/k/a/i$c;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    :goto_0
    move-object v1, p2

    .line 6
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v1
.end method


# virtual methods
.method public dequeueWork()Ln3/k/a/i$e;
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/k/a/i;->mJobImpl:Ln3/k/a/i$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    check-cast v0, Ln3/k/a/i$f;

    .line 3
    iget-object v2, v0, Ln3/k/a/i$f;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 4
    :try_start_0
    iget-object v3, v0, Ln3/k/a/i$f;->c:Landroid/app/job/JobParameters;

    if-nez v3, :cond_0

    .line 5
    monitor-exit v2

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v3}, Landroid/app/job/JobParameters;->dequeueWork()Landroid/app/job/JobWorkItem;

    move-result-object v3

    .line 7
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v3}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, v0, Ln3/k/a/i$f;->a:Ln3/k/a/i;

    invoke-virtual {v2}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 9
    new-instance v1, Ln3/k/a/i$f$a;

    invoke-direct {v1, v0, v3}, Ln3/k/a/i$f$a;-><init>(Ln3/k/a/i$f;Landroid/app/job/JobWorkItem;)V

    :cond_1
    :goto_0
    return-object v1

    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 11
    :cond_2
    iget-object v0, p0, Ln3/k/a/i;->mCompatQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 12
    :try_start_2
    iget-object v2, p0, Ln3/k/a/i;->mCompatQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 13
    iget-object v1, p0, Ln3/k/a/i;->mCompatQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/k/a/i$e;

    monitor-exit v0

    return-object v1

    .line 14
    :cond_3
    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public doStopCurrentWork()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/k/a/i;->mCurProcessor:Ln3/k/a/i$a;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v1, p0, Ln3/k/a/i;->mInterruptIfStopped:Z

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ln3/k/a/i;->mStopped:Z

    .line 4
    invoke-virtual {p0}, Ln3/k/a/i;->onStopCurrentWork()Z

    move-result v0

    return v0
.end method

.method public ensureProcessorRunningLocked(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/k/a/i;->mCurProcessor:Ln3/k/a/i$a;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ln3/k/a/i$a;

    invoke-direct {v0, p0}, Ln3/k/a/i$a;-><init>(Ln3/k/a/i;)V

    iput-object v0, p0, Ln3/k/a/i;->mCurProcessor:Ln3/k/a/i$a;

    .line 3
    iget-object v0, p0, Ln3/k/a/i;->mCompatWorkEnqueuer:Ln3/k/a/i$h;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v0}, Ln3/k/a/i$h;->d()V

    .line 5
    :cond_0
    iget-object p1, p0, Ln3/k/a/i;->mCurProcessor:Ln3/k/a/i$a;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public isStopped()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/k/a/i;->mStopped:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Ln3/k/a/i;->mJobImpl:Ln3/k/a/i$b;

    if-eqz p1, :cond_0

    .line 2
    check-cast p1, Ln3/k/a/i$f;

    .line 3
    invoke-virtual {p1}, Landroid/app/job/JobServiceEngine;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 3
    new-instance v0, Ln3/k/a/i$f;

    invoke-direct {v0, p0}, Ln3/k/a/i$f;-><init>(Ln3/k/a/i;)V

    iput-object v0, p0, Ln3/k/a/i;->mJobImpl:Ln3/k/a/i$b;

    .line 4
    iput-object v1, p0, Ln3/k/a/i;->mCompatWorkEnqueuer:Ln3/k/a/i$h;

    goto :goto_0

    .line 5
    :cond_0
    iput-object v1, p0, Ln3/k/a/i;->mJobImpl:Ln3/k/a/i$b;

    .line 6
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    .line 7
    invoke-static {p0, v0, v1, v1}, Ln3/k/a/i;->getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZI)Ln3/k/a/i$h;

    move-result-object v0

    iput-object v0, p0, Ln3/k/a/i;->mCompatWorkEnqueuer:Ln3/k/a/i$h;

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    iget-object v0, p0, Ln3/k/a/i;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3
    monitor-enter v0

    const/4 v1, 0x1

    .line 4
    :try_start_0
    iput-boolean v1, p0, Ln3/k/a/i;->mDestroyed:Z

    .line 5
    iget-object v1, p0, Ln3/k/a/i;->mCompatWorkEnqueuer:Ln3/k/a/i$h;

    invoke-virtual {v1}, Ln3/k/a/i$h;->c()V

    .line 6
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public abstract onHandleWork(Landroid/content/Intent;)V
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 1
    iget-object p2, p0, Ln3/k/a/i;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p0, Ln3/k/a/i;->mCompatWorkEnqueuer:Ln3/k/a/i$h;

    invoke-virtual {p2}, Ln3/k/a/i$h;->e()V

    .line 3
    iget-object p2, p0, Ln3/k/a/i;->mCompatQueue:Ljava/util/ArrayList;

    monitor-enter p2

    .line 4
    :try_start_0
    iget-object v0, p0, Ln3/k/a/i;->mCompatQueue:Ljava/util/ArrayList;

    new-instance v1, Ln3/k/a/i$d;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    :goto_0
    invoke-direct {v1, p0, p1, p3}, Ln3/k/a/i$d;-><init>(Ln3/k/a/i;Landroid/content/Intent;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Ln3/k/a/i;->ensureProcessorRunningLocked(Z)V

    .line 6
    monitor-exit p2

    const/4 p1, 0x3

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    const/4 p1, 0x2

    return p1
.end method

.method public onStopCurrentWork()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public processorFinished()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/k/a/i;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 2
    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-object v1, p0, Ln3/k/a/i;->mCurProcessor:Ln3/k/a/i$a;

    .line 4
    iget-object v1, p0, Ln3/k/a/i;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v1}, Ln3/k/a/i;->ensureProcessorRunningLocked(Z)V

    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v1, p0, Ln3/k/a/i;->mDestroyed:Z

    if-nez v1, :cond_1

    .line 7
    iget-object v1, p0, Ln3/k/a/i;->mCompatWorkEnqueuer:Ln3/k/a/i$h;

    invoke-virtual {v1}, Ln3/k/a/i$h;->c()V

    .line 8
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_1
    return-void
.end method

.method public setInterruptIfStopped(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ln3/k/a/i;->mInterruptIfStopped:Z

    return-void
.end method
