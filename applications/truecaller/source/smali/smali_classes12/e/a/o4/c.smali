.class public final Le/a/o4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o4/b;


# instance fields
.field public final a:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/y/f/a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/g3/e;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/k/a/y;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/o4/l;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/e/l;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/s/r/a;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Ljavax/inject/Provider;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/y/f/a;",
            ">;",
            "Lo3/a<",
            "Le/a/g3/e;",
            ">;",
            "Lo3/a<",
            "Le/a/a/k/a/y;",
            ">;",
            "Lo3/a<",
            "Le/a/o4/l;",
            ">;",
            "Lo3/a<",
            "Le/a/b0/e/l;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/s/r/a;",
            ">;",
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "flashNotificationManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cleverTapNotificationManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imNotificationManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tcNotificationManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callAssistantPushHandler"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o4/c;->a:Lo3/a;

    iput-object p2, p0, Le/a/o4/c;->b:Lo3/a;

    iput-object p3, p0, Le/a/o4/c;->c:Lo3/a;

    iput-object p4, p0, Le/a/o4/c;->d:Lo3/a;

    iput-object p5, p0, Le/a/o4/c;->e:Lo3/a;

    iput-object p6, p0, Le/a/o4/c;->f:Ljavax/inject/Provider;

    iput-object p7, p0, Le/a/o4/c;->g:Lo3/a;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Object;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "remoteMessage"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lcom/google/firebase/messaging/RemoteMessage;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/firebase/messaging/RemoteMessage;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage;->o2()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p1, Lcom/huawei/hms/push/RemoteMessage;

    if-eqz v0, :cond_e

    move-object v0, p1

    check-cast v0, Lcom/huawei/hms/push/RemoteMessage;

    invoke-virtual {v0}, Lcom/huawei/hms/push/RemoteMessage;->getDataOfMap()Ljava/util/Map;

    move-result-object v0

    .line 3
    :goto_0
    instance-of v1, p1, Lcom/google/firebase/messaging/RemoteMessage;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/google/firebase/messaging/RemoteMessage;

    .line 4
    iget-object v2, v1, Lcom/google/firebase/messaging/RemoteMessage;->a:Landroid/os/Bundle;

    const-string v3, "google.message_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v1, v1, Lcom/google/firebase/messaging/RemoteMessage;->a:Landroid/os/Bundle;

    const-string v2, "message_id"

    .line 5
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 6
    :cond_1
    instance-of v1, p1, Lcom/huawei/hms/push/RemoteMessage;

    if-eqz v1, :cond_d

    move-object v1, p1

    check-cast v1, Lcom/huawei/hms/push/RemoteMessage;

    invoke-virtual {v1}, Lcom/huawei/hms/push/RemoteMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    .line 7
    :cond_2
    :goto_1
    instance-of v1, p1, Lcom/google/firebase/messaging/RemoteMessage;

    if-eqz v1, :cond_5

    move-object v1, p1

    check-cast v1, Lcom/google/firebase/messaging/RemoteMessage;

    .line 8
    iget-object v1, v1, Lcom/google/firebase/messaging/RemoteMessage;->a:Landroid/os/Bundle;

    const-string v3, "google.sent_time"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 9
    instance-of v3, v1, Ljava/lang/Long;

    if-eqz v3, :cond_3

    .line 10
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_2

    .line 11
    :cond_3
    instance-of v3, v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_4

    .line 12
    :try_start_1
    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 13
    :catch_0
    :try_start_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    const-string v3, "Invalid sent time: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_4
    const-wide/16 v3, 0x0

    goto :goto_2

    .line 14
    :cond_5
    instance-of v1, p1, Lcom/huawei/hms/push/RemoteMessage;

    if-eqz v1, :cond_c

    move-object v1, p1

    check-cast v1, Lcom/huawei/hms/push/RemoteMessage;

    invoke-virtual {v1}, Lcom/huawei/hms/push/RemoteMessage;->getSentTime()J

    move-result-wide v3

    :goto_2
    const-string v1, "data"

    .line 15
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "_type"

    .line 16
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const-string v1, "wzrk_pn"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_3
    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    const-string v1, "a"

    .line 17
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "e"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    goto :goto_5

    :cond_9
    :goto_4
    const-string v1, "notification"

    :goto_5
    if-nez v1, :cond_a

    goto/16 :goto_6

    .line 18
    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_6

    :sswitch_0
    const-string p1, "notification"

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0, v0, v3, v4}, Le/a/o4/c;->b(Ljava/util/Map;J)V

    goto/16 :goto_6

    :sswitch_1
    const-string p1, "flash"

    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 21
    iget-object p1, p0, Le/a/o4/c;->e:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/b0/e/l;

    invoke-interface {p1}, Le/a/b0/e/l;->d()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 22
    iget-object p1, p0, Le/a/o4/c;->a:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/y/f/a;

    invoke-virtual {p1, v0, v2}, Le/a/y/f/a;->a(Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_6

    :sswitch_2
    const-string v0, "true"

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Le/a/o4/c;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/g3/e;

    invoke-interface {v0, p1}, Le/a/g3/e;->a(Ljava/lang/Object;)V

    goto :goto_6

    :sswitch_3
    const-string p1, "im"

    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Le/a/o4/c;->c:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/k/a/y;

    invoke-interface {p1, v0}, Le/a/a/k/a/y;->a(Ljava/util/Map;)V

    goto :goto_6

    :sswitch_4
    const-string p1, "call_assistant"

    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 26
    iget-object p1, p0, Le/a/o4/c;->g:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/u3/g;

    invoke-virtual {p1}, Le/a/u3/g;->H()Le/a/u3/b;

    move-result-object p1

    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 27
    iget-object p1, p0, Le/a/o4/c;->f:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/s/r/a;

    if-eqz p1, :cond_b

    invoke-interface {p1, v0}, Le/a/s/r/a;->a(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    :cond_b
    :goto_6
    monitor-exit p0

    return-void

    .line 29
    :cond_c
    :try_start_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "RemoteMessage -Unsupported type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    .line 31
    :cond_d
    :try_start_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "RemoteMessage -Unsupported type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    .line 33
    :cond_e
    :try_start_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "RemoteMessage -Unsupported type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x3badf5c3 -> :sswitch_4
        0xd24 -> :sswitch_3
        0x36758e -> :sswitch_2
        0x5cfeff0 -> :sswitch_1
        0x237a88eb -> :sswitch_0
    .end sparse-switch
.end method

.method public final b(Ljava/util/Map;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Le/a/o4/c;->d:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/o4/l;

    invoke-interface {p1, v0, p2, p3}, Le/a/o4/l;->d(Landroid/os/Bundle;J)V

    return-void
.end method
