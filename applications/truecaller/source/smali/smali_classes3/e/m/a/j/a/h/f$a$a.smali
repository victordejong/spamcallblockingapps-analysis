.class public final Le/m/a/j/a/h/f$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/j/a/h/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/j/a/h/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/j/a/h/f$a$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Le/m/a/j/a/h/f$a$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public final j0(Le/m/a/j/a/h/d;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.google.android.youtube.player.internal.IServiceBroker"

    invoke-virtual {p6, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    check-cast p1, Le/m/a/j/a/h/d$a;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p6, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {p6, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p6, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p6, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p6, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {p6, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p3, p0, Le/m/a/j/a/h/f$a$a;->a:Landroid/os/IBinder;

    invoke-interface {p3, p1, p6, v0, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v0}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {p6}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {p6}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
