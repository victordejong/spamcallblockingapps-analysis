.class public abstract Lcom/google/android/gms/internal/ads/zzcfp;
.super Lcom/google/android/gms/internal/ads/zzadk;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcfq;


# direct methods
.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzcfq;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.signals.ISignalGeneratorCreator"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzcfq;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzcfq;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcfo;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcfo;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
