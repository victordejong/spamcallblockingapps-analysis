.class public final Le/m/a/f/q/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/tasks/Task;

.field public final synthetic b:Le/m/a/f/q/u;


# direct methods
.method public constructor <init>(Le/m/a/f/q/u;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/q/t;->b:Le/m/a/f/q/u;

    iput-object p2, p0, Le/m/a/f/q/t;->a:Lcom/google/android/gms/tasks/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Le/m/a/f/q/t;->b:Le/m/a/f/q/u;

    .line 2
    iget-object v0, v0, Le/m/a/f/q/u;->b:Lcom/google/android/gms/tasks/SuccessContinuation;

    .line 3
    iget-object v1, p0, Le/m/a/f/q/t;->a:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/tasks/SuccessContinuation;->then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/m/a/f/q/t;->b:Le/m/a/f/q/u;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Continuation returned null"

    .line 4
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 5
    iget-object v0, v0, Le/m/a/f/q/u;->c:Le/m/a/f/q/b0;

    invoke-virtual {v0, v1}, Le/m/a/f/q/b0;->v(Ljava/lang/Exception;)V

    return-void

    .line 6
    :cond_0
    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Le/m/a/f/q/t;->b:Le/m/a/f/q/u;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->i(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    iget-object v2, p0, Le/m/a/f/q/t;->b:Le/m/a/f/q/u;

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->f(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    iget-object v2, p0, Le/m/a/f/q/t;->b:Le/m/a/f/q/u;

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->b(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    :catch_0
    move-exception v0

    .line 9
    iget-object v1, p0, Le/m/a/f/q/t;->b:Le/m/a/f/q/u;

    .line 10
    iget-object v1, v1, Le/m/a/f/q/u;->c:Le/m/a/f/q/b0;

    invoke-virtual {v1, v0}, Le/m/a/f/q/b0;->v(Ljava/lang/Exception;)V

    return-void

    .line 11
    :catch_1
    iget-object v0, p0, Le/m/a/f/q/t;->b:Le/m/a/f/q/u;

    .line 12
    iget-object v0, v0, Le/m/a/f/q/u;->c:Le/m/a/f/q/b0;

    invoke-virtual {v0}, Le/m/a/f/q/b0;->x()Z

    return-void

    :catch_2
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    iget-object v1, p0, Le/m/a/f/q/t;->b:Le/m/a/f/q/u;

    .line 14
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    .line 15
    iget-object v1, v1, Le/m/a/f/q/u;->c:Le/m/a/f/q/b0;

    invoke-virtual {v1, v0}, Le/m/a/f/q/b0;->v(Ljava/lang/Exception;)V

    return-void

    .line 16
    :cond_1
    iget-object v1, p0, Le/m/a/f/q/t;->b:Le/m/a/f/q/u;

    .line 17
    iget-object v1, v1, Le/m/a/f/q/u;->c:Le/m/a/f/q/b0;

    invoke-virtual {v1, v0}, Le/m/a/f/q/b0;->v(Ljava/lang/Exception;)V

    return-void
.end method
