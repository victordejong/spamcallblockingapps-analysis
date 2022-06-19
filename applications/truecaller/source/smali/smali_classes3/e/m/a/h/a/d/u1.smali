.class public abstract Le/m/a/h/a/d/u1;
.super Le/m/a/h/a/d/p1;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/d/v1;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.play.core.assetpacks.protocol.IAssetModuleServiceCallback"

    .line 1
    invoke-direct {p0, v0}, Le/m/a/h/a/d/p1;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final m1(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x2

    const-string p4, "module_name"

    const-string v0, "session_id"

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v2

    .line 1
    :pswitch_1
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    invoke-static {p2, p1}, Le/m/a/h/a/d/q1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 3
    move-object p1, p0

    check-cast p1, Le/m/a/h/a/a/l;

    .line 4
    iget-object p1, p1, Le/m/a/h/a/a/l;->b:Le/m/a/h/a/a/t;

    .line 5
    iget-object p1, p1, Le/m/a/h/a/a/t;->d:Le/m/a/h/a/d/r;

    .line 6
    invoke-virtual {p1}, Le/m/a/h/a/d/r;->c()V

    .line 7
    sget-object p1, Le/m/a/h/a/a/t;->g:Le/m/a/h/a/d/g;

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "onCancelDownloads()"

    .line 8
    invoke-virtual {p1, p3, p2}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 9
    :pswitch_2
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 10
    invoke-static {p2, p1}, Le/m/a/h/a/d/q1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    .line 11
    invoke-static {p2, p1}, Le/m/a/h/a/d/q1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 12
    move-object p1, p0

    check-cast p1, Le/m/a/h/a/a/l;

    .line 13
    iget-object p1, p1, Le/m/a/h/a/a/l;->b:Le/m/a/h/a/a/t;

    .line 14
    iget-object p1, p1, Le/m/a/h/a/a/t;->d:Le/m/a/h/a/d/r;

    .line 15
    invoke-virtual {p1}, Le/m/a/h/a/d/r;->c()V

    .line 16
    sget-object p1, Le/m/a/h/a/a/t;->g:Le/m/a/h/a/d/g;

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "onRemoveModule()"

    .line 17
    invoke-virtual {p1, p3, p2}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 18
    :pswitch_3
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 19
    invoke-static {p2, p1}, Le/m/a/h/a/d/q1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    .line 20
    invoke-static {p2, p1}, Le/m/a/h/a/d/q1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 21
    move-object p1, p0

    check-cast p1, Le/m/a/h/a/a/l;

    .line 22
    iget-object p1, p1, Le/m/a/h/a/a/l;->b:Le/m/a/h/a/a/t;

    .line 23
    iget-object p1, p1, Le/m/a/h/a/a/t;->d:Le/m/a/h/a/d/r;

    .line 24
    invoke-virtual {p1}, Le/m/a/h/a/d/r;->c()V

    .line 25
    sget-object p1, Le/m/a/h/a/a/t;->g:Le/m/a/h/a/d/g;

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "onRequestDownloadInfo()"

    .line 26
    invoke-virtual {p1, p3, p2}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 27
    :pswitch_4
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 28
    invoke-static {p2, p1}, Le/m/a/h/a/d/q1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    .line 29
    invoke-static {p2, p1}, Le/m/a/h/a/d/q1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 30
    invoke-interface {p0, p3, p1}, Le/m/a/h/a/d/v1;->E(Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_5
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    invoke-static {p2, p1}, Le/m/a/h/a/d/q1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    .line 32
    invoke-static {p2, p1}, Le/m/a/h/a/d/q1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 33
    invoke-interface {p0, p3, p1}, Le/m/a/h/a/d/v1;->O0(Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_6
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 34
    invoke-static {p2, p1}, Le/m/a/h/a/d/q1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    .line 35
    invoke-static {p2, p1}, Le/m/a/h/a/d/q1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 36
    move-object p1, p0

    check-cast p1, Le/m/a/h/a/a/l;

    .line 37
    iget-object p1, p1, Le/m/a/h/a/a/l;->b:Le/m/a/h/a/a/t;

    .line 38
    iget-object p1, p1, Le/m/a/h/a/a/t;->d:Le/m/a/h/a/d/r;

    .line 39
    invoke-virtual {p1}, Le/m/a/h/a/d/r;->c()V

    .line 40
    sget-object p1, Le/m/a/h/a/a/t;->g:Le/m/a/h/a/d/g;

    new-array p2, v1, [Ljava/lang/Object;

    .line 41
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v2

    const-string p3, "onNotifySessionFailed(%d)"

    .line 42
    invoke-virtual {p1, p3, p2}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 43
    :pswitch_7
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 44
    invoke-static {p2, p1}, Le/m/a/h/a/d/q1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 45
    invoke-static {p2, p1}, Le/m/a/h/a/d/q1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 46
    move-object p1, p0

    check-cast p1, Le/m/a/h/a/a/l;

    .line 47
    iget-object p1, p1, Le/m/a/h/a/a/l;->b:Le/m/a/h/a/a/t;

    .line 48
    iget-object p1, p1, Le/m/a/h/a/a/t;->d:Le/m/a/h/a/d/r;

    .line 49
    invoke-virtual {p1}, Le/m/a/h/a/d/r;->c()V

    .line 50
    sget-object p1, Le/m/a/h/a/a/t;->g:Le/m/a/h/a/d/g;

    new-array p2, p3, [Ljava/lang/Object;

    .line 51
    invoke-virtual {v3, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v2

    .line 52
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v1

    const-string p3, "onNotifyModuleCompleted(%s, sessionId=%d)"

    .line 53
    invoke-virtual {p1, p3, p2}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 54
    :pswitch_8
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 55
    invoke-static {p2, p1}, Le/m/a/h/a/d/q1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 56
    invoke-interface {p0, p1}, Le/m/a/h/a/d/v1;->zzd(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 57
    :pswitch_9
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 58
    invoke-static {p2, p1}, Le/m/a/h/a/d/q1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 59
    invoke-static {p2, p1}, Le/m/a/h/a/d/q1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 60
    move-object p1, p0

    check-cast p1, Le/m/a/h/a/a/l;

    .line 61
    iget-object p1, p1, Le/m/a/h/a/a/l;->b:Le/m/a/h/a/a/t;

    .line 62
    iget-object p1, p1, Le/m/a/h/a/a/t;->d:Le/m/a/h/a/d/r;

    .line 63
    invoke-virtual {p1}, Le/m/a/h/a/d/r;->c()V

    .line 64
    sget-object p1, Le/m/a/h/a/a/t;->g:Le/m/a/h/a/d/g;

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    .line 65
    invoke-virtual {v3, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p2, v2

    const-string p4, "slice_id"

    .line 66
    invoke-virtual {v3, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p2, v1

    const-string p4, "chunk_number"

    .line 67
    invoke-virtual {v3, p4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    const/4 p3, 0x3

    .line 68
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    const-string p3, "onNotifyChunkTransferred(%s, %s, %d, session=%d)"

    .line 69
    invoke-virtual {p1, p3, p2}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 70
    :pswitch_a
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 71
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 72
    invoke-interface {p0, p1}, Le/m/a/h/a/d/v1;->zzg(Ljava/util/List;)V

    goto :goto_0

    .line 73
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 74
    invoke-static {p2, p3}, Le/m/a/h/a/d/q1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 75
    move-object p2, p0

    check-cast p2, Le/m/a/h/a/a/l;

    .line 76
    iget-object p2, p2, Le/m/a/h/a/a/l;->b:Le/m/a/h/a/a/t;

    .line 77
    iget-object p2, p2, Le/m/a/h/a/a/t;->d:Le/m/a/h/a/d/r;

    .line 78
    invoke-virtual {p2}, Le/m/a/h/a/d/r;->c()V

    .line 79
    sget-object p2, Le/m/a/h/a/a/t;->g:Le/m/a/h/a/d/g;

    new-array p3, v1, [Ljava/lang/Object;

    .line 80
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v2

    const-string p1, "onGetSession(%d)"

    invoke-virtual {p2, p1, p3}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 81
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 82
    invoke-static {p2, p3}, Le/m/a/h/a/d/q1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 83
    move-object p2, p0

    check-cast p2, Le/m/a/h/a/a/l;

    .line 84
    iget-object p2, p2, Le/m/a/h/a/a/l;->b:Le/m/a/h/a/a/t;

    .line 85
    iget-object p2, p2, Le/m/a/h/a/a/t;->d:Le/m/a/h/a/d/r;

    .line 86
    invoke-virtual {p2}, Le/m/a/h/a/d/r;->c()V

    .line 87
    sget-object p2, Le/m/a/h/a/a/t;->g:Le/m/a/h/a/d/g;

    new-array p3, v1, [Ljava/lang/Object;

    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v2

    const-string p1, "onCancelDownload(%d)"

    invoke-virtual {p2, p1, p3}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 89
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 90
    invoke-static {p2, p3}, Le/m/a/h/a/d/q1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 91
    move-object p2, p0

    check-cast p2, Le/m/a/h/a/a/l;

    .line 92
    iget-object p2, p2, Le/m/a/h/a/a/l;->b:Le/m/a/h/a/a/t;

    .line 93
    iget-object p2, p2, Le/m/a/h/a/a/t;->d:Le/m/a/h/a/d/r;

    .line 94
    invoke-virtual {p2}, Le/m/a/h/a/d/r;->c()V

    .line 95
    sget-object p2, Le/m/a/h/a/a/t;->g:Le/m/a/h/a/d/g;

    new-array p3, v1, [Ljava/lang/Object;

    .line 96
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v2

    const-string p1, "onStartDownload(%d)"

    invoke-virtual {p2, p1, p3}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
