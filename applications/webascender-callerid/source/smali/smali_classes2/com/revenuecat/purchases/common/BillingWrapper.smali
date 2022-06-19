.class public final Lcom/revenuecat/purchases/common/BillingWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/k;
.implements Lcom/android/billingclient/api/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/revenuecat/purchases/common/BillingWrapper$ClientFactory;,
        Lcom/revenuecat/purchases/common/BillingWrapper$PurchasesUpdatedListener;,
        Lcom/revenuecat/purchases/common/BillingWrapper$StateListener;,
        Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;
    }
.end annotation


# instance fields
.field private volatile billingClient:Lcom/android/billingclient/api/c;

.field private final clientFactory:Lcom/revenuecat/purchases/common/BillingWrapper$ClientFactory;

.field private final mainHandler:Landroid/os/Handler;

.field private final presentedOfferingsByProductIdentifier:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final productTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/revenuecat/purchases/common/PurchaseType;",
            ">;"
        }
    .end annotation
.end field

.field private volatile purchasesUpdatedListener:Lcom/revenuecat/purchases/common/BillingWrapper$PurchasesUpdatedListener;

.field private final serviceRequests:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lkotlin/w/b/l<",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "Lkotlin/r;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile stateListener:Lcom/revenuecat/purchases/common/BillingWrapper$StateListener;


# direct methods
.method public constructor <init>(Lcom/revenuecat/purchases/common/BillingWrapper$ClientFactory;Landroid/os/Handler;)V
    .locals 1

    const-string v0, "clientFactory"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainHandler"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->clientFactory:Lcom/revenuecat/purchases/common/BillingWrapper$ClientFactory;

    iput-object p2, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->mainHandler:Landroid/os/Handler;

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->productTypes:Ljava/util/Map;

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->presentedOfferingsByProductIdentifier:Ljava/util/Map;

    .line 4
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->serviceRequests:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public static final synthetic access$getClientFactory$p(Lcom/revenuecat/purchases/common/BillingWrapper;)Lcom/revenuecat/purchases/common/BillingWrapper$ClientFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->clientFactory:Lcom/revenuecat/purchases/common/BillingWrapper$ClientFactory;

    return-object p0
.end method

.method public static final synthetic access$launchBillingFlow(Lcom/revenuecat/purchases/common/BillingWrapper;Landroid/app/Activity;Lcom/android/billingclient/api/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/revenuecat/purchases/common/BillingWrapper;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/f;)V

    return-void
.end method

