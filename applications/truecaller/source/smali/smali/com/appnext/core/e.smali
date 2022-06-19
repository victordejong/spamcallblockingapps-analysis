.class public Lcom/appnext/core/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile cV:Lcom/appnext/core/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    move-object/from16 v0, p2

    .line 1
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "adsServerResponseAuid"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "adsServerResponseAcceptedTimeAuid"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    if-eqz v4, :cond_1

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {p0}, Lcom/appnext/core/m;->l(Landroid/content/Context;)Lcom/appnext/core/m;

    move-result-object v4

    invoke-virtual {v4, v3, v6, v7}, Lcom/appnext/core/m;->a(Ljava/lang/String;J)J

    move-result-wide v10

    const-wide/32 v12, 0xea60

    mul-long v12, v12, p3

    add-long/2addr v12, v10

    cmp-long v4, v8, v12

    if-gez v4, :cond_1

    .line 5
    invoke-static {p0}, Lcom/appnext/core/m;->l(Landroid/content/Context;)Lcom/appnext/core/m;

    move-result-object v4

    invoke-virtual {v4, v1, v5}, Lcom/appnext/core/m;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ADS RESPONSE - CACHE - "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    move-object v4, v2

    .line 7
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 8
    :try_start_0
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 9
    invoke-static {p0}, Lcom/appnext/core/adswatched/a;->o(Landroid/content/Context;)Lcom/appnext/core/adswatched/a;

    move-result-object v8

    move-object v9, p1

    invoke-virtual {v8, p1, v0}, Lcom/appnext/core/adswatched/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/16 v8, 0x3e80

    move-object v9, p0

    move-object/from16 v10, p5

    .line 10
    invoke-static {p0, v10, v5, v8}, Lcom/appnext/core/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v4

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "ADS RESPONSE - SERVER - "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "{\"apps\":[]}"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 14
    invoke-static {p0}, Lcom/appnext/core/m;->l(Landroid/content/Context;)Lcom/appnext/core/m;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Lcom/appnext/core/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {p0}, Lcom/appnext/core/m;->l(Landroid/content/Context;)Lcom/appnext/core/m;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/appnext/core/m;->b(Ljava/lang/String;J)V

    goto :goto_1

    .line 16
    :cond_3
    invoke-static {p0}, Lcom/appnext/core/m;->l(Landroid/content/Context;)Lcom/appnext/core/m;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/appnext/core/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {p0}, Lcom/appnext/core/m;->l(Landroid/content/Context;)Lcom/appnext/core/m;

    move-result-object v0

    invoke-virtual {v0, v3, v6, v7}, Lcom/appnext/core/m;->b(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    :goto_1
    return-object v4
.end method

.method public static ap()Lcom/appnext/core/e;
    .locals 2

    .line 1
    sget-object v0, Lcom/appnext/core/e;->cV:Lcom/appnext/core/e;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/appnext/core/e;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/appnext/core/e;->cV:Lcom/appnext/core/e;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/appnext/core/e;

    invoke-direct {v1}, Lcom/appnext/core/e;-><init>()V

    sput-object v1, Lcom/appnext/core/e;->cV:Lcom/appnext/core/e;

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
    sget-object v0, Lcom/appnext/core/e;->cV:Lcom/appnext/core/e;

    return-object v0
.end method
