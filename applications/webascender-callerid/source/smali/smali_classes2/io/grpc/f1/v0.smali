.class final Lio/grpc/f1/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/e0;
.implements Lio/grpc/f1/j2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/f1/v0$m;,
        Lio/grpc/f1/v0$k;,
        Lio/grpc/f1/v0$i;,
        Lio/grpc/f1/v0$j;,
        Lio/grpc/f1/v0$l;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/e0<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/grpc/f1/j2;"
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/f0;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lio/grpc/f1/j$a;

.field private final e:Lio/grpc/f1/v0$j;

.field private final f:Lio/grpc/f1/t;

.field private final g:Ljava/util/concurrent/ScheduledExecutorService;

.field private final h:Lio/grpc/b0;

.field private final i:Lio/grpc/f1/m;

.field private final j:Lio/grpc/f;

.field private final k:Lio/grpc/d1;

.field private final l:Lio/grpc/f1/v0$k;

.field private volatile m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lio/grpc/f1/j;

.field private final o:Lcom/google/common/base/q;

.field private p:Lio/grpc/d1$c;

.field private final q:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lio/grpc/f1/v;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Lio/grpc/f1/t0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/f1/t0<",
            "Lio/grpc/f1/v;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lio/grpc/f1/v;

.field private volatile t:Lio/grpc/f1/g1;

.field private volatile u:Lio/grpc/p;

