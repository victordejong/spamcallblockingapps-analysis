.class abstract Lio/grpc/f1/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/f1/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/f1/w1$r;,
        Lio/grpc/f1/w1$t;,
        Lio/grpc/f1/w1$x;,
        Lio/grpc/f1/w1$q;,
        Lio/grpc/f1/w1$p;,
        Lio/grpc/f1/w1$w;,
        Lio/grpc/f1/w1$u;,
        Lio/grpc/f1/w1$v;,
        Lio/grpc/f1/w1$o;,
        Lio/grpc/f1/w1$s;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/grpc/f1/q;"
    }
.end annotation


# static fields
.field static final w:Lio/grpc/q0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/q0$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final x:Lio/grpc/q0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/q0$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final y:Lio/grpc/b1;

.field private static z:Ljava/util/Random;


# instance fields
.field private final a:Lio/grpc/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/r0<",
            "TReqT;*>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Ljava/util/concurrent/ScheduledExecutorService;

.field private final d:Lio/grpc/q0;

.field private final e:Lio/grpc/f1/x1$a;

.field private final f:Lio/grpc/f1/q0$a;

.field private g:Lio/grpc/f1/x1;

.field private h:Lio/grpc/f1/q0;

.field private i:Z

.field private final j:Ljava/lang/Object;

.field private final k:Lio/grpc/f1/w1$q;

.field private final l:J

.field private final m:J

.field private final n:Lio/grpc/f1/w1$x;

.field private final o:Lio/grpc/f1/u0;

.field private volatile p:Lio/grpc/f1/w1$u;

.field private final q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private r:J

.field private s:Lio/grpc/f1/r;

.field private t:Lio/grpc/f1/w1$r;

.field private u:Lio/grpc/f1/w1$r;

.field private v:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lio/grpc/q0;->c:Lio/grpc/q0$d;

    const-string v1, "grpc-previous-rpc-attempts"

    .line 2
    invoke-static {v1, v0}, Lio/grpc/q0$f;->e(Ljava/lang/String;Lio/grpc/q0$d;)Lio/grpc/q0$f;

    move-result-object v1

    sput-object v1, Lio/grpc/f1/w1;->w:Lio/grpc/q0$f;

    const-string v1, "grpc-retry-pushback-ms"

    .line 3
    invoke-static {v1, v0}, Lio/grpc/q0$f;->e(Ljava/lang/String;Lio/grpc/q0$d;)Lio/grpc/q0$f;

    move-result-object v0

    sput-object v0, Lio/grpc/f1/w1;->x:Lio/grpc/q0$f;

    .line 4
    sget-object v0, Lio/grpc/b1;->g:Lio/grpc/b1;

    const-string v1, "Stream thrown away because RetriableStream committed"

    .line 5
    invoke-virtual {v0, v1}, Lio/grpc/b1;->r(Ljava/lang/String;)Lio/grpc/b1;

    move-result-object v0

    sput-object v0, Lio/grpc/f1/w1;->y:Lio/grpc/b1;

    .line 6
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lio/grpc/f1/w1;->z:Ljava/util/Random;

    return-void
.end method

