.class public final Le/m/d/z/j/d/d;
.super Le/m/d/z/j/d/e;
.source "SourceFile"


# static fields
.field public static final b:Le/m/d/z/i/a;


# instance fields
.field public final a:Lcom/google/firebase/perf/v1/TraceMetric;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Le/m/d/z/i/a;->b()Le/m/d/z/i/a;

    move-result-object v0

    sput-object v0, Le/m/d/z/j/d/d;->b:Le/m/d/z/i/a;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/perf/v1/TraceMetric;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/d/z/j/d/e;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/d/z/j/d/d;->a:Lcom/google/firebase/perf/v1/TraceMetric;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/d/z/j/d/d;->a:Lcom/google/firebase/perf/v1/TraceMetric;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Le/m/d/z/j/d/d;->e(Lcom/google/firebase/perf/v1/TraceMetric;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Le/m/d/z/j/d/d;->b:Le/m/d/z/i/a;

    const-string v2, "Invalid Trace:"

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Le/m/d/z/j/d/d;->a:Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-virtual {v3}, Lcom/google/firebase/perf/v1/TraceMetric;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Le/m/d/z/i/a;->c(Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Le/m/d/z/j/d/d;->a:Lcom/google/firebase/perf/v1/TraceMetric;

    .line 4
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->getCountersCount()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->getSubtracesList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/perf/v1/TraceMetric;

    .line 6
    invoke-virtual {v2}, Lcom/google/firebase/perf/v1/TraceMetric;->getCountersCount()I

    move-result v2

    if-lez v2, :cond_4

    move v2, v3

    goto :goto_1

    :cond_4
    move v2, v1

    :goto_1
    if-eqz v2, :cond_3

    :goto_2
    move v0, v3

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_3
    if-eqz v0, :cond_6

    .line 7
    iget-object v0, p0, Le/m/d/z/j/d/d;->a:Lcom/google/firebase/perf/v1/TraceMetric;

    .line 8
    invoke-virtual {p0, v0, v1}, Le/m/d/z/j/d/d;->d(Lcom/google/firebase/perf/v1/TraceMetric;I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 9
    sget-object v0, Le/m/d/z/j/d/d;->b:Le/m/d/z/i/a;

    const-string v2, "Invalid Counters for Trace:"

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Le/m/d/z/j/d/d;->a:Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-virtual {v3}, Lcom/google/firebase/perf/v1/TraceMetric;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Le/m/d/z/i/a;->c(Ljava/lang/String;)V

    return v1

    :cond_6
    return v3
.end method

.method public final d(Lcom/google/firebase/perf/v1/TraceMetric;I)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-le p2, v1, :cond_2

    .line 1
    sget-object p1, Le/m/d/z/j/d/d;->b:Le/m/d/z/i/a;

    .line 2
    iget-boolean p2, p1, Le/m/d/z/i/a;->b:Z

    if-eqz p2, :cond_1

    .line 3
    iget-object p1, p1, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return v0

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/TraceMetric;->getCountersMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_4

    goto :goto_0

    .line 7
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 9
    sget-object v4, Le/m/d/z/j/d/d;->b:Le/m/d/z/i/a;

    .line 10
    iget-boolean v5, v4, Le/m/d/z/i/a;->b:Z

    if-eqz v5, :cond_6

    .line 11
    iget-object v4, v4, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    .line 12
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 13
    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x64

    if-le v4, v5, :cond_7

    .line 14
    sget-object v4, Le/m/d/z/j/d/d;->b:Le/m/d/z/i/a;

    .line 15
    iget-boolean v5, v4, Le/m/d/z/i/a;->b:Z

    if-eqz v5, :cond_6

    .line 16
    iget-object v4, v4, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    .line 17
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_0
    move v4, v0

    goto :goto_1

    :cond_7
    move v4, v1

    :goto_1
    if-nez v4, :cond_8

    .line 18
    sget-object p1, Le/m/d/z/j/d/d;->b:Le/m/d/z/i/a;

    const-string p2, "invalid CounterId:"

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/m/d/z/i/a;->c(Ljava/lang/String;)V

    return v0

    .line 19
    :cond_8
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_9

    move v4, v1

    goto :goto_2

    :cond_9
    move v4, v0

    :goto_2
    if-nez v4, :cond_3

    .line 20
    sget-object p1, Le/m/d/z/j/d/d;->b:Le/m/d/z/i/a;

    const-string p2, "invalid CounterValue:"

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/m/d/z/i/a;->c(Ljava/lang/String;)V

    return v0

    .line 21
    :cond_a
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/TraceMetric;->getSubtracesList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/perf/v1/TraceMetric;

    add-int/lit8 v3, p2, 0x1

    .line 22
    invoke-virtual {p0, v2, v3}, Le/m/d/z/j/d/d;->d(Lcom/google/firebase/perf/v1/TraceMetric;I)Z

    move-result v2

    if-nez v2, :cond_b

    return v0

    :cond_c
    return v1
.end method

.method public final e(Lcom/google/firebase/perf/v1/TraceMetric;I)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1
    sget-object p1, Le/m/d/z/j/d/d;->b:Le/m/d/z/i/a;

    .line 2
    iget-boolean p2, p1, Le/m/d/z/i/a;->b:Z

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p1, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x1

    if-le p2, v1, :cond_3

    .line 5
    sget-object p1, Le/m/d/z/j/d/d;->b:Le/m/d/z/i/a;

    .line 6
    iget-boolean p2, p1, Le/m/d/z/i/a;->b:Z

    if-eqz p2, :cond_2

    .line 7
    iget-object p1, p1, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return v0

    .line 9
    :cond_3
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/TraceMetric;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x64

    if-gt v2, v3, :cond_5

    move v2, v1

    goto :goto_1

    :cond_5
    :goto_0
    move v2, v0

    :goto_1
    if-nez v2, :cond_6

    .line 12
    sget-object p2, Le/m/d/z/j/d/d;->b:Le/m/d/z/i/a;

    const-string v1, "invalid TraceId:"

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/TraceMetric;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Le/m/d/z/i/a;->c(Ljava/lang/String;)V

    return v0

    .line 13
    :cond_6
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/TraceMetric;->getDurationUs()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_7

    move v2, v1

    goto :goto_2

    :cond_7
    move v2, v0

    :goto_2
    if-nez v2, :cond_8

    .line 14
    sget-object p2, Le/m/d/z/j/d/d;->b:Le/m/d/z/i/a;

    const-string v1, "invalid TraceDuration:"

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/TraceMetric;->getDurationUs()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Le/m/d/z/i/a;->c(Ljava/lang/String;)V

    return v0

    .line 15
    :cond_8
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/TraceMetric;->hasClientStartTimeUs()Z

    move-result v2

    if-nez v2, :cond_a

    .line 16
    sget-object p1, Le/m/d/z/j/d/d;->b:Le/m/d/z/i/a;

    .line 17
    iget-boolean p2, p1, Le/m/d/z/i/a;->b:Z

    if-eqz p2, :cond_9

    .line 18
    iget-object p1, p1, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    .line 19
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return v0

    .line 20
    :cond_a
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/TraceMetric;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_st_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 21
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/TraceMetric;->getCountersMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "_fr_tot"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_b

    .line 22
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v2

    if-lez v2, :cond_b

    move v2, v1

    goto :goto_3

    :cond_b
    move v2, v0

    :goto_3
    if-nez v2, :cond_c

    .line 23
    sget-object p2, Le/m/d/z/j/d/d;->b:Le/m/d/z/i/a;

    const-string v1, "non-positive totalFrames in screen trace "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/TraceMetric;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Le/m/d/z/i/a;->c(Ljava/lang/String;)V

    return v0

    .line 24
    :cond_c
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/TraceMetric;->getSubtracesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/perf/v1/TraceMetric;

    add-int/lit8 v4, p2, 0x1

    .line 25
    invoke-virtual {p0, v3, v4}, Le/m/d/z/j/d/d;->e(Lcom/google/firebase/perf/v1/TraceMetric;I)Z

    move-result v3

    if-nez v3, :cond_d

    return v0

    .line 26
    :cond_e
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/TraceMetric;->getCustomAttributesMap()Ljava/util/Map;

    move-result-object p1

    .line 27
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 28
    invoke-static {p2}, Le/m/d/z/j/d/e;->b(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 29
    sget-object p1, Le/m/d/z/j/d/d;->b:Le/m/d/z/i/a;

    .line 30
    iget-boolean p2, p1, Le/m/d/z/i/a;->b:Z

    if-eqz p2, :cond_10

    .line 31
    iget-object p1, p1, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    .line 32
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    move p1, v0

    goto :goto_4

    :cond_11
    move p1, v1

    :goto_4
    if-nez p1, :cond_12

    return v0

    :cond_12
    return v1
.end method
