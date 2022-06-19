.class public Lcom/amazon/device/ads/DTBAdRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/DTBAdLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/DTBAdRequest$WrapperReport;
    }
.end annotation


# static fields
.field private static final DEFAULT_RERESH_DURATION:I = 0x3c

.field private static final LOG_TAG:Ljava/lang/String; = "DTBAdRequest"

.field private static final MIN_REFRESH_DURATION:I = 0x14

.field private static final MRAID_VALID_VERSIONS:[Ljava/lang/String;

.field private static final WEEK:J = 0x240c8400L

.field public static mRaidArray:Lorg/json/JSONArray; = null

.field private static mRaidCustomArray:Lorg/json/JSONArray; = null

.field private static mRaidDefined:Z = false


# instance fields
.field private volatile adError:Lcom/amazon/device/ads/AdError;

.field private adResponse:Lcom/amazon/device/ads/DTBAdResponse;

.field private final adSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/device/ads/DTBAdSize;",
            ">;"
        }
    .end annotation
.end field

.field private callback:Lcom/amazon/device/ads/DTBAdCallback;

.field private context:Landroid/content/Context;

.field private final customTargets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isAutoRefresh:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mRefreshRunnable:Ljava/lang/Runnable;

.field private refreshDuration:I

.field private requestHasBeenUsed:Z

.field private final sizeSlotUUIDMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private slotGroup:Ljava/lang/String;

