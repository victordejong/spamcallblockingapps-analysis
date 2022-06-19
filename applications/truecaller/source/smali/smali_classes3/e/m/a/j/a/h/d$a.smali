.class public abstract Le/m/a/j/a/h/d$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Le/m/a/j/a/h/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/j/a/h/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.youtube.player.internal.IConnectionCallbacks"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.google.android.youtube.player.internal.IConnectionCallbacks"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    move-object p4, p0

    check-cast p4, Le/m/a/j/a/h/k$e;

    .line 1
    iget-object p4, p4, Le/m/a/j/a/h/k$e;->a:Le/m/a/j/a/h/k;

    iget-object v0, p4, Le/m/a/j/a/h/k;->b:Landroid/os/Handler;

    new-instance v2, Le/m/a/j/a/h/k$d;

    invoke-direct {v2, p4, p1, p2}, Le/m/a/j/a/h/k$d;-><init>(Le/m/a/j/a/h/k;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
