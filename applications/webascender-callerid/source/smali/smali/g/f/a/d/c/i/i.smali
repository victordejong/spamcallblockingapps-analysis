.class public final Lg/f/a/d/c/i/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lg/f/a/d/c/i/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/f/a/d/c/i/v<",
            "Lg/f/a/d/c/i/g;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/i$a<",
            "Lcom/google/android/gms/location/c;",
            ">;",
            "Lg/f/a/d/c/i/o;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/i$a<",
            "Ljava/lang/Object;",
            ">;",
            "Lg/f/a/d/c/i/l;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/i$a<",
            "Lcom/google/android/gms/location/b;",
            ">;",
            "Lg/f/a/d/c/i/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg/f/a/d/c/i/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lg/f/a/d/c/i/v<",
            "Lg/f/a/d/c/i/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lg/f/a/d/c/i/i;->b:Z

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lg/f/a/d/c/i/i;->c:Ljava/util/Map;

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lg/f/a/d/c/i/i;->d:Ljava/util/Map;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lg/f/a/d/c/i/i;->e:Ljava/util/Map;

    .line 6
    iput-object p2, p0, Lg/f/a/d/c/i/i;->a:Lg/f/a/d/c/i/v;

    return-void
.end method

.method private final e(Lcom/google/android/gms/common/api/internal/i;)Lg/f/a/d/c/i/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/i<",
            "Lcom/google/android/gms/location/b;",
            ">;)",
            "Lg/f/a/d/c/i/k;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/i;->b()Lcom/google/android/gms/common/api/internal/i$a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v1, p0, Lg/f/a/d/c/i/i;->e:Ljava/util/Map;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lg/f/a/d/c/i/i;->e:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/f/a/d/c/i/k;

    if-nez v2, :cond_1

    .line 4
    new-instance v2, Lg/f/a/d/c/i/k;

    invoke-direct {v2, p1}, Lg/f/a/d/c/i/k;-><init>(Lcom/google/android/gms/common/api/internal/i;)V

    .line 5
    :cond_1
    iget-object p1, p0, Lg/f/a/d/c/i/i;->e:Ljava/util/Map;

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a()Landroid/location/Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lg/f/a/d/c/i/i;->a:Lg/f/a/d/c/i/v;

    invoke-interface {v0}, Lg/f/a/d/c/i/v;->zza()V

    .line 2
    iget-object v0, p0, Lg/f/a/d/c/i/i;->a:Lg/f/a/d/c/i/v;

    invoke-interface {v0}, Lg/f/a/d/c/i/v;->a()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lg/f/a/d/c/i/g;

    invoke-interface {v0}, Lg/f/a/d/c/i/g;->zza()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Landroid/location/Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/f/a/d/c/i/i;->a:Lg/f/a/d/c/i/v;

    invoke-interface {v0}, Lg/f/a/d/c/i/v;->zza()V

    .line 2
    iget-object v0, p0, Lg/f/a/d/c/i/i;->a:Lg/f/a/d/c/i/v;

    invoke-interface {v0}, Lg/f/a/d/c/i/v;->a()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lg/f/a/d/c/i/g;

    invoke-interface {v0, p1}, Lg/f/a/d/c/i/g;->g(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lg/f/a/d/c/i/s;Lcom/google/android/gms/common/api/internal/i;Lg/f/a/d/c/i/e;)V
    .locals 9
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
    iget-object v0, p0, Lg/f/a/d/c/i/i;->a:Lg/f/a/d/c/i/v;

    invoke-interface {v0}, Lg/f/a/d/c/i/v;->zza()V

    .line 2
    invoke-direct {p0, p2}, Lg/f/a/d/c/i/i;->e(Lcom/google/android/gms/common/api/internal/i;)Lg/f/a/d/c/i/k;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lg/f/a/d/c/i/i;->a:Lg/f/a/d/c/i/v;

    .line 4
    invoke-interface {v0}, Lg/f/a/d/c/i/v;->a()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lg/f/a/d/c/i/g;

    .line 5
    new-instance v8, Lg/f/a/d/c/i/u;

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 6
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-eqz p3, :cond_1

    .line 7
    invoke-interface {p3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    move-object v7, p2

    move-object v1, v8

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lg/f/a/d/c/i/u;-><init>(ILg/f/a/d/c/i/s;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 8
    invoke-interface {v0, v8}, Lg/f/a/d/c/i/g;->s2(Lg/f/a/d/c/i/u;)V

    return-void
.end method

.method public final d(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/f/a/d/c/i/i;->a:Lg/f/a/d/c/i/v;

    invoke-interface {v0}, Lg/f/a/d/c/i/v;->zza()V

    .line 2
    iget-object v0, p0, Lg/f/a/d/c/i/i;->a:Lg/f/a/d/c/i/v;

    invoke-interface {v0}, Lg/f/a/d/c/i/v;->a()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lg/f/a/d/c/i/g;

    invoke-interface {v0, p1}, Lg/f/a/d/c/i/g;->Q1(Z)V

    .line 3
    iput-boolean p1, p0, Lg/f/a/d/c/i/i;->b:Z

    return-void
.end method

.method public final f(Lcom/google/android/gms/common/api/internal/i$a;Lg/f/a/d/c/i/e;)V
    .locals 2
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
    iget-object v0, p0, Lg/f/a/d/c/i/i;->a:Lg/f/a/d/c/i/v;

    invoke-interface {v0}, Lg/f/a/d/c/i/v;->zza()V

    const-string v0, "Invalid null listener key"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/r;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lg/f/a/d/c/i/i;->e:Ljava/util/Map;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lg/f/a/d/c/i/i;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/f/a/d/c/i/k;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lg/f/a/d/c/i/k;->B()V

    .line 6
    iget-object v1, p0, Lg/f/a/d/c/i/i;->a:Lg/f/a/d/c/i/v;

    .line 7
    invoke-interface {v1}, Lg/f/a/d/c/i/v;->a()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lg/f/a/d/c/i/g;

    .line 8
    invoke-static {p1, p2}, Lg/f/a/d/c/i/u;->y1(Lcom/google/android/gms/location/l;Lg/f/a/d/c/i/e;)Lg/f/a/d/c/i/u;

    move-result-object p1

    .line 9
    invoke-interface {v1, p1}, Lg/f/a/d/c/i/g;->s2(Lg/f/a/d/c/i/u;)V

    .line 10
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final g()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/f/a/d/c/i/i;->c:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lg/f/a/d/c/i/i;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/f/a/d/c/i/o;

    if-eqz v2, :cond_0

    .line 3
    iget-object v4, p0, Lg/f/a/d/c/i/i;->a:Lg/f/a/d/c/i/v;

    .line 4
    invoke-interface {v4}, Lg/f/a/d/c/i/v;->a()Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lg/f/a/d/c/i/g;

    .line 5
    invoke-static {v2, v3}, Lg/f/a/d/c/i/u;->z1(Lcom/google/android/gms/location/m;Lg/f/a/d/c/i/e;)Lg/f/a/d/c/i/u;

    move-result-object v2

    .line 6
    invoke-interface {v4, v2}, Lg/f/a/d/c/i/g;->s2(Lg/f/a/d/c/i/u;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lg/f/a/d/c/i/i;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 9
    iget-object v1, p0, Lg/f/a/d/c/i/i;->e:Ljava/util/Map;

    monitor-enter v1

    .line 10
    :try_start_1
    iget-object v0, p0, Lg/f/a/d/c/i/i;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/f/a/d/c/i/k;

    if-eqz v2, :cond_2

    .line 11
    iget-object v4, p0, Lg/f/a/d/c/i/i;->a:Lg/f/a/d/c/i/v;

    .line 12
    invoke-interface {v4}, Lg/f/a/d/c/i/v;->a()Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lg/f/a/d/c/i/g;

    .line 13
    invoke-static {v2, v3}, Lg/f/a/d/c/i/u;->y1(Lcom/google/android/gms/location/l;Lg/f/a/d/c/i/e;)Lg/f/a/d/c/i/u;

    move-result-object v2

    .line 14
    invoke-interface {v4, v2}, Lg/f/a/d/c/i/g;->s2(Lg/f/a/d/c/i/u;)V

    goto :goto_1

    .line 15
    :cond_3
    iget-object v0, p0, Lg/f/a/d/c/i/i;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 16
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    iget-object v0, p0, Lg/f/a/d/c/i/i;->d:Ljava/util/Map;

    monitor-enter v0

    .line 18
    :try_start_2
    iget-object v1, p0, Lg/f/a/d/c/i/i;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/f/a/d/c/i/l;

    if-eqz v2, :cond_4

    .line 19
    iget-object v4, p0, Lg/f/a/d/c/i/i;->a:Lg/f/a/d/c/i/v;

    .line 20
    invoke-interface {v4}, Lg/f/a/d/c/i/v;->a()Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lg/f/a/d/c/i/g;

    .line 21
    new-instance v5, Lg/f/a/d/c/i/b0;

    const/4 v6, 0x2

    .line 22
    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 23
    invoke-direct {v5, v6, v3, v2, v3}, Lg/f/a/d/c/i/b0;-><init>(ILg/f/a/d/c/i/z;Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 24
    invoke-interface {v4, v5}, Lg/f/a/d/c/i/g;->z1(Lg/f/a/d/c/i/b0;)V

    goto :goto_2

    .line 25
    :cond_5
    iget-object v1, p0, Lg/f/a/d/c/i/i;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 26
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    .line 27
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    .line 28
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method public final h()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lg/f/a/d/c/i/i;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lg/f/a/d/c/i/i;->d(Z)V

    :cond_0
    return-void
.end method
