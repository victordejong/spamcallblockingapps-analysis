.class public Lcom/amazon/device/ads/DTBMetricsProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ALERT_SDK_WRAPPING:Ljava/lang/String; = "alert_sdk_wrapping"

.field public static ALERT_SDK_WRAPPING_V2:Ljava/lang/String; = "alert_sdk_wrapping_v2"

.field public static REPORT_LOAD_FAILURE:Ljava/lang/String; = "fetch_failure"

.field public static REPORT_LOAD_LATENCY:Ljava/lang/String; = "fetch_latency"

.field public static REPORT_LOST_BID:Ljava/lang/String; = "lost_bid"

.field public static REPORT_MEDIATION_LATENCY:Ljava/lang/String; = "mediation_latency"

.field private static SIMPLE_TAG:Ljava/lang/String; = "DTB_Metrics"

.field private static theProcessor:Lcom/amazon/device/ads/DTBMetricsProcessor;


# instance fields
.field private final lock:Ljava/lang/Object;

.field private reportQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/device/ads/DTBMetricReport;",
            ">;"
        }
    .end annotation
.end field

.field private running:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/amazon/device/ads/DTBMetricsProcessor;

    invoke-direct {v0}, Lcom/amazon/device/ads/DTBMetricsProcessor;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/DTBMetricsProcessor;->theProcessor:Lcom/amazon/device/ads/DTBMetricsProcessor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBMetricsProcessor;->lock:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBMetricsProcessor;->reportQueue:Ljava/util/List;

    return-void
.end method

