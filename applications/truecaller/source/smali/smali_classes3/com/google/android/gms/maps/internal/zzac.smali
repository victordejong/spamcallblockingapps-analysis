.class public abstract Lcom/google/android/gms/maps/internal/zzac;
.super Lcom/google/android/gms/internal/maps/zzb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/internal/zzab;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.maps.internal.IOnInfoWindowClickListener"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/maps/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    if-ne p1, p4, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/maps/zzu;->zzg(Landroid/os/IBinder;)Lcom/google/android/gms/internal/maps/zzt;

    move-result-object p1

    .line 2
    move-object p2, p0

    check-cast p2, Le/m/a/f/k/g;

    .line 3
    iget-object p2, p2, Le/m/a/f/k/g;->a:Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;

    new-instance v0, Lcom/google/android/gms/maps/model/Marker;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/internal/maps/zzt;)V

    invoke-interface {p2, v0}, Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;->a(Lcom/google/android/gms/maps/model/Marker;)V

    .line 4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
