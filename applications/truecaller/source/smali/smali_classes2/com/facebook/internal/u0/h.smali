.class public final Lcom/facebook/internal/u0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0005\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0007J\r\u0010\n\u001a\u00020\u0004H\u0001\u00a2\u0006\u0002\u0008\u000bJ\r\u0010\u000c\u001a\u00020\u0006H\u0001\u00a2\u0006\u0002\u0008\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/facebook/internal/instrument/ExceptionAnalyzer;",
        "",
        "()V",
        "enabled",
        "",
        "enable",
        "",
        "execute",
        "e",
        "",
        "isDebug",
        "isDebug$facebook_core_release",
        "sendExceptionAnalysisReports",
        "sendExceptionAnalysisReports$facebook_core_release",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static a:Z


# direct methods
.method public static final a(Ljava/lang/Throwable;)V
    .locals 13

    .line 1
    sget-object v0, Lcom/facebook/internal/a0$b;->c:Lcom/facebook/internal/a0$b;

    sget-boolean v1, Lcom/facebook/internal/u0/h;->a:Z

    if-eqz v1, :cond_7

    if-nez p0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    const-string v2, "e.stackTrace"

    invoke-static {p0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_6

    aget-object v5, p0, v4

    .line 5
    sget-object v6, Lcom/facebook/internal/a0;->a:Lcom/facebook/internal/a0;

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "it.className"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "className"

    .line 6
    invoke-static {v5, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    monitor-enter v6

    .line 8
    :try_start_0
    sget-object v7, Lcom/facebook/internal/a0;->b:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_1

    .line 9
    monitor-exit v6

    goto/16 :goto_1

    .line 10
    :cond_1
    :try_start_1
    sget-object v8, Lcom/facebook/internal/a0$b;->h:Lcom/facebook/internal/a0$b;

    const-string v9, "com.facebook.appevents.aam."

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v8, Lcom/facebook/internal/a0$b;->f:Lcom/facebook/internal/a0$b;

    const-string v9, "com.facebook.appevents.codeless."

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v8, Lcom/facebook/internal/a0$b;->v:Lcom/facebook/internal/a0$b;

    const-string v9, "com.facebook.internal.instrument.errorreport."

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v8, Lcom/facebook/internal/a0$b;->w:Lcom/facebook/internal/a0$b;

    const-string v9, "com.facebook.internal.instrument.anrreport."

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v8, Lcom/facebook/internal/a0$b;->i:Lcom/facebook/internal/a0$b;

    const-string v9, "com.facebook.appevents.ml."

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v8, Lcom/facebook/internal/a0$b;->j:Lcom/facebook/internal/a0$b;

    const-string v9, "com.facebook.appevents.suggestedevents."

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v8, Lcom/facebook/internal/a0$b;->g:Lcom/facebook/internal/a0$b;

    const-string v9, "com.facebook.appevents.restrictivedatafilter.RestrictiveDataManager"

    .line 17
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    .line 18
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v8, Lcom/facebook/internal/a0$b;->k:Lcom/facebook/internal/a0$b;

    const-string v9, "com.facebook.appevents.integrity.IntegrityManager"

    .line 20
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    .line 21
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v8, Lcom/facebook/internal/a0$b;->m:Lcom/facebook/internal/a0$b;

    const-string v9, "com.facebook.appevents.eventdeactivation."

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v8, Lcom/facebook/internal/a0$b;->n:Lcom/facebook/internal/a0$b;

    const-string v9, "com.facebook.appevents.ondeviceprocessing."

    .line 24
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    .line 25
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v8, Lcom/facebook/internal/a0$b;->p:Lcom/facebook/internal/a0$b;

    const-string v9, "com.facebook.appevents.iap."

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v8, Lcom/facebook/internal/a0$b;->x:Lcom/facebook/internal/a0$b;

    const-string v9, "com.facebook.internal.logging.monitor"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    monitor-exit v6

    .line 29
    :goto_1
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/internal/a0$b;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 30
    array-length v9, v7

    move v10, v3

    :cond_3
    if-ge v10, v9, :cond_2

    aget-object v11, v7, v10

    add-int/lit8 v10, v10, 0x1

    const/4 v12, 0x2

    .line 31
    invoke-static {v5, v11, v3, v12}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_2

    :cond_4
    move-object v8, v0

    :goto_2
    if-eq v8, v0, :cond_5

    .line 32
    sget-object v5, Lcom/facebook/internal/a0;->a:Lcom/facebook/internal/a0;

    const-string v5, "feature"

    .line 33
    invoke-static {v8, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v5, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->a()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.facebook.internal.FEATURE_MANAGER"

    .line 35
    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 36
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 37
    invoke-virtual {v8}, Lcom/facebook/internal/a0$b;->a()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Le/j/f0;->a:Le/j/f0;

    const-string v7, "13.0.0"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 38
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 39
    invoke-virtual {v8}, Lcom/facebook/internal/a0$b;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    .line 40
    monitor-exit v6

    throw p0

    .line 41
    :cond_6
    sget-object p0, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->c()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_7

    .line 42
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v0, "features"

    .line 43
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/facebook/internal/u0/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/internal/u0/i;-><init>(Lorg/json/JSONArray;Ls1/z/c/f;)V

    .line 45
    invoke-virtual {v0}, Lcom/facebook/internal/u0/i;->c()V

    :cond_7
    :goto_3
    return-void
.end method
