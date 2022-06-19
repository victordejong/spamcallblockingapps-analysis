.class public final Le/a/g3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/g3/e;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/b0/o/a;

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Lcom/truecaller/clevertap/CleverTapManager;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/b0/o/a;Lo3/a;Lo3/a;)V
    .locals 1
    .param p4    # Lo3/a;
        .annotation runtime Ljavax/inject/Named;
            value = "features_registry"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/a/b0/o/a;",
            "Lo3/a<",
            "Lcom/truecaller/clevertap/CleverTapManager;",
            ">;",
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cleverTapManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/g3/f;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/g3/f;->b:Le/a/b0/o/a;

    iput-object p3, p0, Le/a/g3/f;->c:Lo3/a;

    iput-object p4, p0, Le/a/g3/f;->d:Lo3/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 9

    sget-object v0, Le/h/a/c/w0/h$b;->a:Le/h/a/c/w0/h;

    const-string v1, "remoRemoteMessage"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    instance-of v1, p1, Lcom/google/firebase/messaging/RemoteMessage;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/google/firebase/messaging/RemoteMessage;

    invoke-virtual {v1}, Lcom/google/firebase/messaging/RemoteMessage;->o2()Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    .line 2
    :cond_0
    instance-of v1, p1, Lcom/huawei/hms/push/RemoteMessage;

    if-eqz v1, :cond_8

    move-object v1, p1

    check-cast v1, Lcom/huawei/hms/push/RemoteMessage;

    invoke-virtual {v1}, Lcom/huawei/hms/push/RemoteMessage;->getDataOfMap()Ljava/util/Map;

    move-result-object v1

    :goto_0
    const-string v2, "data"

    .line 3
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_9

    .line 4
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 5
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object v1, p0, Le/a/g3/f;->c:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/clevertap/CleverTapManager;

    invoke-interface {v1}, Lcom/truecaller/clevertap/CleverTapManager;->initWithoutActivityLifeCycleCallBacks()V

    .line 9
    iget-object v1, p0, Le/a/g3/f;->d:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/u3/g;

    .line 10
    iget-object v4, v1, Le/a/u3/g;->Q5:Le/a/u3/g$a;

    sget-object v5, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v6, 0x168

    aget-object v5, v5, v6

    invoke-virtual {v4, v1, v5}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v1

    .line 11
    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 12
    instance-of v1, p1, Lcom/google/firebase/messaging/RemoteMessage;

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 13
    iget-object v1, p0, Le/a/g3/f;->a:Landroid/content/Context;

    check-cast p1, Lcom/google/firebase/messaging/RemoteMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 14
    :try_start_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 15
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->o2()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 17
    :cond_2
    sget-object p1, Le/h/a/c/w0/g;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v5

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 18
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    sget-object p1, Le/h/a/c/w0/g;->a:Ljava/lang/String;

    :goto_3
    if-eqz v4, :cond_5

    .line 20
    sget-object p1, Le/h/a/c/w0/g$a;->e:Le/h/a/c/w0/g$a;

    .line 21
    invoke-virtual {p1}, Le/h/a/c/w0/g$a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v4, p1}, Le/h/a/c/w0/h;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Z

    goto :goto_6

    .line 22
    :cond_3
    instance-of v1, p1, Lcom/huawei/hms/push/RemoteMessage;

    if-eqz v1, :cond_5

    .line 23
    iget-object v1, p0, Le/a/g3/f;->a:Landroid/content/Context;

    check-cast p1, Lcom/huawei/hms/push/RemoteMessage;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 24
    :try_start_3
    invoke-virtual {p1}, Lcom/huawei/hms/push/RemoteMessage;->getData()Ljava/lang/String;

    move-result-object p1

    .line 25
    sget-boolean v5, Le/h/a/c/j0;->a:Z

    .line 26
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 28
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 30
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 32
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 33
    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 34
    :cond_4
    sget-object p1, Le/h/a/a/b;->a:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v4, v5

    goto :goto_5

    :catchall_1
    move-exception p1

    .line 35
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    sget-object p1, Le/h/a/a/b;->a:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :goto_5
    if-eqz v4, :cond_5

    .line 37
    :try_start_5
    sget-object p1, Le/h/a/c/w0/g$a;->g:Le/h/a/c/w0/g$a;

    invoke-virtual {p1}, Le/h/a/c/w0/g$a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v4, p1}, Le/h/a/c/w0/h;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p1

    .line 38
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    sget-object p1, Le/h/a/a/b;->a:Ljava/lang/String;

    .line 40
    :cond_5
    :goto_6
    iget-object p1, p0, Le/a/g3/f;->a:Landroid/content/Context;

    invoke-static {p1}, Le/h/a/c/p;->h(Landroid/content/Context;)Le/h/a/c/p;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 41
    iget-object p1, p1, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 42
    iget-object p1, p1, Le/h/a/c/x;->d:Le/h/a/c/f;

    .line 43
    invoke-virtual {p1, v2}, Le/h/a/c/f;->n(Landroid/os/Bundle;)V

    goto :goto_7

    .line 44
    :cond_6
    iget-object p1, p0, Le/a/g3/f;->a:Landroid/content/Context;

    const-string v0, "wzrk_acct_id"

    .line 45
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {p1, v0}, Le/h/a/c/p;->e(Landroid/content/Context;Ljava/lang/String;)Le/h/a/c/p;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v0, :cond_7

    .line 47
    :try_start_7
    iget-object v0, v0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 48
    iget-object v0, v0, Le/h/a/c/x;->k:Le/h/a/c/w0/i;

    .line 49
    new-instance v1, Le/h/a/c/w0/c;

    invoke-direct {v1}, Le/h/a/c/w0/c;-><init>()V

    .line 50
    iput-object v1, v0, Le/h/a/c/w0/i;->h:Le/h/a/c/w0/e;

    const/16 v1, -0x3e8

    .line 51
    invoke-virtual {v0, p1, v2, v1}, Le/h/a/c/w0/i;->b(Landroid/content/Context;Landroid/os/Bundle;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 52
    :catchall_3
    :cond_7
    :goto_7
    :try_start_8
    iget-object p1, p0, Le/a/g3/f;->b:Le/a/b0/o/a;

    const-string v0, "shouldInitClevertapSDK"

    invoke-interface {p1, v0, v3}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_8

    .line 53
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "RemoteMessage -Unsupported type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    :cond_9
    :goto_8
    return-void
.end method
