.class public final Le/m/a/f/e/a/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/api/internal/zaar;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/zaar;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/e/a/a/l;->a:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 2

    iget-object p1, p0, Le/m/a/f/e/a/a/l;->a:Lcom/google/android/gms/common/api/internal/zaar;

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zaar;->r:Lcom/google/android/gms/common/internal/ClientSettings;

    const-string v0, "null reference"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Le/m/a/f/e/a/a/l;->a:Lcom/google/android/gms/common/api/internal/zaar;

    .line 4
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zaar;->k:Lcom/google/android/gms/signin/zae;

    .line 5
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance v0, Le/m/a/f/e/a/a/k;

    iget-object v1, p0, Le/m/a/f/e/a/a/l;->a:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-direct {v0, v1}, Le/m/a/f/e/a/a/k;-><init>(Lcom/google/android/gms/common/api/internal/zaar;)V

    .line 7
    invoke-interface {p1, v0}, Lcom/google/android/gms/signin/zae;->d(Lcom/google/android/gms/signin/internal/zae;)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Le/m/a/f/e/a/a/l;->a:Lcom/google/android/gms/common/api/internal/zaar;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaar;->b:Ljava/util/concurrent/locks/Lock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Le/m/a/f/e/a/a/l;->a:Lcom/google/android/gms/common/api/internal/zaar;

    .line 3
    iget-boolean v0, v0, Lcom/google/android/gms/common/api/internal/zaar;->l:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->o2()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p0, Le/m/a/f/e/a/a/l;->a:Lcom/google/android/gms/common/api/internal/zaar;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zaar;->l()V

    .line 7
    iget-object p1, p0, Le/m/a/f/e/a/a/l;->a:Lcom/google/android/gms/common/api/internal/zaar;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zaar;->i()V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v0, p0, Le/m/a/f/e/a/a/l;->a:Lcom/google/android/gms/common/api/internal/zaar;

    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zaar;->m(Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :goto_1
    iget-object p1, p0, Le/m/a/f/e/a/a/l;->a:Lcom/google/android/gms/common/api/internal/zaar;

    .line 12
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zaar;->b:Ljava/util/concurrent/locks/Lock;

    .line 13
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Le/m/a/f/e/a/a/l;->a:Lcom/google/android/gms/common/api/internal/zaar;

    .line 14
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaar;->b:Ljava/util/concurrent/locks/Lock;

    .line 15
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 16
    throw p1
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
