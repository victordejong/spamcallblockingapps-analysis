.class public final Lcom/revenuecat/purchases/common/Backend;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final apiKey:Ljava/lang/String;

.field private final authenticationHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile callbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lkotlin/l<",
            "Lkotlin/w/b/l<",
            "Lcom/revenuecat/purchases/PurchaserInfo;",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/l<",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "Lkotlin/r;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field private final dispatcher:Lcom/revenuecat/purchases/common/Dispatcher;

.field private final httpClient:Lcom/revenuecat/purchases/common/HTTPClient;

.field private volatile offeringsCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lkotlin/l<",
            "Lkotlin/w/b/l<",
            "Lorg/json/JSONObject;",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/l<",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "Lkotlin/r;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field private volatile postReceiptCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lkotlin/l<",
            "Lkotlin/w/b/p<",
            "Lcom/revenuecat/purchases/PurchaserInfo;",
            "Lorg/json/JSONObject;",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/q<",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "Ljava/lang/Boolean;",
            "Lorg/json/JSONObject;",
            "Lkotlin/r;",
            ">;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/revenuecat/purchases/common/Dispatcher;Lcom/revenuecat/purchases/common/HTTPClient;)V
    .locals 1

    const-string v0, "apiKey"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClient"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/revenuecat/purchases/common/Backend;->apiKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/revenuecat/purchases/common/Backend;->dispatcher:Lcom/revenuecat/purchases/common/Dispatcher;

    iput-object p3, p0, Lcom/revenuecat/purchases/common/Backend;->httpClient:Lcom/revenuecat/purchases/common/HTTPClient;

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bearer "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Authorization"

    invoke-static {p2, p1}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object p1

    invoke-static {p1}, Lkotlin/s/b0;->c(Lkotlin/l;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/revenuecat/purchases/common/Backend;->authenticationHeaders:Ljava/util/Map;

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/revenuecat/purchases/common/Backend;->callbacks:Ljava/util/Map;

    .line 4
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/revenuecat/purchases/common/Backend;->postReceiptCallbacks:Ljava/util/Map;

    .line 5
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/revenuecat/purchases/common/Backend;->offeringsCallbacks:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$encode(Lcom/revenuecat/purchases/common/Backend;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/revenuecat/purchases/common/Backend;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getHttpClient$p(Lcom/revenuecat/purchases/common/Backend;)Lcom/revenuecat/purchases/common/HTTPClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/revenuecat/purchases/common/Backend;->httpClient:Lcom/revenuecat/purchases/common/HTTPClient;

    return-object p0
.end method

.method public static final synthetic access$isSuccessful(Lcom/revenuecat/purchases/common/Backend;Lcom/revenuecat/purchases/common/HTTPClient$Result;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/revenuecat/purchases/common/Backend;->isSuccessful(Lcom/revenuecat/purchases/common/HTTPClient$Result;)Z

    move-result p0

    return p0
.end method

.method private final addCallback(Ljava/util/Map;Lcom/revenuecat/purchases/common/Dispatcher$AsyncCall;Ljava/lang/Object;Lkotlin/l;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/List<",
            "Lkotlin/l<",
            "TS;TE;>;>;>;",
            "Lcom/revenuecat/purchases/common/Dispatcher$AsyncCall;",
            "TK;",
            "Lkotlin/l<",
            "+TS;+TE;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/l;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    .line 2
    invoke-static {v0}, Lkotlin/s/k;->l([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0, p2, p5}, Lcom/revenuecat/purchases/common/Backend;->enqueue(Lcom/revenuecat/purchases/common/Dispatcher$AsyncCall;Z)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/w/c/k;->d(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method static synthetic addCallback$default(Lcom/revenuecat/purchases/common/Backend;Ljava/util/Map;Lcom/revenuecat/purchases/common/Dispatcher$AsyncCall;Ljava/lang/Object;Lkotlin/l;ZILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/revenuecat/purchases/common/Backend;->addCallback(Ljava/util/Map;Lcom/revenuecat/purchases/common/Dispatcher$AsyncCall;Ljava/lang/Object;Lkotlin/l;Z)V

    return-void
.end method

.method private final encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Uri.encode(string)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final enqueue(Lcom/revenuecat/purchases/common/Dispatcher$AsyncCall;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/Backend;->dispatcher:Lcom/revenuecat/purchases/common/Dispatcher;

    invoke-virtual {v0}, Lcom/revenuecat/purchases/common/Dispatcher;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/common/Backend;->dispatcher:Lcom/revenuecat/purchases/common/Dispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/revenuecat/purchases/common/Dispatcher;->enqueue(Ljava/lang/Runnable;Z)V

    :cond_0
    return-void
.end method

.method static synthetic enqueue$default(Lcom/revenuecat/purchases/common/Backend;Lcom/revenuecat/purchases/common/Dispatcher$AsyncCall;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/revenuecat/purchases/common/Backend;->enqueue(Lcom/revenuecat/purchases/common/Dispatcher$AsyncCall;Z)V

    return-void
.end method

.method private final isSuccessful(Lcom/revenuecat/purchases/common/HTTPClient$Result;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/revenuecat/purchases/common/HTTPClient$Result;->getResponseCode()I

    move-result p1

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/Backend;->dispatcher:Lcom/revenuecat/purchases/common/Dispatcher;

    invoke-virtual {v0}, Lcom/revenuecat/purchases/common/Dispatcher;->close()V

    return-void
.end method

.method public final createAlias(Ljava/lang/String;Ljava/lang/String;Lkotlin/w/b/a;Lkotlin/w/b/l;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/w/b/a<",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    const-string v0, "appUserID"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newAppUserID"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSuccessHandler"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onErrorHandler"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/revenuecat/purchases/common/Backend$createAlias$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/revenuecat/purchases/common/Backend$createAlias$1;-><init>(Lcom/revenuecat/purchases/common/Backend;Ljava/lang/String;Ljava/lang/String;Lkotlin/w/b/l;Lkotlin/w/b/a;)V

    const/4 p1, 0x0

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/revenuecat/purchases/common/Backend;->enqueue$default(Lcom/revenuecat/purchases/common/Backend;Lcom/revenuecat/purchases/common/Dispatcher$AsyncCall;ZILjava/lang/Object;)V

    return-void
.end method

.method public final getAuthenticationHeaders$common_release()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/Backend;->authenticationHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public final declared-synchronized getCallbacks()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lkotlin/l<",
            "Lkotlin/w/b/l<",
            "Lcom/revenuecat/purchases/PurchaserInfo;",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/l<",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "Lkotlin/r;",
            ">;>;>;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/revenuecat/purchases/common/Backend;->callbacks:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getOfferings(Ljava/lang/String;ZLkotlin/w/b/l;Lkotlin/w/b/l;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/w/b/l<",
            "-",
            "Lorg/json/JSONObject;",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    const-string v0, "appUserID"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSuccess"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/subscribers/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/revenuecat/purchases/common/Backend;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/offerings"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2
    new-instance v3, Lcom/revenuecat/purchases/common/Backend$getOfferings$call$1;

    invoke-direct {v3, p0, v4}, Lcom/revenuecat/purchases/common/Backend$getOfferings$call$1;-><init>(Lcom/revenuecat/purchases/common/Backend;Ljava/lang/String;)V

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/revenuecat/purchases/common/Backend;->offeringsCallbacks:Ljava/util/Map;

    invoke-static {p3, p4}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v5

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/revenuecat/purchases/common/Backend;->addCallback(Ljava/util/Map;Lcom/revenuecat/purchases/common/Dispatcher$AsyncCall;Ljava/lang/Object;Lkotlin/l;Z)V

    .line 5
    sget-object p1, Lkotlin/r;->a:Lkotlin/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getOfferingsCallbacks()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lkotlin/l<",
            "Lkotlin/w/b/l<",
            "Lorg/json/JSONObject;",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/l<",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "Lkotlin/r;",
            ">;>;>;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/revenuecat/purchases/common/Backend;->offeringsCallbacks:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getPostReceiptCallbacks()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lkotlin/l<",
            "Lkotlin/w/b/p<",
            "Lcom/revenuecat/purchases/PurchaserInfo;",
            "Lorg/json/JSONObject;",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/q<",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "Ljava/lang/Boolean;",
            "Lorg/json/JSONObject;",
            "Lkotlin/r;",
            ">;>;>;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/revenuecat/purchases/common/Backend;->postReceiptCallbacks:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getPurchaserInfo(Ljava/lang/String;ZLkotlin/w/b/l;Lkotlin/w/b/l;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/revenuecat/purchases/PurchaserInfo;",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    const-string v0, "appUserID"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSuccess"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/subscribers/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/revenuecat/purchases/common/Backend;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lkotlin/s/k;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 3
    new-instance v3, Lcom/revenuecat/purchases/common/Backend$getPurchaserInfo$call$1;

    invoke-direct {v3, p0, p1, v4}, Lcom/revenuecat/purchases/common/Backend$getPurchaserInfo$call$1;-><init>(Lcom/revenuecat/purchases/common/Backend;Ljava/lang/String;Ljava/util/List;)V

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/revenuecat/purchases/common/Backend;->callbacks:Ljava/util/Map;

    invoke-static {p3, p4}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v5

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/revenuecat/purchases/common/Backend;->addCallback(Ljava/util/Map;Lcom/revenuecat/purchases/common/Dispatcher$AsyncCall;Ljava/lang/Object;Lkotlin/l;Z)V

    .line 6
    sget-object p1, Lkotlin/r;->a:Lkotlin/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final performRequest(Ljava/lang/String;Ljava/util/Map;Lkotlin/w/b/l;Lkotlin/w/b/a;Lkotlin/w/b/q;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/a<",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/q<",
            "-",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lorg/json/JSONObject;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCompletedSuccessfully"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCompletedWithErrors"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/revenuecat/purchases/common/Backend$performRequest$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/revenuecat/purchases/common/Backend$performRequest$1;-><init>(Lcom/revenuecat/purchases/common/Backend;Ljava/lang/String;Ljava/util/Map;Lkotlin/w/b/l;Lkotlin/w/b/a;Lkotlin/w/b/q;)V

    const/4 p1, 0x0

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/revenuecat/purchases/common/Backend;->enqueue$default(Lcom/revenuecat/purchases/common/Backend;Lcom/revenuecat/purchases/common/Dispatcher$AsyncCall;ZILjava/lang/Object;)V

    return-void
.end method

.method public final postAttributionData(Ljava/lang/String;Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;Lorg/json/JSONObject;Lkotlin/w/b/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;",
            "Lorg/json/JSONObject;",
            "Lkotlin/w/b/a<",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    const-string v0, "appUserID"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-static {p3, v1}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "onSuccessHandler"

    invoke-static {p4, v2}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x2

    new-array v3, v2, [Lkotlin/l;

    .line 2
    invoke-virtual {p2}, Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;->getServerValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0, p2}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, v3, v0

    const/4 p2, 0x1

    .line 3
    invoke-static {v1, p3}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object p3

    aput-object p3, v3, p2

    .line 4
    invoke-static {v3}, Lkotlin/s/b0;->h([Lkotlin/l;)Ljava/util/Map;

    move-result-object p2

    .line 5
    new-instance p3, Lcom/revenuecat/purchases/common/Backend$postAttributionData$1;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/revenuecat/purchases/common/Backend$postAttributionData$1;-><init>(Lcom/revenuecat/purchases/common/Backend;Ljava/lang/String;Ljava/util/Map;Lkotlin/w/b/a;)V

    const/4 p1, 0x0

    invoke-static {p0, p3, v0, v2, p1}, Lcom/revenuecat/purchases/common/Backend;->enqueue$default(Lcom/revenuecat/purchases/common/Backend;Lcom/revenuecat/purchases/common/Dispatcher$AsyncCall;ZILjava/lang/Object;)V

    return-void
.end method

.method public final postReceiptData(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;Lcom/revenuecat/purchases/common/ProductInfo;Lkotlin/w/b/p;Lkotlin/w/b/q;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/revenuecat/purchases/common/ProductInfo;",
            "Lkotlin/w/b/p<",
            "-",
            "Lcom/revenuecat/purchases/PurchaserInfo;",
            "-",
            "Lorg/json/JSONObject;",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/q<",
            "-",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Lorg/json/JSONObject;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "purchaseToken"

    invoke-static {v0, v3}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "appUserID"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "subscriberAttributes"

    move-object/from16 v4, p5

    invoke-static {v4, v3}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "productInfo"

    move-object/from16 v5, p6

    invoke-static {v5, v3}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "onSuccess"

    move-object/from16 v6, p7

    invoke-static {v6, v3}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "onError"

    move-object/from16 v7, p8

    invoke-static {v7, v3}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x6

    new-array v8, v3, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v10, 0x1

    aput-object v2, v8, v10

    .line 1
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v8, v12

    .line 2
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x3

    aput-object v11, v8, v13

    .line 3
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x4

    aput-object v11, v8, v14

    .line 4
    invoke-virtual/range {p6 .. p6}, Lcom/revenuecat/purchases/common/ProductInfo;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x5

    aput-object v11, v8, v15

    .line 5
    invoke-static {v8}, Lkotlin/s/k;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/16 v11, 0xc

    new-array v11, v11, [Lkotlin/l;

    const-string v3, "fetch_token"

    .line 6
    invoke-static {v3, v0}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v0

    aput-object v0, v11, v9

    const-string v0, "product_id"

    .line 7
    invoke-virtual/range {p6 .. p6}, Lcom/revenuecat/purchases/common/ProductInfo;->getProductID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v0

    aput-object v0, v11, v10

    const-string v0, "app_user_id"

    .line 8
    invoke-static {v0, v2}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v0

    aput-object v0, v11, v12

    const-string v0, "is_restore"

    .line 9
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v0

    aput-object v0, v11, v13

    const-string v0, "presented_offering_identifier"

    .line 10
    invoke-virtual/range {p6 .. p6}, Lcom/revenuecat/purchases/common/ProductInfo;->getOfferingIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v0

    aput-object v0, v11, v14

    const-string v0, "observer_mode"

    .line 11
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v0

    aput-object v0, v11, v15

    const-string v0, "price"

    .line 12
    invoke-virtual/range {p6 .. p6}, Lcom/revenuecat/purchases/common/ProductInfo;->getPrice()Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v0

    const/4 v2, 0x6

    aput-object v0, v11, v2

    const-string v0, "currency"

    .line 13
    invoke-virtual/range {p6 .. p6}, Lcom/revenuecat/purchases/common/ProductInfo;->getCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v0

    const/4 v2, 0x7

    aput-object v0, v11, v2

    const-string v0, "attributes"

    .line 14
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v0

    const/16 v2, 0x8

    aput-object v0, v11, v2

    const/16 v0, 0x9

    const-string v2, "normal_duration"

    .line 15
    invoke-virtual/range {p6 .. p6}, Lcom/revenuecat/purchases/common/ProductInfo;->getDuration()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v2

    aput-object v2, v11, v0

    const/16 v0, 0xa

    const-string v2, "intro_duration"

    .line 16
    invoke-virtual/range {p6 .. p6}, Lcom/revenuecat/purchases/common/ProductInfo;->getIntroDuration()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v2

    aput-object v2, v11, v0

    const/16 v0, 0xb

    const-string v2, "trial_duration"

    .line 17
    invoke-virtual/range {p6 .. p6}, Lcom/revenuecat/purchases/common/ProductInfo;->getTrialDuration()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v2

    aput-object v2, v11, v0

    .line 18
    invoke-static {v11}, Lkotlin/s/b0;->h([Lkotlin/l;)Ljava/util/Map;

    move-result-object v0

    .line 19
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 20
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 21
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_1

    .line 22
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 23
    :cond_3
    new-instance v0, Lcom/revenuecat/purchases/common/Backend$postReceiptData$call$1;

    invoke-direct {v0, v1, v2, v8}, Lcom/revenuecat/purchases/common/Backend$postReceiptData$call$1;-><init>(Lcom/revenuecat/purchases/common/Backend;Ljava/util/Map;Ljava/util/List;)V

    .line 24
    monitor-enter p0

    .line 25
    :try_start_0
    iget-object v2, v1, Lcom/revenuecat/purchases/common/Backend;->postReceiptCallbacks:Ljava/util/Map;

    invoke-static/range {p7 .. p8}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object/from16 p1, p0

    move-object/from16 p2, v2

    move-object/from16 p3, v0

    move-object/from16 p4, v8

    move-object/from16 p5, v3

    move/from16 p6, v4

    move/from16 p7, v5

    move-object/from16 p8, v6

    invoke-static/range {p1 .. p8}, Lcom/revenuecat/purchases/common/Backend;->addCallback$default(Lcom/revenuecat/purchases/common/Backend;Ljava/util/Map;Lcom/revenuecat/purchases/common/Dispatcher$AsyncCall;Ljava/lang/Object;Lkotlin/l;ZILjava/lang/Object;)V

    .line 26
    sget-object v0, Lkotlin/r;->a:Lkotlin/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setCallbacks(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lkotlin/l<",
            "Lkotlin/w/b/l<",
            "Lcom/revenuecat/purchases/PurchaserInfo;",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/l<",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "Lkotlin/r;",
            ">;>;>;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/revenuecat/purchases/common/Backend;->callbacks:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setOfferingsCallbacks(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lkotlin/l<",
            "Lkotlin/w/b/l<",
            "Lorg/json/JSONObject;",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/l<",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "Lkotlin/r;",
            ">;>;>;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/revenuecat/purchases/common/Backend;->offeringsCallbacks:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setPostReceiptCallbacks(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lkotlin/l<",
            "Lkotlin/w/b/p<",
            "Lcom/revenuecat/purchases/PurchaserInfo;",
            "Lorg/json/JSONObject;",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/q<",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "Ljava/lang/Boolean;",
            "Lorg/json/JSONObject;",
            "Lkotlin/r;",
            ">;>;>;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/revenuecat/purchases/common/Backend;->postReceiptCallbacks:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
