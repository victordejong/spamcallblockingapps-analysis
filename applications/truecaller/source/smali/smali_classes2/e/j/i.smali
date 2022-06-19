.class public final synthetic Le/j/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Le/j/f0$b;


# direct methods
.method public synthetic constructor <init>(Le/j/f0$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/j/i;->a:Le/j/f0$b;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Le/j/i;->a:Le/j/f0$b;

    .line 1
    sget-object v1, Le/j/q0;->d:Le/j/q0$a;

    sget-object v2, Le/j/v;->f:Le/j/v$a;

    invoke-virtual {v2}, Le/j/v$a;->a()Le/j/v;

    move-result-object v2

    .line 2
    iget-object v3, v2, Le/j/v;->b:Le/j/u;

    .line 3
    iget-object v4, v3, Le/j/u;->a:Landroid/content/SharedPreferences;

    const-string v5, "com.facebook.AccessTokenManager.CachedAccessToken"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    .line 4
    iget-object v3, v3, Le/j/u;->a:Landroid/content/SharedPreferences;

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    sget-object v3, Lcom/facebook/AccessToken;->l:Lcom/facebook/AccessToken$c;

    invoke-static {v4}, Lcom/facebook/AccessToken$c;->a(Lorg/json/JSONObject;)Lcom/facebook/AccessToken;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object v3, v6

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v2, v3, v4}, Le/j/v;->c(Lcom/facebook/AccessToken;Z)V

    .line 8
    :cond_1
    invoke-virtual {v1}, Le/j/q0$a;->a()Le/j/q0;

    move-result-object v2

    .line 9
    iget-object v3, v2, Le/j/q0;->b:Le/j/p0;

    .line 10
    iget-object v3, v3, Le/j/p0;->a:Landroid/content/SharedPreferences;

    const-string v5, "com.facebook.ProfileManager.CachedProfile"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 11
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    new-instance v3, Lcom/facebook/Profile;

    invoke-direct {v3, v5}, Lcom/facebook/Profile;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    :cond_2
    move-object v3, v6

    :goto_1
    if-eqz v3, :cond_3

    .line 13
    invoke-virtual {v2, v3, v4}, Le/j/q0;->a(Lcom/facebook/Profile;Z)V

    .line 14
    :cond_3
    sget-object v2, Lcom/facebook/AccessToken;->l:Lcom/facebook/AccessToken$c;

    invoke-static {}, Lcom/facebook/AccessToken$c;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/facebook/Profile;->h:Lcom/facebook/Profile;

    .line 15
    invoke-virtual {v1}, Le/j/q0$a;->a()Le/j/q0;

    move-result-object v1

    .line 16
    iget-object v1, v1, Le/j/q0;->c:Lcom/facebook/Profile;

    if-nez v1, :cond_4

    .line 17
    invoke-static {}, Lcom/facebook/Profile;->a()V

    :cond_4
    if-nez v0, :cond_5

    goto :goto_2

    .line 18
    :cond_5
    invoke-interface {v0}, Le/j/f0$b;->a()V

    .line 19
    :goto_2
    invoke-static {}, Le/j/f0;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Le/j/f0;->d:Ljava/lang/String;

    const-string v2, "context"

    .line 20
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v3, Lcom/facebook/appevents/x;->c:Lcom/facebook/appevents/x$a;

    .line 22
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Le/j/f0;->c()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_3

    .line 24
    :cond_6
    new-instance v3, Lcom/facebook/appevents/x;

    invoke-direct {v3, v0, v1, v6}, Lcom/facebook/appevents/x;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 25
    invoke-static {}, Lcom/facebook/appevents/x;->b()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v5, Lcom/facebook/appevents/i;

    invoke-direct {v5, v0, v3}, Lcom/facebook/appevents/i;-><init>(Landroid/content/Context;Lcom/facebook/appevents/x;)V

    invoke-virtual {v1, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 26
    :goto_3
    sget-object v0, Le/j/v0;->a:Le/j/v0;

    .line 27
    const-class v0, Le/j/v0;

    invoke-static {v0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_5

    .line 28
    :cond_7
    :try_start_2
    invoke-static {}, Le/j/f0;->a()Landroid/content/Context;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x80

    invoke-virtual {v3, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-nez v3, :cond_8

    move-object v5, v6

    goto :goto_4

    .line 30
    :cond_8
    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    :goto_4
    if-eqz v5, :cond_a

    .line 31
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.facebook.sdk.AutoAppLinkEnabled"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 32
    new-instance v3, Lcom/facebook/appevents/x;

    invoke-direct {v3, v1, v6, v6}, Lcom/facebook/appevents/x;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    const-string v1, "loggerImpl"

    .line 33
    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 35
    invoke-static {}, Lcom/facebook/internal/q0;->y()Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "SchemeWarning"

    const-string v5, "You haven\'t set the Auto App Link URL scheme: fb<YOUR APP ID> in AndroidManifest"

    .line 36
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v4, "fb_auto_applink"

    .line 37
    invoke-static {}, Le/j/f0;->c()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 38
    invoke-virtual {v3, v4, v1}, Lcom/facebook/appevents/x;->e(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v1

    .line 39
    invoke-static {v1, v0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 40
    :catch_2
    :cond_a
    :goto_5
    invoke-static {}, Le/j/f0;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext().applicationContext"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v1, Lcom/facebook/appevents/x;

    invoke-direct {v1, v0, v6, v6}, Lcom/facebook/appevents/x;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 43
    invoke-virtual {v1}, Lcom/facebook/appevents/x;->d()V

    return-object v6

    .line 44
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
