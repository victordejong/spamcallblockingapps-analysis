.class public final Lg/f/a/d/c/i/p;
.super Lg/f/a/d/c/i/y;
.source "SourceFile"


# instance fields
.field private final H:Lg/f/a/d/c/i/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/d$b;Lcom/google/android/gms/common/api/d$c;Ljava/lang/String;Lcom/google/android/gms/common/internal/e;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lg/f/a/d/c/i/y;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/d$b;Lcom/google/android/gms/common/api/d$c;Ljava/lang/String;Lcom/google/android/gms/common/internal/e;)V

    .line 2
    new-instance p2, Lg/f/a/d/c/i/i;

    iget-object p3, p0, Lg/f/a/d/c/i/y;->G:Lg/f/a/d/c/i/v;

    invoke-direct {p2, p1, p3}, Lg/f/a/d/c/i/i;-><init>(Landroid/content/Context;Lg/f/a/d/c/i/v;)V

    iput-object p2, p0, Lg/f/a/d/c/i/p;->H:Lg/f/a/d/c/i/i;

    return-void
.end method


# virtual methods
.method public final m()V
    .locals 4

    .line 1
    iget-object v0, p0, Lg/f/a/d/c/i/p;->H:Lg/f/a/d/c/i/i;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->b()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3
    :try_start_1
    iget-object v1, p0, Lg/f/a/d/c/i/p;->H:Lg/f/a/d/c/i/i;

    invoke-virtual {v1}, Lg/f/a/d/c/i/i;->g()V

    .line 4
    iget-object v1, p0, Lg/f/a/d/c/i/p;->H:Lg/f/a/d/c/i/i;

    invoke-virtual {v1}, Lg/f/a/d/c/i/i;->h()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "LocationClientImpl"

    const-string v3, "Client disconnected before listeners could be cleaned up"

    .line 5
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/c;->m()V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final v0(Ljava/lang/String;)Landroid/location/Location;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->r()[Lcom/google/android/gms/common/d;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/google/android/gms/location/y;->c:Lcom/google/android/gms/common/d;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/util/b;->b([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lg/f/a/d/c/i/p;->H:Lg/f/a/d/c/i/i;

    invoke-virtual {v0, p1}, Lg/f/a/d/c/i/i;->b(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object p1, p0, Lg/f/a/d/c/i/p;->H:Lg/f/a/d/c/i/i;

    invoke-virtual {p1}, Lg/f/a/d/c/i/i;->a()Landroid/location/Location;

    move-result-object p1

    return-object p1
.end method

.method public final w0(Lg/f/a/d/c/i/s;Lcom/google/android/gms/common/api/internal/i;Lg/f/a/d/c/i/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/f/a/d/c/i/s;",
            "Lcom/google/android/gms/common/api/internal/i<",
            "Lcom/google/android/gms/location/b;",
            ">;",
            "Lg/f/a/d/c/i/e;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/f/a/d/c/i/p;->H:Lg/f/a/d/c/i/i;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lg/f/a/d/c/i/p;->H:Lg/f/a/d/c/i/i;

    invoke-virtual {v1, p1, p2, p3}, Lg/f/a/d/c/i/i;->c(Lg/f/a/d/c/i/s;Lcom/google/android/gms/common/api/internal/i;Lg/f/a/d/c/i/e;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final x0(Lcom/google/android/gms/common/api/internal/i$a;Lg/f/a/d/c/i/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/i$a<",
            "Lcom/google/android/gms/location/b;",
            ">;",
            "Lg/f/a/d/c/i/e;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/f/a/d/c/i/p;->H:Lg/f/a/d/c/i/i;

    invoke-virtual {v0, p1, p2}, Lg/f/a/d/c/i/i;->f(Lcom/google/android/gms/common/api/internal/i$a;Lg/f/a/d/c/i/e;)V

    return-void
.end method
