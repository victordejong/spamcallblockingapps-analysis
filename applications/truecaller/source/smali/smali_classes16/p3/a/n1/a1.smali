.class public final Lp3/a/n1/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/d0;
.implements Lp3/a/n1/w2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/n1/a1$h;,
        Lp3/a/n1/a1$f;,
        Lp3/a/n1/a1$d;,
        Lp3/a/n1/a1$e;,
        Lp3/a/n1/a1$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp3/a/d0<",
        "Ljava/lang/Object;",
        ">;",
        "Lp3/a/n1/w2;"
    }
.end annotation


# instance fields
.field public final a:Lp3/a/e0;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lp3/a/n1/l$a;

.field public final e:Lp3/a/n1/a1$e;

.field public final f:Lp3/a/n1/v;

.field public final g:Ljava/util/concurrent/ScheduledExecutorService;

.field public final h:Lp3/a/a0;

.field public final i:Lp3/a/n1/n;

.field public final j:Lp3/a/e;

.field public final k:Lp3/a/k1;

.field public final l:Lp3/a/n1/a1$f;

.field public volatile m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp3/a/v;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lp3/a/n1/l;

.field public final o:Lcom/google/common/base/Stopwatch;

.field public p:Lp3/a/k1$c;

.field public q:Lp3/a/k1$c;

.field public r:Lp3/a/n1/t1;

.field public final s:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lp3/a/n1/x;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Lp3/a/n1/y0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/n1/y0<",
            "Lp3/a/n1/x;",
            ">;"
        }
    .end annotation
.end field

.field public u:Lp3/a/n1/x;

.field public volatile v:Lp3/a/n1/t1;

.field public volatile w:Lp3/a/p;

