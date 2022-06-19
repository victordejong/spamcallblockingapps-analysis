.class public final synthetic Le/m/d/z/j/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/firebase/perf/metrics/AppStartTrace;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/perf/metrics/AppStartTrace;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/z/j/a;->a:Lcom/google/firebase/perf/metrics/AppStartTrace;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Le/m/d/z/j/a;->a:Lcom/google/firebase/perf/metrics/AppStartTrace;

    .line 1
    sget-object v1, Lcom/google/firebase/perf/metrics/AppStartTrace;->m:Lcom/google/firebase/perf/metrics/AppStartTrace;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/google/firebase/perf/v1/TraceMetric;->newBuilder()Lcom/google/firebase/perf/v1/TraceMetric$b;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5
    iget-object v2, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/google/firebase/perf/v1/TraceMetric;

    const-string v3, "_as"

    invoke-static {v2, v3}, Lcom/google/firebase/perf/v1/TraceMetric;->access$100(Lcom/google/firebase/perf/v1/TraceMetric;Ljava/lang/String;)V

    .line 6
    iget-object v2, v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->f:Lcom/google/firebase/perf/util/Timer;

    .line 7
    iget-wide v2, v2, Lcom/google/firebase/perf/util/Timer;->a:J

    .line 8
    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/v1/TraceMetric$b;->a(J)Lcom/google/firebase/perf/v1/TraceMetric$b;

    .line 9
    iget-object v2, v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->f:Lcom/google/firebase/perf/util/Timer;

    .line 10
    iget-object v3, v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->i:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2, v3}, Lcom/google/firebase/perf/util/Timer;->b(Lcom/google/firebase/perf/util/Timer;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/v1/TraceMetric$b;->b(J)Lcom/google/firebase/perf/v1/TraceMetric$b;

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-static {}, Lcom/google/firebase/perf/v1/TraceMetric;->newBuilder()Lcom/google/firebase/perf/v1/TraceMetric$b;

    move-result-object v3

    .line 13
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14
    iget-object v4, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/google/firebase/perf/v1/TraceMetric;

    const-string v5, "_astui"

    invoke-static {v4, v5}, Lcom/google/firebase/perf/v1/TraceMetric;->access$100(Lcom/google/firebase/perf/v1/TraceMetric;Ljava/lang/String;)V

    .line 15
    iget-object v4, v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->f:Lcom/google/firebase/perf/util/Timer;

    .line 16
    iget-wide v4, v4, Lcom/google/firebase/perf/util/Timer;->a:J

    .line 17
    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/perf/v1/TraceMetric$b;->a(J)Lcom/google/firebase/perf/v1/TraceMetric$b;

    .line 18
    iget-object v4, v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->f:Lcom/google/firebase/perf/util/Timer;

    .line 19
    iget-object v5, v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->g:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v4, v5}, Lcom/google/firebase/perf/util/Timer;->b(Lcom/google/firebase/perf/util/Timer;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/perf/v1/TraceMetric$b;->b(J)Lcom/google/firebase/perf/v1/TraceMetric$b;

    .line 20
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-static {}, Lcom/google/firebase/perf/v1/TraceMetric;->newBuilder()Lcom/google/firebase/perf/v1/TraceMetric$b;

    move-result-object v3

    .line 22
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 23
    iget-object v4, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/google/firebase/perf/v1/TraceMetric;

    const-string v5, "_astfd"

    invoke-static {v4, v5}, Lcom/google/firebase/perf/v1/TraceMetric;->access$100(Lcom/google/firebase/perf/v1/TraceMetric;Ljava/lang/String;)V

    .line 24
    iget-object v4, v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->g:Lcom/google/firebase/perf/util/Timer;

    .line 25
    iget-wide v4, v4, Lcom/google/firebase/perf/util/Timer;->a:J

    .line 26
    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/perf/v1/TraceMetric$b;->a(J)Lcom/google/firebase/perf/v1/TraceMetric$b;

    iget-object v4, v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->g:Lcom/google/firebase/perf/util/Timer;

    iget-object v5, v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->h:Lcom/google/firebase/perf/util/Timer;

    .line 27
    invoke-virtual {v4, v5}, Lcom/google/firebase/perf/util/Timer;->b(Lcom/google/firebase/perf/util/Timer;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/perf/v1/TraceMetric$b;->b(J)Lcom/google/firebase/perf/v1/TraceMetric$b;

    .line 28
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-static {}, Lcom/google/firebase/perf/v1/TraceMetric;->newBuilder()Lcom/google/firebase/perf/v1/TraceMetric$b;

    move-result-object v3

    .line 30
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 31
    iget-object v4, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/google/firebase/perf/v1/TraceMetric;

    const-string v5, "_asti"

    invoke-static {v4, v5}, Lcom/google/firebase/perf/v1/TraceMetric;->access$100(Lcom/google/firebase/perf/v1/TraceMetric;Ljava/lang/String;)V

    .line 32
    iget-object v4, v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->h:Lcom/google/firebase/perf/util/Timer;

    .line 33
    iget-wide v4, v4, Lcom/google/firebase/perf/util/Timer;->a:J

    .line 34
    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/perf/v1/TraceMetric$b;->a(J)Lcom/google/firebase/perf/v1/TraceMetric$b;

    iget-object v4, v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->h:Lcom/google/firebase/perf/util/Timer;

    iget-object v5, v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->i:Lcom/google/firebase/perf/util/Timer;

    .line 35
    invoke-virtual {v4, v5}, Lcom/google/firebase/perf/util/Timer;->b(Lcom/google/firebase/perf/util/Timer;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/perf/v1/TraceMetric$b;->b(J)Lcom/google/firebase/perf/v1/TraceMetric$b;

    .line 36
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 38
    iget-object v3, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v3, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v3, v2}, Lcom/google/firebase/perf/v1/TraceMetric;->access$1400(Lcom/google/firebase/perf/v1/TraceMetric;Ljava/lang/Iterable;)V

    .line 39
    iget-object v2, v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->j:Lcom/google/firebase/perf/session/PerfSession;

    invoke-virtual {v2}, Lcom/google/firebase/perf/session/PerfSession;->a()Lcom/google/firebase/perf/v1/PerfSession;

    move-result-object v2

    .line 40
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 41
    iget-object v3, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v3, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v3, v2}, Lcom/google/firebase/perf/v1/TraceMetric;->access$1900(Lcom/google/firebase/perf/v1/TraceMetric;Lcom/google/firebase/perf/v1/PerfSession;)V

    .line 42
    iget-object v0, v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->b:Le/m/d/z/m/k;

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/perf/v1/TraceMetric;

    sget-object v2, Le/m/d/z/o/b;->e:Le/m/d/z/o/b;

    invoke-virtual {v0, v1, v2}, Le/m/d/z/m/k;->d(Lcom/google/firebase/perf/v1/TraceMetric;Le/m/d/z/o/b;)V

    return-void
.end method
