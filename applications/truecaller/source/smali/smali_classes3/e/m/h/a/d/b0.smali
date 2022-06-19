.class public final synthetic Le/m/h/a/d/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Le/m/h/a/d/m;

.field public final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Le/m/h/a/d/m;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/h/a/d/b0;->a:Le/m/h/a/d/m;

    iput-object p2, p0, Le/m/h/a/d/b0;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/h/a/d/b0;->a:Le/m/h/a/d/m;

    iget-object v1, p0, Le/m/h/a/d/b0;->b:Ljava/lang/Runnable;

    .line 2
    iget-object v2, v0, Le/m/h/a/d/m;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->l(Z)V

    const/4 v2, 0x0

    .line 5
    :try_start_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, v0, Le/m/h/a/d/m;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v0}, Le/m/h/a/d/m;->b()V

    return-void

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    iget-object v3, v0, Le/m/h/a/d/m;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {v0}, Le/m/h/a/d/m;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 12
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_common/zzan;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method
