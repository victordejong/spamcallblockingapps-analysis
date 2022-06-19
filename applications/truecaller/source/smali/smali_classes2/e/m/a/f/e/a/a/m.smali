.class public abstract Le/m/a/f/e/a/a/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/api/internal/zaar;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/zaar;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/e/a/a/m;->a:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final run()V
    .locals 4

    iget-object v0, p0, Le/m/a/f/e/a/a/m;->a:Lcom/google/android/gms/common/api/internal/zaar;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaar;->b:Ljava/util/concurrent/locks/Lock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/m/a/f/e/a/a/m;->a:Lcom/google/android/gms/common/api/internal/zaar;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaar;->b:Ljava/util/concurrent/locks/Lock;

    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 6
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Le/m/a/f/e/a/a/m;->a()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Le/m/a/f/e/a/a/m;->a:Lcom/google/android/gms/common/api/internal/zaar;

    .line 7
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaar;->b:Ljava/util/concurrent/locks/Lock;

    .line 8
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Le/m/a/f/e/a/a/m;->a:Lcom/google/android/gms/common/api/internal/zaar;

    .line 9
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaar;->a:Lcom/google/android/gms/common/api/internal/zabd;

    .line 10
    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/zabd;->e:Le/m/a/f/e/a/a/r;

    const/4 v3, 0x2

    .line 11
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabd;->e:Le/m/a/f/e/a/a/r;

    .line 12
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    iget-object v0, p0, Le/m/a/f/e/a/a/m;->a:Lcom/google/android/gms/common/api/internal/zaar;

    .line 14
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaar;->b:Ljava/util/concurrent/locks/Lock;

    .line 15
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 16
    :goto_0
    iget-object v1, p0, Le/m/a/f/e/a/a/m;->a:Lcom/google/android/gms/common/api/internal/zaar;

    .line 17
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaar;->b:Ljava/util/concurrent/locks/Lock;

    .line 18
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 19
    throw v0
.end method
