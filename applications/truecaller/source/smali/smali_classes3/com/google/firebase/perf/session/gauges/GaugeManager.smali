.class public Lcom/google/firebase/perf/session/gauges/GaugeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final APPROX_NUMBER_OF_DATA_POINTS_PER_GAUGE_METRIC:J = 0x14L

.field private static final INVALID_GAUGE_COLLECTION_FREQUENCY:J = -0x1L

.field private static final TIME_TO_WAIT_BEFORE_FLUSHING_GAUGES_QUEUE_MS:J = 0x14L

.field public static final synthetic a:I

.field private static final instance:Lcom/google/firebase/perf/session/gauges/GaugeManager;

.field private static final logger:Le/m/d/z/i/a;


# instance fields
.field private applicationProcessState:Le/m/d/z/o/b;

.field private final configResolver:Le/m/d/z/g/d;

.field private final cpuGaugeCollector:Le/m/d/m/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/d/m/c0<",
            "Le/m/d/z/l/c/j;",
            ">;"
        }
    .end annotation
.end field

.field private gaugeManagerDataCollectionJob:Ljava/util/concurrent/ScheduledFuture;

.field private final gaugeManagerExecutor:Le/m/d/m/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/d/m/c0<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private gaugeMetadataManager:Le/m/d/z/l/c/k;

.field private final memoryGaugeCollector:Le/m/d/m/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/d/m/c0<",
            "Le/m/d/z/l/c/l;",
            ">;"
        }
    .end annotation
.end field

.field private sessionId:Ljava/lang/String;

.field private final transportManager:Le/m/d/z/m/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Le/m/d/z/i/a;->b()Le/m/d/z/i/a;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->logger:Le/m/d/z/i/a;

    .line 2
    new-instance v0, Lcom/google/firebase/perf/session/gauges/GaugeManager;

    invoke-direct {v0}, Lcom/google/firebase/perf/session/gauges/GaugeManager;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->instance:Lcom/google/firebase/perf/session/gauges/GaugeManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 1
    new-instance v1, Le/m/d/m/c0;

    sget-object v0, Le/m/d/z/l/c/d;->a:Le/m/d/z/l/c/d;

    invoke-direct {v1, v0}, Le/m/d/m/c0;-><init>(Le/m/d/v/b;)V

    .line 2
    sget-object v2, Le/m/d/z/m/k;->s:Le/m/d/z/m/k;

    .line 3
    invoke-static {}, Le/m/d/z/g/d;->e()Le/m/d/z/g/d;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Le/m/d/m/c0;

    sget-object v0, Le/m/d/z/l/c/g;->a:Le/m/d/z/l/c/g;

    invoke-direct {v5, v0}, Le/m/d/m/c0;-><init>(Le/m/d/v/b;)V

    new-instance v6, Le/m/d/m/c0;

    sget-object v0, Le/m/d/z/l/c/f;->a:Le/m/d/z/l/c/f;

    invoke-direct {v6, v0}, Le/m/d/m/c0;-><init>(Le/m/d/v/b;)V

    move-object v0, p0

    .line 4
    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/perf/session/gauges/GaugeManager;-><init>(Le/m/d/m/c0;Le/m/d/z/m/k;Le/m/d/z/g/d;Le/m/d/z/l/c/k;Le/m/d/m/c0;Le/m/d/m/c0;)V

    return-void
.end method

