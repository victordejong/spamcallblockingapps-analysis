.class public final Lcom/google/android/gms/internal/ads/zzbia;
.super Lcom/google/android/gms/internal/ads/zzbff;
.source "SourceFile"


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzbib;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbib;Lcom/google/android/gms/internal/ads/zzbhy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbia;->zza:Lcom/google/android/gms/internal/ads/zzbib;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbff;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zzbdg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbia;->zzi(Lcom/google/android/gms/internal/ads/zzbdg;I)V

    return-void
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzg()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzbdg;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzf(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcgm;->zza:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbhz;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzbhz;-><init>(Lcom/google/android/gms/internal/ads/zzbia;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
