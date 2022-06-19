.class public final Lcom/appsflyer/internal/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private AFInAppEventParameterName:Lcom/appsflyer/internal/bh;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public AFInAppEventType:Le/d/a/a/d;

.field public final AFKeystoreWrapper:Lcom/appsflyer/internal/bd;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final AFVersionDeclaration:Lcom/appsflyer/internal/bg;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final valueOf:Lcom/appsflyer/internal/ba;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final values:Ljava/util/concurrent/ExecutorService;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/bd;Lcom/appsflyer/internal/bh;Lcom/appsflyer/internal/ba;Ljava/util/concurrent/ExecutorService;Lcom/appsflyer/internal/bg;)V
    .locals 0
    .param p1    # Lcom/appsflyer/internal/bd;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/appsflyer/internal/bh;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/appsflyer/internal/ba;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/appsflyer/internal/bg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/appsflyer/internal/av;->AFKeystoreWrapper:Lcom/appsflyer/internal/bd;

    .line 3
    iput-object p2, p0, Lcom/appsflyer/internal/av;->AFInAppEventParameterName:Lcom/appsflyer/internal/bh;

    .line 4
    iput-object p3, p0, Lcom/appsflyer/internal/av;->valueOf:Lcom/appsflyer/internal/ba;

    .line 5
    iput-object p4, p0, Lcom/appsflyer/internal/av;->values:Ljava/util/concurrent/ExecutorService;

    .line 6
    iput-object p5, p0, Lcom/appsflyer/internal/av;->AFVersionDeclaration:Lcom/appsflyer/internal/bg;

    return-void
.end method

