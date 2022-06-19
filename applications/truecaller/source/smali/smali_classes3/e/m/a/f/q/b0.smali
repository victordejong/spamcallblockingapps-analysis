.class public final Le/m/a/f/q/b0;
.super Lcom/google/android/gms/tasks/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/tasks/Task<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Le/m/a/f/q/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/f/q/w<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field public c:Z

.field public volatile d:Z

.field public e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/tasks/Task;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le/m/a/f/q/b0;->a:Ljava/lang/Object;

    new-instance v0, Le/m/a/f/q/w;

    invoke-direct {v0}, Le/m/a/f/q/w;-><init>()V

    iput-object v0, p0, Le/m/a/f/q/b0;->b:Le/m/a/f/q/w;

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/f/q/b0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Le/m/a/f/q/b0;->c:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 2
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Le/m/a/f/q/b0;->b:Le/m/a/f/q/w;

    .line 3
    invoke-virtual {v0, p0}, Le/m/a/f/q/w;->b(Lcom/google/android/gms/tasks/Task;)V

    return-void

    :catchall_0
    move-exception v1

    .line 4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final a(Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnCanceledListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Le/m/a/f/q/b0;->b(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;

    return-object p0
.end method

.method public final b(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnCanceledListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/f/q/b0;->b:Le/m/a/f/q/w;

    new-instance v1, Le/m/a/f/q/m;

    invoke-direct {v1, p1, p2}, Le/m/a/f/q/m;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)V

    invoke-virtual {v0, v1}, Le/m/a/f/q/w;->a(Le/m/a/f/q/v;)V

    .line 2
    invoke-virtual {p0}, Le/m/a/f/q/b0;->A()V

    return-object p0
.end method

.method public final c(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnCompleteListener<",
            "TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->a:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Le/m/a/f/q/b0;->b:Le/m/a/f/q/w;

    new-instance v2, Le/m/a/f/q/o;

    invoke-direct {v2, v0, p1}, Le/m/a/f/q/o;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)V

    .line 2
    invoke-virtual {v1, v2}, Le/m/a/f/q/w;->a(Le/m/a/f/q/v;)V

    .line 3
    invoke-virtual {p0}, Le/m/a/f/q/b0;->A()V

    return-object p0
.end method

.method public final d(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnCompleteListener<",
            "TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/f/q/b0;->b:Le/m/a/f/q/w;

    new-instance v1, Le/m/a/f/q/o;

    invoke-direct {v1, p1, p2}, Le/m/a/f/q/o;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)V

    invoke-virtual {v0, v1}, Le/m/a/f/q/w;->a(Le/m/a/f/q/v;)V

    .line 2
    invoke-virtual {p0}, Le/m/a/f/q/b0;->A()V

    return-object p0
.end method

.method public final e(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Le/m/a/f/q/b0;->f(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-object p0
.end method

.method public final f(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/f/q/b0;->b:Le/m/a/f/q/w;

    new-instance v1, Le/m/a/f/q/q;

    invoke-direct {v1, p1, p2}, Le/m/a/f/q/q;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)V

    invoke-virtual {v0, v1}, Le/m/a/f/q/w;->a(Le/m/a/f/q/v;)V

    .line 2
    invoke-virtual {p0}, Le/m/a/f/q/b0;->A()V

    return-object p0
.end method

.method public final g(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnSuccessListener<",
            "-TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/m/a/f/q/s;

    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p2}, Le/m/a/f/q/s;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    iget-object p2, p0, Le/m/a/f/q/b0;->b:Le/m/a/f/q/w;

    .line 2
    invoke-virtual {p2, v0}, Le/m/a/f/q/w;->a(Le/m/a/f/q/v;)V

    .line 3
    invoke-static {p1}, Le/m/a/f/q/a0;->k(Landroid/app/Activity;)Le/m/a/f/q/a0;

    move-result-object p1

    invoke-virtual {p1, v0}, Le/m/a/f/q/a0;->l(Le/m/a/f/q/v;)V

    .line 4
    invoke-virtual {p0}, Le/m/a/f/q/b0;->A()V

    return-object p0
.end method

.method public final h(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnSuccessListener<",
            "-TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Le/m/a/f/q/b0;->i(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-object p0
.end method

.method public final i(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnSuccessListener<",
            "-TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/f/q/b0;->b:Le/m/a/f/q/w;

    new-instance v1, Le/m/a/f/q/s;

    invoke-direct {v1, p1, p2}, Le/m/a/f/q/s;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    invoke-virtual {v0, v1}, Le/m/a/f/q/w;->a(Le/m/a/f/q/v;)V

    .line 2
    invoke-virtual {p0}, Le/m/a/f/q/b0;->A()V

    return-object p0
.end method

.method public final j(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Continuation<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Le/m/a/f/q/b0;->k(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final k(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/Continuation<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/m/a/f/q/b0;

    invoke-direct {v0}, Le/m/a/f/q/b0;-><init>()V

    iget-object v1, p0, Le/m/a/f/q/b0;->b:Le/m/a/f/q/w;

    new-instance v2, Le/m/a/f/q/i;

    invoke-direct {v2, p1, p2, v0}, Le/m/a/f/q/i;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;Le/m/a/f/q/b0;)V

    .line 2
    invoke-virtual {v1, v2}, Le/m/a/f/q/w;->a(Le/m/a/f/q/v;)V

    .line 3
    invoke-virtual {p0}, Le/m/a/f/q/b0;->A()V

    return-object v0
.end method

.method public final l(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Continuation<",
            "TTResult;",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Le/m/a/f/q/b0;->m(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final m(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/Continuation<",
            "TTResult;",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/m/a/f/q/b0;

    invoke-direct {v0}, Le/m/a/f/q/b0;-><init>()V

    iget-object v1, p0, Le/m/a/f/q/b0;->b:Le/m/a/f/q/w;

    new-instance v2, Le/m/a/f/q/k;

    invoke-direct {v2, p1, p2, v0}, Le/m/a/f/q/k;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;Le/m/a/f/q/b0;)V

    .line 2
    invoke-virtual {v1, v2}, Le/m/a/f/q/w;->a(Le/m/a/f/q/v;)V

    .line 3
    invoke-virtual {p0}, Le/m/a/f/q/b0;->A()V

    return-object v0
.end method

.method public final n()Ljava/lang/Exception;
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/f/q/b0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le/m/a/f/q/b0;->f:Ljava/lang/Exception;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final o()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/f/q/b0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Le/m/a/f/q/b0;->c:Z

    const-string v2, "Task is not yet complete"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->m(ZLjava/lang/Object;)V

    .line 3
    iget-boolean v1, p0, Le/m/a/f/q/b0;->d:Z

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Le/m/a/f/q/b0;->f:Ljava/lang/Exception;

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Le/m/a/f/q/b0;->e:Ljava/lang/Object;

    .line 6
    monitor-exit v0

    return-object v1

    .line 7
    :cond_0
    new-instance v2, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    .line 8
    invoke-direct {v2, v1}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 9
    :cond_1
    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "Task is already canceled."

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final p(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;)TTResult;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/f/q/b0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Le/m/a/f/q/b0;->c:Z

    const-string v2, "Task is not yet complete"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->m(ZLjava/lang/Object;)V

    .line 3
    iget-boolean v1, p0, Le/m/a/f/q/b0;->d:Z

    if-nez v1, :cond_2

    .line 4
    iget-object v1, p0, Le/m/a/f/q/b0;->f:Ljava/lang/Exception;

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iget-object p1, p0, Le/m/a/f/q/b0;->f:Ljava/lang/Exception;

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Le/m/a/f/q/b0;->e:Ljava/lang/Object;

    .line 8
    monitor-exit v0

    return-object p1

    .line 9
    :cond_0
    new-instance v1, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    .line 10
    invoke-direct {v1, p1}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 11
    :cond_1
    iget-object v1, p0, Le/m/a/f/q/b0;->f:Ljava/lang/Exception;

    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 13
    :cond_2
    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task is already canceled."

    invoke-direct {p1, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final q()Z
    .locals 1

    iget-boolean v0, p0, Le/m/a/f/q/b0;->d:Z

    return v0
.end method

.method public final r()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/f/q/b0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Le/m/a/f/q/b0;->c:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final s()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/f/q/b0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Le/m/a/f/q/b0;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Le/m/a/f/q/b0;->d:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Le/m/a/f/q/b0;->f:Ljava/lang/Exception;

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final t(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/SuccessContinuation<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Le/m/a/f/q/b0;

    .line 2
    invoke-direct {v1}, Le/m/a/f/q/b0;-><init>()V

    iget-object v2, p0, Le/m/a/f/q/b0;->b:Le/m/a/f/q/w;

    new-instance v3, Le/m/a/f/q/u;

    invoke-direct {v3, v0, p1, v1}, Le/m/a/f/q/u;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;Le/m/a/f/q/b0;)V

    .line 3
    invoke-virtual {v2, v3}, Le/m/a/f/q/w;->a(Le/m/a/f/q/v;)V

    .line 4
    invoke-virtual {p0}, Le/m/a/f/q/b0;->A()V

    return-object v1
.end method

.method public final u(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/SuccessContinuation<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/m/a/f/q/b0;

    invoke-direct {v0}, Le/m/a/f/q/b0;-><init>()V

    iget-object v1, p0, Le/m/a/f/q/b0;->b:Le/m/a/f/q/w;

    new-instance v2, Le/m/a/f/q/u;

    invoke-direct {v2, p1, p2, v0}, Le/m/a/f/q/u;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;Le/m/a/f/q/b0;)V

    .line 2
    invoke-virtual {v1, v2}, Le/m/a/f/q/w;->a(Le/m/a/f/q/v;)V

    .line 3
    invoke-virtual {p0}, Le/m/a/f/q/b0;->A()V

    return-object v0
.end method

.method public final v(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "Exception must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Le/m/a/f/q/b0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Le/m/a/f/q/b0;->z()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Le/m/a/f/q/b0;->c:Z

    iput-object p1, p0, Le/m/a/f/q/b0;->f:Ljava/lang/Exception;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Le/m/a/f/q/b0;->b:Le/m/a/f/q/w;

    .line 4
    invoke-virtual {p1, p0}, Le/m/a/f/q/w;->b(Lcom/google/android/gms/tasks/Task;)V

    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final w(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/f/q/b0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Le/m/a/f/q/b0;->z()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Le/m/a/f/q/b0;->c:Z

    iput-object p1, p0, Le/m/a/f/q/b0;->e:Ljava/lang/Object;

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Le/m/a/f/q/b0;->b:Le/m/a/f/q/w;

    .line 3
    invoke-virtual {p1, p0}, Le/m/a/f/q/w;->b(Lcom/google/android/gms/tasks/Task;)V

    return-void

    :catchall_0
    move-exception p1

    .line 4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final x()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/f/q/b0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Le/m/a/f/q/b0;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Le/m/a/f/q/b0;->c:Z

    iput-boolean v1, p0, Le/m/a/f/q/b0;->d:Z

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Le/m/a/f/q/b0;->b:Le/m/a/f/q/w;

    .line 3
    invoke-virtual {v0, p0}, Le/m/a/f/q/w;->b(Lcom/google/android/gms/tasks/Task;)V

    return v1

    :catchall_0
    move-exception v1

    .line 4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final y(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/f/q/b0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Le/m/a/f/q/b0;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Le/m/a/f/q/b0;->c:Z

    iput-object p1, p0, Le/m/a/f/q/b0;->e:Ljava/lang/Object;

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Le/m/a/f/q/b0;->b:Le/m/a/f/q/w;

    .line 3
    invoke-virtual {p1, p0}, Le/m/a/f/q/w;->b(Lcom/google/android/gms/tasks/Task;)V

    return v1

    :catchall_0
    move-exception p1

    .line 4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final z()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Le/m/a/f/q/b0;->c:Z

    if-eqz v0, :cond_5

    .line 2
    sget v0, Lcom/google/android/gms/tasks/DuplicateTaskCompletionException;->a:I

    .line 3
    invoke-virtual {p0}, Le/m/a/f/q/b0;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {p0}, Le/m/a/f/q/b0;->n()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "failure"

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Le/m/a/f/q/b0;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0}, Le/m/a/f/q/b0;->o()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    const-string v2, "result "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Le/m/a/f/q/b0;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "cancellation"

    goto :goto_0

    :cond_2
    const-string v1, "unknown issue"

    .line 8
    :goto_0
    new-instance v2, Lcom/google/android/gms/tasks/DuplicateTaskCompletionException;

    const-string v3, "Complete with: "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 9
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/tasks/DuplicateTaskCompletionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 10
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v0, "DuplicateTaskCompletionException can only be created from completed Task."

    .line 11
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 12
    :goto_2
    throw v2

    :cond_5
    return-void
.end method
