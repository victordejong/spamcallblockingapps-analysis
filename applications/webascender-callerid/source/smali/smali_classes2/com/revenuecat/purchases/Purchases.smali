.class public final Lcom/revenuecat/purchases/Purchases;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/revenuecat/purchases/LifecycleDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/revenuecat/purchases/Purchases$AttributionNetwork;,
        Lcom/revenuecat/purchases/Purchases$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/revenuecat/purchases/Purchases$Companion;

.field private static synthetic backingFieldSharedInstance:Lcom/revenuecat/purchases/Purchases;

.field private static final frameworkVersion:Ljava/lang/String;

.field private static platformInfo:Lcom/revenuecat/purchases/common/PlatformInfo;

.field private static synthetic postponedAttributionData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/revenuecat/purchases/common/attribution/AttributionData;",
            ">;"
        }
    .end annotation
.end field

.field private static proxyURL:Ljava/net/URL;


# instance fields
.field private synthetic appConfig:Lcom/revenuecat/purchases/common/AppConfig;

.field private final application:Landroid/app/Application;

.field private final backend:Lcom/revenuecat/purchases/common/Backend;

.field private final billingWrapper:Lcom/revenuecat/purchases/common/BillingWrapper;

.field private final deviceCache:Lcom/revenuecat/purchases/common/caching/DeviceCache;

.field private final dispatcher:Lcom/revenuecat/purchases/common/Dispatcher;

.field private final handler:Landroid/os/Handler;

.field private final identityManager:Lcom/revenuecat/purchases/identity/IdentityManager;

.field private final lifecycleHandler$delegate:Lkotlin/g;

.field private volatile synthetic state:Lcom/revenuecat/purchases/PurchasesState;

