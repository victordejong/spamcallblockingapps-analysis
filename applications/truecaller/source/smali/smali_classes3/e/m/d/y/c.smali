.class public Le/m/d/y/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Landroid/content/Context;

.field public final c:Le/m/d/y/h0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/m/d/y/h0;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Le/m/d/y/c;->a:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Le/m/d/y/c;->b:Landroid/content/Context;

    iput-object p2, p0, Le/m/d/y/c;->c:Le/m/d/y/h0;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 15

    .line 1
    iget-object v0, p0, Le/m/d/y/c;->c:Le/m/d/y/h0;

    const-string v1, "gcm.n.noui"

    invoke-virtual {v0, v1}, Le/m/d/y/h0;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Le/m/d/y/c;->b:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 3
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iget-object v3, p0, Le/m/d/y/c;->b:Landroid/content/Context;

    const-string v4, "activity"

    .line 5
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 6
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 8
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v0, :cond_2

    .line 9
    iget v0, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x64

    if-ne v0, v3, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    return v2

    .line 10
    :cond_4
    iget-object v0, p0, Le/m/d/y/c;->c:Le/m/d/y/h0;

    const-string v3, "gcm.n.image"

    invoke-virtual {v0, v3}, Le/m/d/y/h0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    :try_start_0
    new-instance v3, Le/m/d/y/e0;

    .line 12
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Le/m/d/y/e0;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 13
    :catch_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Not downloading image, bad URL: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_7

    .line 14
    iget-object v0, p0, Le/m/d/y/c;->a:Ljava/util/concurrent/Executor;

    .line 15
    new-instance v4, Le/m/d/y/d0;

    invoke-direct {v4, v3}, Le/m/d/y/d0;-><init>(Le/m/d/y/e0;)V

    invoke-static {v0, v4}, Lcom/google/android/gms/tasks/Tasks;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iput-object v0, v3, Le/m/d/y/e0;->b:Lcom/google/android/gms/tasks/Task;

    .line 16
    :cond_7
    iget-object v0, p0, Le/m/d/y/c;->b:Landroid/content/Context;

    iget-object v4, p0, Le/m/d/y/c;->c:Le/m/d/y/h0;

    .line 17
    sget-object v5, Le/m/d/y/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v5, "Couldn\'t get own application info: "

    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x80

    .line 19
    :try_start_1
    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 20
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v6, :cond_8

    goto :goto_4

    :catch_1
    move-exception v6

    .line 21
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    :cond_8
    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 23
    :goto_4
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "gcm.n.android_channel_id"

    .line 24
    invoke-virtual {v4, v8}, Le/m/d/y/h0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 25
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1a

    const/4 v11, 0x3

    if-ge v9, v10, :cond_9

    goto :goto_6

    :cond_9
    :try_start_2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    if-lt v9, v10, :cond_e

    const-class v9, Landroid/app/NotificationManager;

    .line 27
    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 28
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 29
    invoke-virtual {v9, v8}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v10

    if-eqz v10, :cond_a

    goto :goto_7

    .line 30
    :cond_a
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    :cond_b
    const-string v8, "com.google.firebase.messaging.default_notification_channel_id"

    .line 31
    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 32
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 33
    invoke-virtual {v9, v8}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v10

    if-eqz v10, :cond_c

    goto :goto_7

    :cond_c
    const-string v8, "fcm_fallback_notification_channel"

    .line 34
    invoke-virtual {v9, v8}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v10

    if-nez v10, :cond_f

    .line 35
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 36
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "fcm_fallback_notification_channel_label"

    const-string v14, "string"

    .line 37
    invoke-virtual {v10, v13, v14, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_d

    const-string v10, "Misc"

    goto :goto_5

    .line 38
    :cond_d
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 39
    :goto_5
    new-instance v12, Landroid/app/NotificationChannel;

    invoke-direct {v12, v8, v10, v11}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v9, v12}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_7

    :catch_2
    :cond_e
    :goto_6
    const/4 v8, 0x0

    .line 40
    :cond_f
    :goto_7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 42
    new-instance v11, Ln3/k/a/q;

    invoke-direct {v11, v0, v8}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v8, "gcm.n.title"

    .line 43
    invoke-virtual {v4, v9, v7, v8}, Le/m/d/y/h0;->d(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 44
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_10

    .line 45
    invoke-virtual {v11, v8}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    :cond_10
    const-string v8, "gcm.n.body"

    .line 46
    invoke-virtual {v4, v9, v7, v8}, Le/m/d/y/h0;->d(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 47
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_11

    .line 48
    invoke-virtual {v11, v8}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 49
    new-instance v12, Ln3/k/a/o;

    invoke-direct {v12}, Ln3/k/a/o;-><init>()V

    invoke-virtual {v12, v8}, Ln3/k/a/o;->k(Ljava/lang/CharSequence;)Ln3/k/a/o;

    invoke-virtual {v11, v12}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    :cond_11
    const-string v8, "gcm.n.icon"

    .line 50
    invoke-virtual {v4, v8}, Le/m/d/y/h0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 51
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_14

    const-string v12, "drawable"

    .line 52
    invoke-virtual {v9, v8, v12, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_12

    .line 53
    invoke-static {v9, v12}, Le/m/d/y/a;->a(Landroid/content/res/Resources;I)Z

    move-result v13

    if-nez v13, :cond_18

    :cond_12
    const-string v12, "mipmap"

    .line 54
    invoke-virtual {v9, v8, v12, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_13

    .line 55
    invoke-static {v9, v12}, Le/m/d/y/a;->a(Landroid/content/res/Resources;I)Z

    move-result v13

    if-nez v13, :cond_18

    .line 56
    :cond_13
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    :cond_14
    const-string v8, "com.google.firebase.messaging.default_notification_icon"

    .line 57
    invoke-virtual {v6, v8, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_15

    .line 58
    invoke-static {v9, v8}, Le/m/d/y/a;->a(Landroid/content/res/Resources;I)Z

    move-result v12

    if-nez v12, :cond_16

    .line 59
    :cond_15
    :try_start_3
    invoke-virtual {v10, v7, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget v5, v12, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move v12, v5

    goto :goto_8

    :catch_3
    move-exception v12

    .line 60
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_16
    move v12, v8

    :goto_8
    const v5, 0x1080093

    if-eqz v12, :cond_17

    .line 61
    invoke-static {v9, v12}, Le/m/d/y/a;->a(Landroid/content/res/Resources;I)Z

    move-result v8

    if-nez v8, :cond_18

    :cond_17
    move v12, v5

    .line 62
    :cond_18
    iget-object v5, v11, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v12, v5, Landroid/app/Notification;->icon:I

    const-string v5, "gcm.n.sound2"

    .line 63
    invoke-virtual {v4, v5}, Le/m/d/y/h0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 64
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_19

    const-string v5, "gcm.n.sound"

    .line 65
    invoke-virtual {v4, v5}, Le/m/d/y/h0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 66
    :cond_19
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v12, 0x2

    if-eqz v8, :cond_1a

    const/4 v5, 0x0

    goto :goto_9

    :cond_1a
    const-string v8, "default"

    .line 67
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b

    const-string v8, "raw"

    .line 68
    invoke-virtual {v9, v5, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_1b

    .line 69
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    new-instance v13, Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x18

    add-int/2addr v8, v9

    invoke-direct {v13, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "android.resource://"

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/raw/"

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_9

    .line 70
    :cond_1b
    invoke-static {v12}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v5

    :goto_9
    if-eqz v5, :cond_1c

    .line 71
    invoke-virtual {v11, v5}, Ln3/k/a/q;->w(Landroid/net/Uri;)Ln3/k/a/q;

    :cond_1c
    const-string v5, "gcm.n.click_action"

    .line 72
    invoke-virtual {v4, v5}, Le/m/d/y/h0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 73
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1d

    new-instance v8, Landroid/content/Intent;

    .line 74
    invoke-direct {v8, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v8, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x10000000

    .line 76
    invoke-virtual {v8, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_b

    :cond_1d
    const-string v5, "gcm.n.link_android"

    .line 77
    invoke-virtual {v4, v5}, Le/m/d/y/h0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 78
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1e

    const-string v5, "gcm.n.link"

    .line 79
    invoke-virtual {v4, v5}, Le/m/d/y/h0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 80
    :cond_1e
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1f

    .line 81
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_a

    :cond_1f
    const/4 v5, 0x0

    :goto_a
    if-eqz v5, :cond_20

    .line 82
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    .line 83
    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v8, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    invoke-virtual {v8, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_b

    .line 86
    :cond_20
    invoke-virtual {v10, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    :goto_b
    const/high16 v5, 0x44000000    # 512.0f

    const-string v7, "google.c.a.e"

    if-nez v8, :cond_21

    const/4 v8, 0x0

    goto :goto_f

    :cond_21
    const/high16 v9, 0x4000000

    .line 87
    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 88
    new-instance v9, Landroid/os/Bundle;

    iget-object v10, v4, Le/m/d/y/h0;->a:Landroid/os/Bundle;

    invoke-direct {v9, v10}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v10, v4, Le/m/d/y/h0;->a:Landroid/os/Bundle;

    .line 89
    invoke-virtual {v10}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_22
    :goto_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_25

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "google.c."

    .line 90
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_24

    const-string v14, "gcm.n."

    .line 91
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_24

    const-string v14, "gcm.notification."

    .line 92
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_23

    goto :goto_d

    :cond_23
    move v14, v2

    goto :goto_e

    :cond_24
    :goto_d
    move v14, v1

    :goto_e
    if-eqz v14, :cond_22

    .line 93
    invoke-virtual {v9, v13}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_c

    .line 94
    :cond_25
    invoke-virtual {v8, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 95
    invoke-virtual {v4, v7}, Le/m/d/y/h0;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_26

    .line 96
    invoke-virtual {v4}, Le/m/d/y/h0;->g()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "gcm.n.analytics_data"

    invoke-virtual {v8, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 97
    :cond_26
    sget-object v9, Le/m/d/y/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v9

    .line 98
    invoke-static {v0, v9, v8, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 99
    :goto_f
    iput-object v8, v11, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    .line 100
    invoke-virtual {v4, v7}, Le/m/d/y/h0;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_27

    const/4 v5, 0x0

    goto :goto_10

    .line 101
    :cond_27
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.google.firebase.messaging.NOTIFICATION_DISMISS"

    .line 102
    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v4}, Le/m/d/y/h0;->g()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v7

    .line 104
    sget-object v8, Le/m/d/y/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v8

    .line 105
    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.google.firebase.MESSAGING_EVENT"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v10, Landroid/content/ComponentName;

    const-string v13, "com.google.firebase.iid.FirebaseInstanceIdReceiver"

    invoke-direct {v10, v0, v13}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v9

    const-string v10, "wrapped_intent"

    .line 107
    invoke-virtual {v9, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v7

    .line 108
    invoke-static {v0, v8, v7, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    :goto_10
    if-eqz v5, :cond_28

    .line 109
    iget-object v7, v11, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object v5, v7, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    :cond_28
    const-string v5, "gcm.n.color"

    .line 110
    invoke-virtual {v4, v5}, Le/m/d/y/h0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 111
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_29

    .line 112
    :try_start_4
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_11

    .line 113
    :catch_4
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    :cond_29
    const-string v5, "com.google.firebase.messaging.default_notification_color"

    .line 114
    invoke-virtual {v6, v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2a

    .line 115
    :try_start_5
    sget-object v6, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 116
    invoke-static {v0, v5}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v0

    .line 117
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_11

    :catch_5
    :cond_2a
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_2b

    .line 118
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 119
    iput v0, v11, Ln3/k/a/q;->D:I

    :cond_2b
    const-string v0, "gcm.n.sticky"

    .line 120
    invoke-virtual {v4, v0}, Le/m/d/y/h0;->a(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v1

    const/16 v5, 0x10

    .line 121
    invoke-virtual {v11, v5, v0}, Ln3/k/a/q;->p(IZ)V

    const-string v0, "gcm.n.local_only"

    .line 122
    invoke-virtual {v4, v0}, Le/m/d/y/h0;->a(Ljava/lang/String;)Z

    move-result v0

    .line 123
    iput-boolean v0, v11, Ln3/k/a/q;->y:Z

    const-string v0, "gcm.n.ticker"

    .line 124
    invoke-virtual {v4, v0}, Le/m/d/y/h0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 125
    iget-object v5, v11, Ln3/k/a/q;->R:Landroid/app/Notification;

    invoke-static {v0}, Ln3/k/a/q;->g(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_2c
    const-string v0, "gcm.n.notification_priority"

    .line 126
    invoke-virtual {v4, v0}, Le/m/d/y/h0;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2d

    goto :goto_12

    .line 127
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, -0x2

    if-lt v5, v6, :cond_2e

    .line 128
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v12, :cond_2f

    .line 129
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    :goto_12
    const/4 v0, 0x0

    :cond_2f
    if-eqz v0, :cond_30

    .line 130
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 131
    iput v0, v11, Ln3/k/a/q;->l:I

    :cond_30
    const-string v0, "gcm.n.visibility"

    .line 132
    invoke-virtual {v4, v0}, Le/m/d/y/h0;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_31

    goto :goto_13

    .line 133
    :cond_31
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, -0x1

    if-lt v5, v6, :cond_32

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v1, :cond_33

    .line 134
    :cond_32
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    :goto_13
    const/4 v0, 0x0

    :cond_33
    if-eqz v0, :cond_34

    .line 135
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 136
    iput v0, v11, Ln3/k/a/q;->E:I

    :cond_34
    const-string v0, "gcm.n.notification_count"

    .line 137
    invoke-virtual {v4, v0}, Le/m/d/y/h0;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_35

    goto :goto_14

    .line 138
    :cond_35
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gez v5, :cond_36

    .line 139
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    :goto_14
    const/4 v0, 0x0

    :cond_36
    if-eqz v0, :cond_37

    .line 140
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 141
    iput v0, v11, Ln3/k/a/q;->k:I

    :cond_37
    const-string v0, "gcm.n.event_time"

    .line 142
    invoke-virtual {v4, v0}, Le/m/d/y/h0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 143
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_38

    .line 144
    :try_start_6
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_15

    .line 145
    :catch_6
    invoke-static {v0}, Le/m/d/y/h0;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    :cond_38
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_39

    .line 146
    iput-boolean v1, v11, Ln3/k/a/q;->m:Z

    .line 147
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 148
    iget-object v0, v11, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-wide v5, v0, Landroid/app/Notification;->when:J

    :cond_39
    const-string v0, "gcm.n.vibrate_timings"

    .line 149
    invoke-virtual {v4, v0}, Le/m/d/y/h0;->c(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_3a

    goto :goto_17

    .line 150
    :cond_3a
    :try_start_7
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-le v5, v1, :cond_3b

    .line 151
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v6, v5, [J

    move v7, v2

    :goto_16
    if-ge v7, v5, :cond_3c

    .line 152
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v8

    aput-wide v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    .line 153
    :cond_3b
    new-instance v5, Lorg/json/JSONException;

    const-string v6, "vibrateTimings have invalid length"

    invoke-direct {v5, v6}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7

    .line 154
    :catch_7
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    :goto_17
    const/4 v6, 0x0

    :cond_3c
    if-eqz v6, :cond_3d

    .line 155
    iget-object v0, v11, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object v6, v0, Landroid/app/Notification;->vibrate:[J

    :cond_3d
    const-string v0, "gcm.n.light_settings"

    .line 156
    invoke-virtual {v4, v0}, Le/m/d/y/h0;->c(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_3e

    goto :goto_18

    :cond_3e
    const/4 v5, 0x3

    new-array v6, v5, [I

    .line 157
    :try_start_8
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ne v7, v5, :cond_40

    .line 158
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 159
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const/high16 v7, -0x1000000

    if-eq v5, v7, :cond_3f

    aput v5, v6, v2

    .line 160
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v5

    aput v5, v6, v1

    .line 161
    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->optInt(I)I

    move-result v5

    aput v5, v6, v12

    goto :goto_19

    .line 162
    :cond_3f
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Transparent color is invalid"

    .line 163
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 164
    :cond_40
    new-instance v5, Lorg/json/JSONException;

    const-string v6, "lightSettings don\'t have all three fields"

    invoke-direct {v5, v6}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    move-exception v5

    .line 165
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    goto :goto_18

    .line 167
    :catch_9
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    :goto_18
    const/4 v6, 0x0

    :goto_19
    if-eqz v6, :cond_41

    .line 168
    aget v0, v6, v2

    aget v5, v6, v1

    aget v6, v6, v12

    .line 169
    invoke-virtual {v11, v0, v5, v6}, Ln3/k/a/q;->r(III)Ln3/k/a/q;

    :cond_41
    const-string v0, "gcm.n.default_sound"

    .line 170
    invoke-virtual {v4, v0}, Le/m/d/y/h0;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v5, "gcm.n.default_vibrate_timings"

    .line 171
    invoke-virtual {v4, v5}, Le/m/d/y/h0;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_42

    or-int/lit8 v0, v0, 0x2

    :cond_42
    const-string v5, "gcm.n.default_light_settings"

    .line 172
    invoke-virtual {v4, v5}, Le/m/d/y/h0;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_43

    or-int/lit8 v0, v0, 0x4

    .line 173
    :cond_43
    invoke-virtual {v11, v0}, Ln3/k/a/q;->o(I)Ln3/k/a/q;

    const-string v0, "gcm.n.tag"

    .line 174
    invoke-virtual {v4, v0}, Le/m/d/y/h0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_44

    goto :goto_1a

    .line 176
    :cond_44
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/16 v0, 0x25

    const-string v6, "FCM-Notification:"

    invoke-static {v0, v6, v4, v5}, Le/d/c/a/a;->O1(ILjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    :goto_1a
    if-nez v3, :cond_45

    goto :goto_1b

    .line 177
    :cond_45
    :try_start_9
    iget-object v4, v3, Le/m/d/y/e0;->b:Lcom/google/android/gms/tasks/Task;

    const-string v5, "null reference"

    .line 178
    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-wide/16 v5, 0x5

    .line 179
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/tasks/Tasks;->b(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 180
    invoke-virtual {v11, v4}, Ln3/k/a/q;->q(Landroid/graphics/Bitmap;)Ln3/k/a/q;

    .line 181
    new-instance v5, Ln3/k/a/n;

    invoke-direct {v5}, Ln3/k/a/n;-><init>()V

    .line 182
    iput-object v4, v5, Ln3/k/a/n;->e:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    .line 183
    iput-object v4, v5, Ln3/k/a/n;->f:Landroidx/core/graphics/drawable/IconCompat;

    .line 184
    iput-boolean v1, v5, Ln3/k/a/n;->g:Z

    .line 185
    invoke-virtual {v11, v5}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;
    :try_end_9
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_9 .. :try_end_9} :catch_a

    goto :goto_1b

    .line 186
    :catch_a
    :try_start_a
    iget-object v3, v3, Le/m/d/y/e0;->c:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_messaging/zzm;->zza(Ljava/io/InputStream;)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_e

    goto :goto_1b

    .line 187
    :catch_b
    :try_start_b
    iget-object v3, v3, Le/m/d/y/e0;->c:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_messaging/zzm;->zza(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_c

    .line 188
    :catch_c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1b

    :catch_d
    move-exception v3

    .line 189
    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    const-string v4, "Failed to download image: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :catch_e
    :goto_1b
    const-string v3, "FirebaseMessaging"

    const/4 v4, 0x3

    .line 190
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 191
    iget-object v3, p0, Le/m/d/y/c;->b:Landroid/content/Context;

    const-string v4, "notification"

    .line 192
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 193
    invoke-virtual {v11}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v3, v0, v2, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return v1
.end method
