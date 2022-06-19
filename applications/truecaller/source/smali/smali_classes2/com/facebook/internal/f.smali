.class public final synthetic Lcom/facebook/internal/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/f;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/internal/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/internal/f;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/facebook/internal/f;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/internal/f;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/internal/f;->c:Ljava/lang/String;

    .line 1
    sget-object v3, Lcom/facebook/internal/d0;->a:Lcom/facebook/internal/d0;

    const-string v4, "$context"

    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$settingsKey"

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$applicationId"

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const-string v5, "com.facebook.internal.preferences.APP_SETTINGS"

    .line 2
    invoke-virtual {v0, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v5, 0x0

    .line 3
    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4
    invoke-static {v6}, Lcom/facebook/internal/q0;->B(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "Required value was null."

    if-nez v7, :cond_1

    if-eqz v6, :cond_0

    .line 5
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v7, "FacebookSDK"

    .line 6
    invoke-static {v7, v6}, Lcom/facebook/internal/q0;->F(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v7, v5

    :goto_0
    if-eqz v7, :cond_1

    .line 7
    invoke-virtual {v3, v2, v7}, Lcom/facebook/internal/d0;->d(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/c0;

    move-result-object v6

    goto :goto_1

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v6, v5

    .line 9
    :goto_1
    invoke-virtual {v3}, Lcom/facebook/internal/d0;->a()Lorg/json/JSONObject;

    move-result-object v7

    .line 10
    invoke-virtual {v3, v2, v7}, Lcom/facebook/internal/d0;->d(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/c0;

    .line 11
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x1

    if-eqz v6, :cond_2

    .line 12
    iget-object v1, v6, Lcom/facebook/internal/c0;->j:Ljava/lang/String;

    .line 13
    sget-boolean v6, Lcom/facebook/internal/d0;->g:Z

    if-nez v6, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 14
    sput-boolean v0, Lcom/facebook/internal/d0;->g:Z

    .line 15
    :cond_2
    sget-object v1, Lcom/facebook/internal/b0;->a:Lcom/facebook/internal/b0;

    const-string v1, "applicationId"

    .line 16
    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "platform"

    const-string v9, "android"

    .line 18
    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    sget-object v7, Le/j/f0;->a:Le/j/f0;

    sget-object v7, Le/j/f0;->a:Le/j/f0;

    const-string v7, "sdk_version"

    const-string v9, "13.0.0"

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "fields"

    const-string v9, "gatekeepers"

    .line 20
    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    sget-object v7, Lcom/facebook/GraphRequest;->k:Lcom/facebook/GraphRequest$c;

    new-array v9, v0, [Ljava/lang/Object;

    const-string v10, "mobile_sdk_gk"

    aput-object v10, v9, v4

    .line 22
    invoke-static {v9, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    const-string v10, "app/%s"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "java.lang.String.format(format, *args)"

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v7, v5, v9, v5}, Lcom/facebook/GraphRequest$c;->h(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    move-result-object v5

    .line 24
    invoke-virtual {v5, v6}, Lcom/facebook/GraphRequest;->l(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {v5}, Lcom/facebook/GraphRequest;->c()Le/j/l0;

    move-result-object v5

    .line 26
    iget-object v5, v5, Le/j/l0;->f:Lorg/json/JSONObject;

    if-nez v5, :cond_3

    .line 27
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 28
    :cond_3
    invoke-static {}, Le/j/f0;->a()Landroid/content/Context;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    aput-object v2, v7, v4

    const-string v9, "com.facebook.internal.APP_GATEKEEPERS.%s"

    .line 29
    invoke-static {v7, v0, v9, v10}, Le/d/c/a/a;->v([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "com.facebook.internal.preferences.APP_GATEKEEPERS"

    .line 30
    invoke-virtual {v6, v7, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 31
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v0, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 32
    invoke-static {v2, v5}, Lcom/facebook/internal/b0;->d(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 33
    sget-object v0, Lcom/facebook/appevents/m0/i;->a:Lcom/facebook/appevents/m0/i;

    .line 34
    invoke-static {}, Le/j/f0;->a()Landroid/content/Context;

    move-result-object v0

    .line 35
    invoke-static {}, Le/j/f0;->b()Ljava/lang/String;

    move-result-object v4

    .line 36
    invoke-static {}, Le/j/f0;->c()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 37
    instance-of v5, v0, Landroid/app/Application;

    if-eqz v5, :cond_d

    .line 38
    check-cast v0, Landroid/app/Application;

    const-string v5, "application"

    .line 39
    invoke-static {v0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object v6, Lcom/facebook/appevents/x;->c:Lcom/facebook/appevents/x$a;

    .line 41
    invoke-static {v0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Le/j/f0;->j()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 43
    sget-object v5, Lcom/facebook/appevents/q;->a:Lcom/facebook/appevents/q;

    .line 44
    sget-boolean v5, Lcom/facebook/appevents/q;->e:Z

    if-eqz v5, :cond_4

    goto :goto_2

    .line 45
    :cond_4
    invoke-static {}, Lcom/facebook/appevents/x;->b()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v5

    if-nez v5, :cond_5

    .line 46
    invoke-virtual {v6}, Lcom/facebook/appevents/x$a;->d()V

    .line 47
    :cond_5
    invoke-static {}, Lcom/facebook/appevents/x;->b()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 48
    sget-object v6, Lcom/facebook/appevents/a;->a:Lcom/facebook/appevents/a;

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 49
    :goto_2
    sget-object v5, Lcom/facebook/appevents/g0;->a:Lcom/facebook/appevents/g0;

    .line 50
    const-class v6, Lcom/facebook/appevents/g0;

    invoke-static {v6}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_3

    .line 51
    :cond_6
    :try_start_1
    sget-object v7, Lcom/facebook/appevents/g0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_3

    .line 52
    :cond_7
    invoke-virtual {v5}, Lcom/facebook/appevents/g0;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v5

    .line 53
    invoke-static {v5, v6}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 54
    :goto_3
    sget-object v5, Le/j/f0;->a:Le/j/f0;

    .line 55
    const-class v5, Le/j/f0;

    invoke-static {v5}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_4

    :cond_8
    :try_start_2
    const-string v6, "context"

    invoke-static {v0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 57
    invoke-static {}, Le/j/f0;->e()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Le/j/k;

    invoke-direct {v7, v1, v4}, Le/j/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 58
    sget-object v1, Lcom/facebook/internal/a0;->a:Lcom/facebook/internal/a0;

    sget-object v1, Lcom/facebook/internal/a0$b;->n:Lcom/facebook/internal/a0$b;

    invoke-static {v1}, Lcom/facebook/internal/a0;->b(Lcom/facebook/internal/a0$b;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 59
    sget-object v1, Lcom/facebook/appevents/o0/c;->a:Lcom/facebook/appevents/o0/c;

    invoke-static {}, Lcom/facebook/appevents/o0/c;->a()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "com.facebook.sdk.attributionTracking"

    .line 60
    const-class v6, Lcom/facebook/appevents/o0/c;

    invoke-static {v6}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v7, :cond_9

    goto :goto_4

    .line 61
    :cond_9
    :try_start_3
    invoke-static {}, Le/j/f0;->a()Landroid/content/Context;

    move-result-object v7

    .line 62
    invoke-static {}, Le/j/f0;->e()Ljava/util/concurrent/Executor;

    move-result-object v8

    new-instance v9, Lcom/facebook/appevents/o0/a;

    invoke-direct {v9, v7, v1, v4}, Lcom/facebook/appevents/o0/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v1

    .line 63
    :try_start_4
    invoke-static {v1, v6}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v1

    .line 64
    invoke-static {v1, v5}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 65
    :cond_a
    :goto_4
    sget-object v1, Lcom/facebook/appevents/m0/f;->a:Lcom/facebook/appevents/m0/f;

    invoke-static {v0, v4}, Lcom/facebook/appevents/m0/f;->c(Landroid/app/Application;Ljava/lang/String;)V

    goto :goto_5

    .line 66
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_c
    new-instance v0, Le/j/c0;

    const-string v1, "The Facebook sdk must be initialized before calling activateApp"

    invoke-direct {v0, v1}, Le/j/c0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_d
    :goto_5
    sget-object v0, Lcom/facebook/internal/d0;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 69
    sget-object v1, Lcom/facebook/internal/d0;->d:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lcom/facebook/internal/d0$a;->c:Lcom/facebook/internal/d0$a;

    goto :goto_6

    .line 70
    :cond_e
    sget-object v1, Lcom/facebook/internal/d0$a;->d:Lcom/facebook/internal/d0$a;

    .line 71
    :goto_6
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 72
    invoke-virtual {v3}, Lcom/facebook/internal/d0;->e()V

    return-void
.end method
