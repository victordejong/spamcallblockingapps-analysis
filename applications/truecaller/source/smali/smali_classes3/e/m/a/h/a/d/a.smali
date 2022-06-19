.class public final Le/m/a/h/a/d/a;
.super Le/m/a/h/a/d/o1;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/d/c;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.play.core.integrity.protocol.IIntegrityService"

    .line 1
    invoke-direct {p0, p1, v0}, Le/m/a/h/a/d/o1;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final o0(Landroid/os/Bundle;Le/m/a/h/a/d/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/a/h/a/d/o1;->m1()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    sget v1, Le/m/a/h/a/d/q1;->a:I

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 p1, 0x2

    .line 6
    invoke-virtual {p0, p1, v0}, Le/m/a/h/a/d/o1;->B1(ILandroid/os/Parcel;)V

    return-void
.end method