.method public constructor <init>(Le/m/d/m/c0;Le/m/d/z/m/k;Le/m/d/z/g/d;Le/m/d/z/l/c/k;Le/m/d/m/c0;Le/m/d/m/c0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/d/m/c0<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Le/m/d/z/m/k;",
            "Le/m/d/z/g/d;",
            "Le/m/d/z/l/c/k;",
            "Le/m/d/m/c0<",
            "Le/m/d/z/l/c/j;",
            ">;",
            "Le/m/d/m/c0<",
            "Le/m/d/z/l/c/l;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeManagerDataCollectionJob:Ljava/util/concurrent/ScheduledFuture;

    .line 7
    iput-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->sessionId:Ljava/lang/String;

    .line 8
    sget-object v0, Le/m/d/z/o/b;->b:Le/m/d/z/o/b;

    iput-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->applicationProcessState:Le/m/d/z/o/b;

    .line 9
    iput-object p1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeManagerExecutor:Le/m/d/m/c0;

    .line 10
    iput-object p2, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->transportManager:Le/m/d/z/m/k;

    .line 11
    iput-object p3, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->configResolver:Le/m/d/z/g/d;

    .line 12
    iput-object p4, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeMetadataManager:Le/m/d/z/l/c/k;

    .line 13
    iput-object p5, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->cpuGaugeCollector:Le/m/d/m/c0;

    .line 14
    iput-object p6, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->memoryGaugeCollector:Le/m/d/m/c0;

    return-void
.end method

.method private static collectGaugeMetricOnce(Le/m/d/z/l/c/j;Le/m/d/z/l/c/l;Lcom/google/firebase/perf/util/Timer;)V
    .locals 6

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Le/m/d/z/l/c/j;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Le/m/d/z/l/c/a;

    invoke-direct {v3, p0, p2}, Le/m/d/z/l/c/a;-><init>(Le/m/d/z/l/c/j;Lcom/google/firebase/perf/util/Timer;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-interface {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v2

    .line 4
    :try_start_1
    sget-object v3, Le/m/d/z/l/c/j;->g:Le/m/d/z/i/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to collect Cpu Metric: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Le/m/d/z/i/a;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :goto_0
    monitor-exit p0

    .line 6
    monitor-enter p1

    .line 7
    :try_start_2
    iget-object p0, p1, Le/m/d/z/l/c/l;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Le/m/d/z/l/c/i;

    invoke-direct {v2, p1, p2}, Le/m/d/z/l/c/i;-><init>(Le/m/d/z/l/c/l;Lcom/google/firebase/perf/util/Timer;)V

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    invoke-interface {p0, v2, v0, v1, p2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 9
    :try_start_3
    sget-object p2, Le/m/d/z/l/c/l;->f:Le/m/d/z/i/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to collect Memory Metric: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Le/m/d/z/i/a;->c(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 10
    :goto_1
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1

    throw p0

    .line 11
    :goto_3
    monitor-exit p0

    throw p1
.end method

.method private getCpuGaugeCollectionFrequencyMs(Le/m/d/z/o/b;)J
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-wide/16 v0, -0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eq p1, v4, :cond_5

    const/4 v5, 0x2

    if-eq p1, v5, :cond_0

    move-wide v5, v0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->configResolver:Le/m/d/z/g/d;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-class v5, Le/m/d/z/g/n;

    monitor-enter v5

    .line 5
    :try_start_0
    sget-object v6, Le/m/d/z/g/n;->a:Le/m/d/z/g/n;

    if-nez v6, :cond_1

    .line 6
    new-instance v6, Le/m/d/z/g/n;

    invoke-direct {v6}, Le/m/d/z/g/n;-><init>()V

    sput-object v6, Le/m/d/z/g/n;->a:Le/m/d/z/g/n;

    .line 7
    :cond_1
    sget-object v6, Le/m/d/z/g/n;->a:Le/m/d/z/g/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 8
    invoke-virtual {p1, v6}, Le/m/d/z/g/d;->h(Le/m/d/z/g/w;)Le/m/d/z/n/e;

    move-result-object v5

    .line 9
    invoke-virtual {v5}, Le/m/d/z/n/e;->c()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Le/m/d/z/g/d;->n(J)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 10
    invoke-virtual {v5}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto/16 :goto_0

    .line 11
    :cond_2
    invoke-virtual {p1, v6}, Le/m/d/z/g/d;->k(Le/m/d/z/g/w;)Le/m/d/z/n/e;

    move-result-object v5

    .line 12
    invoke-virtual {v5}, Le/m/d/z/n/e;->c()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v5}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Le/m/d/z/g/d;->n(J)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 13
    iget-object p1, p1, Le/m/d/z/g/d;->c:Le/m/d/z/g/x;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "com.google.firebase.perf.SessionsCpuCaptureFrequencyBackgroundMs"

    invoke-virtual {v5}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-static {v7, p1, v6, v5}, Le/d/c/a/a;->D1(Ljava/lang/Long;Le/m/d/z/g/x;Ljava/lang/String;Le/m/d/z/n/e;)Ljava/lang/Object;

    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto/16 :goto_0

    .line 15
    :cond_3
    invoke-virtual {p1, v6}, Le/m/d/z/g/d;->c(Le/m/d/z/g/w;)Le/m/d/z/n/e;

    move-result-object v5

    .line 16
    invoke-virtual {v5}, Le/m/d/z/n/e;->c()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v5}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Le/m/d/z/g/d;->n(J)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 17
    invoke-virtual {v5}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto/16 :goto_0

    .line 18
    :cond_4
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 21
    monitor-exit v5

    throw p1

    .line 22
    :cond_5
    iget-object p1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->configResolver:Le/m/d/z/g/d;

    .line 23
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-class v5, Le/m/d/z/g/o;

    monitor-enter v5

    .line 25
    :try_start_1
    sget-object v6, Le/m/d/z/g/o;->a:Le/m/d/z/g/o;

    if-nez v6, :cond_6

    .line 26
    new-instance v6, Le/m/d/z/g/o;

    invoke-direct {v6}, Le/m/d/z/g/o;-><init>()V

    sput-object v6, Le/m/d/z/g/o;->a:Le/m/d/z/g/o;

    .line 27
    :cond_6
    sget-object v6, Le/m/d/z/g/o;->a:Le/m/d/z/g/o;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v5

    .line 28
    invoke-virtual {p1, v6}, Le/m/d/z/g/d;->h(Le/m/d/z/g/w;)Le/m/d/z/n/e;

    move-result-object v5

    .line 29
    invoke-virtual {v5}, Le/m/d/z/n/e;->c()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v5}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Le/m/d/z/g/d;->n(J)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 30
    invoke-virtual {v5}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_0

    .line 31
    :cond_7
    invoke-virtual {p1, v6}, Le/m/d/z/g/d;->k(Le/m/d/z/g/w;)Le/m/d/z/n/e;

    move-result-object v5

    .line 32
    invoke-virtual {v5}, Le/m/d/z/n/e;->c()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v5}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Le/m/d/z/g/d;->n(J)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 33
    iget-object p1, p1, Le/m/d/z/g/d;->c:Le/m/d/z/g/x;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "com.google.firebase.perf.SessionsCpuCaptureFrequencyForegroundMs"

    invoke-virtual {v5}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-static {v7, p1, v6, v5}, Le/d/c/a/a;->D1(Ljava/lang/Long;Le/m/d/z/g/x;Ljava/lang/String;Le/m/d/z/n/e;)Ljava/lang/Object;

    move-result-object p1

    .line 34
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_0

    .line 35
    :cond_8
    invoke-virtual {p1, v6}, Le/m/d/z/g/d;->c(Le/m/d/z/g/w;)Le/m/d/z/n/e;

    move-result-object v5

    .line 36
    invoke-virtual {v5}, Le/m/d/z/n/e;->c()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v5}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Le/m/d/z/g/d;->n(J)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 37
    invoke-virtual {v5}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_0

    .line 38
    :cond_9
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v5, 0x64

    .line 39
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 41
    :goto_0
    sget-object p1, Le/m/d/z/l/c/j;->g:Le/m/d/z/i/a;

    cmp-long p1, v5, v2

    if-gtz p1, :cond_a

    goto :goto_1

    :cond_a
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_b

    return-wide v0

    :cond_b
    return-wide v5

    :catchall_1
    move-exception p1

    .line 42
    monitor-exit v5

    throw p1
