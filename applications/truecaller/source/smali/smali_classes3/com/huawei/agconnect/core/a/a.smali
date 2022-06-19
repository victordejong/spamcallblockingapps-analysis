.class public Lcom/huawei/agconnect/core/a/a;
.super Lcom/huawei/agconnect/AGConnectInstance;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/agconnect/core/Service;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/Object;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/huawei/agconnect/AGConnectInstance;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Lcom/huawei/agconnect/AGConnectOptions;

.field private final e:Lcom/huawei/agconnect/core/a/c;

.field private final f:Lcom/huawei/agconnect/core/a/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/agconnect/core/a/a;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/agconnect/core/a/a;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/huawei/agconnect/AGConnectOptions;)V
    .locals 2

    invoke-direct {p0}, Lcom/huawei/agconnect/AGConnectInstance;-><init>()V

    iput-object p1, p0, Lcom/huawei/agconnect/core/a/a;->d:Lcom/huawei/agconnect/AGConnectOptions;

    sget-object v0, Lcom/huawei/agconnect/core/a/a;->a:Ljava/util/List;

    new-instance v1, Lcom/huawei/agconnect/core/a/c;

    invoke-direct {v1, v0}, Lcom/huawei/agconnect/core/a/c;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/huawei/agconnect/core/a/a;->e:Lcom/huawei/agconnect/core/a/c;

    new-instance v0, Lcom/huawei/agconnect/core/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huawei/agconnect/core/a/c;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/huawei/agconnect/core/a/a;->f:Lcom/huawei/agconnect/core/a/c;

    instance-of v1, p1, Lcom/huawei/agconnect/config/a/b;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/huawei/agconnect/config/a/b;

    invoke-virtual {p1}, Lcom/huawei/agconnect/config/a/b;->a()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/huawei/agconnect/core/a/c;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static a()Lcom/huawei/agconnect/AGConnectInstance;
    .locals 1

    const-string v0, "DEFAULT_INSTANCE"

    invoke-static {v0}, Lcom/huawei/agconnect/core/a/a;->a(Ljava/lang/String;)Lcom/huawei/agconnect/AGConnectInstance;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/huawei/agconnect/AGConnectOptions;)Lcom/huawei/agconnect/AGConnectInstance;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/huawei/agconnect/core/a/a;->a(Lcom/huawei/agconnect/AGConnectOptions;Z)Lcom/huawei/agconnect/AGConnectInstance;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/huawei/agconnect/AGConnectOptions;Z)Lcom/huawei/agconnect/AGConnectInstance;
    .locals 3

    sget-object v0, Lcom/huawei/agconnect/core/a/a;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/agconnect/core/a/a;->c:Ljava/util/Map;

    invoke-interface {p0}, Lcom/huawei/agconnect/AGConnectOptions;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/agconnect/AGConnectInstance;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    new-instance v2, Lcom/huawei/agconnect/core/a/a;

    invoke-direct {v2, p0}, Lcom/huawei/agconnect/core/a/a;-><init>(Lcom/huawei/agconnect/AGConnectOptions;)V

    invoke-interface {p0}, Lcom/huawei/agconnect/AGConnectOptions;->getIdentifier()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Ljava/lang/String;)Lcom/huawei/agconnect/AGConnectInstance;
    .locals 3

    sget-object v0, Lcom/huawei/agconnect/core/a/a;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/agconnect/core/a/a;->c:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/agconnect/AGConnectInstance;

    if-nez v1, :cond_0

    const-string v2, "DEFAULT_INSTANCE"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/huawei/agconnect/core/a/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/agconnect/core/a/a;->c:Ljava/util/Map;

    const-string v2, "DEFAULT_INSTANCE"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->fromContext(Landroid/content/Context;)Lcom/huawei/agconnect/config/AGConnectServicesConfig;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/huawei/agconnect/core/a/a;->a(Landroid/content/Context;Lcom/huawei/agconnect/AGConnectOptions;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized a(Landroid/content/Context;Lcom/huawei/agconnect/AGConnectOptions;)V
    .locals 2

    const-class v0, Lcom/huawei/agconnect/core/a/a;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    invoke-static {p0}, Lcom/huawei/agconnect/config/a/a;->a(Landroid/content/Context;)Lcom/huawei/agconnect/AGConnectApp;

    sget-object v1, Lcom/huawei/agconnect/core/a/a;->a:Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Lcom/huawei/agconnect/core/a/b;

    invoke-direct {v1, p0}, Lcom/huawei/agconnect/core/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/huawei/agconnect/core/a/b;->a()Ljava/util/List;

    move-result-object p0

    sput-object p0, Lcom/huawei/agconnect/core/a/a;->a:Ljava/util/List;

    :cond_1
    invoke-static {}, Lcom/huawei/agconnect/core/a/a;->b()V

    const/4 p0, 0x1

    invoke-static {p1, p0}, Lcom/huawei/agconnect/core/a/a;->a(Lcom/huawei/agconnect/AGConnectOptions;Z)Lcom/huawei/agconnect/AGConnectInstance;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/huawei/agconnect/AGConnectOptionsBuilder;)V
    .locals 2

    const-class v0, Lcom/huawei/agconnect/core/a/a;

    monitor-enter v0

    :try_start_0
    const-string v1, "DEFAULT_INSTANCE"

    invoke-virtual {p1, p0, v1}, Lcom/huawei/agconnect/AGConnectOptionsBuilder;->build(Landroid/content/Context;Ljava/lang/String;)Lcom/huawei/agconnect/AGConnectOptions;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/huawei/agconnect/core/a/a;->a(Landroid/content/Context;Lcom/huawei/agconnect/AGConnectOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static b()V
    .locals 2

    new-instance v0, Lcom/huawei/agconnect/core/a/a$1;

    invoke-direct {v0}, Lcom/huawei/agconnect/core/a/a$1;-><init>()V

    const-string v1, "/agcgw/url"

    invoke-static {v1, v0}, Lcom/huawei/agconnect/JsonProcessingFactory;->registerProcessor(Ljava/lang/String;Lcom/huawei/agconnect/JsonProcessingFactory$JsonProcessor;)V

    new-instance v0, Lcom/huawei/agconnect/core/a/a$2;

    invoke-direct {v0}, Lcom/huawei/agconnect/core/a/a$2;-><init>()V

    const-string v1, "/agcgw/backurl"

    invoke-static {v1, v0}, Lcom/huawei/agconnect/JsonProcessingFactory;->registerProcessor(Ljava/lang/String;Lcom/huawei/agconnect/JsonProcessingFactory$JsonProcessor;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/agconnect/CustomAuthProvider;)V
    .locals 2

    const-class v0, Lcom/huawei/agconnect/core/service/auth/AuthProvider;

    new-instance v1, Lcom/huawei/agconnect/core/a/a$4;

    invoke-direct {v1, p0, p1}, Lcom/huawei/agconnect/core/a/a$4;-><init>(Lcom/huawei/agconnect/core/a/a;Lcom/huawei/agconnect/CustomAuthProvider;)V

    invoke-static {v0, v1}, Lcom/huawei/agconnect/core/Service;->builder(Ljava/lang/Class;Ljava/lang/Object;)Lcom/huawei/agconnect/core/Service$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/agconnect/core/Service$Builder;->build()Lcom/huawei/agconnect/core/Service;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/agconnect/core/a/a;->f:Lcom/huawei/agconnect/core/a/c;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/huawei/agconnect/core/a/c;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Lcom/huawei/agconnect/CustomCredentialsProvider;)V
    .locals 2

    const-class v0, Lcom/huawei/agconnect/core/service/auth/CredentialsProvider;

    new-instance v1, Lcom/huawei/agconnect/core/a/a$3;

    invoke-direct {v1, p0, p1}, Lcom/huawei/agconnect/core/a/a$3;-><init>(Lcom/huawei/agconnect/core/a/a;Lcom/huawei/agconnect/CustomCredentialsProvider;)V

    invoke-static {v0, v1}, Lcom/huawei/agconnect/core/Service;->builder(Ljava/lang/Class;Ljava/lang/Object;)Lcom/huawei/agconnect/core/Service$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/agconnect/core/Service$Builder;->build()Lcom/huawei/agconnect/core/Service;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/agconnect/core/a/a;->f:Lcom/huawei/agconnect/core/a/c;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/huawei/agconnect/core/a/c;->a(Ljava/util/List;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/huawei/agconnect/core/a/a;->d:Lcom/huawei/agconnect/AGConnectOptions;

    invoke-interface {v0}, Lcom/huawei/agconnect/AGConnectOptions;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/agconnect/core/a/a;->d:Lcom/huawei/agconnect/AGConnectOptions;

    invoke-interface {v0}, Lcom/huawei/agconnect/AGConnectOptions;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/huawei/agconnect/AGConnectOptions;
    .locals 1

    iget-object v0, p0, Lcom/huawei/agconnect/core/a/a;->d:Lcom/huawei/agconnect/AGConnectOptions;

    return-object v0
.end method

.method public getService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "-TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/agconnect/core/a/a;->f:Lcom/huawei/agconnect/core/a/c;

    invoke-virtual {v0, p0, p1}, Lcom/huawei/agconnect/core/a/c;->a(Lcom/huawei/agconnect/AGConnectInstance;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/agconnect/core/a/a;->e:Lcom/huawei/agconnect/core/a/c;

    invoke-virtual {v0, p0, p1}, Lcom/huawei/agconnect/core/a/c;->a(Lcom/huawei/agconnect/AGConnectInstance;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
