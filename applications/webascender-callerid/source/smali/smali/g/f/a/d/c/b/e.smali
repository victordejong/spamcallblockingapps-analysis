.class public final Lg/f/a/d/c/b/e;
.super Lg/f/a/d/c/b/c;
.source "SourceFile"

# interfaces
.implements Lg/f/a/d/c/b/f;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService"

    .line 1
    invoke-direct {p0, p1, v0}, Lg/f/a/d/c/b/c;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final s1(Lg/f/a/d/c/b/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lg/f/a/d/c/b/c;->q()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lg/f/a/d/c/b/d;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Lg/f/a/d/c/b/c;->w(ILandroid/os/Parcel;)V

    return-void
.end method
