.class public Lcom/google/firebase/perf/internal/GaugeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final APPROX_NUMBER_OF_DATA_POINTS_PER_GAUGE_METRIC:J = 0x14L

.field private static final INVALID_GAUGE_COLLECTION_FREQUENCY:J = -0x1L

.field private static final TIME_TO_WAIT_BEFORE_FLUSHING_GAUGES_QUEUE_MS:J = 0x14L

.field private static final logger:Lcom/google/firebase/perf/g/a;

.field private static sharedInstance:Lcom/google/firebase/perf/internal/GaugeManager;


# instance fields
.field private applicationProcessState:Lcom/google/firebase/perf/j/d;

.field private final configResolver:Lcom/google/firebase/perf/d/a;

.field private final cpuGaugeCollector:Lcom/google/firebase/perf/e/c;

.field private gaugeManagerDataCollectionJob:Ljava/util/concurrent/ScheduledFuture;

.field private final gaugeManagerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private gaugeMetadataManager:Lcom/google/firebase/perf/internal/i;

.field private final memoryGaugeCollector:Lcom/google/firebase/perf/e/f;

.field private sessionId:Ljava/lang/String;

.field private final transportManager:Lcom/google/firebase/perf/h/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/g/a;->e()Lcom/google/firebase/perf/g/a;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/internal/GaugeManager;->logger:Lcom/google/firebase/perf/g/a;

    .line 2
    new-instance v0, Lcom/google/firebase/perf/internal/GaugeManager;

    invoke-direct {v0}, Lcom/google/firebase/perf/internal/GaugeManager;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/internal/GaugeManager;->sharedInstance:Lcom/google/firebase/perf/internal/GaugeManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 2
    invoke-static {}, Lcom/google/firebase/perf/h/k;->e()Lcom/google/firebase/perf/h/k;

    move-result-object v2

    .line 3
    invoke-static {}, Lcom/google/firebase/perf/d/a;->f()Lcom/google/firebase/perf/d/a;

    move-result-object v3

    .line 4
    invoke-static {}, Lcom/google/firebase/perf/e/c;->d()Lcom/google/firebase/perf/e/c;

    move-result-object v5

    .line 5
    invoke-static {}, Lcom/google/firebase/perf/e/f;->c()Lcom/google/firebase/perf/e/f;

    move-result-object v6

    const/4 v4, 0x0

    move-object v0, p0

    .line 6
    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/perf/internal/GaugeManager;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/perf/h/k;Lcom/google/firebase/perf/d/a;Lcom/google/firebase/perf/internal/i;Lcom/google/firebase/perf/e/c;Lcom/google/firebase/perf/e/f;)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/perf/h/k;Lcom/google/firebase/perf/d/a;Lcom/google/firebase/perf/internal/i;Lcom/google/firebase/perf/e/c;Lcom/google/firebase/perf/e/f;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v0, Lcom/google/firebase/perf/j/d;->APPLICATION_PROCESS_STATE_UNKNOWN:Lcom/google/firebase/perf/j/d;

    iput-object v0, p0, Lcom/google/firebase/perf/internal/GaugeManager;->applicationProcessState:Lcom/google/firebase/perf/j/d;

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/google/firebase/perf/internal/GaugeManager;->sessionId:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/google/firebase/perf/internal/GaugeManager;->gaugeManagerDataCollectionJob:Ljava/util/concurrent/ScheduledFuture;

    .line 11
    iput-object p1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->gaugeManagerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 12
    iput-object p2, p0, Lcom/google/firebase/perf/internal/GaugeManager;->transportManager:Lcom/google/firebase/perf/h/k;

    .line 13
    iput-object p3, p0, Lcom/google/firebase/perf/internal/GaugeManager;->configResolver:Lcom/google/firebase/perf/d/a;

    .line 14
    iput-object p4, p0, Lcom/google/firebase/perf/internal/GaugeManager;->gaugeMetadataManager:Lcom/google/firebase/perf/internal/i;

    .line 15
    iput-object p5, p0, Lcom/google/firebase/perf/internal/GaugeManager;->cpuGaugeCollector:Lcom/google/firebase/perf/e/c;

    .line 16
    iput-object p6, p0, Lcom/google/firebase/perf/internal/GaugeManager;->memoryGaugeCollector:Lcom/google/firebase/perf/e/f;

    return-void
.end method

