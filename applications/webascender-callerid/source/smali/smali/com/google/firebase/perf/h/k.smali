.class public Lcom/google/firebase/perf/h/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/perf/internal/a$a;


# static fields
.field private static final u:Lcom/google/firebase/perf/g/a;

.field private static final v:Lcom/google/firebase/perf/h/k;


# instance fields
.field private f:Lcom/google/firebase/c;

.field private g:Lcom/google/firebase/perf/c;

.field private h:Lcom/google/firebase/installations/g;

.field private i:Lcom/google/firebase/m/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/m/b<",
            "Lg/f/a/b/g;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/google/firebase/perf/h/b;

.field private k:Ljava/util/concurrent/ExecutorService;

.field private final l:Lcom/google/firebase/perf/j/c$b;

.field private m:Landroid/content/Context;

.field private n:Lcom/google/firebase/perf/d/a;

.field private o:Lcom/google/firebase/perf/h/d;

.field private p:Lcom/google/firebase/perf/internal/a;

.field private final q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private r:Z

.field private final s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/google/firebase/perf/h/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/g/a;->e()Lcom/google/firebase/perf/g/a;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/h/k;->u:Lcom/google/firebase/perf/g/a;

    .line 2
    new-instance v0, Lcom/google/firebase/perf/h/k;

    invoke-direct {v0}, Lcom/google/firebase/perf/h/k;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/h/k;->v:Lcom/google/firebase/perf/h/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/firebase/perf/h/k;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-boolean v1, p0, Lcom/google/firebase/perf/h/k;->r:Z

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/perf/h/k;->t:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 5
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0xa

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/google/firebase/perf/h/k;->k:Ljava/util/concurrent/ExecutorService;

    .line 6
    invoke-static {}, Lcom/google/firebase/perf/j/c;->k0()Lcom/google/firebase/perf/j/c$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/h/k;->l:Lcom/google/firebase/perf/j/c$b;

    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/perf/h/k;->s:Ljava/util/Map;

    const/16 v1, 0x32

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KEY_AVAILABLE_TRACES_FOR_CACHING"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING"

    .line 9
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "KEY_AVAILABLE_GAUGES_FOR_CACHING"

    .line 10
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private A()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/h/k;->n:Lcom/google/firebase/perf/d/a;

    invoke-virtual {v0}, Lcom/google/firebase/perf/d/a;->I()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/h/k;->l:Lcom/google/firebase/perf/j/c$b;

    invoke-virtual {v0}, Lcom/google/firebase/perf/j/c$b;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/firebase/perf/h/k;->r:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3
    :try_start_0
    iget-object v3, p0, Lcom/google/firebase/perf/h/k;->h:Lcom/google/firebase/installations/g;

    invoke-interface {v3}, Lcom/google/firebase/installations/g;->getId()Lcom/google/android/gms/tasks/g;

    move-result-object v3

    const-wide/32 v4, 0xea60

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/gms/tasks/j;->b(Lcom/google/android/gms/tasks/g;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    .line 4
    sget-object v4, Lcom/google/firebase/perf/h/k;->u:Lcom/google/firebase/perf/g/a;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Task to retrieve Installation Id is timed out: %s"

    invoke-virtual {v4, v1, v2}, Lcom/google/firebase/perf/g/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v3

    .line 5
    sget-object v4, Lcom/google/firebase/perf/h/k;->u:Lcom/google/firebase/perf/g/a;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Task to retrieve Installation Id is interrupted: %s"

    invoke-virtual {v4, v1, v2}, Lcom/google/firebase/perf/g/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v3

    .line 6
    sget-object v4, Lcom/google/firebase/perf/h/k;->u:Lcom/google/firebase/perf/g/a;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Unable to retrieve Installation Id: %s"

    invoke-virtual {v4, v1, v2}, Lcom/google/firebase/perf/g/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/google/firebase/perf/h/k;->l:Lcom/google/firebase/perf/j/c$b;

    invoke-virtual {v1, v0}, Lcom/google/firebase/perf/j/c$b;->J(Ljava/lang/String;)Lcom/google/firebase/perf/j/c$b;

    goto :goto_1

    .line 9
    :cond_1
    sget-object v0, Lcom/google/firebase/perf/h/k;->u:Lcom/google/firebase/perf/g/a;

    const-string v1, "Firebase Installation Id is empty, contact Firebase Support for debugging."

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/g/a;->i(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private B()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/h/k;->g:Lcom/google/firebase/perf/c;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/perf/h/k;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/firebase/perf/c;->c()Lcom/google/firebase/perf/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/h/k;->g:Lcom/google/firebase/perf/c;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/firebase/perf/h/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/h/k;->y()V

    return-void
.end method

.method private b(Lcom/google/firebase/perf/j/i;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/firebase/perf/h/k;->u:Lcom/google/firebase/perf/g/a;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/firebase/perf/h/k;->h(Lcom/google/firebase/perf/j/j;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Logging %s"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/perf/g/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/h/k;->j:Lcom/google/firebase/perf/h/b;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/h/b;->b(Lcom/google/firebase/perf/j/i;)V

    return-void
.end method

.method private c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/h/k;->p:Lcom/google/firebase/perf/internal/a;

    new-instance v1, Ljava/lang/ref/WeakReference;

    sget-object v2, Lcom/google/firebase/perf/h/k;->v:Lcom/google/firebase/perf/h/k;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/internal/a;->j(Ljava/lang/ref/WeakReference;)V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/h/k;->l:Lcom/google/firebase/perf/j/c$b;

    iget-object v1, p0, Lcom/google/firebase/perf/h/k;->f:Lcom/google/firebase/c;

    .line 3
    invoke-virtual {v1}, Lcom/google/firebase/c;->l()Lcom/google/firebase/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/j/c$b;->N(Ljava/lang/String;)Lcom/google/firebase/perf/j/c$b;

    .line 4
    invoke-static {}, Lcom/google/firebase/perf/j/a;->d0()Lcom/google/firebase/perf/j/a$b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/perf/h/k;->m:Landroid/content/Context;

    .line 5
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/j/a$b;->G(Ljava/lang/String;)Lcom/google/firebase/perf/j/a$b;

    sget-object v2, Lcom/google/firebase/perf/a;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/j/a$b;->H(Ljava/lang/String;)Lcom/google/firebase/perf/j/a$b;

    iget-object v2, p0, Lcom/google/firebase/perf/h/k;->m:Landroid/content/Context;

    .line 7
    invoke-static {v2}, Lcom/google/firebase/perf/h/k;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/j/a$b;->I(Ljava/lang/String;)Lcom/google/firebase/perf/j/a$b;

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/j/c$b;->I(Lcom/google/firebase/perf/j/a$b;)Lcom/google/firebase/perf/j/c$b;

    .line 9
    iget-object v0, p0, Lcom/google/firebase/perf/h/k;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/perf/h/k;->t:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/google/firebase/perf/h/k;->t:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/h/c;

    if-eqz v0, :cond_0

    .line 12
    iget-object v1, p0, Lcom/google/firebase/perf/h/k;->k:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0, v0}, Lcom/google/firebase/perf/h/f;->a(Lcom/google/firebase/perf/h/k;Lcom/google/firebase/perf/h/c;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/h/k;->B()V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/h/k;->g:Lcom/google/firebase/perf/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/perf/c;->b()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static e()Lcom/google/firebase/perf/h/k;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/h/k;->v:Lcom/google/firebase/perf/h/k;

    return-object v0
.end method

.method private static f(Lcom/google/firebase/perf/j/g;)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/perf/j/g;->j0()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/perf/j/g;->g0()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 4
    invoke-virtual {p0}, Lcom/google/firebase/perf/j/g;->f0()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const-string p0, "gauges (hasMetadata: %b, cpuGaugeCount: %d, memoryGaugeCount: %d)"

    .line 5
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static g(Lcom/google/firebase/perf/j/h;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/perf/j/h;->F0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/perf/j/h;->w0()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/j/h;->B0()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/firebase/perf/j/h;->q0()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, "UNKNOWN"

    .line 5
    :goto_1
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 6
    invoke-virtual {p0}, Lcom/google/firebase/perf/j/h;->y0()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v5

    const/4 p0, 0x1

    aput-object v2, v4, p0

    const/4 p0, 0x2

    long-to-double v0, v0

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v5

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, p0

    const-string p0, "network request trace: %s (responseCode: %s, responseTime: %.4fms)"

    .line 8
    invoke-static {v3, p0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static h(Lcom/google/firebase/perf/j/j;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/firebase/perf/j/j;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/google/firebase/perf/j/j;->h()Lcom/google/firebase/perf/j/m;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/perf/h/k;->i(Lcom/google/firebase/perf/j/m;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/google/firebase/perf/j/j;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p0}, Lcom/google/firebase/perf/j/j;->l()Lcom/google/firebase/perf/j/h;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/perf/h/k;->g(Lcom/google/firebase/perf/j/h;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    invoke-interface {p0}, Lcom/google/firebase/perf/j/j;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {p0}, Lcom/google/firebase/perf/j/j;->n()Lcom/google/firebase/perf/j/g;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/perf/h/k;->f(Lcom/google/firebase/perf/j/g;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "log"

    return-object p0
.end method

.method private static i(Lcom/google/firebase/perf/j/m;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/perf/j/m;->q0()J

    move-result-wide v0

    .line 2
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/perf/j/m;->t0()Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x0

    aput-object p0, v3, v4

    long-to-double v0, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v4

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, v3, v0

    const-string p0, "trace metric: %s (duration: %.4fms)"

    .line 5
    invoke-static {v2, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 2
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :catch_0
    :goto_0
    return-object v0
.end method

.method private k(Lcom/google/firebase/perf/j/i;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/perf/j/i;->g()Z

    move-result v0

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/firebase/perf/h/k;->p:Lcom/google/firebase/perf/internal/a;

    sget-object v0, Lcom/google/firebase/perf/i/b;->TRACE_EVENT_RATE_LIMITED:Lcom/google/firebase/perf/i/b;

    invoke-virtual {v0}, Lcom/google/firebase/perf/i/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/firebase/perf/internal/a;->e(Ljava/lang/String;J)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/perf/j/i;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/firebase/perf/h/k;->p:Lcom/google/firebase/perf/internal/a;

    sget-object v0, Lcom/google/firebase/perf/i/b;->NETWORK_TRACE_EVENT_RATE_LIMITED:Lcom/google/firebase/perf/i/b;

    invoke-virtual {v0}, Lcom/google/firebase/perf/i/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/firebase/perf/internal/a;->e(Ljava/lang/String;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private m(Lcom/google/firebase/perf/j/j;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/h/k;->s:Ljava/util/Map;

    const-string v1, "KEY_AVAILABLE_TRACES_FOR_CACHING"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    iget-object v2, p0, Lcom/google/firebase/perf/h/k;->s:Ljava/util/Map;

    const-string v3, "KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING"

    .line 3
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4
    iget-object v4, p0, Lcom/google/firebase/perf/h/k;->s:Ljava/util/Map;

    const-string v5, "KEY_AVAILABLE_GAUGES_FOR_CACHING"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 5
    invoke-interface {p1}, Lcom/google/firebase/perf/j/j;->g()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    if-lez v0, :cond_0

    .line 6
    iget-object p1, p0, Lcom/google/firebase/perf/h/k;->s:Ljava/util/Map;

    sub-int/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v7

    .line 7
    :cond_0
    invoke-interface {p1}, Lcom/google/firebase/perf/j/j;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    if-lez v2, :cond_1

    .line 8
    iget-object p1, p0, Lcom/google/firebase/perf/h/k;->s:Ljava/util/Map;

    sub-int/2addr v2, v7

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 10
    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v7

    .line 11
    :cond_1
    invoke-interface {p1}, Lcom/google/firebase/perf/j/j;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    if-lez v4, :cond_2

    .line 12
    iget-object p1, p0, Lcom/google/firebase/perf/h/k;->s:Ljava/util/Map;

    sub-int/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v7

    .line 13
    :cond_2
    sget-object v1, Lcom/google/firebase/perf/h/k;->u:Lcom/google/firebase/perf/g/a;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 14
    invoke-static {p1}, Lcom/google/firebase/perf/h/k;->h(Lcom/google/firebase/perf/j/j;)Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v3, v5

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v7

    const/4 p1, 0x2

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, p1

    const/4 p1, 0x3

    .line 17
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, p1

    const-string p1, "%s is not allowed to cache. Cache exhausted the limit (availableTracesForCaching: %d, availableNetworkRequestsForCaching: %d, availableGaugesForCaching: %d)."

    .line 18
    invoke-virtual {v1, p1, v3}, Lcom/google/firebase/perf/g/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method private n(Lcom/google/firebase/perf/j/i;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/h/k;->n:Lcom/google/firebase/perf/d/a;

    invoke-virtual {v0}, Lcom/google/firebase/perf/d/a;->I()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/firebase/perf/h/k;->u:Lcom/google/firebase/perf/g/a;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/firebase/perf/h/k;->h(Lcom/google/firebase/perf/j/j;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Performance collection is not enabled, dropping %s"

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/perf/g/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/perf/j/i;->b0()Lcom/google/firebase/perf/j/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/j/c;->g0()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/google/firebase/perf/h/k;->u:Lcom/google/firebase/perf/g/a;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/firebase/perf/h/k;->h(Lcom/google/firebase/perf/j/j;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "App Instance ID is null or empty, dropping %s"

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/perf/g/a;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/perf/h/k;->m:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/google/firebase/perf/internal/j;->b(Lcom/google/firebase/perf/j/i;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    sget-object v0, Lcom/google/firebase/perf/h/k;->u:Lcom/google/firebase/perf/g/a;

    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Lcom/google/firebase/perf/h/k;->h(Lcom/google/firebase/perf/j/j;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Unable to process the PerfMetric (%s) due to missing or invalid values. See earlier log statements for additional information on the specific missing/invalid values."

    .line 8
    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/perf/g/a;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/perf/h/k;->o:Lcom/google/firebase/perf/h/d;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/h/d;->b(Lcom/google/firebase/perf/j/i;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 10
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/h/k;->k(Lcom/google/firebase/perf/j/i;)V

    .line 11
    invoke-virtual {p1}, Lcom/google/firebase/perf/j/i;->g()Z

    move-result v0

    const-string v3, "Rate Limited - %s"

    if-eqz v0, :cond_3

    .line 12
    sget-object v0, Lcom/google/firebase/perf/h/k;->u:Lcom/google/firebase/perf/g/a;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/firebase/perf/j/i;->h()Lcom/google/firebase/perf/j/m;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/perf/h/k;->i(Lcom/google/firebase/perf/j/m;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/google/firebase/perf/g/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p1}, Lcom/google/firebase/perf/j/i;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    sget-object v0, Lcom/google/firebase/perf/h/k;->u:Lcom/google/firebase/perf/g/a;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/firebase/perf/j/i;->l()Lcom/google/firebase/perf/j/h;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/perf/h/k;->g(Lcom/google/firebase/perf/j/h;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/google/firebase/perf/g/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return v2

    :cond_5
    return v1
.end method

.method static synthetic p(Lcom/google/firebase/perf/h/k;Lcom/google/firebase/perf/h/c;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/google/firebase/perf/h/c;->a:Lcom/google/firebase/perf/j/i$b;

    iget-object p1, p1, Lcom/google/firebase/perf/h/c;->b:Lcom/google/firebase/perf/j/d;

    invoke-direct {p0, v0, p1}, Lcom/google/firebase/perf/h/k;->z(Lcom/google/firebase/perf/j/i$b;Lcom/google/firebase/perf/j/d;)V

    return-void
.end method

.method static synthetic q(Lcom/google/firebase/perf/h/k;Lcom/google/firebase/perf/j/m;Lcom/google/firebase/perf/j/d;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/j/i;->d0()Lcom/google/firebase/perf/j/i$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/j/i$b;->J(Lcom/google/firebase/perf/j/m;)Lcom/google/firebase/perf/j/i$b;

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/perf/h/k;->z(Lcom/google/firebase/perf/j/i$b;Lcom/google/firebase/perf/j/d;)V

    return-void
.end method

.method static synthetic r(Lcom/google/firebase/perf/h/k;Lcom/google/firebase/perf/j/h;Lcom/google/firebase/perf/j/d;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/j/i;->d0()Lcom/google/firebase/perf/j/i$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/j/i$b;->I(Lcom/google/firebase/perf/j/h;)Lcom/google/firebase/perf/j/i$b;

    .line 2
    invoke-direct {p0, v0, p2}, Lcom/google/firebase/perf/h/k;->z(Lcom/google/firebase/perf/j/i$b;Lcom/google/firebase/perf/j/d;)V

    return-void
.end method

.method static synthetic s(Lcom/google/firebase/perf/h/k;Lcom/google/firebase/perf/j/g;Lcom/google/firebase/perf/j/d;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/j/i;->d0()Lcom/google/firebase/perf/j/i$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/j/i$b;->H(Lcom/google/firebase/perf/j/g;)Lcom/google/firebase/perf/j/i$b;

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/perf/h/k;->z(Lcom/google/firebase/perf/j/i$b;Lcom/google/firebase/perf/j/d;)V

    return-void
.end method

.method static synthetic t(Lcom/google/firebase/perf/h/k;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/h/k;->o:Lcom/google/firebase/perf/h/d;

    iget-boolean p0, p0, Lcom/google/firebase/perf/h/k;->r:Z

    invoke-virtual {v0, p0}, Lcom/google/firebase/perf/h/d;->a(Z)V

    return-void
.end method

.method private x(Lcom/google/firebase/perf/j/i$b;Lcom/google/firebase/perf/j/d;)Lcom/google/firebase/perf/j/i;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/h/k;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/h/k;->l:Lcom/google/firebase/perf/j/c$b;

    .line 3
    invoke-virtual {v0, p2}, Lcom/google/firebase/perf/j/c$b;->L(Lcom/google/firebase/perf/j/d;)Lcom/google/firebase/perf/j/c$b;

    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/perf/j/i$b;->g()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/y$a;->z()Lcom/google/protobuf/y$a;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/google/firebase/perf/j/c$b;

    .line 6
    invoke-direct {p0}, Lcom/google/firebase/perf/h/k;->d()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/firebase/perf/j/c$b;->H(Ljava/util/Map;)Lcom/google/firebase/perf/j/c$b;

    .line 7
    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/firebase/perf/j/i$b;->G(Lcom/google/firebase/perf/j/c$b;)Lcom/google/firebase/perf/j/i$b;

    invoke-virtual {p1}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/j/i;

    return-object p1
.end method

.method private y()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/h/k;->f:Lcom/google/firebase/c;

    invoke-virtual {v0}, Lcom/google/firebase/c;->h()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/h/k;->m:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/google/firebase/perf/d/a;->f()Lcom/google/firebase/perf/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/h/k;->n:Lcom/google/firebase/perf/d/a;

    .line 3
    new-instance v0, Lcom/google/firebase/perf/h/d;

    iget-object v2, p0, Lcom/google/firebase/perf/h/k;->m:Landroid/content/Context;

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    const-wide/16 v5, 0x1f4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/perf/h/d;-><init>(Landroid/content/Context;DJ)V

    iput-object v0, p0, Lcom/google/firebase/perf/h/k;->o:Lcom/google/firebase/perf/h/d;

    .line 4
    invoke-static {}, Lcom/google/firebase/perf/internal/a;->b()Lcom/google/firebase/perf/internal/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/h/k;->p:Lcom/google/firebase/perf/internal/a;

    .line 5
    new-instance v0, Lcom/google/firebase/perf/h/b;

    iget-object v1, p0, Lcom/google/firebase/perf/h/k;->i:Lcom/google/firebase/m/b;

    iget-object v2, p0, Lcom/google/firebase/perf/h/k;->n:Lcom/google/firebase/perf/d/a;

    .line 6
    invoke-virtual {v2}, Lcom/google/firebase/perf/d/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/perf/h/b;-><init>(Lcom/google/firebase/m/b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/firebase/perf/h/k;->j:Lcom/google/firebase/perf/h/b;

    .line 7
    invoke-direct {p0}, Lcom/google/firebase/perf/h/k;->c()V

    return-void
.end method

.method private z(Lcom/google/firebase/perf/j/i$b;Lcom/google/firebase/perf/j/d;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/perf/h/k;->o()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/h/k;->m(Lcom/google/firebase/perf/j/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/google/firebase/perf/h/k;->u:Lcom/google/firebase/perf/g/a;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 4
    invoke-static {p1}, Lcom/google/firebase/perf/h/k;->h(Lcom/google/firebase/perf/j/j;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Transport is not initialized yet, %s will be queued for to be dispatched later"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/perf/g/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/google/firebase/perf/h/k;->t:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/google/firebase/perf/h/c;

    invoke-direct {v1, p1, p2}, Lcom/google/firebase/perf/h/c;-><init>(Lcom/google/firebase/perf/j/i$b;Lcom/google/firebase/perf/j/d;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    .line 7
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/h/k;->x(Lcom/google/firebase/perf/j/i$b;Lcom/google/firebase/perf/j/d;)Lcom/google/firebase/perf/j/i;

    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/h/k;->n(Lcom/google/firebase/perf/j/i;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 9
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/h/k;->b(Lcom/google/firebase/perf/j/i;)V

    .line 10
    invoke-static {}, Lcom/google/firebase/perf/internal/SessionManager;->getInstance()Lcom/google/firebase/perf/internal/SessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/perf/internal/SessionManager;->updatePerfSessionIfExpired()Z

    :cond_2
    return-void
.end method


# virtual methods
.method public l(Lcom/google/firebase/c;Lcom/google/firebase/installations/g;Lcom/google/firebase/m/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/c;",
            "Lcom/google/firebase/installations/g;",
            "Lcom/google/firebase/m/b<",
            "Lg/f/a/b/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/firebase/perf/h/k;->f:Lcom/google/firebase/c;

    .line 2
    iput-object p2, p0, Lcom/google/firebase/perf/h/k;->h:Lcom/google/firebase/installations/g;

    .line 3
    iput-object p3, p0, Lcom/google/firebase/perf/h/k;->i:Lcom/google/firebase/m/b;

    .line 4
    iget-object p1, p0, Lcom/google/firebase/perf/h/k;->k:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0}, Lcom/google/firebase/perf/h/e;->a(Lcom/google/firebase/perf/h/k;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/h/k;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onUpdateAppState(Lcom/google/firebase/perf/j/d;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/j/d;->FOREGROUND:Lcom/google/firebase/perf/j/d;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/firebase/perf/h/k;->r:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/perf/h/k;->o()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/firebase/perf/h/k;->k:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0}, Lcom/google/firebase/perf/h/g;->a(Lcom/google/firebase/perf/h/k;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public u(Lcom/google/firebase/perf/j/g;Lcom/google/firebase/perf/j/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/h/k;->k:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0, p1, p2}, Lcom/google/firebase/perf/h/j;->a(Lcom/google/firebase/perf/h/k;Lcom/google/firebase/perf/j/g;Lcom/google/firebase/perf/j/d;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public v(Lcom/google/firebase/perf/j/h;Lcom/google/firebase/perf/j/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/h/k;->k:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0, p1, p2}, Lcom/google/firebase/perf/h/i;->a(Lcom/google/firebase/perf/h/k;Lcom/google/firebase/perf/j/h;Lcom/google/firebase/perf/j/d;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public w(Lcom/google/firebase/perf/j/m;Lcom/google/firebase/perf/j/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/h/k;->k:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0, p1, p2}, Lcom/google/firebase/perf/h/h;->a(Lcom/google/firebase/perf/h/k;Lcom/google/firebase/perf/j/m;Lcom/google/firebase/perf/j/d;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
