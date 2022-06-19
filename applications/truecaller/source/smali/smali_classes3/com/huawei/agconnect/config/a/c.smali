.class public Lcom/huawei/agconnect/config/a/c;
.super Lcom/huawei/agconnect/config/AGConnectServicesConfig;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private c:Lcom/huawei/agconnect/config/LazyInputStream;

.field private volatile d:Lcom/huawei/agconnect/config/a/d;

.field private final e:Ljava/lang/Object;

.field private f:Lcom/huawei/agconnect/AGCRoutePolicy;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/agconnect/config/a/c;->e:Ljava/lang/Object;

    sget-object v0, Lcom/huawei/agconnect/AGCRoutePolicy;->UNKNOWN:Lcom/huawei/agconnect/AGCRoutePolicy;

    iput-object v0, p0, Lcom/huawei/agconnect/config/a/c;->f:Lcom/huawei/agconnect/AGCRoutePolicy;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/agconnect/config/a/c;->g:Ljava/util/Map;

    iput-object p1, p0, Lcom/huawei/agconnect/config/a/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/huawei/agconnect/config/a/c;->b:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/io/InputStream;)Lcom/huawei/agconnect/config/LazyInputStream;
    .locals 1

    new-instance v0, Lcom/huawei/agconnect/config/a/c$1;

    invoke-direct {v0, p0, p1}, Lcom/huawei/agconnect/config/a/c$1;-><init>(Landroid/content/Context;Ljava/io/InputStream;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2f

    const/4 v2, 0x0

    if-lez v0, :cond_0

    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Le/d/c/a/a;->w(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/huawei/agconnect/config/a/c;->d:Lcom/huawei/agconnect/config/a/d;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/huawei/agconnect/config/a/c;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/huawei/agconnect/config/a/c;->d:Lcom/huawei/agconnect/config/a/d;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/huawei/agconnect/config/a/c;->c:Lcom/huawei/agconnect/config/LazyInputStream;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/huawei/agconnect/config/LazyInputStream;->loadInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Lcom/huawei/agconnect/config/a/f;

    invoke-direct {v2, v1}, Lcom/huawei/agconnect/config/a/f;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/huawei/agconnect/config/a/c;->d:Lcom/huawei/agconnect/config/a/d;

    iget-object v1, p0, Lcom/huawei/agconnect/config/a/c;->c:Lcom/huawei/agconnect/config/LazyInputStream;

    invoke-virtual {v1}, Lcom/huawei/agconnect/config/LazyInputStream;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/agconnect/config/a/c;->c:Lcom/huawei/agconnect/config/LazyInputStream;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/huawei/agconnect/config/a/i;

    iget-object v2, p0, Lcom/huawei/agconnect/config/a/c;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/huawei/agconnect/config/a/c;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/huawei/agconnect/config/a/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/huawei/agconnect/config/a/c;->d:Lcom/huawei/agconnect/config/a/d;

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/huawei/agconnect/config/a/c;->b()V

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_1
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/huawei/agconnect/JsonProcessingFactory;->getProcessors()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/agconnect/JsonProcessingFactory$JsonProcessor;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/huawei/agconnect/JsonProcessingFactory$JsonProcessor;->processOption(Lcom/huawei/agconnect/AGConnectOptions;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v2
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/huawei/agconnect/config/a/c;->f:Lcom/huawei/agconnect/AGCRoutePolicy;

    sget-object v1, Lcom/huawei/agconnect/AGCRoutePolicy;->UNKNOWN:Lcom/huawei/agconnect/AGCRoutePolicy;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/huawei/agconnect/config/a/c;->d:Lcom/huawei/agconnect/config/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/agconnect/config/a/c;->d:Lcom/huawei/agconnect/config/a/d;

    const-string v1, "/region"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/huawei/agconnect/config/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/agconnect/config/a/c;->d:Lcom/huawei/agconnect/config/a/d;

    const-string v3, "/agcgw/url"

    invoke-interface {v1, v3, v2}, Lcom/huawei/agconnect/config/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/agconnect/config/a/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/agconnect/AGCRoutePolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/agconnect/config/a/c;->f:Lcom/huawei/agconnect/AGCRoutePolicy;

    :cond_0
    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/huawei/agconnect/config/a/c;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/huawei/agconnect/config/a/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/huawei/agconnect/config/a/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "DEFAULT_INSTANCE"

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/huawei/agconnect/config/a/c;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/huawei/agconnect/config/a/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return p2
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/agconnect/config/a/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getRoutePolicy()Lcom/huawei/agconnect/AGCRoutePolicy;
    .locals 2

    iget-object v0, p0, Lcom/huawei/agconnect/config/a/c;->f:Lcom/huawei/agconnect/AGCRoutePolicy;

    sget-object v1, Lcom/huawei/agconnect/AGCRoutePolicy;->UNKNOWN:Lcom/huawei/agconnect/AGCRoutePolicy;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/huawei/agconnect/config/a/c;->d:Lcom/huawei/agconnect/config/a/d;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/huawei/agconnect/config/a/c;->a()V

    :cond_0
    iget-object v0, p0, Lcom/huawei/agconnect/config/a/c;->f:Lcom/huawei/agconnect/AGCRoutePolicy;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/huawei/agconnect/config/a/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "path must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/huawei/agconnect/config/a/c;->d:Lcom/huawei/agconnect/config/a/d;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/huawei/agconnect/config/a/c;->a()V

    :cond_0
    invoke-static {p1}, Lcom/huawei/agconnect/config/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/agconnect/config/a/c;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/huawei/agconnect/config/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/huawei/agconnect/config/a/c;->d:Lcom/huawei/agconnect/config/a/d;

    invoke-interface {v0, p1, p2}, Lcom/huawei/agconnect/config/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public overlayWith(Lcom/huawei/agconnect/config/LazyInputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/agconnect/config/a/c;->c:Lcom/huawei/agconnect/config/LazyInputStream;

    return-void
.end method

.method public overlayWith(Ljava/io/InputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/agconnect/config/a/c;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/huawei/agconnect/config/a/c;->a(Landroid/content/Context;Ljava/io/InputStream;)Lcom/huawei/agconnect/config/LazyInputStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/huawei/agconnect/config/a/c;->overlayWith(Lcom/huawei/agconnect/config/LazyInputStream;)V

    return-void
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/agconnect/config/a/c;->g:Ljava/util/Map;

    invoke-static {p1}, Lcom/huawei/agconnect/config/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setRoutePolicy(Lcom/huawei/agconnect/AGCRoutePolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/agconnect/config/a/c;->f:Lcom/huawei/agconnect/AGCRoutePolicy;

    return-void
.end method