.field private final subscriberAttributesManager:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/revenuecat/purchases/Purchases$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/revenuecat/purchases/Purchases$Companion;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lcom/revenuecat/purchases/Purchases;->Companion:Lcom/revenuecat/purchases/Purchases$Companion;

    .line 1
    new-instance v0, Lcom/revenuecat/purchases/common/PlatformInfo;

    const-string v2, "native"

    invoke-direct {v0, v2, v1}, Lcom/revenuecat/purchases/common/PlatformInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/revenuecat/purchases/Purchases;->platformInfo:Lcom/revenuecat/purchases/common/PlatformInfo;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/revenuecat/purchases/Purchases;->postponedAttributionData:Ljava/util/List;

    const-string v0, "4.0.1"

    .line 3
    sput-object v0, Lcom/revenuecat/purchases/Purchases;->frameworkVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Ljava/lang/String;Lcom/revenuecat/purchases/common/Backend;Lcom/revenuecat/purchases/common/BillingWrapper;Lcom/revenuecat/purchases/common/caching/DeviceCache;Lcom/revenuecat/purchases/common/Dispatcher;Lcom/revenuecat/purchases/identity/IdentityManager;Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;Lcom/revenuecat/purchases/common/AppConfig;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    const-string v10, "application"

    invoke-static {v1, v10}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "backend"

    invoke-static {v3, v10}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "billingWrapper"

    invoke-static {v4, v10}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "deviceCache"

    invoke-static {v5, v10}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "dispatcher"

    invoke-static {v6, v10}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "identityManager"

    invoke-static {v7, v10}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "subscriberAttributesManager"

    invoke-static {v8, v10}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "appConfig"

    invoke-static {v9, v10}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/revenuecat/purchases/Purchases;->application:Landroid/app/Application;

    iput-object v3, v0, Lcom/revenuecat/purchases/Purchases;->backend:Lcom/revenuecat/purchases/common/Backend;

    iput-object v4, v0, Lcom/revenuecat/purchases/Purchases;->billingWrapper:Lcom/revenuecat/purchases/common/BillingWrapper;

    iput-object v5, v0, Lcom/revenuecat/purchases/Purchases;->deviceCache:Lcom/revenuecat/purchases/common/caching/DeviceCache;

    iput-object v6, v0, Lcom/revenuecat/purchases/Purchases;->dispatcher:Lcom/revenuecat/purchases/common/Dispatcher;

    iput-object v7, v0, Lcom/revenuecat/purchases/Purchases;->identityManager:Lcom/revenuecat/purchases/identity/IdentityManager;

    iput-object v8, v0, Lcom/revenuecat/purchases/Purchases;->subscriberAttributesManager:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;

    iput-object v9, v0, Lcom/revenuecat/purchases/Purchases;->appConfig:Lcom/revenuecat/purchases/common/AppConfig;

    .line 2
    new-instance v1, Lcom/revenuecat/purchases/PurchasesState;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x7f

    const/16 v20, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v20}, Lcom/revenuecat/purchases/PurchasesState;-><init>(Ljava/lang/Boolean;Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;Ljava/util/Map;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;Lcom/revenuecat/purchases/PurchaserInfo;ZZILkotlin/w/c/g;)V

    iput-object v1, v0, Lcom/revenuecat/purchases/Purchases;->state:Lcom/revenuecat/purchases/PurchasesState;

    .line 3
    new-instance v1, Lcom/revenuecat/purchases/Purchases$lifecycleHandler$2;

    invoke-direct {v1, v0}, Lcom/revenuecat/purchases/Purchases$lifecycleHandler$2;-><init>(Lcom/revenuecat/purchases/Purchases;)V

    invoke-static {v1}, Lkotlin/h;->a(Lkotlin/w/b/a;)Lkotlin/g;

    move-result-object v1

    iput-object v1, v0, Lcom/revenuecat/purchases/Purchases;->lifecycleHandler$delegate:Lkotlin/g;

    const-string v1, "Debug logging enabled."

    .line 4
    invoke-static {v1}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDK Version - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/revenuecat/purchases/Purchases;->frameworkVersion:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initial App User ID - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v7, v2}, Lcom/revenuecat/purchases/identity/IdentityManager;->configure(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Landroidx/lifecycle/w;->h()Landroidx/lifecycle/n;

    move-result-object v1

    const-string v2, "ProcessLifecycleOwner.get()"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Landroidx/lifecycle/n;->getLifecycle()Landroidx/lifecycle/h;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lcom/revenuecat/purchases/Purchases;->getLifecycleHandler()Lcom/revenuecat/purchases/AppLifecycleHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/h;->a(Landroidx/lifecycle/m;)V

    .line 9
    new-instance v1, Lcom/revenuecat/purchases/Purchases$1;

    invoke-direct {v1, v0}, Lcom/revenuecat/purchases/Purchases$1;-><init>(Lcom/revenuecat/purchases/Purchases;)V

    invoke-virtual {v4, v1}, Lcom/revenuecat/purchases/common/BillingWrapper;->setStateListener(Lcom/revenuecat/purchases/common/BillingWrapper$StateListener;)V

    .line 10
    invoke-direct/range {p0 .. p0}, Lcom/revenuecat/purchases/Purchases;->getPurchasesUpdatedListener()Lcom/revenuecat/purchases/common/BillingWrapper$PurchasesUpdatedListener;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/revenuecat/purchases/common/BillingWrapper;->setPurchasesUpdatedListener(Lcom/revenuecat/purchases/common/BillingWrapper$PurchasesUpdatedListener;)V

    .line 11
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/revenuecat/purchases/Purchases;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic access$cachePurchaserInfo(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/PurchaserInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/revenuecat/purchases/Purchases;->cachePurchaserInfo(Lcom/revenuecat/purchases/PurchaserInfo;)V

    return-void
.end method

.method public static final synthetic access$consumeAndSave(Lcom/revenuecat/purchases/Purchases;ZLcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/revenuecat/purchases/Purchases;->consumeAndSave(ZLcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;)V

    return-void
.end method

.method public static final synthetic access$consumeAndSave(Lcom/revenuecat/purchases/Purchases;ZLcom/revenuecat/purchases/common/PurchaseWrapper;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/revenuecat/purchases/Purchases;->consumeAndSave(ZLcom/revenuecat/purchases/common/PurchaseWrapper;)V

    return-void
.end method

.method public static final synthetic access$dispatch(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/interfaces/PurchaseErrorListener;Lcom/revenuecat/purchases/PurchasesError;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/revenuecat/purchases/Purchases;->dispatch(Lcom/revenuecat/purchases/interfaces/PurchaseErrorListener;Lcom/revenuecat/purchases/PurchasesError;)V

    return-void
.end method

.method public static final synthetic access$dispatch(Lcom/revenuecat/purchases/Purchases;Lkotlin/w/b/a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/revenuecat/purchases/Purchases;->dispatch(Lkotlin/w/b/a;)V

    return-void
.end method

.method public static final synthetic access$generateAttributionDataCacheValue(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/revenuecat/purchases/Purchases;->generateAttributionDataCacheValue(Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAndClearProductChangeCallback(Lcom/revenuecat/purchases/Purchases;)Lcom/revenuecat/purchases/interfaces/ProductChangeListener;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/revenuecat/purchases/Purchases;->getAndClearProductChangeCallback()Lcom/revenuecat/purchases/interfaces/ProductChangeListener;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBackend$p(Lcom/revenuecat/purchases/Purchases;)Lcom/revenuecat/purchases/common/Backend;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/revenuecat/purchases/Purchases;->backend:Lcom/revenuecat/purchases/common/Backend;

    return-object p0
.end method

.method public static final synthetic access$getBackingFieldSharedInstance$cp()Lcom/revenuecat/purchases/Purchases;
    .locals 1

    .line 1
    sget-object v0, Lcom/revenuecat/purchases/Purchases;->backingFieldSharedInstance:Lcom/revenuecat/purchases/Purchases;

    return-object v0
.end method

.method public static final synthetic access$getBillingWrapper$p(Lcom/revenuecat/purchases/Purchases;)Lcom/revenuecat/purchases/common/BillingWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/revenuecat/purchases/Purchases;->billingWrapper:Lcom/revenuecat/purchases/common/BillingWrapper;

    return-object p0
.end method

.method public static final synthetic access$getDeviceCache$p(Lcom/revenuecat/purchases/Purchases;)Lcom/revenuecat/purchases/common/caching/DeviceCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/revenuecat/purchases/Purchases;->deviceCache:Lcom/revenuecat/purchases/common/caching/DeviceCache;

    return-object p0
.end method

.method public static final synthetic access$getFrameworkVersion$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/revenuecat/purchases/Purchases;->frameworkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getIdentityManager$p(Lcom/revenuecat/purchases/Purchases;)Lcom/revenuecat/purchases/identity/IdentityManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/revenuecat/purchases/Purchases;->identityManager:Lcom/revenuecat/purchases/identity/IdentityManager;

    return-object p0
.end method

.method public static final synthetic access$getPlatformInfo$cp()Lcom/revenuecat/purchases/common/PlatformInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/revenuecat/purchases/Purchases;->platformInfo:Lcom/revenuecat/purchases/common/PlatformInfo;

    return-object v0
.end method

.method public static final synthetic access$getPostponedAttributionData$cp()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/revenuecat/purchases/Purchases;->postponedAttributionData:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getProductChangeCompletedCallbacks(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;)Lkotlin/l;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/revenuecat/purchases/Purchases;->getProductChangeCompletedCallbacks(Lcom/revenuecat/purchases/interfaces/ProductChangeListener;)Lkotlin/l;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getProxyURL$cp()Ljava/net/URL;
    .locals 1

    .line 1
    sget-object v0, Lcom/revenuecat/purchases/Purchases;->proxyURL:Ljava/net/URL;

    return-object v0
.end method

.method public static final synthetic access$getPurchaseCallback(Lcom/revenuecat/purchases/Purchases;Ljava/lang/String;)Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/revenuecat/purchases/Purchases;->getPurchaseCallback(Ljava/lang/String;)Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPurchaseCompletedCallbacks(Lcom/revenuecat/purchases/Purchases;)Lkotlin/l;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/revenuecat/purchases/Purchases;->getPurchaseCompletedCallbacks()Lkotlin/l;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSkuDetails(Lcom/revenuecat/purchases/Purchases;Ljava/util/List;Lkotlin/w/b/l;Lkotlin/w/b/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/revenuecat/purchases/Purchases;->getSkuDetails(Ljava/util/List;Lkotlin/w/b/l;Lkotlin/w/b/l;)V

    return-void
.end method

.method public static final synthetic access$getSubscriberAttributesManager$p(Lcom/revenuecat/purchases/Purchases;)Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/revenuecat/purchases/Purchases;->subscriberAttributesManager:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;

    return-object p0
.end method

.method public static final synthetic access$handleErrorFetchingOfferings(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/PurchasesError;Lcom/revenuecat/purchases/interfaces/ReceiveOfferingsListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/revenuecat/purchases/Purchases;->handleErrorFetchingOfferings(Lcom/revenuecat/purchases/PurchasesError;Lcom/revenuecat/purchases/interfaces/ReceiveOfferingsListener;)V

    return-void
.end method

.method public static final synthetic access$logMissingProducts(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/Offerings;Ljava/util/HashMap;)Lkotlin/r;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/revenuecat/purchases/Purchases;->logMissingProducts(Lcom/revenuecat/purchases/Offerings;Ljava/util/HashMap;)Lkotlin/r;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$postPurchases(Lcom/revenuecat/purchases/Purchases;Ljava/util/List;ZZLjava/lang/String;Lkotlin/w/b/p;Lkotlin/w/b/p;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/revenuecat/purchases/Purchases;->postPurchases(Ljava/util/List;ZZLjava/lang/String;Lkotlin/w/b/p;Lkotlin/w/b/p;)V

    return-void
.end method

.method public static final synthetic access$sendUpdatedPurchaserInfoToDelegateIfChanged(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/PurchaserInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/revenuecat/purchases/Purchases;->sendUpdatedPurchaserInfoToDelegateIfChanged(Lcom/revenuecat/purchases/PurchaserInfo;)V

    return-void
.end method

.method public static final synthetic access$setBackingFieldSharedInstance$cp(Lcom/revenuecat/purchases/Purchases;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/revenuecat/purchases/Purchases;->backingFieldSharedInstance:Lcom/revenuecat/purchases/Purchases;

    return-void
.end method

.method public static final synthetic access$setPlatformInfo$cp(Lcom/revenuecat/purchases/common/PlatformInfo;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/revenuecat/purchases/Purchases;->platformInfo:Lcom/revenuecat/purchases/common/PlatformInfo;

    return-void
.end method

.method public static final synthetic access$setPostponedAttributionData$cp(Ljava/util/List;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/revenuecat/purchases/Purchases;->postponedAttributionData:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setProxyURL$cp(Ljava/net/URL;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/revenuecat/purchases/Purchases;->proxyURL:Ljava/net/URL;

    return-void
.end method

.method public static final synthetic access$updateAllCaches(Lcom/revenuecat/purchases/Purchases;Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/revenuecat/purchases/Purchases;->updateAllCaches(Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V

    return-void
.end method

.method public static final addAttributionData(Ljava/util/Map;Lcom/revenuecat/purchases/Purchases$AttributionNetwork;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/revenuecat/purchases/Purchases$AttributionNetwork;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/revenuecat/purchases/Purchases;->Companion:Lcom/revenuecat/purchases/Purchases$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/revenuecat/purchases/Purchases$Companion;->addAttributionData(Ljava/util/Map;Lcom/revenuecat/purchases/Purchases$AttributionNetwork;Ljava/lang/String;)V

    return-void
.end method

.method public static final addAttributionData(Lorg/json/JSONObject;Lcom/revenuecat/purchases/Purchases$AttributionNetwork;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/revenuecat/purchases/Purchases;->Companion:Lcom/revenuecat/purchases/Purchases$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/revenuecat/purchases/Purchases$Companion;->addAttributionData(Lorg/json/JSONObject;Lcom/revenuecat/purchases/Purchases$AttributionNetwork;Ljava/lang/String;)V

    return-void
.end method

.method private final afterSetListener(Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "Listener set"

    .line 1
    invoke-static {p1}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/revenuecat/purchases/Purchases;->deviceCache:Lcom/revenuecat/purchases/common/caching/DeviceCache;

    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->identityManager:Lcom/revenuecat/purchases/identity/IdentityManager;

    invoke-virtual {v0}, Lcom/revenuecat/purchases/identity/IdentityManager;->getCurrentAppUserID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/revenuecat/purchases/common/caching/DeviceCache;->getCachedPurchaserInfo(Ljava/lang/String;)Lcom/revenuecat/purchases/PurchaserInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/revenuecat/purchases/Purchases;->sendUpdatedPurchaserInfoToDelegateIfChanged(Lcom/revenuecat/purchases/PurchaserInfo;)V

    :cond_0
    return-void
.end method

.method private final declared-synchronized cachePurchaserInfo(Lcom/revenuecat/purchases/PurchaserInfo;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->deviceCache:Lcom/revenuecat/purchases/common/caching/DeviceCache;

    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases;->identityManager:Lcom/revenuecat/purchases/identity/IdentityManager;

    invoke-virtual {v1}, Lcom/revenuecat/purchases/identity/IdentityManager;->getCurrentAppUserID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/revenuecat/purchases/common/caching/DeviceCache;->cachePurchaserInfo(Ljava/lang/String;Lcom/revenuecat/purchases/PurchaserInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static final configure(Landroid/content/Context;Ljava/lang/String;)Lcom/revenuecat/purchases/Purchases;
    .locals 8

    sget-object v0, Lcom/revenuecat/purchases/Purchases;->Companion:Lcom/revenuecat/purchases/Purchases$Companion;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Lcom/revenuecat/purchases/Purchases$Companion;->configure$default(Lcom/revenuecat/purchases/Purchases$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/ExecutorService;ILjava/lang/Object;)Lcom/revenuecat/purchases/Purchases;

    move-result-object p0

    return-object p0
.end method

.method public static final configure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/revenuecat/purchases/Purchases;
    .locals 8

    sget-object v0, Lcom/revenuecat/purchases/Purchases;->Companion:Lcom/revenuecat/purchases/Purchases$Companion;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v7}, Lcom/revenuecat/purchases/Purchases$Companion;->configure$default(Lcom/revenuecat/purchases/Purchases$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/ExecutorService;ILjava/lang/Object;)Lcom/revenuecat/purchases/Purchases;

    move-result-object p0

    return-object p0
.end method

.method public static final configure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/revenuecat/purchases/Purchases;
    .locals 8

    sget-object v0, Lcom/revenuecat/purchases/Purchases;->Companion:Lcom/revenuecat/purchases/Purchases$Companion;

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v7}, Lcom/revenuecat/purchases/Purchases$Companion;->configure$default(Lcom/revenuecat/purchases/Purchases$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/ExecutorService;ILjava/lang/Object;)Lcom/revenuecat/purchases/Purchases;

    move-result-object p0

    return-object p0
.end method

.method public static final configure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/ExecutorService;)Lcom/revenuecat/purchases/Purchases;
    .locals 6

    sget-object v0, Lcom/revenuecat/purchases/Purchases;->Companion:Lcom/revenuecat/purchases/Purchases$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/revenuecat/purchases/Purchases$Companion;->configure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/ExecutorService;)Lcom/revenuecat/purchases/Purchases;

    move-result-object p0

    return-object p0
.end method

.method private final consumeAndSave(ZLcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;)V
    .locals 2

    .line 8
    invoke-virtual {p2}, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->getType()Lcom/revenuecat/purchases/common/PurchaseType;

    move-result-object v0

    sget-object v1, Lcom/revenuecat/purchases/common/PurchaseType;->UNKNOWN:Lcom/revenuecat/purchases/common/PurchaseType;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p2}, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->isConsumable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object p1, p0, Lcom/revenuecat/purchases/Purchases;->billingWrapper:Lcom/revenuecat/purchases/common/BillingWrapper;

    invoke-virtual {p2}, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->getPurchaseToken()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/revenuecat/purchases/Purchases$consumeAndSave$3;

    invoke-direct {v0, p0}, Lcom/revenuecat/purchases/Purchases$consumeAndSave$3;-><init>(Lcom/revenuecat/purchases/Purchases;)V

    invoke-virtual {p1, p2, v0}, Lcom/revenuecat/purchases/common/BillingWrapper;->consumePurchase(Ljava/lang/String;Lkotlin/w/b/p;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/revenuecat/purchases/Purchases;->billingWrapper:Lcom/revenuecat/purchases/common/BillingWrapper;

    invoke-virtual {p2}, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->getPurchaseToken()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/revenuecat/purchases/Purchases$consumeAndSave$4;

    invoke-direct {v0, p0}, Lcom/revenuecat/purchases/Purchases$consumeAndSave$4;-><init>(Lcom/revenuecat/purchases/Purchases;)V

    invoke-virtual {p1, p2, v0}, Lcom/revenuecat/purchases/common/BillingWrapper;->acknowledge(Ljava/lang/String;Lkotlin/w/b/p;)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/revenuecat/purchases/Purchases;->deviceCache:Lcom/revenuecat/purchases/common/caching/DeviceCache;

    invoke-virtual {p2}, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->getPurchaseToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/revenuecat/purchases/common/caching/DeviceCache;->addSuccessfullyPostedToken(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final consumeAndSave(ZLcom/revenuecat/purchases/common/PurchaseWrapper;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/revenuecat/purchases/common/PurchaseWrapper;->getType()Lcom/revenuecat/purchases/common/PurchaseType;

    move-result-object v0

    sget-object v1, Lcom/revenuecat/purchases/common/PurchaseType;->UNKNOWN:Lcom/revenuecat/purchases/common/PurchaseType;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/revenuecat/purchases/common/PurchaseWrapper;->getContainedPurchase()Lcom/android/billingclient/api/Purchase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->c()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p2}, Lcom/revenuecat/purchases/common/PurchaseWrapper;->isConsumable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object p1, p0, Lcom/revenuecat/purchases/Purchases;->billingWrapper:Lcom/revenuecat/purchases/common/BillingWrapper;

    invoke-virtual {p2}, Lcom/revenuecat/purchases/common/PurchaseWrapper;->getPurchaseToken()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/revenuecat/purchases/Purchases$consumeAndSave$1;

    invoke-direct {v0, p0}, Lcom/revenuecat/purchases/Purchases$consumeAndSave$1;-><init>(Lcom/revenuecat/purchases/Purchases;)V

    invoke-virtual {p1, p2, v0}, Lcom/revenuecat/purchases/common/BillingWrapper;->consumePurchase(Ljava/lang/String;Lkotlin/w/b/p;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p2}, Lcom/revenuecat/purchases/common/PurchaseWrapper;->getContainedPurchase()Lcom/android/billingclient/api/Purchase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->h()Z

    move-result p1

    if-nez p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/revenuecat/purchases/Purchases;->billingWrapper:Lcom/revenuecat/purchases/common/BillingWrapper;

    invoke-virtual {p2}, Lcom/revenuecat/purchases/common/PurchaseWrapper;->getPurchaseToken()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/revenuecat/purchases/Purchases$consumeAndSave$2;

    invoke-direct {v0, p0}, Lcom/revenuecat/purchases/Purchases$consumeAndSave$2;-><init>(Lcom/revenuecat/purchases/Purchases;)V

    invoke-virtual {p1, p2, v0}, Lcom/revenuecat/purchases/common/BillingWrapper;->acknowledge(Ljava/lang/String;Lkotlin/w/b/p;)V

    goto :goto_0

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/revenuecat/purchases/Purchases;->deviceCache:Lcom/revenuecat/purchases/common/caching/DeviceCache;

    invoke-virtual {p2}, Lcom/revenuecat/purchases/common/PurchaseWrapper;->getPurchaseToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/revenuecat/purchases/common/caching/DeviceCache;->addSuccessfullyPostedToken(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic createAlias$default(Lcom/revenuecat/purchases/Purchases;Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/revenuecat/purchases/Purchases;->createAlias(Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V

    return-void
.end method

.method private final dispatch(Lcom/revenuecat/purchases/interfaces/PurchaseErrorListener;Lcom/revenuecat/purchases/PurchasesError;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/revenuecat/purchases/Purchases$dispatch$1;

    invoke-direct {v0, p1, p2}, Lcom/revenuecat/purchases/Purchases$dispatch$1;-><init>(Lcom/revenuecat/purchases/interfaces/PurchaseErrorListener;Lcom/revenuecat/purchases/PurchasesError;)V

    invoke-direct {p0, v0}, Lcom/revenuecat/purchases/Purchases;->dispatch(Lkotlin/w/b/a;)V

    return-void
.end method

.method private final dispatch(Lkotlin/w/b/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/w/b/a<",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "Looper.getMainLooper()"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    new-instance v1, Lcom/revenuecat/purchases/PurchasesKt$sam$java_lang_Runnable$0;

    invoke-direct {v1, p1}, Lcom/revenuecat/purchases/PurchasesKt$sam$java_lang_Runnable$0;-><init>(Lkotlin/w/b/a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    if-eqz p1, :cond_1

    new-instance v1, Lcom/revenuecat/purchases/PurchasesKt$sam$java_lang_Runnable$0;

    invoke-direct {v1, p1}, Lcom/revenuecat/purchases/PurchasesKt$sam$java_lang_Runnable$0;-><init>(Lkotlin/w/b/a;)V

    :goto_0
    move-object p1, v1

    :cond_1
    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 3
    :cond_2
    invoke-interface {p1}, Lkotlin/w/b/a;->invoke()Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method private final fetchAndCacheOfferings(Ljava/lang/String;ZLcom/revenuecat/purchases/interfaces/ReceiveOfferingsListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->deviceCache:Lcom/revenuecat/purchases/common/caching/DeviceCache;

    invoke-virtual {v0}, Lcom/revenuecat/purchases/common/caching/DeviceCache;->setOfferingsCacheTimestampToNow()V

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->backend:Lcom/revenuecat/purchases/common/Backend;

    .line 3
    new-instance v1, Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1;

    invoke-direct {v1, p0, p3}, Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1;-><init>(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/interfaces/ReceiveOfferingsListener;)V

    .line 4
    new-instance v2, Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$2;

    invoke-direct {v2, p0, p3}, Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$2;-><init>(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/interfaces/ReceiveOfferingsListener;)V

    .line 5
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/revenuecat/purchases/common/Backend;->getOfferings(Ljava/lang/String;ZLkotlin/w/b/l;Lkotlin/w/b/l;)V

    return-void
.end method

.method static synthetic fetchAndCacheOfferings$default(Lcom/revenuecat/purchases/Purchases;Ljava/lang/String;ZLcom/revenuecat/purchases/interfaces/ReceiveOfferingsListener;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/revenuecat/purchases/Purchases;->fetchAndCacheOfferings(Ljava/lang/String;ZLcom/revenuecat/purchases/interfaces/ReceiveOfferingsListener;)V

    return-void
.end method

.method private final fetchAndCachePurchaserInfo(Ljava/lang/String;ZLcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->deviceCache:Lcom/revenuecat/purchases/common/caching/DeviceCache;

    invoke-virtual {v0, p1}, Lcom/revenuecat/purchases/common/caching/DeviceCache;->setPurchaserInfoCacheTimestampToNow(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->backend:Lcom/revenuecat/purchases/common/Backend;

    .line 3
    new-instance v1, Lcom/revenuecat/purchases/Purchases$fetchAndCachePurchaserInfo$1;

    invoke-direct {v1, p0, p3}, Lcom/revenuecat/purchases/Purchases$fetchAndCachePurchaserInfo$1;-><init>(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V

    .line 4
    new-instance v2, Lcom/revenuecat/purchases/Purchases$fetchAndCachePurchaserInfo$2;

    invoke-direct {v2, p0, p1, p3}, Lcom/revenuecat/purchases/Purchases$fetchAndCachePurchaserInfo$2;-><init>(Lcom/revenuecat/purchases/Purchases;Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V

    .line 5
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/revenuecat/purchases/common/Backend;->getPurchaserInfo(Ljava/lang/String;ZLkotlin/w/b/l;Lkotlin/w/b/l;)V

    return-void
.end method

.method static synthetic fetchAndCachePurchaserInfo$default(Lcom/revenuecat/purchases/Purchases;Ljava/lang/String;ZLcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/revenuecat/purchases/Purchases;->fetchAndCachePurchaserInfo(Ljava/lang/String;ZLcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V

    return-void
.end method

.method private final generateAttributionDataCacheValue(Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;->isLimitAdTrackingEnabled()Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v2

    :cond_1
    const/4 p1, 0x0

    aput-object v2, v0, p1

    aput-object p2, v0, v1

    .line 2
    invoke-static {v0}, Lkotlin/s/k;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3e

    const/4 v11, 0x0

    const-string v4, "_"

    .line 3
    invoke-static/range {v3 .. v11}, Lkotlin/s/k;->R(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/w/b/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getAndClearProductChangeCallback()Lcom/revenuecat/purchases/interfaces/ProductChangeListener;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getState$purchases_release()Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/revenuecat/purchases/PurchasesState;->getProductChangeCallback()Lcom/revenuecat/purchases/interfaces/ProductChangeListener;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getState$purchases_release()Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x77

    const/4 v10, 0x0

    invoke-static/range {v1 .. v10}, Lcom/revenuecat/purchases/PurchasesState;->copy$default(Lcom/revenuecat/purchases/PurchasesState;Ljava/lang/Boolean;Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;Ljava/util/Map;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;Lcom/revenuecat/purchases/PurchaserInfo;ZZILjava/lang/Object;)Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/revenuecat/purchases/Purchases;->setState$purchases_release(Lcom/revenuecat/purchases/PurchasesState;)V

    return-object v0
.end method

.method public static final getDebugLogsEnabled()Z
    .locals 1

    sget-object v0, Lcom/revenuecat/purchases/Purchases;->Companion:Lcom/revenuecat/purchases/Purchases$Companion;

    invoke-virtual {v0}, Lcom/revenuecat/purchases/Purchases$Companion;->getDebugLogsEnabled()Z

    move-result v0

    return v0
.end method

.method public static final getFrameworkVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/revenuecat/purchases/Purchases;->frameworkVersion:Ljava/lang/String;

    return-object v0
.end method

.method private final getLifecycleHandler()Lcom/revenuecat/purchases/AppLifecycleHandler;
    .locals 1

    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->lifecycleHandler$delegate:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/revenuecat/purchases/AppLifecycleHandler;

    return-object v0
.end method

.method public static final getPlatformInfo()Lcom/revenuecat/purchases/common/PlatformInfo;
    .locals 1

    sget-object v0, Lcom/revenuecat/purchases/Purchases;->platformInfo:Lcom/revenuecat/purchases/common/PlatformInfo;

    return-object v0
.end method

.method private final getProductChangeCompletedCallbacks(Lcom/revenuecat/purchases/interfaces/ProductChangeListener;)Lkotlin/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/revenuecat/purchases/interfaces/ProductChangeListener;",
            ")",
            "Lkotlin/l<",
            "Lkotlin/w/b/p<",
            "Lcom/revenuecat/purchases/common/PurchaseWrapper;",
            "Lcom/revenuecat/purchases/PurchaserInfo;",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/p<",
            "Lcom/revenuecat/purchases/common/PurchaseWrapper;",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "Lkotlin/r;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/revenuecat/purchases/Purchases$getProductChangeCompletedCallbacks$onSuccess$1;

    invoke-direct {v0, p0, p1}, Lcom/revenuecat/purchases/Purchases$getProductChangeCompletedCallbacks$onSuccess$1;-><init>(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;)V

    .line 2
    new-instance v1, Lcom/revenuecat/purchases/Purchases$getProductChangeCompletedCallbacks$onError$1;

    invoke-direct {v1, p0, p1}, Lcom/revenuecat/purchases/Purchases$getProductChangeCompletedCallbacks$onError$1;-><init>(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;)V

    .line 3
    new-instance p1, Lkotlin/l;

    invoke-direct {p1, v0, v1}, Lkotlin/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static final getProxyURL()Ljava/net/URL;
    .locals 1

    sget-object v0, Lcom/revenuecat/purchases/Purchases;->proxyURL:Ljava/net/URL;

    return-object v0
.end method

.method private final getPurchaseCallback(Ljava/lang/String;)Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getState$purchases_release()Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/revenuecat/purchases/PurchasesState;->getPurchaseCallbacks()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;

    .line 2
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getState$purchases_release()Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v1

    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getState$purchases_release()Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/revenuecat/purchases/PurchasesState;->getPurchaseCallbacks()Ljava/util/Map;

    move-result-object v2

    .line 3
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7b

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 7
    invoke-static/range {v1 .. v10}, Lcom/revenuecat/purchases/PurchasesState;->copy$default(Lcom/revenuecat/purchases/PurchasesState;Ljava/lang/Boolean;Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;Ljava/util/Map;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;Lcom/revenuecat/purchases/PurchaserInfo;ZZILjava/lang/Object;)Lcom/revenuecat/purchases/PurchasesState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/revenuecat/purchases/Purchases;->setState$purchases_release(Lcom/revenuecat/purchases/PurchasesState;)V

    return-object v0
.end method

.method private final getPurchaseCompletedCallbacks()Lkotlin/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/l<",
            "Lkotlin/w/b/p<",
            "Lcom/revenuecat/purchases/common/PurchaseWrapper;",
            "Lcom/revenuecat/purchases/PurchaserInfo;",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/p<",
            "Lcom/revenuecat/purchases/common/PurchaseWrapper;",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "Lkotlin/r;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/revenuecat/purchases/Purchases$getPurchaseCompletedCallbacks$onSuccess$1;

    invoke-direct {v0, p0}, Lcom/revenuecat/purchases/Purchases$getPurchaseCompletedCallbacks$onSuccess$1;-><init>(Lcom/revenuecat/purchases/Purchases;)V

    .line 2
    new-instance v1, Lcom/revenuecat/purchases/Purchases$getPurchaseCompletedCallbacks$onError$1;

    invoke-direct {v1, p0}, Lcom/revenuecat/purchases/Purchases$getPurchaseCompletedCallbacks$onError$1;-><init>(Lcom/revenuecat/purchases/Purchases;)V

    .line 3
    new-instance v2, Lkotlin/l;

    invoke-direct {v2, v0, v1}, Lkotlin/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private final getPurchasesUpdatedListener()Lcom/revenuecat/purchases/common/BillingWrapper$PurchasesUpdatedListener;
    .locals 1

    .line 1
    new-instance v0, Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1;

    invoke-direct {v0, p0}, Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1;-><init>(Lcom/revenuecat/purchases/Purchases;)V

    return-object v0
.end method

.method public static final getSharedInstance()Lcom/revenuecat/purchases/Purchases;
    .locals 1

    sget-object v0, Lcom/revenuecat/purchases/Purchases;->Companion:Lcom/revenuecat/purchases/Purchases$Companion;

    invoke-virtual {v0}, Lcom/revenuecat/purchases/Purchases$Companion;->getSharedInstance()Lcom/revenuecat/purchases/Purchases;

    move-result-object v0

    return-object v0
.end method

.method private final getSkuDetails(Ljava/util/List;Lkotlin/w/b/l;Lkotlin/w/b/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/w/b/l<",
            "-",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
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

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->billingWrapper:Lcom/revenuecat/purchases/common/BillingWrapper;

    .line 2
    new-instance v1, Lcom/revenuecat/purchases/Purchases$getSkuDetails$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/revenuecat/purchases/Purchases$getSkuDetails$1;-><init>(Lcom/revenuecat/purchases/Purchases;Ljava/util/List;Lkotlin/w/b/l;Lkotlin/w/b/l;)V

    .line 3
    new-instance p2, Lcom/revenuecat/purchases/Purchases$getSkuDetails$2;

    invoke-direct {p2, p3}, Lcom/revenuecat/purchases/Purchases$getSkuDetails$2;-><init>(Lkotlin/w/b/l;)V

    const-string p3, "subs"

    .line 4
    invoke-virtual {v0, p3, p1, v1, p2}, Lcom/revenuecat/purchases/common/BillingWrapper;->querySkuDetailsAsync(Ljava/lang/String;Ljava/util/List;Lkotlin/w/b/l;Lkotlin/w/b/l;)V

    return-void
.end method

.method private final getSkus(Ljava/util/List;Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/GetSkusResponseListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/revenuecat/purchases/interfaces/GetSkusResponseListener;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->billingWrapper:Lcom/revenuecat/purchases/common/BillingWrapper;

    .line 2
    new-instance v1, Lcom/revenuecat/purchases/Purchases$getSkus$1;

    invoke-direct {v1, p0, p3}, Lcom/revenuecat/purchases/Purchases$getSkus$1;-><init>(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/interfaces/GetSkusResponseListener;)V

    .line 3
    new-instance v2, Lcom/revenuecat/purchases/Purchases$getSkus$2;

    invoke-direct {v2, p0, p3}, Lcom/revenuecat/purchases/Purchases$getSkus$2;-><init>(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/interfaces/GetSkusResponseListener;)V

    .line 4
    invoke-virtual {v0, p2, p1, v1, v2}, Lcom/revenuecat/purchases/common/BillingWrapper;->querySkuDetailsAsync(Ljava/lang/String;Ljava/util/List;Lkotlin/w/b/l;Lkotlin/w/b/l;)V

    return-void
.end method

.method public static synthetic getState$purchases_release$annotations()V
    .locals 0

    return-void
.end method

.method private final handleErrorFetchingOfferings(Lcom/revenuecat/purchases/PurchasesError;Lcom/revenuecat/purchases/interfaces/ReceiveOfferingsListener;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error fetching offerings - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->infoLog(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->deviceCache:Lcom/revenuecat/purchases/common/caching/DeviceCache;

    invoke-virtual {v0}, Lcom/revenuecat/purchases/common/caching/DeviceCache;->clearOfferingsCacheTimestamp()V

    .line 3
    new-instance v0, Lcom/revenuecat/purchases/Purchases$handleErrorFetchingOfferings$1;

    invoke-direct {v0, p2, p1}, Lcom/revenuecat/purchases/Purchases$handleErrorFetchingOfferings$1;-><init>(Lcom/revenuecat/purchases/interfaces/ReceiveOfferingsListener;Lcom/revenuecat/purchases/PurchasesError;)V

    invoke-direct {p0, v0}, Lcom/revenuecat/purchases/Purchases;->dispatch(Lkotlin/w/b/a;)V

    return-void
.end method

.method public static synthetic identify$default(Lcom/revenuecat/purchases/Purchases;Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/revenuecat/purchases/Purchases;->identify(Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V

    return-void
.end method

.method public static final isBillingSupported(Landroid/content/Context;Lcom/revenuecat/purchases/interfaces/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/revenuecat/purchases/interfaces/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/revenuecat/purchases/Purchases;->Companion:Lcom/revenuecat/purchases/Purchases$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/revenuecat/purchases/Purchases$Companion;->isBillingSupported(Landroid/content/Context;Lcom/revenuecat/purchases/interfaces/Callback;)V

    return-void
.end method

.method public static final isFeatureSupported(Ljava/lang/String;Landroid/content/Context;Lcom/revenuecat/purchases/interfaces/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/revenuecat/purchases/interfaces/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/revenuecat/purchases/Purchases;->Companion:Lcom/revenuecat/purchases/Purchases$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/revenuecat/purchases/Purchases$Companion;->isFeatureSupported(Ljava/lang/String;Landroid/content/Context;Lcom/revenuecat/purchases/interfaces/Callback;)V

    return-void
.end method

.method private final logMissingProducts(Lcom/revenuecat/purchases/Offerings;Ljava/util/HashMap;)Lkotlin/r;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/revenuecat/purchases/Offerings;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)",
            "Lkotlin/r;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/revenuecat/purchases/Offerings;->getAll()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Lcom/revenuecat/purchases/Offering;

    .line 5
    invoke-virtual {v1}, Lcom/revenuecat/purchases/Offering;->getAvailablePackages()Ljava/util/List;

    move-result-object v1

    .line 6
    invoke-static {v0, v1}, Lkotlin/s/k;->w(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 9
    check-cast v1, Lcom/revenuecat/purchases/Package;

    .line 10
    invoke-virtual {v1}, Lcom/revenuecat/purchases/Package;->getProduct()Lcom/android/billingclient/api/SkuDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/SkuDetails;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 13
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 14
    :cond_3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    move-object v1, v0

    goto :goto_3

    :cond_4
    move-object v1, p2

    :goto_3
    if-eqz v1, :cond_5

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not find SkuDetails for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e

    const/4 v9, 0x0

    const-string v2, ", "

    invoke-static/range {v1 .. v9}, Lkotlin/s/k;->R(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/w/b/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/revenuecat/purchases/common/LogUtilsKt;->infoLog(Ljava/lang/String;)V

    const-string p1, "Ensure your products are correctly configured in Play Store Developer Console"

    .line 16
    invoke-static {p1}, Lcom/revenuecat/purchases/common/LogUtilsKt;->infoLog(Ljava/lang/String;)V

    .line 17
    sget-object p2, Lkotlin/r;->a:Lkotlin/r;

    :cond_5
    return-object p2
.end method

.method private final postPurchases(Ljava/util/List;ZZLjava/lang/String;Lkotlin/w/b/p;Lkotlin/w/b/p;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/revenuecat/purchases/common/PurchaseWrapper;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Lkotlin/w/b/p<",
            "-",
            "Lcom/revenuecat/purchases/common/PurchaseWrapper;",
            "-",
            "Lcom/revenuecat/purchases/PurchaserInfo;",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/p<",
            "-",
            "Lcom/revenuecat/purchases/common/PurchaseWrapper;",
            "-",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v8, p6

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/revenuecat/purchases/common/PurchaseWrapper;

    .line 2
    invoke-virtual {v10}, Lcom/revenuecat/purchases/common/PurchaseWrapper;->getContainedPurchase()Lcom/android/billingclient/api/Purchase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    move-object/from16 v11, p0

    .line 3
    iget-object v12, v11, Lcom/revenuecat/purchases/Purchases;->billingWrapper:Lcom/revenuecat/purchases/common/BillingWrapper;

    .line 4
    invoke-virtual {v10}, Lcom/revenuecat/purchases/common/PurchaseWrapper;->getType()Lcom/revenuecat/purchases/common/PurchaseType;

    move-result-object v0

    invoke-static {v0}, Lcom/revenuecat/purchases/common/PurchaseTypeKt;->toSKUType(Lcom/revenuecat/purchases/common/PurchaseType;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "inapp"

    :goto_1
    move-object v13, v0

    .line 5
    invoke-virtual {v10}, Lcom/revenuecat/purchases/common/PurchaseWrapper;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/s/k;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 6
    new-instance v15, Lcom/revenuecat/purchases/Purchases$postPurchases$$inlined$forEach$lambda$1;

    move-object v0, v15

    move-object v1, v10

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/revenuecat/purchases/Purchases$postPurchases$$inlined$forEach$lambda$1;-><init>(Lcom/revenuecat/purchases/common/PurchaseWrapper;Lcom/revenuecat/purchases/Purchases;ZZLjava/lang/String;Lkotlin/w/b/p;Lkotlin/w/b/p;)V

    .line 7
    new-instance v7, Lcom/revenuecat/purchases/Purchases$postPurchases$$inlined$forEach$lambda$2;

    move-object v0, v7

    move-object v10, v7

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/revenuecat/purchases/Purchases$postPurchases$$inlined$forEach$lambda$2;-><init>(Lcom/revenuecat/purchases/common/PurchaseWrapper;Lcom/revenuecat/purchases/Purchases;ZZLjava/lang/String;Lkotlin/w/b/p;Lkotlin/w/b/p;)V

    .line 8
    invoke-virtual {v12, v13, v14, v15, v10}, Lcom/revenuecat/purchases/common/BillingWrapper;->querySkuDetailsAsync(Ljava/lang/String;Ljava/util/List;Lkotlin/w/b/l;Lkotlin/w/b/l;)V

    goto :goto_0

    :cond_2
    move-object/from16 v11, p0

    if-eqz v8, :cond_0

    .line 9
    new-instance v0, Lcom/revenuecat/purchases/PurchasesError;

    sget-object v1, Lcom/revenuecat/purchases/PurchasesErrorCode;->PaymentPendingError:Lcom/revenuecat/purchases/PurchasesErrorCode;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/revenuecat/purchases/PurchasesError;-><init>(Lcom/revenuecat/purchases/PurchasesErrorCode;Ljava/lang/String;ILkotlin/w/c/g;)V

    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->errorLog(Lcom/revenuecat/purchases/PurchasesError;)V

    sget-object v1, Lkotlin/r;->a:Lkotlin/r;

    .line 10
    invoke-interface {v8, v10, v0}, Lkotlin/w/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/r;

    goto :goto_0

    :cond_3
    move-object/from16 v11, p0

    return-void
.end method

.method static synthetic postPurchases$default(Lcom/revenuecat/purchases/Purchases;Ljava/util/List;ZZLjava/lang/String;Lkotlin/w/b/p;Lkotlin/w/b/p;ILjava/lang/Object;)V
    .locals 9

    and-int/lit8 v0, p7, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object v7, p5

    :goto_0
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_1

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object v8, p6

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 1
    invoke-direct/range {v2 .. v8}, Lcom/revenuecat/purchases/Purchases;->postPurchases(Ljava/util/List;ZZLjava/lang/String;Lkotlin/w/b/p;Lkotlin/w/b/p;)V

    return-void
.end method

.method public static synthetic postToBackend$purchases_release$default(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/common/PurchaseWrapper;Lcom/android/billingclient/api/SkuDetails;ZZLjava/lang/String;Lkotlin/w/b/p;Lkotlin/w/b/p;ILjava/lang/Object;)V
    .locals 10

    and-int/lit8 v0, p8, 0x20

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object/from16 v8, p6

    :goto_0
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_1

    move-object v9, v1

    goto :goto_1

    :cond_1
    move-object/from16 v9, p7

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    .line 1
    invoke-virtual/range {v2 .. v9}, Lcom/revenuecat/purchases/Purchases;->postToBackend$purchases_release(Lcom/revenuecat/purchases/common/PurchaseWrapper;Lcom/android/billingclient/api/SkuDetails;ZZLjava/lang/String;Lkotlin/w/b/p;Lkotlin/w/b/p;)V

    return-void
.end method

.method private final replaceOldPurchaseWithNewProduct(Lcom/android/billingclient/api/SkuDetails;Lcom/revenuecat/purchases/UpgradeInfo;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/PurchaseErrorListener;)V
    .locals 13

    move-object v8, p0

    .line 1
    iget-object v9, v8, Lcom/revenuecat/purchases/Purchases;->billingWrapper:Lcom/revenuecat/purchases/common/BillingWrapper;

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->l()Ljava/lang/String;

    move-result-object v10

    const-string v0, "product.type"

    invoke-static {v10, v0}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/revenuecat/purchases/UpgradeInfo;->getOldSku()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1;-><init>(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/UpgradeInfo;Landroid/app/Activity;Ljava/lang/String;Lcom/android/billingclient/api/SkuDetails;Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/PurchaseErrorListener;)V

    invoke-virtual {v9, v10, v11, v12}, Lcom/revenuecat/purchases/common/BillingWrapper;->findPurchaseInPurchaseHistory(Ljava/lang/String;Ljava/lang/String;Lkotlin/w/b/p;)V

    return-void
.end method

.method public static synthetic reset$default(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/revenuecat/purchases/Purchases;->reset(Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V

    return-void
.end method

.method private final retrievePurchaseInfo(Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->deviceCache:Lcom/revenuecat/purchases/common/caching/DeviceCache;

    invoke-virtual {v0, p1}, Lcom/revenuecat/purchases/common/caching/DeviceCache;->getCachedPurchaserInfo(Ljava/lang/String;)Lcom/revenuecat/purchases/PurchaserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Vending purchaserInfo from cache"

    .line 2
    invoke-static {v1}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/revenuecat/purchases/Purchases$retrievePurchaseInfo$1;

    invoke-direct {v1, p2, v0}, Lcom/revenuecat/purchases/Purchases$retrievePurchaseInfo$1;-><init>(Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;Lcom/revenuecat/purchases/PurchaserInfo;)V

    invoke-direct {p0, v1}, Lcom/revenuecat/purchases/Purchases;->dispatch(Lkotlin/w/b/a;)V

    .line 4
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getState$purchases_release()Lcom/revenuecat/purchases/PurchasesState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/revenuecat/purchases/PurchasesState;->getAppInBackground()Z

    move-result v2

    .line 5
    iget-object p2, p0, Lcom/revenuecat/purchases/Purchases;->deviceCache:Lcom/revenuecat/purchases/common/caching/DeviceCache;

    invoke-virtual {p2, p1, v2}, Lcom/revenuecat/purchases/common/caching/DeviceCache;->isPurchaserInfoCacheStale(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "Cache is stale, updating caches"

    .line 6
    invoke-static {p2}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 7
    invoke-static/range {v0 .. v5}, Lcom/revenuecat/purchases/Purchases;->fetchAndCachePurchaserInfo$default(Lcom/revenuecat/purchases/Purchases;Ljava/lang/String;ZLcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "No cached purchaser info, fetching"

    .line 8
    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getState$purchases_release()Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/revenuecat/purchases/PurchasesState;->getAppInBackground()Z

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/revenuecat/purchases/Purchases;->fetchAndCachePurchaserInfo(Ljava/lang/String;ZLcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic retrievePurchaseInfo$default(Lcom/revenuecat/purchases/Purchases;Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/revenuecat/purchases/Purchases;->retrievePurchaseInfo(Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V

    return-void
.end method

.method private final sendUpdatedPurchaserInfoToDelegateIfChanged(Lcom/revenuecat/purchases/PurchaserInfo;)V
    .locals 12

    .line 1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getState$purchases_release()Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/revenuecat/purchases/PurchasesState;->getUpdatedPurchaserInfoListener()Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getState$purchases_release()Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/revenuecat/purchases/PurchasesState;->getLastSentPurchaserInfo()Lcom/revenuecat/purchases/PurchaserInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    .line 2
    invoke-virtual {v0}, Lkotlin/l;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;

    invoke-virtual {v0}, Lkotlin/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/revenuecat/purchases/PurchaserInfo;

    if-eqz v1, :cond_1

    .line 3
    invoke-static {v0, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    const-string v0, "Purchaser info updated, sending to listener"

    .line 4
    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "Sending latest purchaser info to listener"

    .line 5
    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 6
    :goto_0
    monitor-enter p0

    .line 7
    :try_start_1
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getState$purchases_release()Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x6f

    const/4 v11, 0x0

    move-object v7, p1

    invoke-static/range {v2 .. v11}, Lcom/revenuecat/purchases/PurchasesState;->copy$default(Lcom/revenuecat/purchases/PurchasesState;Ljava/lang/Boolean;Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;Ljava/util/Map;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;Lcom/revenuecat/purchases/PurchaserInfo;ZZILjava/lang/Object;)Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/revenuecat/purchases/Purchases;->setState$purchases_release(Lcom/revenuecat/purchases/PurchasesState;)V

    .line 8
    sget-object v0, Lkotlin/r;->a:Lkotlin/r;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit p0

    .line 10
    new-instance v0, Lcom/revenuecat/purchases/Purchases$sendUpdatedPurchaserInfoToDelegateIfChanged$$inlined$let$lambda$1;

    invoke-direct {v0, v1, p0, p1}, Lcom/revenuecat/purchases/Purchases$sendUpdatedPurchaserInfoToDelegateIfChanged$$inlined$let$lambda$1;-><init>(Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/PurchaserInfo;)V

    invoke-direct {p0, v0}, Lcom/revenuecat/purchases/Purchases;->dispatch(Lkotlin/w/b/a;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0

    throw p1

    :cond_1
    :goto_1
    return-void

    :catchall_1
    move-exception p1

    .line 12
    monitor-exit p0

    throw p1
.end method

.method public static final setDebugLogsEnabled(Z)V
    .locals 1

    sget-object v0, Lcom/revenuecat/purchases/Purchases;->Companion:Lcom/revenuecat/purchases/Purchases$Companion;

    invoke-virtual {v0, p0}, Lcom/revenuecat/purchases/Purchases$Companion;->setDebugLogsEnabled(Z)V

    return-void
.end method

.method public static final setPlatformInfo(Lcom/revenuecat/purchases/common/PlatformInfo;)V
    .locals 0

    sput-object p0, Lcom/revenuecat/purchases/Purchases;->platformInfo:Lcom/revenuecat/purchases/common/PlatformInfo;

    return-void
.end method

.method public static final setProxyURL(Ljava/net/URL;)V
    .locals 0

    sput-object p0, Lcom/revenuecat/purchases/Purchases;->proxyURL:Ljava/net/URL;

    return-void
.end method

.method public static final setSharedInstance$purchases_release(Lcom/revenuecat/purchases/Purchases;)V
    .locals 1

    sget-object v0, Lcom/revenuecat/purchases/Purchases;->Companion:Lcom/revenuecat/purchases/Purchases$Companion;

    invoke-virtual {v0, p0}, Lcom/revenuecat/purchases/Purchases$Companion;->setSharedInstance$purchases_release(Lcom/revenuecat/purchases/Purchases;)V

    return-void
.end method

.method private final startProductChange(Landroid/app/Activity;Lcom/android/billingclient/api/SkuDetails;Ljava/lang/String;Lcom/revenuecat/purchases/UpgradeInfo;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v0, p3

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "product change started:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v3, p2

    .line 2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " - offering: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v2

    .line 4
    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " UpgradeInfo: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p4

    .line 5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v1, v8, Lcom/revenuecat/purchases/Purchases;->appConfig:Lcom/revenuecat/purchases/common/AppConfig;

    invoke-virtual {v1}, Lcom/revenuecat/purchases/common/AppConfig;->getFinishTransactions()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "finishTransactions is set to false and a purchase has been started. Are you sure you want to do this?"

    .line 9
    invoke-static {v1}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 10
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/revenuecat/purchases/Purchases;->getState$purchases_release()Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/revenuecat/purchases/PurchasesState;->getProductChangeCallback()Lcom/revenuecat/purchases/interfaces/ProductChangeListener;

    move-result-object v1

    if-nez v1, :cond_2

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/revenuecat/purchases/Purchases;->getState$purchases_release()Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x77

    const/16 v18, 0x0

    move-object/from16 v13, p5

    invoke-static/range {v9 .. v18}, Lcom/revenuecat/purchases/PurchasesState;->copy$default(Lcom/revenuecat/purchases/PurchasesState;Ljava/lang/Boolean;Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;Ljava/util/Map;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;Lcom/revenuecat/purchases/PurchaserInfo;ZZILjava/lang/Object;)Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/revenuecat/purchases/Purchases;->setState$purchases_release(Lcom/revenuecat/purchases/PurchasesState;)V

    .line 12
    iget-object v1, v8, Lcom/revenuecat/purchases/Purchases;->identityManager:Lcom/revenuecat/purchases/identity/IdentityManager;

    invoke-virtual {v1}, Lcom/revenuecat/purchases/identity/IdentityManager;->getCurrentAppUserID()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_1

    :cond_2
    move-object v5, v2

    .line 13
    :goto_1
    sget-object v1, Lkotlin/r;->a:Lkotlin/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    if-eqz v5, :cond_3

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    .line 15
    invoke-direct/range {v1 .. v7}, Lcom/revenuecat/purchases/Purchases;->replaceOldPurchaseWithNewProduct(Lcom/android/billingclient/api/SkuDetails;Lcom/revenuecat/purchases/UpgradeInfo;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/PurchaseErrorListener;)V

    goto :goto_2

    .line 16
    :cond_3
    new-instance v0, Lcom/revenuecat/purchases/PurchasesError;

    sget-object v1, Lcom/revenuecat/purchases/PurchasesErrorCode;->OperationAlreadyInProgressError:Lcom/revenuecat/purchases/PurchasesErrorCode;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/revenuecat/purchases/PurchasesError;-><init>(Lcom/revenuecat/purchases/PurchasesErrorCode;Ljava/lang/String;ILkotlin/w/c/g;)V

    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->errorLog(Lcom/revenuecat/purchases/PurchasesError;)V

    move-object/from16 v1, p5

    invoke-direct {v8, v1, v0}, Lcom/revenuecat/purchases/Purchases;->dispatch(Lcom/revenuecat/purchases/interfaces/PurchaseErrorListener;Lcom/revenuecat/purchases/PurchasesError;)V

    :goto_2
    return-void

    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p0

    throw v0
.end method

.method private final startPurchase(Landroid/app/Activity;Lcom/android/billingclient/api/SkuDetails;Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    .line 1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "purchase started - product:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v5, p2

    .line 2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " - offering: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v4

    .line 4
    :goto_0
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {v3}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v3, v1, Lcom/revenuecat/purchases/Purchases;->appConfig:Lcom/revenuecat/purchases/common/AppConfig;

    invoke-virtual {v3}, Lcom/revenuecat/purchases/common/AppConfig;->getFinishTransactions()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "finishTransactions is set to false and a purchase has been started. Are you sure you want to do this?"

    .line 8
    invoke-static {v3}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 9
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/revenuecat/purchases/Purchases;->getState$purchases_release()Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/revenuecat/purchases/PurchasesState;->getPurchaseCallbacks()Ljava/util/Map;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/SkuDetails;->j()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/revenuecat/purchases/Purchases;->getState$purchases_release()Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/revenuecat/purchases/Purchases;->getState$purchases_release()Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/revenuecat/purchases/PurchasesState;->getPurchaseCallbacks()Ljava/util/Map;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/SkuDetails;->j()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v9

    invoke-static {v9}, Lkotlin/s/b0;->c(Lkotlin/l;)Ljava/util/Map;

    move-result-object v9

    invoke-static {v3, v9}, Lkotlin/s/b0;->l(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x7b

    const/4 v15, 0x0

    .line 12
    invoke-static/range {v6 .. v15}, Lcom/revenuecat/purchases/PurchasesState;->copy$default(Lcom/revenuecat/purchases/PurchasesState;Ljava/lang/Boolean;Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;Ljava/util/Map;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;Lcom/revenuecat/purchases/PurchaserInfo;ZZILjava/lang/Object;)Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/revenuecat/purchases/Purchases;->setState$purchases_release(Lcom/revenuecat/purchases/PurchasesState;)V

    .line 13
    iget-object v3, v1, Lcom/revenuecat/purchases/Purchases;->identityManager:Lcom/revenuecat/purchases/identity/IdentityManager;

    invoke-virtual {v3}, Lcom/revenuecat/purchases/identity/IdentityManager;->getCurrentAppUserID()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    goto :goto_1

    :cond_2
    move-object v6, v4

    .line 14
    :goto_1
    sget-object v3, Lkotlin/r;->a:Lkotlin/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    if-eqz v6, :cond_3

    .line 16
    iget-object v2, v1, Lcom/revenuecat/purchases/Purchases;->billingWrapper:Lcom/revenuecat/purchases/common/BillingWrapper;

    const/4 v7, 0x0

    move-object/from16 v3, p1

    move-object v4, v6

    move-object/from16 v5, p2

    move-object v6, v7

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/revenuecat/purchases/common/BillingWrapper;->makePurchaseAsync(Landroid/app/Activity;Ljava/lang/String;Lcom/android/billingclient/api/SkuDetails;Lcom/revenuecat/purchases/common/ReplaceSkuInfo;Ljava/lang/String;)V

    goto :goto_2

    .line 17
    :cond_3
    new-instance v0, Lcom/revenuecat/purchases/PurchasesError;

    sget-object v3, Lcom/revenuecat/purchases/PurchasesErrorCode;->OperationAlreadyInProgressError:Lcom/revenuecat/purchases/PurchasesErrorCode;

    const/4 v5, 0x2

    invoke-direct {v0, v3, v4, v5, v4}, Lcom/revenuecat/purchases/PurchasesError;-><init>(Lcom/revenuecat/purchases/PurchasesErrorCode;Ljava/lang/String;ILkotlin/w/c/g;)V

    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->errorLog(Lcom/revenuecat/purchases/PurchasesError;)V

    invoke-direct {v1, v2, v0}, Lcom/revenuecat/purchases/Purchases;->dispatch(Lcom/revenuecat/purchases/interfaces/PurchaseErrorListener;Lcom/revenuecat/purchases/PurchasesError;)V

    :goto_2
    return-void

    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0

    throw v0
.end method

.method private final synchronizeSubscriberAttributesIfNeeded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->subscriberAttributesManager:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;

    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getAppUserID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;->synchronizeSubscriberAttributesForAllUsers(Ljava/lang/String;)V

    return-void
.end method

.method private final toProductChangeListener(Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;)Lcom/revenuecat/purchases/interfaces/ProductChangeListener;
    .locals 1

    .line 1
    new-instance v0, Lcom/revenuecat/purchases/Purchases$toProductChangeListener$1;

    invoke-direct {v0, p1}, Lcom/revenuecat/purchases/Purchases$toProductChangeListener$1;-><init>(Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;)V

    return-object v0
.end method

.method private final updateAllCaches(Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getState$purchases_release()Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/revenuecat/purchases/PurchasesState;->getAppInBackground()Z

    move-result v3

    .line 2
    invoke-direct {p0, p1, v3, p2}, Lcom/revenuecat/purchases/Purchases;->fetchAndCachePurchaserInfo(Ljava/lang/String;ZLcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 3
    invoke-static/range {v1 .. v6}, Lcom/revenuecat/purchases/Purchases;->fetchAndCacheOfferings$default(Lcom/revenuecat/purchases/Purchases;Ljava/lang/String;ZLcom/revenuecat/purchases/interfaces/ReceiveOfferingsListener;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic updateAllCaches$default(Lcom/revenuecat/purchases/Purchases;Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/revenuecat/purchases/Purchases;->updateAllCaches(Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getState$purchases_release()Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const-string v4, "emptyMap()"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7b

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lcom/revenuecat/purchases/PurchasesState;->copy$default(Lcom/revenuecat/purchases/PurchasesState;Ljava/lang/Boolean;Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;Ljava/util/Map;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;Lcom/revenuecat/purchases/PurchaserInfo;ZZILjava/lang/Object;)Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/revenuecat/purchases/Purchases;->setState$purchases_release(Lcom/revenuecat/purchases/PurchasesState;)V

    .line 3
    sget-object v0, Lkotlin/r;->a:Lkotlin/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    .line 5
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->backend:Lcom/revenuecat/purchases/common/Backend;

    invoke-virtual {v0}, Lcom/revenuecat/purchases/common/Backend;->close()V

    .line 6
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->billingWrapper:Lcom/revenuecat/purchases/common/BillingWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/revenuecat/purchases/common/BillingWrapper;->setPurchasesUpdatedListener(Lcom/revenuecat/purchases/common/BillingWrapper$PurchasesUpdatedListener;)V

    .line 7
    invoke-virtual {p0, v1}, Lcom/revenuecat/purchases/Purchases;->setUpdatedPurchaserInfoListener(Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;)V

    .line 8
    invoke-static {}, Landroidx/lifecycle/w;->h()Landroidx/lifecycle/n;

    move-result-object v0

    const-string v1, "ProcessLifecycleOwner.get()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Landroidx/lifecycle/n;->getLifecycle()Landroidx/lifecycle/h;

    move-result-object v0

    invoke-direct {p0}, Lcom/revenuecat/purchases/Purchases;->getLifecycleHandler()Lcom/revenuecat/purchases/AppLifecycleHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/h;->c(Landroidx/lifecycle/m;)V

    return-void

    :catchall_0
    move-exception v0

    .line 9
    monitor-exit p0

    throw v0
.end method

.method public final collectDeviceIdentifiers()V
    .locals 3

    const-string v0, "collectDeviceIdentifiers called"

    .line 1
    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->subscriberAttributesManager:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;

    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getAppUserID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/revenuecat/purchases/Purchases;->application:Landroid/app/Application;

    invoke-virtual {v0, v1, v2}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;->collectDeviceIdentifiers(Ljava/lang/String;Landroid/app/Application;)V

    return-void
.end method

.method public final createAlias(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/revenuecat/purchases/Purchases;->createAlias$default(Lcom/revenuecat/purchases/Purchases;Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final createAlias(Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V
    .locals 3

    const-string v0, "newAppUserID"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->identityManager:Lcom/revenuecat/purchases/identity/IdentityManager;

    invoke-virtual {v0}, Lcom/revenuecat/purchases/identity/IdentityManager;->getCurrentAppUserID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->identityManager:Lcom/revenuecat/purchases/identity/IdentityManager;

    .line 3
    new-instance v1, Lcom/revenuecat/purchases/Purchases$createAlias$$inlined$let$lambda$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/revenuecat/purchases/Purchases$createAlias$$inlined$let$lambda$1;-><init>(Lcom/revenuecat/purchases/Purchases;Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V

    .line 4
    new-instance v2, Lcom/revenuecat/purchases/Purchases$createAlias$$inlined$let$lambda$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/revenuecat/purchases/Purchases$createAlias$$inlined$let$lambda$2;-><init>(Lcom/revenuecat/purchases/Purchases;Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V

    .line 5
    invoke-virtual {v0, p1, v1, v2}, Lcom/revenuecat/purchases/identity/IdentityManager;->createAlias(Ljava/lang/String;Lkotlin/w/b/a;Lkotlin/w/b/l;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/revenuecat/purchases/Purchases;->identityManager:Lcom/revenuecat/purchases/identity/IdentityManager;

    invoke-virtual {p1}, Lcom/revenuecat/purchases/identity/IdentityManager;->getCurrentAppUserID()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/revenuecat/purchases/Purchases;->retrievePurchaseInfo(Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V

    :goto_1
    return-void
.end method

.method public final declared-synchronized getAllowSharingPlayStoreAccount()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getState$purchases_release()Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/revenuecat/purchases/PurchasesState;->getAllowSharingPlayStoreAccount()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->identityManager:Lcom/revenuecat/purchases/identity/IdentityManager;

    invoke-virtual {v0}, Lcom/revenuecat/purchases/identity/IdentityManager;->currentUserIsAnonymous()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getAppConfig$purchases_release()Lcom/revenuecat/purchases/common/AppConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->appConfig:Lcom/revenuecat/purchases/common/AppConfig;

    return-object v0
.end method

.method public final declared-synchronized getAppUserID()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->identityManager:Lcom/revenuecat/purchases/identity/IdentityManager;

    invoke-virtual {v0}, Lcom/revenuecat/purchases/identity/IdentityManager;->getCurrentAppUserID()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getFinishTransactions()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->appConfig:Lcom/revenuecat/purchases/common/AppConfig;

    invoke-virtual {v0}, Lcom/revenuecat/purchases/common/AppConfig;->getFinishTransactions()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getNonSubscriptionSkus(Ljava/util/List;Lcom/revenuecat/purchases/interfaces/GetSkusResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/revenuecat/purchases/interfaces/GetSkusResponseListener;",
            ")V"
        }
    .end annotation

    const-string v0, "skus"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inapp"

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lcom/revenuecat/purchases/Purchases;->getSkus(Ljava/util/List;Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/GetSkusResponseListener;)V

    return-void
.end method

.method public final getOfferings(Lcom/revenuecat/purchases/interfaces/ReceiveOfferingsListener;)V
    .locals 8

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->identityManager:Lcom/revenuecat/purchases/identity/IdentityManager;

    invoke-virtual {v0}, Lcom/revenuecat/purchases/identity/IdentityManager;->getCurrentAppUserID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases;->deviceCache:Lcom/revenuecat/purchases/common/caching/DeviceCache;

    invoke-virtual {v1}, Lcom/revenuecat/purchases/common/caching/DeviceCache;->getCachedOfferings()Lcom/revenuecat/purchases/Offerings;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    invoke-virtual {v0}, Lkotlin/l;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/revenuecat/purchases/Offerings;

    if-nez v0, :cond_0

    const-string v0, "No cached offerings, fetching"

    .line 4
    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getState$purchases_release()Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/revenuecat/purchases/PurchasesState;->getAppInBackground()Z

    move-result v0

    invoke-direct {p0, v3, v0, p1}, Lcom/revenuecat/purchases/Purchases;->fetchAndCacheOfferings(Ljava/lang/String;ZLcom/revenuecat/purchases/interfaces/ReceiveOfferingsListener;)V

    goto :goto_0

    :cond_0
    const-string v1, "Vending offerings from cache"

    .line 6
    invoke-static {v1}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 7
    new-instance v1, Lcom/revenuecat/purchases/Purchases$getOfferings$2;

    invoke-direct {v1, p1, v0}, Lcom/revenuecat/purchases/Purchases$getOfferings$2;-><init>(Lcom/revenuecat/purchases/interfaces/ReceiveOfferingsListener;Lcom/revenuecat/purchases/Offerings;)V

    invoke-direct {p0, v1}, Lcom/revenuecat/purchases/Purchases;->dispatch(Lkotlin/w/b/a;)V

    .line 8
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getState$purchases_release()Lcom/revenuecat/purchases/PurchasesState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/revenuecat/purchases/PurchasesState;->getAppInBackground()Z

    move-result v4

    .line 9
    iget-object p1, p0, Lcom/revenuecat/purchases/Purchases;->deviceCache:Lcom/revenuecat/purchases/common/caching/DeviceCache;

    invoke-virtual {p1, v4}, Lcom/revenuecat/purchases/common/caching/DeviceCache;->isOfferingsCacheStale(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Offerings cache is stale, updating cache"

    .line 10
    invoke-static {p1}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    .line 11
    invoke-static/range {v2 .. v7}, Lcom/revenuecat/purchases/Purchases;->fetchAndCacheOfferings$default(Lcom/revenuecat/purchases/Purchases;Ljava/lang/String;ZLcom/revenuecat/purchases/interfaces/ReceiveOfferingsListener;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0

    throw p1
.end method

.method public final getPurchaserInfo(Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->identityManager:Lcom/revenuecat/purchases/identity/IdentityManager;

    invoke-virtual {v0}, Lcom/revenuecat/purchases/identity/IdentityManager;->getCurrentAppUserID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/revenuecat/purchases/Purchases;->retrievePurchaseInfo(Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V

    return-void
.end method

.method public final synthetic declared-synchronized getState$purchases_release()Lcom/revenuecat/purchases/PurchasesState;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->state:Lcom/revenuecat/purchases/PurchasesState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getSubscriptionSkus(Ljava/util/List;Lcom/revenuecat/purchases/interfaces/GetSkusResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/revenuecat/purchases/interfaces/GetSkusResponseListener;",
            ")V"
        }
    .end annotation

    const-string v0, "skus"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subs"

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lcom/revenuecat/purchases/Purchases;->getSkus(Ljava/util/List;Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/GetSkusResponseListener;)V

    return-void
.end method

.method public final declared-synchronized getUpdatedPurchaserInfoListener()Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getState$purchases_release()Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/revenuecat/purchases/PurchasesState;->getUpdatedPurchaserInfoListener()Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final identify(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/revenuecat/purchases/Purchases;->identify$default(Lcom/revenuecat/purchases/Purchases;Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final identify(Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V
    .locals 3

    const-string v0, "newAppUserID"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->identityManager:Lcom/revenuecat/purchases/identity/IdentityManager;

    invoke-virtual {v0}, Lcom/revenuecat/purchases/identity/IdentityManager;->getCurrentAppUserID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->identityManager:Lcom/revenuecat/purchases/identity/IdentityManager;

    .line 3
    new-instance v1, Lcom/revenuecat/purchases/Purchases$identify$$inlined$let$lambda$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/revenuecat/purchases/Purchases$identify$$inlined$let$lambda$1;-><init>(Lcom/revenuecat/purchases/Purchases;Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V

    .line 4
    new-instance v2, Lcom/revenuecat/purchases/Purchases$identify$$inlined$let$lambda$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/revenuecat/purchases/Purchases$identify$$inlined$let$lambda$2;-><init>(Lcom/revenuecat/purchases/Purchases;Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V

    .line 5
    invoke-virtual {v0, p1, v1, v2}, Lcom/revenuecat/purchases/identity/IdentityManager;->identify(Ljava/lang/String;Lkotlin/w/b/a;Lkotlin/w/b/l;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/revenuecat/purchases/Purchases;->identityManager:Lcom/revenuecat/purchases/identity/IdentityManager;

    invoke-virtual {p1}, Lcom/revenuecat/purchases/identity/IdentityManager;->getCurrentAppUserID()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/revenuecat/purchases/Purchases;->retrievePurchaseInfo(Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V

    :goto_1
    return-void
.end method

.method public final invalidatePurchaserInfoCache()V
    .locals 2

    const-string v0, "Invalidating Purchaser info cache"

    .line 1
    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->deviceCache:Lcom/revenuecat/purchases/common/caching/DeviceCache;

    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getAppUserID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/revenuecat/purchases/common/caching/DeviceCache;->clearPurchaserInfoCache(Ljava/lang/String;)V

    return-void
.end method

.method public final isAnonymous()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->identityManager:Lcom/revenuecat/purchases/identity/IdentityManager;

    invoke-virtual {v0}, Lcom/revenuecat/purchases/identity/IdentityManager;->currentUserIsAnonymous()Z

    move-result v0

    return v0
.end method

.method public onAppBackgrounded()V
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getState$purchases_release()Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x5f

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lcom/revenuecat/purchases/PurchasesState;->copy$default(Lcom/revenuecat/purchases/PurchasesState;Ljava/lang/Boolean;Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;Ljava/util/Map;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;Lcom/revenuecat/purchases/PurchaserInfo;ZZILjava/lang/Object;)Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/revenuecat/purchases/Purchases;->setState$purchases_release(Lcom/revenuecat/purchases/PurchasesState;)V

    .line 3
    sget-object v0, Lkotlin/r;->a:Lkotlin/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    const-string v0, "App backgrounded"

    .line 5
    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/revenuecat/purchases/Purchases;->synchronizeSubscriberAttributesIfNeeded()V

    return-void

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    throw v0
.end method

.method public onAppForegrounded()V
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getState$purchases_release()Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/revenuecat/purchases/PurchasesState;->getFirstTimeInForeground()Z

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getState$purchases_release()Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1f

    const/4 v10, 0x0

    invoke-static/range {v1 .. v10}, Lcom/revenuecat/purchases/PurchasesState;->copy$default(Lcom/revenuecat/purchases/PurchasesState;Ljava/lang/Boolean;Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;Ljava/util/Map;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;Lcom/revenuecat/purchases/PurchaserInfo;ZZILjava/lang/Object;)Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/revenuecat/purchases/Purchases;->setState$purchases_release(Lcom/revenuecat/purchases/PurchasesState;)V

    .line 4
    sget-object v1, Lkotlin/r;->a:Lkotlin/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    const-string v1, "App foregrounded"

    .line 6
    invoke-static {v1}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->deviceCache:Lcom/revenuecat/purchases/common/caching/DeviceCache;

    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getAppUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/revenuecat/purchases/common/caching/DeviceCache;->isPurchaserInfoCacheStale(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "PurchaserInfo cache is stale, updating caches"

    .line 8
    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->identityManager:Lcom/revenuecat/purchases/identity/IdentityManager;

    invoke-virtual {v0}, Lcom/revenuecat/purchases/identity/IdentityManager;->getCurrentAppUserID()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/revenuecat/purchases/Purchases;->fetchAndCachePurchaserInfo$default(Lcom/revenuecat/purchases/Purchases;Ljava/lang/String;ZLcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;ILjava/lang/Object;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->deviceCache:Lcom/revenuecat/purchases/common/caching/DeviceCache;

    invoke-virtual {v0, v1}, Lcom/revenuecat/purchases/common/caching/DeviceCache;->isOfferingsCacheStale(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Offerings cache is stale, updating caches"

    .line 11
    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->identityManager:Lcom/revenuecat/purchases/identity/IdentityManager;

    invoke-virtual {v0}, Lcom/revenuecat/purchases/identity/IdentityManager;->getCurrentAppUserID()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/revenuecat/purchases/Purchases;->fetchAndCacheOfferings$default(Lcom/revenuecat/purchases/Purchases;Ljava/lang/String;ZLcom/revenuecat/purchases/interfaces/ReceiveOfferingsListener;ILjava/lang/Object;)V

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->updatePendingPurchaseQueue$purchases_release()V

    .line 14
    invoke-direct {p0}, Lcom/revenuecat/purchases/Purchases;->synchronizeSubscriberAttributesIfNeeded()V

    return-void

    :catchall_0
    move-exception v0

    .line 15
    monitor-exit p0

    throw v0
.end method

.method public final synthetic postAttributionData$purchases_release(Lorg/json/JSONObject;Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;Ljava/lang/String;)V
    .locals 3

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/revenuecat/purchases/util/AdvertisingIdClient;->INSTANCE:Lcom/revenuecat/purchases/util/AdvertisingIdClient;

    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases;->application:Landroid/app/Application;

    new-instance v2, Lcom/revenuecat/purchases/Purchases$postAttributionData$1;

    invoke-direct {v2, p0, p2, p3, p1}, Lcom/revenuecat/purchases/Purchases$postAttributionData$1;-><init>(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1, v2}, Lcom/revenuecat/purchases/util/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/app/Application;Lkotlin/w/b/l;)V

    return-void
.end method

.method public final synthetic postToBackend$purchases_release(Lcom/revenuecat/purchases/common/PurchaseWrapper;Lcom/android/billingclient/api/SkuDetails;ZZLjava/lang/String;Lkotlin/w/b/p;Lkotlin/w/b/p;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/revenuecat/purchases/common/PurchaseWrapper;",
            "Lcom/android/billingclient/api/SkuDetails;",
            "ZZ",
            "Ljava/lang/String;",
            "Lkotlin/w/b/p<",
            "-",
            "Lcom/revenuecat/purchases/common/PurchaseWrapper;",
            "-",
            "Lcom/revenuecat/purchases/PurchaserInfo;",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/p<",
            "-",
            "Lcom/revenuecat/purchases/common/PurchaseWrapper;",
            "-",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v10, p5

    const-string v0, "purchase"

    move-object/from16 v8, p1

    invoke-static {v8, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appUserID"

    invoke-static {v10, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, v7, Lcom/revenuecat/purchases/Purchases;->subscriberAttributesManager:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;

    invoke-virtual {v0, v10}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;->getUnsyncedSubscriberAttributes(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    .line 2
    new-instance v14, Lcom/revenuecat/purchases/common/ProductInfo;

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/revenuecat/purchases/common/PurchaseWrapper;->getSku()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/revenuecat/purchases/common/PurchaseWrapper;->getPresentedOfferingIdentifier()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p2

    .line 5
    invoke-direct {v14, v0, v1, v2}, Lcom/revenuecat/purchases/common/ProductInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/SkuDetails;)V

    .line 6
    iget-object v11, v7, Lcom/revenuecat/purchases/Purchases;->backend:Lcom/revenuecat/purchases/common/Backend;

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/revenuecat/purchases/common/PurchaseWrapper;->getPurchaseToken()Ljava/lang/String;

    move-result-object v12

    xor-int/lit8 v13, p4, 0x1

    .line 8
    invoke-static {v9}, Lcom/revenuecat/purchases/subscriberattributes/BackendHelpersKt;->toBackendMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v15

    .line 9
    new-instance v16, Lcom/revenuecat/purchases/Purchases$postToBackend$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object v3, v9

    move/from16 v4, p4

    move-object/from16 v5, p1

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/revenuecat/purchases/Purchases$postToBackend$1;-><init>(Lcom/revenuecat/purchases/Purchases;Ljava/lang/String;Ljava/util/Map;ZLcom/revenuecat/purchases/common/PurchaseWrapper;Lkotlin/w/b/p;)V

    .line 10
    new-instance v17, Lcom/revenuecat/purchases/Purchases$postToBackend$2;

    move-object/from16 v0, v17

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/revenuecat/purchases/Purchases$postToBackend$2;-><init>(Lcom/revenuecat/purchases/Purchases;Ljava/lang/String;Ljava/util/Map;ZLcom/revenuecat/purchases/common/PurchaseWrapper;Lkotlin/w/b/p;)V

    move-object v8, v11

    move-object v9, v12

    move-object/from16 v10, p5

    move/from16 v11, p3

    move v12, v13

    move-object v13, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    .line 11
    invoke-virtual/range {v8 .. v16}, Lcom/revenuecat/purchases/common/Backend;->postReceiptData(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;Lcom/revenuecat/purchases/common/ProductInfo;Lkotlin/w/b/p;Lkotlin/w/b/q;)V

    return-void
.end method

.method public final purchasePackage(Landroid/app/Activity;Lcom/revenuecat/purchases/Package;Lcom/revenuecat/purchases/UpgradeInfo;Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;)V
    .locals 7

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageToPurchase"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upgradeInfo"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/revenuecat/purchases/Package;->getProduct()Lcom/android/billingclient/api/SkuDetails;

    move-result-object v3

    .line 2
    invoke-virtual {p2}, Lcom/revenuecat/purchases/Package;->getOffering()Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-direct {p0, p4}, Lcom/revenuecat/purchases/Purchases;->toProductChangeListener(Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;)Lcom/revenuecat/purchases/interfaces/ProductChangeListener;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    .line 4
    invoke-direct/range {v1 .. v6}, Lcom/revenuecat/purchases/Purchases;->startProductChange(Landroid/app/Activity;Lcom/android/billingclient/api/SkuDetails;Ljava/lang/String;Lcom/revenuecat/purchases/UpgradeInfo;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;)V

    return-void
.end method

.method public final purchasePackage(Landroid/app/Activity;Lcom/revenuecat/purchases/Package;Lcom/revenuecat/purchases/UpgradeInfo;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;)V
    .locals 7

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageToPurchase"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upgradeInfo"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Lcom/revenuecat/purchases/Package;->getProduct()Lcom/android/billingclient/api/SkuDetails;

    move-result-object v3

    .line 6
    invoke-virtual {p2}, Lcom/revenuecat/purchases/Package;->getOffering()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    move-object v6, p4

    .line 7
    invoke-direct/range {v1 .. v6}, Lcom/revenuecat/purchases/Purchases;->startProductChange(Landroid/app/Activity;Lcom/android/billingclient/api/SkuDetails;Ljava/lang/String;Lcom/revenuecat/purchases/UpgradeInfo;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;)V

    return-void
.end method

.method public final purchasePackage(Landroid/app/Activity;Lcom/revenuecat/purchases/Package;Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageToPurchase"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Lcom/revenuecat/purchases/Package;->getProduct()Lcom/android/billingclient/api/SkuDetails;

    move-result-object v0

    .line 9
    invoke-virtual {p2}, Lcom/revenuecat/purchases/Package;->getOffering()Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/revenuecat/purchases/Purchases;->startPurchase(Landroid/app/Activity;Lcom/android/billingclient/api/SkuDetails;Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;)V

    return-void
.end method

.method public final purchaseProduct(Landroid/app/Activity;Lcom/android/billingclient/api/SkuDetails;Lcom/revenuecat/purchases/UpgradeInfo;Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;)V
    .locals 7

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "skuDetails"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upgradeInfo"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p4}, Lcom/revenuecat/purchases/Purchases;->toProductChangeListener(Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;)Lcom/revenuecat/purchases/interfaces/ProductChangeListener;

    move-result-object v6

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/revenuecat/purchases/Purchases;->startProductChange(Landroid/app/Activity;Lcom/android/billingclient/api/SkuDetails;Ljava/lang/String;Lcom/revenuecat/purchases/UpgradeInfo;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;)V

    return-void
.end method

.method public final purchaseProduct(Landroid/app/Activity;Lcom/android/billingclient/api/SkuDetails;Lcom/revenuecat/purchases/UpgradeInfo;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;)V
    .locals 7

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "skuDetails"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upgradeInfo"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    .line 3
    invoke-direct/range {v1 .. v6}, Lcom/revenuecat/purchases/Purchases;->startProductChange(Landroid/app/Activity;Lcom/android/billingclient/api/SkuDetails;Ljava/lang/String;Lcom/revenuecat/purchases/UpgradeInfo;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;)V

    return-void
.end method

.method public final purchaseProduct(Landroid/app/Activity;Lcom/android/billingclient/api/SkuDetails;Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "skuDetails"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/revenuecat/purchases/Purchases;->startPurchase(Landroid/app/Activity;Lcom/android/billingclient/api/SkuDetails;Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;)V

    return-void
.end method

.method public final removeUpdatedPurchaserInfoListener()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/revenuecat/purchases/Purchases;->setUpdatedPurchaserInfoListener(Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;)V

    return-void
.end method

.method public final reset()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/revenuecat/purchases/Purchases;->reset$default(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final reset(Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->deviceCache:Lcom/revenuecat/purchases/common/caching/DeviceCache;

    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases;->identityManager:Lcom/revenuecat/purchases/identity/IdentityManager;

    invoke-virtual {v1}, Lcom/revenuecat/purchases/identity/IdentityManager;->getCurrentAppUserID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/revenuecat/purchases/common/caching/DeviceCache;->clearLatestAttributionData(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->identityManager:Lcom/revenuecat/purchases/identity/IdentityManager;

    invoke-virtual {v0}, Lcom/revenuecat/purchases/identity/IdentityManager;->reset()V

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getState$purchases_release()Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    const-string v0, "emptyMap()"

    invoke-static {v4, v0}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7b

    const/4 v10, 0x0

    invoke-static/range {v1 .. v10}, Lcom/revenuecat/purchases/PurchasesState;->copy$default(Lcom/revenuecat/purchases/PurchasesState;Ljava/lang/Boolean;Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;Ljava/util/Map;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;Lcom/revenuecat/purchases/PurchaserInfo;ZZILjava/lang/Object;)Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/revenuecat/purchases/Purchases;->setState$purchases_release(Lcom/revenuecat/purchases/PurchasesState;)V

    .line 5
    sget-object v0, Lkotlin/r;->a:Lkotlin/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->identityManager:Lcom/revenuecat/purchases/identity/IdentityManager;

    invoke-virtual {v0}, Lcom/revenuecat/purchases/identity/IdentityManager;->getCurrentAppUserID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/revenuecat/purchases/Purchases;->updateAllCaches(Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V

    return-void

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit p0

    throw p1
.end method

.method public final restorePurchases(Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V
    .locals 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Restoring purchases"

    .line 1
    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getAllowSharingPlayStoreAccount()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "allowSharingPlayStoreAccount is set to false and restorePurchases has been called. This will \'alias\' any app user id\'s sharing the same receipt. Are you sure you want to do this?"

    .line 3
    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getFinishTransactions()Z

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases;->billingWrapper:Lcom/revenuecat/purchases/common/BillingWrapper;

    .line 6
    new-instance v2, Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1;

    invoke-direct {v2, v0, p0, p1}, Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1;-><init>(ZLcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V

    .line 7
    new-instance v0, Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$2;

    invoke-direct {v0, p0, p1}, Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$2;-><init>(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V

    .line 8
    invoke-virtual {v1, v2, v0}, Lcom/revenuecat/purchases/common/BillingWrapper;->queryAllPurchases(Lkotlin/w/b/l;Lkotlin/w/b/l;)V

    return-void
.end method

.method public final setAd(Ljava/lang/String;)V
    .locals 3

    const-string v0, "setAd called"

    .line 1
    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->subscriberAttributesManager:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;

    .line 3
    sget-object v1, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$CampaignParameters$Ad;->INSTANCE:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$CampaignParameters$Ad;

    .line 4
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getAppUserID()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v1, p1, v2}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;->setAttribute(Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setAdGroup(Ljava/lang/String;)V
    .locals 3

    const-string v0, "setAdGroup called"

    .line 1
    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->subscriberAttributesManager:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;

    .line 3
    sget-object v1, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$CampaignParameters$AdGroup;->INSTANCE:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$CampaignParameters$AdGroup;

    .line 4
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getAppUserID()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v1, p1, v2}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;->setAttribute(Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setAdjustID(Ljava/lang/String;)V
    .locals 4

    const-string v0, "setAdjustID called"

    .line 1
    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->subscriberAttributesManager:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;

    .line 3
    sget-object v1, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$AttributionIds$Adjust;->INSTANCE:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$AttributionIds$Adjust;

    .line 4
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getAppUserID()Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/revenuecat/purchases/Purchases;->application:Landroid/app/Application;

    .line 6
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;->setAttributionID(Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$AttributionIds;Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)V

    return-void
.end method

.method public final declared-synchronized setAllowSharingPlayStoreAccount(Z)V
    .locals 10

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getState$purchases_release()Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7e

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lcom/revenuecat/purchases/PurchasesState;->copy$default(Lcom/revenuecat/purchases/PurchasesState;Ljava/lang/Boolean;Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;Ljava/util/Map;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;Lcom/revenuecat/purchases/PurchaserInfo;ZZILjava/lang/Object;)Lcom/revenuecat/purchases/PurchasesState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/revenuecat/purchases/Purchases;->setState$purchases_release(Lcom/revenuecat/purchases/PurchasesState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setAppConfig$purchases_release(Lcom/revenuecat/purchases/common/AppConfig;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/revenuecat/purchases/Purchases;->appConfig:Lcom/revenuecat/purchases/common/AppConfig;

    return-void
.end method

.method public final setAppsflyerID(Ljava/lang/String;)V
    .locals 4

    const-string v0, "setAppsflyerId called"

    .line 1
    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->subscriberAttributesManager:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;

    .line 3
    sget-object v1, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$AttributionIds$AppsFlyer;->INSTANCE:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$AttributionIds$AppsFlyer;

    .line 4
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getAppUserID()Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/revenuecat/purchases/Purchases;->application:Landroid/app/Application;

    .line 6
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;->setAttributionID(Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$AttributionIds;Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)V

    return-void
.end method

.method public final setAttributes(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "attributes"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setAttributes called"

    .line 1
    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->subscriberAttributesManager:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;

    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getAppUserID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;->setAttributes(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public final setCampaign(Ljava/lang/String;)V
    .locals 3

    const-string v0, "setCampaign called"

    .line 1
    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->subscriberAttributesManager:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;

    .line 3
    sget-object v1, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$CampaignParameters$Campaign;->INSTANCE:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$CampaignParameters$Campaign;

    .line 4
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getAppUserID()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v1, p1, v2}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;->setAttribute(Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setCreative(Ljava/lang/String;)V
    .locals 3

    const-string v0, "setCreative called"

    .line 1
    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->subscriberAttributesManager:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;

    .line 3
    sget-object v1, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$CampaignParameters$Creative;->INSTANCE:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$CampaignParameters$Creative;

    .line 4
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getAppUserID()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v1, p1, v2}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;->setAttribute(Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setDisplayName(Ljava/lang/String;)V
    .locals 3

    const-string v0, "setDisplayName called"

    .line 1
    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->subscriberAttributesManager:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;

    .line 3
    sget-object v1, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$DisplayName;->INSTANCE:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$DisplayName;

    .line 4
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getAppUserID()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v1, p1, v2}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;->setAttribute(Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setEmail(Ljava/lang/String;)V
    .locals 3

    const-string v0, "setEmail called"

    .line 1
    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->subscriberAttributesManager:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;

    sget-object v1, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$Email;->INSTANCE:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$Email;

    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getAppUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;->setAttribute(Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setFBAnonymousID(Ljava/lang/String;)V
    .locals 4

    const-string v0, "setFBAnonymousID called"

    .line 1
    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->subscriberAttributesManager:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;

    .line 3
    sget-object v1, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$AttributionIds$Facebook;->INSTANCE:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$AttributionIds$Facebook;

    .line 4
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getAppUserID()Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/revenuecat/purchases/Purchases;->application:Landroid/app/Application;

    .line 6
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;->setAttributionID(Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$AttributionIds;Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)V

    return-void
.end method

.method public final declared-synchronized setFinishTransactions(Z)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->appConfig:Lcom/revenuecat/purchases/common/AppConfig;

    invoke-virtual {v0, p1}, Lcom/revenuecat/purchases/common/AppConfig;->setFinishTransactions(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setKeyword(Ljava/lang/String;)V
    .locals 3

    const-string v0, "setKeyword called"

    .line 1
    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->subscriberAttributesManager:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;

    .line 3
    sget-object v1, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$CampaignParameters$Keyword;->INSTANCE:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$CampaignParameters$Keyword;

    .line 4
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getAppUserID()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v1, p1, v2}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;->setAttribute(Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setMediaSource(Ljava/lang/String;)V
    .locals 3

    const-string v0, "setMediaSource called"

    .line 1
    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->subscriberAttributesManager:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;

    .line 3
    sget-object v1, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$CampaignParameters$MediaSource;->INSTANCE:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$CampaignParameters$MediaSource;

    .line 4
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getAppUserID()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v1, p1, v2}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;->setAttribute(Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setMparticleID(Ljava/lang/String;)V
    .locals 4

    const-string v0, "setMparticleID called"

    .line 1
    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->subscriberAttributesManager:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;

    .line 3
    sget-object v1, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$AttributionIds$Mparticle;->INSTANCE:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$AttributionIds$Mparticle;

    .line 4
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getAppUserID()Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/revenuecat/purchases/Purchases;->application:Landroid/app/Application;

    .line 6
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;->setAttributionID(Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$AttributionIds;Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)V

    return-void
.end method

.method public final setOnesignalID(Ljava/lang/String;)V
    .locals 4

    const-string v0, "setMparticleID called"

    .line 1
    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->subscriberAttributesManager:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;

    .line 3
    sget-object v1, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$AttributionIds$OneSignal;->INSTANCE:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$AttributionIds$OneSignal;

    .line 4
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getAppUserID()Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/revenuecat/purchases/Purchases;->application:Landroid/app/Application;

    .line 6
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;->setAttributionID(Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$AttributionIds;Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)V

    return-void
.end method

.method public final setPhoneNumber(Ljava/lang/String;)V
    .locals 3

    const-string v0, "setPhoneNumber called"

    .line 1
    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->subscriberAttributesManager:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;

    .line 3
    sget-object v1, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$PhoneNumber;->INSTANCE:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$PhoneNumber;

    .line 4
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getAppUserID()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v1, p1, v2}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;->setAttribute(Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setPushToken(Ljava/lang/String;)V
    .locals 3

    const-string v0, "setPushToken called"

    .line 1
    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->subscriberAttributesManager:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;

    .line 3
    sget-object v1, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$FCMTokens;->INSTANCE:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$FCMTokens;

    .line 4
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getAppUserID()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v1, p1, v2}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;->setAttribute(Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic declared-synchronized setState$purchases_release(Lcom/revenuecat/purchases/PurchasesState;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/revenuecat/purchases/Purchases;->state:Lcom/revenuecat/purchases/PurchasesState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setUpdatedPurchaserInfoListener(Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;)V
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases;->getState$purchases_release()Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7d

    const/4 v9, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v9}, Lcom/revenuecat/purchases/PurchasesState;->copy$default(Lcom/revenuecat/purchases/PurchasesState;Ljava/lang/Boolean;Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;Ljava/util/Map;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;Lcom/revenuecat/purchases/PurchaserInfo;ZZILjava/lang/Object;)Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/revenuecat/purchases/Purchases;->setState$purchases_release(Lcom/revenuecat/purchases/PurchasesState;)V

    .line 3
    sget-object v0, Lkotlin/r;->a:Lkotlin/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    .line 5
    invoke-direct {p0, p1}, Lcom/revenuecat/purchases/Purchases;->afterSetListener(Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;)V

    return-void

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit p0

    throw p1
.end method

.method public final syncPurchases()V
    .locals 3

    const-string v0, "Syncing purchases"

    .line 1
    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->billingWrapper:Lcom/revenuecat/purchases/common/BillingWrapper;

    new-instance v1, Lcom/revenuecat/purchases/Purchases$syncPurchases$1;

    invoke-direct {v1, p0}, Lcom/revenuecat/purchases/Purchases$syncPurchases$1;-><init>(Lcom/revenuecat/purchases/Purchases;)V

    .line 3
    sget-object v2, Lcom/revenuecat/purchases/Purchases$syncPurchases$2;->INSTANCE:Lcom/revenuecat/purchases/Purchases$syncPurchases$2;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/revenuecat/purchases/common/BillingWrapper;->queryAllPurchases(Lkotlin/w/b/l;Lkotlin/w/b/l;)V

    return-void
.end method

.method public final synthetic updatePendingPurchaseQueue$purchases_release()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->billingWrapper:Lcom/revenuecat/purchases/common/BillingWrapper;

    invoke-virtual {v0}, Lcom/revenuecat/purchases/common/BillingWrapper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[QueryPurchases] Updating pending purchase queue"

    .line 2
    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases;->dispatcher:Lcom/revenuecat/purchases/common/Dispatcher;

    new-instance v1, Lcom/revenuecat/purchases/Purchases$updatePendingPurchaseQueue$1;

    invoke-direct {v1, p0}, Lcom/revenuecat/purchases/Purchases$updatePendingPurchaseQueue$1;-><init>(Lcom/revenuecat/purchases/Purchases;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/revenuecat/purchases/common/Dispatcher;->enqueue$default(Lcom/revenuecat/purchases/common/Dispatcher;Ljava/lang/Runnable;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "[QueryPurchases] Skipping updating pending purchase queue since BillingClient is not connected yet"

    .line 4
    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
