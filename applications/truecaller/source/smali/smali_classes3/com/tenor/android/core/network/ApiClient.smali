.class public Lcom/tenor/android/core/network/ApiClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile sApiService:Lcom/tenor/android/core/network/IApiService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tenor/android/core/network/IApiService<",
            "Lcom/tenor/android/core/network/IApiClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnonId(Landroid/content/Context;Lcom/tenor/android/core/network/IAnonIdListener;)Lx3/b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/tenor/android/core/network/IAnonIdListener;",
            ")",
            "Lx3/b<",
            "Lcom/tenor/android/core/response/impl/AnonIdResponse;",
            ">;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    :goto_0
    invoke-static {v0}, Lcom/tenor/android/core/network/ApiClient;->getInstance(Landroid/content/Context;)Lcom/tenor/android/core/network/IApiClient;

    move-result-object v1

    sget-object v2, Lcom/tenor/android/core/network/ApiClient;->sApiService:Lcom/tenor/android/core/network/IApiService;

    .line 4
    invoke-interface {v2}, Lcom/tenor/android/core/network/IApiService;->getApiKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/tenor/android/core/util/AbstractLocaleUtils;->getCurrentLocaleName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tenor/android/core/network/IApiClient;->getAnonId(Ljava/lang/String;Ljava/lang/String;)Lx3/b;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/tenor/android/core/network/ApiClient$1;

    invoke-direct {v2, v0, p1}, Lcom/tenor/android/core/network/ApiClient$1;-><init>(Landroid/content/Context;Lcom/tenor/android/core/network/IAnonIdListener;)V

    invoke-interface {v1, v2}, Lx3/b;->enqueue(Lx3/d;)V

    .line 6
    invoke-static {p0}, Lcom/tenor/android/core/service/AaidService;->requestAaid(Landroid/content/Context;)V

    return-object v1
.end method