.field private v:Lio/grpc/b1;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lio/grpc/f1/j$a;Lio/grpc/f1/t;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/base/s;Lio/grpc/d1;Lio/grpc/f1/v0$j;Lio/grpc/b0;Lio/grpc/f1/m;Lio/grpc/f1/o;Lio/grpc/f0;Lio/grpc/f;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/grpc/f1/j$a;",
            "Lio/grpc/f1/t;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/common/base/s<",
            "Lcom/google/common/base/q;",
            ">;",
            "Lio/grpc/d1;",
            "Lio/grpc/f1/v0$j;",
            "Lio/grpc/b0;",
            "Lio/grpc/f1/m;",
            "Lio/grpc/f1/o;",
            "Lio/grpc/f0;",
            "Lio/grpc/f;",
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

    iput-object v4, v0, Lio/grpc/f1/v0;->q:Ljava/util/Collection;

    .line 3
    new-instance v4, Lio/grpc/f1/v0$a;

    invoke-direct {v4, p0}, Lio/grpc/f1/v0$a;-><init>(Lio/grpc/f1/v0;)V

    iput-object v4, v0, Lio/grpc/f1/v0;->r:Lio/grpc/f1/t0;

    .line 4
    sget-object v4, Lio/grpc/o;->IDLE:Lio/grpc/o;

    invoke-static {v4}, Lio/grpc/p;->a(Lio/grpc/o;)Lio/grpc/p;

    move-result-object v4

    iput-object v4, v0, Lio/grpc/f1/v0;->u:Lio/grpc/p;

    const-string v4, "addressGroups"

    .line 5
    invoke-static {p1, v4}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    const-string v5, "addressGroups is empty"

    invoke-static {v4, v5}, Lcom/google/common/base/m;->e(ZLjava/lang/Object;)V

    const-string v4, "addressGroups contains null entry"

    .line 7
    invoke-static {p1, v4}, Lio/grpc/f1/v0;->G(Ljava/util/List;Ljava/lang/String;)V

    .line 8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 10
    iput-object v1, v0, Lio/grpc/f1/v0;->m:Ljava/util/List;

    .line 11
    new-instance v4, Lio/grpc/f1/v0$k;

    invoke-direct {v4, v1}, Lio/grpc/f1/v0$k;-><init>(Ljava/util/List;)V

    iput-object v4, v0, Lio/grpc/f1/v0;->l:Lio/grpc/f1/v0$k;

    move-object v1, p2

    .line 12
    iput-object v1, v0, Lio/grpc/f1/v0;->b:Ljava/lang/String;

    move-object v1, p3

    .line 13
    iput-object v1, v0, Lio/grpc/f1/v0;->c:Ljava/lang/String;

    move-object v1, p4

    .line 14
    iput-object v1, v0, Lio/grpc/f1/v0;->d:Lio/grpc/f1/j$a;

    move-object v1, p5

    .line 15
    iput-object v1, v0, Lio/grpc/f1/v0;->f:Lio/grpc/f1/t;

    move-object v1, p6

    .line 16
    iput-object v1, v0, Lio/grpc/f1/v0;->g:Ljava/util/concurrent/ScheduledExecutorService;

    .line 17
    invoke-interface {p7}, Lcom/google/common/base/s;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/base/q;

    iput-object v1, v0, Lio/grpc/f1/v0;->o:Lcom/google/common/base/q;

    move-object v1, p8

    .line 18
    iput-object v1, v0, Lio/grpc/f1/v0;->k:Lio/grpc/d1;

    move-object v1, p9

    .line 19
    iput-object v1, v0, Lio/grpc/f1/v0;->e:Lio/grpc/f1/v0$j;

    move-object/from16 v1, p10

    .line 20
    iput-object v1, v0, Lio/grpc/f1/v0;->h:Lio/grpc/b0;

    move-object/from16 v1, p11

    .line 21
    iput-object v1, v0, Lio/grpc/f1/v0;->i:Lio/grpc/f1/m;

    const-string v1, "channelTracer"

    move-object/from16 v4, p12

    .line 22
    invoke-static {v4, v1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "logId"

    .line 23
    invoke-static {v2, v1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v0, Lio/grpc/f1/v0;->a:Lio/grpc/f0;

    const-string v1, "channelLogger"

    .line 24
    invoke-static {v3, v1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v3, v0, Lio/grpc/f1/v0;->j:Lio/grpc/f;

    return-void
.end method

.method static synthetic A(Lio/grpc/f1/v0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/f1/v0;->O()V

    return-void
.end method

.method static synthetic B(Lio/grpc/f1/v0;Lio/grpc/d1$c;)Lio/grpc/d1$c;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/v0;->p:Lio/grpc/d1$c;

    return-object p1
.end method

.method static synthetic C(Lio/grpc/f1/v0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/f1/v0;->F()V

    return-void
.end method

.method static synthetic D(Lio/grpc/f1/v0;)Lio/grpc/f1/v0$k;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/v0;->l:Lio/grpc/f1/v0$k;

    return-object p0
.end method

.method static synthetic E(Lio/grpc/f1/v0;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/v0;->m:Ljava/util/List;

    return-object p1
.end method

.method private F()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/v0;->k:Lio/grpc/d1;

    invoke-virtual {v0}, Lio/grpc/d1;->d()V

    .line 2
    iget-object v0, p0, Lio/grpc/f1/v0;->p:Lio/grpc/d1$c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lio/grpc/d1$c;->a()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/grpc/f1/v0;->p:Lio/grpc/d1$c;

    .line 5
    iput-object v0, p0, Lio/grpc/f1/v0;->n:Lio/grpc/f1/j;

    :cond_0
    return-void
.end method

.method private static G(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private I(Lio/grpc/o;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/v0;->k:Lio/grpc/d1;

    invoke-virtual {v0}, Lio/grpc/d1;->d()V

    .line 2
    invoke-static {p1}, Lio/grpc/p;->a(Lio/grpc/o;)Lio/grpc/p;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/grpc/f1/v0;->J(Lio/grpc/p;)V

    return-void
.end method

.method private J(Lio/grpc/p;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/f1/v0;->k:Lio/grpc/d1;

    invoke-virtual {v0}, Lio/grpc/d1;->d()V

    .line 2
    iget-object v0, p0, Lio/grpc/f1/v0;->u:Lio/grpc/p;

    invoke-virtual {v0}, Lio/grpc/p;->c()Lio/grpc/o;

    move-result-object v0

    invoke-virtual {p1}, Lio/grpc/p;->c()Lio/grpc/o;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lio/grpc/f1/v0;->u:Lio/grpc/p;

    invoke-virtual {v0}, Lio/grpc/p;->c()Lio/grpc/o;

    move-result-object v0

    sget-object v1, Lio/grpc/o;->SHUTDOWN:Lio/grpc/o;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot transition out of SHUTDOWN to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/m;->v(ZLjava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lio/grpc/f1/v0;->u:Lio/grpc/p;

    .line 5
    iget-object v0, p0, Lio/grpc/f1/v0;->e:Lio/grpc/f1/v0$j;

    invoke-virtual {v0, p0, p1}, Lio/grpc/f1/v0$j;->c(Lio/grpc/f1/v0;Lio/grpc/p;)V

    :cond_1
    return-void
.end method

.method private K()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/v0;->k:Lio/grpc/d1;

    new-instance v1, Lio/grpc/f1/v0$f;

    invoke-direct {v1, p0}, Lio/grpc/f1/v0$f;-><init>(Lio/grpc/f1/v0;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private L(Lio/grpc/f1/v;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/v0;->k:Lio/grpc/d1;

    new-instance v1, Lio/grpc/f1/v0$g;

    invoke-direct {v1, p0, p1, p2}, Lio/grpc/f1/v0$g;-><init>(Lio/grpc/f1/v0;Lio/grpc/f1/v;Z)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private M(Lio/grpc/b1;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p1}, Lio/grpc/b1;->n()Lio/grpc/b1$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Lio/grpc/b1;->o()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "("

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/grpc/b1;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private N(Lio/grpc/b1;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/grpc/f1/v0;->k:Lio/grpc/d1;

    invoke-virtual {v0}, Lio/grpc/d1;->d()V

    .line 2
    invoke-static {p1}, Lio/grpc/p;->b(Lio/grpc/b1;)Lio/grpc/p;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/grpc/f1/v0;->J(Lio/grpc/p;)V

    .line 3
    iget-object v0, p0, Lio/grpc/f1/v0;->n:Lio/grpc/f1/j;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/f1/v0;->d:Lio/grpc/f1/j$a;

    invoke-interface {v0}, Lio/grpc/f1/j$a;->get()Lio/grpc/f1/j;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/f1/v0;->n:Lio/grpc/f1/j;

    .line 5
    :cond_0
    iget-object v0, p0, Lio/grpc/f1/v0;->n:Lio/grpc/f1/j;

    .line 6
    invoke-interface {v0}, Lio/grpc/f1/j;->a()J

    move-result-wide v0

    iget-object v2, p0, Lio/grpc/f1/v0;->o:Lcom/google/common/base/q;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v7}, Lcom/google/common/base/q;->d(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    sub-long v5, v0, v2

    .line 7
    iget-object v0, p0, Lio/grpc/f1/v0;->j:Lio/grpc/f;

    sget-object v1, Lio/grpc/f$a;->INFO:Lio/grpc/f$a;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 8
    invoke-direct {p0, p1}, Lio/grpc/f1/v0;->M(Lio/grpc/b1;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const-string p1, "TRANSIENT_FAILURE ({0}). Will reconnect after {1} ns"

    .line 9
    invoke-virtual {v0, v1, p1, v2}, Lio/grpc/f;->b(Lio/grpc/f$a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lio/grpc/f1/v0;->p:Lio/grpc/d1$c;

    if-nez p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    const-string p1, "previous reconnectTask is not done"

    invoke-static {v3, p1}, Lcom/google/common/base/m;->v(ZLjava/lang/Object;)V

    .line 11
    iget-object v3, p0, Lio/grpc/f1/v0;->k:Lio/grpc/d1;

    new-instance v4, Lio/grpc/f1/v0$b;

    invoke-direct {v4, p0}, Lio/grpc/f1/v0$b;-><init>(Lio/grpc/f1/v0;)V

    iget-object v8, p0, Lio/grpc/f1/v0;->g:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual/range {v3 .. v8}, Lio/grpc/d1;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/d1$c;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/f1/v0;->p:Lio/grpc/d1$c;

    return-void
.end method

.method private O()V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/grpc/f1/v0;->k:Lio/grpc/d1;

    invoke-virtual {v0}, Lio/grpc/d1;->d()V

    .line 2
    iget-object v0, p0, Lio/grpc/f1/v0;->p:Lio/grpc/d1$c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Should have no reconnectTask scheduled"

    invoke-static {v0, v3}, Lcom/google/common/base/m;->v(ZLjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lio/grpc/f1/v0;->l:Lio/grpc/f1/v0$k;

    invoke-virtual {v0}, Lio/grpc/f1/v0$k;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lio/grpc/f1/v0;->o:Lcom/google/common/base/q;

    invoke-virtual {v0}, Lcom/google/common/base/q;->f()Lcom/google/common/base/q;

    invoke-virtual {v0}, Lcom/google/common/base/q;->g()Lcom/google/common/base/q;

    .line 5
    :cond_1
    iget-object v0, p0, Lio/grpc/f1/v0;->l:Lio/grpc/f1/v0$k;

    invoke-virtual {v0}, Lio/grpc/f1/v0$k;->a()Ljava/net/SocketAddress;

    move-result-object v0

    .line 6
    instance-of v3, v0, Lio/grpc/a0;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 7
    check-cast v0, Lio/grpc/a0;

    .line 8
    invoke-virtual {v0}, Lio/grpc/a0;->c()Ljava/net/InetSocketAddress;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v0

    move-object v0, v4

    .line 9
    :goto_1
    iget-object v5, p0, Lio/grpc/f1/v0;->l:Lio/grpc/f1/v0$k;

    invoke-virtual {v5}, Lio/grpc/f1/v0$k;->b()Lio/grpc/a;

    move-result-object v5

    .line 10
    sget-object v6, Lio/grpc/x;->d:Lio/grpc/a$c;

    .line 11
    invoke-virtual {v5, v6}, Lio/grpc/a;->b(Lio/grpc/a$c;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 12
    new-instance v7, Lio/grpc/f1/t$a;

    invoke-direct {v7}, Lio/grpc/f1/t$a;-><init>()V

    if-eqz v6, :cond_3

    goto :goto_2

    .line 13
    :cond_3
    iget-object v6, p0, Lio/grpc/f1/v0;->b:Ljava/lang/String;

    :goto_2
    invoke-virtual {v7, v6}, Lio/grpc/f1/t$a;->e(Ljava/lang/String;)Lio/grpc/f1/t$a;

    .line 14
    invoke-virtual {v7, v5}, Lio/grpc/f1/t$a;->f(Lio/grpc/a;)Lio/grpc/f1/t$a;

    iget-object v5, p0, Lio/grpc/f1/v0;->c:Ljava/lang/String;

    .line 15
    invoke-virtual {v7, v5}, Lio/grpc/f1/t$a;->h(Ljava/lang/String;)Lio/grpc/f1/t$a;

    .line 16
    invoke-virtual {v7, v0}, Lio/grpc/f1/t$a;->g(Lio/grpc/a0;)Lio/grpc/f1/t$a;

    .line 17
    new-instance v0, Lio/grpc/f1/v0$m;

    invoke-direct {v0}, Lio/grpc/f1/v0$m;-><init>()V

    .line 18
    invoke-virtual {p0}, Lio/grpc/f1/v0;->e()Lio/grpc/f0;

    move-result-object v5

    iput-object v5, v0, Lio/grpc/f1/v0$m;->a:Lio/grpc/f0;

    .line 19
    new-instance v5, Lio/grpc/f1/v0$i;

    iget-object v6, p0, Lio/grpc/f1/v0;->f:Lio/grpc/f1/t;

    .line 20
    invoke-interface {v6, v3, v7, v0}, Lio/grpc/f1/t;->A0(Ljava/net/SocketAddress;Lio/grpc/f1/t$a;Lio/grpc/f;)Lio/grpc/f1/v;

    move-result-object v6

    iget-object v7, p0, Lio/grpc/f1/v0;->i:Lio/grpc/f1/m;

    invoke-direct {v5, v6, v7, v4}, Lio/grpc/f1/v0$i;-><init>(Lio/grpc/f1/v;Lio/grpc/f1/m;Lio/grpc/f1/v0$a;)V

    .line 21
    invoke-interface {v5}, Lio/grpc/j0;->e()Lio/grpc/f0;

    move-result-object v4

    iput-object v4, v0, Lio/grpc/f1/v0$m;->a:Lio/grpc/f0;

    .line 22
    iget-object v4, p0, Lio/grpc/f1/v0;->h:Lio/grpc/b0;

    invoke-virtual {v4, v5}, Lio/grpc/b0;->c(Lio/grpc/e0;)V

    .line 23
    iput-object v5, p0, Lio/grpc/f1/v0;->s:Lio/grpc/f1/v;

    .line 24
    iget-object v4, p0, Lio/grpc/f1/v0;->q:Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v4, Lio/grpc/f1/v0$l;

    invoke-direct {v4, p0, v5, v3}, Lio/grpc/f1/v0$l;-><init>(Lio/grpc/f1/v0;Lio/grpc/f1/v;Ljava/net/SocketAddress;)V

    invoke-interface {v5, v4}, Lio/grpc/f1/g1;->d(Lio/grpc/f1/g1$a;)Ljava/lang/Runnable;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 26
    iget-object v4, p0, Lio/grpc/f1/v0;->k:Lio/grpc/d1;

    invoke-virtual {v4, v3}, Lio/grpc/d1;->b(Ljava/lang/Runnable;)V

    .line 27
    :cond_4
    iget-object v3, p0, Lio/grpc/f1/v0;->j:Lio/grpc/f;

    sget-object v4, Lio/grpc/f$a;->INFO:Lio/grpc/f$a;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v0, v0, Lio/grpc/f1/v0$m;->a:Lio/grpc/f0;

    aput-object v0, v1, v2

    const-string v0, "Started transport {0}"

    invoke-virtual {v3, v4, v0, v1}, Lio/grpc/f;->b(Lio/grpc/f$a;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic h(Lio/grpc/f1/v0;)Lio/grpc/f1/v0$j;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/v0;->e:Lio/grpc/f1/v0$j;

    return-object p0
.end method

.method static synthetic i(Lio/grpc/f1/v0;)Lio/grpc/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/v0;->u:Lio/grpc/p;

    return-object p0
.end method

.method static synthetic j(Lio/grpc/f1/v0;)Lio/grpc/f1/g1;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/v0;->t:Lio/grpc/f1/g1;

    return-object p0
.end method

.method static synthetic k(Lio/grpc/f1/v0;Lio/grpc/f1/g1;)Lio/grpc/f1/g1;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/v0;->t:Lio/grpc/f1/g1;

    return-object p1
.end method

.method static synthetic l(Lio/grpc/f1/v0;)Lio/grpc/f1/v;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/v0;->s:Lio/grpc/f1/v;

    return-object p0
.end method

.method static synthetic m(Lio/grpc/f1/v0;Lio/grpc/f1/v;)Lio/grpc/f1/v;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/v0;->s:Lio/grpc/f1/v;

    return-object p1
.end method

.method static synthetic n(Lio/grpc/f1/v0;)Lio/grpc/b1;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/v0;->v:Lio/grpc/b1;

    return-object p0
.end method

.method static synthetic o(Lio/grpc/f1/v0;Lio/grpc/b1;)Lio/grpc/b1;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/v0;->v:Lio/grpc/b1;

    return-object p1
.end method

.method static synthetic p(Lio/grpc/f1/v0;)Ljava/util/Collection;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/v0;->q:Ljava/util/Collection;

    return-object p0
.end method

.method static synthetic q(Lio/grpc/f1/v0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/f1/v0;->K()V

    return-void
.end method

.method static synthetic r(Lio/grpc/f1/v0;)Lio/grpc/f1/t0;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/v0;->r:Lio/grpc/f1/t0;

    return-object p0
.end method

.method static synthetic s(Lio/grpc/f1/v0;Lio/grpc/f1/j;)Lio/grpc/f1/j;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/v0;->n:Lio/grpc/f1/j;

    return-object p1
.end method

.method static synthetic t(Lio/grpc/f1/v0;)Lio/grpc/d1;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/v0;->k:Lio/grpc/d1;

    return-object p0
.end method

.method static synthetic u(Lio/grpc/f1/v0;)Lio/grpc/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/v0;->j:Lio/grpc/f;

    return-object p0
.end method

.method static synthetic v(Lio/grpc/f1/v0;Lio/grpc/f1/v;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/f1/v0;->L(Lio/grpc/f1/v;Z)V

    return-void
.end method

.method static synthetic w(Lio/grpc/f1/v0;Lio/grpc/b1;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/f1/v0;->M(Lio/grpc/b1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic x(Lio/grpc/f1/v0;Lio/grpc/b1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/f1/v0;->N(Lio/grpc/b1;)V

    return-void
.end method

.method static synthetic y(Lio/grpc/f1/v0;)Lio/grpc/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/v0;->h:Lio/grpc/b0;

    return-object p0
.end method

.method static synthetic z(Lio/grpc/f1/v0;Lio/grpc/o;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/f1/v0;->I(Lio/grpc/o;)V

    return-void
.end method


# virtual methods
.method H()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/f1/v0;->m:Ljava/util/List;

    return-object v0
.end method

.method public P(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;)V"
        }
    .end annotation

    const-string v0, "newAddressGroups"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "newAddressGroups contains null entry"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/f1/v0;->G(Ljava/util/List;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "newAddressGroups is empty"

    invoke-static {v0, v1}, Lcom/google/common/base/m;->e(ZLjava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lio/grpc/f1/v0;->k:Lio/grpc/d1;

    new-instance v1, Lio/grpc/f1/v0$d;

    invoke-direct {v1, p0, p1}, Lio/grpc/f1/v0$d;-><init>(Lio/grpc/f1/v0;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a()Lio/grpc/f1/s;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/v0;->t:Lio/grpc/f1/g1;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/f1/v0;->k:Lio/grpc/d1;

    new-instance v1, Lio/grpc/f1/v0$c;

    invoke-direct {v1, p0}, Lio/grpc/f1/v0$c;-><init>(Lio/grpc/f1/v0;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lio/grpc/b1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/v0;->k:Lio/grpc/d1;

    new-instance v1, Lio/grpc/f1/v0$e;

    invoke-direct {v1, p0, p1}, Lio/grpc/f1/v0$e;-><init>(Lio/grpc/f1/v0;Lio/grpc/b1;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method c(Lio/grpc/b1;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lio/grpc/f1/v0;->b(Lio/grpc/b1;)V

    .line 2
    iget-object v0, p0, Lio/grpc/f1/v0;->k:Lio/grpc/d1;

    new-instance v1, Lio/grpc/f1/v0$h;

    invoke-direct {v1, p0, p1}, Lio/grpc/f1/v0$h;-><init>(Lio/grpc/f1/v0;Lio/grpc/b1;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e()Lio/grpc/f0;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/v0;->a:Lio/grpc/f0;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/common/base/h;->c(Ljava/lang/Object;)Lcom/google/common/base/h$b;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/f1/v0;->a:Lio/grpc/f0;

    .line 2
    invoke-virtual {v1}, Lio/grpc/f0;->d()J

    move-result-wide v1

    const-string v3, "logId"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/h$b;->c(Ljava/lang/String;J)Lcom/google/common/base/h$b;

    iget-object v1, p0, Lio/grpc/f1/v0;->m:Ljava/util/List;

    const-string v2, "addressGroups"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/h$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/h$b;

    .line 4
    invoke-virtual {v0}, Lcom/google/common/base/h$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