.method public static synthetic AFKeystoreWrapper(Lcom/appsflyer/internal/av;ZLjava/util/List;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/av;->AFKeystoreWrapper:Lcom/appsflyer/internal/bd;

    invoke-virtual {v0}, Lcom/appsflyer/internal/bd;->valueOf()Lcom/appsflyer/internal/ad;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v2, v0, Lcom/appsflyer/internal/ad;->init:Z

    .line 3
    iget-object v3, v0, Lcom/appsflyer/internal/ad;->values:Lcom/appsflyer/compat/function/Function;

    if-eqz v3, :cond_1

    .line 4
    invoke-interface {v3, p2}, Lcom/appsflyer/compat/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    move-object v3, v1

    .line 5
    :goto_0
    new-instance v4, Lcom/appsflyer/internal/ac;

    invoke-direct {v4, v2, p1, p2, v3}, Lcom/appsflyer/internal/ac;-><init>(ZZLjava/util/List;Ljava/util/Map;)V

    .line 6
    iget-object p2, p0, Lcom/appsflyer/internal/av;->AFVersionDeclaration:Lcom/appsflyer/internal/bg;

    .line 7
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 8
    iget-object v3, p2, Lcom/appsflyer/internal/bg;->valueOf:Lcom/appsflyer/internal/o;

    .line 9
    iget-object v3, v3, Lcom/appsflyer/internal/o;->valueOf:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "app_id"

    .line 10
    invoke-virtual {v2, v5, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v3

    const-string v5, "AppUserId"

    invoke-virtual {v3, v5}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v5, "cuid"

    .line 12
    invoke-virtual {v2, v5, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_2
    iget-object v3, p2, Lcom/appsflyer/internal/bg;->valueOf:Lcom/appsflyer/internal/o;

    .line 14
    iget-object v3, v3, Lcom/appsflyer/internal/o;->valueOf:Landroid/content/Context;

    .line 15
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-static {v3, v5}, Lcom/appsflyer/internal/ac;->values(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "app_version_name"

    .line 17
    invoke-virtual {v2, v5, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 19
    iget-object v5, p2, Lcom/appsflyer/internal/bg;->valueOf:Lcom/appsflyer/internal/o;

    .line 20
    iget-object v5, v5, Lcom/appsflyer/internal/o;->valueOf:Landroid/content/Context;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static {v5, v6}, Lcom/appsflyer/internal/ad;->AFInAppEventType(Landroid/content/Context;Ljava/util/Map;)Lcom/appsflyer/internal/c$d$b;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 21
    iget-object v1, v5, Lcom/appsflyer/internal/c$d$b;->values:Ljava/lang/String;

    :cond_3
    if-eqz v1, :cond_4

    const-string v5, "advertising_id"

    .line 22
    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_4
    iget-object v1, p2, Lcom/appsflyer/internal/bg;->valueOf:Lcom/appsflyer/internal/o;

    .line 24
    new-instance v5, Ljava/lang/ref/WeakReference;

    iget-object v1, v1, Lcom/appsflyer/internal/o;->valueOf:Landroid/content/Context;

    invoke-direct {v5, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v5}, Lcom/appsflyer/internal/ak;->AFInAppEventParameterName(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "appsflyer_id"

    .line 25
    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "os_version"

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v1, Lcom/appsflyer/internal/ai;->valueOf:Ljava/lang/String;

    const-string v5, "sdk_version"

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_data"

    .line 28
    invoke-virtual {v2, v1, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {v4}, Lcom/appsflyer/internal/ac;->AFInAppEventType()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "is_cached"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-virtual {v4}, Lcom/appsflyer/internal/ac;->AFKeystoreWrapper()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "SANDBOX"

    goto :goto_1

    :cond_5
    const-string v1, "PRODUCTION"

    :goto_1
    const-string v3, "environment"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v1, v4, Lcom/appsflyer/internal/ac;->AFInAppEventParameterName:Ljava/util/Map;

    const-string v3, "additional_parameters"

    .line 32
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    iget-object v3, v4, Lcom/appsflyer/internal/ac;->AFInAppEventType:Ljava/util/List;

    .line 35
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/d/a/a/n;

    .line 36
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 37
    invoke-virtual {v4}, Le/d/a/a/n;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, "token"

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-virtual {v4}, Le/d/a/a/n;->getSku()Ljava/lang/String;

    move-result-object v4

    const-string v6, "subscription_id"

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    const-string v3, "subscriptions"

    .line 40
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    new-instance v2, Lcom/appsflyer/internal/v;

    .line 43
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const-string v4, "https://ars.appsflyer.com/api/v1/android/validate_subscription"

    const-string v5, "POST"

    invoke-direct {v2, v4, v1, v5, v3}, Lcom/appsflyer/internal/v;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)V

    .line 45
    iget-object p2, p2, Lcom/appsflyer/internal/bg;->AFInAppEventParameterName:Lcom/appsflyer/internal/y;

    new-instance v1, Lcom/appsflyer/internal/bl;

    invoke-direct {v1}, Lcom/appsflyer/internal/bl;-><init>()V

    .line 46
    new-instance v3, Lcom/appsflyer/internal/bi;

    iget-object v4, p2, Lcom/appsflyer/internal/y;->AFKeystoreWrapper:Ljava/util/concurrent/ExecutorService;

    iget-object p2, p2, Lcom/appsflyer/internal/y;->AFInAppEventType:Lcom/appsflyer/internal/bj;

    invoke-direct {v3, v2, v4, p2, v1}, Lcom/appsflyer/internal/bi;-><init>(Lcom/appsflyer/internal/v;Ljava/util/concurrent/ExecutorService;Lcom/appsflyer/internal/bj;Lcom/appsflyer/internal/bn;)V

    .line 47
    new-instance p2, Lcom/appsflyer/internal/av$1;

    invoke-direct {p2, p0, p1, v0}, Lcom/appsflyer/internal/av$1;-><init>(Lcom/appsflyer/internal/av;ZLcom/appsflyer/internal/ad;)V

    .line 48
    iget-object p0, v3, Lcom/appsflyer/internal/bi;->AFInAppEventParameterName:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p0

    if-nez p0, :cond_7

    .line 49
    iget-object p0, v3, Lcom/appsflyer/internal/bi;->values:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Lcom/appsflyer/internal/bi$1;

    invoke-direct {p1, v3, p2}, Lcom/appsflyer/internal/bi$1;-><init>(Lcom/appsflyer/internal/bi;Lcom/appsflyer/internal/bk;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    .line 50
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Http call is already executed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/av;->AFInAppEventType:Le/d/a/a/d;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/appsflyer/internal/av;->AFInAppEventParameterName:Lcom/appsflyer/internal/bh;

    .line 3
    new-instance v1, Lcom/appsflyer/internal/at;

    invoke-direct {v1, p0}, Lcom/appsflyer/internal/at;-><init>(Lcom/appsflyer/internal/av;)V

    .line 4
    iget-object v0, v0, Lcom/appsflyer/internal/bh;->values:Landroid/content/Context;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 5
    new-instance v3, Le/d/a/a/e;

    const/4 v4, 0x0

    .line 6
    invoke-direct {v3, v4, v2, v0, v1}, Le/d/a/a/e;-><init>(Ljava/lang/String;ZLandroid/content/Context;Le/d/a/a/q;)V

    .line 7
    iput-object v3, p0, Lcom/appsflyer/internal/av;->AFInAppEventType:Le/d/a/a/d;

    .line 8
    new-instance v0, Lcom/appsflyer/internal/aw;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/aw;-><init>(Lcom/appsflyer/internal/av;)V

    invoke-virtual {v3, v0}, Le/d/a/a/e;->j(Le/d/a/a/i;)V

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please provide a valid Context."

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 11
    instance-of v1, v0, Ljava/lang/NoSuchMethodError;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/NoClassDefFoundError;

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "It seems your app uses different Play Billing library version than the SDK. Please use v.3.0.3"

    .line 12
    invoke-static {v1}, Lcom/appsflyer/AFLogger;->AFLogger$LogLevel(Ljava/lang/String;)V

    :cond_3
    const-string v1, "Failed to setup Play billing"

    .line 13
    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