.method public static final synthetic access$withConnectedClient(Lcom/revenuecat/purchases/common/BillingWrapper;Lkotlin/w/b/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/revenuecat/purchases/common/BillingWrapper;->withConnectedClient(Lkotlin/w/b/l;)V

    return-void
.end method

.method private final endConnection()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/revenuecat/purchases/common/BillingWrapper$endConnection$1;

    invoke-direct {v1, p0}, Lcom/revenuecat/purchases/common/BillingWrapper$endConnection$1;-><init>(Lcom/revenuecat/purchases/common/BillingWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final executePendingRequests()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->billingClient:Lcom/android/billingclient/api/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/billingclient/api/c;->e()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->serviceRequests:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->serviceRequests:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/w/b/l;

    iget-object v1, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/revenuecat/purchases/common/BillingWrapper$executePendingRequests$1$1$1;

    invoke-direct {v2, v0}, Lcom/revenuecat/purchases/common/BillingWrapper$executePendingRequests$1$1$1;-><init>(Lkotlin/w/b/l;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lkotlin/r;->a:Lkotlin/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized executeRequestOnUIThread(Lkotlin/w/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->purchasesUpdatedListener:Lcom/revenuecat/purchases/common/BillingWrapper$PurchasesUpdatedListener;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->serviceRequests:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->billingClient:Lcom/android/billingclient/api/c;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/billingclient/api/c;->e()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/revenuecat/purchases/common/BillingWrapper;->startConnection()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/revenuecat/purchases/common/BillingWrapper;->executePendingRequests()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final getStackTrace()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 3
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stringWriter.toString()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/f;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/revenuecat/purchases/common/BillingWrapper$launchBillingFlow$1;

    invoke-direct {v0, p1, p2}, Lcom/revenuecat/purchases/common/BillingWrapper$launchBillingFlow$1;-><init>(Landroid/app/Activity;Lcom/android/billingclient/api/f;)V

    invoke-direct {p0, v0}, Lcom/revenuecat/purchases/common/BillingWrapper;->withConnectedClient(Lkotlin/w/b/l;)V

    return-void
.end method

.method private final startConnection()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/revenuecat/purchases/common/BillingWrapper$startConnection$1;

    invoke-direct {v1, p0}, Lcom/revenuecat/purchases/common/BillingWrapper$startConnection$1;-><init>(Lcom/revenuecat/purchases/common/BillingWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final withConnectedClient(Lkotlin/w/b/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/android/billingclient/api/c;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->billingClient:Lcom/android/billingclient/api/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/billingclient/api/c;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1, v0}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Warning: billing client is null, purchase methods won\'t work. Stacktrace: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/revenuecat/purchases/common/BillingWrapper;->getStackTrace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final acknowledge(Ljava/lang/String;Lkotlin/w/b/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/w/b/p<",
            "-",
            "Lcom/android/billingclient/api/g;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onAcknowledged"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Acknowledging purchase with token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/revenuecat/purchases/common/BillingWrapper$acknowledge$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/revenuecat/purchases/common/BillingWrapper$acknowledge$1;-><init>(Lcom/revenuecat/purchases/common/BillingWrapper;Ljava/lang/String;Lkotlin/w/b/p;)V

    invoke-direct {p0, v0}, Lcom/revenuecat/purchases/common/BillingWrapper;->executeRequestOnUIThread(Lkotlin/w/b/l;)V

    return-void
.end method

.method public final consumePurchase(Ljava/lang/String;Lkotlin/w/b/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/w/b/p<",
            "-",
            "Lcom/android/billingclient/api/g;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onConsumed"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Consuming purchase with token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/revenuecat/purchases/common/BillingWrapper$consumePurchase$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/revenuecat/purchases/common/BillingWrapper$consumePurchase$1;-><init>(Lcom/revenuecat/purchases/common/BillingWrapper;Ljava/lang/String;Lkotlin/w/b/p;)V

    invoke-direct {p0, v0}, Lcom/revenuecat/purchases/common/BillingWrapper;->executeRequestOnUIThread(Lkotlin/w/b/l;)V

    return-void
.end method

.method public final findPurchaseInPurchaseHistory(Ljava/lang/String;Ljava/lang/String;Lkotlin/w/b/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/w/b/p<",
            "-",
            "Lcom/android/billingclient/api/g;",
            "-",
            "Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    const-string v0, "skuType"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sku"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/revenuecat/purchases/common/BillingWrapper$findPurchaseInPurchaseHistory$1;

    invoke-direct {v0, p2, p1, p3}, Lcom/revenuecat/purchases/common/BillingWrapper$findPurchaseInPurchaseHistory$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/w/b/p;)V

    invoke-direct {p0, v0}, Lcom/revenuecat/purchases/common/BillingWrapper;->withConnectedClient(Lkotlin/w/b/l;)V

    return-void
.end method

.method public final declared-synchronized getBillingClient()Lcom/android/billingclient/api/c;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->billingClient:Lcom/android/billingclient/api/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getPurchaseType$common_release(Ljava/lang/String;)Lcom/revenuecat/purchases/common/PurchaseType;
    .locals 7

    const-string v0, "purchaseToken"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->billingClient:Lcom/android/billingclient/api/c;

    if-eqz v0, :cond_9

    const-string v1, "subs"

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/c;->i(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$a;

    move-result-object v1

    const-string v2, "client.queryPurchases(SkuType.SUBS)"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase$a;->c()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase$a;->b()Ljava/util/List;

    move-result-object v1

    const-string v5, "it"

    if-eqz v1, :cond_3

    .line 5
    instance-of v6, v1, Ljava/util/Collection;

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/billingclient/api/Purchase;

    .line 7
    invoke-static {v6, v5}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/billingclient/api/Purchase;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 8
    sget-object p1, Lcom/revenuecat/purchases/common/PurchaseType;->SUBS:Lcom/revenuecat/purchases/common/PurchaseType;

    return-object p1

    :cond_4
    const-string v1, "inapp"

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/c;->i(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$a;

    move-result-object v0

    const-string v1, "client.queryPurchases(SkuType.INAPP)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase$a;->c()I

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 11
    :goto_3
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase$a;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 12
    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_4

    .line 13
    :cond_6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/Purchase;

    .line 14
    invoke-static {v2, v5}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v3, 0x0

    :goto_5
    if-eqz v1, :cond_9

    if-eqz v3, :cond_9

    .line 15
    sget-object p1, Lcom/revenuecat/purchases/common/PurchaseType;->INAPP:Lcom/revenuecat/purchases/common/PurchaseType;

    return-object p1

    .line 16
    :cond_9
    sget-object p1, Lcom/revenuecat/purchases/common/PurchaseType;->UNKNOWN:Lcom/revenuecat/purchases/common/PurchaseType;

    return-object p1
.end method

.method public final declared-synchronized getPurchasesUpdatedListener()Lcom/revenuecat/purchases/common/BillingWrapper$PurchasesUpdatedListener;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->purchasesUpdatedListener:Lcom/revenuecat/purchases/common/BillingWrapper$PurchasesUpdatedListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getStateListener()Lcom/revenuecat/purchases/common/BillingWrapper$StateListener;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->stateListener:Lcom/revenuecat/purchases/common/BillingWrapper$StateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->billingClient:Lcom/android/billingclient/api/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/billingclient/api/c;->e()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final makePurchaseAsync(Landroid/app/Activity;Ljava/lang/String;Lcom/android/billingclient/api/SkuDetails;Lcom/revenuecat/purchases/common/ReplaceSkuInfo;Ljava/lang/String;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appUserID"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "skuDetails"

    invoke-static {p3, p2}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Moving from old sku "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/revenuecat/purchases/common/ReplaceSkuInfo;->getOldPurchase()Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to sku "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/billingclient/api/SkuDetails;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Making purchase for sku: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/billingclient/api/SkuDetails;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 3
    :goto_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object p2, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->productTypes:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/android/billingclient/api/SkuDetails;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "skuDetails.sku"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/revenuecat/purchases/common/PurchaseType;->Companion:Lcom/revenuecat/purchases/common/PurchaseType$Companion;

    invoke-virtual {p3}, Lcom/android/billingclient/api/SkuDetails;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/revenuecat/purchases/common/PurchaseType$Companion;->fromSKUType(Ljava/lang/String;)Lcom/revenuecat/purchases/common/PurchaseType;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p2, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->presentedOfferingsByProductIdentifier:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/android/billingclient/api/SkuDetails;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "skuDetails.sku"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p2, Lkotlin/r;->a:Lkotlin/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    .line 8
    new-instance p2, Lcom/revenuecat/purchases/common/BillingWrapper$makePurchaseAsync$2;

    invoke-direct {p2, p0, p3, p4, p1}, Lcom/revenuecat/purchases/common/BillingWrapper$makePurchaseAsync$2;-><init>(Lcom/revenuecat/purchases/common/BillingWrapper;Lcom/android/billingclient/api/SkuDetails;Lcom/revenuecat/purchases/common/ReplaceSkuInfo;Landroid/app/Activity;)V

    invoke-direct {p0, p2}, Lcom/revenuecat/purchases/common/BillingWrapper;->executeRequestOnUIThread(Lkotlin/w/b/l;)V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0

    throw p1
.end method

.method public onBillingServiceDisconnected()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Billing Service disconnected for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->billingClient:Lcom/android/billingclient/api/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/g;)V
    .locals 4

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 2
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Billing Service Setup finished for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->billingClient:Lcom/android/billingclient/api/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->stateListener:Lcom/revenuecat/purchases/common/BillingWrapper$StateListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/revenuecat/purchases/common/BillingWrapper$StateListener;->onConnected()V

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/revenuecat/purchases/common/BillingWrapper;->executePendingRequests()V

    goto :goto_2

    .line 5
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Billing is not available in this device. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/revenuecat/purchases/common/UtilsKt;->toHumanReadableDescription(Lcom/android/billingclient/api/g;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->infoLog(Ljava/lang/String;)V

    .line 7
    monitor-enter p0

    .line 8
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->serviceRequests:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->serviceRequests:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/w/b/l;

    .line 10
    iget-object v2, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/revenuecat/purchases/common/BillingWrapper$onBillingSetupFinished$$inlined$synchronized$lambda$1;

    invoke-direct {v3, v1, p0, p1, v0}, Lcom/revenuecat/purchases/common/BillingWrapper$onBillingSetupFinished$$inlined$synchronized$lambda$1;-><init>(Lkotlin/w/b/l;Lcom/revenuecat/purchases/common/BillingWrapper;Lcom/android/billingclient/api/g;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 11
    :cond_2
    sget-object p1, Lkotlin/r;->a:Lkotlin/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 13
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Billing Service Setup finished with error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/revenuecat/purchases/common/UtilsKt;->toHumanReadableDescription(Lcom/android/billingclient/api/g;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/revenuecat/purchases/common/LogUtilsKt;->infoLog(Ljava/lang/String;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/g;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object v0

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {v0, p2}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Lcom/android/billingclient/api/Purchase;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BillingWrapper purchases updated. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/revenuecat/purchases/common/UtilsKt;->toHumanReadableDescription(Lcom/android/billingclient/api/Purchase;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->productTypes:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/revenuecat/purchases/common/PurchaseType;

    .line 9
    iget-object v2, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->presentedOfferingsByProductIdentifier:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->g()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 10
    sget-object v3, Lkotlin/r;->a:Lkotlin/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    new-instance v3, Lcom/revenuecat/purchases/common/PurchaseWrapper;

    if-eqz v1, :cond_1

    goto :goto_2

    .line 13
    :cond_1
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->e()Ljava/lang/String;

    move-result-object v1

    const-string v4, "purchase.purchaseToken"

    invoke-static {v1, v4}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/revenuecat/purchases/common/BillingWrapper;->getPurchaseType$common_release(Ljava/lang/String;)Lcom/revenuecat/purchases/common/PurchaseType;

    move-result-object v1

    .line 14
    :goto_2
    invoke-direct {v3, v0, v1, v2}, Lcom/revenuecat/purchases/common/PurchaseWrapper;-><init>(Lcom/android/billingclient/api/Purchase;Lcom/revenuecat/purchases/common/PurchaseType;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0

    throw p1

    .line 16
    :cond_2
    iget-object p2, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->purchasesUpdatedListener:Lcom/revenuecat/purchases/common/BillingWrapper$PurchasesUpdatedListener;

    if-eqz p2, :cond_8

    invoke-interface {p2, p1}, Lcom/revenuecat/purchases/common/BillingWrapper$PurchasesUpdatedListener;->onPurchasesUpdated(Ljava/util/List;)V

    goto/16 :goto_5

    .line 17
    :cond_3
    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result v1

    if-nez v1, :cond_4

    .line 18
    iget-object p1, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->purchasesUpdatedListener:Lcom/revenuecat/purchases/common/BillingWrapper$PurchasesUpdatedListener;

    if-eqz p1, :cond_8

    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/revenuecat/purchases/common/BillingWrapper$PurchasesUpdatedListener;->onPurchasesUpdated(Ljava/util/List;)V

    goto/16 :goto_5

    .line 19
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BillingWrapper purchases failed to update. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/revenuecat/purchases/common/UtilsKt;->toHumanReadableDescription(Lcom/android/billingclient/api/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_5

    move-object v4, v0

    goto :goto_3

    :cond_5
    move-object v4, v3

    :goto_3
    if-eqz v4, :cond_6

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Purchases:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 22
    sget-object v10, Lcom/revenuecat/purchases/common/BillingWrapper$onPurchasesUpdated$4$1;->INSTANCE:Lcom/revenuecat/purchases/common/BillingWrapper$onPurchasesUpdated$4$1;

    const/16 v11, 0x1e

    const/4 v12, 0x0

    .line 23
    invoke-static/range {v4 .. v12}, Lkotlin/s/k;->R(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/w/b/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 24
    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->purchasesUpdatedListener:Lcom/revenuecat/purchases/common/BillingWrapper$PurchasesUpdatedListener;

    if-eqz v0, :cond_8

    if-nez p2, :cond_7

    .line 27
    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x6

    goto :goto_4

    .line 28
    :cond_7
    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result v1

    .line 29
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error updating purchases. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/revenuecat/purchases/common/UtilsKt;->toHumanReadableDescription(Lcom/android/billingclient/api/g;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-interface {v0, p2, v1, p1}, Lcom/revenuecat/purchases/common/BillingWrapper$PurchasesUpdatedListener;->onPurchasesFailedToUpdate(Ljava/util/List;ILjava/lang/String;)V

    :cond_8
    :goto_5
    return-void
.end method

.method public final queryAllPurchases(Lkotlin/w/b/l;Lkotlin/w/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/w/b/l<",
            "-",
            "Ljava/util/List<",
            "Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;",
            ">;",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onReceivePurchaseHistory"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onReceivePurchaseHistoryError"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/revenuecat/purchases/common/BillingWrapper$queryAllPurchases$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/revenuecat/purchases/common/BillingWrapper$queryAllPurchases$1;-><init>(Lcom/revenuecat/purchases/common/BillingWrapper;Lkotlin/w/b/l;Lkotlin/w/b/l;)V

    const-string p1, "subs"

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Lcom/revenuecat/purchases/common/BillingWrapper;->queryPurchaseHistoryAsync(Ljava/lang/String;Lkotlin/w/b/l;Lkotlin/w/b/l;)V

    return-void
.end method

.method public final queryPurchaseHistoryAsync(Ljava/lang/String;Lkotlin/w/b/l;Lkotlin/w/b/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/w/b/l<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/PurchaseHistoryRecord;",
            ">;",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    const-string v0, "skuType"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onReceivePurchaseHistory"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onReceivePurchaseHistoryError"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Querying purchase history for type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/revenuecat/purchases/common/BillingWrapper$queryPurchaseHistoryAsync$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/revenuecat/purchases/common/BillingWrapper$queryPurchaseHistoryAsync$1;-><init>(Lcom/revenuecat/purchases/common/BillingWrapper;Ljava/lang/String;Lkotlin/w/b/l;Lkotlin/w/b/l;)V

    invoke-direct {p0, v0}, Lcom/revenuecat/purchases/common/BillingWrapper;->executeRequestOnUIThread(Lkotlin/w/b/l;)V

    return-void
.end method

.method public final queryPurchases(Ljava/lang/String;)Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;
    .locals 8

    const-string v0, "skuType"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->billingClient:Lcom/android/billingclient/api/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QueryPurchases] Querying "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/c;->i(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$a;

    move-result-object v0

    const-string v2, "billingClient.queryPurchases(skuType)"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase$a;->b()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object v2

    .line 5
    :goto_0
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase$a;->c()I

    move-result v0

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 8
    check-cast v4, Lcom/android/billingclient/api/Purchase;

    const-string v5, "purchase"

    .line 9
    invoke-static {v4, v5}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/billingclient/api/Purchase;->e()Ljava/lang/String;

    move-result-object v5

    const-string v6, "purchase.purchaseToken"

    invoke-static {v5, v6}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/revenuecat/purchases/common/UtilsKt;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[QueryPurchases] Purchase of type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " with hash "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 11
    new-instance v6, Lcom/revenuecat/purchases/common/PurchaseWrapper;

    sget-object v7, Lcom/revenuecat/purchases/common/PurchaseType;->Companion:Lcom/revenuecat/purchases/common/PurchaseType$Companion;

    invoke-virtual {v7, p1}, Lcom/revenuecat/purchases/common/PurchaseType$Companion;->fromSKUType(Ljava/lang/String;)Lcom/revenuecat/purchases/common/PurchaseType;

    move-result-object v7

    invoke-direct {v6, v4, v7, v1}, Lcom/revenuecat/purchases/common/PurchaseWrapper;-><init>(Lcom/android/billingclient/api/Purchase;Lcom/revenuecat/purchases/common/PurchaseType;Ljava/lang/String;)V

    invoke-static {v5, v6}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_1
    invoke-static {v3}, Lkotlin/s/b0;->p(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1

    .line 13
    new-instance v1, Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;

    invoke-direct {v1, v0, p1}, Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;-><init>(ILjava/util/Map;)V

    :cond_2
    return-object v1
.end method

.method public final querySkuDetailsAsync(Ljava/lang/String;Ljava/util/List;Lkotlin/w/b/l;Lkotlin/w/b/l;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/w/b/l<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    const-string v0, "itemType"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "skuList"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onReceiveSkuDetails"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting products with identifiers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3f

    const/4 v10, 0x0

    move-object v2, p2

    invoke-static/range {v2 .. v10}, Lkotlin/s/k;->R(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/w/b/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/revenuecat/purchases/common/BillingWrapper$querySkuDetailsAsync$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/revenuecat/purchases/common/BillingWrapper$querySkuDetailsAsync$1;-><init>(Lcom/revenuecat/purchases/common/BillingWrapper;Ljava/lang/String;Ljava/util/List;Lkotlin/w/b/l;Lkotlin/w/b/l;)V

    invoke-direct {p0, v0}, Lcom/revenuecat/purchases/common/BillingWrapper;->executeRequestOnUIThread(Lkotlin/w/b/l;)V

    return-void
.end method

.method public final declared-synchronized setBillingClient(Lcom/android/billingclient/api/c;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->billingClient:Lcom/android/billingclient/api/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setPurchasesUpdatedListener(Lcom/revenuecat/purchases/common/BillingWrapper$PurchasesUpdatedListener;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->purchasesUpdatedListener:Lcom/revenuecat/purchases/common/BillingWrapper$PurchasesUpdatedListener;

    .line 3
    sget-object v0, Lkotlin/r;->a:Lkotlin/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    if-eqz p1, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/revenuecat/purchases/common/BillingWrapper;->startConnection()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/revenuecat/purchases/common/BillingWrapper;->endConnection()V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setStateListener(Lcom/revenuecat/purchases/common/BillingWrapper$StateListener;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/revenuecat/purchases/common/BillingWrapper;->stateListener:Lcom/revenuecat/purchases/common/BillingWrapper$StateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
