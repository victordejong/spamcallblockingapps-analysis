.class public Le/m/d/z/m/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/z/f/a$b;


# static fields
.field public static final r:Le/m/d/z/i/a;

.field public static final s:Le/m/d/z/m/k;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Le/m/d/z/m/i;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public d:Le/m/d/g;

.field public e:Le/m/d/z/c;

.field public f:Le/m/d/w/i;

.field public g:Le/m/d/v/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/d/v/b<",
            "Le/m/a/b/g;",
            ">;"
        }
    .end annotation
.end field

.field public h:Le/m/d/z/m/h;

.field public i:Ljava/util/concurrent/ExecutorService;

.field public j:Landroid/content/Context;

.field public k:Le/m/d/z/g/d;

.field public l:Le/m/d/z/m/j;

.field public m:Le/m/d/z/f/a;

.field public n:Lcom/google/firebase/perf/v1/ApplicationInfo$b;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Le/m/d/z/i/a;->b()Le/m/d/z/i/a;

    move-result-object v0

    sput-object v0, Le/m/d/z/m/k;->r:Le/m/d/z/i/a;

    .line 2
    new-instance v0, Le/m/d/z/m/k;

    invoke-direct {v0}, Le/m/d/z/m/k;-><init>()V

    sput-object v0, Le/m/d/z/m/k;->s:Le/m/d/z/m/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Le/m/d/z/m/k;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Le/m/d/z/m/k;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    iput-boolean v1, p0, Le/m/d/z/m/k;->q:Z

    .line 5
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0xa

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Le/m/d/z/m/k;->i:Ljava/util/concurrent/ExecutorService;

    .line 6
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Le/m/d/z/m/k;->a:Ljava/util/Map;

    const/16 v1, 0x32

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KEY_AVAILABLE_TRACES_FOR_CACHING"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING"

    .line 8
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "KEY_AVAILABLE_GAUGES_FOR_CACHING"

    .line 9
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Le/m/d/z/o/d;)Ljava/lang/String;
    .locals 11

    .line 1
    invoke-interface {p0}, Le/m/d/z/o/d;->hasTraceMetric()Z

    move-result v0

    const-wide v1, 0x408f400000000000L    # 1000.0

    const-string v3, "#.####"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Le/m/d/z/o/d;->getTraceMetric()Lcom/google/firebase/perf/v1/TraceMetric;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric;->getDurationUs()J

    move-result-wide v7

    .line 4
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v6, v5

    new-instance p0, Ljava/text/DecimalFormat;

    invoke-direct {p0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-double v7, v7

    div-double/2addr v7, v1

    .line 6
    invoke-virtual {p0, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v6, v4

    const-string p0, "trace metric: %s (duration: %sms)"

    .line 7
    invoke-static {v0, p0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    invoke-interface {p0}, Le/m/d/z/o/d;->hasNetworkRequestMetric()Z

    move-result v0

    const/4 v7, 0x3

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {p0}, Le/m/d/z/o/d;->getNetworkRequestMetric()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasTimeToResponseCompletedUs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getTimeToResponseCompletedUs()J

    move-result-wide v8

    goto :goto_0

    :cond_1
    const-wide/16 v8, 0x0

    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasHttpResponseCode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getHttpResponseCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "UNKNOWN"

    .line 14
    :goto_1
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v7, v7, [Ljava/lang/Object;

    .line 15
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getUrl()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v7, v5

    aput-object v0, v7, v4

    new-instance p0, Ljava/text/DecimalFormat;

    invoke-direct {p0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-double v3, v8

    div-double/2addr v3, v1

    .line 16
    invoke-virtual {p0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v7, v6

    const-string p0, "network request trace: %s (responseCode: %s, responseTime: %sms)"

    .line 17
    invoke-static {v10, p0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 18
    :cond_3
    invoke-interface {p0}, Le/m/d/z/o/d;->hasGaugeMetric()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    invoke-interface {p0}, Le/m/d/z/o/d;->getGaugeMetric()Lcom/google/firebase/perf/v1/GaugeMetric;

    move-result-object p0

    .line 20
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v7, [Ljava/lang/Object;

    .line 21
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric;->hasGaugeMetadata()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    .line 22
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric;->getCpuMetricReadingsCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 23
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric;->getAndroidMemoryReadingsCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v6

    const-string p0, "gauges (hasMetadata: %b, cpuGaugeCount: %d, memoryGaugeCount: %d)"

    .line 24
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p0, "log"

    return-object p0
.end method


# virtual methods
.method public final b(Lcom/google/firebase/perf/v1/PerfMetric;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/PerfMetric;->hasTraceMetric()Z

    move-result v0

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Le/m/d/z/m/k;->m:Le/m/d/z/f/a;

    const-string v0, "_fstec"

    invoke-virtual {p1, v0, v1, v2}, Le/m/d/z/f/a;->c(Ljava/lang/String;J)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/PerfMetric;->hasNetworkRequestMetric()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Le/m/d/z/m/k;->m:Le/m/d/z/f/a;

    const-string v0, "_fsntc"

    invoke-virtual {p1, v0, v1, v2}, Le/m/d/z/f/a;->c(Ljava/lang/String;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/d/z/m/k;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public d(Lcom/google/firebase/perf/v1/TraceMetric;Le/m/d/z/o/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/d/z/m/k;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Le/m/d/z/m/g;

    invoke-direct {v1, p0, p1, p2}, Le/m/d/z/m/g;-><init>(Le/m/d/z/m/k;Lcom/google/firebase/perf/v1/TraceMetric;Le/m/d/z/o/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e(Lcom/google/firebase/perf/v1/PerfMetric$b;Le/m/d/z/o/b;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Le/m/d/z/m/k;->c()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_6

    .line 2
    iget-object v0, p0, Le/m/d/z/m/k;->a:Ljava/util/Map;

    const-string v6, "KEY_AVAILABLE_TRACES_FOR_CACHING"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3
    iget-object v7, p0, Le/m/d/z/m/k;->a:Ljava/util/Map;

    const-string v8, "KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING"

    .line 4
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 5
    iget-object v9, p0, Le/m/d/z/m/k;->a:Ljava/util/Map;

    const-string v10, "KEY_AVAILABLE_GAUGES_FOR_CACHING"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 6
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/PerfMetric$b;->hasTraceMetric()Z

    move-result v11

    if-eqz v11, :cond_0

    if-lez v0, :cond_0

    .line 7
    iget-object v1, p0, Le/m/d/z/m/k;->a:Ljava/util/Map;

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    move v0, v4

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/PerfMetric$b;->hasNetworkRequestMetric()Z

    move-result v6

    if-eqz v6, :cond_1

    if-lez v7, :cond_1

    .line 9
    iget-object v0, p0, Le/m/d/z/m/k;->a:Ljava/util/Map;

    sub-int/2addr v7, v4

    .line 10
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 11
    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/PerfMetric$b;->hasGaugeMetric()Z

    move-result v6

    if-eqz v6, :cond_2

    if-lez v9, :cond_2

    .line 13
    iget-object v0, p0, Le/m/d/z/m/k;->a:Ljava/util/Map;

    sub-int/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_2
    sget-object v6, Le/m/d/z/m/k;->r:Le/m/d/z/i/a;

    new-array v3, v3, [Ljava/lang/Object;

    .line 15
    invoke-static {p1}, Le/m/d/z/m/k;->a(Le/m/d/z/o/d;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v5

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    .line 17
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    .line 18
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    .line 19
    iget-boolean v0, v6, Le/m/d/z/i/a;->b:Z

    if-eqz v0, :cond_3

    .line 20
    iget-object v0, v6, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "%s is not allowed to cache. Cache exhausted the limit (availableTracesForCaching: %d, availableNetworkRequestsForCaching: %d, availableGaugesForCaching: %d)."

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move v0, v5

    :goto_1
    if-eqz v0, :cond_5

    .line 22
    sget-object v0, Le/m/d/z/m/k;->r:Le/m/d/z/i/a;

    const-string v1, "Transport is not initialized yet, %s will be queued for to be dispatched later"

    new-array v2, v4, [Ljava/lang/Object;

    .line 23
    invoke-static {p1}, Le/m/d/z/m/k;->a(Le/m/d/z/o/d;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 24
    iget-boolean v3, v0, Le/m/d/z/i/a;->b:Z

    if-eqz v3, :cond_4

    .line 25
    iget-object v0, v0, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v3, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_4
    iget-object v0, p0, Le/m/d/z/m/k;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Le/m/d/z/m/i;

    invoke-direct {v1, p1, p2}, Le/m/d/z/m/i;-><init>(Lcom/google/firebase/perf/v1/PerfMetric$b;Le/m/d/z/o/b;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void

    .line 28
    :cond_6
    iget-object v0, p0, Le/m/d/z/m/k;->k:Le/m/d/z/g/d;

    invoke-virtual {v0}, Le/m/d/z/g/d;->o()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_a

    .line 29
    iget-object v0, p0, Le/m/d/z/m/k;->n:Lcom/google/firebase/perf/v1/ApplicationInfo$b;

    .line 30
    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->hasAppInstanceId()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 31
    iget-boolean v0, p0, Le/m/d/z/m/k;->q:Z

    if-nez v0, :cond_7

    goto/16 :goto_4

    .line 32
    :cond_7
    :try_start_0
    iget-object v0, p0, Le/m/d/z/m/k;->f:Le/m/d/w/i;

    invoke-interface {v0}, Le/m/d/w/i;->getId()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    const-wide/32 v7, 0xea60

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v7, v8, v9}, Lcom/google/android/gms/tasks/Tasks;->b(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 33
    sget-object v7, Le/m/d/z/m/k;->r:Le/m/d/z/i/a;

    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v5

    .line 34
    iget-boolean v0, v7, Le/m/d/z/i/a;->b:Z

    if-eqz v0, :cond_8

    .line 35
    iget-object v0, v7, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v9, "Task to retrieve Installation Id is timed out: %s"

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_1
    move-exception v0

    .line 37
    sget-object v7, Le/m/d/z/m/k;->r:Le/m/d/z/i/a;

    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v5

    .line 38
    iget-boolean v0, v7, Le/m/d/z/i/a;->b:Z

    if-eqz v0, :cond_8

    .line 39
    iget-object v0, v7, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v9, "Task to retrieve Installation Id is interrupted: %s"

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_2
    move-exception v0

    .line 41
    sget-object v7, Le/m/d/z/m/k;->r:Le/m/d/z/i/a;

    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v5

    .line 42
    iget-boolean v0, v7, Le/m/d/z/i/a;->b:Z

    if-eqz v0, :cond_8

    .line 43
    iget-object v0, v7, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v9, "Unable to retrieve Installation Id: %s"

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_2
    move-object v0, v6

    .line 45
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 46
    iget-object v7, p0, Le/m/d/z/m/k;->n:Lcom/google/firebase/perf/v1/ApplicationInfo$b;

    .line 47
    invoke-virtual {v7}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 48
    iget-object v7, v7, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v7, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v7, v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$400(Lcom/google/firebase/perf/v1/ApplicationInfo;Ljava/lang/String;)V

    goto :goto_4

    .line 49
    :cond_9
    sget-object v0, Le/m/d/z/m/k;->r:Le/m/d/z/i/a;

    .line 50
    iget-boolean v7, v0, Le/m/d/z/i/a;->b:Z

    if-eqz v7, :cond_a

    .line 51
    iget-object v0, v0, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    .line 52
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_a
    :goto_4
    iget-object v0, p0, Le/m/d/z/m/k;->n:Lcom/google/firebase/perf/v1/ApplicationInfo$b;

    .line 54
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 55
    iget-object v7, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v7, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v7, p2}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$1000(Lcom/google/firebase/perf/v1/ApplicationInfo;Le/m/d/z/o/b;)V

    .line 56
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/PerfMetric$b;->hasTraceMetric()Z

    move-result p2

    if-nez p2, :cond_b

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/PerfMetric$b;->hasNetworkRequestMetric()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 57
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo$b;

    .line 58
    iget-object p2, p0, Le/m/d/z/m/k;->e:Le/m/d/z/c;

    if-nez p2, :cond_c

    .line 59
    invoke-virtual {p0}, Le/m/d/z/m/k;->c()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 60
    sget-object p2, Le/m/d/z/c;->h:Le/m/d/z/i/a;

    invoke-static {}, Le/m/d/g;->b()Le/m/d/g;

    move-result-object p2

    const-class v7, Le/m/d/z/c;

    .line 61
    invoke-virtual {p2}, Le/m/d/g;->a()V

    .line 62
    iget-object p2, p2, Le/m/d/g;->d:Le/m/d/m/t;

    invoke-virtual {p2, v7}, Le/m/d/m/n;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 63
    check-cast p2, Le/m/d/z/c;

    .line 64
    iput-object p2, p0, Le/m/d/z/m/k;->e:Le/m/d/z/c;

    .line 65
    :cond_c
    iget-object p2, p0, Le/m/d/z/m/k;->e:Le/m/d/z/c;

    if-eqz p2, :cond_d

    .line 66
    new-instance v7, Ljava/util/HashMap;

    iget-object p2, p2, Le/m/d/z/c;->a:Ljava/util/Map;

    invoke-direct {v7, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_5

    .line 67
    :cond_d
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v7

    .line 68
    :goto_5
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 69
    iget-object p2, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p2, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {p2}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$1200(Lcom/google/firebase/perf/v1/ApplicationInfo;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 70
    :cond_e
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 71
    iget-object p2, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p2, Lcom/google/firebase/perf/v1/PerfMetric;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {p2, v0}, Lcom/google/firebase/perf/v1/PerfMetric;->access$100(Lcom/google/firebase/perf/v1/PerfMetric;Lcom/google/firebase/perf/v1/ApplicationInfo;)V

    .line 72
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/PerfMetric;

    .line 73
    iget-object p2, p0, Le/m/d/z/m/k;->k:Le/m/d/z/g/d;

    invoke-virtual {p2}, Le/m/d/z/g/d;->o()Z

    move-result p2

    if-nez p2, :cond_10

    .line 74
    sget-object p2, Le/m/d/z/m/k;->r:Le/m/d/z/i/a;

    const-string v0, "Performance collection is not enabled, dropping %s"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {p1}, Le/m/d/z/m/k;->a(Le/m/d/z/o/d;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    .line 75
    iget-boolean v8, p2, Le/m/d/z/i/a;->b:Z

    if-eqz v8, :cond_f

    .line 76
    iget-object p2, p2, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v8, v0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    :goto_6
    move p2, v5

    goto/16 :goto_13

    .line 78
    :cond_10
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/PerfMetric;->getApplicationInfo()Lcom/google/firebase/perf/v1/ApplicationInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/perf/v1/ApplicationInfo;->hasAppInstanceId()Z

    move-result p2

    if-nez p2, :cond_11

    .line 79
    sget-object p2, Le/m/d/z/m/k;->r:Le/m/d/z/i/a;

    const-string v0, "App Instance ID is null or empty, dropping %s"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {p1}, Le/m/d/z/m/k;->a(Le/m/d/z/o/d;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    .line 80
    iget-boolean v8, p2, Le/m/d/z/i/a;->b:Z

    if-eqz v8, :cond_f

    .line 81
    iget-object p2, p2, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v8, v0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 83
    :cond_11
    iget-object p2, p0, Le/m/d/z/m/k;->j:Landroid/content/Context;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/PerfMetric;->hasTraceMetric()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 86
    new-instance v7, Le/m/d/z/j/d/d;

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/PerfMetric;->getTraceMetric()Lcom/google/firebase/perf/v1/TraceMetric;

    move-result-object v8

    invoke-direct {v7, v8}, Le/m/d/z/j/d/d;-><init>(Lcom/google/firebase/perf/v1/TraceMetric;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_12
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/PerfMetric;->hasNetworkRequestMetric()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 88
    new-instance v7, Le/m/d/z/j/d/c;

    .line 89
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/PerfMetric;->getNetworkRequestMetric()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    move-result-object v8

    invoke-direct {v7, v8, p2}, Le/m/d/z/j/d/c;-><init>(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Landroid/content/Context;)V

    .line 90
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_13
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/PerfMetric;->hasApplicationInfo()Z

    move-result p2

    if-eqz p2, :cond_14

    .line 92
    new-instance p2, Le/m/d/z/j/d/a;

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/PerfMetric;->getApplicationInfo()Lcom/google/firebase/perf/v1/ApplicationInfo;

    move-result-object v7

    invoke-direct {p2, v7}, Le/m/d/z/j/d/a;-><init>(Lcom/google/firebase/perf/v1/ApplicationInfo;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_14
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/PerfMetric;->hasGaugeMetric()Z

    move-result p2

    if-eqz p2, :cond_15

    .line 94
    new-instance p2, Le/m/d/z/j/d/b;

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/PerfMetric;->getGaugeMetric()Lcom/google/firebase/perf/v1/GaugeMetric;

    move-result-object v7

    invoke-direct {p2, v7}, Le/m/d/z/j/d/b;-><init>(Lcom/google/firebase/perf/v1/GaugeMetric;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_15
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_16

    .line 96
    invoke-static {}, Le/m/d/z/i/a;->b()Le/m/d/z/i/a;

    move-result-object p2

    .line 97
    iget-boolean v0, p2, Le/m/d/z/i/a;->b:Z

    if-eqz v0, :cond_18

    .line 98
    iget-object p2, p2, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    .line 99
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 100
    :cond_16
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_17
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/d/z/j/d/e;

    .line 101
    invoke-virtual {v0}, Le/m/d/z/j/d/e;->a()Z

    move-result v0

    if-nez v0, :cond_17

    :cond_18
    :goto_7
    move p2, v5

    goto :goto_8

    :cond_19
    move p2, v4

    :goto_8
    if-nez p2, :cond_1a

    .line 102
    sget-object p2, Le/m/d/z/m/k;->r:Le/m/d/z/i/a;

    const-string v0, "Unable to process the PerfMetric (%s) due to missing or invalid values. See earlier log statements for additional information on the specific missing/invalid values."

    new-array v7, v4, [Ljava/lang/Object;

    .line 103
    invoke-static {p1}, Le/m/d/z/m/k;->a(Le/m/d/z/o/d;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    .line 104
    iget-boolean v8, p2, Le/m/d/z/i/a;->b:Z

    if-eqz v8, :cond_f

    .line 105
    iget-object p2, p2, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v8, v0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 107
    :cond_1a
    iget-object p2, p0, Le/m/d/z/m/k;->l:Le/m/d/z/m/j;

    .line 108
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/PerfMetric;->hasTraceMetric()Z

    move-result v0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 110
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    if-eqz v0, :cond_1f

    .line 111
    iget-object v0, p2, Le/m/d/z/m/j;->a:Le/m/d/z/g/d;

    .line 112
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-class v8, Le/m/d/z/g/v;

    monitor-enter v8

    .line 114
    :try_start_1
    sget-object v9, Le/m/d/z/g/v;->a:Le/m/d/z/g/v;

    if-nez v9, :cond_1b

    .line 115
    new-instance v9, Le/m/d/z/g/v;

    invoke-direct {v9}, Le/m/d/z/g/v;-><init>()V

    sput-object v9, Le/m/d/z/g/v;->a:Le/m/d/z/g/v;

    .line 116
    :cond_1b
    sget-object v9, Le/m/d/z/g/v;->a:Le/m/d/z/g/v;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v8

    .line 117
    invoke-virtual {v0, v9}, Le/m/d/z/g/d;->j(Le/m/d/z/g/w;)Le/m/d/z/n/e;

    move-result-object v8

    .line 118
    invoke-virtual {v8}, Le/m/d/z/n/e;->c()Z

    move-result v10

    if-eqz v10, :cond_1c

    invoke-virtual {v8}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v0, v10}, Le/m/d/z/g/d;->p(F)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 119
    iget-object v0, v0, Le/m/d/z/g/d;->c:Le/m/d/z/g/x;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "com.google.firebase.perf.TraceSamplingRate"

    invoke-virtual {v8}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v0, v9, v10}, Le/m/d/z/g/x;->c(Ljava/lang/String;F)Z

    .line 120
    invoke-virtual {v8}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_9

    .line 121
    :cond_1c
    invoke-virtual {v0, v9}, Le/m/d/z/g/d;->b(Le/m/d/z/g/w;)Le/m/d/z/n/e;

    move-result-object v8

    .line 122
    invoke-virtual {v8}, Le/m/d/z/n/e;->c()Z

    move-result v10

    if-eqz v10, :cond_1d

    invoke-virtual {v8}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v0, v10}, Le/m/d/z/g/d;->p(F)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 123
    invoke-virtual {v8}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_9

    .line 124
    :cond_1d
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 126
    :goto_9
    iget v8, p2, Le/m/d/z/m/j;->b:F

    cmpg-float v0, v8, v0

    if-gez v0, :cond_1e

    move v0, v4

    goto :goto_a

    :cond_1e
    move v0, v5

    :goto_a
    if-nez v0, :cond_1f

    .line 127
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/PerfMetric;->getTraceMetric()Lcom/google/firebase/perf/v1/TraceMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->getPerfSessionsList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Le/m/d/z/m/j;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_d

    :catchall_0
    move-exception p1

    .line 128
    monitor-exit v8

    throw p1

    .line 129
    :cond_1f
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/PerfMetric;->hasNetworkRequestMetric()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 130
    iget-object v0, p2, Le/m/d/z/m/j;->a:Le/m/d/z/g/d;

    .line 131
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-class v8, Le/m/d/z/g/j;

    monitor-enter v8

    .line 133
    :try_start_2
    sget-object v9, Le/m/d/z/g/j;->a:Le/m/d/z/g/j;

    if-nez v9, :cond_20

    .line 134
    new-instance v9, Le/m/d/z/g/j;

    invoke-direct {v9}, Le/m/d/z/g/j;-><init>()V

    sput-object v9, Le/m/d/z/g/j;->a:Le/m/d/z/g/j;

    .line 135
    :cond_20
    sget-object v9, Le/m/d/z/g/j;->a:Le/m/d/z/g/j;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v8

    .line 136
    invoke-virtual {v0, v9}, Le/m/d/z/g/d;->j(Le/m/d/z/g/w;)Le/m/d/z/n/e;

    move-result-object v8

    .line 137
    invoke-virtual {v8}, Le/m/d/z/n/e;->c()Z

    move-result v10

    if-eqz v10, :cond_21

    invoke-virtual {v8}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v0, v10}, Le/m/d/z/g/d;->p(F)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 138
    iget-object v0, v0, Le/m/d/z/g/d;->c:Le/m/d/z/g/x;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "com.google.firebase.perf.NetworkRequestSamplingRate"

    invoke-virtual {v8}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v0, v7, v9}, Le/m/d/z/g/x;->c(Ljava/lang/String;F)Z

    .line 139
    invoke-virtual {v8}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_b

    .line 140
    :cond_21
    invoke-virtual {v0, v9}, Le/m/d/z/g/d;->b(Le/m/d/z/g/w;)Le/m/d/z/n/e;

    move-result-object v8

    .line 141
    invoke-virtual {v8}, Le/m/d/z/n/e;->c()Z

    move-result v10

    if-eqz v10, :cond_22

    invoke-virtual {v8}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v0, v10}, Le/m/d/z/g/d;->p(F)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 142
    invoke-virtual {v8}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_b

    .line 143
    :cond_22
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 145
    :goto_b
    iget v7, p2, Le/m/d/z/m/j;->b:F

    cmpg-float v0, v7, v0

    if-gez v0, :cond_23

    move v0, v4

    goto :goto_c

    :cond_23
    move v0, v5

    :goto_c
    if-nez v0, :cond_24

    .line 146
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/PerfMetric;->getNetworkRequestMetric()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getPerfSessionsList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Le/m/d/z/m/j;->a(Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_24

    :goto_d
    move p2, v5

    goto :goto_e

    :catchall_1
    move-exception p1

    .line 147
    monitor-exit v8

    throw p1

    :cond_24
    move p2, v4

    :goto_e
    if-nez p2, :cond_25

    .line 148
    invoke-virtual {p0, p1}, Le/m/d/z/m/k;->b(Lcom/google/firebase/perf/v1/PerfMetric;)V

    .line 149
    sget-object p2, Le/m/d/z/m/k;->r:Le/m/d/z/i/a;

    const-string v0, "Event dropped due to device sampling - %s"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {p1}, Le/m/d/z/m/k;->a(Le/m/d/z/o/d;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    .line 150
    iget-boolean v8, p2, Le/m/d/z/i/a;->b:Z

    if-eqz v8, :cond_f

    .line 151
    iget-object p2, p2, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v8, v0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 152
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 153
    :cond_25
    iget-object p2, p0, Le/m/d/z/m/k;->l:Le/m/d/z/m/j;

    .line 154
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/PerfMetric;->hasTraceMetric()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 156
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/PerfMetric;->getTraceMetric()Lcom/google/firebase/perf/v1/TraceMetric;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "_fs"

    .line 158
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 159
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/PerfMetric;->getTraceMetric()Lcom/google/firebase/perf/v1/TraceMetric;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "_bs"

    .line 161
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 162
    :cond_26
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/PerfMetric;->getTraceMetric()Lcom/google/firebase/perf/v1/TraceMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->getCountersCount()I

    move-result v0

    if-lez v0, :cond_27

    goto :goto_f

    .line 163
    :cond_27
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/PerfMetric;->hasGaugeMetric()Z

    move-result v0

    if-eqz v0, :cond_28

    :goto_f
    move v0, v5

    goto :goto_10

    :cond_28
    move v0, v4

    :goto_10
    if-nez v0, :cond_29

    move p2, v5

    goto :goto_12

    .line 164
    :cond_29
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/PerfMetric;->hasNetworkRequestMetric()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 165
    iget-object p2, p2, Le/m/d/z/m/j;->d:Le/m/d/z/m/j$a;

    invoke-virtual {p2}, Le/m/d/z/m/j$a;->b()Z

    move-result p2

    goto :goto_11

    .line 166
    :cond_2a
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/PerfMetric;->hasTraceMetric()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 167
    iget-object p2, p2, Le/m/d/z/m/j;->c:Le/m/d/z/m/j$a;

    invoke-virtual {p2}, Le/m/d/z/m/j$a;->b()Z

    move-result p2

    :goto_11
    xor-int/2addr p2, v4

    goto :goto_12

    :cond_2b
    move p2, v4

    :goto_12
    if-eqz p2, :cond_2c

    .line 168
    invoke-virtual {p0, p1}, Le/m/d/z/m/k;->b(Lcom/google/firebase/perf/v1/PerfMetric;)V

    .line 169
    sget-object p2, Le/m/d/z/m/k;->r:Le/m/d/z/i/a;

    const-string v0, "Rate limited (per device) - %s"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {p1}, Le/m/d/z/m/k;->a(Le/m/d/z/o/d;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    .line 170
    iget-boolean v8, p2, Le/m/d/z/i/a;->b:Z

    if-eqz v8, :cond_f

    .line 171
    iget-object p2, p2, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v8, v0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 172
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_2c
    move p2, v4

    :goto_13
    if-eqz p2, :cond_35

    .line 173
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/PerfMetric;->hasTraceMetric()Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 174
    sget-object p2, Le/m/d/z/m/k;->r:Le/m/d/z/i/a;

    new-array v0, v2, [Ljava/lang/Object;

    .line 175
    invoke-static {p1}, Le/m/d/z/m/k;->a(Le/m/d/z/o/d;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v5

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/PerfMetric;->getTraceMetric()Lcom/google/firebase/perf/v1/TraceMetric;

    move-result-object v7

    .line 176
    invoke-virtual {v7}, Lcom/google/firebase/perf/v1/TraceMetric;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "_st_"

    .line 177
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "android-ide"

    const-string v10, "perf-android-sdk"

    if-eqz v8, :cond_2d

    .line 178
    iget-object v8, p0, Le/m/d/z/m/k;->p:Ljava/lang/String;

    iget-object v11, p0, Le/m/d/z/m/k;->o:Ljava/lang/String;

    .line 179
    invoke-static {v8, v11}, Le/m/d/y/n;->W(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v8, v3, v5

    aput-object v7, v3, v4

    aput-object v10, v3, v2

    aput-object v9, v3, v1

    const-string v1, "%s/metrics/trace/SCREEN_TRACE/%s?utm_source=%s&utm_medium=%s"

    .line 180
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    .line 181
    :cond_2d
    iget-object v8, p0, Le/m/d/z/m/k;->p:Ljava/lang/String;

    iget-object v11, p0, Le/m/d/z/m/k;->o:Ljava/lang/String;

    .line 182
    invoke-static {v8, v11}, Le/m/d/y/n;->W(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v8, v3, v5

    aput-object v7, v3, v4

    aput-object v10, v3, v2

    aput-object v9, v3, v1

    const-string v1, "%s/metrics/trace/DURATION_TRACE/%s?utm_source=%s&utm_medium=%s"

    .line 183
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_14
    aput-object v1, v0, v4

    .line 184
    iget-boolean v1, p2, Le/m/d/z/i/a;->b:Z

    if-eqz v1, :cond_2f

    .line 185
    iget-object p2, p2, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "Logging %s. In a minute, visit the Firebase console to view your data: %s"

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 186
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 187
    :cond_2e
    sget-object p2, Le/m/d/z/m/k;->r:Le/m/d/z/i/a;

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1}, Le/m/d/z/m/k;->a(Le/m/d/z/o/d;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 188
    iget-boolean v1, p2, Le/m/d/z/i/a;->b:Z

    if-eqz v1, :cond_2f

    .line 189
    iget-object p2, p2, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "Logging %s"

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 190
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_2f
    :goto_15
    iget-object p2, p0, Le/m/d/z/m/k;->h:Le/m/d/z/m/h;

    .line 192
    iget-object v0, p2, Le/m/d/z/m/h;->c:Le/m/a/b/f;

    if-nez v0, :cond_31

    .line 193
    iget-object v0, p2, Le/m/d/z/m/h;->b:Le/m/d/v/b;

    invoke-interface {v0}, Le/m/d/v/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/b/g;

    if-eqz v0, :cond_30

    .line 194
    iget-object v1, p2, Le/m/d/z/m/h;->a:Ljava/lang/String;

    const-class v2, Lcom/google/firebase/perf/v1/PerfMetric;

    .line 195
    new-instance v3, Le/m/a/b/b;

    const-string v7, "proto"

    invoke-direct {v3, v7}, Le/m/a/b/b;-><init>(Ljava/lang/String;)V

    .line 196
    sget-object v7, Le/m/d/z/m/a;->a:Le/m/d/z/m/a;

    .line 197
    invoke-interface {v0, v1, v2, v3, v7}, Le/m/a/b/g;->a(Ljava/lang/String;Ljava/lang/Class;Le/m/a/b/b;Le/m/a/b/e;)Le/m/a/b/f;

    move-result-object v0

    iput-object v0, p2, Le/m/d/z/m/h;->c:Le/m/a/b/f;

    goto :goto_16

    .line 198
    :cond_30
    sget-object v0, Le/m/d/z/m/h;->d:Le/m/d/z/i/a;

    .line 199
    iget-boolean v1, v0, Le/m/d/z/i/a;->b:Z

    if-eqz v1, :cond_31

    .line 200
    iget-object v0, v0, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    .line 201
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_31
    :goto_16
    iget-object p2, p2, Le/m/d/z/m/h;->c:Le/m/a/b/f;

    if-eqz p2, :cond_32

    goto :goto_17

    :cond_32
    move v4, v5

    :goto_17
    if-nez v4, :cond_33

    .line 203
    sget-object p1, Le/m/d/z/m/h;->d:Le/m/d/z/i/a;

    .line 204
    iget-boolean p2, p1, Le/m/d/z/i/a;->b:Z

    if-eqz p2, :cond_34

    .line 205
    iget-object p1, p1, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    .line 206
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 207
    :cond_33
    new-instance v0, Le/m/a/b/a;

    sget-object v1, Le/m/a/b/d;->a:Le/m/a/b/d;

    invoke-direct {v0, v6, p1, v1}, Le/m/a/b/a;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Le/m/a/b/d;)V

    .line 208
    check-cast p2, Le/m/a/b/j/t;

    .line 209
    sget-object p1, Le/m/a/b/j/a;->a:Le/m/a/b/j/a;

    invoke-virtual {p2, v0, p1}, Le/m/a/b/j/t;->a(Le/m/a/b/c;Le/m/a/b/h;)V

    .line 210
    :cond_34
    :goto_18
    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/perf/session/SessionManager;->updatePerfSessionIfExpired()Z

    :cond_35
    return-void
.end method

.method public onUpdateAppState(Le/m/d/z/o/b;)V
    .locals 1

    .line 1
    sget-object v0, Le/m/d/z/o/b;->c:Le/m/d/z/o/b;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Le/m/d/z/m/k;->q:Z

    .line 2
    invoke-virtual {p0}, Le/m/d/z/m/k;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Le/m/d/z/m/k;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Le/m/d/z/m/e;

    invoke-direct {v0, p0}, Le/m/d/z/m/e;-><init>(Le/m/d/z/m/k;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
