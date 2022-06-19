.class public Lcom/google/android/play/core/assetpacks/ExtractionForegroundService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field public final a:Le/m/a/h/a/d/g;

.field public b:Landroid/content/Context;

.field public c:Le/m/a/h/a/a/f3;

.field public d:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Le/m/a/h/a/d/g;

    const-string v1, "ExtractionForegroundService"

    .line 2
    invoke-direct {v0, v1}, Le/m/a/h/a/d/g;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/ExtractionForegroundService;->a:Le/m/a/h/a/d/g;

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ln3/g0/y;->k2(Landroid/content/Context;)Le/m/a/h/a/a/t0;

    move-result-object v0

    .line 3
    iget-object v1, v0, Le/m/a/h/a/a/t0;->a:Le/m/a/h/a/a/j3;

    .line 4
    iget-object v1, v1, Le/m/a/h/a/a/j3;->a:Landroid/content/Context;

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 5
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object v1, p0, Lcom/google/android/play/core/assetpacks/ExtractionForegroundService;->b:Landroid/content/Context;

    iget-object v0, v0, Le/m/a/h/a/a/t0;->A:Le/m/a/h/a/d/k1;

    .line 7
    invoke-interface {v0}, Le/m/a/h/a/d/k1;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Le/m/a/h/a/a/f3;

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/ExtractionForegroundService;->c:Le/m/a/h/a/a/f3;

    .line 9
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/ExtractionForegroundService;->b:Landroid/content/Context;

    const-string v1, "notification"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/ExtractionForegroundService;->d:Landroid/app/NotificationManager;

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 8

    .line 1
    monitor-enter p0

    :try_start_0
    const-string p2, "notification_title"

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "notification_subtext"

    .line 3
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "notification_timeout"

    const-wide/32 v1, 0x927c0

    .line 4
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "notification_on_click_intent"

    .line 5
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    .line 6
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/ExtractionForegroundService;->b:Landroid/content/Context;

    const-string v7, "playcore-assetpacks-service-notification-channel"

    invoke-direct {v5, v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v5, v0, v1}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/ExtractionForegroundService;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x2

    .line 9
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    :goto_0
    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_1
    const v1, 0x1080081

    .line 11
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    if-nez p2, :cond_2

    const-string v5, "Downloading additional file"

    goto :goto_1

    :cond_2
    move-object v5, p2

    .line 13
    :goto_1
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    if-nez p3, :cond_3

    const-string p2, "Transferring"

    .line 14
    :cond_3
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const-string p2, "notification_color"

    .line 15
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_4

    .line 16
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p2

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 17
    :cond_4
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/play/core/assetpacks/ExtractionForegroundService;->a:Le/m/a/h/a/d/g;

    const-string v0, "Starting foreground installation service."

    new-array v1, v2, [Ljava/lang/Object;

    .line 18
    invoke-virtual {p3, v0, v1}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p3, p0, Lcom/google/android/play/core/assetpacks/ExtractionForegroundService;->c:Le/m/a/h/a/a/f3;

    const/4 v0, 0x1

    .line 19
    invoke-virtual {p3, v0}, Le/m/a/h/a/a/f3;->a(Z)V

    const/4 p3, 0x2

    if-lt v3, v4, :cond_6

    const-string v1, "notification_channel_name"

    .line 20
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_5

    :try_start_1
    const-string v1, "File downloads by Play"

    .line 22
    :cond_5
    new-instance v3, Landroid/app/NotificationChannel;

    const-string v4, "playcore-assetpacks-service-notification-channel"

    invoke-direct {v3, v4, v1, p3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/ExtractionForegroundService;->d:Landroid/app/NotificationManager;

    .line 23
    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_6
    :goto_2
    const v1, -0x70492694

    .line 24
    invoke-virtual {p0, v1, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit p0

    const-string p2, "action_type"

    .line 25
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, p3, :cond_7

    .line 26
    monitor-enter p0

    :try_start_3
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/ExtractionForegroundService;->a:Le/m/a/h/a/d/g;

    const-string p2, "Stopping service."

    new-array v1, v2, [Ljava/lang/Object;

    .line 27
    invoke-virtual {p1, p2, v1}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/ExtractionForegroundService;->c:Le/m/a/h/a/a/f3;

    .line 28
    invoke-virtual {p1, v2}, Le/m/a/h/a/a/f3;->a(Z)V

    .line 29
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 30
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    goto :goto_3

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    .line 31
    :cond_7
    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/ExtractionForegroundService;->a:Le/m/a/h/a/d/g;

    new-array v0, v0, [Ljava/lang/Object;

    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "Unknown action type received: %d"

    invoke-virtual {p2, p1, v0}, Le/m/a/h/a/d/g;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_3
    return p3

    :catchall_2
    move-exception p1

    .line 33
    monitor-exit p0

    throw p1
.end method
