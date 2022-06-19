.class public Lcom/appnext/base/moments/operations/imp/cdm;
.super Lcom/appnext/base/moments/operations/c;
.source "SourceFile"


# direct methods
.method private static m(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/appnext/base/moments/a/a/c;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 3
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p0, v2, :cond_1

    .line 4
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "status"

    .line 5
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "on"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "service_key"

    .line 7
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    invoke-static {v2}, Lcom/appnext/base/moments/b/a;->b(Lorg/json/JSONObject;)Lcom/appnext/base/moments/a/a/c;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {}, Lcom/appnext/base/moments/a/a;->Q()Lcom/appnext/base/moments/a/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appnext/base/moments/a/a;->T()Lcom/appnext/base/moments/a/b/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appnext/base/moments/a/b/c;->ag()V

    .line 10
    invoke-static {}, Lcom/appnext/base/moments/a/a;->Q()Lcom/appnext/base/moments/a/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appnext/base/moments/a/a;->T()Lcom/appnext/base/moments/a/b/c;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/appnext/base/moments/a/b/c;->b(Lorg/json/JSONArray;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    const-string v0, "cdm$parseConfigAndStore"

    .line 12
    invoke-static {v0, p0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/appnext/base/moments/a/a/b;",
            ">;"
        }
    .end annotation

    const-string v0, "[ { \"status\": \"on\", \"sample\":\"1\", \"sample_type\":\"hour\", \"cycle\":\"1\", \"cycle_type\":\"interval\", \"key\":\"cdm\" } ]"

    const-string v1, "cdm$getData"

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/appnext/base/b/a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/appnext/base/moments/b/c;->d(Landroid/content/Context;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    :try_start_1
    const-string v3, "https://cdn.appnext.com/tools/services/4.7.3/config.json"

    .line 2
    invoke-static {}, Lcom/appnext/base/b/a;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, v2}, Lcom/appnext/core/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/net/HttpRetryException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 3
    :try_start_2
    invoke-static {v1, v3}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception v3

    .line 4
    invoke-virtual {v3}, Ljava/net/HttpRetryException;->responseCode()I

    move-result v4

    const/16 v5, 0x190

    if-eq v4, v5, :cond_1

    const/16 v5, 0x191

    if-eq v4, v5, :cond_1

    const/16 v5, 0x192

    if-eq v4, v5, :cond_1

    const/16 v5, 0x193

    if-eq v4, v5, :cond_1

    const/16 v5, 0x194

    if-eq v4, v5, :cond_1

    const/16 v5, 0x195

    if-eq v4, v5, :cond_1

    const/16 v5, 0x1f4

    if-eq v4, v5, :cond_1

    const/16 v5, 0x1f5

    if-eq v4, v5, :cond_1

    const/16 v5, 0x1f7

    if-ne v4, v5, :cond_2

    .line 5
    :cond_1
    invoke-static {v1, v3}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 6
    :cond_2
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/appnext/base/moments/a/a;->Q()Lcom/appnext/base/moments/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appnext/base/moments/a/a;->T()Lcom/appnext/base/moments/a/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appnext/base/moments/a/b/c;->ai()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 7
    invoke-static {}, Lcom/appnext/base/b/a;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/appnext/base/moments/services/b/a;->b(Landroid/content/Context;)Lcom/appnext/base/moments/services/b/a;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/appnext/base/moments/services/b/a;->a(Ljava/util/List;)V

    .line 8
    :cond_3
    invoke-static {v0}, Lcom/appnext/base/moments/operations/imp/cdm;->m(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appnext/base/moments/a/a/c;

    .line 10
    invoke-static {}, Lcom/appnext/base/b/a;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/appnext/base/moments/services/b/a;->b(Landroid/content/Context;)Lcom/appnext/base/moments/services/b/a;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/appnext/base/moments/services/b/a;->a(Lcom/appnext/base/moments/a/a/c;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 11
    :try_start_4
    invoke-static {v1, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    .line 12
    invoke-static {v1, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-object v2
.end method