.field private submitMetrics:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "1.0"

    const-string v1, "2.0"

    const-string v2, "3.0"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/DTBAdRequest;->MRAID_VALID_VERSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->adSizes:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->customTargets:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->sizeSlotUUIDMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->adError:Lcom/amazon/device/ads/AdError;

    const/4 v1, 0x0

    .line 27
    iput-boolean v1, p0, Lcom/amazon/device/ads/DTBAdRequest;->requestHasBeenUsed:Z

    const/4 v2, 0x1

    .line 28
    iput-boolean v2, p0, Lcom/amazon/device/ads/DTBAdRequest;->submitMetrics:Z

    .line 29
    iput-boolean v1, p0, Lcom/amazon/device/ads/DTBAdRequest;->isAutoRefresh:Z

    .line 30
    iput v1, p0, Lcom/amazon/device/ads/DTBAdRequest;->refreshDuration:I

    .line 31
    new-instance v1, Le/c/b/a/b0;

    invoke-direct {v1, p0}, Le/c/b/a/b0;-><init>(Lcom/amazon/device/ads/DTBAdRequest;)V

    iput-object v1, p0, Lcom/amazon/device/ads/DTBAdRequest;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 32
    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->slotGroup:Ljava/lang/String;

    .line 33
    :try_start_0
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mDTB was not initialized, please use AdRegistration.getInstance(...) before using other SDK calls"

    .line 34
    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->warn(Ljava/lang/String;)V

    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 36
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->context:Landroid/content/Context;

    .line 37
    :cond_1
    sget-boolean v0, Lcom/amazon/device/ads/DTBAdRequest;->mRaidDefined:Z

    if-nez v0, :cond_2

    .line 38
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdRequest;->defineMraid()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 39
    sget-object v1, Lcom/amazon/device/ads/DTBAdRequest;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Fail to initialize DTBAdRequest class"

    invoke-static {v1, v2}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    sget-object v1, Le/c/a/a/b/b;->a:Le/c/a/a/b/b;

    sget-object v3, Le/c/a/a/b/c;->a:Le/c/a/a/b/c;

    invoke-static {v1, v3, v2, v0}, Le/c/a/a/a;->a(Le/c/a/a/b/b;Le/c/a/a/b/c;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->adSizes:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->customTargets:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->sizeSlotUUIDMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->adError:Lcom/amazon/device/ads/AdError;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/amazon/device/ads/DTBAdRequest;->requestHasBeenUsed:Z

    const/4 v2, 0x1

    .line 7
    iput-boolean v2, p0, Lcom/amazon/device/ads/DTBAdRequest;->submitMetrics:Z

    .line 8
    iput-boolean v1, p0, Lcom/amazon/device/ads/DTBAdRequest;->isAutoRefresh:Z

    .line 9
    iput v1, p0, Lcom/amazon/device/ads/DTBAdRequest;->refreshDuration:I

    .line 10
    new-instance v1, Le/c/b/a/b0;

    invoke-direct {v1, p0}, Le/c/b/a/b0;-><init>(Lcom/amazon/device/ads/DTBAdRequest;)V

    iput-object v1, p0, Lcom/amazon/device/ads/DTBAdRequest;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 11
    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->slotGroup:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 12
    :try_start_0
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "mDTB was not initialized, please use AdRegistration.getInstance(...) before using other SDK calls"

    .line 13
    invoke-static {p1}, Lcom/amazon/device/ads/DtbLog;->warn(Ljava/lang/String;)V

    return-void

    .line 14
    :cond_0
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 15
    invoke-static {p1}, Lcom/amazon/device/ads/AdRegistration;->setContext(Landroid/content/Context;)V

    .line 16
    :cond_1
    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdRequest;->context:Landroid/content/Context;

    .line 17
    sget-boolean p1, Lcom/amazon/device/ads/DTBAdRequest;->mRaidDefined:Z

    if-nez p1, :cond_2

    .line 18
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdRequest;->defineMraid()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    sget-object v0, Lcom/amazon/device/ads/DTBAdRequest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Fail to initialize DTBAdRequest class with context argument"

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    sget-object v0, Le/c/a/a/b/b;->a:Le/c/a/a/b/b;

    sget-object v2, Le/c/a/a/b/c;->a:Le/c/a/a/b/c;

    invoke-static {v0, v2, v1, p1}, Le/c/a/a/a;->a(Le/c/a/a/b/b;Le/c/a/a/b/c;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    :goto_0
    return-void

    .line 21
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unable to initialize ad request with null app context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addGDPRParameters(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/DTBAdRequest;->addGDPRParametersFromPreferences(Ljava/util/Map;Landroid/content/SharedPreferences;)V

    :cond_0
    return-void
.end method

.method private addMraidParameters(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/amazon/device/ads/DTBAdRequest;->mRaidArray:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    sget-object v0, Lcom/amazon/device/ads/DTBAdRequest;->mRaidArray:Lorg/json/JSONArray;

    const-string v1, "mraid"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private detectWrapper(Ljava/lang/Object;)Lcom/amazon/device/ads/DTBAdRequest$WrapperReport;
    .locals 8

    .line 1
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 5
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "."

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    const/4 v5, 0x2

    if-lt v3, v5, :cond_1

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    if-lt v3, v5, :cond_1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_2

    .line 8
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 10
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 11
    new-instance v1, Lcom/amazon/device/ads/DTBAdRequest$WrapperReport;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/DTBAdRequest$WrapperReport;-><init>(Lcom/amazon/device/ads/DTBAdRequest;)V

    .line 12
    iput-object p1, v1, Lcom/amazon/device/ads/DTBAdRequest$WrapperReport;->expectedPackage:Ljava/lang/String;

    .line 13
    iput-object v0, v1, Lcom/amazon/device/ads/DTBAdRequest$WrapperReport;->wrapperPackage:Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_1
    new-instance v1, Lcom/amazon/device/ads/DTBAdRequest$WrapperReport;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/DTBAdRequest$WrapperReport;-><init>(Lcom/amazon/device/ads/DTBAdRequest;)V

    .line 15
    iput-object v0, v1, Lcom/amazon/device/ads/DTBAdRequest$WrapperReport;->expectedPackage:Ljava/lang/String;

    .line 16
    iput-object p1, v1, Lcom/amazon/device/ads/DTBAdRequest$WrapperReport;->wrapperPackage:Ljava/lang/String;

    :catch_0
    :cond_2
    :goto_1
    return-object v1
.end method

.method private internalLoadAd()V
    .locals 2

    const-string v0, "Loading DTB ad."

    .line 1
    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->debug(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/amazon/device/ads/DtbThreadService;->getInstance()Lcom/amazon/device/ads/DtbThreadService;

    move-result-object v0

    new-instance v1, Le/c/b/a/a0;

    invoke-direct {v1, p0}, Le/c/b/a/a0;-><init>(Lcom/amazon/device/ads/DTBAdRequest;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DtbThreadService;->execute(Ljava/lang/Runnable;)V

    const-string v0, "Dispatched the loadAd task on a background thread."

    .line 3
    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method private loadAd(Lcom/amazon/device/ads/DTBAdCallback;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/ads/DTBLoadException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/amazon/device/ads/AdType;->DISPLAY:Lcom/amazon/device/ads/AdType;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/device/ads/DTBAdRequest;->loadAd(Lcom/amazon/device/ads/DTBAdCallback;IILcom/amazon/device/ads/AdType;)V

    return-void
.end method

.method private loadAd(Lcom/amazon/device/ads/DTBAdCallback;IILcom/amazon/device/ads/AdType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/ads/DTBLoadException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->slotGroup:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/device/ads/AdRegistration;->getSlotGroup(Ljava/lang/String;)Lcom/amazon/device/ads/AdRegistration$SlotGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0, p2, p3, p4}, Lcom/amazon/device/ads/AdRegistration$SlotGroup;->getSizeByWidthHeightType(IILcom/amazon/device/ads/AdType;)Lcom/amazon/device/ads/DTBAdSize;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 p3, 0x1

    new-array p3, p3, [Lcom/amazon/device/ads/DTBAdSize;

    const/4 p4, 0x0

    aput-object p2, p3, p4

    .line 10
    invoke-virtual {p0, p3}, Lcom/amazon/device/ads/DTBAdRequest;->setSizes([Lcom/amazon/device/ads/DTBAdSize;)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdRequest;->loadAd(Lcom/amazon/device/ads/DTBAdCallback;)V

    return-void

    .line 12
    :cond_0
    new-instance p1, Lcom/amazon/device/ads/DTBLoadException;

    const-string p2, "Slot group does not contain required size of a given type"

    invoke-direct {p1, p2}, Lcom/amazon/device/ads/DTBLoadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_1
    new-instance p1, Lcom/amazon/device/ads/DTBLoadException;

    const-string p2, "Slot group is not found"

    invoke-direct {p1, p2}, Lcom/amazon/device/ads/DTBLoadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private loadAd(Lcom/amazon/device/ads/DTBAdCallback;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/ads/DTBLoadException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->slotGroup:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/device/ads/AdRegistration;->getSlotGroup(Ljava/lang/String;)Lcom/amazon/device/ads/AdRegistration$SlotGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p2}, Lcom/amazon/device/ads/AdRegistration$SlotGroup;->getSizeBySlotUUID(Ljava/lang/String;)Lcom/amazon/device/ads/DTBAdSize;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/device/ads/DTBAdSize;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 3
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DTBAdRequest;->setSizes([Lcom/amazon/device/ads/DTBAdSize;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdRequest;->loadAd(Lcom/amazon/device/ads/DTBAdCallback;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Lcom/amazon/device/ads/DTBLoadException;

    const-string p2, "Slot group does not contain requested slotUUID"

    invoke-direct {p1, p2}, Lcom/amazon/device/ads/DTBLoadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Lcom/amazon/device/ads/DTBLoadException;

    const-string p2, "Slot group is not found"

    invoke-direct {p1, p2}, Lcom/amazon/device/ads/DTBLoadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private loadAdRequest()V
    .locals 15

    const-string v0, "crid"

    const-string v1, "i"

    const-string v2, "kvp"

    const-string v3, "v"

    const-string v4, "ads"

    const-string v5, "instrPixelURL"

    const-string v6, "Ad call did not complete successfully."

    const-string v7, "application/json"

    const-string v8, "errorCode"

    .line 1
    iget-boolean v9, p0, Lcom/amazon/device/ads/DTBAdRequest;->isAutoRefresh:Z

    if-eqz v9, :cond_2

    .line 2
    iget-object v9, p0, Lcom/amazon/device/ads/DTBAdRequest;->adSizes:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amazon/device/ads/DTBAdSize;

    .line 3
    invoke-virtual {v10}, Lcom/amazon/device/ads/DTBAdSize;->getDTBAdType()Lcom/amazon/device/ads/AdType;

    move-result-object v11

    sget-object v12, Lcom/amazon/device/ads/AdType;->INTERSTITIAL:Lcom/amazon/device/ads/AdType;

    if-eq v11, v12, :cond_1

    invoke-virtual {v10}, Lcom/amazon/device/ads/DTBAdSize;->getDTBAdType()Lcom/amazon/device/ads/AdType;

    move-result-object v10

    sget-object v11, Lcom/amazon/device/ads/AdType;->VIDEO:Lcom/amazon/device/ads/AdType;

    if-ne v10, v11, :cond_0

    :cond_1
    const/4 v9, 0x0

    .line 4
    iput-boolean v9, p0, Lcom/amazon/device/ads/DTBAdRequest;->isAutoRefresh:Z

    const-string v9, "Autorefresh could not be used for interstitial or video"

    .line 5
    invoke-static {v9}, Lcom/amazon/device/ads/DtbLog;->warn(Ljava/lang/String;)V

    .line 6
    :cond_2
    new-instance v9, Lcom/amazon/device/ads/DtbMetrics;

    invoke-direct {v9}, Lcom/amazon/device/ads/DtbMetrics;-><init>()V

    .line 7
    new-instance v10, Lcom/amazon/device/ads/DtbAdRequestParamsBuilder;

    invoke-direct {v10}, Lcom/amazon/device/ads/DtbAdRequestParamsBuilder;-><init>()V

    .line 8
    iget-object v11, p0, Lcom/amazon/device/ads/DTBAdRequest;->context:Landroid/content/Context;

    iget-object v12, p0, Lcom/amazon/device/ads/DTBAdRequest;->adSizes:Ljava/util/List;

    iget-object v13, p0, Lcom/amazon/device/ads/DTBAdRequest;->customTargets:Ljava/util/Map;

    invoke-virtual {v10, v11, v12, v13}, Lcom/amazon/device/ads/DtbAdRequestParamsBuilder;->getParams(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v10

    .line 9
    invoke-direct {p0, v10}, Lcom/amazon/device/ads/DTBAdRequest;->addGDPRParameters(Ljava/util/Map;)V

    .line 10
    invoke-direct {p0, v10}, Lcom/amazon/device/ads/DTBAdRequest;->addMraidParameters(Ljava/util/Map;)V

    .line 11
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->getInstance()Lcom/amazon/device/ads/DtbSharedPreferences;

    move-result-object v11

    invoke-virtual {v11}, Lcom/amazon/device/ads/DtbSharedPreferences;->getAaxHostname()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amazon/device/ads/DtbDebugProperties;->getAaxHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 12
    iget-object v12, p0, Lcom/amazon/device/ads/DTBAdRequest;->adSizes:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/amazon/device/ads/DTBAdSize;

    .line 13
    sget-object v14, Lcom/amazon/device/ads/AdType;->VIDEO:Lcom/amazon/device/ads/AdType;

    invoke-virtual {v13}, Lcom/amazon/device/ads/DTBAdSize;->getDTBAdType()Lcom/amazon/device/ads/AdType;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 14
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->getInstance()Lcom/amazon/device/ads/DtbSharedPreferences;

    move-result-object v11

    invoke-virtual {v11}, Lcom/amazon/device/ads/DtbSharedPreferences;->getRoute53EnabledCNAME()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amazon/device/ads/DtbDebugProperties;->getRoute53EnabledCNAME(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 15
    :cond_4
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "/e/msdk/ads"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/amazon/device/ads/DtbDebugProperties;->getEncodedUrlParams()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_5

    const/16 v13, 0x3f

    .line 17
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/device/ads/DtbDebugProperties;->getEncodedUrlParams()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    :cond_5
    new-instance v13, Lcom/amazon/device/ads/DtbHttpClient;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v12}, Lcom/amazon/device/ads/DtbHttpClient;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x1

    .line 19
    invoke-static {v12}, Lcom/amazon/device/ads/DtbDebugProperties;->getIsSecure(Z)Z

    move-result v14

    invoke-virtual {v13, v14}, Lcom/amazon/device/ads/DtbHttpClient;->setUseSecure(Z)V

    const-string v14, "Accept"

    .line 20
    invoke-virtual {v13, v14, v7}, Lcom/amazon/device/ads/DtbHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "Content-Type"

    .line 21
    invoke-virtual {v13, v14, v7}, Lcom/amazon/device/ads/DtbHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v13, v10}, Lcom/amazon/device/ads/DtbHttpClient;->setParams(Ljava/util/HashMap;)V

    .line 23
    invoke-virtual {p0, v10}, Lcom/amazon/device/ads/DTBAdRequest;->onRequestFormed(Ljava/util/HashMap;)V

    .line 24
    sget-object v7, Lcom/amazon/device/ads/DtbMetric;->AAX_BID_TIME:Lcom/amazon/device/ads/DtbMetric;

    invoke-virtual {v9, v7}, Lcom/amazon/device/ads/DtbMetrics;->startTimer(Lcom/amazon/device/ads/DtbMetric;)V

    .line 25
    invoke-virtual {v13}, Lcom/amazon/device/ads/DtbHttpClient;->executePOST()V

    const-string v10, "Ad call completed."

    .line 26
    invoke-static {v10}, Lcom/amazon/device/ads/DtbLog;->debug(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v13}, Lcom/amazon/device/ads/DtbHttpClient;->getResponse()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/amazon/device/ads/DtbCommonUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_14

    .line 28
    invoke-virtual {v9, v7}, Lcom/amazon/device/ads/DtbMetrics;->stopTimer(Lcom/amazon/device/ads/DtbMetric;)V

    .line 29
    new-instance v7, Lorg/json/JSONTokener;

    .line 30
    invoke-virtual {v13}, Lcom/amazon/device/ads/DtbHttpClient;->getResponse()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    if-eqz v7, :cond_6

    .line 31
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Bid Response:"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/amazon/device/ads/DtbLog;->debug(Ljava/lang/String;)V

    :cond_6
    if-eqz v7, :cond_13

    .line 32
    invoke-virtual {v13}, Lcom/amazon/device/ads/DtbHttpClient;->getResponseCode()I

    move-result v10

    const/16 v13, 0xc8

    if-ne v10, v13, :cond_13

    .line 33
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 34
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 35
    invoke-virtual {v9, v5}, Lcom/amazon/device/ads/DtbMetrics;->setInstPxlUrl(Ljava/lang/String;)V

    .line 36
    :cond_7
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "200"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 37
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 38
    new-instance v5, Lcom/amazon/device/ads/DTBAdResponse;

    invoke-direct {v5}, Lcom/amazon/device/ads/DTBAdResponse;-><init>()V

    iput-object v5, p0, Lcom/amazon/device/ads/DTBAdRequest;->adResponse:Lcom/amazon/device/ads/DTBAdResponse;

    .line 39
    invoke-virtual {v5, v11}, Lcom/amazon/device/ads/DTBAdResponse;->setHostName(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_10

    .line 41
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 42
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 43
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 44
    iget-object v8, p0, Lcom/amazon/device/ads/DTBAdRequest;->adResponse:Lcom/amazon/device/ads/DTBAdResponse;

    const-string v10, "b"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/amazon/device/ads/DTBAdResponse;->setBidId(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 46
    iget-object v8, p0, Lcom/amazon/device/ads/DTBAdRequest;->adResponse:Lcom/amazon/device/ads/DTBAdResponse;

    invoke-virtual {v8, v12}, Lcom/amazon/device/ads/DTBAdResponse;->setVideo(Z)V

    .line 47
    :cond_8
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v8, :cond_9

    .line 48
    :try_start_1
    iget-object v8, p0, Lcom/amazon/device/ads/DTBAdRequest;->adResponse:Lcom/amazon/device/ads/DTBAdResponse;

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/amazon/device/ads/DTBAdResponse;->setKvpDictionary(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v8

    .line 49
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Malformed kvp value from ad response: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amazon/device/ads/DtbLog;->debug(Ljava/lang/String;)V

    :cond_9
    :goto_2
    const-string v8, "sz"

    .line 50
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 51
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 52
    iget-object v10, p0, Lcom/amazon/device/ads/DTBAdRequest;->adResponse:Lcom/amazon/device/ads/DTBAdResponse;

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/amazon/device/ads/DTBAdResponse;->setImpressionUrl(Ljava/lang/String;)V

    .line 53
    :cond_a
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 54
    iget-object v10, p0, Lcom/amazon/device/ads/DTBAdRequest;->adResponse:Lcom/amazon/device/ads/DTBAdResponse;

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Lcom/amazon/device/ads/DTBAdResponse;->setCrid(Ljava/lang/String;)V

    .line 55
    :cond_b
    sget-object v7, Lcom/amazon/device/ads/AdType;->DISPLAY:Lcom/amazon/device/ads/AdType;

    const-string v10, "9999x9999"

    .line 56
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 57
    sget-object v7, Lcom/amazon/device/ads/AdType;->INTERSTITIAL:Lcom/amazon/device/ads/AdType;

    goto :goto_3

    .line 58
    :cond_c
    iget-object v10, p0, Lcom/amazon/device/ads/DTBAdRequest;->adResponse:Lcom/amazon/device/ads/DTBAdResponse;

    invoke-virtual {v10}, Lcom/amazon/device/ads/DTBAdResponse;->isVideo()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 59
    sget-object v7, Lcom/amazon/device/ads/AdType;->VIDEO:Lcom/amazon/device/ads/AdType;

    .line 60
    :cond_d
    :goto_3
    new-instance v10, Lcom/amazon/device/ads/DtbPricePoint;

    iget-object v11, p0, Lcom/amazon/device/ads/DTBAdRequest;->sizeSlotUUIDMap:Ljava/util/Map;

    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v10, v6, v8, v11, v7}, Lcom/amazon/device/ads/DtbPricePoint;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/AdType;)V

    .line 61
    iget-object v6, p0, Lcom/amazon/device/ads/DTBAdRequest;->adResponse:Lcom/amazon/device/ads/DTBAdResponse;

    invoke-virtual {v6, v10}, Lcom/amazon/device/ads/DTBAdResponse;->putPricePoint(Lcom/amazon/device/ads/DtbPricePoint;)V

    goto/16 :goto_1

    .line 62
    :cond_e
    new-instance v0, Lcom/amazon/device/ads/AdError;

    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->NO_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v2, "Ad loaded successfully."

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->adError:Lcom/amazon/device/ads/AdError;

    .line 63
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->hasAdapters()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 64
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->adResponse:Lcom/amazon/device/ads/DTBAdResponse;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdResponse;->getBidId()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {}, Lcom/amazon/device/ads/DTBBidInspector;->getInstance()Lcom/amazon/device/ads/DTBBidInspector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/DTBBidInspector;->addBid(Ljava/lang/String;)V

    :cond_f
    const-string v0, "Ad call response successfully proccessed."

    .line 66
    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_10
    const-string v0, "No pricepoint returned from ad server"

    .line 67
    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->debug(Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/amazon/device/ads/DtbMetric;->AAX_PUNTED:Lcom/amazon/device/ads/DtbMetric;

    invoke-virtual {v9, v0}, Lcom/amazon/device/ads/DtbMetrics;->incrementMetric(Lcom/amazon/device/ads/DtbMetric;)V

    .line 69
    new-instance v0, Lcom/amazon/device/ads/AdError;

    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->NO_FILL:Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v2, "No pricepoint returned from ad server."

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->adError:Lcom/amazon/device/ads/AdError;

    goto/16 :goto_5

    .line 70
    :cond_11
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "400"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "Ad Server punted due to invalid request."

    .line 71
    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->debug(Ljava/lang/String;)V

    .line 72
    new-instance v0, Lcom/amazon/device/ads/AdError;

    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->REQUEST_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v2, "Invalid request passed to AdServer."

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->adError:Lcom/amazon/device/ads/AdError;

    goto :goto_4

    :cond_12
    const-string v0, "No ad returned from ad server"

    .line 73
    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->debug(Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/amazon/device/ads/AdError;

    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->NO_FILL:Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v2, "No Ad returned by AdServer."

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->adError:Lcom/amazon/device/ads/AdError;

    .line 75
    :goto_4
    sget-object v0, Lcom/amazon/device/ads/DtbMetric;->AAX_PUNTED:Lcom/amazon/device/ads/DtbMetric;

    invoke-virtual {v9, v0}, Lcom/amazon/device/ads/DtbMetrics;->incrementMetric(Lcom/amazon/device/ads/DtbMetric;)V

    goto :goto_5

    .line 76
    :cond_13
    invoke-static {v6}, Lcom/amazon/device/ads/DtbLog;->debug(Ljava/lang/String;)V

    .line 77
    new-instance v0, Lcom/amazon/device/ads/AdError;

    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->NETWORK_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    invoke-direct {v0, v1, v6}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->adError:Lcom/amazon/device/ads/AdError;

    .line 78
    sget-object v0, Lcom/amazon/device/ads/DtbMetric;->AAX_NETWORK_FAILURE:Lcom/amazon/device/ads/DtbMetric;

    invoke-virtual {v9, v0}, Lcom/amazon/device/ads/DtbMetrics;->incrementMetric(Lcom/amazon/device/ads/DtbMetric;)V

    goto :goto_5

    :cond_14
    const-string v0, "No response from Ad call."

    .line 79
    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->debug(Ljava/lang/String;)V

    .line 80
    new-instance v0, Lcom/amazon/device/ads/AdError;

    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->INTERNAL_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v2, "Response is null."

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->adError:Lcom/amazon/device/ads/AdError;

    .line 81
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Response is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    const-string v1, "Internal error occurred in ad call: "

    .line 82
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->debug(Ljava/lang/String;)V

    .line 83
    new-instance v0, Lcom/amazon/device/ads/AdError;

    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->INTERNAL_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v2, "Internal error occurred in ad call."

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->adError:Lcom/amazon/device/ads/AdError;

    goto :goto_5

    :catch_2
    move-exception v0

    const-string v1, "Malformed response from ad call: "

    .line 84
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->debug(Ljava/lang/String;)V

    .line 85
    new-instance v0, Lcom/amazon/device/ads/AdError;

    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->INTERNAL_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v2, "Malformed response from ad call."

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->adError:Lcom/amazon/device/ads/AdError;

    .line 86
    :goto_5
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->adError:Lcom/amazon/device/ads/AdError;

    if-nez v0, :cond_15

    const-string v0, "UNEXPECTED ERROR in ad call !!"

    .line 87
    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->debug(Ljava/lang/String;)V

    .line 88
    :cond_15
    invoke-direct {p0, v9}, Lcom/amazon/device/ads/DTBAdRequest;->triggerCallBack(Lcom/amazon/device/ads/DtbMetrics;)V

    return-void
.end method

.method private refreshAd()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->isAutoRefresh:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->refreshDuration:I

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdRequest;->context:Landroid/content/Context;

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 3
    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    .line 4
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/amazon/device/ads/DtbCommonUtils;->isActivityDestroyed(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "Stopping DTB auto refresh..."

    .line 5
    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->info(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdRequest;->stop()V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Skipping DTB auto refresh...activity not in focus"

    .line 8
    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->debug(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdRequest;->scheduleAdRefreshIfEnabled()V

    goto :goto_0

    .line 10
    :cond_2
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdRequest;->internalLoadAd()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static resetMraid()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/amazon/device/ads/DTBAdRequest;->mRaidArray:Lorg/json/JSONArray;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/amazon/device/ads/DTBAdRequest;->mRaidDefined:Z

    return-void
.end method

.method private scheduleAdRefreshIfEnabled()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->isAutoRefresh:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->refreshDuration:I

    if-lez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdRequest;->stopAutoRefresh()V

    .line 3
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdRequest;->mRefreshRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/amazon/device/ads/DTBAdRequest;->refreshDuration:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static setMRAIDSupportedVersions([Ljava/lang/String;)V
    .locals 7

    if-eqz p0, :cond_2

    .line 1
    array-length v0, p0

    if-lez v0, :cond_2

    .line 2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/DTBAdRequest;->mRaidCustomArray:Lorg/json/JSONArray;

    .line 3
    sget-object v0, Lcom/amazon/device/ads/DTBAdRequest;->MRAID_VALID_VERSIONS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 4
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    if-nez v3, :cond_0

    .line 5
    sget-object v3, Lcom/amazon/device/ads/DTBAdRequest;->LOG_TAG:Ljava/lang/String;

    const-string v4, "null custom version supplied"

    invoke-static {v3, v4}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 7
    sget-object v4, Lcom/amazon/device/ads/DTBAdRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "custom version \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" is not valid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/device/ads/DtbLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    sget-object v4, Lcom/amazon/device/ads/DTBAdRequest;->mRaidCustomArray:Lorg/json/JSONArray;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {}, Lcom/amazon/device/ads/DTBAdRequest;->resetMraid()V

    return-void
.end method

.method private setRefreshDuration(I)V
    .locals 1

    const/16 v0, 0x14

    if-ge p1, v0, :cond_0

    .line 1
    sget-object p1, Lcom/amazon/device/ads/DTBAdRequest;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Defaulting auto refresh duration to 60 seconds."

    invoke-static {p1, v0}, Lcom/amazon/device/ads/DtbLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3c

    .line 2
    iput p1, p0, Lcom/amazon/device/ads/DTBAdRequest;->refreshDuration:I

    goto :goto_0

    .line 3
    :cond_0
    iput p1, p0, Lcom/amazon/device/ads/DTBAdRequest;->refreshDuration:I

    :goto_0
    return-void
.end method

.method private stopAutoRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private triggerCallBack(Lcom/amazon/device/ads/DtbMetrics;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdRequest;->scheduleAdRefreshIfEnabled()V

    .line 2
    sget-object v0, Lcom/amazon/device/ads/DTBAdRequest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Forwarding the error handling to view on main thread."

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DtbLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/c/b/a/z;

    invoke-direct {v0, p0, p1}, Le/c/b/a/z;-><init>(Lcom/amazon/device/ads/DTBAdRequest;Lcom/amazon/device/ads/DtbMetrics;)V

    invoke-static {v0}, Lcom/amazon/device/ads/DtbThreadService;->executeOnMainThread(Ljava/lang/Runnable;)V

    .line 4
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->submitMetrics:Z

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcom/amazon/device/ads/DtbMetrics$Submitter;->INSTANCE:Lcom/amazon/device/ads/DtbMetrics$Submitter;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/DtbMetrics$Submitter;->submitMetrics(Lcom/amazon/device/ads/DtbMetrics;)V

    :cond_0
    return-void
.end method

.method private useDFP(Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;)V
    .locals 4

    .line 1
    iget v0, p1, Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;->majorVersion:I

    if-lez v0, :cond_3

    .line 2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/DTBAdRequest;->mRaidArray:Lorg/json/JSONArray;

    const-string v1, "1.0"

    .line 3
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 4
    iget v0, p1, Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;->majorVersion:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget v2, p1, Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;->minorVersion:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    :cond_0
    if-le v0, v1, :cond_2

    .line 5
    :cond_1
    sget-object v0, Lcom/amazon/device/ads/DTBAdRequest;->mRaidArray:Lorg/json/JSONArray;

    const-string v1, "2.0"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 6
    :cond_2
    iget p1, p1, Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;->majorVersion:I

    const/16 v0, 0xf

    if-lt p1, v0, :cond_3

    .line 7
    sget-object p1, Lcom/amazon/device/ads/DTBAdRequest;->mRaidArray:Lorg/json/JSONArray;

    const-string v0, "3.0"

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_3
    return-void
.end method

.method private useMoPUB(Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;->majorVersion:I

    if-lez v0, :cond_2

    .line 2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/DTBAdRequest;->mRaidArray:Lorg/json/JSONArray;

    const-string v1, "1.0"

    .line 3
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 4
    iget v0, p1, Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;->majorVersion:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget p1, p1, Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;->minorVersion:I

    if-ge p1, v1, :cond_1

    :cond_0
    if-le v0, v1, :cond_2

    .line 5
    :cond_1
    sget-object p1, Lcom/amazon/device/ads/DTBAdRequest;->mRaidArray:Lorg/json/JSONArray;

    const-string v0, "2.0"

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    return-void
.end method

.method private wrapperDetectionNeeded()Z
    .locals 9

    .line 1
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->getInstance()Lcom/amazon/device/ads/DtbSharedPreferences;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/amazon/device/ads/DtbSharedPreferences;->getWrapperDetectionLastPing()Ljava/lang/Long;

    move-result-object v1

    .line 3
    invoke-static {}, Le/d/c/a/a;->c()J

    move-result-wide v2

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v2, v5

    const-wide/32 v7, 0x240c8400

    cmp-long v1, v5, v7

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {v0, v2, v3}, Lcom/amazon/device/ads/DtbSharedPreferences;->saveWrapperDetectionLastPing(J)V

    :cond_2
    return v4
.end method


# virtual methods
.method public synthetic a()V
    .locals 2

    const-string v0, "Fetching DTB ad."

    .line 1
    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->info(Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdRequest;->loadAdRequest()V

    const-string v0, "DTB Ad call is complete"

    .line 3
    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    sget-object v0, Lcom/amazon/device/ads/DTBAdRequest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Unknown exception in DTB ad call process."

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public addGDPRParametersFromPreferences(Ljava/util/Map;Landroid/content/SharedPreferences;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/SharedPreferences;",
            ")V"
        }
    .end annotation

    const-string v0, "IABConsent_SubjectToGDPR"

    const/4 v1, 0x0

    .line 1
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "IABTCF_gdprApplies"

    .line 2
    invoke-interface {p2, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const-string v3, "IABConsent_ConsentString"

    .line 3
    invoke-interface {p2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "IABTCF_TCString"

    .line 4
    invoke-interface {p2, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->getEncodedNonIABString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "c"

    if-nez p2, :cond_2

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_4

    .line 6
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 7
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 8
    :cond_2
    :goto_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p2, :cond_3

    .line 9
    invoke-virtual {v1, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    .line 10
    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    :goto_2
    if-nez v0, :cond_5

    if-eqz v2, :cond_d

    :cond_5
    if-nez v1, :cond_6

    .line 11
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, p2

    :cond_6
    const-string p2, "e"

    if-eqz v2, :cond_c

    .line 12
    :try_start_1
    instance-of v0, v2, Ljava/lang/Integer;

    if-eqz v0, :cond_8

    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_8

    .line 13
    :cond_7
    invoke-virtual {v1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 14
    :cond_8
    instance-of v0, v2, Ljava/lang/String;

    if-eqz v0, :cond_9

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 15
    :cond_a
    invoke-virtual {v1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_b
    const-string p2, "IABTCF_gdprApplies should be a 1 or 0 as per IAB guideline"

    .line 16
    invoke-static {p2}, Lcom/amazon/device/ads/DtbLog;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_0
    :try_start_2
    const-string p2, "IABTCF_gdprApplies should be a number as per IAB guideline"

    .line 17
    invoke-static {p2}, Lcom/amazon/device/ads/DtbLog;->info(Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    if-eqz v0, :cond_d

    .line 18
    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_d
    :goto_3
    if-eqz v1, :cond_e

    .line 19
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result p2

    if-eqz p2, :cond_e

    const-string p2, "gdpr"

    .line 20
    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    return-void

    :catch_1
    const-string p1, "INVALID JSON formed for GDPR clause"

    .line 21
    invoke-static {p1}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic b()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdRequest;->refreshAd()V

    return-void
.end method

.method public synthetic c(Lcom/amazon/device/ads/DtbMetrics;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->callback:Lcom/amazon/device/ads/DTBAdCallback;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->adError:Lcom/amazon/device/ads/AdError;

    const-string v1, "]"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->adError:Lcom/amazon/device/ads/AdError;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdError;->getCode()Lcom/amazon/device/ads/AdError$ErrorCode;

    move-result-object v0

    sget-object v2, Lcom/amazon/device/ads/AdError$ErrorCode;->NO_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    if-ne v0, v2, :cond_0

    const-string v0, "Invoking onSuccess() callback for pricepoints: ["

    .line 3
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdRequest;->adResponse:Lcom/amazon/device/ads/DTBAdResponse;

    invoke-virtual {v2}, Lcom/amazon/device/ads/DTBAdResponse;->getDefaultPricePoints()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->debug(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->callback:Lcom/amazon/device/ads/DTBAdCallback;

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdRequest;->adResponse:Lcom/amazon/device/ads/DTBAdResponse;

    invoke-interface {v0, v1}, Lcom/amazon/device/ads/DTBAdCallback;->onSuccess(Lcom/amazon/device/ads/DTBAdResponse;)V

    const-string v0, "Performing SDK wrapping detection. Will submit a report if needed."

    .line 5
    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->debug(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdRequest;->wrapperDetectionNeeded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->callback:Lcom/amazon/device/ads/DTBAdCallback;

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/DTBAdRequest;->detectWrapper(Ljava/lang/Object;)Lcom/amazon/device/ads/DTBAdRequest$WrapperReport;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    sget-object v1, Lcom/amazon/device/ads/DTBMetricsConfiguration;->WRAPPING_PIXEL_DEFAULT_VALUE:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "wrapping_pixel"

    const-string v3, "sample_rates"

    invoke-static {v2, v1, v3}, Lcom/amazon/device/ads/DTBMetricsConfiguration;->getClientConfigVal(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    .line 9
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    cmpg-double v1, v3, v1

    if-gtz v1, :cond_2

    .line 10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    iget-object v2, v0, Lcom/amazon/device/ads/DTBAdRequest$WrapperReport;->expectedPackage:Ljava/lang/String;

    const-string v3, "expected_package"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, v0, Lcom/amazon/device/ads/DTBAdRequest$WrapperReport;->wrapperPackage:Ljava/lang/String;

    const-string v2, "wrapper_package"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {p1}, Lcom/amazon/device/ads/DtbMetrics;->getInstPxlUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/device/ads/DtbCommonUtils;->getHostNameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {}, Lcom/amazon/device/ads/DTBMetricsProcessor;->getInstance()Lcom/amazon/device/ads/DTBMetricsProcessor;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2, p1}, Lcom/amazon/device/ads/DTBMetricReport;->addBid(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/ads/DTBMetricReport$BidWrapper;

    move-result-object p1

    const-string v2, "alert_sdk_wrapping_v2"

    invoke-virtual {v0, v2, v1, p1}, Lcom/amazon/device/ads/DTBMetricsProcessor;->submitErrorReport(Ljava/lang/String;Ljava/util/Map;Lcom/amazon/device/ads/DTBMetricReport$BidWrapper;)V

    goto :goto_0

    :cond_0
    const-string p1, "Invoking onFailure() callback with errorCode: "

    .line 15
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->adError:Lcom/amazon/device/ads/AdError;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdError;->getCode()Lcom/amazon/device/ads/AdError$ErrorCode;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->adError:Lcom/amazon/device/ads/AdError;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/device/ads/DtbLog;->debug(Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdRequest;->callback:Lcom/amazon/device/ads/DTBAdCallback;

    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->adError:Lcom/amazon/device/ads/AdError;

    invoke-interface {p1, v0}, Lcom/amazon/device/ads/DTBAdCallback;->onFailure(Lcom/amazon/device/ads/AdError;)V

    goto :goto_0

    :cond_1
    const-string p1, "No callback -DTBAdCallback- provided to loadAd() to handle success or failure."

    .line 17
    invoke-static {p1}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public defineMraid()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdRequest;->getFullyQuaifiedMoPUBClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDK_VERSION"

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DtbCommonUtils;->getStringFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MOPUB VERSION:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/device/ads/DtbLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "MOPUB VERSION NOT FOUND"

    .line 3
    invoke-static {v1}, Lcom/amazon/device/ads/DtbLog;->debug(Ljava/lang/String;)V

    .line 4
    :goto_0
    invoke-static {v0}, Lcom/amazon/device/ads/DtbCommonUtils;->getAPIVersion(Ljava/lang/String;)Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;

    move-result-object v1

    const/4 v2, 0x0

    .line 5
    new-instance v3, Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;

    invoke-direct {v3}, Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;-><init>()V

    .line 6
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdRequest;->dfpCandidateList()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    const-string v7, "GOOGLE_PLAY_SERVICES_VERSION_CODE"

    if-ge v6, v5, :cond_2

    aget-object v8, v4, v6

    if-eqz v2, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    invoke-static {v8, v7}, Lcom/amazon/device/ads/DtbCommonUtils;->getIntegerFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-nez v2, :cond_4

    const/16 v4, 0x61

    :goto_3
    const/16 v5, 0x7a

    if-gt v4, v5, :cond_4

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.google.android.gms.common.zz"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/amazon/device/ads/DtbCommonUtils;->getIntegerFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    int-to-char v4, v4

    goto :goto_3

    :cond_4
    :goto_4
    if-eqz v2, :cond_5

    .line 9
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    .line 10
    rem-int/lit16 v5, v4, 0x3e8

    div-int/lit8 v5, v5, 0x64

    iput v5, v3, Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;->minorVersion:I

    .line 11
    div-int/lit16 v4, v4, 0x3e8

    iput v4, v3, Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;->majorVersion:I

    const-string v4, "Google DFP major version:"

    .line 12
    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;->majorVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "minor version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;->minorVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/device/ads/DtbLog;->debug(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    const-string v4, "Not able to identify Google DFP version"

    .line 13
    invoke-static {v4}, Lcom/amazon/device/ads/DtbLog;->debug(Ljava/lang/String;)V

    :goto_5
    const/4 v4, 0x1

    .line 14
    sput-boolean v4, Lcom/amazon/device/ads/DTBAdRequest;->mRaidDefined:Z

    .line 15
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->getMRAIDPolicy()Lcom/amazon/device/ads/MRAIDPolicy;

    move-result-object v5

    .line 16
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eqz v5, :cond_9

    if-eq v5, v4, :cond_8

    const/4 v0, 0x2

    if-eq v5, v0, :cond_7

    const/4 v0, 0x3

    if-eq v5, v0, :cond_6

    goto :goto_6

    .line 17
    :cond_6
    sget-object v0, Lcom/amazon/device/ads/DTBAdRequest;->mRaidCustomArray:Lorg/json/JSONArray;

    sput-object v0, Lcom/amazon/device/ads/DTBAdRequest;->mRaidArray:Lorg/json/JSONArray;

    goto :goto_6

    :cond_7
    if-eqz v2, :cond_c

    .line 18
    invoke-direct {p0, v3}, Lcom/amazon/device/ads/DTBAdRequest;->useDFP(Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;)V

    goto :goto_6

    :cond_8
    if-eqz v0, :cond_c

    .line 19
    invoke-direct {p0, v1}, Lcom/amazon/device/ads/DTBAdRequest;->useMoPUB(Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;)V

    goto :goto_6

    .line 20
    :cond_9
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdRequest;->isServerless()Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_6

    :cond_a
    if-eqz v0, :cond_b

    .line 21
    invoke-direct {p0, v1}, Lcom/amazon/device/ads/DTBAdRequest;->useMoPUB(Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;)V

    return-void

    :cond_b
    if-eqz v2, :cond_c

    .line 22
    invoke-direct {p0, v3}, Lcom/amazon/device/ads/DTBAdRequest;->useDFP(Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;)V

    :cond_c
    :goto_6
    return-void
.end method

.method public dfpCandidateList()[Ljava/lang/String;
    .locals 4

    const-string v0, "com.google.android.gms.common.GoogleApiAvailability"

    const-string v1, "com.google.android.gms.common.GoogleApiAvailabilityLight"

    const-string v2, "com.google.android.gms.common.GooglePlayServicesUtil"

    const-string v3, "com.google.android.gms.common.GooglePlayServicesUtilLight"

    .line 1
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullyQuaifiedMoPUBClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.mopub.common.MoPub"

    return-object v0
.end method

.method public getRefreshDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->refreshDuration:I

    return v0
.end method

.method public getSlotGroupName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->slotGroup:Ljava/lang/String;

    return-object v0
.end method

.method public isServerless()Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->getServerlessMarkers()[Ljava/lang/String;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 3
    :try_start_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    sput-object v4, Lcom/amazon/device/ads/DTBAdRequest;->mRaidArray:Lorg/json/JSONArray;

    const-string v5, "1.0"

    .line 5
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 6
    sget-object v4, Lcom/amazon/device/ads/DTBAdRequest;->mRaidArray:Lorg/json/JSONArray;

    const-string v5, "2.0"

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 7
    sget-object v4, Lcom/amazon/device/ads/DTBAdRequest;->mRaidArray:Lorg/json/JSONArray;

    const-string v5, "3.0"

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public loadAd(Lcom/amazon/device/ads/DTBAdCallback;)V
    .locals 7

    const-string v0, "Unknown exception occured in DTB ad call."

    .line 14
    sget-object v1, Le/c/a/a/b/c;->a:Le/c/a/a/b/c;

    sget-object v2, Le/c/a/a/b/b;->a:Le/c/a/a/b/b;

    :try_start_0
    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdRequest;->callback:Lcom/amazon/device/ads/DTBAdCallback;

    .line 15
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdRequest;->adSizes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 16
    iget-boolean p1, p0, Lcom/amazon/device/ads/DTBAdRequest;->requestHasBeenUsed:Z

    if-eqz p1, :cond_0

    .line 17
    sget-object p1, Lcom/amazon/device/ads/DTBAdRequest;->LOG_TAG:Ljava/lang/String;

    const-string v0, "This ad request object is already used for loading an ad. Please create a new instance to load the Ad."

    invoke-static {p1, v0}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/amazon/device/ads/DTBAdRequest;->requestHasBeenUsed:Z

    .line 19
    invoke-static {}, Lcom/amazon/device/ads/DtbDeviceRegistration;->verifyRegistration()V

    .line 20
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdRequest;->adSizes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/device/ads/DTBAdSize;

    .line 21
    iget-object v4, p0, Lcom/amazon/device/ads/DTBAdRequest;->sizeSlotUUIDMap:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/amazon/device/ads/DTBAdSize;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/amazon/device/ads/DTBAdSize;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/amazon/device/ads/DTBAdSize;->getSlotUUID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 22
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdRequest;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/amazon/device/ads/DTBAdRequest;->isAutoRefresh:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/amazon/device/ads/DTBAdRequest;->refreshDuration:I

    if-lez p1, :cond_2

    .line 23
    new-instance p1, Landroid/os/HandlerThread;

    const-string v3, "DtbHandlerThread"

    invoke-direct {p1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdRequest;->mHandlerThread:Landroid/os/HandlerThread;

    .line 24
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 25
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdRequest;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 26
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/amazon/device/ads/DTBAdRequest;->mHandler:Landroid/os/Handler;

    .line 27
    :cond_2
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdRequest;->internalLoadAd()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 28
    :try_start_2
    sget-object v3, Lcom/amazon/device/ads/DTBAdRequest;->LOG_TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {v2, v1, v0, p1}, Le/c/a/a/a;->a(Le/c/a/a/b/b;Le/c/a/a/b/c;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 30
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Please set atleast one ad size in the request."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 31
    sget-object v0, Lcom/amazon/device/ads/DTBAdRequest;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Fail to execute loadAd method"

    invoke-static {v0, v3}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {v2, v1, v3, p1}, Le/c/a/a/a;->a(Le/c/a/a/b/b;Le/c/a/a/b/c;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public loadSmartBanner(Lcom/amazon/device/ads/DTBAdCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/ads/DTBLoadException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amazon/device/ads/DtbDeviceDataRetriever;->isTablet()Z

    move-result v0

    const/16 v1, 0x140

    const/16 v2, 0x32

    if-eqz v0, :cond_0

    const/16 v1, 0x2d8

    const/16 v2, 0x5a

    .line 2
    :cond_0
    invoke-direct {p0, p1, v1, v2}, Lcom/amazon/device/ads/DTBAdRequest;->loadAd(Lcom/amazon/device/ads/DTBAdCallback;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    sget-object v0, Lcom/amazon/device/ads/DTBAdRequest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Fail to execute loadSmartBanner method"

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v0, Le/c/a/a/b/b;->a:Le/c/a/a/b/b;

    sget-object v2, Le/c/a/a/b/c;->a:Le/c/a/a/b/c;

    invoke-static {v0, v2, v1, p1}, Le/c/a/a/a;->a(Le/c/a/a/b/b;Le/c/a/a/b/c;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public onRequestFormed(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public pauseAutoRefresh()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->isAutoRefresh:Z

    return-void
.end method

.method public putCustomTarget(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->customTargets:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    sget-object p2, Lcom/amazon/device/ads/DTBAdRequest;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Fail to execute putCustomTarget method"

    invoke-static {p2, v0}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object p2, Le/c/a/a/b/b;->b:Le/c/a/a/b/b;

    sget-object v1, Le/c/a/a/b/c;->a:Le/c/a/a/b/c;

    invoke-static {p2, v1, v0, p1}, Le/c/a/a/a;->a(Le/c/a/a/b/b;Le/c/a/a/b/c;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public recycle()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->requestHasBeenUsed:Z

    return-void
.end method

.method public resumeAutoRefresh()V
    .locals 4

    .line 1
    :try_start_0
    iget v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->refreshDuration:I

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DTBAdRequest;->setAutoRefresh(I)V

    .line 2
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdRequest;->refreshAd()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/amazon/device/ads/DTBAdRequest;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Fail to execute resumeAutoRefresh method"

    invoke-static {v1, v2}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v1, Le/c/a/a/b/b;->a:Le/c/a/a/b/b;

    sget-object v3, Le/c/a/a/b/c;->a:Le/c/a/a/b/c;

    invoke-static {v1, v3, v2, v0}, Le/c/a/a/a;->a(Le/c/a/a/b/b;Le/c/a/a/b/c;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public setAutoRefresh()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->isAutoRefresh:Z

    const/16 v0, 0x3c

    .line 2
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/DTBAdRequest;->setRefreshDuration(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/amazon/device/ads/DTBAdRequest;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Fail to execute setAutoRefresh method"

    invoke-static {v1, v2}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v1, Le/c/a/a/b/b;->b:Le/c/a/a/b/b;

    sget-object v3, Le/c/a/a/b/c;->a:Le/c/a/a/b/c;

    invoke-static {v1, v3, v2, v0}, Le/c/a/a/a;->a(Le/c/a/a/b/b;Le/c/a/a/b/c;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public setAutoRefresh(I)V
    .locals 3

    const/4 v0, 0x1

    .line 5
    :try_start_0
    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->isAutoRefresh:Z

    .line 6
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DTBAdRequest;->setRefreshDuration(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    sget-object v0, Lcom/amazon/device/ads/DTBAdRequest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Fail to execute setAutoRefresh method with seconds argument"

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object v0, Le/c/a/a/b/b;->b:Le/c/a/a/b/b;

    sget-object v2, Le/c/a/a/b/c;->a:Le/c/a/a/b/c;

    invoke-static {v0, v2, v1, p1}, Le/c/a/a/a;->a(Le/c/a/a/b/b;Le/c/a/a/b/c;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public varargs setSizes([Lcom/amazon/device/ads/DTBAdSize;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->adSizes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    sget-object v0, Lcom/amazon/device/ads/DTBAdRequest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Setting "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " AdSize(s) to the ad request."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DtbLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 4
    iget-object v3, p0, Lcom/amazon/device/ads/DTBAdRequest;->adSizes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DTBAdSize cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public setSlotGroup(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdRequest;->slotGroup:Ljava/lang/String;

    return-void
.end method

.method public stop()V
    .locals 4

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdRequest;->stopAutoRefresh()V

    .line 2
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const-string v0, "Stopping DTB auto refresh"

    .line 4
    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    sget-object v1, Lcom/amazon/device/ads/DTBAdRequest;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Fail to execute stop method"

    invoke-static {v1, v2}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v1, Le/c/a/a/b/b;->b:Le/c/a/a/b/b;

    sget-object v3, Le/c/a/a/b/c;->a:Le/c/a/a/b/c;

    invoke-static {v1, v3, v2, v0}, Le/c/a/a/a;->a(Le/c/a/a/b/b;Le/c/a/a/b/c;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method
