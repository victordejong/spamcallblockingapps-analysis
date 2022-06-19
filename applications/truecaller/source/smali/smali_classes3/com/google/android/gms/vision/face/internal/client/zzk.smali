.class public final Lcom/google/android/gms/vision/face/internal/client/zzk;
.super Lcom/google/android/gms/internal/vision/zzb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/vision/face/internal/client/zzi;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.vision.face.internal.client.INativeFaceDetectorCreator"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzb;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final r(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/vision/face/internal/client/zzf;)Lcom/google/android/gms/vision/face/internal/client/zzh;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzb;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object p2

    .line 2
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/vision/zzd;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x0

    .line 3
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/vision/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/zzb;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "com.google.android.gms.vision.face.internal.client.INativeFaceDetector"

    .line 6
    invoke-interface {v0, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    .line 7
    instance-of v1, p1, Lcom/google/android/gms/vision/face/internal/client/zzh;

    if-eqz v1, :cond_1

    .line 8
    check-cast p1, Lcom/google/android/gms/vision/face/internal/client/zzh;

    goto :goto_0

    .line 9
    :cond_1
    new-instance p1, Lcom/google/android/gms/vision/face/internal/client/zzj;

    invoke-direct {p1, v0}, Lcom/google/android/gms/vision/face/internal/client/zzj;-><init>(Landroid/os/IBinder;)V

    .line 10
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    return-object p1
.end method
