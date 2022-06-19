.class public Le/m/d/z/f/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/d/z/f/a$a;,
        Le/m/d/z/f/a$b;
    }
.end annotation


# static fields
.field public static final q:Le/m/d/z/i/a;

.field public static volatile r:Le/m/d/z/f/a;


# instance fields
.field public final a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/WeakReference<",
            "Le/m/d/z/f/a$b;",
            ">;>;"
        }
    .end annotation
.end field

.field public e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/m/d/z/f/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final g:Le/m/d/z/m/k;

.field public final h:Le/m/d/z/g/d;

.field public final i:Le/m/d/z/n/a;

.field public j:Ln3/k/a/g;

.field public k:Lcom/google/firebase/perf/util/Timer;

.field public l:Lcom/google/firebase/perf/util/Timer;

.field public m:Le/m/d/z/o/b;

.field public n:Z

.field public o:Z

.field public p:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Le/m/d/z/i/a;->b()Le/m/d/z/i/a;

    move-result-object v0

    sput-object v0, Le/m/d/z/f/a;->q:Le/m/d/z/i/a;

    return-void
.end method

.method public constructor <init>(Le/m/d/z/m/k;Le/m/d/z/n/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Le/m/d/z/f/a;->a:Ljava/util/WeakHashMap;

    .line 3
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Le/m/d/z/f/a;->b:Ljava/util/WeakHashMap;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Le/m/d/z/f/a;->c:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Le/m/d/z/f/a;->d:Ljava/util/Set;

    .line 6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Le/m/d/z/f/a;->e:Ljava/util/Set;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Le/m/d/z/f/a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    sget-object v0, Le/m/d/z/o/b;->d:Le/m/d/z/o/b;

    iput-object v0, p0, Le/m/d/z/f/a;->m:Le/m/d/z/o/b;

    .line 9
    iput-boolean v1, p0, Le/m/d/z/f/a;->n:Z

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Le/m/d/z/f/a;->o:Z

    .line 11
    iput-boolean v1, p0, Le/m/d/z/f/a;->p:Z

    .line 12
    iput-object p1, p0, Le/m/d/z/f/a;->g:Le/m/d/z/m/k;

    .line 13
    iput-object p2, p0, Le/m/d/z/f/a;->i:Le/m/d/z/n/a;

    .line 14
    invoke-static {}, Le/m/d/z/g/d;->e()Le/m/d/z/g/d;

    move-result-object p1

    iput-object p1, p0, Le/m/d/z/f/a;->h:Le/m/d/z/g/d;

    :try_start_0
    const-string p1, "n3.k.a.g"

    .line 15
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 16
    :catch_0
    iput-boolean v1, p0, Le/m/d/z/f/a;->p:Z

    if-eqz v1, :cond_0

    .line 17
    new-instance p1, Ln3/k/a/g;

    invoke-direct {p1}, Ln3/k/a/g;-><init>()V

    iput-object p1, p0, Le/m/d/z/f/a;->j:Ln3/k/a/g;

    :cond_0
    return-void
.end method

.method public static a()Le/m/d/z/f/a;
    .locals 4

    .line 1
    sget-object v0, Le/m/d/z/f/a;->r:Le/m/d/z/f/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Le/m/d/z/f/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Le/m/d/z/f/a;->r:Le/m/d/z/f/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Le/m/d/z/f/a;

    .line 5
    sget-object v2, Le/m/d/z/m/k;->s:Le/m/d/z/m/k;

    .line 6
    new-instance v3, Le/m/d/z/n/a;

    invoke-direct {v3}, Le/m/d/z/n/a;-><init>()V

    invoke-direct {v1, v2, v3}, Le/m/d/z/f/a;-><init>(Le/m/d/z/m/k;Le/m/d/z/n/a;)V

    sput-object v1, Le/m/d/z/f/a;->r:Le/m/d/z/f/a;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Le/m/d/z/f/a;->r:Le/m/d/z/f/a;

    return-object v0
.end method

.method public static b(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    const-string v0, "_st_"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c(Ljava/lang/String;J)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/m/d/z/f/a;->c:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/m/d/z/f/a;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Le/m/d/z/f/a;->c:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Le/m/d/z/f/a;->c:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v3, p2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d(Landroid/app/Activity;)V
    .locals 9

    .line 1
    iget-object v0, p0, Le/m/d/z/f/a;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/m/d/z/f/a;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/metrics/Trace;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, p0, Le/m/d/z/f/a;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Le/m/d/z/f/a;->j:Ln3/k/a/g;

    .line 5
    iget-object v1, v1, Ln3/k/a/g;->a:Ln3/k/a/g$b;

    invoke-virtual {v1}, Ln3/k/a/g$b;->b()[Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 6
    aget-object v1, v1, v2

    if-eqz v1, :cond_5

    move v3, v2

    move v4, v3

    move v5, v4

    .line 7
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 8
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 9
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    add-int/2addr v3, v7

    const/16 v8, 0x2bc

    if-le v6, v8, :cond_2

    add-int/2addr v5, v7

    :cond_2
    const/16 v8, 0x10

    if-le v6, v8, :cond_3

    add-int/2addr v4, v7

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1

    :cond_5
    move v4, v2

    move v5, v4

    :goto_1
    if-lez v2, :cond_6

    int-to-long v6, v2

    const-string v1, "_fr_tot"

    .line 10
    invoke-virtual {v0, v1, v6, v7}, Lcom/google/firebase/perf/metrics/Trace;->putMetric(Ljava/lang/String;J)V

    :cond_6
    if-lez v4, :cond_7

    int-to-long v6, v4

    const-string v1, "_fr_slo"

    .line 11
    invoke-virtual {v0, v1, v6, v7}, Lcom/google/firebase/perf/metrics/Trace;->putMetric(Ljava/lang/String;J)V

    :cond_7
    if-lez v5, :cond_8

    int-to-long v6, v5

    const-string v1, "_fr_fzn"

    .line 12
    invoke-virtual {v0, v1, v6, v7}, Lcom/google/firebase/perf/metrics/Trace;->putMetric(Ljava/lang/String;J)V

    .line 13
    :cond_8
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Le/m/d/z/n/h;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 14
    sget-object v1, Le/m/d/z/f/a;->q:Le/m/d/z/i/a;

    const-string v3, "sendScreenTrace name:"

    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 15
    invoke-static {p1}, Le/m/d/z/f/a;->b(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " _fr_tot:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " _fr_slo:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " _fr_fzn:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {v1, p1}, Le/m/d/z/i/a;->a(Ljava/lang/String;)V

    .line 17
    :cond_9
    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    return-void
.end method

.method public final e(Ljava/lang/String;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/util/Timer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/d/z/f/a;->h:Le/m/d/z/g/d;

    invoke-virtual {v0}, Le/m/d/z/g/d;->o()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/firebase/perf/v1/TraceMetric;->newBuilder()Lcom/google/firebase/perf/v1/TraceMetric$b;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v1, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v1, p1}, Lcom/google/firebase/perf/v1/TraceMetric;->access$100(Lcom/google/firebase/perf/v1/TraceMetric;Ljava/lang/String;)V

    .line 5
    iget-wide v1, p2, Lcom/google/firebase/perf/util/Timer;->a:J

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/v1/TraceMetric$b;->a(J)Lcom/google/firebase/perf/v1/TraceMetric$b;

    .line 7
    invoke-virtual {p2, p3}, Lcom/google/firebase/perf/util/Timer;->b(Lcom/google/firebase/perf/util/Timer;)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/v1/TraceMetric$b;->b(J)Lcom/google/firebase/perf/v1/TraceMetric$b;

    .line 8
    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/perf/session/SessionManager;->perfSession()Lcom/google/firebase/perf/session/PerfSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/perf/session/PerfSession;->a()Lcom/google/firebase/perf/v1/PerfSession;

    move-result-object p1

    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10
    iget-object p2, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p2, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {p2, p1}, Lcom/google/firebase/perf/v1/TraceMetric;->access$1900(Lcom/google/firebase/perf/v1/TraceMetric;Lcom/google/firebase/perf/v1/PerfSession;)V

    .line 11
    iget-object p1, p0, Le/m/d/z/f/a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p1

    .line 12
    iget-object p2, p0, Le/m/d/z/f/a;->c:Ljava/util/Map;

    monitor-enter p2

    .line 13
    :try_start_0
    iget-object p3, p0, Le/m/d/z/f/a;->c:Ljava/util/Map;

    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15
    iget-object v1, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v1}, Lcom/google/firebase/perf/v1/TraceMetric;->access$1000(Lcom/google/firebase/perf/v1/TraceMetric;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-eqz p1, :cond_1

    const-string p3, "_tsns"

    int-to-long v1, p1

    .line 16
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17
    iget-object p1, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p1, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {p1}, Lcom/google/firebase/perf/v1/TraceMetric;->access$1000(Lcom/google/firebase/perf/v1/TraceMetric;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_1
    iget-object p1, p0, Le/m/d/z/f/a;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 19
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    iget-object p1, p0, Le/m/d/z/f/a;->g:Le/m/d/z/m/k;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/perf/v1/TraceMetric;

    sget-object p3, Le/m/d/z/o/b;->e:Le/m/d/z/o/b;

    invoke-virtual {p1, p2, p3}, Le/m/d/z/m/k;->d(Lcom/google/firebase/perf/v1/TraceMetric;Le/m/d/z/o/b;)V

    return-void

    :catchall_0
    move-exception p1

    .line 21
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final f(Le/m/d/z/o/b;)V
    .locals 3

    .line 1
    iput-object p1, p0, Le/m/d/z/f/a;->m:Le/m/d/z/o/b;

    .line 2
    iget-object p1, p0, Le/m/d/z/f/a;->d:Ljava/util/Set;

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Le/m/d/z/f/a;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/d/z/f/a$b;

    if-eqz v1, :cond_0

    .line 6
    iget-object v2, p0, Le/m/d/z/f/a;->m:Le/m/d/z/o/b;

    invoke-interface {v1, v2}, Le/m/d/z/f/a$b;->onUpdateAppState(Le/m/d/z/o/b;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 8
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/m/d/z/f/a;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2
    iget-object v1, p0, Le/m/d/z/f/a;->i:Le/m/d/z/n/a;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v1}, Lcom/google/firebase/perf/util/Timer;-><init>()V

    .line 5
    iput-object v1, p0, Le/m/d/z/f/a;->k:Lcom/google/firebase/perf/util/Timer;

    .line 6
    iget-object v1, p0, Le/m/d/z/f/a;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object p1, Le/m/d/z/o/b;->c:Le/m/d/z/o/b;

    invoke-virtual {p0, p1}, Le/m/d/z/f/a;->f(Le/m/d/z/o/b;)V

    .line 8
    iget-boolean p1, p0, Le/m/d/z/f/a;->o:Z

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Le/m/d/z/f/a;->d:Ljava/util/Set;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    iget-object v0, p0, Le/m/d/z/f/a;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/d/z/f/a$a;

    if-eqz v1, :cond_0

    .line 12
    invoke-interface {v1}, Le/m/d/z/f/a$a;->a()V

    goto :goto_0

    .line 13
    :cond_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 14
    :try_start_2
    iput-boolean p1, p0, Le/m/d/z/f/a;->o:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 15
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_2
    const-string p1, "_bs"

    .line 16
    iget-object v0, p0, Le/m/d/z/f/a;->l:Lcom/google/firebase/perf/util/Timer;

    iget-object v1, p0, Le/m/d/z/f/a;->k:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {p0, p1, v0, v1}, Le/m/d/z/f/a;->e(Ljava/lang/String;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/util/Timer;)V

    goto :goto_1

    .line 17
    :cond_3
    iget-object v1, p0, Le/m/d/z/f/a;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 18
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onActivityStarted(Landroid/app/Activity;)V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Le/m/d/z/f/a;->p:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/m/d/z/f/a;->h:Le/m/d/z/g/d;

    invoke-virtual {v0}, Le/m/d/z/g/d;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/m/d/z/f/a;->j:Ln3/k/a/g;

    .line 4
    iget-object v0, v0, Ln3/k/a/g;->a:Ln3/k/a/g$b;

    invoke-virtual {v0, p1}, Ln3/k/a/g$b;->a(Landroid/app/Activity;)V

    .line 5
    new-instance v0, Lcom/google/firebase/perf/metrics/Trace;

    invoke-static {p1}, Le/m/d/z/f/a;->b(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Le/m/d/z/f/a;->g:Le/m/d/z/m/k;

    iget-object v4, p0, Le/m/d/z/f/a;->i:Le/m/d/z/n/a;

    .line 6
    invoke-static {}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->getInstance()Lcom/google/firebase/perf/session/gauges/GaugeManager;

    move-result-object v6

    move-object v1, v0

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Ljava/lang/String;Le/m/d/z/m/k;Le/m/d/z/n/a;Le/m/d/z/f/a;Lcom/google/firebase/perf/session/gauges/GaugeManager;)V

    .line 7
    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->start()V

    .line 8
    iget-object v1, p0, Le/m/d/z/f/a;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Le/m/d/z/f/a;->p:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Le/m/d/z/f/a;->d(Landroid/app/Activity;)V

    .line 3
    :cond_0
    iget-object v0, p0, Le/m/d/z/f/a;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Le/m/d/z/f/a;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Le/m/d/z/f/a;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Le/m/d/z/f/a;->i:Le/m/d/z/n/a;

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance p1, Lcom/google/firebase/perf/util/Timer;

    invoke-direct {p1}, Lcom/google/firebase/perf/util/Timer;-><init>()V

    .line 9
    iput-object p1, p0, Le/m/d/z/f/a;->l:Lcom/google/firebase/perf/util/Timer;

    .line 10
    sget-object p1, Le/m/d/z/o/b;->d:Le/m/d/z/o/b;

    invoke-virtual {p0, p1}, Le/m/d/z/f/a;->f(Le/m/d/z/o/b;)V

    const-string p1, "_fs"

    .line 11
    iget-object v0, p0, Le/m/d/z/f/a;->k:Lcom/google/firebase/perf/util/Timer;

    iget-object v1, p0, Le/m/d/z/f/a;->l:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {p0, p1, v0, v1}, Le/m/d/z/f/a;->e(Ljava/lang/String;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/util/Timer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
