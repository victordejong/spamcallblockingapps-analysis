.class public Lcom/appnext/core/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile ek:Lcom/appnext/core/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aA()Lcom/appnext/core/p;
    .locals 2

    .line 1
    sget-object v0, Lcom/appnext/core/p;->ek:Lcom/appnext/core/p;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/appnext/core/p;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/appnext/core/p;->ek:Lcom/appnext/core/p;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/appnext/core/p;

    invoke-direct {v1}, Lcom/appnext/core/p;-><init>()V

    sput-object v1, Lcom/appnext/core/p;->ek:Lcom/appnext/core/p;

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
    sget-object v0, Lcom/appnext/core/p;->ek:Lcom/appnext/core/p;

    return-object v0
.end method

.method public static m(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Lcom/appnext/core/m;->l(Landroid/content/Context;)Lcom/appnext/core/m;

    move-result-object v2

    const-string v3, "translateServerResponseAcceptedTime"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/appnext/core/m;->a(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/32 v6, 0x240c8400

    add-long/2addr v4, v6

    cmp-long v0, v0, v4

    const/4 v1, 0x0

    const-string v2, "translateServerResponses"

    if-gez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/appnext/core/m;->l(Landroid/content/Context;)Lcom/appnext/core/m;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/appnext/core/m;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_0
    const-string v4, "https://cdn.appnext.com/tools/sdk/langs/2.4.4/langs.json"

    .line 4
    invoke-static {p0, v4, v1}, Lcom/appnext/core/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-static {p0}, Lcom/appnext/core/m;->l(Landroid/content/Context;)Lcom/appnext/core/m;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/appnext/core/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {p0}, Lcom/appnext/core/m;->l(Landroid/content/Context;)Lcom/appnext/core/m;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v3, v1, v2}, Lcom/appnext/core/m;->b(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-object v0
.end method
