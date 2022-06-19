.class public Lcom/appnext/core/ra/a/d;
.super Lcom/appnext/core/ra/a/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/appnext/core/ra/a/b;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "data"

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/appnext/core/ra/a/b;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "https://global.appnext.com/AdminService.asmx/ra?"

    const/4 v2, 0x0

    const/16 v3, 0x2710

    invoke-static {p1, v1, v0, v2, v3}, Lcom/appnext/core/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;ZI)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "SendRecentAppsAction$sendToServer"

    .line 4
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final aM()V
    .locals 9

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/appnext/core/ra/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/appnext/core/ra/database/RecentAppsDatabase;->getInstance(Landroid/content/Context;)Lcom/appnext/core/ra/database/RecentAppsDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/core/ra/database/RecentAppsDatabase;->recentAppDao()Lcom/appnext/core/ra/database/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/appnext/core/ra/database/b;->aS()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/appnext/core/ra/a/b;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    .line 5
    invoke-static {v2, v3}, Lcom/appnext/core/g;->b(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "did"

    .line 7
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "publisher_packagename"

    .line 8
    invoke-virtual {p0}, Lcom/appnext/core/ra/a/b;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 10
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/appnext/core/ra/database/a;

    .line 12
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "package_name"

    .line 13
    iget-object v8, v5, Lcom/appnext/core/ra/database/a;->eQ:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "date"

    .line 14
    iget-object v8, v5, Lcom/appnext/core/ra/database/a;->eR:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 16
    iput-boolean v3, v5, Lcom/appnext/core/ra/database/a;->eS:Z

    .line 17
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v1, "apps"

    .line 18
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    invoke-direct {p0, v0}, Lcom/appnext/core/ra/a/d;->c(Lorg/json/JSONObject;)V

    .line 20
    invoke-virtual {p0}, Lcom/appnext/core/ra/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/appnext/core/ra/database/RecentAppsDatabase;->getInstance(Landroid/content/Context;)Lcom/appnext/core/ra/database/RecentAppsDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/core/ra/database/RecentAppsDatabase;->recentAppDao()Lcom/appnext/core/ra/database/b;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/appnext/core/ra/database/b;->c(Ljava/util/List;)V

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Send ra is finished with - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    const-string v1, "SendRecentAppsAction$sendRecentAppsToTheServer"

    .line 22
    invoke-static {v1, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 23
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/appnext/core/ra/a/b;->aQ()Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-virtual {p0}, Lcom/appnext/core/ra/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/appnext/core/ra/database/RecentAppsDatabase;->getInstance(Landroid/content/Context;)Lcom/appnext/core/ra/database/RecentAppsDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/core/ra/database/RecentAppsDatabase;->recentAppDao()Lcom/appnext/core/ra/database/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/appnext/core/ra/database/b;->E(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    return-void

    :catchall_2
    move-exception v0

    const-string v1, "SendRecentAppsAction$doUniqueAction"

    .line 25
    invoke-static {v1, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public final aN()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