.field public x:Lp3/a/g1;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lp3/a/n1/l$a;Lp3/a/n1/v;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/base/Supplier;Lp3/a/k1;Lp3/a/n1/a1$e;Lp3/a/a0;Lp3/a/n1/n;Lp3/a/n1/p;Lp3/a/e0;Lp3/a/e;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lp3/a/v;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lp3/a/n1/l$a;",
            "Lp3/a/n1/v;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/common/base/Stopwatch;",
            ">;",
            "Lp3/a/k1;",
            "Lp3/a/n1/a1$e;",
            "Lp3/a/a0;",
            "Lp3/a/n1/n;",
            "Lp3/a/n1/p;",
            "Lp3/a/e0;",
            "Lp3/a/e;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p13

    move-object/from16 v3, p14

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lp3/a/n1/a1;->s:Ljava/util/Collection;

    .line 3
    new-instance v4, Lp3/a/n1/a1$a;

    invoke-direct {v4, p0}, Lp3/a/n1/a1$a;-><init>(Lp3/a/n1/a1;)V

    iput-object v4, v0, Lp3/a/n1/a1;->t:Lp3/a/n1/y0;

    .line 4
    sget-object v4, Lp3/a/o;->d:Lp3/a/o;

    invoke-static {v4}, Lp3/a/p;->a(Lp3/a/o;)Lp3/a/p;

    move-result-object v4

    iput-object v4, v0, Lp3/a/n1/a1;->w:Lp3/a/p;

    const-string v4, "addressGroups"

    .line 5
    invoke-static {p1, v4}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    const-string v5, "addressGroups is empty"

    invoke-static {v4, v5}, Ln3/g0/y;->checkArgument2(ZLjava/lang/Object;)V

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "addressGroups contains null entry"

    .line 8
    invoke-static {v5, v6}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 11
    iput-object v1, v0, Lp3/a/n1/a1;->m:Ljava/util/List;

    .line 12
    new-instance v4, Lp3/a/n1/a1$f;

    invoke-direct {v4, v1}, Lp3/a/n1/a1$f;-><init>(Ljava/util/List;)V

    iput-object v4, v0, Lp3/a/n1/a1;->l:Lp3/a/n1/a1$f;

    move-object v1, p2

    .line 13
    iput-object v1, v0, Lp3/a/n1/a1;->b:Ljava/lang/String;

    move-object v1, p3

    .line 14
    iput-object v1, v0, Lp3/a/n1/a1;->c:Ljava/lang/String;

    move-object v1, p4

    .line 15
    iput-object v1, v0, Lp3/a/n1/a1;->d:Lp3/a/n1/l$a;

    move-object v1, p5

    .line 16
    iput-object v1, v0, Lp3/a/n1/a1;->f:Lp3/a/n1/v;

    move-object v1, p6

    .line 17
    iput-object v1, v0, Lp3/a/n1/a1;->g:Ljava/util/concurrent/ScheduledExecutorService;

    .line 18
    invoke-interface {p7}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/base/Stopwatch;

    iput-object v1, v0, Lp3/a/n1/a1;->o:Lcom/google/common/base/Stopwatch;

    move-object v1, p8

    .line 19
    iput-object v1, v0, Lp3/a/n1/a1;->k:Lp3/a/k1;

    move-object/from16 v1, p9

    .line 20
    iput-object v1, v0, Lp3/a/n1/a1;->e:Lp3/a/n1/a1$e;

    move-object/from16 v1, p10

    .line 21
    iput-object v1, v0, Lp3/a/n1/a1;->h:Lp3/a/a0;

    move-object/from16 v1, p11

    .line 22
    iput-object v1, v0, Lp3/a/n1/a1;->i:Lp3/a/n1/n;

    const-string v1, "channelTracer"

    move-object/from16 v4, p12

    .line 23
    invoke-static {v4, v1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "logId"

    .line 24
    invoke-static {v2, v1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v0, Lp3/a/n1/a1;->a:Lp3/a/e0;

    const-string v1, "channelLogger"

    .line 25
    invoke-static {v3, v1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v3, v0, Lp3/a/n1/a1;->j:Lp3/a/e;

    return-void
.end method

.method public static h(Lp3/a/n1/a1;Lp3/a/o;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/a1;->k:Lp3/a/k1;

    invoke-virtual {v0}, Lp3/a/k1;->d()V

    .line 2
    invoke-static {p1}, Lp3/a/p;->a(Lp3/a/o;)Lp3/a/p;

    move-result-object p1

    invoke-virtual {p0, p1}, Lp3/a/n1/a1;->j(Lp3/a/p;)V

    return-void
.end method

.method public static i(Lp3/a/n1/a1;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lp3/a/n1/a1;->k:Lp3/a/k1;

    invoke-virtual {v0}, Lp3/a/k1;->d()V

    .line 2
    iget-object v0, p0, Lp3/a/n1/a1;->p:Lp3/a/k1$c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Should have no reconnectTask scheduled"

    invoke-static {v0, v3}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lp3/a/n1/a1;->l:Lp3/a/n1/a1$f;

    .line 4
    iget v3, v0, Lp3/a/n1/a1$f;->b:I

    if-nez v3, :cond_1

    iget v0, v0, Lp3/a/n1/a1$f;->c:I

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lp3/a/n1/a1;->o:Lcom/google/common/base/Stopwatch;

    invoke-virtual {v0}, Lcom/google/common/base/Stopwatch;->reset()Lcom/google/common/base/Stopwatch;

    invoke-virtual {v0}, Lcom/google/common/base/Stopwatch;->start()Lcom/google/common/base/Stopwatch;

    .line 6
    :cond_2
    iget-object v0, p0, Lp3/a/n1/a1;->l:Lp3/a/n1/a1$f;

    invoke-virtual {v0}, Lp3/a/n1/a1$f;->a()Ljava/net/SocketAddress;

    move-result-object v0

    .line 7
    instance-of v3, v0, Lp3/a/z;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 8
    check-cast v0, Lp3/a/z;

    .line 9
    iget-object v3, v0, Lp3/a/z;->b:Ljava/net/InetSocketAddress;

    goto :goto_2

    :cond_3
    move-object v3, v0

    move-object v0, v4

    .line 10
    :goto_2
    iget-object v5, p0, Lp3/a/n1/a1;->l:Lp3/a/n1/a1$f;

    .line 11
    iget-object v6, v5, Lp3/a/n1/a1$f;->a:Ljava/util/List;

    iget v5, v5, Lp3/a/n1/a1$f;->b:I

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp3/a/v;

    .line 12
    iget-object v5, v5, Lp3/a/v;->b:Lp3/a/a;

    .line 13
    sget-object v6, Lp3/a/v;->d:Lp3/a/a$c;

    .line 14
    iget-object v7, v5, Lp3/a/a;->a:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 15
    check-cast v6, Ljava/lang/String;

    .line 16
    new-instance v7, Lp3/a/n1/v$a;

    invoke-direct {v7}, Lp3/a/n1/v$a;-><init>()V

    if-eqz v6, :cond_4

    goto :goto_3

    .line 17
    :cond_4
    iget-object v6, p0, Lp3/a/n1/a1;->b:Ljava/lang/String;

    :goto_3
    const-string v8, "authority"

    .line 18
    invoke-static {v6, v8}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v6, v7, Lp3/a/n1/v$a;->a:Ljava/lang/String;

    const-string v6, "eagAttributes"

    .line 19
    invoke-static {v5, v6}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iput-object v5, v7, Lp3/a/n1/v$a;->b:Lp3/a/a;

    .line 21
    iget-object v5, p0, Lp3/a/n1/a1;->c:Ljava/lang/String;

    .line 22
    iput-object v5, v7, Lp3/a/n1/v$a;->c:Ljava/lang/String;

    .line 23
    iput-object v0, v7, Lp3/a/n1/v$a;->d:Lp3/a/z;

    .line 24
    new-instance v0, Lp3/a/n1/a1$h;

    invoke-direct {v0}, Lp3/a/n1/a1$h;-><init>()V

    .line 25
    iget-object v5, p0, Lp3/a/n1/a1;->a:Lp3/a/e0;

    .line 26
    iput-object v5, v0, Lp3/a/n1/a1$h;->a:Lp3/a/e0;

    .line 27
    new-instance v5, Lp3/a/n1/a1$d;

    iget-object v6, p0, Lp3/a/n1/a1;->f:Lp3/a/n1/v;

    .line 28
    invoke-interface {v6, v3, v7, v0}, Lp3/a/n1/v;->u0(Ljava/net/SocketAddress;Lp3/a/n1/v$a;Lp3/a/e;)Lp3/a/n1/x;

    move-result-object v6

    iget-object v7, p0, Lp3/a/n1/a1;->i:Lp3/a/n1/n;

    invoke-direct {v5, v6, v7, v4}, Lp3/a/n1/a1$d;-><init>(Lp3/a/n1/x;Lp3/a/n1/n;Lp3/a/n1/a1$a;)V

    .line 29
    invoke-virtual {v5}, Lp3/a/n1/l0;->b()Lp3/a/e0;

    move-result-object v4

    iput-object v4, v0, Lp3/a/n1/a1$h;->a:Lp3/a/e0;

    .line 30
    iget-object v4, p0, Lp3/a/n1/a1;->h:Lp3/a/a0;

    .line 31
    iget-object v4, v4, Lp3/a/a0;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v4, v5}, Lp3/a/a0;->a(Ljava/util/Map;Lp3/a/d0;)V

    .line 32
    iput-object v5, p0, Lp3/a/n1/a1;->u:Lp3/a/n1/x;

    .line 33
    iget-object v4, p0, Lp3/a/n1/a1;->s:Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v4, Lp3/a/n1/a1$g;

    invoke-direct {v4, p0, v5, v3}, Lp3/a/n1/a1$g;-><init>(Lp3/a/n1/a1;Lp3/a/n1/x;Ljava/net/SocketAddress;)V

    .line 35
    invoke-virtual {v5}, Lp3/a/n1/a1$d;->a()Lp3/a/n1/x;

    move-result-object v3

    invoke-interface {v3, v4}, Lp3/a/n1/t1;->d(Lp3/a/n1/t1$a;)Ljava/lang/Runnable;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 36
    iget-object v4, p0, Lp3/a/n1/a1;->k:Lp3/a/k1;

    .line 37
    iget-object v4, v4, Lp3/a/k1;->b:Ljava/util/Queue;

    const-string v5, "runnable is null"

    invoke-static {v3, v5}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_5
    iget-object p0, p0, Lp3/a/n1/a1;->j:Lp3/a/e;

    sget-object v3, Lp3/a/e$a;->b:Lp3/a/e$a;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v0, v0, Lp3/a/n1/a1$h;->a:Lp3/a/e0;

    aput-object v0, v1, v2

    const-string v0, "Started transport {0}"

    invoke-virtual {p0, v3, v0, v1}, Lp3/a/e;->b(Lp3/a/e$a;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Lp3/a/n1/u;
    .locals 4

    .line 1
    iget-object v0, p0, Lp3/a/n1/a1;->v:Lp3/a/n1/t1;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lp3/a/n1/a1;->k:Lp3/a/k1;

    new-instance v1, Lp3/a/n1/a1$b;

    invoke-direct {v1, p0}, Lp3/a/n1/a1$b;-><init>(Lp3/a/n1/a1;)V

    .line 3
    iget-object v2, v0, Lp3/a/k1;->b:Ljava/util/Queue;

    const-string v3, "runnable is null"

    invoke-static {v1, v3}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v0}, Lp3/a/k1;->a()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Lp3/a/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/a1;->a:Lp3/a/e0;

    return-object v0
.end method

.method public g(Lp3/a/g1;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/n1/a1;->k:Lp3/a/k1;

    new-instance v1, Lp3/a/n1/a1$c;

    invoke-direct {v1, p0, p1}, Lp3/a/n1/a1$c;-><init>(Lp3/a/n1/a1;Lp3/a/g1;)V

    .line 2
    iget-object p1, v0, Lp3/a/k1;->b:Ljava/util/Queue;

    const-string v2, "runnable is null"

    invoke-static {v1, v2}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {v0}, Lp3/a/k1;->a()V

    return-void
.end method

.method public final j(Lp3/a/p;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lp3/a/n1/a1;->k:Lp3/a/k1;

    invoke-virtual {v0}, Lp3/a/k1;->d()V

    .line 2
    iget-object v0, p0, Lp3/a/n1/a1;->w:Lp3/a/p;

    .line 3
    iget-object v0, v0, Lp3/a/p;->a:Lp3/a/o;

    iget-object v1, p1, Lp3/a/p;->a:Lp3/a/o;

    if-eq v0, v1, :cond_4

    .line 4
    iget-object v0, p0, Lp3/a/n1/a1;->w:Lp3/a/p;

    .line 5
    iget-object v0, v0, Lp3/a/p;->a:Lp3/a/o;

    .line 6
    sget-object v1, Lp3/a/o;->e:Lp3/a/o;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot transition out of SHUTDOWN to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 7
    iput-object p1, p0, Lp3/a/n1/a1;->w:Lp3/a/p;

    .line 8
    iget-object v0, p0, Lp3/a/n1/a1;->e:Lp3/a/n1/a1$e;

    check-cast v0, Lp3/a/n1/m1$t$a;

    .line 9
    iget-object v1, v0, Lp3/a/n1/m1$t$a;->b:Lp3/a/n1/m1$t;

    iget-object v1, v1, Lp3/a/n1/m1$t;->j:Lp3/a/n1/m1;

    .line 10
    sget-object v4, Lp3/a/n1/m1;->g0:Ljava/util/logging/Logger;

    .line 11
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v4, p1, Lp3/a/p;->a:Lp3/a/o;

    .line 13
    sget-object v5, Lp3/a/o;->c:Lp3/a/o;

    if-eq v4, v5, :cond_1

    sget-object v5, Lp3/a/o;->d:Lp3/a/o;

    if-ne v4, v5, :cond_2

    .line 14
    :cond_1
    invoke-virtual {v1}, Lp3/a/n1/m1;->n()V

    .line 15
    :cond_2
    iget-object v1, v0, Lp3/a/n1/m1$t$a;->a:Lp3/a/i0$j;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    const-string v1, "listener is null"

    invoke-static {v2, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 16
    iget-object v0, v0, Lp3/a/n1/m1$t$a;->a:Lp3/a/i0$j;

    invoke-interface {v0, p1}, Lp3/a/i0$j;->a(Lp3/a/p;)V

    :cond_4
    return-void
.end method

.method public final k(Lp3/a/g1;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p1, Lp3/a/g1;->a:Lp3/a/g1$b;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p1, Lp3/a/g1;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "("

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object p1, p1, Lp3/a/g1;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Ln3/g0/y;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lp3/a/n1/a1;->a:Lp3/a/e0;

    .line 2
    iget-wide v1, v1, Lp3/a/e0;->c:J

    const-string v3, "logId"

    .line 3
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lp3/a/n1/a1;->m:Ljava/util/List;

    const-string v2, "addressGroups"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 5
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
