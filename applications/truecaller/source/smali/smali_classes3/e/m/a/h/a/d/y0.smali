.class public abstract Le/m/a/h/a/d/y0;
.super Le/m/a/h/a/d/p1;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/d/z0;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.play.core.splitinstall.protocol.ISplitInstallServiceCallback"

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

    const/4 p3, 0x1

    const/4 p4, 0x0

    packed-switch p1, :pswitch_data_0

    return p4

    .line 1
    :pswitch_0
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    invoke-static {p2, p1}, Le/m/a/h/a/d/q1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 3
    move-object p1, p0

    check-cast p1, Le/m/a/h/a/g/x;

    .line 4
    iget-object p1, p1, Le/m/a/h/a/g/x;->b:Le/m/a/h/a/g/y;

    iget-object p1, p1, Le/m/a/h/a/g/y;->b:Le/m/a/h/a/d/r;

    .line 5
    invoke-virtual {p1}, Le/m/a/h/a/d/r;->c()V

    .line 6
    sget-object p1, Le/m/a/h/a/g/y;->c:Le/m/a/h/a/d/g;

    new-array p2, p4, [Ljava/lang/Object;

    const-string p4, "onDeferredLanguageUninstall"

    .line 7
    invoke-virtual {p1, p4, p2}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 8
    :pswitch_1
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    invoke-static {p2, p1}, Le/m/a/h/a/d/q1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 10
    move-object p1, p0

    check-cast p1, Le/m/a/h/a/g/x;

    .line 11
    iget-object p1, p1, Le/m/a/h/a/g/x;->b:Le/m/a/h/a/g/y;

    iget-object p1, p1, Le/m/a/h/a/g/y;->b:Le/m/a/h/a/d/r;

    .line 12
    invoke-virtual {p1}, Le/m/a/h/a/d/r;->c()V

    .line 13
    sget-object p1, Le/m/a/h/a/g/y;->c:Le/m/a/h/a/d/g;

    new-array p2, p4, [Ljava/lang/Object;

    const-string p4, "onDeferredLanguageInstall"

    .line 14
    invoke-virtual {p1, p4, p2}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 15
    :pswitch_2
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    invoke-static {p2, p1}, Le/m/a/h/a/d/q1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 17
    move-object p1, p0

    check-cast p1, Le/m/a/h/a/g/x;

    .line 18
    iget-object p1, p1, Le/m/a/h/a/g/x;->b:Le/m/a/h/a/g/y;

    iget-object p1, p1, Le/m/a/h/a/g/y;->b:Le/m/a/h/a/d/r;

    .line 19
    invoke-virtual {p1}, Le/m/a/h/a/d/r;->c()V

    .line 20
    sget-object p1, Le/m/a/h/a/g/y;->c:Le/m/a/h/a/d/g;

    new-array p2, p4, [Ljava/lang/Object;

    const-string p4, "onCompleteInstallForAppUpdate"

    .line 21
    invoke-virtual {p1, p4, p2}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 22
    :pswitch_3
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 23
    invoke-static {p2, p1}, Le/m/a/h/a/d/q1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 24
    move-object p1, p0

    check-cast p1, Le/m/a/h/a/g/x;

    .line 25
    iget-object p1, p1, Le/m/a/h/a/g/x;->b:Le/m/a/h/a/g/y;

    iget-object p1, p1, Le/m/a/h/a/g/y;->b:Le/m/a/h/a/d/r;

    .line 26
    invoke-virtual {p1}, Le/m/a/h/a/d/r;->c()V

    .line 27
    sget-object p1, Le/m/a/h/a/g/y;->c:Le/m/a/h/a/d/g;

    new-array p2, p4, [Ljava/lang/Object;

    const-string p4, "onGetSplitsForAppUpdate"

    .line 28
    invoke-virtual {p1, p4, p2}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 29
    :pswitch_4
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 30
    invoke-static {p2, p1}, Le/m/a/h/a/d/q1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 31
    move-object p1, p0

    check-cast p1, Le/m/a/h/a/g/x;

    .line 32
    iget-object p1, p1, Le/m/a/h/a/g/x;->b:Le/m/a/h/a/g/y;

    iget-object p1, p1, Le/m/a/h/a/g/y;->b:Le/m/a/h/a/d/r;

    .line 33
    invoke-virtual {p1}, Le/m/a/h/a/d/r;->c()V

    .line 34
    sget-object p1, Le/m/a/h/a/g/y;->c:Le/m/a/h/a/d/g;

    new-array p2, p4, [Ljava/lang/Object;

    const-string p4, "onDeferredInstall"

    .line 35
    invoke-virtual {p1, p4, p2}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 36
    :pswitch_5
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 37
    invoke-static {p2, p1}, Le/m/a/h/a/d/q1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 38
    invoke-interface {p0, p1}, Le/m/a/h/a/d/z0;->P(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_6
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 39
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 40
    move-object p1, p0

    check-cast p1, Le/m/a/h/a/g/x;

    .line 41
    iget-object p1, p1, Le/m/a/h/a/g/x;->b:Le/m/a/h/a/g/y;

    iget-object p1, p1, Le/m/a/h/a/g/y;->b:Le/m/a/h/a/d/r;

    .line 42
    invoke-virtual {p1}, Le/m/a/h/a/d/r;->c()V

    .line 43
    sget-object p1, Le/m/a/h/a/g/y;->c:Le/m/a/h/a/d/g;

    new-array p2, p4, [Ljava/lang/Object;

    const-string p4, "onGetSessionStates"

    .line 44
    invoke-virtual {p1, p4, p2}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 45
    :pswitch_7
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 46
    invoke-static {p2, p1}, Le/m/a/h/a/d/q1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 47
    move-object p2, p0

    check-cast p2, Le/m/a/h/a/g/x;

    .line 48
    iget-object v0, p2, Le/m/a/h/a/g/x;->b:Le/m/a/h/a/g/y;

    iget-object v0, v0, Le/m/a/h/a/g/y;->b:Le/m/a/h/a/d/r;

    .line 49
    invoke-virtual {v0}, Le/m/a/h/a/d/r;->c()V

    const-string v0, "error_code"

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 51
    sget-object v0, Le/m/a/h/a/g/y;->c:Le/m/a/h/a/d/g;

    new-array v1, p3, [Ljava/lang/Object;

    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p4

    const-string p4, "onError(%d)"

    invoke-virtual {v0, p4, v1}, Le/m/a/h/a/d/g;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p2, p2, Le/m/a/h/a/g/x;->a:Le/m/a/h/a/h/n;

    new-instance p4, Le/m/a/h/a/g/a;

    .line 53
    invoke-direct {p4, p1}, Le/m/a/h/a/g/a;-><init>(I)V

    invoke-virtual {p2, p4}, Le/m/a/h/a/h/n;->a(Ljava/lang/Exception;)Z

    goto :goto_0

    .line 54
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 55
    invoke-static {p2, v0}, Le/m/a/h/a/d/q1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 56
    move-object p2, p0

    check-cast p2, Le/m/a/h/a/g/x;

    .line 57
    iget-object p2, p2, Le/m/a/h/a/g/x;->b:Le/m/a/h/a/g/y;

    iget-object p2, p2, Le/m/a/h/a/g/y;->b:Le/m/a/h/a/d/r;

    .line 58
    invoke-virtual {p2}, Le/m/a/h/a/d/r;->c()V

    .line 59
    sget-object p2, Le/m/a/h/a/g/y;->c:Le/m/a/h/a/d/g;

    new-array v0, p3, [Ljava/lang/Object;

    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p4

    const-string p1, "onGetSession(%d)"

    invoke-virtual {p2, p1, v0}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 61
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 62
    invoke-static {p2, p4}, Le/m/a/h/a/d/q1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 63
    invoke-interface {p0, p1, p2}, Le/m/a/h/a/d/z0;->V(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 64
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 65
    invoke-static {p2, v0}, Le/m/a/h/a/d/q1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 66
    move-object p2, p0

    check-cast p2, Le/m/a/h/a/g/x;

    .line 67
    iget-object p2, p2, Le/m/a/h/a/g/x;->b:Le/m/a/h/a/g/y;

    iget-object p2, p2, Le/m/a/h/a/g/y;->b:Le/m/a/h/a/d/r;

    .line 68
    invoke-virtual {p2}, Le/m/a/h/a/d/r;->c()V

    .line 69
    sget-object p2, Le/m/a/h/a/g/y;->c:Le/m/a/h/a/d/g;

    new-array v0, p3, [Ljava/lang/Object;

    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p4

    const-string p1, "onCompleteInstall(%d)"

    invoke-virtual {p2, p1, v0}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 71
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 72
    invoke-static {p2, p4}, Le/m/a/h/a/d/q1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 73
    invoke-interface {p0, p1, p2}, Le/m/a/h/a/d/z0;->F0(ILandroid/os/Bundle;)V

    :goto_0
    return p3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
