.class public final Lg/f/a/d/c/l/i;
.super Lg/f/a/d/c/l/a;
.source "SourceFile"

# interfaces
.implements Lg/f/a/d/c/l/h;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.safetynet.internal.ISafetyNetService"

    invoke-direct {p0, p1, v0}, Lg/f/a/d/c/l/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final q0(Lg/f/a/d/c/l/f;[BLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lg/f/a/d/c/l/a;->q()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lg/f/a/d/c/l/c;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v0}, Lg/f/a/d/c/l/a;->w(ILandroid/os/Parcel;)V

    return-void
.end method
