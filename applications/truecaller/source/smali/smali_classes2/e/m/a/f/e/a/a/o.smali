.class public final Le/m/a/f/e/a/a/o;
.super Lcom/google/android/gms/internal/base/zap;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/api/internal/zaaz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zaaz;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/e/a/a/o;->a:Lcom/google/android/gms/common/api/internal/zaaz;

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/base/zap;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Le/m/a/f/e/a/a/o;->a:Lcom/google/android/gms/common/api/internal/zaaz;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaaz;->y(Lcom/google/android/gms/common/api/internal/zaaz;)V

    return-void

    :cond_1
    iget-object p1, p0, Le/m/a/f/e/a/a/o;->a:Lcom/google/android/gms/common/api/internal/zaaz;

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zaaz;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zaaz;->A()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zaaz;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