.method constructor <init>(Lio/grpc/r0;Lio/grpc/q0;Lio/grpc/f1/w1$q;JJLjava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/f1/x1$a;Lio/grpc/f1/q0$a;Lio/grpc/f1/w1$x;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/r0<",
            "TReqT;*>;",
            "Lio/grpc/q0;",
            "Lio/grpc/f1/w1$q;",
            "JJ",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lio/grpc/f1/x1$a;",
            "Lio/grpc/f1/q0$a;",
            "Lio/grpc/f1/w1$x;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p10

    move-object/from16 v2, p11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lio/grpc/f1/w1;->j:Ljava/lang/Object;

    .line 3
    new-instance v3, Lio/grpc/f1/u0;

    invoke-direct {v3}, Lio/grpc/f1/u0;-><init>()V

    iput-object v3, v0, Lio/grpc/f1/w1;->o:Lio/grpc/f1/u0;

    .line 4
    new-instance v3, Lio/grpc/f1/w1$u;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v4, 0x8

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v12}, Lio/grpc/f1/w1$u;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lio/grpc/f1/w1$w;ZZZI)V

    iput-object v3, v0, Lio/grpc/f1/w1;->p:Lio/grpc/f1/w1$u;

    .line 6
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v3, v0, Lio/grpc/f1/w1;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v3, p1

    .line 7
    iput-object v3, v0, Lio/grpc/f1/w1;->a:Lio/grpc/r0;

    move-object/from16 v3, p3

    .line 8
    iput-object v3, v0, Lio/grpc/f1/w1;->k:Lio/grpc/f1/w1$q;

    move-wide/from16 v3, p4

    .line 9
    iput-wide v3, v0, Lio/grpc/f1/w1;->l:J

    move-wide/from16 v3, p6

    .line 10
    iput-wide v3, v0, Lio/grpc/f1/w1;->m:J

    move-object/from16 v3, p8

    .line 11
    iput-object v3, v0, Lio/grpc/f1/w1;->b:Ljava/util/concurrent/Executor;

    move-object/from16 v3, p9

    .line 12
    iput-object v3, v0, Lio/grpc/f1/w1;->c:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v3, p2

    .line 13
    iput-object v3, v0, Lio/grpc/f1/w1;->d:Lio/grpc/q0;

    const-string v3, "retryPolicyProvider"

    .line 14
    invoke-static {v1, v3}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Lio/grpc/f1/x1$a;

    iput-object v1, v0, Lio/grpc/f1/w1;->e:Lio/grpc/f1/x1$a;

    const-string v1, "hedgingPolicyProvider"

    .line 15
    invoke-static {v2, v1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, Lio/grpc/f1/q0$a;

    iput-object v1, v0, Lio/grpc/f1/w1;->f:Lio/grpc/f1/q0$a;

    move-object/from16 v1, p12

    .line 16
    iput-object v1, v0, Lio/grpc/f1/w1;->n:Lio/grpc/f1/w1$x;

    return-void
.end method

.method static synthetic A(Lio/grpc/f1/w1;)Lio/grpc/f1/x1$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/w1;->e:Lio/grpc/f1/x1$a;

    return-object p0
.end method

.method static synthetic B(Lio/grpc/f1/w1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/f1/w1;->a0()V

    return-void
.end method

.method static synthetic C(Lio/grpc/f1/w1;I)Lio/grpc/f1/w1$w;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/f1/w1;->X(I)Lio/grpc/f1/w1$w;

    move-result-object p0

    return-object p0
.end method

.method static synthetic D(Lio/grpc/f1/w1;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/grpc/f1/w1;->v:J

    return-wide v0
.end method

.method static synthetic E(Lio/grpc/f1/w1;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/grpc/f1/w1;->v:J

    return-wide p1
.end method

.method static synthetic F(Lio/grpc/f1/w1;Lio/grpc/f1/w1$r;)Lio/grpc/f1/w1$r;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/w1;->t:Lio/grpc/f1/w1$r;

    return-object p1
.end method

.method static synthetic G(Lio/grpc/f1/w1;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/f1/w1;->f0(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic H()Ljava/util/Random;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/f1/w1;->z:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic I(Lio/grpc/f1/w1;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/grpc/f1/w1;->r:J

    return-wide v0
.end method

.method static synthetic J(Lio/grpc/f1/w1;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/grpc/f1/w1;->r:J

    return-wide p1
.end method

.method static synthetic K(Lio/grpc/f1/w1;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/grpc/f1/w1;->l:J

    return-wide v0
.end method

.method static synthetic L(Lio/grpc/f1/w1;)Lio/grpc/f1/w1$q;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/w1;->k:Lio/grpc/f1/w1$q;

    return-object p0
.end method

.method static synthetic M(Lio/grpc/f1/w1;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/grpc/f1/w1;->m:J

    return-wide v0
.end method

.method static synthetic N(Lio/grpc/f1/w1;Lio/grpc/f1/w1$w;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/f1/w1;->V(Lio/grpc/f1/w1$w;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic O(Lio/grpc/f1/w1;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/w1;->j:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic P(Lio/grpc/f1/w1;Lio/grpc/f1/w1$u;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/f1/w1;->b0(Lio/grpc/f1/w1$u;)Z

    move-result p0

    return p0
.end method

.method static synthetic Q(Lio/grpc/f1/w1;)Lio/grpc/f1/w1$x;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/w1;->n:Lio/grpc/f1/w1$x;

    return-object p0
.end method

.method static synthetic R(Lio/grpc/f1/w1;Lio/grpc/f1/w1$r;)Lio/grpc/f1/w1$r;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/w1;->u:Lio/grpc/f1/w1$r;

    return-object p1
.end method

.method static synthetic S(Lio/grpc/f1/w1;)Lio/grpc/f1/q0;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/w1;->h:Lio/grpc/f1/q0;

    return-object p0
.end method

.method static synthetic T(Lio/grpc/f1/w1;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/w1;->c:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic U(Lio/grpc/f1/w1;Lio/grpc/f1/w1$w;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/f1/w1;->Z(Lio/grpc/f1/w1$w;)V

    return-void
.end method

.method private V(Lio/grpc/f1/w1$w;)Ljava/lang/Runnable;
    .locals 9

    .line 1
    iget-object v0, p0, Lio/grpc/f1/w1;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/f1/w1;->p:Lio/grpc/f1/w1$u;

    iget-object v1, v1, Lio/grpc/f1/w1$u;->f:Lio/grpc/f1/w1$w;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-object v2

    .line 4
    :cond_0
    iget-object v1, p0, Lio/grpc/f1/w1;->p:Lio/grpc/f1/w1$u;

    iget-object v5, v1, Lio/grpc/f1/w1$u;->c:Ljava/util/Collection;

    .line 5
    iget-object v1, p0, Lio/grpc/f1/w1;->p:Lio/grpc/f1/w1$u;

    invoke-virtual {v1, p1}, Lio/grpc/f1/w1$u;->c(Lio/grpc/f1/w1$w;)Lio/grpc/f1/w1$u;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/f1/w1;->p:Lio/grpc/f1/w1$u;

    .line 6
    iget-object v1, p0, Lio/grpc/f1/w1;->k:Lio/grpc/f1/w1$q;

    iget-wide v3, p0, Lio/grpc/f1/w1;->r:J

    neg-long v3, v3

    invoke-virtual {v1, v3, v4}, Lio/grpc/f1/w1$q;->a(J)J

    .line 7
    iget-object v1, p0, Lio/grpc/f1/w1;->t:Lio/grpc/f1/w1$r;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Lio/grpc/f1/w1$r;->b()Ljava/util/concurrent/Future;

    move-result-object v1

    .line 9
    iput-object v2, p0, Lio/grpc/f1/w1;->t:Lio/grpc/f1/w1$r;

    move-object v7, v1

    goto :goto_0

    :cond_1
    move-object v7, v2

    .line 10
    :goto_0
    iget-object v1, p0, Lio/grpc/f1/w1;->u:Lio/grpc/f1/w1$r;

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {v1}, Lio/grpc/f1/w1$r;->b()Ljava/util/concurrent/Future;

    move-result-object v1

    .line 12
    iput-object v2, p0, Lio/grpc/f1/w1;->u:Lio/grpc/f1/w1$r;

    move-object v8, v1

    goto :goto_1

    :cond_2
    move-object v8, v2

    .line 13
    :goto_1
    new-instance v1, Lio/grpc/f1/w1$c;

    move-object v3, v1

    move-object v4, p0

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Lio/grpc/f1/w1$c;-><init>(Lio/grpc/f1/w1;Ljava/util/Collection;Lio/grpc/f1/w1$w;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private W(Lio/grpc/f1/w1$w;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/f1/w1;->V(Lio/grpc/f1/w1$w;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private X(I)Lio/grpc/f1/w1$w;
    .locals 3

    .line 1
    new-instance v0, Lio/grpc/f1/w1$w;

    invoke-direct {v0, p1}, Lio/grpc/f1/w1$w;-><init>(I)V

    .line 2
    new-instance v1, Lio/grpc/f1/w1$p;

    invoke-direct {v1, p0, v0}, Lio/grpc/f1/w1$p;-><init>(Lio/grpc/f1/w1;Lio/grpc/f1/w1$w;)V

    .line 3
    new-instance v2, Lio/grpc/f1/w1$a;

    invoke-direct {v2, p0, v1}, Lio/grpc/f1/w1$a;-><init>(Lio/grpc/f1/w1;Lio/grpc/k;)V

    .line 4
    iget-object v1, p0, Lio/grpc/f1/w1;->d:Lio/grpc/q0;

    invoke-virtual {p0, v1, p1}, Lio/grpc/f1/w1;->h0(Lio/grpc/q0;I)Lio/grpc/q0;

    move-result-object p1

    .line 5
    invoke-virtual {p0, v2, p1}, Lio/grpc/f1/w1;->c0(Lio/grpc/k$a;Lio/grpc/q0;)Lio/grpc/f1/q;

    move-result-object p1

    iput-object p1, v0, Lio/grpc/f1/w1$w;->a:Lio/grpc/f1/q;

    return-object v0
.end method

.method private Y(Lio/grpc/f1/w1$o;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/w1;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/f1/w1;->p:Lio/grpc/f1/w1$u;

    iget-boolean v1, v1, Lio/grpc/f1/w1$u;->a:Z

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/grpc/f1/w1;->p:Lio/grpc/f1/w1$u;

    iget-object v1, v1, Lio/grpc/f1/w1$u;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v1, p0, Lio/grpc/f1/w1;->p:Lio/grpc/f1/w1$u;

    iget-object v1, v1, Lio/grpc/f1/w1$u;->c:Ljava/util/Collection;

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/f1/w1$w;

    .line 7
    invoke-interface {p1, v1}, Lio/grpc/f1/w1$o;->a(Lio/grpc/f1/w1$w;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private Z(Lio/grpc/f1/w1$w;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    iget-object v3, p0, Lio/grpc/f1/w1;->j:Ljava/lang/Object;

    monitor-enter v3

    .line 2
    :try_start_0
    iget-object v4, p0, Lio/grpc/f1/w1;->p:Lio/grpc/f1/w1$u;

    .line 3
    iget-object v5, v4, Lio/grpc/f1/w1$u;->f:Lio/grpc/f1/w1$w;

    if-eqz v5, :cond_0

    if-eq v5, p1, :cond_0

    .line 4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p1, Lio/grpc/f1/w1$w;->a:Lio/grpc/f1/q;

    sget-object v0, Lio/grpc/f1/w1;->y:Lio/grpc/b1;

    invoke-interface {p1, v0}, Lio/grpc/f1/q;->c(Lio/grpc/b1;)V

    return-void

    .line 6
    :cond_0
    :try_start_1
    iget-object v5, v4, Lio/grpc/f1/w1$u;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v2, v5, :cond_1

    .line 7
    invoke-virtual {v4, p1}, Lio/grpc/f1/w1$u;->h(Lio/grpc/f1/w1$w;)Lio/grpc/f1/w1$u;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/f1/w1;->p:Lio/grpc/f1/w1$u;

    .line 8
    monitor-exit v3

    return-void

    .line 9
    :cond_1
    iget-boolean v5, p1, Lio/grpc/f1/w1$w;->b:Z

    if-eqz v5, :cond_2

    .line 10
    monitor-exit v3

    return-void

    :cond_2
    add-int/lit16 v5, v2, 0x80

    .line 11
    iget-object v6, v4, Lio/grpc/f1/w1$u;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-nez v1, :cond_3

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, v4, Lio/grpc/f1/w1$u;->b:Ljava/util/List;

    invoke-interface {v4, v2, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    .line 13
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 14
    iget-object v4, v4, Lio/grpc/f1/w1$u;->b:Ljava/util/List;

    invoke-interface {v4, v2, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/f1/w1$o;

    .line 17
    iget-object v4, p0, Lio/grpc/f1/w1;->p:Lio/grpc/f1/w1$u;

    .line 18
    iget-object v6, v4, Lio/grpc/f1/w1$u;->f:Lio/grpc/f1/w1$w;

    if-eqz v6, :cond_4

    if-eq v6, p1, :cond_4

    goto :goto_3

    .line 19
    :cond_4
    iget-boolean v4, v4, Lio/grpc/f1/w1$u;->g:Z

    if-eqz v4, :cond_6

    if-ne v6, p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    const-string p1, "substream should be CANCELLED_BECAUSE_COMMITTED already"

    .line 20
    invoke-static {v0, p1}, Lcom/google/common/base/m;->v(ZLjava/lang/Object;)V

    return-void

    .line 21
    :cond_6
    invoke-interface {v3, p1}, Lio/grpc/f1/w1$o;->a(Lio/grpc/f1/w1$w;)V

    goto :goto_2

    :cond_7
    :goto_3
    move v2, v5

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 22
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private a0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/f1/w1;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/f1/w1;->u:Lio/grpc/f1/w1$r;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lio/grpc/f1/w1$r;->b()Ljava/util/concurrent/Future;

    move-result-object v1

    .line 4
    iput-object v2, p0, Lio/grpc/f1/w1;->u:Lio/grpc/f1/w1$r;

    move-object v2, v1

    .line 5
    :cond_0
    iget-object v1, p0, Lio/grpc/f1/w1;->p:Lio/grpc/f1/w1$u;

    invoke-virtual {v1}, Lio/grpc/f1/w1$u;->d()Lio/grpc/f1/w1$u;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/f1/w1;->p:Lio/grpc/f1/w1$u;

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 7
    invoke-interface {v2, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private b0(Lio/grpc/f1/w1$u;)Z
    .locals 2

    .line 1
    iget-object v0, p1, Lio/grpc/f1/w1$u;->f:Lio/grpc/f1/w1$w;

    if-nez v0, :cond_0

    iget v0, p1, Lio/grpc/f1/w1$u;->e:I

    iget-object v1, p0, Lio/grpc/f1/w1;->h:Lio/grpc/f1/q0;

    iget v1, v1, Lio/grpc/f1/q0;->a:I

    if-ge v0, v1, :cond_0

    iget-boolean p1, p1, Lio/grpc/f1/w1$u;->h:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private f0(Ljava/lang/Integer;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lio/grpc/f1/w1;->a0()V

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lio/grpc/f1/w1;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/grpc/f1/w1;->u:Lio/grpc/f1/w1$r;

    if-nez v1, :cond_2

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_2
    invoke-virtual {v1}, Lio/grpc/f1/w1$r;->b()Ljava/util/concurrent/Future;

    move-result-object v1

    .line 7
    new-instance v2, Lio/grpc/f1/w1$r;

    iget-object v3, p0, Lio/grpc/f1/w1;->j:Ljava/lang/Object;

    invoke-direct {v2, v3}, Lio/grpc/f1/w1$r;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lio/grpc/f1/w1;->u:Lio/grpc/f1/w1$r;

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 9
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 10
    :cond_3
    iget-object v0, p0, Lio/grpc/f1/w1;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lio/grpc/f1/w1$s;

    invoke-direct {v1, p0, v2}, Lio/grpc/f1/w1$s;-><init>(Lio/grpc/f1/w1;Lio/grpc/f1/w1$r;)V

    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v3, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 12
    invoke-interface {v0, v1, v3, v4, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    invoke-virtual {v2, p1}, Lio/grpc/f1/w1$r;->c(Ljava/util/concurrent/Future;)V

    return-void

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic n()Lio/grpc/b1;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/f1/w1;->y:Lio/grpc/b1;

    return-object v0
.end method

.method static synthetic p(Lio/grpc/f1/w1;)Lio/grpc/f1/w1$u;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/w1;->p:Lio/grpc/f1/w1$u;

    return-object p0
.end method

.method static synthetic q(Lio/grpc/f1/w1;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/w1;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic r(Lio/grpc/f1/w1;Lio/grpc/f1/w1$u;)Lio/grpc/f1/w1$u;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/w1;->p:Lio/grpc/f1/w1$u;

    return-object p1
.end method

.method static synthetic s(Lio/grpc/f1/w1;)Lio/grpc/r0;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/w1;->a:Lio/grpc/r0;

    return-object p0
.end method

.method static synthetic t(Lio/grpc/f1/w1;Lio/grpc/f1/w1$w;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/f1/w1;->W(Lio/grpc/f1/w1$w;)V

    return-void
.end method

.method static synthetic u(Lio/grpc/f1/w1;)Lio/grpc/f1/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/w1;->s:Lio/grpc/f1/r;

    return-object p0
.end method

.method static synthetic v(Lio/grpc/f1/w1;)Lio/grpc/f1/u0;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/w1;->o:Lio/grpc/f1/u0;

    return-object p0
.end method

.method static synthetic w(Lio/grpc/f1/w1;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/w1;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic x(Lio/grpc/f1/w1;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/grpc/f1/w1;->i:Z

    return p0
.end method

.method static synthetic y(Lio/grpc/f1/w1;)Lio/grpc/f1/x1;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/w1;->g:Lio/grpc/f1/x1;

    return-object p0
.end method

.method static synthetic z(Lio/grpc/f1/w1;Lio/grpc/f1/x1;)Lio/grpc/f1/x1;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/w1;->g:Lio/grpc/f1/x1;

    return-object p1
.end method


# virtual methods
.method public final b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/w1;->p:Lio/grpc/f1/w1$u;

    .line 2
    iget-boolean v1, v0, Lio/grpc/f1/w1$u;->a:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lio/grpc/f1/w1$u;->f:Lio/grpc/f1/w1$w;

    iget-object v0, v0, Lio/grpc/f1/w1$w;->a:Lio/grpc/f1/q;

    invoke-interface {v0, p1}, Lio/grpc/f1/f2;->b(I)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Lio/grpc/f1/w1$l;

    invoke-direct {v0, p0, p1}, Lio/grpc/f1/w1$l;-><init>(Lio/grpc/f1/w1;I)V

    invoke-direct {p0, v0}, Lio/grpc/f1/w1;->Y(Lio/grpc/f1/w1$o;)V

    return-void
.end method

.method public final c(Lio/grpc/b1;)V
    .locals 3

    .line 1
    new-instance v0, Lio/grpc/f1/w1$w;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/f1/w1$w;-><init>(I)V

    .line 2
    new-instance v1, Lio/grpc/f1/k1;

    invoke-direct {v1}, Lio/grpc/f1/k1;-><init>()V

    iput-object v1, v0, Lio/grpc/f1/w1$w;->a:Lio/grpc/f1/q;

    .line 3
    invoke-direct {p0, v0}, Lio/grpc/f1/w1;->V(Lio/grpc/f1/w1$w;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lio/grpc/f1/w1;->s:Lio/grpc/f1/r;

    new-instance v2, Lio/grpc/q0;

    invoke-direct {v2}, Lio/grpc/q0;-><init>()V

    invoke-interface {v1, p1, v2}, Lio/grpc/f1/r;->b(Lio/grpc/b1;Lio/grpc/q0;)V

    .line 5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lio/grpc/f1/w1;->p:Lio/grpc/f1/w1$u;

    iget-object v0, v0, Lio/grpc/f1/w1$u;->f:Lio/grpc/f1/w1$w;

    iget-object v0, v0, Lio/grpc/f1/w1$w;->a:Lio/grpc/f1/q;

    invoke-interface {v0, p1}, Lio/grpc/f1/q;->c(Lio/grpc/b1;)V

    .line 7
    iget-object p1, p0, Lio/grpc/f1/w1;->j:Ljava/lang/Object;

    monitor-enter p1

    .line 8
    :try_start_0
    iget-object v0, p0, Lio/grpc/f1/w1;->p:Lio/grpc/f1/w1$u;

    invoke-virtual {v0}, Lio/grpc/f1/w1$u;->b()Lio/grpc/f1/w1$u;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/f1/w1;->p:Lio/grpc/f1/w1$u;

    .line 9
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method abstract c0(Lio/grpc/k$a;Lio/grpc/q0;)Lio/grpc/f1/q;
.end method

.method public final d(Lio/grpc/m;)V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/f1/w1$d;

    invoke-direct {v0, p0, p1}, Lio/grpc/f1/w1$d;-><init>(Lio/grpc/f1/w1;Lio/grpc/m;)V

    invoke-direct {p0, v0}, Lio/grpc/f1/w1;->Y(Lio/grpc/f1/w1$o;)V

    return-void
.end method

.method abstract d0()V
.end method

.method public final e(I)V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/f1/w1$j;

    invoke-direct {v0, p0, p1}, Lio/grpc/f1/w1$j;-><init>(Lio/grpc/f1/w1;I)V

    invoke-direct {p0, v0}, Lio/grpc/f1/w1;->Y(Lio/grpc/f1/w1$o;)V

    return-void
.end method

.method abstract e0()Lio/grpc/b1;
.end method

.method public final f(I)V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/f1/w1$k;

    invoke-direct {v0, p0, p1}, Lio/grpc/f1/w1$k;-><init>(Lio/grpc/f1/w1;I)V

    invoke-direct {p0, v0}, Lio/grpc/f1/w1;->Y(Lio/grpc/f1/w1$o;)V

    return-void
.end method

.method public final flush()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/w1;->p:Lio/grpc/f1/w1$u;

    .line 2
    iget-boolean v1, v0, Lio/grpc/f1/w1$u;->a:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lio/grpc/f1/w1$u;->f:Lio/grpc/f1/w1$w;

    iget-object v0, v0, Lio/grpc/f1/w1$w;->a:Lio/grpc/f1/q;

    invoke-interface {v0}, Lio/grpc/f1/f2;->flush()V

    return-void

    .line 4
    :cond_0
    new-instance v0, Lio/grpc/f1/w1$g;

    invoke-direct {v0, p0}, Lio/grpc/f1/w1$g;-><init>(Lio/grpc/f1/w1;)V

    invoke-direct {p0, v0}, Lio/grpc/f1/w1;->Y(Lio/grpc/f1/w1$o;)V

    return-void
.end method

.method public final g(Lio/grpc/v;)V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/f1/w1$f;

    invoke-direct {v0, p0, p1}, Lio/grpc/f1/w1$f;-><init>(Lio/grpc/f1/w1;Lio/grpc/v;)V

    invoke-direct {p0, v0}, Lio/grpc/f1/w1;->Y(Lio/grpc/f1/w1$o;)V

    return-void
.end method

.method final g0(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/f1/w1;->p:Lio/grpc/f1/w1$u;

    .line 2
    iget-boolean v1, v0, Lio/grpc/f1/w1$u;->a:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lio/grpc/f1/w1$u;->f:Lio/grpc/f1/w1$w;

    iget-object v0, v0, Lio/grpc/f1/w1$w;->a:Lio/grpc/f1/q;

    iget-object v1, p0, Lio/grpc/f1/w1;->a:Lio/grpc/r0;

    invoke-virtual {v1, p1}, Lio/grpc/r0;->j(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/grpc/f1/f2;->m(Ljava/io/InputStream;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Lio/grpc/f1/w1$m;

    invoke-direct {v0, p0, p1}, Lio/grpc/f1/w1$m;-><init>(Lio/grpc/f1/w1;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lio/grpc/f1/w1;->Y(Lio/grpc/f1/w1$o;)V

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/f1/w1$b;

    invoke-direct {v0, p0, p1}, Lio/grpc/f1/w1$b;-><init>(Lio/grpc/f1/w1;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/grpc/f1/w1;->Y(Lio/grpc/f1/w1$o;)V

    return-void
.end method

.method final h0(Lio/grpc/q0;I)Lio/grpc/q0;
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/q0;

    invoke-direct {v0}, Lio/grpc/q0;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lio/grpc/q0;->k(Lio/grpc/q0;)V

    if-lez p2, :cond_0

    .line 3
    sget-object p1, Lio/grpc/f1/w1;->w:Lio/grpc/q0$f;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lio/grpc/q0;->n(Lio/grpc/q0$f;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public i(Lio/grpc/f1/u0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/f1/w1;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "closed"

    .line 2
    iget-object v2, p0, Lio/grpc/f1/w1;->o:Lio/grpc/f1/u0;

    invoke-virtual {p1, v1, v2}, Lio/grpc/f1/u0;->b(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/f1/u0;

    .line 3
    iget-object v1, p0, Lio/grpc/f1/w1;->p:Lio/grpc/f1/w1$u;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lio/grpc/f1/w1$u;->f:Lio/grpc/f1/w1$w;

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lio/grpc/f1/u0;

    invoke-direct {v0}, Lio/grpc/f1/u0;-><init>()V

    .line 7
    iget-object v1, v1, Lio/grpc/f1/w1$u;->f:Lio/grpc/f1/w1$w;

    iget-object v1, v1, Lio/grpc/f1/w1$w;->a:Lio/grpc/f1/q;

    invoke-interface {v1, v0}, Lio/grpc/f1/q;->i(Lio/grpc/f1/u0;)V

    const-string v1, "committed"

    .line 8
    invoke-virtual {p1, v1, v0}, Lio/grpc/f1/u0;->b(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/f1/u0;

    goto :goto_1

    .line 9
    :cond_0
    new-instance v0, Lio/grpc/f1/u0;

    invoke-direct {v0}, Lio/grpc/f1/u0;-><init>()V

    .line 10
    iget-object v1, v1, Lio/grpc/f1/w1$u;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/f1/w1$w;

    .line 11
    new-instance v3, Lio/grpc/f1/u0;

    invoke-direct {v3}, Lio/grpc/f1/u0;-><init>()V

    .line 12
    iget-object v2, v2, Lio/grpc/f1/w1$w;->a:Lio/grpc/f1/q;

    invoke-interface {v2, v3}, Lio/grpc/f1/q;->i(Lio/grpc/f1/u0;)V

    .line 13
    invoke-virtual {v0, v3}, Lio/grpc/f1/u0;->a(Ljava/lang/Object;)Lio/grpc/f1/u0;

    goto :goto_0

    :cond_1
    const-string v1, "open"

    .line 14
    invoke-virtual {p1, v1, v0}, Lio/grpc/f1/u0;->b(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/f1/u0;

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final j()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/f1/w1$i;

    invoke-direct {v0, p0}, Lio/grpc/f1/w1$i;-><init>(Lio/grpc/f1/w1;)V

    invoke-direct {p0, v0}, Lio/grpc/f1/w1;->Y(Lio/grpc/f1/w1$o;)V

    return-void
.end method

.method public final k(Lio/grpc/t;)V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/f1/w1$e;

    invoke-direct {v0, p0, p1}, Lio/grpc/f1/w1$e;-><init>(Lio/grpc/f1/w1;Lio/grpc/t;)V

    invoke-direct {p0, v0}, Lio/grpc/f1/w1;->Y(Lio/grpc/f1/w1$o;)V

    return-void
.end method

.method public final l(Lio/grpc/f1/r;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lio/grpc/f1/w1;->s:Lio/grpc/f1/r;

    .line 2
    invoke-virtual {p0}, Lio/grpc/f1/w1;->e0()Lio/grpc/b1;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lio/grpc/f1/w1;->c(Lio/grpc/b1;)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lio/grpc/f1/w1;->j:Ljava/lang/Object;

    monitor-enter p1

    .line 5
    :try_start_0
    iget-object v0, p0, Lio/grpc/f1/w1;->p:Lio/grpc/f1/w1$u;

    iget-object v0, v0, Lio/grpc/f1/w1$u;->b:Ljava/util/List;

    new-instance v1, Lio/grpc/f1/w1$n;

    invoke-direct {v1, p0}, Lio/grpc/f1/w1$n;-><init>(Lio/grpc/f1/w1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p1}, Lio/grpc/f1/w1;->X(I)Lio/grpc/f1/w1$w;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lio/grpc/f1/w1;->h:Lio/grpc/f1/q0;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const/4 p1, 0x1

    :cond_1
    const-string v1, "hedgingPolicy has been initialized unexpectedly"

    invoke-static {p1, v1}, Lcom/google/common/base/m;->v(ZLjava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lio/grpc/f1/w1;->f:Lio/grpc/f1/q0$a;

    invoke-interface {p1}, Lio/grpc/f1/q0$a;->get()Lio/grpc/f1/q0;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/f1/w1;->h:Lio/grpc/f1/q0;

    .line 10
    sget-object v1, Lio/grpc/f1/q0;->d:Lio/grpc/f1/q0;

    invoke-virtual {v1, p1}, Lio/grpc/f1/q0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 11
    iput-boolean v2, p0, Lio/grpc/f1/w1;->i:Z

    .line 12
    sget-object p1, Lio/grpc/f1/x1;->f:Lio/grpc/f1/x1;

    iput-object p1, p0, Lio/grpc/f1/w1;->g:Lio/grpc/f1/x1;

    const/4 p1, 0x0

    .line 13
    iget-object v1, p0, Lio/grpc/f1/w1;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 14
    :try_start_1
    iget-object v2, p0, Lio/grpc/f1/w1;->p:Lio/grpc/f1/w1$u;

    invoke-virtual {v2, v0}, Lio/grpc/f1/w1$u;->a(Lio/grpc/f1/w1$w;)Lio/grpc/f1/w1$u;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/f1/w1;->p:Lio/grpc/f1/w1$u;

    .line 15
    iget-object v2, p0, Lio/grpc/f1/w1;->p:Lio/grpc/f1/w1$u;

    invoke-direct {p0, v2}, Lio/grpc/f1/w1;->b0(Lio/grpc/f1/w1$u;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lio/grpc/f1/w1;->n:Lio/grpc/f1/w1$x;

    if-eqz v2, :cond_2

    .line 16
    invoke-virtual {v2}, Lio/grpc/f1/w1$x;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 17
    :cond_2
    new-instance p1, Lio/grpc/f1/w1$r;

    iget-object v2, p0, Lio/grpc/f1/w1;->j:Ljava/lang/Object;

    invoke-direct {p1, v2}, Lio/grpc/f1/w1$r;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/grpc/f1/w1;->u:Lio/grpc/f1/w1$r;

    .line 18
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_4

    .line 19
    iget-object v1, p0, Lio/grpc/f1/w1;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lio/grpc/f1/w1$s;

    invoke-direct {v2, p0, p1}, Lio/grpc/f1/w1$s;-><init>(Lio/grpc/f1/w1;Lio/grpc/f1/w1$r;)V

    iget-object v3, p0, Lio/grpc/f1/w1;->h:Lio/grpc/f1/q0;

    iget-wide v3, v3, Lio/grpc/f1/q0;->b:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 20
    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 21
    invoke-virtual {p1, v1}, Lio/grpc/f1/w1$r;->c(Ljava/util/concurrent/Future;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 22
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 23
    :cond_4
    :goto_0
    invoke-direct {p0, v0}, Lio/grpc/f1/w1;->Z(Lio/grpc/f1/w1$w;)V

    return-void

    :catchall_1
    move-exception v0

    .line 24
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final m(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RetriableStream.writeMessage() should not be called directly"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final o(Z)V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/f1/w1$h;

    invoke-direct {v0, p0, p1}, Lio/grpc/f1/w1$h;-><init>(Lio/grpc/f1/w1;Z)V

    invoke-direct {p0, v0}, Lio/grpc/f1/w1;->Y(Lio/grpc/f1/w1$o;)V

    return-void
.end method
