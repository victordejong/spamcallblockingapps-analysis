.class public final synthetic Le/m/d/z/m/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/d/z/m/k;

.field public final synthetic b:Lcom/google/firebase/perf/v1/TraceMetric;

.field public final synthetic c:Le/m/d/z/o/b;


# direct methods
.method public synthetic constructor <init>(Le/m/d/z/m/k;Lcom/google/firebase/perf/v1/TraceMetric;Le/m/d/z/o/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/z/m/g;->a:Le/m/d/z/m/k;

    iput-object p2, p0, Le/m/d/z/m/g;->b:Lcom/google/firebase/perf/v1/TraceMetric;

    iput-object p3, p0, Le/m/d/z/m/g;->c:Le/m/d/z/o/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Le/m/d/z/m/g;->a:Le/m/d/z/m/k;

    iget-object v1, p0, Le/m/d/z/m/g;->b:Lcom/google/firebase/perf/v1/TraceMetric;

    iget-object v2, p0, Le/m/d/z/m/g;->c:Le/m/d/z/o/b;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/google/firebase/perf/v1/PerfMetric;->newBuilder()Lcom/google/firebase/perf/v1/PerfMetric$b;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v4, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/google/firebase/perf/v1/PerfMetric;

    invoke-static {v4, v1}, Lcom/google/firebase/perf/v1/PerfMetric;->access$400(Lcom/google/firebase/perf/v1/PerfMetric;Lcom/google/firebase/perf/v1/TraceMetric;)V

    .line 5
    invoke-virtual {v0, v3, v2}, Le/m/d/z/m/k;->e(Lcom/google/firebase/perf/v1/PerfMetric$b;Le/m/d/z/o/b;)V

    return-void
.end method
