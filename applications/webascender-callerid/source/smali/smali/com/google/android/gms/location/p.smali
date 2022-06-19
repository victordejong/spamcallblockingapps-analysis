.class public abstract Lcom/google/android/gms/location/p;
.super Lg/f/a/d/c/i/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/location/m;


# direct methods
.method public static w(Landroid/os/IBinder;)Lcom/google/android/gms/location/m;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.location.ILocationListener"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/location/m;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/google/android/gms/location/m;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/google/android/gms/location/o;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/o;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final q(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 1
    sget-object p1, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lg/f/a/d/c/i/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    .line 2
    invoke-interface {p0, p1}, Lcom/google/android/gms/location/m;->T0(Landroid/location/Location;)V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
