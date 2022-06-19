.class final Li/a/d/f/z/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/a/d/f/z/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field private static final s:Ljava/util/logging/Logger;


# instance fields
.field private final f:Li/a/a/e/b;

.field private final g:Li/a/a/e/b;

.field private final h:Li/a/d/f/z/g;

.field private final i:J

.field private final j:I

.field private final k:J

.field private l:J

.field private final m:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Li/a/d/f/m;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final o:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Li/a/d/c/e;",
            ">;"
        }
    .end annotation
.end field

.field private volatile q:Z

.field private final r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Li/a/d/f/y/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Li/a/d/f/z/d;

    .line 2
    const-class v0, Li/a/d/f/z/d$b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Li/a/d/f/z/d$b;->s:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>(Li/a/d/f/z/g;JIJLjava/util/Queue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/d/f/z/g;",
            "JIJ",
            "Ljava/util/Queue<",
            "Li/a/d/f/m;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Li/a/d/f/z/d$b;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Li/a/d/f/z/d$b;->p:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Li/a/d/f/z/d$b;->q:Z

    .line 6
    iput-object p1, p0, Li/a/d/f/z/d$b;->h:Li/a/d/f/z/g;

    .line 7
    iput-wide p2, p0, Li/a/d/f/z/d$b;->i:J

    .line 8
    iput p4, p0, Li/a/d/f/z/d$b;->j:I

    .line 9
    iput-wide p5, p0, Li/a/d/f/z/d$b;->k:J

    .line 10
    iput-object p7, p0, Li/a/d/f/z/d$b;->m:Ljava/util/Queue;

    .line 11
    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p1, p0, Li/a/d/f/z/d$b;->o:Ljava/util/concurrent/BlockingQueue;

    const-string p1, "io.opentelemetry.sdk.trace"

    .line 12
    invoke-static {p1}, Li/a/a/e/e;->b(Ljava/lang/String;)Li/a/a/e/j;

    move-result-object p1

    const-string p2, "queueSize"

    .line 13
    invoke-interface {p1, p2}, Li/a/a/e/j;->a(Ljava/lang/String;)Li/a/a/e/i;

    move-result-object p2

    const-string p3, "The number of spans queued"

    .line 14
    invoke-interface {p2, p3}, Li/a/a/e/i;->a(Ljava/lang/String;)Li/a/a/e/i;

    move-result-object p2

    const-string p3, "1"

    .line 15
    invoke-interface {p2, p3}, Li/a/a/e/i;->b(Ljava/lang/String;)Li/a/a/e/i;

    move-result-object p2

    new-instance p5, Li/a/d/f/z/b;

    invoke-direct {p5, p7}, Li/a/d/f/z/b;-><init>(Ljava/util/Queue;)V

    .line 16
    invoke-interface {p2, p5}, Li/a/a/e/i;->d(Ljava/util/function/Consumer;)Li/a/a/e/i;

    move-result-object p2

    .line 17
    invoke-interface {p2}, Li/a/a/e/i;->c()Li/a/a/e/h;

    const-string p2, "processedSpans"

    .line 18
    invoke-interface {p1, p2}, Li/a/a/e/j;->b(Ljava/lang/String;)Li/a/a/e/g;

    move-result-object p1

    .line 19
    invoke-interface {p1, p3}, Li/a/a/e/g;->b(Ljava/lang/String;)Li/a/a/e/g;

    move-result-object p1

    const-string p2, "The number of spans processed by the BatchSpanProcessor. [dropped=true if they were dropped due to high throughput]"

    .line 20
    invoke-interface {p1, p2}, Li/a/a/e/g;->a(Ljava/lang/String;)Li/a/a/e/g;

    move-result-object p1

    .line 21
    invoke-interface {p1}, Li/a/a/e/g;->c()Li/a/a/e/f;

    move-result-object p1

    .line 22
    invoke-static {}, Li/a/d/f/z/d;->a()Ljava/lang/String;

    move-result-object p2

    const-string p3, "spanProcessorType"

    const-string p5, "dropped"

    const-string p6, "true"

    invoke-static {p3, p2, p5, p6}, Li/a/a/e/m/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Li/a/a/e/m/d;

    move-result-object p2

    .line 23
    invoke-interface {p1, p2}, Li/a/a/e/f;->a(Li/a/a/e/m/d;)Li/a/a/e/b;

    move-result-object p2

    iput-object p2, p0, Li/a/d/f/z/d$b;->f:Li/a/a/e/b;

    .line 24
    invoke-static {}, Li/a/d/f/z/d;->a()Ljava/lang/String;

    move-result-object p2

    const-string p6, "false"

    invoke-static {p3, p2, p5, p6}, Li/a/a/e/m/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Li/a/a/e/m/d;

    move-result-object p2

    .line 25
    invoke-interface {p1, p2}, Li/a/a/e/f;->a(Li/a/a/e/m/d;)Li/a/a/e/b;

    move-result-object p1

    iput-object p1, p0, Li/a/d/f/z/d$b;->g:Li/a/a/e/b;

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Li/a/d/f/z/d$b;->r:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Li/a/d/f/z/g;JIJLjava/util/Queue;Li/a/d/f/z/d$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Li/a/d/f/z/d$b;-><init>(Li/a/d/f/z/g;JIJLjava/util/Queue;)V

    return-void
.end method

.method static synthetic a(Li/a/d/f/z/d$b;Li/a/d/f/m;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Li/a/d/f/z/d$b;->d(Li/a/d/f/m;)V

    return-void
.end method

.method static synthetic b(Li/a/d/f/z/d$b;)Li/a/d/c/e;
    .locals 0

    .line 1
    invoke-direct {p0}, Li/a/d/f/z/d$b;->l()Li/a/d/c/e;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Li/a/d/f/z/d$b;)Li/a/d/c/e;
    .locals 0

    .line 1
    invoke-direct {p0}, Li/a/d/f/z/d$b;->g()Li/a/d/c/e;

    move-result-object p0

    return-object p0
.end method

.method private d(Li/a/d/f/m;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/a/d/f/z/d$b;->m:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Li/a/d/f/z/d$b;->f:Li/a/a/e/b;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Li/a/a/e/b;->add(J)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Li/a/d/f/z/d$b;->m:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    iget-object v0, p0, Li/a/d/f/z/d$b;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Li/a/d/f/z/d$b;->o:Ljava/util/concurrent/BlockingQueue;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private e()V
    .locals 4

    .line 1
    iget-object v0, p0, Li/a/d/f/z/d$b;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Li/a/d/f/z/d$b;->h:Li/a/d/f/z/g;

    iget-object v1, p0, Li/a/d/f/z/d$b;->r:Ljava/util/ArrayList;

    .line 3
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Li/a/d/f/z/g;->R(Ljava/util/Collection;)Li/a/d/c/e;

    move-result-object v0

    .line 4
    iget-wide v1, p0, Li/a/d/f/z/d$b;->k:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Li/a/d/c/e;->d(JLjava/util/concurrent/TimeUnit;)Li/a/d/c/e;

    .line 5
    invoke-virtual {v0}, Li/a/d/c/e;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Li/a/d/f/z/d$b;->g:Li/a/a/e/b;

    iget-object v1, p0, Li/a/d/f/z/d$b;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Li/a/a/e/b;->add(J)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Li/a/d/f/z/d$b;->s:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Exporter failed"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 8
    :try_start_1
    sget-object v1, Li/a/d/f/z/d$b;->s:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exporter threw an Exception"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :goto_0
    iget-object v0, p0, Li/a/d/f/z/d$b;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :goto_1
    iget-object v1, p0, Li/a/d/f/z/d$b;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 10
    throw v0
.end method

.method private f()V
    .locals 3

    .line 1
    iget-object v0, p0, Li/a/d/f/z/d$b;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 2
    iget-object v1, p0, Li/a/d/f/z/d$b;->m:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/a/d/f/m;

    .line 3
    iget-object v2, p0, Li/a/d/f/z/d$b;->r:Ljava/util/ArrayList;

    invoke-interface {v1}, Li/a/d/f/m;->e()Li/a/d/f/y/h;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    .line 4
    iget-object v1, p0, Li/a/d/f/z/d$b;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Li/a/d/f/z/d$b;->j:I

    if-lt v1, v2, :cond_0

    .line 5
    invoke-direct {p0}, Li/a/d/f/z/d$b;->e()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Li/a/d/f/z/d$b;->e()V

    .line 7
    iget-object v0, p0, Li/a/d/f/z/d$b;->p:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/a/d/c/e;

    invoke-virtual {v0}, Li/a/d/c/e;->h()Li/a/d/c/e;

    .line 8
    iget-object v0, p0, Li/a/d/f/z/d$b;->p:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private g()Li/a/d/c/e;
    .locals 3

    .line 1
    new-instance v0, Li/a/d/c/e;

    invoke-direct {v0}, Li/a/d/c/e;-><init>()V

    .line 2
    iget-object v1, p0, Li/a/d/f/z/d$b;->p:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Li/a/d/f/z/d$b;->o:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v0, p0, Li/a/d/f/z/d$b;->p:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/a/d/c/e;

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Li/a/d/c/e;->g()Li/a/d/c/e;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method static synthetic h(Ljava/util/Queue;Li/a/a/e/a;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/util/Queue;->size()I

    move-result p0

    int-to-long v0, p0

    .line 2
    invoke-static {}, Li/a/d/f/z/d;->a()Ljava/lang/String;

    move-result-object p0

    const-string v2, "spanProcessorType"

    invoke-static {v2, p0}, Li/a/a/e/m/c;->b(Ljava/lang/String;Ljava/lang/String;)Li/a/a/e/m/d;

    move-result-object p0

    .line 3
    invoke-interface {p1, v0, v1, p0}, Li/a/a/e/a;->a(JLi/a/a/e/m/d;)V

    return-void
.end method

.method static synthetic i(Li/a/d/c/e;Li/a/d/c/e;Li/a/d/c/e;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Li/a/d/c/e;->c()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Li/a/d/c/e;->c()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Li/a/d/c/e;->h()Li/a/d/c/e;

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p2}, Li/a/d/c/e;->a()Li/a/d/c/e;

    :goto_1
    return-void
.end method

.method private synthetic j(Li/a/d/c/e;Li/a/d/c/e;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Li/a/d/f/z/d$b;->q:Z

    .line 2
    iget-object v0, p0, Li/a/d/f/z/d$b;->h:Li/a/d/f/z/g;

    invoke-interface {v0}, Li/a/d/f/z/g;->shutdown()Li/a/d/c/e;

    move-result-object v0

    .line 3
    new-instance v1, Li/a/d/f/z/c;

    invoke-direct {v1, p1, v0, p2}, Li/a/d/f/z/c;-><init>(Li/a/d/c/e;Li/a/d/c/e;Li/a/d/c/e;)V

    invoke-virtual {v0, v1}, Li/a/d/c/e;->i(Ljava/lang/Runnable;)Li/a/d/c/e;

    return-void
.end method

.method private l()Li/a/d/c/e;
    .locals 3

    .line 1
    new-instance v0, Li/a/d/c/e;

    invoke-direct {v0}, Li/a/d/c/e;-><init>()V

    .line 2
    invoke-direct {p0}, Li/a/d/f/z/d$b;->g()Li/a/d/c/e;

    move-result-object v1

    .line 3
    new-instance v2, Li/a/d/f/z/a;

    invoke-direct {v2, p0, v1, v0}, Li/a/d/f/z/a;-><init>(Li/a/d/f/z/d$b;Li/a/d/c/e;Li/a/d/c/e;)V

    invoke-virtual {v1, v2}, Li/a/d/c/e;->i(Ljava/lang/Runnable;)Li/a/d/c/e;

    return-object v0
.end method

.method private m()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Li/a/d/f/z/d$b;->i:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Li/a/d/f/z/d$b;->l:J

    return-void
.end method


# virtual methods
.method public synthetic k(Li/a/d/c/e;Li/a/d/c/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Li/a/d/f/z/d$b;->j(Li/a/d/c/e;Li/a/d/c/e;)V

    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    invoke-direct {p0}, Li/a/d/f/z/d$b;->m()V

    .line 2
    :cond_0
    :goto_0
    iget-boolean v0, p0, Li/a/d/f/z/d$b;->q:Z

    if-eqz v0, :cond_5

    .line 3
    iget-object v0, p0, Li/a/d/f/z/d$b;->p:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Li/a/d/f/z/d$b;->f()V

    .line 5
    :cond_1
    :goto_1
    iget-object v0, p0, Li/a/d/f/z/d$b;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Li/a/d/f/z/d$b;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Li/a/d/f/z/d$b;->j:I

    if-ge v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Li/a/d/f/z/d$b;->r:Ljava/util/ArrayList;

    iget-object v1, p0, Li/a/d/f/z/d$b;->m:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/a/d/f/m;

    invoke-interface {v1}, Li/a/d/f/m;->e()Li/a/d/f/y/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_2
    iget-object v0, p0, Li/a/d/f/z/d$b;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Li/a/d/f/z/d$b;->j:I

    if-ge v0, v1, :cond_3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Li/a/d/f/z/d$b;->l:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_4

    .line 8
    :cond_3
    invoke-direct {p0}, Li/a/d/f/z/d$b;->e()V

    .line 9
    invoke-direct {p0}, Li/a/d/f/z/d$b;->m()V

    .line 10
    :cond_4
    iget-object v0, p0, Li/a/d/f/z/d$b;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    :try_start_0
    iget-wide v0, p0, Li/a/d/f/z/d$b;->l:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 12
    iget-object v2, p0, Li/a/d/f/z/d$b;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v3, p0, Li/a/d/f/z/d$b;->j:I

    iget-object v4, p0, Li/a/d/f/z/d$b;->r:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 13
    iget-object v2, p0, Li/a/d/f/z/d$b;->o:Ljava/util/concurrent/BlockingQueue;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v0, v1, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Li/a/d/f/z/d$b;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 15
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_5
    return-void
.end method
