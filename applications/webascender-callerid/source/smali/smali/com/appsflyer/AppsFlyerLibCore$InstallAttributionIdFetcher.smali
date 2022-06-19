.class public Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLibCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstallAttributionIdFetcher"
.end annotation


# static fields
.field private static ı:Ljava/lang/String; = "https://%sgcdsdk.%s/install_data/v4.0/"

.field private static final ɩ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Ɩ:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final ǃ:Ljava/lang/String;

.field private final Ι:Landroid/app/Application;

.field final ι:Ljava/util/concurrent/ScheduledExecutorService;

.field private і:Lcom/appsflyer/AppsFlyerLibCore;

.field private final Ӏ:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "googleplay"

    const-string v1, "playstore"

    const-string v2, "googleplaystore"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->ɩ:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {}, Lcom/appsflyer/AFExecutor;->getInstance()Lcom/appsflyer/AFExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/AFExecutor;->Ι()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->ι:Ljava/util/concurrent/ScheduledExecutorService;

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->Ɩ:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    iget-object v0, p1, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->і:Lcom/appsflyer/AppsFlyerLibCore;

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->і:Lcom/appsflyer/AppsFlyerLibCore;

    .line 13
    iget-object v0, p1, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->Ι:Landroid/app/Application;

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->Ι:Landroid/app/Application;

    .line 14
    iget-object v0, p1, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->ǃ:Ljava/lang/String;

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->ǃ:Ljava/lang/String;

    .line 15
    iget p1, p1, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->Ӏ:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->Ӏ:I

    return-void
.end method

