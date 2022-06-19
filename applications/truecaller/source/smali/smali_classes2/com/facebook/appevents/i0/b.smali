.class public final synthetic Lcom/facebook/appevents/i0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/i0/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/facebook/appevents/i0/b;->a:Ljava/lang/String;

    const-string v1, "0"

    .line 1
    const-class v2, Lcom/facebook/appevents/i0/i;

    invoke-static {v2}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    :try_start_0
    sget-object v3, Lcom/facebook/GraphRequest;->k:Lcom/facebook/GraphRequest$c;

    .line 3
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s/app_indexing_session"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v5, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "java.lang.String.format(locale, format, *args)"

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v3, v4, v0, v4, v4}, Lcom/facebook/GraphRequest$c;->i(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    move-result-object v0

    .line 5
    iget-object v3, v0, Lcom/facebook/GraphRequest;->e:Landroid/os/Bundle;

    if-nez v3, :cond_1

    .line 6
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 7
    :cond_1
    sget-object v5, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->a()Landroid/content/Context;

    move-result-object v5

    .line 8
    invoke-static {v5}, Lcom/facebook/internal/q$a;->b(Landroid/content/Context;)Lcom/facebook/internal/q;

    move-result-object v5

    .line 9
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 10
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v10, ""

    if-eqz v9, :cond_2

    goto :goto_0

    :cond_2
    move-object v9, v10

    :goto_0
    :try_start_1
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    if-nez v5, :cond_3

    move-object v9, v4

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {v5}, Lcom/facebook/internal/q;->a()Ljava/lang/String;

    move-result-object v9

    :goto_1
    if-eqz v9, :cond_4

    .line 12
    invoke-virtual {v5}, Lcom/facebook/internal/q;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 13
    :cond_4
    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 14
    :goto_2
    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 15
    invoke-static {}, Lcom/facebook/appevents/m0/g;->c()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v1, "1"

    :cond_5
    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 16
    invoke-static {}, Lcom/facebook/internal/q0;->u()Ljava/util/Locale;

    move-result-object v1

    if-nez v1, :cond_6

    .line 17
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v5, "getDefault()"

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x5f

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 19
    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "extInfoArray.toString()"

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "device_session_id"

    .line 20
    invoke-static {}, Lcom/facebook/appevents/i0/i;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "extinfo"

    .line 21
    invoke-virtual {v3, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, v3}, Lcom/facebook/GraphRequest;->l(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->c()Le/j/l0;

    move-result-object v0

    .line 24
    iget-object v0, v0, Le/j/l0;->c:Lorg/json/JSONObject;

    .line 25
    sget-object v1, Lcom/facebook/appevents/i0/i;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_7

    const-string v3, "is_app_indexing_enabled"

    .line 26
    invoke-virtual {v0, v3, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    move v6, v8

    .line 27
    :goto_3
    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 28
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_8

    .line 29
    sput-object v4, Lcom/facebook/appevents/i0/i;->e:Ljava/lang/String;

    goto :goto_4

    .line 30
    :cond_8
    sget-object v0, Lcom/facebook/appevents/i0/i;->d:Lcom/facebook/appevents/i0/l;

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v0}, Lcom/facebook/appevents/i0/l;->c()V

    .line 31
    :goto_4
    sput-boolean v8, Lcom/facebook/appevents/i0/i;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 32
    invoke-static {v0, v2}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :goto_5
    return-void
.end method
