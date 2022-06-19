.class public final Le/m/d/z/j/b;
.super Le/m/d/z/f/b;
.source "SourceFile"

# interfaces
.implements Le/m/d/z/l/b;


# static fields
.field public static final h:Le/m/d/z/i/a;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/session/PerfSession;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/firebase/perf/session/gauges/GaugeManager;

.field public final c:Le/m/d/z/m/k;

.field public final d:Lcom/google/firebase/perf/v1/NetworkRequestMetric$b;

.field public final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Le/m/d/z/l/b;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/String;

.field public g:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Le/m/d/z/i/a;->b()Le/m/d/z/i/a;

    move-result-object v0

    sput-object v0, Le/m/d/z/j/b;->h:Le/m/d/z/i/a;

    return-void
.end method

.method public constructor <init>(Le/m/d/z/m/k;)V
    .locals 2

    .line 1
    invoke-static {}, Le/m/d/z/f/a;->a()Le/m/d/z/f/a;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->getInstance()Lcom/google/firebase/perf/session/gauges/GaugeManager;

    move-result-object v1

    .line 2
    invoke-direct {p0, v0}, Le/m/d/z/f/b;-><init>(Le/m/d/z/f/a;)V

    .line 3
    invoke-static {}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->newBuilder()Lcom/google/firebase/perf/v1/NetworkRequestMetric$b;

    move-result-object v0

    iput-object v0, p0, Le/m/d/z/j/b;->d:Lcom/google/firebase/perf/v1/NetworkRequestMetric$b;

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Le/m/d/z/j/b;->e:Ljava/lang/ref/WeakReference;

    .line 5
    iput-object p1, p0, Le/m/d/z/j/b;->c:Le/m/d/z/m/k;

    .line 6
    iput-object v1, p0, Le/m/d/z/j/b;->b:Lcom/google/firebase/perf/session/gauges/GaugeManager;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Le/m/d/z/j/b;->a:Ljava/util/List;

    .line 8
    invoke-virtual {p0}, Le/m/d/z/f/b;->registerForAppState()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/perf/session/PerfSession;)V
    .locals 1

    if-nez p1, :cond_1

    .line 1
    sget-object p1, Le/m/d/z/j/b;->h:Le/m/d/z/i/a;

    .line 2
    iget-boolean v0, p1, Le/m/d/z/i/a;->b:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Le/m/d/z/j/b;->d:Lcom/google/firebase/perf/v1/NetworkRequestMetric$b;

    .line 6
    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasClientStartTimeUs()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Le/m/d/z/j/b;->d:Lcom/google/firebase/perf/v1/NetworkRequestMetric$b;

    .line 8
    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasTimeToResponseCompletedUs()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Le/m/d/z/j/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public b()Lcom/google/firebase/perf/v1/NetworkRequestMetric;
    .locals 6

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    move-result-object v0

    iget-object v1, p0, Le/m/d/z/j/b;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/session/SessionManager;->unregisterForSessionUpdates(Ljava/lang/ref/WeakReference;)V

    .line 2
    invoke-virtual {p0}, Le/m/d/z/f/b;->unregisterForAppState()V

    .line 3
    iget-object v0, p0, Le/m/d/z/j/b;->a:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v2, p0, Le/m/d/z/j/b;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/perf/session/PerfSession;

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {v1}, Lcom/google/firebase/perf/session/PerfSession;->b(Ljava/util/List;)[Lcom/google/firebase/perf/v1/PerfSession;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v1, p0, Le/m/d/z/j/b;->d:Lcom/google/firebase/perf/v1/NetworkRequestMetric$b;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 10
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11
    iget-object v1, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v1, v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$2900(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Ljava/lang/Iterable;)V

    .line 12
    :cond_2
    iget-object v0, p0, Le/m/d/z/j/b;->d:Lcom/google/firebase/perf/v1/NetworkRequestMetric$b;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 13
    iget-object v1, p0, Le/m/d/z/j/b;->f:Ljava/lang/String;

    .line 14
    sget-object v2, Le/m/d/z/k/h;->a:Ljava/util/regex/Pattern;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 15
    sget-object v3, Le/m/d/z/k/h;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v1, v2

    :goto_2
    if-nez v1, :cond_6

    .line 16
    sget-object v1, Le/m/d/z/j/b;->h:Le/m/d/z/i/a;

    .line 17
    iget-boolean v2, v1, Le/m/d/z/i/a;->b:Z

    if-eqz v2, :cond_5

    .line 18
    iget-object v1, v1, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    .line 19
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v0

    .line 20
    :cond_6
    iget-boolean v1, p0, Le/m/d/z/j/b;->g:Z

    if-nez v1, :cond_7

    .line 21
    iget-object v1, p0, Le/m/d/z/j/b;->c:Le/m/d/z/m/k;

    invoke-virtual {p0}, Le/m/d/z/f/b;->getAppState()Le/m/d/z/o/b;

    move-result-object v3

    .line 22
    iget-object v4, v1, Le/m/d/z/m/k;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Le/m/d/z/m/f;

    invoke-direct {v5, v1, v0, v3}, Le/m/d/z/m/f;-><init>(Le/m/d/z/m/k;Lcom/google/firebase/perf/v1/NetworkRequestMetric;Le/m/d/z/o/b;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 23
    iput-boolean v2, p0, Le/m/d/z/j/b;->g:Z

    :cond_7
    return-object v0

    :catchall_0
    move-exception v1

    .line 24
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public c(Ljava/lang/String;)Le/m/d/z/j/b;
    .locals 3

    if-eqz p1, :cond_9

    .line 1
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$d;->b:Lcom/google/firebase/perf/v1/NetworkRequestMetric$d;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "DELETE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "CONNECT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_2
    const-string v2, "TRACE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_3
    const-string v2, "PATCH"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_4
    const-string v2, "POST"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "HEAD"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_6
    const-string v2, "PUT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_7
    const-string v2, "GET"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_8
    const-string v2, "OPTIONS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 3
    :pswitch_0
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$d;->f:Lcom/google/firebase/perf/v1/NetworkRequestMetric$d;

    goto :goto_1

    .line 4
    :pswitch_1
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$d;->k:Lcom/google/firebase/perf/v1/NetworkRequestMetric$d;

    goto :goto_1

    .line 5
    :pswitch_2
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$d;->j:Lcom/google/firebase/perf/v1/NetworkRequestMetric$d;

    goto :goto_1

    .line 6
    :pswitch_3
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$d;->h:Lcom/google/firebase/perf/v1/NetworkRequestMetric$d;

    goto :goto_1

    .line 7
    :pswitch_4
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$d;->e:Lcom/google/firebase/perf/v1/NetworkRequestMetric$d;

    goto :goto_1

    .line 8
    :pswitch_5
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$d;->g:Lcom/google/firebase/perf/v1/NetworkRequestMetric$d;

    goto :goto_1

    .line 9
    :pswitch_6
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$d;->d:Lcom/google/firebase/perf/v1/NetworkRequestMetric$d;

    goto :goto_1

    .line 10
    :pswitch_7
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$d;->c:Lcom/google/firebase/perf/v1/NetworkRequestMetric$d;

    goto :goto_1

    .line 11
    :pswitch_8
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$d;->i:Lcom/google/firebase/perf/v1/NetworkRequestMetric$d;

    .line 12
    :goto_1
    iget-object p1, p0, Le/m/d/z/j/b;->d:Lcom/google/firebase/perf/v1/NetworkRequestMetric$b;

    .line 13
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p1, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {p1, v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$400(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Lcom/google/firebase/perf/v1/NetworkRequestMetric$d;)V

    :cond_9
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1faded82 -> :sswitch_8
        0x11336 -> :sswitch_7
        0x136ef -> :sswitch_6
        0x21c5e0 -> :sswitch_5
        0x2590a0 -> :sswitch_4
        0x4862828 -> :sswitch_3
        0x4c5f925 -> :sswitch_2
        0x638004ca -> :sswitch_1
        0x77f979ab -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d(I)Le/m/d/z/j/b;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/d/z/j/b;->d:Lcom/google/firebase/perf/v1/NetworkRequestMetric$b;

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3
    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$1200(Lcom/google/firebase/perf/v1/NetworkRequestMetric;I)V

    return-object p0
.end method

.method public e(J)Le/m/d/z/j/b;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/d/z/j/b;->d:Lcom/google/firebase/perf/v1/NetworkRequestMetric$b;

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3
    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$600(Lcom/google/firebase/perf/v1/NetworkRequestMetric;J)V

    return-object p0
.end method

.method public f(J)Le/m/d/z/j/b;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/firebase/perf/session/SessionManager;->perfSession()Lcom/google/firebase/perf/session/PerfSession;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    move-result-object v1

    iget-object v2, p0, Le/m/d/z/j/b;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/session/SessionManager;->registerForSessionUpdates(Ljava/lang/ref/WeakReference;)V

    .line 4
    iget-object v1, p0, Le/m/d/z/j/b;->d:Lcom/google/firebase/perf/v1/NetworkRequestMetric$b;

    .line 5
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6
    iget-object v1, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v1, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$1700(Lcom/google/firebase/perf/v1/NetworkRequestMetric;J)V

    .line 7
    invoke-virtual {p0, v0}, Le/m/d/z/j/b;->a(Lcom/google/firebase/perf/session/PerfSession;)V

    .line 8
    iget-boolean p1, v0, Lcom/google/firebase/perf/session/PerfSession;->c:Z

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Le/m/d/z/j/b;->b:Lcom/google/firebase/perf/session/gauges/GaugeManager;

    .line 10
    iget-object p2, v0, Lcom/google/firebase/perf/session/PerfSession;->b:Lcom/google/firebase/perf/util/Timer;

    .line 11
    invoke-virtual {p1, p2}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->collectGaugeMetricOnce(Lcom/google/firebase/perf/util/Timer;)V

    :cond_0
    return-object p0
.end method

.method public g(Ljava/lang/String;)Le/m/d/z/j/b;
    .locals 4

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Le/m/d/z/j/b;->d:Lcom/google/firebase/perf/v1/NetworkRequestMetric$b;

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p1, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$1500(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x80

    if-le v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 5
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x1f

    if-le v2, v3, :cond_4

    const/16 v3, 0x7f

    if-le v2, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 7
    iget-object v0, p0, Le/m/d/z/j/b;->d:Lcom/google/firebase/perf/v1/NetworkRequestMetric$b;

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9
    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$1400(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Ljava/lang/String;)V

    goto :goto_2

    .line 10
    :cond_5
    sget-object v0, Le/m/d/z/j/b;->h:Le/m/d/z/i/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The content type of the response is not a valid content-type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/m/d/z/i/a;->c(Ljava/lang/String;)V

    :goto_2
    return-object p0
.end method

.method public h(J)Le/m/d/z/j/b;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/d/z/j/b;->d:Lcom/google/firebase/perf/v1/NetworkRequestMetric$b;

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3
    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$800(Lcom/google/firebase/perf/v1/NetworkRequestMetric;J)V

    return-object p0
.end method

.method public i(J)Le/m/d/z/j/b;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/d/z/j/b;->d:Lcom/google/firebase/perf/v1/NetworkRequestMetric$b;

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3
    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$2300(Lcom/google/firebase/perf/v1/NetworkRequestMetric;J)V

    .line 4
    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/perf/session/SessionManager;->perfSession()Lcom/google/firebase/perf/session/PerfSession;

    move-result-object p1

    .line 5
    iget-boolean p1, p1, Lcom/google/firebase/perf/session/PerfSession;->c:Z

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Le/m/d/z/j/b;->b:Lcom/google/firebase/perf/session/gauges/GaugeManager;

    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/perf/session/SessionManager;->perfSession()Lcom/google/firebase/perf/session/PerfSession;

    move-result-object p2

    .line 7
    iget-object p2, p2, Lcom/google/firebase/perf/session/PerfSession;->b:Lcom/google/firebase/perf/util/Timer;

    .line 8
    invoke-virtual {p1, p2}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->collectGaugeMetricOnce(Lcom/google/firebase/perf/util/Timer;)V

    :cond_0
    return-object p0
.end method

.method public k(J)Le/m/d/z/j/b;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/d/z/j/b;->d:Lcom/google/firebase/perf/v1/NetworkRequestMetric$b;

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3
    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$2100(Lcom/google/firebase/perf/v1/NetworkRequestMetric;J)V

    return-object p0
.end method

.method public l(Ljava/lang/String;)Le/m/d/z/j/b;
    .locals 5

    if-eqz p1, :cond_5

    .line 1
    invoke-static {p1}, Lu3/a0;->h(Ljava/lang/String;)Lu3/a0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lu3/a0;->f()Lu3/a0$a;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lu3/a0$a;->k(Ljava/lang/String;)Lu3/a0$a;

    invoke-virtual {p1, v0}, Lu3/a0$a;->g(Ljava/lang/String;)Lu3/a0$a;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p1, Lu3/a0$a;->g:Ljava/util/List;

    .line 4
    iput-object v0, p1, Lu3/a0$a;->h:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lu3/a0$a;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    :cond_0
    iget-object v0, p0, Le/m/d/z/j/b;->d:Lcom/google/firebase/perf/v1/NetworkRequestMetric$b;

    const/16 v1, 0x7d0

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    .line 9
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {p1}, Lu3/a0;->h(Ljava/lang/String;)Lu3/a0;

    move-result-object v2

    if-nez v2, :cond_3

    .line 11
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {v2}, Lu3/a0;->b()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ltz v2, :cond_4

    const/16 v2, 0x7cf

    .line 14
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    if-ltz v2, :cond_4

    .line 15
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 16
    :cond_4
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 17
    :goto_0
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18
    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$100(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Ljava/lang/String;)V

    :cond_5
    return-object p0
.end method
