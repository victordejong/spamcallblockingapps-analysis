.class public final synthetic Le/j/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/j/k;->a:Landroid/content/Context;

    iput-object p2, p0, Le/j/k;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget-object v0, p0, Le/j/k;->a:Landroid/content/Context;

    iget-object v1, p0, Le/j/k;->b:Ljava/lang/String;

    const-string v2, "$applicationId"

    .line 1
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v2, Le/j/f0;->a:Le/j/f0;

    const-string v3, "applicationContext"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {v2}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/facebook/internal/q$a;->b(Landroid/content/Context;)Lcom/facebook/internal/q;

    move-result-object v3

    const-string v4, "com.facebook.sdk.attributionTracking"

    const/4 v5, 0x0

    .line 5
    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "ping"

    .line 6
    invoke-static {v1, v6}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    .line 7
    invoke-interface {v4, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    sget-object v11, Lcom/facebook/appevents/m0/h;->a:Lcom/facebook/appevents/m0/h;

    .line 9
    sget-object v11, Lcom/facebook/appevents/m0/h$a;->a:Lcom/facebook/appevents/m0/h$a;

    .line 10
    invoke-static {v0}, Lcom/facebook/appevents/v;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 11
    invoke-static {v0}, Le/j/f0;->h(Landroid/content/Context;)Z

    move-result v13

    .line 12
    invoke-static {v11, v3, v12, v13, v0}, Lcom/facebook/appevents/m0/h;->a(Lcom/facebook/appevents/m0/h$a;Lcom/facebook/internal/q;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v3, "%s/activities"

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    aput-object v1, v12, v5

    .line 13
    invoke-static {v12, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "java.lang.String.format(format, *args)"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v3, Le/j/f0;->t:Le/j/f0$a;

    check-cast v3, Le/j/n;

    .line 15
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v3, Lcom/facebook/GraphRequest;->k:Lcom/facebook/GraphRequest$c;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v1, v0, v5}, Lcom/facebook/GraphRequest$c;->i(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    move-result-object v0

    cmp-long v1, v9, v7

    if-nez v1, :cond_1

    .line 17
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->c()Le/j/l0;

    move-result-object v0

    .line 18
    iget-object v0, v0, Le/j/l0;->e:Lcom/facebook/FacebookRequestError;

    if-nez v0, :cond_1

    .line 19
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 21
    invoke-interface {v0, v6, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 22
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :catch_0
    move-exception v0

    .line 23
    new-instance v1, Le/j/c0;

    const-string v3, "An error occurred while publishing install."

    invoke-direct {v1, v3, v0}, Le/j/c0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    const-string v1, "Facebook-publish"

    .line 24
    invoke-static {v1, v0}, Lcom/facebook/internal/q0;->F(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 25
    :goto_0
    invoke-static {v0, v2}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void
.end method
