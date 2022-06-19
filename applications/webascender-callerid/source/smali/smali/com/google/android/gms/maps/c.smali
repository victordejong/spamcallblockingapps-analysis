.class public final Lcom/google/android/gms/maps/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/c$a;,
        Lcom/google/android/gms/maps/c$e;,
        Lcom/google/android/gms/maps/c$b;,
        Lcom/google/android/gms/maps/c$c;,
        Lcom/google/android/gms/maps/c$d;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/maps/g/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/g/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/maps/g/b;

    iput-object p1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/g/b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/maps/model/d;)Lcom/google/android/gms/maps/model/c;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/g/b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/g/b;->A2(Lcom/google/android/gms/maps/model/d;)Lg/f/a/d/c/j/g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/maps/model/c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/c;-><init>(Lg/f/a/d/c/j/g;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final b()Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/g/b;

    invoke-interface {v0}, Lcom/google/android/gms/maps/g/b;->x0()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final c(Lcom/google/android/gms/maps/a;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/g/b;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/a;->a()Lcom/google/android/gms/dynamic/b;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/g/b;->w0(Lcom/google/android/gms/dynamic/b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final d(Lcom/google/android/gms/maps/c$a;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/g/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/g/b;->q2(Lcom/google/android/gms/maps/g/o;)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/g/b;

    new-instance v1, Lcom/google/android/gms/maps/k;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/k;-><init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/c$a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/g/b;->q2(Lcom/google/android/gms/maps/g/o;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final e(Lcom/google/android/gms/maps/c$b;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/g/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/g/b;->p1(Lcom/google/android/gms/maps/g/r;)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/g/b;

    new-instance v1, Lcom/google/android/gms/maps/n;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/n;-><init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/c$b;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/g/b;->p1(Lcom/google/android/gms/maps/g/r;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final f(Lcom/google/android/gms/maps/c$c;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/g/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/g/b;->R1(Lcom/google/android/gms/maps/g/t;)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/g/b;

    new-instance v1, Lcom/google/android/gms/maps/m;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/m;-><init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/c$c;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/g/b;->R1(Lcom/google/android/gms/maps/g/t;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final g(Lcom/google/android/gms/maps/c$d;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/g/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/g/b;->W(Lcom/google/android/gms/maps/g/v;)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/g/b;

    new-instance v1, Lcom/google/android/gms/maps/l;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/l;-><init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/c$d;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/g/b;->W(Lcom/google/android/gms/maps/g/v;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final h(Lcom/google/android/gms/maps/c$e;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/g/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/g/b;->i2(Lcom/google/android/gms/maps/g/e;)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/g/b;

    new-instance v1, Lcom/google/android/gms/maps/j;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/j;-><init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/c$e;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/g/b;->i2(Lcom/google/android/gms/maps/g/e;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method
