.class public final Lp3/a/n1/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/t1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/n1/d0$e;
    }
.end annotation


# instance fields
.field public final a:Lp3/a/e0;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Lp3/a/k1;

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:Lp3/a/n1/t1$a;

.field public i:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lp3/a/n1/d0$e;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lp3/a/g1;

.field public k:Lp3/a/i0$i;

.field public l:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lp3/a/k1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lp3/a/n1/d0;

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lp3/a/e0;->a(Ljava/lang/Class;Ljava/lang/String;)Lp3/a/e0;

    move-result-object v0

    iput-object v0, p0, Lp3/a/n1/d0;->a:Lp3/a/e0;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lp3/a/n1/d0;->b:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lp3/a/n1/d0;->i:Ljava/util/Collection;

    .line 6
    iput-object p1, p0, Lp3/a/n1/d0;->c:Ljava/util/concurrent/Executor;

    .line 7
    iput-object p2, p0, Lp3/a/n1/d0;->d:Lp3/a/k1;

    return-void
.end method


# virtual methods
.method public final a(Lp3/a/i0$f;)Lp3/a/n1/d0$e;
    .locals 2

    .line 1
    new-instance v0, Lp3/a/n1/d0$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lp3/a/n1/d0$e;-><init>(Lp3/a/n1/d0;Lp3/a/i0$f;Lp3/a/n1/d0$a;)V

    .line 2
    iget-object p1, p0, Lp3/a/n1/d0;->i:Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lp3/a/n1/d0;->b:Ljava/lang/Object;

    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v1, p0, Lp3/a/n1/d0;->i:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    if-ne v1, p1, :cond_0

    .line 5
    iget-object p1, p0, Lp3/a/n1/d0;->d:Lp3/a/k1;

    iget-object v1, p0, Lp3/a/n1/d0;->e:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Lp3/a/k1;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()Lp3/a/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/d0;->a:Lp3/a/e0;

    return-object v0
.end method

.method public final d(Lp3/a/n1/t1$a;)Ljava/lang/Runnable;
    .locals 1

    .line 1
    iput-object p1, p0, Lp3/a/n1/d0;->h:Lp3/a/n1/t1$a;

    .line 2
    new-instance v0, Lp3/a/n1/d0$a;

    invoke-direct {v0, p0, p1}, Lp3/a/n1/d0$a;-><init>(Lp3/a/n1/d0;Lp3/a/n1/t1$a;)V

    iput-object v0, p0, Lp3/a/n1/d0;->e:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Lp3/a/n1/d0$b;

    invoke-direct {v0, p0, p1}, Lp3/a/n1/d0$b;-><init>(Lp3/a/n1/d0;Lp3/a/n1/t1$a;)V

    iput-object v0, p0, Lp3/a/n1/d0;->f:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Lp3/a/n1/d0$c;

    invoke-direct {v0, p0, p1}, Lp3/a/n1/d0$c;-><init>(Lp3/a/n1/d0;Lp3/a/n1/t1$a;)V

    iput-object v0, p0, Lp3/a/n1/d0;->g:Ljava/lang/Runnable;

    const/4 p1, 0x0

    return-object p1
.end method

.method public final e(Lp3/a/p0;Lp3/a/o0;Lp3/a/c;)Lp3/a/n1/s;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/p0<",
            "**>;",
            "Lp3/a/o0;",
            "Lp3/a/c;",
            ")",
            "Lp3/a/n1/s;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lp3/a/n1/c2;

    invoke-direct {v0, p1, p2, p3}, Lp3/a/n1/c2;-><init>(Lp3/a/p0;Lp3/a/o0;Lp3/a/c;)V

    const/4 p1, 0x0

    const-wide/16 v1, -0x1

    .line 2
    :goto_0
    iget-object p2, p0, Lp3/a/n1/d0;->b:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v3, p0, Lp3/a/n1/d0;->j:Lp3/a/g1;

    if-eqz v3, :cond_0

    .line 4
    new-instance p1, Lp3/a/n1/h0;

    invoke-direct {p1, v3}, Lp3/a/n1/h0;-><init>(Lp3/a/g1;)V

    monitor-exit p2

    goto :goto_1

    .line 5
    :cond_0
    iget-object v3, p0, Lp3/a/n1/d0;->k:Lp3/a/i0$i;

    if-nez v3, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Lp3/a/n1/d0;->a(Lp3/a/i0$f;)Lp3/a/n1/d0$e;

    move-result-object p1

    monitor-exit p2

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 7
    iget-wide v4, p0, Lp3/a/n1/d0;->l:J

    cmp-long p1, v1, v4

    if-nez p1, :cond_2

    .line 8
    invoke-virtual {p0, v0}, Lp3/a/n1/d0;->a(Lp3/a/i0$f;)Lp3/a/n1/d0$e;

    move-result-object p1

    monitor-exit p2

    goto :goto_1

    .line 9
    :cond_2
    iget-wide v1, p0, Lp3/a/n1/d0;->l:J

    .line 10
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    invoke-virtual {v3, v0}, Lp3/a/i0$i;->a(Lp3/a/i0$f;)Lp3/a/i0$e;

    move-result-object p1

    .line 12
    invoke-virtual {p3}, Lp3/a/c;->b()Z

    move-result p2

    .line 13
    invoke-static {p1, p2}, Lp3/a/n1/r0;->f(Lp3/a/i0$e;Z)Lp3/a/n1/u;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 14
    iget-object p2, v0, Lp3/a/n1/c2;->c:Lp3/a/p0;

    .line 15
    iget-object p3, v0, Lp3/a/n1/c2;->b:Lp3/a/o0;

    .line 16
    iget-object v0, v0, Lp3/a/n1/c2;->a:Lp3/a/c;

    .line 17
    invoke-interface {p1, p2, p3, v0}, Lp3/a/n1/u;->e(Lp3/a/p0;Lp3/a/o0;Lp3/a/c;)Lp3/a/n1/s;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 18
    :goto_1
    iget-object p2, p0, Lp3/a/n1/d0;->d:Lp3/a/k1;

    invoke-virtual {p2}, Lp3/a/k1;->a()V

    return-object p1

    :cond_3
    move-object p1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 19
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 20
    iget-object p2, p0, Lp3/a/n1/d0;->d:Lp3/a/k1;

    invoke-virtual {p2}, Lp3/a/k1;->a()V

    throw p1
