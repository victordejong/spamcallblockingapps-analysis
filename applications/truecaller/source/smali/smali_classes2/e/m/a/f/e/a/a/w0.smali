.class public final Le/m/a/f/e/a/a/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zabt;


# instance fields
.field public final synthetic a:Le/m/a/f/e/a/a/x0;


# direct methods
.method public synthetic constructor <init>(Le/m/a/f/e/a/a/x0;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/e/a/a/w0;->a:Le/m/a/f/e/a/a/x0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 2

    iget-object v0, p0, Le/m/a/f/e/a/a/w0;->a:Le/m/a/f/e/a/a/x0;

    .line 1
    iget-object v0, v0, Le/m/a/f/e/a/a/x0;->m:Ljava/util/concurrent/locks/Lock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Le/m/a/f/e/a/a/w0;->a:Le/m/a/f/e/a/a/x0;

    .line 3
    iget-boolean v1, v0, Le/m/a/f/e/a/a/x0;->l:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Le/m/a/f/e/a/a/x0;->l:Z

    .line 5
    iget-object v1, v0, Le/m/a/f/e/a/a/x0;->b:Lcom/google/android/gms/common/api/internal/zaaz;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/common/api/internal/zaaz;->a(IZ)V

    const/4 p1, 0x0

    iput-object p1, v0, Le/m/a/f/e/a/a/x0;->k:Lcom/google/android/gms/common/ConnectionResult;

    iput-object p1, v0, Le/m/a/f/e/a/a/x0;->j:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Le/m/a/f/e/a/a/w0;->a:Le/m/a/f/e/a/a/x0;

    .line 7
    iget-object p1, p1, Le/m/a/f/e/a/a/x0;->m:Ljava/util/concurrent/locks/Lock;

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 9
    :try_start_1
    iput-boolean p2, v0, Le/m/a/f/e/a/a/x0;->l:Z

    .line 10
    iget-object p2, v0, Le/m/a/f/e/a/a/x0;->d:Lcom/google/android/gms/common/api/internal/zabd;

    .line 11
    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/api/internal/zabd;->onConnectionSuspended(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    iget-object p1, p0, Le/m/a/f/e/a/a/w0;->a:Le/m/a/f/e/a/a/x0;

    .line 13
    iget-object p1, p1, Le/m/a/f/e/a/a/x0;->m:Ljava/util/concurrent/locks/Lock;

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 14
    iget-object p2, p0, Le/m/a/f/e/a/a/w0;->a:Le/m/a/f/e/a/a/x0;

    .line 15
    iget-object p2, p2, Le/m/a/f/e/a/a/x0;->m:Ljava/util/concurrent/locks/Lock;

    .line 16
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17
    throw p1
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 1

    iget-object p1, p0, Le/m/a/f/e/a/a/w0;->a:Le/m/a/f/e/a/a/x0;

    .line 1
    iget-object p1, p1, Le/m/a/f/e/a/a/x0;->m:Ljava/util/concurrent/locks/Lock;

    .line 2
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object p1, p0, Le/m/a/f/e/a/a/w0;->a:Le/m/a/f/e/a/a/x0;

    .line 3
    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->e:Lcom/google/android/gms/common/ConnectionResult;

    .line 4
    iput-object v0, p1, Le/m/a/f/e/a/a/x0;->k:Lcom/google/android/gms/common/ConnectionResult;

    .line 5
    invoke-static {p1}, Le/m/a/f/e/a/a/x0;->q(Le/m/a/f/e/a/a/x0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Le/m/a/f/e/a/a/w0;->a:Le/m/a/f/e/a/a/x0;

    .line 7
    iget-object p1, p1, Le/m/a/f/e/a/a/x0;->m:Ljava/util/concurrent/locks/Lock;

    .line 8
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    iget-object v0, p0, Le/m/a/f/e/a/a/w0;->a:Le/m/a/f/e/a/a/x0;

    .line 10
    iget-object v0, v0, Le/m/a/f/e/a/a/x0;->m:Ljava/util/concurrent/locks/Lock;

    .line 11
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 12
    throw p1
.end method

.method public final c(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Le/m/a/f/e/a/a/w0;->a:Le/m/a/f/e/a/a/x0;

    .line 1
    iget-object v0, v0, Le/m/a/f/e/a/a/x0;->m:Ljava/util/concurrent/locks/Lock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Le/m/a/f/e/a/a/w0;->a:Le/m/a/f/e/a/a/x0;

    .line 3
    iput-object p1, v0, Le/m/a/f/e/a/a/x0;->k:Lcom/google/android/gms/common/ConnectionResult;

    .line 4
    invoke-static {v0}, Le/m/a/f/e/a/a/x0;->q(Le/m/a/f/e/a/a/x0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Le/m/a/f/e/a/a/w0;->a:Le/m/a/f/e/a/a/x0;

    .line 6
    iget-object p1, p1, Le/m/a/f/e/a/a/x0;->m:Ljava/util/concurrent/locks/Lock;

    .line 7
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 8
    iget-object v0, p0, Le/m/a/f/e/a/a/w0;->a:Le/m/a/f/e/a/a/x0;

    .line 9
    iget-object v0, v0, Le/m/a/f/e/a/a/x0;->m:Ljava/util/concurrent/locks/Lock;

    .line 10
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 11
    throw p1
.end method
