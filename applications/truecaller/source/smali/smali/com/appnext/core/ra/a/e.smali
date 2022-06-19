.class public Lcom/appnext/core/ra/a/e;
.super Lcom/appnext/core/ra/a/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/appnext/core/ra/a/b;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final aM()V
    .locals 8

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/appnext/core/ra/a/b;->aP()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "more_data"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 8
    invoke-static {}, Lcom/appnext/core/ra/a/b;->aQ()Ljava/text/SimpleDateFormat;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    .line 10
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "^[a-z][a-z0-9_]*(\\.[a-z0-9_]+)+[0-9a-z_]$"

    .line 11
    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 12
    new-instance v7, Lcom/appnext/core/ra/database/a;

    invoke-direct {v7}, Lcom/appnext/core/ra/database/a;-><init>()V

    .line 13
    iput-object v6, v7, Lcom/appnext/core/ra/database/a;->eQ:Ljava/lang/String;

    .line 14
    iput-object v2, v7, Lcom/appnext/core/ra/database/a;->eR:Ljava/lang/String;

    .line 15
    iput-boolean v4, v7, Lcom/appnext/core/ra/database/a;->eS:Z

    .line 16
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/appnext/core/ra/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/appnext/core/ra/database/RecentAppsDatabase;->getInstance(Landroid/content/Context;)Lcom/appnext/core/ra/database/RecentAppsDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/core/ra/database/RecentAppsDatabase;->recentAppDao()Lcom/appnext/core/ra/database/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/appnext/core/ra/database/b;->b(Ljava/util/List;)[J

    move-result-object v0

    if-eqz v0, :cond_2

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Store ra is finished with ids - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    :cond_2
    invoke-virtual {p0}, Lcom/appnext/core/ra/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/core/ra/database/RecentAppsDatabase;->getInstance(Landroid/content/Context;)Lcom/appnext/core/ra/database/RecentAppsDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/core/ra/database/RecentAppsDatabase;->recentAppDao()Lcom/appnext/core/ra/database/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/appnext/core/ra/database/b;->aR()Ljava/util/List;

    move-result-object v0

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Store ra is finished - db recents apps  - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "StoreRecentAppsAction$doUniqueAction"

    .line 21
    invoke-static {v1, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final aN()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
