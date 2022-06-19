.class public abstract Le/m/h/a/d/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final b:Le/m/h/a/d/m;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Le/m/h/a/d/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    new-instance v0, Le/m/h/a/d/m;

    invoke-direct {v0}, Le/m/h/a/d/m;-><init>()V

    iput-object v0, p0, Le/m/h/a/d/j;->b:Le/m/h/a/d/m;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Le/m/h/a/d/j;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/gms/tasks/Task;
    .locals 9
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Lcom/google/android/gms/tasks/CancellationToken;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/h/a/d/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->l(Z)V

    .line 2
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/CancellationToken;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/google/android/gms/tasks/Tasks;->d()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    new-instance v3, Lcom/google/android/gms/tasks/CancellationTokenSource;

    invoke-direct {v3}, Lcom/google/android/gms/tasks/CancellationTokenSource;-><init>()V

    .line 5
    new-instance v6, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 6
    iget-object v0, v3, Lcom/google/android/gms/tasks/CancellationTokenSource;->a:Le/m/a/f/q/g;

    .line 7
    invoke-direct {v6, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>(Lcom/google/android/gms/tasks/CancellationToken;)V

    .line 8
    new-instance v7, Le/m/h/a/d/y;

    invoke-direct {v7, p1, p3, v3, v6}, Le/m/h/a/d/y;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/CancellationToken;Lcom/google/android/gms/tasks/CancellationTokenSource;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 9
    iget-object p1, p0, Le/m/h/a/d/j;->b:Le/m/h/a/d/m;

    new-instance v8, Le/m/h/a/d/x;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p3

    move-object v4, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Le/m/h/a/d/x;-><init>(Le/m/h/a/d/j;Lcom/google/android/gms/tasks/CancellationToken;Lcom/google/android/gms/tasks/CancellationTokenSource;Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1, v7, v8}, Le/m/h/a/d/m;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 10
    iget-object p1, v6, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    return-object p1
.end method

.method public b()Z
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/h/a/d/j;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public abstract c()V
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/h/a/a;
        }
    .end annotation
.end method

.method public abstract d()V
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end method

.method public e(Ljava/util/concurrent/Executor;)V
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/h/a/d/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->l(Z)V

    .line 2
    iget-object v0, p0, Le/m/h/a/d/j;->b:Le/m/h/a/d/m;

    new-instance v1, Le/m/h/a/d/w;

    invoke-direct {v1, p0}, Le/m/h/a/d/w;-><init>(Le/m/h/a/d/j;)V

    invoke-virtual {v0, p1, v1}, Le/m/h/a/d/m;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    return-void
.end method
