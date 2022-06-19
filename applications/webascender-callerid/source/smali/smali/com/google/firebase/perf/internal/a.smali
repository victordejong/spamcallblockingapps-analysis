.class public Lcom/google/firebase/perf/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/internal/a$a;
    }
.end annotation


# static fields
.field private static final u:Lcom/google/firebase/perf/g/a;

.field private static volatile v:Lcom/google/firebase/perf/internal/a;


# instance fields
.field private f:Z

.field private final g:Lcom/google/firebase/perf/h/k;

.field private h:Lcom/google/firebase/perf/d/a;

.field private final i:Lcom/google/firebase/perf/i/a;

.field private j:Z

.field private final k:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/google/firebase/perf/i/g;

.field private m:Lcom/google/firebase/perf/i/g;

.field private final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/concurrent/atomic/AtomicInteger;

.field private p:Lcom/google/firebase/perf/j/d;

.field private q:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/firebase/perf/internal/a$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private r:Z

.field private s:Landroidx/core/app/g;

.field private final t:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lcom/google/firebase/perf/metrics/Trace;",
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

    sput-object v0, Lcom/google/firebase/perf/internal/a;->u:Lcom/google/firebase/perf/g/a;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/perf/h/k;Lcom/google/firebase/perf/i/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/firebase/perf/internal/a;->f:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/google/firebase/perf/internal/a;->j:Z

    .line 4
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/perf/internal/a;->k:Ljava/util/WeakHashMap;

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/perf/internal/a;->n:Ljava/util/Map;

    .line 6
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/google/firebase/perf/internal/a;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    sget-object v1, Lcom/google/firebase/perf/j/d;->BACKGROUND:Lcom/google/firebase/perf/j/d;

    iput-object v1, p0, Lcom/google/firebase/perf/internal/a;->p:Lcom/google/firebase/perf/j/d;

    .line 8
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/perf/internal/a;->q:Ljava/util/Set;

    .line 9
    iput-boolean v0, p0, Lcom/google/firebase/perf/internal/a;->r:Z

    .line 10
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/perf/internal/a;->t:Ljava/util/WeakHashMap;

    .line 11
    iput-object p1, p0, Lcom/google/firebase/perf/internal/a;->g:Lcom/google/firebase/perf/h/k;

    .line 12
    iput-object p2, p0, Lcom/google/firebase/perf/internal/a;->i:Lcom/google/firebase/perf/i/a;

    .line 13
    invoke-static {}, Lcom/google/firebase/perf/d/a;->f()Lcom/google/firebase/perf/d/a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/internal/a;->h:Lcom/google/firebase/perf/d/a;

    .line 14
    invoke-direct {p0}, Lcom/google/firebase/perf/internal/a;->d()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/firebase/perf/internal/a;->r:Z

    if-eqz p1, :cond_0

    .line 15
    new-instance p1, Landroidx/core/app/g;

    invoke-direct {p1}, Landroidx/core/app/g;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/internal/a;->s:Landroidx/core/app/g;

    :cond_0
    return-void
.end method

.method public static b()Lcom/google/firebase/perf/internal/a;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/firebase/perf/internal/a;->v:Lcom/google/firebase/perf/internal/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/google/firebase/perf/internal/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/internal/a;->v:Lcom/google/firebase/perf/internal/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/google/firebase/perf/internal/a;

    invoke-static {}, Lcom/google/firebase/perf/h/k;->e()Lcom/google/firebase/perf/h/k;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/perf/i/a;

    invoke-direct {v3}, Lcom/google/firebase/perf/i/a;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/perf/internal/a;-><init>(Lcom/google/firebase/perf/h/k;Lcom/google/firebase/perf/i/a;)V

    sput-object v1, Lcom/google/firebase/perf/internal/a;->v:Lcom/google/firebase/perf/internal/a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/firebase/perf/internal/a;->v:Lcom/google/firebase/perf/internal/a;

    return-object v0
.end method

