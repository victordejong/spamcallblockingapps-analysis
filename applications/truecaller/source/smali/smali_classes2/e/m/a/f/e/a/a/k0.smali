.class public final Le/m/a/f/e/a/a/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/api/Result;

.field public final synthetic b:Lcom/google/android/gms/common/api/internal/zacv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zacv;Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/e/a/a/k0;->b:Lcom/google/android/gms/common/api/internal/zacv;

    iput-object p2, p0, Le/m/a/f/e/a/a/k0;->a:Lcom/google/android/gms/common/api/Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa:Ljava/lang/ThreadLocal;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v2, p0, Le/m/a/f/e/a/a/k0;->b:Lcom/google/android/gms/common/api/internal/zacv;

    .line 2
    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zacv;->a:Lcom/google/android/gms/common/api/ResultTransform;

    const-string v3, "null reference"

    .line 3
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object v3, p0, Le/m/a/f/e/a/a/k0;->a:Lcom/google/android/gms/common/api/Result;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/ResultTransform;->a(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v2

    iget-object v3, p0, Le/m/a/f/e/a/a/k0;->b:Lcom/google/android/gms/common/api/internal/zacv;

    .line 5
    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zacv;->g:Le/m/a/f/e/a/a/l0;

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 7
    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Le/m/a/f/e/a/a/k0;->a:Lcom/google/android/gms/common/api/Result;

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zacv;->c(Lcom/google/android/gms/common/api/Result;)V

    iget-object v0, p0, Le/m/a/f/e/a/a/k0;->b:Lcom/google/android/gms/common/api/internal/zacv;

    .line 10
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zacv;->f:Ljava/lang/ref/WeakReference;

    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v1, p0, Le/m/a/f/e/a/a/k0;->b:Lcom/google/android/gms/common/api/internal/zacv;

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->u(Lcom/google/android/gms/common/api/internal/zacv;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :goto_1
    :try_start_1
    iget-object v2, p0, Le/m/a/f/e/a/a/k0;->b:Lcom/google/android/gms/common/api/internal/zacv;

    .line 13
    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zacv;->g:Le/m/a/f/e/a/a/l0;

    const/4 v3, 0x1

    .line 14
    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 15
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    sget-object v1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Le/m/a/f/e/a/a/k0;->a:Lcom/google/android/gms/common/api/Result;

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zacv;->c(Lcom/google/android/gms/common/api/Result;)V

    iget-object v0, p0, Le/m/a/f/e/a/a/k0;->b:Lcom/google/android/gms/common/api/internal/zacv;

    .line 18
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zacv;->f:Ljava/lang/ref/WeakReference;

    .line 19
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 20
    :goto_2
    sget-object v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Le/m/a/f/e/a/a/k0;->a:Lcom/google/android/gms/common/api/Result;

    .line 21
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zacv;->c(Lcom/google/android/gms/common/api/Result;)V

    iget-object v0, p0, Le/m/a/f/e/a/a/k0;->b:Lcom/google/android/gms/common/api/internal/zacv;

    .line 22
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zacv;->f:Ljava/lang/ref/WeakReference;

    .line 23
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_1

    goto :goto_3

    .line 24
    :cond_1
    iget-object v2, p0, Le/m/a/f/e/a/a/k0;->b:Lcom/google/android/gms/common/api/internal/zacv;

    .line 25
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->u(Lcom/google/android/gms/common/api/internal/zacv;)V

    .line 26
    :goto_3
    throw v1
.end method
