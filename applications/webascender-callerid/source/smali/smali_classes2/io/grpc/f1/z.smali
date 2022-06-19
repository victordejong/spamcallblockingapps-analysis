.class final Lio/grpc/f1/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/f1/g1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/f1/z$f;
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/f0;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Lio/grpc/d1;

.field private e:Ljava/lang/Runnable;

.field private f:Ljava/lang/Runnable;

.field private g:Ljava/lang/Runnable;

.field private h:Lio/grpc/f1/g1$a;

.field private i:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lio/grpc/f1/z$f;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lio/grpc/b1;

.field private k:Lio/grpc/l0$i;

.field private l:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lio/grpc/d1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lio/grpc/f1/z;

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lio/grpc/f0;->a(Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/f0;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/f1/z;->a:Lio/grpc/f0;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/grpc/f1/z;->b:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/grpc/f1/z;->i:Ljava/util/Collection;

    .line 6
    iput-object p1, p0, Lio/grpc/f1/z;->c:Ljava/util/concurrent/Executor;

    .line 7
    iput-object p2, p0, Lio/grpc/f1/z;->d:Lio/grpc/d1;

    return-void
.end method

.method static synthetic a(Lio/grpc/f1/z;)Lio/grpc/f1/g1$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/z;->h:Lio/grpc/f1/g1$a;

    return-object p0
.end method

.method static synthetic h(Lio/grpc/f1/z;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/z;->b:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic i(Lio/grpc/f1/z;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/z;->g:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic j(Lio/grpc/f1/z;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/z;->g:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic k(Lio/grpc/f1/z;)Ljava/util/Collection;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/z;->i:Ljava/util/Collection;

    return-object p0
.end method

.method static synthetic l(Lio/grpc/f1/z;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/z;->f:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic m(Lio/grpc/f1/z;)Lio/grpc/d1;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/z;->d:Lio/grpc/d1;

    return-object p0
.end method

.method static synthetic n(Lio/grpc/f1/z;)Lio/grpc/b1;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/z;->j:Lio/grpc/b1;

    return-object p0
.end method

.method private o(Lio/grpc/l0$f;)Lio/grpc/f1/z$f;
    .locals 2

    .line 1
    new-instance v0, Lio/grpc/f1/z$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/grpc/f1/z$f;-><init>(Lio/grpc/f1/z;Lio/grpc/l0$f;Lio/grpc/f1/z$a;)V

    .line 2
    iget-object p1, p0, Lio/grpc/f1/z;->i:Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Lio/grpc/f1/z;->p()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lio/grpc/f1/z;->d:Lio/grpc/d1;

    iget-object v1, p0, Lio/grpc/f1/z;->e:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Lio/grpc/d1;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final b(Lio/grpc/b1;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/f1/z;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/f1/z;->j:Lio/grpc/b1;

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/f1/z;->j:Lio/grpc/b1;

    .line 5
    iget-object v1, p0, Lio/grpc/f1/z;->d:Lio/grpc/d1;

    new-instance v2, Lio/grpc/f1/z$d;

    invoke-direct {v2, p0, p1}, Lio/grpc/f1/z$d;-><init>(Lio/grpc/f1/z;Lio/grpc/b1;)V

    invoke-virtual {v1, v2}, Lio/grpc/d1;->b(Ljava/lang/Runnable;)V

    .line 6
    invoke-virtual {p0}, Lio/grpc/f1/z;->q()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/grpc/f1/z;->g:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 7
    iget-object v1, p0, Lio/grpc/f1/z;->d:Lio/grpc/d1;

    invoke-virtual {v1, p1}, Lio/grpc/d1;->b(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lio/grpc/f1/z;->g:Ljava/lang/Runnable;

    .line 9
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, p0, Lio/grpc/f1/z;->d:Lio/grpc/d1;

    invoke-virtual {p1}, Lio/grpc/d1;->a()V

    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final c(Lio/grpc/b1;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lio/grpc/f1/z;->b(Lio/grpc/b1;)V

    .line 2
    iget-object v0, p0, Lio/grpc/f1/z;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/grpc/f1/z;->i:Ljava/util/Collection;

    .line 4
    iget-object v2, p0, Lio/grpc/f1/z;->g:Ljava/lang/Runnable;

    const/4 v3, 0x0

    .line 5
    iput-object v3, p0, Lio/grpc/f1/z;->g:Ljava/lang/Runnable;

    .line 6
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/f1/z;->i:Ljava/util/Collection;

    .line 8
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 9
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/f1/z$f;

    .line 10
    invoke-virtual {v1, p1}, Lio/grpc/f1/z$f;->c(Lio/grpc/b1;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Lio/grpc/f1/z;->d:Lio/grpc/d1;

    invoke-virtual {p1, v2}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final d(Lio/grpc/f1/g1$a;)Ljava/lang/Runnable;
    .locals 1

    .line 1
    iput-object p1, p0, Lio/grpc/f1/z;->h:Lio/grpc/f1/g1$a;

    .line 2
    new-instance v0, Lio/grpc/f1/z$a;

    invoke-direct {v0, p0, p1}, Lio/grpc/f1/z$a;-><init>(Lio/grpc/f1/z;Lio/grpc/f1/g1$a;)V

    iput-object v0, p0, Lio/grpc/f1/z;->e:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Lio/grpc/f1/z$b;

    invoke-direct {v0, p0, p1}, Lio/grpc/f1/z$b;-><init>(Lio/grpc/f1/z;Lio/grpc/f1/g1$a;)V

    iput-object v0, p0, Lio/grpc/f1/z;->f:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Lio/grpc/f1/z$c;

    invoke-direct {v0, p0, p1}, Lio/grpc/f1/z$c;-><init>(Lio/grpc/f1/z;Lio/grpc/f1/g1$a;)V

    iput-object v0, p0, Lio/grpc/f1/z;->g:Ljava/lang/Runnable;

    const/4 p1, 0x0

    return-object p1
.end method

.method public e()Lio/grpc/f0;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/z;->a:Lio/grpc/f0;

    return-object v0
.end method

.method public final g(Lio/grpc/r0;Lio/grpc/q0;Lio/grpc/d;)Lio/grpc/f1/q;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/r0<",
            "**>;",
            "Lio/grpc/q0;",
            "Lio/grpc/d;",
            ")",
            "Lio/grpc/f1/q;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lio/grpc/f1/q1;

    invoke-direct {v0, p1, p2, p3}, Lio/grpc/f1/q1;-><init>(Lio/grpc/r0;Lio/grpc/q0;Lio/grpc/d;)V

    const/4 p1, 0x0

    const-wide/16 v1, -0x1

    .line 2
    :goto_0
    iget-object p2, p0, Lio/grpc/f1/z;->b:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v3, p0, Lio/grpc/f1/z;->j:Lio/grpc/b1;

    if-eqz v3, :cond_0

    .line 4
    new-instance p1, Lio/grpc/f1/e0;

    iget-object p3, p0, Lio/grpc/f1/z;->j:Lio/grpc/b1;

    invoke-direct {p1, p3}, Lio/grpc/f1/e0;-><init>(Lio/grpc/b1;)V

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :goto_1
    iget-object p2, p0, Lio/grpc/f1/z;->d:Lio/grpc/d1;

    invoke-virtual {p2}, Lio/grpc/d1;->a()V

    return-object p1

    .line 6
    :cond_0
    :try_start_2
    iget-object v3, p0, Lio/grpc/f1/z;->k:Lio/grpc/l0$i;

    if-nez v3, :cond_1

    .line 7
    invoke-direct {p0, v0}, Lio/grpc/f1/z;->o(Lio/grpc/l0$f;)Lio/grpc/f1/z$f;

    move-result-object p1

    monitor-exit p2

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 8
    iget-wide v4, p0, Lio/grpc/f1/z;->l:J

    cmp-long p1, v1, v4

    if-nez p1, :cond_2

    .line 9
    invoke-direct {p0, v0}, Lio/grpc/f1/z;->o(Lio/grpc/l0$f;)Lio/grpc/f1/z$f;

    move-result-object p1

    monitor-exit p2

    goto :goto_1

    .line 10
    :cond_2
    iget-wide v1, p0, Lio/grpc/f1/z;->l:J

    .line 11
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    :try_start_3
    invoke-virtual {v3, v0}, Lio/grpc/l0$i;->a(Lio/grpc/l0$f;)Lio/grpc/l0$e;

    move-result-object p1

    .line 13
    invoke-virtual {p3}, Lio/grpc/d;->j()Z

    move-result p2

    .line 14
    invoke-static {p1, p2}, Lio/grpc/f1/o0;->g(Lio/grpc/l0$e;Z)Lio/grpc/f1/s;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {v0}, Lio/grpc/l0$f;->c()Lio/grpc/r0;

    move-result-object p2

    invoke-virtual {v0}, Lio/grpc/l0$f;->b()Lio/grpc/q0;

    move-result-object p3

    invoke-virtual {v0}, Lio/grpc/l0$f;->a()Lio/grpc/d;

    move-result-object v0

    .line 16
    invoke-interface {p1, p2, p3, v0}, Lio/grpc/f1/s;->g(Lio/grpc/r0;Lio/grpc/q0;Lio/grpc/d;)Lio/grpc/f1/q;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :cond_3
    move-object p1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 17
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    .line 18
    iget-object p2, p0, Lio/grpc/f1/z;->d:Lio/grpc/d1;

    invoke-virtual {p2}, Lio/grpc/d1;->a()V

    throw p1
.end method

.method final p()I
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/z;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/f1/z;->i:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final q()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/z;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/f1/z;->i:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final r(Lio/grpc/l0$i;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/grpc/f1/z;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lio/grpc/f1/z;->k:Lio/grpc/l0$i;

    .line 3
    iget-wide v1, p0, Lio/grpc/f1/z;->l:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/grpc/f1/z;->l:J

    if-eqz p1, :cond_7

    .line 4
    invoke-virtual {p0}, Lio/grpc/f1/z;->q()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 5
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/grpc/f1/z;->i:Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/f1/z$f;

    .line 9
    invoke-static {v2}, Lio/grpc/f1/z$f;->t(Lio/grpc/f1/z$f;)Lio/grpc/l0$f;

    move-result-object v3

    invoke-virtual {p1, v3}, Lio/grpc/l0$i;->a(Lio/grpc/l0$f;)Lio/grpc/l0$e;

    move-result-object v3

    .line 10
    invoke-static {v2}, Lio/grpc/f1/z$f;->t(Lio/grpc/f1/z$f;)Lio/grpc/l0$f;

    move-result-object v4

    invoke-virtual {v4}, Lio/grpc/l0$f;->a()Lio/grpc/d;

    move-result-object v4

    .line 11
    invoke-virtual {v4}, Lio/grpc/d;->j()Z

    move-result v5

    .line 12
    invoke-static {v3, v5}, Lio/grpc/f1/o0;->g(Lio/grpc/l0$e;Z)Lio/grpc/f1/s;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 13
    iget-object v5, p0, Lio/grpc/f1/z;->c:Ljava/util/concurrent/Executor;

    .line 14
    invoke-virtual {v4}, Lio/grpc/d;->e()Ljava/util/concurrent/Executor;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 15
    invoke-virtual {v4}, Lio/grpc/d;->e()Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 16
    :cond_2
    new-instance v4, Lio/grpc/f1/z$e;

    invoke-direct {v4, p0, v2, v3}, Lio/grpc/f1/z$e;-><init>(Lio/grpc/f1/z;Lio/grpc/f1/z$f;Lio/grpc/f1/s;)V

    invoke-interface {v5, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 17
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_3
    iget-object p1, p0, Lio/grpc/f1/z;->b:Ljava/lang/Object;

    monitor-enter p1

    .line 19
    :try_start_1
    invoke-virtual {p0}, Lio/grpc/f1/z;->q()Z

    move-result v1

    if-nez v1, :cond_4

    .line 20
    monitor-exit p1

    return-void

    .line 21
    :cond_4
    iget-object v1, p0, Lio/grpc/f1/z;->i:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 22
    iget-object v0, p0, Lio/grpc/f1/z;->i:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 23
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/grpc/f1/z;->i:Ljava/util/Collection;

    .line 24
    :cond_5
    invoke-virtual {p0}, Lio/grpc/f1/z;->q()Z

    move-result v0

    if-nez v0, :cond_6

    .line 25
    iget-object v0, p0, Lio/grpc/f1/z;->d:Lio/grpc/d1;

    iget-object v1, p0, Lio/grpc/f1/z;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lio/grpc/d1;->b(Ljava/lang/Runnable;)V

    .line 26
    iget-object v0, p0, Lio/grpc/f1/z;->j:Lio/grpc/b1;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lio/grpc/f1/z;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    .line 27
    iget-object v1, p0, Lio/grpc/f1/z;->d:Lio/grpc/d1;

    invoke-virtual {v1, v0}, Lio/grpc/d1;->b(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lio/grpc/f1/z;->g:Ljava/lang/Runnable;

    .line 29
    :cond_6
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    iget-object p1, p0, Lio/grpc/f1/z;->d:Lio/grpc/d1;

    invoke-virtual {p1}, Lio/grpc/d1;->a()V

    return-void

    :catchall_0
    move-exception v0

    .line 31
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 32
    :cond_7
    :goto_1
    :try_start_3
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    .line 33
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