.method public static c(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_st_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d()Z
    .locals 1

    :try_start_0
    const-string v0, "androidx.core.app.g"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private h(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/perf/internal/a;->r:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v0, 0x1000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private k(Landroid/app/Activity;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/internal/a;->t:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/internal/a;->t:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/metrics/Trace;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/perf/internal/a;->t:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/google/firebase/perf/internal/a;->s:Landroidx/core/app/g;

    invoke-virtual {v1, p1}, Landroidx/core/app/g;->b(Landroid/app/Activity;)[Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 5
    aget-object v1, v1, v2

    if-eqz v1, :cond_5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 6
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 7
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 8
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
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-lez v2, :cond_6

    .line 9
    sget-object v1, Lcom/google/firebase/perf/i/b;->FRAMES_TOTAL:Lcom/google/firebase/perf/i/b;

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/b;->toString()Ljava/lang/String;

    move-result-object v1

    int-to-long v6, v2

    invoke-virtual {v0, v1, v6, v7}, Lcom/google/firebase/perf/metrics/Trace;->putMetric(Ljava/lang/String;J)V

    :cond_6
    if-lez v4, :cond_7

    .line 10
    sget-object v1, Lcom/google/firebase/perf/i/b;->FRAMES_SLOW:Lcom/google/firebase/perf/i/b;

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/b;->toString()Ljava/lang/String;

    move-result-object v1

    int-to-long v6, v4

    invoke-virtual {v0, v1, v6, v7}, Lcom/google/firebase/perf/metrics/Trace;->putMetric(Ljava/lang/String;J)V

    :cond_7
    if-lez v5, :cond_8

    .line 11
    sget-object v1, Lcom/google/firebase/perf/i/b;->FRAMES_FROZEN:Lcom/google/firebase/perf/i/b;

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/b;->toString()Ljava/lang/String;

    move-result-object v1

    int-to-long v6, v5

    invoke-virtual {v0, v1, v6, v7}, Lcom/google/firebase/perf/metrics/Trace;->putMetric(Ljava/lang/String;J)V

    .line 12
    :cond_8
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/perf/i/j;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 13
    sget-object v1, Lcom/google/firebase/perf/internal/a;->u:Lcom/google/firebase/perf/g/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendScreenTrace name:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-static {p1}, Lcom/google/firebase/perf/internal/a;->c(Landroid/app/Activity;)Ljava/lang/String;

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

    .line 15
    invoke-virtual {v1, p1}, Lcom/google/firebase/perf/g/a;->a(Ljava/lang/String;)V

    .line 16
    :cond_9
    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    return-void
.end method

.method private l(Ljava/lang/String;Lcom/google/firebase/perf/i/g;Lcom/google/firebase/perf/i/g;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/internal/a;->h:Lcom/google/firebase/perf/d/a;

    invoke-virtual {v0}, Lcom/google/firebase/perf/d/a;->I()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/firebase/perf/j/m;->B0()Lcom/google/firebase/perf/j/m$b;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/j/m$b;->R(Ljava/lang/String;)Lcom/google/firebase/perf/j/m$b;

    .line 4
    invoke-virtual {p2}, Lcom/google/firebase/perf/i/g;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/j/m$b;->P(J)Lcom/google/firebase/perf/j/m$b;

    .line 5
    invoke-virtual {p2, p3}, Lcom/google/firebase/perf/i/g;->c(Lcom/google/firebase/perf/i/g;)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/j/m$b;->Q(J)Lcom/google/firebase/perf/j/m$b;

    .line 6
    invoke-static {}, Lcom/google/firebase/perf/internal/SessionManager;->getInstance()Lcom/google/firebase/perf/internal/SessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/perf/internal/SessionManager;->perfSession()Lcom/google/firebase/perf/internal/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/perf/internal/k;->a()Lcom/google/firebase/perf/j/k;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/j/m$b;->I(Lcom/google/firebase/perf/j/k;)Lcom/google/firebase/perf/j/m$b;

    .line 7
    iget-object p1, p0, Lcom/google/firebase/perf/internal/a;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p1

    .line 8
    iget-object p2, p0, Lcom/google/firebase/perf/internal/a;->n:Ljava/util/Map;

    monitor-enter p2

    .line 9
    :try_start_0
    iget-object p3, p0, Lcom/google/firebase/perf/internal/a;->n:Ljava/util/Map;

    invoke-virtual {v0, p3}, Lcom/google/firebase/perf/j/m$b;->L(Ljava/util/Map;)Lcom/google/firebase/perf/j/m$b;

    if-eqz p1, :cond_1

    .line 10
    sget-object p3, Lcom/google/firebase/perf/i/b;->TRACE_STARTED_NOT_STOPPED:Lcom/google/firebase/perf/i/b;

    invoke-virtual {p3}, Lcom/google/firebase/perf/i/b;->toString()Ljava/lang/String;

    move-result-object p3

    int-to-long v1, p1

    invoke-virtual {v0, p3, v1, v2}, Lcom/google/firebase/perf/j/m$b;->O(Ljava/lang/String;J)Lcom/google/firebase/perf/j/m$b;

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/google/firebase/perf/internal/a;->n:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 12
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object p1, p0, Lcom/google/firebase/perf/internal/a;->g:Lcom/google/firebase/perf/h/k;

    invoke-virtual {v0}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/perf/j/m;

    sget-object p3, Lcom/google/firebase/perf/j/d;->FOREGROUND_BACKGROUND:Lcom/google/firebase/perf/j/d;

    invoke-virtual {p1, p2, p3}, Lcom/google/firebase/perf/h/k;->w(Lcom/google/firebase/perf/j/m;Lcom/google/firebase/perf/j/d;)V

    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private n(Lcom/google/firebase/perf/j/d;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/google/firebase/perf/internal/a;->p:Lcom/google/firebase/perf/j/d;

    .line 2
    iget-object p1, p0, Lcom/google/firebase/perf/internal/a;->q:Ljava/util/Set;

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/internal/a;->q:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/perf/internal/a$a;

    if-eqz v1, :cond_0

    .line 5
    iget-object v2, p0, Lcom/google/firebase/perf/internal/a;->p:Lcom/google/firebase/perf/j/d;

    invoke-interface {v1, v2}, Lcom/google/firebase/perf/internal/a$a;->onUpdateAppState(Lcom/google/firebase/perf/j/d;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 7
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


# virtual methods
.method public a()Lcom/google/firebase/perf/j/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/internal/a;->p:Lcom/google/firebase/perf/j/d;

    return-object v0
.end method

.method public e(Ljava/lang/String;J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/internal/a;->n:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/perf/internal/a;->n:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/firebase/perf/internal/a;->n:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/perf/internal/a;->n:Ljava/util/Map;

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

.method public f(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/internal/a;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    return-void
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/perf/internal/a;->j:Z

    return v0
.end method

.method public declared-synchronized i(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/perf/internal/a;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/google/firebase/perf/internal/a;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public j(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/firebase/perf/internal/a$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/internal/a;->q:Ljava/util/Set;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/perf/internal/a;->q:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

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

.method public m(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/firebase/perf/internal/a$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/internal/a;->q:Ljava/util/Set;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/perf/internal/a;->q:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

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

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/internal/a;->k:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/internal/a;->i:Lcom/google/firebase/perf/i/a;

    invoke-virtual {v0}, Lcom/google/firebase/perf/i/a;->a()Lcom/google/firebase/perf/i/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/internal/a;->m:Lcom/google/firebase/perf/i/g;

    .line 3
    iget-object v0, p0, Lcom/google/firebase/perf/internal/a;->k:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object p1, Lcom/google/firebase/perf/j/d;->FOREGROUND:Lcom/google/firebase/perf/j/d;

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/internal/a;->n(Lcom/google/firebase/perf/j/d;)V

    .line 5
    iget-boolean p1, p0, Lcom/google/firebase/perf/internal/a;->j:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/google/firebase/perf/internal/a;->j:Z

    goto :goto_0

    .line 7
    :cond_0
    sget-object p1, Lcom/google/firebase/perf/i/c;->BACKGROUND_TRACE_NAME:Lcom/google/firebase/perf/i/c;

    .line 8
    invoke-virtual {p1}, Lcom/google/firebase/perf/i/c;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/perf/internal/a;->l:Lcom/google/firebase/perf/i/g;

    iget-object v1, p0, Lcom/google/firebase/perf/internal/a;->m:Lcom/google/firebase/perf/i/g;

    .line 9
    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/perf/internal/a;->l(Ljava/lang/String;Lcom/google/firebase/perf/i/g;Lcom/google/firebase/perf/i/g;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/perf/internal/a;->k:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onActivityStarted(Landroid/app/Activity;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/internal/a;->h(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/perf/internal/a;->h:Lcom/google/firebase/perf/d/a;

    invoke-virtual {v0}, Lcom/google/firebase/perf/d/a;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/internal/a;->s:Landroidx/core/app/g;

    invoke-virtual {v0, p1}, Landroidx/core/app/g;->a(Landroid/app/Activity;)V

    .line 3
    new-instance v0, Lcom/google/firebase/perf/metrics/Trace;

    invoke-static {p1}, Lcom/google/firebase/perf/internal/a;->c(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/perf/internal/a;->g:Lcom/google/firebase/perf/h/k;

    iget-object v3, p0, Lcom/google/firebase/perf/internal/a;->i:Lcom/google/firebase/perf/i/a;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Ljava/lang/String;Lcom/google/firebase/perf/h/k;Lcom/google/firebase/perf/i/a;Lcom/google/firebase/perf/internal/a;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->start()V

    .line 5
    iget-object v1, p0, Lcom/google/firebase/perf/internal/a;->t:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
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
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/internal/a;->h(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/internal/a;->k(Landroid/app/Activity;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/internal/a;->k:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/firebase/perf/internal/a;->k:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/google/firebase/perf/internal/a;->k:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/google/firebase/perf/internal/a;->i:Lcom/google/firebase/perf/i/a;

    invoke-virtual {p1}, Lcom/google/firebase/perf/i/a;->a()Lcom/google/firebase/perf/i/g;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/internal/a;->l:Lcom/google/firebase/perf/i/g;

    .line 7
    sget-object p1, Lcom/google/firebase/perf/j/d;->BACKGROUND:Lcom/google/firebase/perf/j/d;

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/internal/a;->n(Lcom/google/firebase/perf/j/d;)V

    .line 8
    sget-object p1, Lcom/google/firebase/perf/i/c;->FOREGROUND_TRACE_NAME:Lcom/google/firebase/perf/i/c;

    .line 9
    invoke-virtual {p1}, Lcom/google/firebase/perf/i/c;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/perf/internal/a;->m:Lcom/google/firebase/perf/i/g;

    iget-object v1, p0, Lcom/google/firebase/perf/internal/a;->l:Lcom/google/firebase/perf/i/g;

    .line 10
    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/perf/internal/a;->l(Ljava/lang/String;Lcom/google/firebase/perf/i/g;Lcom/google/firebase/perf/i/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
