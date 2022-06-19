.class public final synthetic Lcom/facebook/appevents/n0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/facebook/appevents/n0/e;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/appevents/n0/e;

    invoke-direct {v0}, Lcom/facebook/appevents/n0/e;-><init>()V

    sput-object v0, Lcom/facebook/appevents/n0/e;->a:Lcom/facebook/appevents/n0/e;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    const-string v0, "model_request_timestamp"

    const-string v1, "models"

    .line 1
    const-class v2, Lcom/facebook/appevents/n0/h;

    sget-object v3, Lcom/facebook/appevents/n0/h;->a:Lcom/facebook/appevents/n0/h;

    invoke-static {v2}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    :try_start_0
    sget-object v4, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->a()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.facebook.internal.MODEL_STORE"

    const/4 v6, 0x0

    .line 3
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const/4 v5, 0x0

    .line 4
    invoke-interface {v4, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    .line 5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    move v8, v7

    goto :goto_0

    :cond_1
    move v8, v6

    :goto_0
    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    :goto_2
    const-wide/16 v9, 0x0

    .line 6
    invoke-interface {v4, v0, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 7
    sget-object v5, Lcom/facebook/internal/a0;->a:Lcom/facebook/internal/a0;

    sget-object v5, Lcom/facebook/internal/a0$b;->l:Lcom/facebook/internal/a0$b;

    invoke-static {v5}, Lcom/facebook/internal/a0;->b(Lcom/facebook/internal/a0$b;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 8
    invoke-virtual {v8}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-eqz v5, :cond_7

    .line 9
    invoke-static {v3}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    cmp-long v5, v11, v9

    if-nez v5, :cond_5

    goto :goto_3

    .line 10
    :cond_5
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr v9, v11

    const-wide/32 v11, 0xf731400

    cmp-long v5, v9, v11

    if-gez v5, :cond_6

    move v6, v7

    goto :goto_3

    :catchall_0
    move-exception v5

    .line 11
    :try_start_2
    invoke-static {v5, v3}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :cond_6
    :goto_3
    if-nez v6, :cond_9

    .line 12
    :cond_7
    invoke-virtual {v3}, Lcom/facebook/appevents/n0/h;->c()Lorg/json/JSONObject;

    move-result-object v8

    if-nez v8, :cond_8

    goto :goto_4

    .line 13
    :cond_8
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 14
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 16
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 17
    :cond_9
    invoke-virtual {v3, v8}, Lcom/facebook/appevents/n0/h;->a(Lorg/json/JSONObject;)V

    .line 18
    invoke-virtual {v3}, Lcom/facebook/appevents/n0/h;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    .line 19
    invoke-static {v0, v2}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :catch_0
    :goto_4
    return-void
.end method
