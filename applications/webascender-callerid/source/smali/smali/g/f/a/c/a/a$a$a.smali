.class public Lg/f/a/c/a/a$a$a;
.super Lg/f/a/a/a;
.source "SourceFile"

# interfaces
.implements Lg/f/a/c/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/f/a/c/a/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/f/a/a/a;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public final B0(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lg/f/a/a/a;->q()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lg/f/a/a/c;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 3
    invoke-virtual {p0, v0}, Lg/f/a/a/a;->w(Landroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4
    invoke-static {p1, v0}, Lg/f/a/a/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method