.method private addReport(Lcom/amazon/device/ads/DTBMetricReport;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DTBMetricsProcessor;->reportQueue:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amazon/device/ads/DTBMetricsProcessor;->reportQueue:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static cacheBusterQueryString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->isTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "?cb=0"

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x416312d000000000L    # 1.0E7

    mul-double/2addr v0, v2

    double-to-int v0, v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "?cb=%d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private dispenseReport()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBMetricsProcessor;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/amazon/device/ads/DtbThreadService;->getInstance()Lcom/amazon/device/ads/DtbThreadService;

    move-result-object v0

    new-instance v1, Le/c/b/a/h0;

    invoke-direct {v1, p0}, Le/c/b/a/h0;-><init>(Lcom/amazon/device/ads/DTBMetricsProcessor;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DtbThreadService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBMetricsProcessor;->dispenseReportImpl()V

    :goto_0
    return-void
.end method

.method private dispenseReportImpl()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DTBMetricsProcessor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/amazon/device/ads/DTBMetricsProcessor;->running:Z

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/amazon/device/ads/DTBMetricsProcessor;->running:Z

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/amazon/device/ads/DTBMetricsProcessor;->reportQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/amazon/device/ads/DTBMetricsProcessor;->reportQueue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/DTBMetricReport;

    .line 8
    invoke-static {}, Lcom/amazon/device/ads/DTBMetricsConfiguration;->getInstance()Lcom/amazon/device/ads/DTBMetricsConfiguration;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBMetricReport;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/DTBMetricsConfiguration;->isTypeEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    sget-object v1, Lcom/amazon/device/ads/DTBMetricsProcessor;->SIMPLE_TAG:Ljava/lang/String;

    const-string v2, "Report type:"

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBMetricReport;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is ignored"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/device/ads/DtbLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBMetricsProcessor;->removeFromQueue()V

    goto :goto_0

    .line 11
    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/DTBMetricsProcessor;->getCompleteURLForPixelsBasedOnReportURL(Lcom/amazon/device/ads/DTBMetricReport;)Ljava/lang/String;

    move-result-object v2

    .line 12
    sget-object v3, Lcom/amazon/device/ads/DTBMetricsProcessor;->SIMPLE_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Report URL:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\nType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBMetricReport;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/amazon/device/ads/DtbLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    sget-object v3, Lcom/amazon/device/ads/DTBMetricsProcessor;->SIMPLE_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Report:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/amazon/device/ads/DtbLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance v0, Lcom/amazon/device/ads/DtbHttpClient;

    invoke-direct {v0, v2}, Lcom/amazon/device/ads/DtbHttpClient;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Lcom/amazon/device/ads/DtbHttpClient;->executeGET()V

    .line 16
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBMetricsProcessor;->removeFromQueue()V

    .line 17
    sget-object v0, Lcom/amazon/device/ads/DTBMetricsProcessor;->SIMPLE_TAG:Ljava/lang/String;

    const-string v2, "Report Submission Success"

    invoke-static {v0, v2}, Lcom/amazon/device/ads/DtbLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "JSON Exception:"

    .line 18
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->warn(Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBMetricsProcessor;->removeFromQueue()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v2, "IOException:"

    .line 20
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->warn(Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcom/amazon/device/ads/DTBMetricsProcessor;->SIMPLE_TAG:Ljava/lang/String;

    const-string v2, "Report Submission Failure"

    invoke-static {v0, v2}, Lcom/amazon/device/ads/DtbLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v2, "Malformed Exception:"

    .line 22
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->warn(Ljava/lang/String;)V

    .line 23
    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/amazon/device/ads/DTBMetricsProcessor;->running:Z

    return-void

    :catchall_0
    move-exception v1

    .line 24
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getCompleteURLForPixelsBasedOnReportURL(Lcom/amazon/device/ads/DTBMetricReport;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBMetricReport;->getHostname()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBMetricReport;->getHostname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBMetricReport;->getHostname()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    sget-object v0, Lcom/amazon/device/ads/DtbConstants;->AAX_HOSTNAME:Ljava/lang/String;

    .line 4
    :goto_1
    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBMetricReport;->getBidId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBMetricReport;->getBidId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    .line 5
    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBMetricReport;->getBidId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBMetricReport;->toEncodedString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 6
    invoke-static {}, Lcom/amazon/device/ads/DTBMetricsProcessor;->cacheBusterQueryString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    const-string p1, "%s/x/px/%s/%s%s"

    .line 7
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v4

    .line 8
    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBMetricReport;->toEncodedString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    .line 9
    invoke-static {}, Lcom/amazon/device/ads/DTBMetricsProcessor;->cacheBusterQueryString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%s/x/px/p/PH/%s%s"

    .line 10
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public static getInstance()Lcom/amazon/device/ads/DTBMetricsProcessor;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/device/ads/DTBMetricsProcessor;->theProcessor:Lcom/amazon/device/ads/DTBMetricsProcessor;

    return-object v0
.end method

.method private isMainThread()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/amazon/device/ads/DTBAdUtil;->isMainThread()Z

    move-result v0

    return v0
.end method

.method private removeFromQueue()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DTBMetricsProcessor;->reportQueue:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amazon/device/ads/DTBMetricsProcessor;->reportQueue:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private submitExpiredReportImpl(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/device/ads/DTBMetricReport$BidWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/DTBMetricReport$BidWrapper;

    .line 2
    sget-object v1, Lcom/amazon/device/ads/DTBMetricsProcessor;->REPORT_LOST_BID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DTBMetricReport;->reportWithBidIdAndType(Lcom/amazon/device/ads/DTBMetricReport$BidWrapper;Ljava/lang/String;)Lcom/amazon/device/ads/DTBMetricReport;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/DTBMetricsProcessor;->addReport(Lcom/amazon/device/ads/DTBMetricReport;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBMetricsProcessor;->dispenseReport()V

    return-void
.end method


# virtual methods
.method public synthetic a()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBMetricsProcessor;->dispenseReportImpl()V

    return-void
.end method

.method public synthetic b(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DTBMetricsProcessor;->submitExpiredReportImpl(Ljava/util/List;)V

    return-void
.end method

.method public submitErrorReport(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/amazon/device/ads/DTBMetricReport;->reportWithTypeAndExtraProperties(Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/device/ads/DTBMetricReport;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DTBMetricsProcessor;->addReport(Lcom/amazon/device/ads/DTBMetricReport;)V

    .line 3
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBMetricsProcessor;->dispenseReport()V

    return-void
.end method

.method public submitErrorReport(Ljava/lang/String;Ljava/util/Map;Lcom/amazon/device/ads/DTBMetricReport$BidWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amazon/device/ads/DTBMetricReport$BidWrapper;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-static {p1, p2, p3}, Lcom/amazon/device/ads/DTBMetricReport;->reportWithTypeAndExtraProperties(Ljava/lang/String;Ljava/util/Map;Lcom/amazon/device/ads/DTBMetricReport$BidWrapper;)Lcom/amazon/device/ads/DTBMetricReport;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DTBMetricsProcessor;->addReport(Lcom/amazon/device/ads/DTBMetricReport;)V

    .line 6
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBMetricsProcessor;->dispenseReport()V

    return-void
.end method

.method public submitExpiredReport(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/device/ads/DTBMetricReport$BidWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBMetricsProcessor;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/amazon/device/ads/DtbThreadService;->getInstance()Lcom/amazon/device/ads/DtbThreadService;

    move-result-object v0

    new-instance v1, Le/c/b/a/i0;

    invoke-direct {v1, p0, p1}, Le/c/b/a/i0;-><init>(Lcom/amazon/device/ads/DTBMetricsProcessor;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DtbThreadService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DTBMetricsProcessor;->submitExpiredReportImpl(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public submitLatencyReportBidId(Lcom/amazon/device/ads/DTBMetricReport$BidWrapper;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/amazon/device/ads/DTBMetricReport;->reportWithBidTypeLatency(Lcom/amazon/device/ads/DTBMetricReport$BidWrapper;Ljava/lang/String;I)Lcom/amazon/device/ads/DTBMetricReport;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DTBMetricsProcessor;->addReport(Lcom/amazon/device/ads/DTBMetricReport;)V

    .line 3
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBMetricsProcessor;->dispenseReport()V

    return-void
.end method

.method public submitSimpleReportBidId(Lcom/amazon/device/ads/DTBMetricReport$BidWrapper;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/amazon/device/ads/DTBMetricReport;->reportWithBidIdAndType(Lcom/amazon/device/ads/DTBMetricReport$BidWrapper;Ljava/lang/String;)Lcom/amazon/device/ads/DTBMetricReport;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DTBMetricsProcessor;->addReport(Lcom/amazon/device/ads/DTBMetricReport;)V

    .line 3
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBMetricsProcessor;->dispenseReport()V

    return-void
.end method