.method public static getApiKey()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/tenor/android/core/network/ApiClient;->sApiService:Lcom/tenor/android/core/network/IApiService;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/tenor/android/core/network/ApiClient;->sApiService:Lcom/tenor/android/core/network/IApiService;

    invoke-interface {v0}, Lcom/tenor/android/core/network/IApiService;->getApiKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Api service cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/tenor/android/core/network/IApiClient;
    .locals 3

    const-class v0, Lcom/tenor/android/core/network/ApiClient;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/tenor/android/core/network/ApiClient;->sApiService:Lcom/tenor/android/core/network/IApiService;

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lcom/tenor/android/core/network/ApiClient;->sApiService:Lcom/tenor/android/core/network/IApiService;

    invoke-interface {v1}, Lcom/tenor/android/core/network/IApiService;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tenor/android/core/network/IApiClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 3
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Api service cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/tenor/android/core/network/IApiClient;
    .locals 2

    const-class v0, Lcom/tenor/android/core/network/ApiClient;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/tenor/android/core/network/ApiClient;->sApiService:Lcom/tenor/android/core/network/IApiService;

    if-nez v1, :cond_0

    .line 5
    invoke-static {p0}, Lcom/tenor/android/core/network/ApiClient;->init(Landroid/content/Context;)V

    .line 6
    :cond_0
    sget-object p0, Lcom/tenor/android/core/network/ApiClient;->sApiService:Lcom/tenor/android/core/network/IApiService;

    invoke-interface {p0}, Lcom/tenor/android/core/network/IApiService;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tenor/android/core/network/IApiClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getServiceIds(Landroid/content/Context;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ln3/g/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ln3/g/a;-><init>(I)V

    .line 2
    sget-object v1, Lcom/tenor/android/core/network/ApiClient;->sApiService:Lcom/tenor/android/core/network/IApiService;

    invoke-interface {v1}, Lcom/tenor/android/core/network/IApiService;->getApiKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p0}, Lcom/tenor/android/core/util/AbstractSessionUtils;->getAnonId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x14

    if-gt v2, v3, :cond_0

    const-string v2, "keyboardid"

    goto :goto_0

    :cond_0
    const-string v2, "anon_id"

    :goto_0
    invoke-virtual {v0, v2, v1}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p0}, Lcom/tenor/android/core/util/AbstractSessionUtils;->getAndroidAdvertiseId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {p0}, Lcom/tenor/android/core/service/AaidService;->requestAaid(Landroid/content/Context;)V

    .line 7
    :cond_1
    invoke-static {p0}, Lcom/tenor/android/core/util/AbstractSessionUtils;->getAndroidAdvertiseId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "aaid"

    invoke-virtual {v0, v2, v1}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {p0}, Lcom/tenor/android/core/util/AbstractLocaleUtils;->getCurrentLocaleName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "locale"

    invoke-virtual {v0, v2, v1}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {p0}, Lcom/tenor/android/core/constant/ScreenDensity;->get(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "screen_density"

    invoke-virtual {v0, v1, p0}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static declared-synchronized init(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/tenor/android/core/network/ApiClient;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Lcom/tenor/android/core/network/ApiService$Builder;

    const-class v2, Lcom/tenor/android/core/network/IApiClient;

    invoke-direct {v1, p0, v2}, Lcom/tenor/android/core/network/ApiService$Builder;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v1}, Lcom/tenor/android/core/network/ApiClient;->init(Landroid/content/Context;Lcom/tenor/android/core/network/ApiService$IBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lcom/tenor/android/core/network/ApiService$IBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/tenor/android/core/network/ApiService$IBuilder<",
            "Lcom/tenor/android/core/network/IApiClient;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/tenor/android/core/network/ApiClient;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/tenor/android/core/network/ApiClient;->init(Landroid/content/Context;Lcom/tenor/android/core/network/ApiService$IBuilder;Lcom/tenor/android/core/network/IAnonIdListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lcom/tenor/android/core/network/ApiService$IBuilder;Lcom/tenor/android/core/network/IAnonIdListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/tenor/android/core/network/ApiService$IBuilder<",
            "Lcom/tenor/android/core/network/IApiClient;",
            ">;",
            "Lcom/tenor/android/core/network/IAnonIdListener;",
            ")V"
        }
    .end annotation

    const-class v0, Lcom/tenor/android/core/network/ApiClient;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/tenor/android/core/network/ApiClient;->sApiService:Lcom/tenor/android/core/network/IApiService;

    if-nez v1, :cond_0

    .line 6
    invoke-interface {p1}, Lcom/tenor/android/core/network/ApiService$IBuilder;->build()Lcom/tenor/android/core/network/IApiService;

    move-result-object p1

    sput-object p1, Lcom/tenor/android/core/network/ApiClient;->sApiService:Lcom/tenor/android/core/network/IApiService;

    .line 7
    :cond_0
    invoke-static {p0}, Lcom/tenor/android/core/util/AbstractSessionUtils;->hasAnonId(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    invoke-static {p0, p2}, Lcom/tenor/android/core/network/ApiClient;->getAnonId(Landroid/content/Context;Lcom/tenor/android/core/network/IAnonIdListener;)Lx3/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static registerAction(Landroid/content/Context;Lcom/tenor/android/core/measurable/MeasurableViewHolderEvent;)Lx3/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/tenor/android/core/measurable/MeasurableViewHolderEvent;",
            ")",
            "Lx3/b<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, Lcom/tenor/android/core/network/ApiClient;->registerActions(Landroid/content/Context;Ljava/util/List;)Lx3/b;

    move-result-object p0

    return-object p0
.end method

.method public static registerAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lx3/b;
    .locals 2
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/tenor/android/core/constant/ViewAction$Value;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lx3/b<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tenor/android/core/measurable/MeasurableViewHolderEvent;

    invoke-static {p0}, Lcom/tenor/android/core/util/AbstractLocaleUtils;->getUtcOffset(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p3, v1, p2}, Lcom/tenor/android/core/measurable/MeasurableViewHolderEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/tenor/android/core/network/ApiClient;->registerAction(Landroid/content/Context;Lcom/tenor/android/core/measurable/MeasurableViewHolderEvent;)Lx3/b;

    move-result-object p0

    return-object p0
.end method

.method public static registerActions(Landroid/content/Context;Ljava/util/List;)Lx3/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/tenor/android/core/measurable/MeasurableViewHolderEvent;",
            ">;)",
            "Lx3/b<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tenor/android/core/util/AbstractGsonUtils;->getInstance()Le/m/e/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/tenor/android/core/network/ApiClient;->getInstance()Lcom/tenor/android/core/network/IApiClient;

    move-result-object v0

    invoke-static {p0}, Lcom/tenor/android/core/network/ApiClient;->getServiceIds(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/tenor/android/core/network/IApiClient;->registerActions(Ljava/util/Map;Ljava/lang/String;)Lx3/b;

    move-result-object p0

    .line 3
    new-instance p1, Lcom/tenor/android/core/network/VoidCallBack;

    invoke-direct {p1}, Lcom/tenor/android/core/network/VoidCallBack;-><init>()V

    invoke-interface {p0, p1}, Lx3/b;->enqueue(Lx3/d;)V

    return-object p0
.end method

.method public static registerShare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lx3/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lx3/b<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/tenor/android/core/network/ApiClient;->getInstance(Landroid/content/Context;)Lcom/tenor/android/core/network/IApiClient;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lcom/tenor/android/core/network/ApiClient;->getServiceIds(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Lcom/tenor/android/core/constant/StringConstant;->getOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p1, p2}, Lcom/tenor/android/core/network/IApiClient;->registerShare(Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/String;)Lx3/b;

    move-result-object p0

    .line 3
    new-instance p1, Lcom/tenor/android/core/network/VoidCallBack;

    invoke-direct {p1}, Lcom/tenor/android/core/network/VoidCallBack;-><init>()V

    invoke-interface {p0, p1}, Lx3/b;->enqueue(Lx3/d;)V

    return-object p0
.end method
