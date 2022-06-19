.class public abstract Le/m/a/h/a/d/w1;
.super Le/m/a/h/a/d/p1;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionService"

    .line 1
    invoke-direct {p0, v0}, Le/m/a/h/a/d/p1;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final m1(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x2

    const/4 p4, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq p1, p3, :cond_5

    if-eq p1, v2, :cond_0

    return v1

    .line 1
    :cond_0
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    invoke-static {p2, p1}, Le/m/a/h/a/d/q1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionServiceCallback"

    .line 4
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 5
    instance-of p3, p2, Le/m/a/h/a/d/x1;

    if-eqz p3, :cond_2

    .line 6
    move-object v0, p2

    check-cast v0, Le/m/a/h/a/d/x1;

    goto :goto_0

    :cond_2
    new-instance v0, Le/m/a/h/a/d/x1;

    .line 7
    invoke-direct {v0, p1}, Le/m/a/h/a/d/x1;-><init>(Landroid/os/IBinder;)V

    .line 8
    :goto_0
    move-object p1, p0

    check-cast p1, Le/m/a/h/a/a/x;

    .line 9
    iget-object p2, p1, Le/m/a/h/a/a/x;->a:Le/m/a/h/a/d/g;

    new-array p3, v1, [Ljava/lang/Object;

    const-string v3, "clearAssetPackStorage AIDL call"

    .line 10
    invoke-virtual {p2, v3, p3}, Le/m/a/h/a/d/g;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p2, p1, Le/m/a/h/a/a/x;->b:Landroid/content/Context;

    .line 11
    invoke-static {p2}, Le/m/a/h/a/d/b1;->b(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p1, Le/m/a/h/a/a/x;->b:Landroid/content/Context;

    .line 12
    invoke-static {p2}, Le/m/a/h/a/d/b1;->a(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    iget-object p1, p1, Le/m/a/h/a/a/x;->c:Le/m/a/h/a/a/e0;

    .line 14
    invoke-virtual {p1}, Le/m/a/h/a/a/e0;->g()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Le/m/a/h/a/a/e0;->j(Ljava/io/File;)Z

    .line 15
    new-instance p1, Landroid/os/Bundle;

    .line 16
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 17
    invoke-virtual {v0}, Le/m/a/h/a/d/o1;->m1()Landroid/os/Parcel;

    move-result-object p2

    .line 18
    sget p3, Le/m/a/h/a/d/q1;->a:I

    .line 19
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 p1, 0x4

    .line 21
    invoke-virtual {v0, p1, p2}, Le/m/a/h/a/d/o1;->B1(ILandroid/os/Parcel;)V

    goto/16 :goto_6

    .line 22
    :cond_4
    :goto_1
    new-instance p1, Landroid/os/Bundle;

    .line 23
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 24
    invoke-virtual {v0}, Le/m/a/h/a/d/o1;->m1()Landroid/os/Parcel;

    move-result-object p2

    .line 25
    sget p3, Le/m/a/h/a/d/q1;->a:I

    .line 26
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 28
    invoke-virtual {v0, v2, p2}, Le/m/a/h/a/d/o1;->B1(ILandroid/os/Parcel;)V

    goto/16 :goto_6

    .line 29
    :cond_5
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 30
    invoke-static {p2, p1}, Le/m/a/h/a/d/q1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 31
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_6

    move-object v3, v0

    goto :goto_2

    :cond_6
    const-string v3, "com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionServiceCallback"

    .line 32
    invoke-interface {p2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    .line 33
    instance-of v4, v3, Le/m/a/h/a/d/x1;

    if-eqz v4, :cond_7

    .line 34
    check-cast v3, Le/m/a/h/a/d/x1;

    goto :goto_2

    :cond_7
    new-instance v3, Le/m/a/h/a/d/x1;

    .line 35
    invoke-direct {v3, p2}, Le/m/a/h/a/d/x1;-><init>(Landroid/os/IBinder;)V

    .line 36
    :goto_2
    move-object p2, p0

    check-cast p2, Le/m/a/h/a/a/x;

    .line 37
    iget-object v4, p2, Le/m/a/h/a/a/x;->a:Le/m/a/h/a/d/g;

    const-string v5, "updateServiceState AIDL call"

    new-array v6, v1, [Ljava/lang/Object;

    .line 38
    invoke-virtual {v4, v5, v6}, Le/m/a/h/a/d/g;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v4, p2, Le/m/a/h/a/a/x;->b:Landroid/content/Context;

    .line 39
    invoke-static {v4}, Le/m/a/h/a/d/b1;->b(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p2, Le/m/a/h/a/a/x;->b:Landroid/content/Context;

    .line 40
    invoke-static {v4}, Le/m/a/h/a/d/b1;->a(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_8

    goto/16 :goto_5

    .line 41
    :cond_8
    monitor-enter p2

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p2, Le/m/a/h/a/a/x;->b:Landroid/content/Context;

    const-class v5, Lcom/google/android/play/core/assetpacks/ExtractionForegroundService;

    .line 42
    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "action_type"

    .line 43
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "action_type"

    .line 44
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-ne v4, p4, :cond_a

    const-string v4, "notification_channel_name"

    const-string v5, "notification_channel_name"

    .line 45
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 46
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "notification_title"

    const-string v5, "notification_title"

    .line 47
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 48
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "notification_subtext"

    const-string v5, "notification_subtext"

    .line 49
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 50
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "notification_timeout"

    const-string v5, "notification_timeout"

    .line 51
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 52
    invoke-virtual {v2, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "notification_on_click_intent"

    .line 53
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 54
    instance-of v5, v4, Landroid/app/PendingIntent;

    if-eqz v5, :cond_9

    const-string v5, "notification_on_click_intent"

    .line 55
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_9
    const-string v4, "notification_color"

    const-string v5, "notification_color"

    .line 56
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 57
    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_a
    :try_start_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt p1, v4, :cond_b

    iget-object p1, p2, Le/m/a/h/a/a/x;->b:Landroid/content/Context;

    .line 58
    invoke-virtual {p1, v2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_4

    .line 59
    :cond_b
    iget-object p1, p2, Le/m/a/h/a/a/x;->b:Landroid/content/Context;

    .line 60
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :goto_3
    :try_start_2
    iget-object v2, p2, Le/m/a/h/a/a/x;->a:Le/m/a/h/a/d/g;

    const-string v4, "Failed starting installation service."

    new-array v5, v1, [Ljava/lang/Object;

    .line 61
    invoke-virtual {v2, p1, v4, v5}, Le/m/a/h/a/d/g;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_4
    if-nez v0, :cond_c

    .line 62
    iget-object p1, p2, Le/m/a/h/a/a/x;->a:Le/m/a/h/a/d/g;

    const-string v0, "Failed starting installation service."

    new-array v2, v1, [Ljava/lang/Object;

    .line 63
    invoke-virtual {p1, v0, v2}, Le/m/a/h/a/d/g;->b(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_c
    monitor-exit p2

    .line 64
    new-instance p1, Landroid/os/Bundle;

    .line 65
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 66
    invoke-virtual {v3}, Le/m/a/h/a/d/o1;->m1()Landroid/os/Parcel;

    move-result-object v0

    .line 67
    sget v2, Le/m/a/h/a/d/q1;->a:I

    .line 68
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 70
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 72
    invoke-virtual {v3, p3, v0}, Le/m/a/h/a/d/o1;->B1(ILandroid/os/Parcel;)V

    goto :goto_6

    :catchall_0
    move-exception p1

    .line 73
    monitor-exit p2

    throw p1

    .line 74
    :cond_d
    :goto_5
    new-instance p1, Landroid/os/Bundle;

    .line 75
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 76
    invoke-virtual {v3}, Le/m/a/h/a/d/o1;->m1()Landroid/os/Parcel;

    move-result-object p2

    .line 77
    sget p3, Le/m/a/h/a/d/q1;->a:I

    .line 78
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 80
    invoke-virtual {v3, v2, p2}, Le/m/a/h/a/d/o1;->B1(ILandroid/os/Parcel;)V

    :goto_6
    return p4
.end method