.end method

.method private getGaugeMetadata()Lcom/google/firebase/perf/v1/GaugeMetadata;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/v1/GaugeMetadata;->newBuilder()Lcom/google/firebase/perf/v1/GaugeMetadata$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeMetadataManager:Le/m/d/z/l/c/k;

    .line 2
    iget-object v1, v1, Le/m/d/z/l/c/k;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v2, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-static {v2, v1}, Lcom/google/firebase/perf/v1/GaugeMetadata;->access$100(Lcom/google/firebase/perf/v1/GaugeMetadata;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeMetadataManager:Le/m/d/z/l/c/k;

    .line 6
    sget-object v2, Le/m/d/z/n/g;->f:Le/m/d/z/n/g;

    iget-object v1, v1, Le/m/d/z/l/c/k;->c:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v3, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-virtual {v2, v3, v4}, Le/m/d/z/n/g;->a(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Le/m/d/z/n/h;->b(J)I

    move-result v1

    .line 7
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8
    iget-object v3, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v3, Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-static {v3, v1}, Lcom/google/firebase/perf/v1/GaugeMetadata;->access$800(Lcom/google/firebase/perf/v1/GaugeMetadata;I)V

    .line 9
    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeMetadataManager:Le/m/d/z/l/c/k;

    .line 10
    iget-object v1, v1, Le/m/d/z/l/c/k;->a:Ljava/lang/Runtime;

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Le/m/d/z/n/g;->a(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Le/m/d/z/n/h;->b(J)I

    move-result v1

    .line 11
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12
    iget-object v2, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-static {v2, v1}, Lcom/google/firebase/perf/v1/GaugeMetadata;->access$1000(Lcom/google/firebase/perf/v1/GaugeMetadata;I)V

    .line 13
    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeMetadataManager:Le/m/d/z/l/c/k;

    .line 14
    sget-object v2, Le/m/d/z/n/g;->d:Le/m/d/z/n/g;

    iget-object v1, v1, Le/m/d/z/l/c/k;->b:Landroid/app/ActivityManager;

    .line 15
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Le/m/d/z/n/g;->a(J)J

    move-result-wide v1

    .line 16
    invoke-static {v1, v2}, Le/m/d/z/n/h;->b(J)I

    move-result v1

    .line 17
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18
    iget-object v2, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-static {v2, v1}, Lcom/google/firebase/perf/v1/GaugeMetadata;->access$1200(Lcom/google/firebase/perf/v1/GaugeMetadata;I)V

    .line 19
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/google/firebase/perf/session/gauges/GaugeManager;
    .locals 2

    const-class v0, Lcom/google/firebase/perf/session/gauges/GaugeManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/session/gauges/GaugeManager;->instance:Lcom/google/firebase/perf/session/gauges/GaugeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getMemoryGaugeCollectionFrequencyMs(Le/m/d/z/o/b;)J
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-wide/16 v0, -0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eq p1, v4, :cond_5

    const/4 v5, 0x2

    if-eq p1, v5, :cond_0

    move-wide v5, v0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->configResolver:Le/m/d/z/g/d;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-class v5, Le/m/d/z/g/q;

    monitor-enter v5

    .line 5
    :try_start_0
    sget-object v6, Le/m/d/z/g/q;->a:Le/m/d/z/g/q;

    if-nez v6, :cond_1

    .line 6
    new-instance v6, Le/m/d/z/g/q;

    invoke-direct {v6}, Le/m/d/z/g/q;-><init>()V

    sput-object v6, Le/m/d/z/g/q;->a:Le/m/d/z/g/q;

    .line 7
    :cond_1
    sget-object v6, Le/m/d/z/g/q;->a:Le/m/d/z/g/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 8
    invoke-virtual {p1, v6}, Le/m/d/z/g/d;->h(Le/m/d/z/g/w;)Le/m/d/z/n/e;

    move-result-object v5

    .line 9
    invoke-virtual {v5}, Le/m/d/z/n/e;->c()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Le/m/d/z/g/d;->n(J)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 10
    invoke-virtual {v5}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto/16 :goto_0

    .line 11
    :cond_2
    invoke-virtual {p1, v6}, Le/m/d/z/g/d;->k(Le/m/d/z/g/w;)Le/m/d/z/n/e;

    move-result-object v5

    .line 12
    invoke-virtual {v5}, Le/m/d/z/n/e;->c()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v5}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Le/m/d/z/g/d;->n(J)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 13
    iget-object p1, p1, Le/m/d/z/g/d;->c:Le/m/d/z/g/x;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "com.google.firebase.perf.SessionsMemoryCaptureFrequencyBackgroundMs"

    invoke-virtual {v5}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-static {v7, p1, v6, v5}, Le/d/c/a/a;->D1(Ljava/lang/Long;Le/m/d/z/g/x;Ljava/lang/String;Le/m/d/z/n/e;)Ljava/lang/Object;

    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto/16 :goto_0

    .line 15
    :cond_3
    invoke-virtual {p1, v6}, Le/m/d/z/g/d;->c(Le/m/d/z/g/w;)Le/m/d/z/n/e;

    move-result-object v5

    .line 16
    invoke-virtual {v5}, Le/m/d/z/n/e;->c()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v5}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Le/m/d/z/g/d;->n(J)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 17
    invoke-virtual {v5}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto/16 :goto_0

    .line 18
    :cond_4
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 21
    monitor-exit v5

    throw p1

    .line 22
    :cond_5
    iget-object p1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->configResolver:Le/m/d/z/g/d;

    .line 23
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-class v5, Le/m/d/z/g/r;

    monitor-enter v5

    .line 25
    :try_start_1
    sget-object v6, Le/m/d/z/g/r;->a:Le/m/d/z/g/r;

    if-nez v6, :cond_6

    .line 26
    new-instance v6, Le/m/d/z/g/r;

    invoke-direct {v6}, Le/m/d/z/g/r;-><init>()V

    sput-object v6, Le/m/d/z/g/r;->a:Le/m/d/z/g/r;

    .line 27
    :cond_6
    sget-object v6, Le/m/d/z/g/r;->a:Le/m/d/z/g/r;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v5

    .line 28
    invoke-virtual {p1, v6}, Le/m/d/z/g/d;->h(Le/m/d/z/g/w;)Le/m/d/z/n/e;

    move-result-object v5

    .line 29
    invoke-virtual {v5}, Le/m/d/z/n/e;->c()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v5}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Le/m/d/z/g/d;->n(J)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 30
    invoke-virtual {v5}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_0

    .line 31
    :cond_7
    invoke-virtual {p1, v6}, Le/m/d/z/g/d;->k(Le/m/d/z/g/w;)Le/m/d/z/n/e;

    move-result-object v5

    .line 32
    invoke-virtual {v5}, Le/m/d/z/n/e;->c()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v5}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Le/m/d/z/g/d;->n(J)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 33
    iget-object p1, p1, Le/m/d/z/g/d;->c:Le/m/d/z/g/x;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "com.google.firebase.perf.SessionsMemoryCaptureFrequencyForegroundMs"

    invoke-virtual {v5}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-static {v7, p1, v6, v5}, Le/d/c/a/a;->D1(Ljava/lang/Long;Le/m/d/z/g/x;Ljava/lang/String;Le/m/d/z/n/e;)Ljava/lang/Object;

    move-result-object p1

    .line 34
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_0

    .line 35
    :cond_8
    invoke-virtual {p1, v6}, Le/m/d/z/g/d;->c(Le/m/d/z/g/w;)Le/m/d/z/n/e;

    move-result-object v5

    .line 36
    invoke-virtual {v5}, Le/m/d/z/n/e;->c()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v5}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Le/m/d/z/g/d;->n(J)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 37
    invoke-virtual {v5}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_0

    .line 38
    :cond_9
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v5, 0x64

    .line 39
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 41
    :goto_0
    sget-object p1, Le/m/d/z/l/c/l;->f:Le/m/d/z/i/a;

    cmp-long p1, v5, v2

    if-gtz p1, :cond_a

    goto :goto_1

    :cond_a
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_b

    return-wide v0

    :cond_b
    return-wide v5

    :catchall_1
    move-exception p1

    .line 42
    monitor-exit v5

    throw p1
