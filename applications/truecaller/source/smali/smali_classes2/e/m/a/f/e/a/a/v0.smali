.class public final Le/m/a/f/e/a/a/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zabt;


# instance fields
.field public final synthetic a:Le/m/a/f/e/a/a/x0;


# direct methods
.method public synthetic constructor <init>(Le/m/a/f/e/a/a/x0;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/e/a/a/v0;->a:Le/m/a/f/e/a/a/x0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 2

    iget-object v0, p0, Le/m/a/f/e/a/a/v0;->a:Le/m/a/f/e/a/a/x0;

    .line 1
    iget-object v0, v0, Le/m/a/f/e/a/a/x0;->m:Ljava/util/concurrent/locks/Lock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Le/m/a/f/e/a/a/v0;->a:Le/m/a/f/e/a/a/x0;

    .line 3
    iget-boolean v1, v0, Le/m/a/f/e/a/a/x0;->l:Z

    if-nez v1, :cond_1

    .line 4
    iget-object v0, v0, Le/m/a/f/e/a/a/x0;->k:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->p2()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget-object p2, p0, Le/m/a/f/e/a/a/v0;->a:Le/m/a/f/e/a/a/x0;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p2, Le/m/a/f/e/a/a/x0;->l:Z

    .line 8
    iget-object p2, p2, Le/m/a/f/e/a/a/x0;->e:Lcom/google/android/gms/common/api/internal/zabd;

    .line 9
    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/api/internal/zabd;->onConnectionSuspended(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, p0, Le/m/a/f/e/a/a/v0;->a:Le/m/a/f/e/a/a/x0;

    .line 11
    iget-object p1, p1, Le/m/a/f/e/a/a/x0;->m:Ljava/util/concurrent/locks/Lock;

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 13
    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Le/m/a/f/e/a/a/v0;->a:Le/m/a/f/e/a/a/x0;

    const/4 v1, 0x0

    .line 14
    iput-boolean v1, v0, Le/m/a/f/e/a/a/x0;->l:Z

    .line 15
    iget-object v1, v0, Le/m/a/f/e/a/a/x0;->b:Lcom/google/android/gms/common/api/internal/zaaz;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/common/api/internal/zaaz;->a(IZ)V

    const/4 p1, 0x0

    iput-object p1, v0, Le/m/a/f/e/a/a/x0;->k:Lcom/google/android/gms/common/ConnectionResult;

    iput-object p1, v0, Le/m/a/f/e/a/a/x0;->j:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    iget-object p1, p0, Le/m/a/f/e/a/a/v0;->a:Le/m/a/f/e/a/a/x0;

    .line 17
    iget-object p1, p1, Le/m/a/f/e/a/a/x0;->m:Ljava/util/concurrent/locks/Lock;

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 18
    iget-object p2, p0, Le/m/a/f/e/a/a/v0;->a:Le/m/a/f/e/a/a/x0;

    .line 19
    iget-object p2, p2, Le/m/a/f/e/a/a/x0;->m:Ljava/util/concurrent/locks/Lock;

    .line 20
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 21
    throw p1
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Le/m/a/f/e/a/a/v0;->a:Le/m/a/f/e/a/a/x0;

    .line 1
    iget-object v0, v0, Le/m/a/f/e/a/a/x0;->m:Ljava/util/concurrent/locks/Lock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Le/m/a/f/e/a/a/v0;->a:Le/m/a/f/e/a/a/x0;

    .line 3
    iget-object v1, v0, Le/m/a/f/e/a/a/x0;->i:Landroid/os/Bundle;

    if-nez v1, :cond_0

    iput-object p1, v0, Le/m/a/f/e/a/a/x0;->i:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Le/m/a/f/e/a/a/v0;->a:Le/m/a/f/e/a/a/x0;

    .line 5
    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->e:Lcom/google/android/gms/common/ConnectionResult;

    .line 6
    iput-object v0, p1, Le/m/a/f/e/a/a/x0;->j:Lcom/google/android/gms/common/ConnectionResult;

    .line 7
    invoke-static {p1}, Le/m/a/f/e/a/a/x0;->q(Le/m/a/f/e/a/a/x0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p1, p0, Le/m/a/f/e/a/a/v0;->a:Le/m/a/f/e/a/a/x0;

    .line 9
    iget-object p1, p1, Le/m/a/f/e/a/a/x0;->m:Ljava/util/concurrent/locks/Lock;

    .line 10
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 11
    iget-object v0, p0, Le/m/a/f/e/a/a/v0;->a:Le/m/a/f/e/a/a/x0;

    .line 12
    iget-object v0, v0, Le/m/a/f/e/a/a/x0;->m:Ljava/util/concurrent/locks/Lock;

    .line 13
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 14
    throw p1
.end method

.method public final c(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Le/m/a/f/e/a/a/v0;->a:Le/m/a/f/e/a/a/x0;

    .line 1
    iget-object v0, v0, Le/m/a/f/e/a/a/x0;->m:Ljava/util/concurrent/locks/Lock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Le/m/a/f/e/a/a/v0;->a:Le/m/a/f/e/a/a/x0;

    .line 3
    iput-object p1, v0, Le/m/a/f/e/a/a/x0;->j:Lcom/google/android/gms/common/ConnectionResult;

    .line 4
    invoke-static {v0}, Le/m/a/f/e/a/a/x0;->q(Le/m/a/f/e/a/a/x0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Le/m/a/f/e/a/a/v0;->a:Le/m/a/f/e/a/a/x0;

    .line 6
    iget-object p1, p1, Le/m/a/f/e/a/a/x0;->m:Ljava/util/concurrent/locks/Lock;

    .line 7
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 8
    iget-object v0, p0, Le/m/a/f/e/a/a/v0;->a:Le/m/a/f/e/a/a/x0;

    .line 9
    iget-object v0, v0, Le/m/a/f/e/a/a/x0;->m:Ljava/util/concurrent/locks/Lock;

    .line 10
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 11
    throw p1
.end method