.end method

.method public final f(Lp3/a/g1;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lp3/a/n1/d0;->g(Lp3/a/g1;)V

    .line 2
    iget-object v0, p0, Lp3/a/n1/d0;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lp3/a/n1/d0;->i:Ljava/util/Collection;

    .line 4
    iget-object v2, p0, Lp3/a/n1/d0;->g:Ljava/lang/Runnable;

    const/4 v3, 0x0

    .line 5
    iput-object v3, p0, Lp3/a/n1/d0;->g:Ljava/lang/Runnable;

    .line 6
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lp3/a/n1/d0;->i:Ljava/util/Collection;

    .line 8
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    .line 9
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp3/a/n1/d0$e;

    .line 10
    new-instance v3, Lp3/a/n1/h0;

    sget-object v4, Lp3/a/n1/t$a;->b:Lp3/a/n1/t$a;

    invoke-direct {v3, p1, v4}, Lp3/a/n1/h0;-><init>(Lp3/a/g1;Lp3/a/n1/t$a;)V

    invoke-virtual {v1, v3}, Lp3/a/n1/e0;->s(Lp3/a/n1/s;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 11
    check-cast v1, Lp3/a/n1/e0$i;

    .line 12
    iget-object v1, v1, Lp3/a/n1/e0$i;->a:Lp3/a/n1/e0;

    .line 13
    invoke-virtual {v1}, Lp3/a/n1/e0;->p()V

    goto :goto_0

    .line 14
    :cond_2
    iget-object p1, p0, Lp3/a/n1/d0;->d:Lp3/a/k1;

    .line 15
    iget-object v0, p1, Lp3/a/k1;->b:Ljava/util/Queue;

    const-string v1, "runnable is null"

    invoke-static {v2, v1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p1}, Lp3/a/k1;->a()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final g(Lp3/a/g1;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/n1/d0;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lp3/a/n1/d0;->j:Lp3/a/g1;

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lp3/a/n1/d0;->j:Lp3/a/g1;

    .line 5
    iget-object v1, p0, Lp3/a/n1/d0;->d:Lp3/a/k1;

    new-instance v2, Lp3/a/n1/d0$d;

    invoke-direct {v2, p0, p1}, Lp3/a/n1/d0$d;-><init>(Lp3/a/n1/d0;Lp3/a/g1;)V

    .line 6
    iget-object p1, v1, Lp3/a/k1;->b:Ljava/util/Queue;

    const-string v1, "runnable is null"

    invoke-static {v2, v1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0}, Lp3/a/n1/d0;->h()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lp3/a/n1/d0;->g:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 8
    iget-object v1, p0, Lp3/a/n1/d0;->d:Lp3/a/k1;

    invoke-virtual {v1, p1}, Lp3/a/k1;->b(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lp3/a/n1/d0;->g:Ljava/lang/Runnable;

    .line 10
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object p1, p0, Lp3/a/n1/d0;->d:Lp3/a/k1;

    invoke-virtual {p1}, Lp3/a/k1;->a()V

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

.method public final h()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/d0;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lp3/a/n1/d0;->i:Ljava/util/Collection;

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

.method public final i(Lp3/a/i0$i;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lp3/a/n1/d0;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lp3/a/n1/d0;->k:Lp3/a/i0$i;

    .line 3
    iget-wide v1, p0, Lp3/a/n1/d0;->l:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lp3/a/n1/d0;->l:J

    if-eqz p1, :cond_8

    .line 4
    invoke-virtual {p0}, Lp3/a/n1/d0;->h()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 5
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lp3/a/n1/d0;->i:Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

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

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp3/a/n1/d0$e;

    .line 9
    iget-object v3, v2, Lp3/a/n1/d0$e;->j:Lp3/a/i0$f;

    .line 10
    invoke-virtual {p1, v3}, Lp3/a/i0$i;->a(Lp3/a/i0$f;)Lp3/a/i0$e;

    move-result-object v3

    .line 11
    iget-object v4, v2, Lp3/a/n1/d0$e;->j:Lp3/a/i0$f;

    .line 12
    check-cast v4, Lp3/a/n1/c2;

    .line 13
    iget-object v4, v4, Lp3/a/n1/c2;->a:Lp3/a/c;

    .line 14
    invoke-virtual {v4}, Lp3/a/c;->b()Z

    move-result v5

    .line 15
    invoke-static {v3, v5}, Lp3/a/n1/r0;->f(Lp3/a/i0$e;Z)Lp3/a/n1/u;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 16
    iget-object v5, p0, Lp3/a/n1/d0;->c:Ljava/util/concurrent/Executor;

    .line 17
    iget-object v4, v4, Lp3/a/c;->b:Ljava/util/concurrent/Executor;

    if-eqz v4, :cond_2

    move-object v5, v4

    .line 18
    :cond_2
    iget-object v4, v2, Lp3/a/n1/d0$e;->k:Lp3/a/q;

    invoke-virtual {v4}, Lp3/a/q;->d()Lp3/a/q;

    move-result-object v4

    .line 19
    :try_start_1
    iget-object v6, v2, Lp3/a/n1/d0$e;->j:Lp3/a/i0$f;

    .line 20
    move-object v7, v6

    check-cast v7, Lp3/a/n1/c2;

    .line 21
    iget-object v7, v7, Lp3/a/n1/c2;->c:Lp3/a/p0;

    .line 22
    move-object v8, v6

    check-cast v8, Lp3/a/n1/c2;

    .line 23
    iget-object v8, v8, Lp3/a/n1/c2;->b:Lp3/a/o0;

    .line 24
    check-cast v6, Lp3/a/n1/c2;

    .line 25
    iget-object v6, v6, Lp3/a/n1/c2;->a:Lp3/a/c;

    .line 26
    invoke-interface {v3, v7, v8, v6}, Lp3/a/n1/u;->e(Lp3/a/p0;Lp3/a/o0;Lp3/a/c;)Lp3/a/n1/s;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    iget-object v6, v2, Lp3/a/n1/d0$e;->k:Lp3/a/q;

    invoke-virtual {v6, v4}, Lp3/a/q;->q(Lp3/a/q;)V

    .line 28
    invoke-virtual {v2, v3}, Lp3/a/n1/e0;->s(Lp3/a/n1/s;)Ljava/lang/Runnable;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 29
    invoke-interface {v5, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 30
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 31
    iget-object v0, v2, Lp3/a/n1/d0$e;->k:Lp3/a/q;

    invoke-virtual {v0, v4}, Lp3/a/q;->q(Lp3/a/q;)V

    throw p1

    .line 32
    :cond_4
    iget-object p1, p0, Lp3/a/n1/d0;->b:Ljava/lang/Object;

    monitor-enter p1

    .line 33
    :try_start_2
    invoke-virtual {p0}, Lp3/a/n1/d0;->h()Z

    move-result v1

    if-nez v1, :cond_5

    .line 34
    monitor-exit p1

    return-void

    .line 35
    :cond_5
    iget-object v1, p0, Lp3/a/n1/d0;->i:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 36
    iget-object v0, p0, Lp3/a/n1/d0;->i:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 37
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lp3/a/n1/d0;->i:Ljava/util/Collection;

    .line 38
    :cond_6
    invoke-virtual {p0}, Lp3/a/n1/d0;->h()Z

    move-result v0

    if-nez v0, :cond_7

    .line 39
    iget-object v0, p0, Lp3/a/n1/d0;->d:Lp3/a/k1;

    iget-object v1, p0, Lp3/a/n1/d0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lp3/a/k1;->b(Ljava/lang/Runnable;)V

    .line 40
    iget-object v0, p0, Lp3/a/n1/d0;->j:Lp3/a/g1;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lp3/a/n1/d0;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 41
    iget-object v1, p0, Lp3/a/n1/d0;->d:Lp3/a/k1;

    .line 42
    iget-object v1, v1, Lp3/a/k1;->b:Ljava/util/Queue;

    const-string v2, "runnable is null"

    invoke-static {v0, v2}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lp3/a/n1/d0;->g:Ljava/lang/Runnable;

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 44
    :cond_7
    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 45
    iget-object p1, p0, Lp3/a/n1/d0;->d:Lp3/a/k1;

    invoke-virtual {p1}, Lp3/a/k1;->a()V

    return-void

    .line 46
    :goto_2
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 47
    :cond_8
    :goto_3
    :try_start_4
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p1

    .line 48
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method