.end method

.method private startCollectingCpuMetrics(JLcom/google/firebase/perf/util/Timer;)Z
    .locals 10

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 1
    sget-object p1, Lcom/google/firebase/perf/session/gauges/GaugeManager;->logger:Le/m/d/z/i/a;

    .line 2
    iget-boolean p2, p1, Le/m/d/z/i/a;->b:Z

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p1, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return v3

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->cpuGaugeCollector:Le/m/d/m/c0;

    invoke-virtual {v2}, Le/m/d/m/c0;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/d/z/l/c/j;

    .line 6
    iget-wide v4, v2, Le/m/d/z/l/c/j;->d:J

    cmp-long v6, v4, v0

    const/4 v7, 0x1

    if-eqz v6, :cond_6

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    cmp-long v4, p1, v8

    if-gtz v4, :cond_3

    move v4, v7

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    if-eqz v4, :cond_4

    goto :goto_1

    .line 7
    :cond_4
    iget-object v4, v2, Le/m/d/z/l/c/j;->e:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v4, :cond_5

    .line 8
    iget-wide v5, v2, Le/m/d/z/l/c/j;->f:J

    cmp-long v5, v5, p1

    if-eqz v5, :cond_6

    .line 9
    invoke-interface {v4, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v3, 0x0

    .line 10
    iput-object v3, v2, Le/m/d/z/l/c/j;->e:Ljava/util/concurrent/ScheduledFuture;

    .line 11
    iput-wide v0, v2, Le/m/d/z/l/c/j;->f:J

    .line 12
    invoke-virtual {v2, p1, p2, p3}, Le/m/d/z/l/c/j;->a(JLcom/google/firebase/perf/util/Timer;)V

    goto :goto_1

    .line 13
    :cond_5
    invoke-virtual {v2, p1, p2, p3}, Le/m/d/z/l/c/j;->a(JLcom/google/firebase/perf/util/Timer;)V

    :cond_6
    :goto_1
    return v7
.end method

.method private startCollectingGauges(Le/m/d/z/o/b;Lcom/google/firebase/perf/util/Timer;)J
    .locals 7

    .line 16
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->getCpuGaugeCollectionFrequencyMs(Le/m/d/z/o/b;)J

    move-result-wide v0

    .line 17
    invoke-direct {p0, v0, v1, p2}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->startCollectingCpuMetrics(JLcom/google/firebase/perf/util/Timer;)Z

    move-result v2

    const-wide/16 v3, -0x1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v3

    .line 18
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->getMemoryGaugeCollectionFrequencyMs(Le/m/d/z/o/b;)J

    move-result-wide v5

    .line 19
    invoke-direct {p0, v5, v6, p2}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->startCollectingMemoryMetrics(JLcom/google/firebase/perf/util/Timer;)Z

    move-result p1

    if-eqz p1, :cond_2

    cmp-long p1, v0, v3

    if-nez p1, :cond_1

    move-wide v0, v5

    goto :goto_1

    .line 20
    :cond_1
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    move-wide v0, p1

    :cond_2
    :goto_1
    return-wide v0
.end method

.method private startCollectingMemoryMetrics(JLcom/google/firebase/perf/util/Timer;)Z
    .locals 8

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 1
    sget-object p1, Lcom/google/firebase/perf/session/gauges/GaugeManager;->logger:Le/m/d/z/i/a;

    .line 2
    iget-boolean p2, p1, Le/m/d/z/i/a;->b:Z

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p1, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return v3

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->memoryGaugeCollector:Le/m/d/m/c0;

    invoke-virtual {v2}, Le/m/d/m/c0;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/d/z/l/c/l;

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    const/4 v5, 0x1

    if-gtz v4, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    if-eqz v4, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    iget-object v4, v2, Le/m/d/z/l/c/l;->d:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v4, :cond_4

    .line 8
    iget-wide v6, v2, Le/m/d/z/l/c/l;->e:J

    cmp-long v6, v6, p1

    if-eqz v6, :cond_5

    .line 9
    invoke-interface {v4, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v3, 0x0

    .line 10
    iput-object v3, v2, Le/m/d/z/l/c/l;->d:Ljava/util/concurrent/ScheduledFuture;

    .line 11
    iput-wide v0, v2, Le/m/d/z/l/c/l;->e:J

    .line 12
    invoke-virtual {v2, p1, p2, p3}, Le/m/d/z/l/c/l;->a(JLcom/google/firebase/perf/util/Timer;)V

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {v2, p1, p2, p3}, Le/m/d/z/l/c/l;->a(JLcom/google/firebase/perf/util/Timer;)V

    :cond_5
    :goto_1
    return v5
.end method

.method private syncFlush(Ljava/lang/String;Le/m/d/z/o/b;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/v1/GaugeMetric;->newBuilder()Lcom/google/firebase/perf/v1/GaugeMetric$b;

    move-result-object v0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->cpuGaugeCollector:Le/m/d/m/c0;

    invoke-virtual {v1}, Le/m/d/m/c0;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/d/z/l/c/j;

    iget-object v1, v1, Le/m/d/z/l/c/j;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->cpuGaugeCollector:Le/m/d/m/c0;

    invoke-virtual {v1}, Le/m/d/m/c0;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/d/z/l/c/j;

    iget-object v1, v1, Le/m/d/z/l/c/j;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/perf/v1/CpuMetricReading;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5
    iget-object v2, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v2, v1}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$800(Lcom/google/firebase/perf/v1/GaugeMetric;Lcom/google/firebase/perf/v1/CpuMetricReading;)V

    goto :goto_0

    .line 6
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->memoryGaugeCollector:Le/m/d/m/c0;

    invoke-virtual {v1}, Le/m/d/m/c0;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/d/z/l/c/l;

    iget-object v1, v1, Le/m/d/z/l/c/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->memoryGaugeCollector:Le/m/d/m/c0;

    .line 8
    invoke-virtual {v1}, Le/m/d/m/c0;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/d/z/l/c/l;

    iget-object v1, v1, Le/m/d/z/l/c/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/perf/v1/AndroidMemoryReading;

    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10
    iget-object v2, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v2, v1}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$1400(Lcom/google/firebase/perf/v1/GaugeMetric;Lcom/google/firebase/perf/v1/AndroidMemoryReading;)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12
    iget-object v1, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v1, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$100(Lcom/google/firebase/perf/v1/GaugeMetric;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->transportManager:Le/m/d/z/m/k;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    .line 14
    iget-object v1, p1, Le/m/d/z/m/k;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Le/m/d/z/m/b;

    invoke-direct {v2, p1, v0, p2}, Le/m/d/z/m/b;-><init>(Le/m/d/z/m/k;Lcom/google/firebase/perf/v1/GaugeMetric;Le/m/d/z/o/b;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/String;Le/m/d/z/o/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->syncFlush(Ljava/lang/String;Le/m/d/z/o/b;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/String;Le/m/d/z/o/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->syncFlush(Ljava/lang/String;Le/m/d/z/o/b;)V

    return-void
.end method

.method public collectGaugeMetricOnce(Lcom/google/firebase/perf/util/Timer;)V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->cpuGaugeCollector:Le/m/d/m/c0;

    invoke-virtual {v0}, Le/m/d/m/c0;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/d/z/l/c/j;

    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->memoryGaugeCollector:Le/m/d/m/c0;

    invoke-virtual {v1}, Le/m/d/m/c0;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/d/z/l/c/l;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->collectGaugeMetricOnce(Le/m/d/z/l/c/j;Le/m/d/z/l/c/l;Lcom/google/firebase/perf/util/Timer;)V

    return-void
.end method

.method public initializeGaugeMetadataManager(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Le/m/d/z/l/c/k;

    invoke-direct {v0, p1}, Le/m/d/z/l/c/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeMetadataManager:Le/m/d/z/l/c/k;

    return-void
.end method

.method public logGaugeMetadata(Ljava/lang/String;Le/m/d/z/o/b;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeMetadataManager:Le/m/d/z/l/c/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/firebase/perf/v1/GaugeMetric;->newBuilder()Lcom/google/firebase/perf/v1/GaugeMetric$b;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v1, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v1, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$100(Lcom/google/firebase/perf/v1/GaugeMetric;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->getGaugeMetadata()Lcom/google/firebase/perf/v1/GaugeMetadata;

    move-result-object p1

    .line 6
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7
    iget-object v1, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v1, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$400(Lcom/google/firebase/perf/v1/GaugeMetric;Lcom/google/firebase/perf/v1/GaugeMetadata;)V

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/GaugeMetric;

    .line 9
    iget-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->transportManager:Le/m/d/z/m/k;

    .line 10
    iget-object v1, v0, Le/m/d/z/m/k;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Le/m/d/z/m/b;

    invoke-direct {v2, v0, p1, p2}, Le/m/d/z/m/b;-><init>(Le/m/d/z/m/k;Lcom/google/firebase/perf/v1/GaugeMetric;Le/m/d/z/o/b;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public startCollectingGauges(Lcom/google/firebase/perf/session/PerfSession;Le/m/d/z/o/b;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->sessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->stopCollectingGauges()V

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/google/firebase/perf/session/PerfSession;->b:Lcom/google/firebase/perf/util/Timer;

    .line 4
    invoke-direct {p0, p2, v0}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->startCollectingGauges(Le/m/d/z/o/b;Lcom/google/firebase/perf/util/Timer;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 5
    sget-object p1, Lcom/google/firebase/perf/session/gauges/GaugeManager;->logger:Le/m/d/z/i/a;

    .line 6
    iget-boolean p2, p1, Le/m/d/z/i/a;->b:Z

    if-eqz p2, :cond_1

    .line 7
    iget-object p1, p1, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    .line 9
    :cond_2
    iget-object p1, p1, Lcom/google/firebase/perf/session/PerfSession;->a:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->sessionId:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->applicationProcessState:Le/m/d/z/o/b;

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeManagerExecutor:Le/m/d/m/c0;

    .line 13
    invoke-virtual {v2}, Le/m/d/m/c0;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Le/m/d/z/l/c/c;

    invoke-direct {v4, p0, p1, p2}, Le/m/d/z/l/c/c;-><init>(Lcom/google/firebase/perf/session/gauges/GaugeManager;Ljava/lang/String;Le/m/d/z/o/b;)V

    const-wide/16 p1, 0x14

    mul-long v7, v0, p1

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v5, v7

    .line 14
    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeManagerDataCollectionJob:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    sget-object p2, Lcom/google/firebase/perf/session/gauges/GaugeManager;->logger:Le/m/d/z/i/a;

    const-string v0, "Unable to start collecting Gauges: "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Le/m/d/z/i/a;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stopCollectingGauges()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->sessionId:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->applicationProcessState:Le/m/d/z/o/b;

    .line 3
    iget-object v2, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->cpuGaugeCollector:Le/m/d/m/c0;

    invoke-virtual {v2}, Le/m/d/m/c0;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/d/z/l/c/j;

    .line 4
    iget-object v3, v2, Le/m/d/z/l/c/j;->e:Ljava/util/concurrent/ScheduledFuture;

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v3, v7}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 6
    iput-object v6, v2, Le/m/d/z/l/c/j;->e:Ljava/util/concurrent/ScheduledFuture;

    .line 7
    iput-wide v4, v2, Le/m/d/z/l/c/j;->f:J

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->memoryGaugeCollector:Le/m/d/m/c0;

    invoke-virtual {v2}, Le/m/d/m/c0;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/d/z/l/c/l;

    .line 9
    iget-object v3, v2, Le/m/d/z/l/c/l;->d:Ljava/util/concurrent/ScheduledFuture;

    if-nez v3, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    invoke-interface {v3, v7}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 11
    iput-object v6, v2, Le/m/d/z/l/c/l;->d:Ljava/util/concurrent/ScheduledFuture;

    .line 12
    iput-wide v4, v2, Le/m/d/z/l/c/l;->e:J

    .line 13
    :goto_1
    iget-object v2, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeManagerDataCollectionJob:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_3

    .line 14
    invoke-interface {v2, v7}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 15
    :cond_3
    iget-object v2, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeManagerExecutor:Le/m/d/m/c0;

    .line 16
    invoke-virtual {v2}, Le/m/d/m/c0;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Le/m/d/z/l/c/e;

    invoke-direct {v3, p0, v0, v1}, Le/m/d/z/l/c/e;-><init>(Lcom/google/firebase/perf/session/gauges/GaugeManager;Ljava/lang/String;Le/m/d/z/o/b;)V

    const-wide/16 v0, 0x14

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 17
    invoke-interface {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 18
    iput-object v6, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->sessionId:Ljava/lang/String;

    .line 19
    sget-object v0, Le/m/d/z/o/b;->b:Le/m/d/z/o/b;

    iput-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->applicationProcessState:Le/m/d/z/o/b;

    return-void
.end method
