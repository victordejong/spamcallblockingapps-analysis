.class public abstract Le/m/a/h/a/d/d;
.super Le/m/a/h/a/d/p1;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/d/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.play.core.integrity.protocol.IIntegrityServiceCallback"

    .line 1
    invoke-direct {p0, v0}, Le/m/a/h/a/d/p1;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final m1(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x0

    const/4 p4, 0x2

    if-ne p1, p4, :cond_2

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1
    invoke-static {p2, p1}, Le/m/a/h/a/d/q1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 2
    move-object p2, p0

    check-cast p2, Le/m/a/h/a/c/q;

    .line 3
    iget-object p4, p2, Le/m/a/h/a/c/q;->c:Le/m/a/h/a/c/r;

    iget-object p4, p4, Le/m/a/h/a/c/r;->c:Le/m/a/h/a/d/r;

    iget-object v0, p2, Le/m/a/h/a/c/q;->b:Le/m/a/h/a/h/n;

    .line 4
    iget-object v1, p4, Le/m/a/h/a/d/r;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p4, Le/m/a/h/a/d/r;->e:Ljava/util/Set;

    .line 5
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p4}, Le/m/a/h/a/d/r;->c()V

    .line 8
    iget-object p4, p2, Le/m/a/h/a/c/q;->a:Le/m/a/h/a/d/g;

    const-string v0, "onRequestIntegrityToken"

    new-array p3, p3, [Ljava/lang/Object;

    .line 9
    invoke-virtual {p4, v0, p3}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    const-string p3, "error"

    .line 10
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_0

    iget-object p1, p2, Le/m/a/h/a/c/q;->b:Le/m/a/h/a/h/n;

    new-instance p2, Le/m/a/h/a/c/b;

    .line 11
    invoke-direct {p2, p3}, Le/m/a/h/a/c/b;-><init>(I)V

    invoke-virtual {p1, p2}, Le/m/a/h/a/h/n;->a(Ljava/lang/Exception;)Z

    goto :goto_0

    :cond_0
    const-string p3, "token"

    .line 12
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p2, Le/m/a/h/a/c/q;->b:Le/m/a/h/a/h/n;

    new-instance p2, Le/m/a/h/a/c/b;

    const/16 p3, -0x64

    .line 13
    invoke-direct {p2, p3}, Le/m/a/h/a/c/b;-><init>(I)V

    invoke-virtual {p1, p2}, Le/m/a/h/a/h/n;->a(Ljava/lang/Exception;)Z

    goto :goto_0

    :cond_1
    iget-object p2, p2, Le/m/a/h/a/c/q;->b:Le/m/a/h/a/h/n;

    .line 14
    new-instance p3, Le/m/a/h/a/c/g;

    .line 15
    invoke-direct {p3, p1}, Le/m/a/h/a/c/g;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2, p3}, Le/m/a/h/a/h/n;->b(Ljava/lang/Object;)Z

    :goto_0
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    return p3
.end method