.method private static collectGaugeMetricOnce(Lcom/google/firebase/perf/e/c;Lcom/google/firebase/perf/e/f;Lcom/google/firebase/perf/i/g;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/firebase/perf/e/c;->a(Lcom/google/firebase/perf/i/g;)V

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/firebase/perf/e/f;->a(Lcom/google/firebase/perf/i/g;)V

    return-void
.end method

.method private getCpuGaugeCollectionFrequencyMs(Lcom/google/firebase/perf/j/d;)J
    .locals 5

    .line 1
    sget-object v0, Lcom/google/firebase/perf/internal/GaugeManager$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const-wide/16 v1, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->configResolver:Lcom/google/firebase/perf/d/a;

    invoke-virtual {p1}, Lcom/google/firebase/perf/d/a;->x()J

    move-result-wide v3

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->configResolver:Lcom/google/firebase/perf/d/a;

    invoke-virtual {p1}, Lcom/google/firebase/perf/d/a;->w()J

    move-result-wide v3

    .line 4
    :goto_0
    invoke-static {v3, v4}, Lcom/google/firebase/perf/e/c;->e(J)Z

    move-result p1

    if-eqz p1, :cond_2

    return-wide v1

    :cond_2
    return-wide v3
.end method

.method private getGaugeMetadata()Lcom/google/firebase/perf/j/f;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/j/f;->d0()Lcom/google/firebase/perf/j/f$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->gaugeMetadataManager:Lcom/google/firebase/perf/internal/i;

    .line 2
    invoke-virtual {v1}, Lcom/google/firebase/perf/internal/i;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/j/f$b;->J(Ljava/lang/String;)Lcom/google/firebase/perf/j/f$b;

    iget-object v1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->gaugeMetadataManager:Lcom/google/firebase/perf/internal/i;

    .line 3
    invoke-virtual {v1}, Lcom/google/firebase/perf/internal/i;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/j/f$b;->G(I)Lcom/google/firebase/perf/j/f$b;

    iget-object v1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->gaugeMetadataManager:Lcom/google/firebase/perf/internal/i;

    .line 4
    invoke-virtual {v1}, Lcom/google/firebase/perf/internal/i;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/j/f$b;->H(I)Lcom/google/firebase/perf/j/f$b;

    iget-object v1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->gaugeMetadataManager:Lcom/google/firebase/perf/internal/i;

    .line 5
    invoke-virtual {v1}, Lcom/google/firebase/perf/internal/i;->d()I

    move-result v1

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/j/f$b;->I(I)Lcom/google/firebase/perf/j/f$b;

    .line 7
    invoke-virtual {v0}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/j/f;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/google/firebase/perf/internal/GaugeManager;
    .locals 2

    const-class v0, Lcom/google/firebase/perf/internal/GaugeManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/internal/GaugeManager;->sharedInstance:Lcom/google/firebase/perf/internal/GaugeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getMemoryGaugeCollectionFrequencyMs(Lcom/google/firebase/perf/j/d;)J
    .locals 5

    .line 1
    sget-object v0, Lcom/google/firebase/perf/internal/GaugeManager$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const-wide/16 v1, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->configResolver:Lcom/google/firebase/perf/d/a;

    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/perf/d/a;->A()J

    move-result-wide v3

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->configResolver:Lcom/google/firebase/perf/d/a;

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/perf/d/a;->z()J

    move-result-wide v3

    .line 6
    :goto_0
    invoke-static {v3, v4}, Lcom/google/firebase/perf/e/f;->d(J)Z

    move-result p1

    if-eqz p1, :cond_2

    return-wide v1

    :cond_2
    return-wide v3
.end method

.method static synthetic lambda$startCollectingGauges$0(Lcom/google/firebase/perf/internal/GaugeManager;Ljava/lang/String;Lcom/google/firebase/perf/j/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/internal/GaugeManager;->syncFlush(Ljava/lang/String;Lcom/google/firebase/perf/j/d;)V

    return-void
.end method

.method static synthetic lambda$stopCollectingGauges$1(Lcom/google/firebase/perf/internal/GaugeManager;Ljava/lang/String;Lcom/google/firebase/perf/j/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/internal/GaugeManager;->syncFlush(Ljava/lang/String;Lcom/google/firebase/perf/j/d;)V

    return-void
.end method

.method private startCollectingCpuMetrics(JLcom/google/firebase/perf/i/g;)Z
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1
    sget-object p1, Lcom/google/firebase/perf/internal/GaugeManager;->logger:Lcom/google/firebase/perf/g/a;

    const-string p2, "Invalid Cpu Metrics collection frequency. Did not collect Cpu Metrics."

    invoke-virtual {p1, p2}, Lcom/google/firebase/perf/g/a;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/internal/GaugeManager;->cpuGaugeCollector:Lcom/google/firebase/perf/e/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/perf/e/c;->j(JLcom/google/firebase/perf/i/g;)V

    const/4 p1, 0x1

    return p1
.end method

.method private startCollectingGauges(Lcom/google/firebase/perf/j/d;Lcom/google/firebase/perf/i/g;)J
    .locals 7

    .line 10
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/internal/GaugeManager;->getCpuGaugeCollectionFrequencyMs(Lcom/google/firebase/perf/j/d;)J

    move-result-wide v0

    .line 11
    invoke-direct {p0, v0, v1, p2}, Lcom/google/firebase/perf/internal/GaugeManager;->startCollectingCpuMetrics(JLcom/google/firebase/perf/i/g;)Z

    move-result v2

    const-wide/16 v3, -0x1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v3

    .line 12
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/internal/GaugeManager;->getMemoryGaugeCollectionFrequencyMs(Lcom/google/firebase/perf/j/d;)J

    move-result-wide v5

    .line 13
    invoke-direct {p0, v5, v6, p2}, Lcom/google/firebase/perf/internal/GaugeManager;->startCollectingMemoryMetrics(JLcom/google/firebase/perf/i/g;)Z

    move-result p1

    if-eqz p1, :cond_2

    cmp-long p1, v0, v3

    if-nez p1, :cond_1

    move-wide v0, v5

    goto :goto_1

    .line 14
    :cond_1
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    move-wide v0, p1

    :cond_2
    :goto_1
    return-wide v0
.end method

.method private startCollectingMemoryMetrics(JLcom/google/firebase/perf/i/g;)Z
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1
    sget-object p1, Lcom/google/firebase/perf/internal/GaugeManager;->logger:Lcom/google/firebase/perf/g/a;

    const-string p2, "Invalid Memory Metrics collection frequency. Did not collect Memory Metrics."

    invoke-virtual {p1, p2}, Lcom/google/firebase/perf/g/a;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/internal/GaugeManager;->memoryGaugeCollector:Lcom/google/firebase/perf/e/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/perf/e/f;->i(JLcom/google/firebase/perf/i/g;)V

    const/4 p1, 0x1

    return p1
.end method

.method private syncFlush(Ljava/lang/String;Lcom/google/firebase/perf/j/d;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/j/g;->l0()Lcom/google/firebase/perf/j/g$b;

    move-result-object v0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->cpuGaugeCollector:Lcom/google/firebase/perf/e/c;

    iget-object v1, v1, Lcom/google/firebase/perf/e/c;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->cpuGaugeCollector:Lcom/google/firebase/perf/e/c;

    iget-object v1, v1, Lcom/google/firebase/perf/e/c;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/perf/j/e;

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/j/g$b;->H(Lcom/google/firebase/perf/j/e;)Lcom/google/firebase/perf/j/g$b;

    goto :goto_0

    .line 4
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->memoryGaugeCollector:Lcom/google/firebase/perf/e/f;

    iget-object v1, v1, Lcom/google/firebase/perf/e/f;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->memoryGaugeCollector:Lcom/google/firebase/perf/e/f;

    iget-object v1, v1, Lcom/google/firebase/perf/e/f;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/perf/j/b;

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/j/g$b;->G(Lcom/google/firebase/perf/j/b;)Lcom/google/firebase/perf/j/g$b;

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/j/g$b;->J(Ljava/lang/String;)Lcom/google/firebase/perf/j/g$b;

    .line 7
    iget-object p1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->transportManager:Lcom/google/firebase/perf/h/k;

    invoke-virtual {v0}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/j/g;

    invoke-virtual {p1, v0, p2}, Lcom/google/firebase/perf/h/k;->u(Lcom/google/firebase/perf/j/g;Lcom/google/firebase/perf/j/d;)V

    return-void
.end method


# virtual methods
.method public collectGaugeMetricOnce(Lcom/google/firebase/perf/i/g;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/internal/GaugeManager;->cpuGaugeCollector:Lcom/google/firebase/perf/e/c;

    iget-object v1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->memoryGaugeCollector:Lcom/google/firebase/perf/e/f;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/perf/internal/GaugeManager;->collectGaugeMetricOnce(Lcom/google/firebase/perf/e/c;Lcom/google/firebase/perf/e/f;Lcom/google/firebase/perf/i/g;)V

    return-void
.end method

.method logGaugeMetadata(Ljava/lang/String;Lcom/google/firebase/perf/j/d;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/internal/GaugeManager;->gaugeMetadataManager:Lcom/google/firebase/perf/internal/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/firebase/perf/j/g;->l0()Lcom/google/firebase/perf/j/g$b;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/j/g$b;->J(Ljava/lang/String;)Lcom/google/firebase/perf/j/g$b;

    .line 4
    invoke-direct {p0}, Lcom/google/firebase/perf/internal/GaugeManager;->getGaugeMetadata()Lcom/google/firebase/perf/j/f;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/j/g$b;->I(Lcom/google/firebase/perf/j/f;)Lcom/google/firebase/perf/j/g$b;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/j/g;

    .line 6
    iget-object v0, p0, Lcom/google/firebase/perf/internal/GaugeManager;->transportManager:Lcom/google/firebase/perf/h/k;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/h/k;->u(Lcom/google/firebase/perf/j/g;Lcom/google/firebase/perf/j/d;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setApplicationContext(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/perf/internal/i;

    invoke-direct {v0, p1}, Lcom/google/firebase/perf/internal/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/firebase/perf/internal/GaugeManager;->gaugeMetadataManager:Lcom/google/firebase/perf/internal/i;

    return-void
.end method

.method public startCollectingGauges(Lcom/google/firebase/perf/internal/k;Lcom/google/firebase/perf/j/d;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/internal/GaugeManager;->sessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/perf/internal/GaugeManager;->stopCollectingGauges()V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/perf/internal/k;->d()Lcom/google/firebase/perf/i/g;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/firebase/perf/internal/GaugeManager;->startCollectingGauges(Lcom/google/firebase/perf/j/d;Lcom/google/firebase/perf/i/g;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 4
    sget-object p1, Lcom/google/firebase/perf/internal/GaugeManager;->logger:Lcom/google/firebase/perf/g/a;

    const-string p2, "Invalid gauge collection frequency. Unable to start collecting Gauges."

    invoke-virtual {p1, p2}, Lcom/google/firebase/perf/g/a;->i(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/perf/internal/k;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->sessionId:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/google/firebase/perf/internal/GaugeManager;->applicationProcessState:Lcom/google/firebase/perf/j/d;

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/perf/internal/GaugeManager;->gaugeManagerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p0, p1, p2}, Lcom/google/firebase/perf/internal/g;->a(Lcom/google/firebase/perf/internal/GaugeManager;Ljava/lang/String;Lcom/google/firebase/perf/j/d;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 p1, 0x14

    mul-long v6, v0, p1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v6

    .line 8
    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->gaugeManagerDataCollectionJob:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    sget-object p2, Lcom/google/firebase/perf/internal/GaugeManager;->logger:Lcom/google/firebase/perf/g/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to start collecting Gauges: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/firebase/perf/g/a;->i(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stopCollectingGauges()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/internal/GaugeManager;->sessionId:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->applicationProcessState:Lcom/google/firebase/perf/j/d;

    .line 3
    iget-object v2, p0, Lcom/google/firebase/perf/internal/GaugeManager;->cpuGaugeCollector:Lcom/google/firebase/perf/e/c;

    invoke-virtual {v2}, Lcom/google/firebase/perf/e/c;->k()V

    .line 4
    iget-object v2, p0, Lcom/google/firebase/perf/internal/GaugeManager;->memoryGaugeCollector:Lcom/google/firebase/perf/e/f;

    invoke-virtual {v2}, Lcom/google/firebase/perf/e/f;->j()V

    .line 5
    iget-object v2, p0, Lcom/google/firebase/perf/internal/GaugeManager;->gaugeManagerDataCollectionJob:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    .line 6
    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/google/firebase/perf/internal/GaugeManager;->gaugeManagerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p0, v0, v1}, Lcom/google/firebase/perf/internal/h;->a(Lcom/google/firebase/perf/internal/GaugeManager;Ljava/lang/String;Lcom/google/firebase/perf/j/d;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v3, 0x14

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    invoke-interface {v2, v0, v3, v4, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/google/firebase/perf/internal/GaugeManager;->sessionId:Ljava/lang/String;

    .line 10
    sget-object v0, Lcom/google/firebase/perf/j/d;->APPLICATION_PROCESS_STATE_UNKNOWN:Lcom/google/firebase/perf/j/d;

    iput-object v0, p0, Lcom/google/firebase/perf/internal/GaugeManager;->applicationProcessState:Lcom/google/firebase/perf/j/d;

    return-void
.end method
