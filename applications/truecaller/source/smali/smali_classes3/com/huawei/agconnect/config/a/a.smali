.class public Lcom/huawei/agconnect/config/a/a;
.super Lcom/huawei/agconnect/AGConnectApp;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/huawei/agconnect/AGConnectApp;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/Object;

.field private static c:Ljava/lang/String;


# instance fields
.field private d:Lcom/huawei/agconnect/config/AGConnectServicesConfig;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/agconnect/config/a/a;->a:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/agconnect/config/a/a;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/huawei/agconnect/AGConnectApp;-><init>()V

    invoke-static {p1, p2}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->fromContext(Landroid/content/Context;Ljava/lang/String;)Lcom/huawei/agconnect/config/AGConnectServicesConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/agconnect/config/a/a;->d:Lcom/huawei/agconnect/config/AGConnectServicesConfig;

    return-void
.end method

.method public static a()Lcom/huawei/agconnect/AGConnectApp;
    .locals 1

    sget-object v0, Lcom/huawei/agconnect/config/a/a;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/huawei/agconnect/config/a/a;->a(Ljava/lang/String;)Lcom/huawei/agconnect/AGConnectApp;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/huawei/agconnect/AGConnectApp;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/agconnect/config/a/a;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/huawei/agconnect/config/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/huawei/agconnect/AGConnectApp;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/huawei/agconnect/AGConnectApp;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/huawei/agconnect/config/a/a;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/agconnect/config/a/a;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/agconnect/AGConnectApp;

    if-nez v2, :cond_0

    new-instance v3, Lcom/huawei/agconnect/config/a/a;

    invoke-direct {v3, p0, p1}, Lcom/huawei/agconnect/config/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "packageName can not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;)Lcom/huawei/agconnect/AGConnectApp;
    .locals 2

    sget-object v0, Lcom/huawei/agconnect/config/a/a;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/agconnect/config/a/a;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/huawei/agconnect/AGConnectApp;

    if-eqz p0, :cond_0

    monitor-exit v0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "you should call AGConnectApp.initialize first"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public setApiKey(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/huawei/agconnect/config/a/a;->d:Lcom/huawei/agconnect/config/AGConnectServicesConfig;

    const-string v1, "/client/api_key"

    invoke-virtual {v0, v1, p1}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/huawei/agconnect/config/a/a;->d:Lcom/huawei/agconnect/config/AGConnectServicesConfig;

    const-string v1, "/client/app_id"

    invoke-virtual {v0, v1, p1}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/huawei/agconnect/config/a/a;->d:Lcom/huawei/agconnect/config/AGConnectServicesConfig;

    const-string v1, "/client/client_id"

    invoke-virtual {v0, v1, p1}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setClientSecret(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/huawei/agconnect/config/a/a;->d:Lcom/huawei/agconnect/config/AGConnectServicesConfig;

    const-string v1, "/client/client_secret"

    invoke-virtual {v0, v1, p1}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCpId(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/huawei/agconnect/config/a/a;->d:Lcom/huawei/agconnect/config/AGConnectServicesConfig;

    const-string v1, "/client/cp_id"

    invoke-virtual {v0, v1, p1}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCustomAuthProvider(Lcom/huawei/agconnect/CustomAuthProvider;)V
    .locals 1

    invoke-static {}, Lcom/huawei/agconnect/AGConnectInstance;->getInstance()Lcom/huawei/agconnect/AGConnectInstance;

    move-result-object v0

    check-cast v0, Lcom/huawei/agconnect/core/a/a;

    invoke-virtual {v0, p1}, Lcom/huawei/agconnect/core/a/a;->a(Lcom/huawei/agconnect/CustomAuthProvider;)V

    return-void
.end method

.method public setCustomCredentialsProvider(Lcom/huawei/agconnect/CustomCredentialsProvider;)V
    .locals 1

    invoke-static {}, Lcom/huawei/agconnect/AGConnectInstance;->getInstance()Lcom/huawei/agconnect/AGConnectInstance;

    move-result-object v0

    check-cast v0, Lcom/huawei/agconnect/core/a/a;

    invoke-virtual {v0, p1}, Lcom/huawei/agconnect/core/a/a;->a(Lcom/huawei/agconnect/CustomCredentialsProvider;)V

    return-void
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/agconnect/config/a/a;->d:Lcom/huawei/agconnect/config/AGConnectServicesConfig;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "path can not be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/huawei/agconnect/config/a/a;->d:Lcom/huawei/agconnect/config/AGConnectServicesConfig;

    const-string v1, "/client/product_id"

    invoke-virtual {v0, v1, p1}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