.method private constructor <init>(Lcom/appsflyer/AppsFlyerLibCore;Landroid/app/Application;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/appsflyer/AFExecutor;->getInstance()Lcom/appsflyer/AFExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/AFExecutor;->Ι()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->ι:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->Ɩ:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->і:Lcom/appsflyer/AppsFlyerLibCore;

    .line 6
    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->Ι:Landroid/app/Application;

    .line 7
    iput-object p3, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->ǃ:Ljava/lang/String;

    .line 8
    iput v1, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->Ӏ:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/appsflyer/AppsFlyerLibCore;Landroid/app/Application;Ljava/lang/String;B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;-><init>(Lcom/appsflyer/AppsFlyerLibCore;Landroid/app/Application;Ljava/lang/String;)V

    return-void
.end method

.method public static setUrl(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "gcdsdk"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->ı:Ljava/lang/String;

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic ǃ(Ljava/util/Map;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[GCD-A02] Calling onConversionDataSuccess with:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->ɩ()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/appsflyer/AppsFlyerConversionListener;->onConversionDataSuccess(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic ι(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->ɩ()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[GCD-A02] Calling onConversionFailure with:\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->ɩ()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/appsflyer/AppsFlyerConversionListener;->onConversionDataFail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "is_first_launch"

    const-string v2, "af_siteid"

    .line 1
    iget-object v3, v1, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->ǃ:Ljava/lang/String;

    const-string v4, "[GCD-A02] Calling onConversionFailure with:\n"

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_9

    .line 2
    :cond_0
    iget-object v3, v1, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->і:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-virtual {v3}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "[GCD-E03] \'isStopTracking\' enabled"

    .line 3
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    const-string v0, "\'isStopTracking\' enabled"

    .line 4
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->ɩ()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->ɩ()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/appsflyer/AppsFlyerConversionListener;->onConversionDataFail(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 7
    :cond_2
    iget-object v3, v1, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->Ɩ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v3, 0x0

    const/4 v5, 0x2

    .line 8
    :try_start_0
    iget-object v6, v1, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->Ι:Landroid/app/Application;

    if-nez v6, :cond_4

    const-string v0, "[GCD-E06] Context null"

    .line 9
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    const-string v0, "Context null"

    .line 10
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->ɩ()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 11
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->ɩ()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/appsflyer/AppsFlyerConversionListener;->onConversionDataFail(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :cond_3
    iget-object v0, v1, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->Ɩ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void

    .line 14
    :cond_4
    :try_start_1
    iget-object v7, v1, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->і:Lcom/appsflyer/AppsFlyerLibCore;

    .line 15
    invoke-virtual {v7, v6}, Lcom/appsflyer/AppsFlyerLibCore;->getConfiguredChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 16
    invoke-static {v6, v7}, Lcom/appsflyer/AppsFlyerLibCore;->Ι(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v6, :cond_6

    .line 17
    :try_start_2
    sget-object v10, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->ɩ:Ljava/util/List;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "-"

    .line 18
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_5
    const-string v10, "AF detected using redundant Google-Play channel for attribution - %s. Using without channel postfix."

    new-array v11, v9, [Ljava/lang/Object;

    aput-object v6, v11, v8

    .line 19
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    :cond_6
    move-object v6, v7

    .line 20
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->ı:Ljava/lang/String;

    invoke-static {v11}, Lcom/appsflyer/ServerConfigHandler;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->Ι:Landroid/app/Application;

    .line 21
    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "?devkey="

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->ǃ:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&device_id="

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/ref/WeakReference;

    iget-object v11, v1, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->Ι:Landroid/app/Application;

    invoke-direct {v6, v11}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 22
    invoke-static {v6}, Lcom/appsflyer/internal/ac;->ı(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 23
    invoke-static {}, Lcom/appsflyer/internal/af;->Ι()Lcom/appsflyer/internal/af;

    move-result-object v10

    const-string v11, "server_request"

    .line 24
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v11, v6, v7}, Lcom/appsflyer/internal/af;->ı(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v7, "[GCD-B01] URL: "

    .line 25
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/appsflyer/internal/ah;->ı(Ljava/lang/String;)V

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 27
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v3, "GET"

    .line 28
    invoke-virtual {v7, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v3, 0x2710

    .line 29
    invoke-virtual {v7, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const-string v3, "Connection"

    const-string v12, "close"

    .line 30
    invoke-virtual {v7, v3, v12}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v7}, Ljava/net/URLConnection;->connect()V

    .line 32
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 33
    iget-object v12, v1, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->і:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-virtual {v12, v7}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v12

    .line 34
    invoke-static {}, Lcom/appsflyer/internal/af;->Ι()Lcom/appsflyer/internal/af;

    move-result-object v13

    const-string v14, "server_response"

    new-array v15, v5, [Ljava/lang/String;

    .line 35
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v8

    aput-object v12, v15, v9

    invoke-virtual {v13, v14, v6, v15}, Lcom/appsflyer/internal/af;->ı(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v6, 0xc8

    const/16 v13, 0x194

    if-eq v3, v6, :cond_a

    if-ne v3, v13, :cond_7

    goto :goto_1

    :cond_7
    const/16 v0, 0x193

    if-eq v3, v0, :cond_8

    const/16 v0, 0x1f4

    if-lt v3, v0, :cond_9

    .line 36
    :cond_8
    iget v0, v1, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->Ӏ:I

    if-ge v0, v5, :cond_9

    .line 37
    new-instance v0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;

    invoke-direct {v0, v1}, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;-><init>(Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;)V

    .line 38
    iget-object v2, v0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->ι:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v0, v3}, Lcom/appsflyer/AppsFlyerLibCore;->Ι(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;)V

    goto/16 :goto_5

    :cond_9
    const-string v0, "Error connection to server: "

    .line 39
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->ɩ()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 41
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->ɩ()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/appsflyer/AppsFlyerConversionListener;->onConversionDataFail(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 43
    :cond_a
    :goto_1
    new-instance v6, Lcom/appsflyer/internal/EventDataCollector;

    iget-object v14, v1, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->Ι:Landroid/app/Application;

    invoke-direct {v6, v14}, Lcom/appsflyer/internal/EventDataCollector;-><init>(Landroid/content/Context;)V

    const-string v14, "gcd_networking"

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long v10, v15, v10

    invoke-virtual {v6, v14, v10, v11}, Lcom/appsflyer/internal/EventDataCollector;->set(Ljava/lang/String;J)V

    const-string v10, "gcd_retries"

    .line 45
    iget v11, v1, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->Ӏ:I

    int-to-long v14, v11

    invoke-virtual {v6, v10, v14, v15}, Lcom/appsflyer/internal/EventDataCollector;->set(Ljava/lang/String;J)V

    const-string v6, "Attribution data: "

    .line 46
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/appsflyer/internal/ah;->ı(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_12

    .line 48
    invoke-static {v12}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    const-string v10, "iscache"

    .line 49
    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    if-ne v3, v13, :cond_b

    const-string v3, "error_reason"

    .line 50
    invoke-interface {v6, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "status_code"

    .line 51
    invoke-interface {v6, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "af_status"

    const-string v11, "Organic"

    .line 52
    invoke-interface {v6, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "af_message"

    const-string v11, "organic install"

    .line 53
    invoke-interface {v6, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    if-eqz v10, :cond_c

    .line 54
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_c

    .line 55
    iget-object v3, v1, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->Ι:Landroid/app/Application;

    const-string v10, "appsflyerConversionDataCacheExpiration"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v3, v10, v13, v14}, Lcom/appsflyer/AppsFlyerLibCore;->ı(Landroid/content/Context;Ljava/lang/String;J)V

    .line 56
    :cond_c
    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v10, "[Invite] Detected App-Invite via channel: "

    const-string v11, "af_channel"

    if-eqz v3, :cond_e

    .line 57
    :try_start_4
    invoke-interface {v6, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    const-string v3, "[CrossPromotion] App was installed via %s\'s Cross Promotion"

    new-array v13, v9, [Ljava/lang/Object;

    .line 59
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v13, v8

    .line 60
    invoke-static {v3, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 61
    :cond_e
    :goto_2
    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 63
    :cond_f
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v3, "attributionId"

    if-eqz v2, :cond_10

    .line 65
    :try_start_5
    iget-object v10, v1, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->Ι:Landroid/app/Application;

    invoke-static {v10, v3, v2}, Lcom/appsflyer/AppsFlyerLibCore;->ι(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 66
    :cond_10
    iget-object v2, v1, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->Ι:Landroid/app/Application;

    invoke-static {v2, v3, v12}, Lcom/appsflyer/AppsFlyerLibCore;->ι(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :goto_3
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->ɩ()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 68
    iget-object v2, v1, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->Ɩ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-gt v2, v9, :cond_12

    .line 69
    :try_start_6
    iget-object v2, v1, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->Ι:Landroid/app/Application;

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    .line 70
    iget-object v3, v1, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->Ι:Landroid/app/Application;

    invoke-static {v3}, Lcom/appsflyer/AppsFlyerLibCore;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v9, "sixtyDayConversionData"

    .line 71
    invoke-interface {v3, v9, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_11

    .line 72
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Lcom/appsflyer/internal/u; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_11
    move-object v6, v2

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_7
    const-string v2, "Exception while trying to fetch attribution data. "

    .line 73
    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[GCD-A02] Calling onConversionDataSuccess with:\n"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->ɩ()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/appsflyer/AppsFlyerConversionListener;->onConversionDataSuccess(Ljava/util/Map;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 76
    :cond_12
    :goto_5
    iget-object v0, v1, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->Ɩ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    if-eqz v7, :cond_15

    .line 77
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v3, v7

    goto :goto_6

    :catchall_1
    move-exception v0

    .line 78
    :goto_6
    :try_start_8
    iget v2, v1, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->Ӏ:I

    if-ge v2, v5, :cond_13

    .line 79
    new-instance v2, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;

    invoke-direct {v2, v1}, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;-><init>(Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;)V

    .line 80
    iget-object v4, v2, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->ι:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v4, v2, v5}, Lcom/appsflyer/AppsFlyerLibCore;->Ι(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;)V

    goto :goto_7

    .line 81
    :cond_13
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->ɩ()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 83
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->ɩ()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/appsflyer/AppsFlyerConversionListener;->onConversionDataFail(Ljava/lang/String;)V

    .line 85
    :cond_14
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 86
    iget-object v0, v1, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->Ɩ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    if-eqz v3, :cond_15

    .line 87
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 88
    :cond_15
    :goto_8
    iget-object v0, v1, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->ι:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    const-string v0, "[GCD-A03] Server retrieving attempt finished"

    .line 89
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    return-void

    :catchall_2
    move-exception v0

    .line 90
    iget-object v2, v1, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->Ɩ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    if-eqz v3, :cond_16

    .line 91
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 92
    :cond_16
    throw v0

    :cond_17
    :goto_9
    const-string v0, "[GCD-E05] AppsFlyer dev key is missing"

    .line 93
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    const-string v0, "AppsFlyer dev key is missing"

    .line 94
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->ɩ()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 95
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->ɩ()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/appsflyer/AppsFlyerConversionListener;->onConversionDataFail(Ljava/lang/String;)V

    :cond_18
    return-void
.end method
