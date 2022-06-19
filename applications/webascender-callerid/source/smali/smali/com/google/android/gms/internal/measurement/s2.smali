.class public abstract Lcom/google/android/gms/internal/measurement/s2;
.super Lcom/google/android/gms/internal/measurement/t;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/t3;


# direct methods
.method public static w(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/t3;
    .locals 2

    const-string v0, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/t3;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/measurement/t3;

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/r1;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/r1;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
