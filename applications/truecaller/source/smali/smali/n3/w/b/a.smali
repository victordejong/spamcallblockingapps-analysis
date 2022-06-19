.class public abstract Ln3/w/b/a;
.super Ln3/w/b/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/w/b/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ln3/w/b/b<",
        "TD;>;"
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "AsyncTaskLoader"


# instance fields
.field public volatile mCancellingTask:Ln3/w/b/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/w/b/a<",
            "TD;>.a;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field public mHandler:Landroid/os/Handler;

.field public mLastLoadCompleteTime:J

.field public volatile mTask:Ln3/w/b/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/w/b/a<",
            "TD;>.a;"
        }
    .end annotation
.end field

.field public mUpdateThrottle:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Ln3/w/b/c;->h:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, v0}, Ln3/w/b/a;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Ln3/w/b/b;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, -0x2710

    .line 3
    iput-wide v0, p0, Ln3/w/b/a;->mLastLoadCompleteTime:J

    .line 4
    iput-object p2, p0, Ln3/w/b/a;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public cancelLoadInBackground()V
    .locals 0

    return-void
.end method

.method public dispatchOnCancelled(Ln3/w/b/a$a;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/w/b/a<",
            "TD;>.a;TD;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Ln3/w/b/a;->onCanceled(Ljava/lang/Object;)V

    .line 2
    iget-object p2, p0, Ln3/w/b/a;->mCancellingTask:Ln3/w/b/a$a;

    if-ne p2, p1, :cond_0

    .line 3
    invoke-virtual {p0}, Ln3/w/b/b;->rollbackContentChanged()V

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Ln3/w/b/a;->mLastLoadCompleteTime:J

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Ln3/w/b/a;->mCancellingTask:Ln3/w/b/a$a;

    .line 6
    invoke-virtual {p0}, Ln3/w/b/b;->deliverCancellation()V

    .line 7
    invoke-virtual {p0}, Ln3/w/b/a;->executePendingTask()V

    :cond_0
    return-void
.end method

.method public dispatchOnLoadComplete(Ln3/w/b/a$a;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/w/b/a<",
            "TD;>.a;TD;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/w/b/a;->mTask:Ln3/w/b/a$a;

    if-eq v0, p1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Ln3/w/b/a;->dispatchOnCancelled(Ln3/w/b/a$a;Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ln3/w/b/b;->isAbandoned()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0, p2}, Ln3/w/b/a;->onCanceled(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Ln3/w/b/b;->commitContentChanged()V

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ln3/w/b/a;->mLastLoadCompleteTime:J

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Ln3/w/b/a;->mTask:Ln3/w/b/a$a;

    .line 8
    invoke-virtual {p0, p2}, Ln3/w/b/b;->deliverResult(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Ln3/w/b/b;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Ln3/w/b/a;->mTask:Ln3/w/b/a$a;

    const-string p4, " waiting="

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mTask="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Ln3/w/b/a;->mTask:Ln3/w/b/a$a;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Ln3/w/b/a;->mTask:Ln3/w/b/a$a;

    iget-boolean p2, p2, Ln3/w/b/a$a;->k:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 5
    :cond_0
    iget-object p2, p0, Ln3/w/b/a;->mCancellingTask:Ln3/w/b/a$a;

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mCancellingTask="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Ln3/w/b/a;->mCancellingTask:Ln3/w/b/a$a;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Ln3/w/b/a;->mCancellingTask:Ln3/w/b/a$a;

    iget-boolean p2, p2, Ln3/w/b/a$a;->k:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 8
    :cond_1
    iget-wide v0, p0, Ln3/w/b/a;->mUpdateThrottle:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_3

    .line 9
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mUpdateThrottle="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10
    iget-wide p1, p0, Ln3/w/b/a;->mUpdateThrottle:J

    const/4 p4, 0x0

    .line 11
    invoke-static {p1, p2, p3, p4}, Ln3/k/h/h;->b(JLjava/io/PrintWriter;I)V

    const-string p1, " mLastLoadCompleteTime="

    .line 12
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13
    iget-wide p1, p0, Ln3/w/b/a;->mLastLoadCompleteTime:J

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v2, p1, v2

    if-nez v2, :cond_2

    const-string p1, "--"

    .line 15
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sub-long/2addr p1, v0

    .line 16
    invoke-static {p1, p2, p3, p4}, Ln3/k/h/h;->b(JLjava/io/PrintWriter;I)V

    .line 17
    :goto_0
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    :cond_3
    return-void
.end method

.method public executePendingTask()V
    .locals 8

    .line 1
    iget-object v0, p0, Ln3/w/b/a;->mCancellingTask:Ln3/w/b/a$a;

    if-nez v0, :cond_5

    iget-object v0, p0, Ln3/w/b/a;->mTask:Ln3/w/b/a$a;

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p0, Ln3/w/b/a;->mTask:Ln3/w/b/a$a;

    iget-boolean v0, v0, Ln3/w/b/a$a;->k:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Ln3/w/b/a;->mTask:Ln3/w/b/a$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ln3/w/b/a$a;->k:Z

    .line 4
    iget-object v0, p0, Ln3/w/b/a;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ln3/w/b/a;->mTask:Ln3/w/b/a$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    :cond_0
    iget-wide v0, p0, Ln3/w/b/a;->mUpdateThrottle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 7
    iget-wide v4, p0, Ln3/w/b/a;->mLastLoadCompleteTime:J

    iget-wide v6, p0, Ln3/w/b/a;->mUpdateThrottle:J

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 8
    iget-object v0, p0, Ln3/w/b/a;->mTask:Ln3/w/b/a$a;

    iput-boolean v1, v0, Ln3/w/b/a$a;->k:Z

    .line 9
    iget-object v0, p0, Ln3/w/b/a;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ln3/w/b/a;->mTask:Ln3/w/b/a$a;

    iget-wide v2, p0, Ln3/w/b/a;->mLastLoadCompleteTime:J

    iget-wide v4, p0, Ln3/w/b/a;->mUpdateThrottle:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void

    .line 10
    :cond_1
    iget-object v0, p0, Ln3/w/b/a;->mTask:Ln3/w/b/a$a;

    iget-object v2, p0, Ln3/w/b/a;->mExecutor:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    .line 11
    iget-object v4, v0, Ln3/w/b/c;->c:Ln3/w/b/c$f;

    sget-object v5, Ln3/w/b/c$f;->a:Ln3/w/b/c$f;

    if-eq v4, v5, :cond_4

    .line 12
    iget-object v0, v0, Ln3/w/b/c;->c:Ln3/w/b/c$f;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "We should never reach this state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_4
    sget-object v1, Ln3/w/b/c$f;->b:Ln3/w/b/c$f;

    iput-object v1, v0, Ln3/w/b/c;->c:Ln3/w/b/c$f;

    .line 17
    iget-object v1, v0, Ln3/w/b/c;->a:Ln3/w/b/c$g;

    iput-object v3, v1, Ln3/w/b/c$g;->a:[Ljava/lang/Object;

    .line 18
    iget-object v0, v0, Ln3/w/b/c;->b:Ljava/util/concurrent/FutureTask;

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method public isLoadInBackgroundCanceled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/w/b/a;->mCancellingTask:Ln3/w/b/a$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract loadInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method public onCancelLoad()Z
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/w/b/a;->mTask:Ln3/w/b/a$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2
    iget-boolean v0, p0, Ln3/w/b/b;->mStarted:Z

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 3
    iput-boolean v2, p0, Ln3/w/b/b;->mContentChanged:Z

    .line 4
    :cond_0
    iget-object v0, p0, Ln3/w/b/a;->mCancellingTask:Ln3/w/b/a$a;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Ln3/w/b/a;->mTask:Ln3/w/b/a$a;

    iget-boolean v0, v0, Ln3/w/b/a$a;->k:Z

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Ln3/w/b/a;->mTask:Ln3/w/b/a$a;

    iput-boolean v1, v0, Ln3/w/b/a$a;->k:Z

    .line 7
    iget-object v0, p0, Ln3/w/b/a;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Ln3/w/b/a;->mTask:Ln3/w/b/a$a;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    :cond_1
    iput-object v3, p0, Ln3/w/b/a;->mTask:Ln3/w/b/a$a;

    return v1

    .line 9
    :cond_2
    iget-object v0, p0, Ln3/w/b/a;->mTask:Ln3/w/b/a$a;

    iget-boolean v0, v0, Ln3/w/b/a$a;->k:Z

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Ln3/w/b/a;->mTask:Ln3/w/b/a$a;

    iput-boolean v1, v0, Ln3/w/b/a$a;->k:Z

    .line 11
    iget-object v0, p0, Ln3/w/b/a;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Ln3/w/b/a;->mTask:Ln3/w/b/a$a;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    iput-object v3, p0, Ln3/w/b/a;->mTask:Ln3/w/b/a$a;

    return v1

    .line 13
    :cond_3
    iget-object v0, p0, Ln3/w/b/a;->mTask:Ln3/w/b/a$a;

    .line 14
    iget-object v4, v0, Ln3/w/b/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 15
    iget-object v0, v0, Ln3/w/b/c;->b:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    iget-object v1, p0, Ln3/w/b/a;->mTask:Ln3/w/b/a$a;

    iput-object v1, p0, Ln3/w/b/a;->mCancellingTask:Ln3/w/b/a$a;

    .line 17
    invoke-virtual {p0}, Ln3/w/b/a;->cancelLoadInBackground()V

    .line 18
    :cond_4
    iput-object v3, p0, Ln3/w/b/a;->mTask:Ln3/w/b/a$a;

    return v0

    :cond_5
    return v1
.end method

.method public onCanceled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    return-void
.end method

.method public onForceLoad()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/w/b/b;->onForceLoad()V

    .line 2
    invoke-virtual {p0}, Ln3/w/b/b;->cancelLoad()Z

    .line 3
    new-instance v0, Ln3/w/b/a$a;

    invoke-direct {v0, p0}, Ln3/w/b/a$a;-><init>(Ln3/w/b/a;)V

    iput-object v0, p0, Ln3/w/b/a;->mTask:Ln3/w/b/a$a;

    .line 4
    invoke-virtual {p0}, Ln3/w/b/a;->executePendingTask()V

    return-void
.end method

.method public onLoadInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln3/w/b/a;->loadInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setUpdateThrottle(J)V
    .locals 2

    .line 1
    iput-wide p1, p0, Ln3/w/b/a;->mUpdateThrottle:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Ln3/w/b/a;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public waitForLoader()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/w/b/a;->mTask:Ln3/w/b/a$a;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, v0, Ln3/w/b/a$a;->j:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
