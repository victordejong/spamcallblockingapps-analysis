.class public final synthetic Le/m/h/a/d/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Le/m/h/a/d/j;

.field public final b:Lcom/google/android/gms/tasks/CancellationToken;

.field public final c:Lcom/google/android/gms/tasks/CancellationTokenSource;

.field public final d:Ljava/util/concurrent/Callable;

.field public final e:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public constructor <init>(Le/m/h/a/d/j;Lcom/google/android/gms/tasks/CancellationToken;Lcom/google/android/gms/tasks/CancellationTokenSource;Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/h/a/d/x;->a:Le/m/h/a/d/j;

    iput-object p2, p0, Le/m/h/a/d/x;->b:Lcom/google/android/gms/tasks/CancellationToken;

    iput-object p3, p0, Le/m/h/a/d/x;->c:Lcom/google/android/gms/tasks/CancellationTokenSource;

    iput-object p4, p0, Le/m/h/a/d/x;->d:Ljava/util/concurrent/Callable;

    iput-object p5, p0, Le/m/h/a/d/x;->e:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Le/m/h/a/d/x;->a:Le/m/h/a/d/j;

    iget-object v1, p0, Le/m/h/a/d/x;->b:Lcom/google/android/gms/tasks/CancellationToken;

    iget-object v2, p0, Le/m/h/a/d/x;->c:Lcom/google/android/gms/tasks/CancellationTokenSource;

    iget-object v3, p0, Le/m/h/a/d/x;->d:Ljava/util/concurrent/Callable;

    iget-object v4, p0, Le/m/h/a/d/x;->e:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/CancellationToken;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/CancellationTokenSource;->a()V

    goto :goto_1

    .line 4
    :cond_0
    :try_start_0
    iget-object v5, v0, Le/m/h/a/d/j;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_1

    .line 5
    invoke-virtual {v0}, Le/m/h/a/d/j;->c()V

    .line 6
    iget-object v0, v0, Le/m/h/a/d/j;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/CancellationToken;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/CancellationTokenSource;->a()V

    goto :goto_1

    .line 9
    :cond_2
    invoke-interface {v3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/CancellationToken;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/CancellationTokenSource;->a()V

    goto :goto_1

    .line 12
    :cond_3
    iget-object v3, v4, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    invoke-virtual {v3, v0}, Le/m/a/f/q/b0;->w(Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 13
    new-instance v3, Le/m/h/a/a;

    const-string v5, "Internal error has occurred when executing ML Kit tasks"

    const/16 v6, 0xd

    invoke-direct {v3, v5, v6, v0}, Le/m/h/a/a;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 14
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/CancellationToken;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/CancellationTokenSource;->a()V

    goto :goto_1

    .line 16
    :cond_4
    iget-object v1, v4, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    invoke-virtual {v1, v0}, Le/m/a/f/q/b0;->v(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method
