.class public Lcom/appnext/core/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile ee:Lcom/appnext/core/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "cache_config"

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "settingsServerResponsesSettingsName"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "settingsServerResponseAcceptedTimeSettingsName"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {p0}, Lcom/appnext/core/m;->l(Landroid/content/Context;)Lcom/appnext/core/m;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/appnext/core/m;->a(Ljava/lang/String;I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    const v6, 0xea60

    mul-int/2addr v5, v6

    int-to-long v5, v5

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {p0}, Lcom/appnext/core/m;->l(Landroid/content/Context;)Lcom/appnext/core/m;

    move-result-object v9

    const-wide/16 v10, 0x0

    invoke-virtual {v9, v3, v10, v11}, Lcom/appnext/core/m;->a(Ljava/lang/String;J)J

    move-result-wide v9

    add-long/2addr v9, v5

    cmp-long v5, v7, v9

    if-gez v5, :cond_2

    .line 8
    invoke-static {p0}, Lcom/appnext/core/m;->l(Landroid/content/Context;)Lcom/appnext/core/m;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5}, Lcom/appnext/core/m;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SETTINGS RESPONSE - CACHE - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    move-object v0, v1

    move-object v3, v0

    move-object v4, v3

    .line 10
    :cond_2
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 11
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/appnext/core/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "SETTINGS RESPONSE - SERVER - "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_4

    .line 14
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 16
    invoke-static {p0}, Lcom/appnext/core/m;->l(Landroid/content/Context;)Lcom/appnext/core/m;

    move-result-object p2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, v4, p1}, Lcom/appnext/core/m;->b(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :catchall_0
    :cond_3
    :try_start_2
    invoke-static {p0}, Lcom/appnext/core/m;->l(Landroid/content/Context;)Lcom/appnext/core/m;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/appnext/core/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {p0}, Lcom/appnext/core/m;->l(Landroid/content/Context;)Lcom/appnext/core/m;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, v3, p1, p2}, Lcom/appnext/core/m;->b(Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_4
    return-object v1
.end method

.method public static ay()Lcom/appnext/core/n;
    .locals 2

    .line 1
    sget-object v0, Lcom/appnext/core/n;->ee:Lcom/appnext/core/n;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/appnext/core/n;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/appnext/core/n;->ee:Lcom/appnext/core/n;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/appnext/core/n;

    invoke-direct {v1}, Lcom/appnext/core/n;-><init>()V

    sput-object v1, Lcom/appnext/core/n;->ee:Lcom/appnext/core/n;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/appnext/core/n;->ee:Lcom/appnext/core/n;

    return-object v0
.end method
