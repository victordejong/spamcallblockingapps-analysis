.class public final synthetic Le/m/h/a/d/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lcom/google/android/gms/tasks/CancellationToken;

.field public final c:Lcom/google/android/gms/tasks/CancellationTokenSource;

.field public final d:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/CancellationToken;Lcom/google/android/gms/tasks/CancellationTokenSource;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/h/a/d/y;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Le/m/h/a/d/y;->b:Lcom/google/android/gms/tasks/CancellationToken;

    iput-object p3, p0, Le/m/h/a/d/y;->c:Lcom/google/android/gms/tasks/CancellationTokenSource;

    iput-object p4, p0, Le/m/h/a/d/y;->d:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/h/a/d/y;->a:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Le/m/h/a/d/y;->b:Lcom/google/android/gms/tasks/CancellationToken;

    iget-object v2, p0, Le/m/h/a/d/y;->c:Lcom/google/android/gms/tasks/CancellationTokenSource;

    iget-object v3, p0, Le/m/h/a/d/y;->d:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/CancellationToken;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/CancellationTokenSource;->a()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, v3, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    invoke-virtual {v0, p1}, Le/m/a/f/q/b0;->v(Ljava/lang/Exception;)V

    .line 6
    :goto_0
    throw p1
.end method
