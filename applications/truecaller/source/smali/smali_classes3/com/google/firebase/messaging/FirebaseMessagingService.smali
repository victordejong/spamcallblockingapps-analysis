.class public Lcom/google/firebase/messaging/FirebaseMessagingService;
.super Le/m/d/y/g;
.source "SourceFile"


# static fields
.field public static final ACTION_DIRECT_BOOT_REMOTE_INTENT:Ljava/lang/String; = "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT"

.field private static final recentlyReceivedMessageIds:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/google/firebase/messaging/FirebaseMessagingService;->recentlyReceivedMessageIds:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/d/y/g;-><init>()V

    return-void
.end method

.method private alreadyReceivedMessage(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/google/firebase/messaging/FirebaseMessagingService;->recentlyReceivedMessageIds:Ljava/util/Queue;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x3

    const-string v1, "FirebaseMessaging"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Received duplicate message: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 5
    :cond_3
    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_4

    .line 6
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 7
    :cond_4
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method private dispatchMessage(Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v1, "androidx.content.wakelockid"

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Le/m/d/y/h0;->f(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Le/m/d/y/h0;

    .line 5
    invoke-direct {v1, v0}, Le/m/d/y/h0;-><init>(Landroid/os/Bundle;)V

    .line 6
    new-instance v2, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    const-string v3, "Firebase-Messaging-Network-Io"

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 7
    new-instance v3, Le/m/d/y/c;

    invoke-direct {v3, p0, v1, v2}, Le/m/d/y/c;-><init>(Landroid/content/Context;Le/m/d/y/h0;Ljava/util/concurrent/Executor;)V

    .line 8
    :try_start_0
    invoke-virtual {v3}, Le/m/d/y/c;->a()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 9
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 10
    invoke-static {p1}, Le/m/d/y/n;->g1(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "_nf"

    invoke-static {v1, p1}, Le/m/d/y/n;->A0(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 12
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 13
    throw p1

    .line 14
    :cond_2
    :goto_0
    new-instance p1, Lcom/google/firebase/messaging/RemoteMessage;

    invoke-direct {p1, v0}, Lcom/google/firebase/messaging/RemoteMessage;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V

    return-void
.end method

.method private getMessageId(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const-string v0, "google.message_id"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "message_id"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method private handleMessageIntent(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "google.message_id"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->alreadyReceivedMessage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->passMessageIntentToSdk(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private passMessageIntentToSdk(Landroid/content/Intent;)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "message_type"

    .line 1
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gcm"

    if-nez v2, :cond_0

    move-object v2, v3

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "send_event"

    .line 2
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v7

    goto :goto_1

    :sswitch_1
    const-string v3, "send_error"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v6

    goto :goto_1

    :sswitch_2
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_1

    :sswitch_3
    const-string v3, "deleted_messages"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v8

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, -0x1

    :goto_1
    const-string v4, "google.message_id"

    if-eqz v3, :cond_6

    if-eq v3, v8, :cond_5

    if-eq v3, v7, :cond_4

    if-eq v3, v6, :cond_3

    const-string v0, "Received message with unknown type: "

    .line 3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    return-void

    .line 5
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->getMessageId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Le/m/d/y/m0;

    const-string v4, "error"

    .line 6
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Le/m/d/y/m0;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onSendError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    .line 8
    :cond_4
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onMessageSent(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onDeletedMessages()V

    return-void

    .line 10
    :cond_6
    invoke-static/range {p1 .. p1}, Le/m/d/y/n;->g1(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "_nr"

    invoke-static {v3, v2}, Le/m/d/y/n;->A0(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 12
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    const-string v2, "delivery_metrics_exported_to_big_query_enabled"

    .line 13
    :try_start_0
    invoke-static {}, Le/m/d/g;->b()Le/m/d/g;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    invoke-static {}, Le/m/d/g;->b()Le/m/d/g;

    move-result-object v3

    .line 15
    invoke-virtual {v3}, Le/m/d/g;->a()V

    .line 16
    iget-object v3, v3, Le/m/d/g;->a:Landroid/content/Context;

    const-string v6, "com.google.firebase.messaging"

    .line 17
    invoke-virtual {v3, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v9, "export_to_big_query"

    .line 18
    invoke-interface {v6, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 19
    invoke-interface {v6, v9, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_4

    .line 20
    :cond_9
    :try_start_1
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 21
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0x80

    .line 22
    invoke-virtual {v6, v3, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 23
    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_a

    .line 24
    invoke-virtual {v6, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 25
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    :cond_a
    :goto_3
    move v2, v5

    :goto_4
    if-eqz v2, :cond_1d

    .line 26
    sget-object v23, Le/m/d/y/e1/a$b;->c:Le/m/d/y/e1/a$b;

    .line 27
    sget-object v2, Lcom/google/firebase/messaging/FirebaseMessaging;->p:Le/m/a/b/g;

    if-nez v2, :cond_b

    goto/16 :goto_12

    .line 28
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_c

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 29
    :cond_c
    sget v6, Le/m/d/y/e1/a;->p:I

    const-string v6, ""

    const-string v9, "google.ttl"

    .line 30
    invoke-virtual {v3, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 31
    instance-of v10, v9, Ljava/lang/Integer;

    if-eqz v10, :cond_d

    .line 32
    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_5

    .line 33
    :cond_d
    instance-of v10, v9, Ljava/lang/String;

    if-eqz v10, :cond_e

    .line 34
    :try_start_2
    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 35
    :catch_1
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    const-string v10, "Invalid TTL: "

    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_e
    :goto_5
    move/from16 v19, v5

    const-string v5, "google.to"

    .line 36
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 37
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_f

    :goto_6
    move-object v13, v5

    goto :goto_7

    .line 38
    :cond_f
    :try_start_3
    invoke-static {}, Le/m/d/g;->b()Le/m/d/g;

    move-result-object v5

    invoke-static {v5}, Le/m/d/w/h;->h(Le/m/d/g;)Le/m/d/w/h;

    move-result-object v5

    invoke-virtual {v5}, Le/m/d/w/h;->getId()Lcom/google/android/gms/tasks/Task;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/tasks/Tasks;->a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_6

    .line 39
    :goto_7
    invoke-static {}, Le/m/d/g;->b()Le/m/d/g;

    move-result-object v5

    .line 40
    invoke-virtual {v5}, Le/m/d/g;->a()V

    .line 41
    iget-object v5, v5, Le/m/d/g;->a:Landroid/content/Context;

    .line 42
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    .line 43
    sget-object v15, Le/m/d/y/e1/a$d;->c:Le/m/d/y/e1/a$d;

    .line 44
    invoke-static {v3}, Le/m/d/y/h0;->f(Landroid/os/Bundle;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 45
    sget-object v5, Le/m/d/y/e1/a$c;->e:Le/m/d/y/e1/a$c;

    goto :goto_8

    .line 46
    :cond_10
    sget-object v5, Le/m/d/y/e1/a$c;->c:Le/m/d/y/e1/a$c;

    :goto_8
    move-object v14, v5

    .line 47
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_11

    const-string v4, "message_id"

    .line 48
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_11
    if-eqz v4, :cond_12

    move-object v12, v4

    goto :goto_9

    :cond_12
    move-object v12, v6

    .line 49
    :goto_9
    invoke-static {v3}, Le/m/d/y/n;->b0(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_13

    move-object/from16 v20, v4

    goto :goto_a

    :cond_13
    move-object/from16 v20, v6

    :goto_a
    const-string v4, "collapse_key"

    .line 50
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_14

    move-object/from16 v17, v4

    goto :goto_b

    :cond_14
    move-object/from16 v17, v6

    :goto_b
    const-string v4, "google.c.a.m_l"

    .line 51
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_15

    move-object/from16 v24, v4

    goto :goto_c

    :cond_15
    move-object/from16 v24, v6

    :goto_c
    const-string v4, "google.c.a.c_l"

    .line 52
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_16

    move-object/from16 v27, v4

    goto :goto_d

    :cond_16
    move-object/from16 v27, v6

    :goto_d
    const-string v4, "google.c.sender.id"

    .line 53
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    const-wide/16 v9, 0x0

    if-eqz v5, :cond_17

    .line 54
    :try_start_4
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_f

    .line 55
    :catch_2
    :cond_17
    invoke-static {}, Le/m/d/g;->b()Le/m/d/g;

    move-result-object v3

    .line 56
    invoke-virtual {v3}, Le/m/d/g;->a()V

    .line 57
    iget-object v4, v3, Le/m/d/g;->c:Le/m/d/i;

    .line 58
    iget-object v4, v4, Le/m/d/i;->e:Ljava/lang/String;

    if-eqz v4, :cond_18

    .line 59
    :try_start_5
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_f

    .line 60
    :catch_3
    :cond_18
    invoke-virtual {v3}, Le/m/d/g;->a()V

    .line 61
    iget-object v3, v3, Le/m/d/g;->c:Le/m/d/i;

    .line 62
    iget-object v3, v3, Le/m/d/i;->b:Ljava/lang/String;

    const-string v4, "1:"

    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 64
    :try_start_6
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_f

    :cond_19
    const-string v4, ":"

    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 66
    array-length v4, v3

    if-ge v4, v7, :cond_1a

    goto :goto_e

    .line 67
    :cond_1a
    aget-object v3, v3, v8

    .line 68
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1b

    goto :goto_e

    .line 69
    :cond_1b
    :try_start_7
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_f

    :catch_4
    :goto_e
    move-wide v3, v9

    :goto_f
    cmp-long v5, v3, v9

    if-lez v5, :cond_1c

    move-wide v10, v3

    goto :goto_10

    :cond_1c
    move-wide v10, v9

    .line 70
    :goto_10
    new-instance v3, Le/m/d/y/e1/a;

    move-object v9, v3

    const/16 v18, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v25, 0x0

    invoke-direct/range {v9 .. v27}, Le/m/d/y/e1/a;-><init>(JLjava/lang/String;Ljava/lang/String;Le/m/d/y/e1/a$c;Le/m/d/y/e1/a$d;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;JLe/m/d/y/e1/a$b;Ljava/lang/String;JLjava/lang/String;)V

    :try_start_8
    const-string v4, "FCM_CLIENT_EVENT_LOGGING"

    .line 71
    const-class v5, Le/m/d/y/e1/b;

    const-string v6, "proto"

    .line 72
    new-instance v7, Le/m/a/b/b;

    invoke-direct {v7, v6}, Le/m/a/b/b;-><init>(Ljava/lang/String;)V

    .line 73
    sget-object v6, Le/m/d/y/f0;->a:Le/m/d/y/f0;

    .line 74
    invoke-interface {v2, v4, v5, v7, v6}, Le/m/a/b/g;->a(Ljava/lang/String;Ljava/lang/Class;Le/m/a/b/b;Le/m/a/b/e;)Le/m/a/b/f;

    move-result-object v2

    .line 75
    sget v4, Le/m/d/y/e1/b;->b:I

    .line 76
    new-instance v4, Le/m/d/y/e1/b;

    invoke-direct {v4, v3}, Le/m/d/y/e1/b;-><init>(Le/m/d/y/e1/a;)V

    .line 77
    new-instance v3, Le/m/a/b/a;

    sget-object v5, Le/m/a/b/d;->b:Le/m/a/b/d;

    const/4 v6, 0x0

    invoke-direct {v3, v6, v4, v5}, Le/m/a/b/a;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Le/m/a/b/d;)V

    .line 78
    check-cast v2, Le/m/a/b/j/t;

    .line 79
    sget-object v4, Le/m/a/b/j/a;->a:Le/m/a/b/j/a;

    invoke-virtual {v2, v3, v4}, Le/m/a/b/j/t;->a(Le/m/a/b/c;Le/m/a/b/h;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_12

    :catch_5
    move-exception v0

    goto :goto_11

    :catch_6
    move-exception v0

    .line 80
    :goto_11
    new-instance v2, Ljava/lang/RuntimeException;

    .line 81
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 82
    :catch_7
    :cond_1d
    :goto_12
    invoke-direct/range {p0 .. p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->dispatchMessage(Landroid/content/Intent;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7aedf14e -> :sswitch_3
        0x18f11 -> :sswitch_2
        0x308f3e91 -> :sswitch_1
        0x3090df23 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getStartCommandIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .line 1
    invoke-static {}, Le/m/d/y/n0;->a()Le/m/d/y/n0;

    move-result-object p1

    .line 2
    iget-object p1, p1, Le/m/d/y/n0;->d:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    return-object p1
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "com.google.firebase.messaging.NEW_TOKEN"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "token"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onNewToken(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unknown intent action: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 6
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->handleMessageIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onDeletedMessages()V
    .locals 0

    return-void
.end method

.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 0

    return-void
.end method

.method public onMessageSent(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSendError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method
