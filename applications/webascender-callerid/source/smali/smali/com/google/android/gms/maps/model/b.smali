.class public final Lcom/google/android/gms/maps/model/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lg/f/a/d/c/j/d;


# direct methods
.method public static a(I)Lcom/google/android/gms/maps/model/a;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/a;

    invoke-static {}, Lcom/google/android/gms/maps/model/b;->c()Lg/f/a/d/c/j/d;

    move-result-object v1

    invoke-interface {v1, p0}, Lg/f/a/d/c/j/d;->c(I)Lcom/google/android/gms/dynamic/b;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/a;-><init>(Lcom/google/android/gms/dynamic/b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public static b(Lg/f/a/d/c/j/d;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/maps/model/b;->a:Lg/f/a/d/c/j/d;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lg/f/a/d/c/j/d;

    sput-object p0, Lcom/google/android/gms/maps/model/b;->a:Lg/f/a/d/c/j/d;

    return-void
.end method

.method private static c()Lg/f/a/d/c/j/d;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/maps/model/b;->a:Lg/f/a/d/c/j/d;

    const-string v1, "IBitmapDescriptorFactory is not initialized"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/r;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lg/f/a/d/c/j/d;

    return-object v0
.end method
