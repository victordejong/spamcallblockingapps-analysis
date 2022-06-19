.class public abstract Lg/f/a/d/c/i/d;
.super Lg/f/a/d/c/i/a;
.source "SourceFile"

# interfaces
.implements Lg/f/a/d/c/i/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.location.internal.IFusedLocationProviderCallback"

    .line 1
    invoke-direct {p0, v0}, Lg/f/a/d/c/i/a;-><init>(Ljava/lang/String;)V

    return-void
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

    if-eq p1, p3, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-interface {p0}, Lg/f/a/d/c/i/e;->M1()V

    goto :goto_0

    .line 2
    :cond_1
    sget-object p1, Lg/f/a/d/c/i/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lg/f/a/d/c/i/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lg/f/a/d/c/i/c;

    .line 3
    invoke-interface {p0, p1}, Lg/f/a/d/c/i/e;->b2(Lg/f/a/d/c/i/c;)V

    :goto_0
    return p3
.end method
