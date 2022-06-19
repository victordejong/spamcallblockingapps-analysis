.class public Le/i/b/y1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/i/b/y1$a;
    }
.end annotation


# instance fields
.field public final a:Le/i/b/q2/h;

.field public final b:Le/i/b/u1/a;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/util/concurrent/atomic/AtomicLong;

.field public final e:Le/i/b/u2/x;

.field public final f:Le/i/b/e2;

.field public final g:Le/i/b/u2/i;

.field public final h:Le/i/b/i2/c;

.field public final i:Le/i/b/i2/f;

.field public final j:Le/i/b/s1/a;

.field public final k:Le/i/b/z1/g0;

.field public final l:Le/i/b/q2/o;

.field public final m:Le/i/b/l2/a;


# direct methods
.method public constructor <init>(Le/i/b/u1/a;Le/i/b/u2/x;Le/i/b/e2;Le/i/b/u2/i;Le/i/b/i2/c;Le/i/b/i2/f;Le/i/b/s1/a;Le/i/b/z1/g0;Le/i/b/q2/o;Le/i/b/l2/a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Le/i/b/y1;

    invoke-static {v0}, Le/i/b/q2/i;->a(Ljava/lang/Class;)Le/i/b/q2/h;

    move-result-object v0

    iput-object v0, p0, Le/i/b/y1;->a:Le/i/b/q2/h;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le/i/b/y1;->c:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Le/i/b/y1;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    iput-object p1, p0, Le/i/b/y1;->b:Le/i/b/u1/a;

    .line 6
    iput-object p2, p0, Le/i/b/y1;->e:Le/i/b/u2/x;

    .line 7
    iput-object p3, p0, Le/i/b/y1;->f:Le/i/b/e2;

    .line 8
    iput-object p4, p0, Le/i/b/y1;->g:Le/i/b/u2/i;

    .line 9
    iput-object p5, p0, Le/i/b/y1;->h:Le/i/b/i2/c;

    .line 10
    iput-object p6, p0, Le/i/b/y1;->i:Le/i/b/i2/f;

    .line 11
    iput-object p7, p0, Le/i/b/y1;->j:Le/i/b/s1/a;

    .line 12
    iput-object p8, p0, Le/i/b/y1;->k:Le/i/b/z1/g0;

    .line 13
    iput-object p9, p0, Le/i/b/y1;->l:Le/i/b/q2/o;

    .line 14
    iput-object p10, p0, Le/i/b/y1;->m:Le/i/b/l2/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/criteo/publisher/model/AdUnit;)Le/i/b/u2/p;
    .locals 2

    .line 1
    iget-object v0, p0, Le/i/b/y1;->g:Le/i/b/u2/i;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/i/b/u2/i;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/i/b/u2/p;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public final b(Le/i/b/u2/p;)Le/i/b/u2/w;
    .locals 5

    .line 1
    iget-object v0, p0, Le/i/b/y1;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/i/b/y1;->b:Le/i/b/u1/a;

    .line 3
    iget-object v1, v1, Le/i/b/u1/a;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/i/b/u2/w;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Le/i/b/y1;->i(Le/i/b/u2/w;)Z

    move-result v2

    .line 5
    iget-object v3, p0, Le/i/b/y1;->f:Le/i/b/e2;

    invoke-virtual {v1, v3}, Le/i/b/u2/w;->d(Le/i/b/e2;)Z

    move-result v3

    if-nez v2, :cond_0

    .line 6
    iget-object v4, p0, Le/i/b/y1;->b:Le/i/b/u1/a;

    .line 7
    iget-object v4, v4, Le/i/b/u1/a;->a:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v4, p0, Le/i/b/y1;->j:Le/i/b/s1/a;

    invoke-interface {v4, p1, v1}, Le/i/b/s1/a;->b(Le/i/b/u2/p;Le/i/b/u2/w;)V

    :cond_0
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    .line 9
    monitor-exit v0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    .line 10
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;Le/i/b/x1;)V
    .locals 9

    if-nez p1, :cond_0

    .line 1
    invoke-interface {p3}, Le/i/b/x1;->a()V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/i/b/y1;->e:Le/i/b/u2/x;

    .line 3
    iget-object v0, v0, Le/i/b/u2/x;->b:Le/i/b/u2/d0;

    .line 4
    invoke-virtual {v0}, Le/i/b/u2/d0;->i()Ljava/lang/Boolean;

    move-result-object v0

    .line 5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    invoke-static {v0, v1}, Le/i/b/s2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7
    invoke-virtual {p0}, Le/i/b/y1;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {p3}, Le/i/b/x1;->a()V

    goto/16 :goto_2

    .line 9
    :cond_1
    invoke-virtual {p0, p1}, Le/i/b/y1;->a(Lcom/criteo/publisher/model/AdUnit;)Le/i/b/u2/p;

    move-result-object p1

    if-nez p1, :cond_2

    .line 10
    invoke-interface {p3}, Le/i/b/x1;->a()V

    goto/16 :goto_2

    .line 11
    :cond_2
    iget-object v0, p0, Le/i/b/y1;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_0
    invoke-virtual {p0, p1}, Le/i/b/y1;->e(Le/i/b/u2/p;)V

    .line 13
    invoke-virtual {p0, p1}, Le/i/b/y1;->h(Le/i/b/u2/p;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {p0, p1}, Le/i/b/y1;->b(Le/i/b/u2/p;)Le/i/b/u2/w;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 15
    invoke-interface {p3, p1}, Le/i/b/x1;->a(Le/i/b/u2/w;)V

    goto :goto_0

    .line 16
    :cond_3
    invoke-interface {p3}, Le/i/b/x1;->a()V

    goto :goto_0

    .line 17
    :cond_4
    iget-object v7, p0, Le/i/b/y1;->i:Le/i/b/i2/f;

    new-instance v8, Le/i/b/b3;

    iget-object v3, p0, Le/i/b/y1;->j:Le/i/b/s1/a;

    iget-object v6, p0, Le/i/b/y1;->m:Le/i/b/l2/a;

    move-object v1, v8

    move-object v2, p3

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Le/i/b/b3;-><init>(Le/i/b/x1;Le/i/b/s1/a;Le/i/b/y1;Le/i/b/u2/p;Le/i/b/l2/a;)V

    invoke-virtual {v7, p1, p2, v8}, Le/i/b/i2/f;->a(Le/i/b/u2/p;Lcom/criteo/publisher/context/ContextData;Le/i/b/b3;)V

    .line 18
    :goto_0
    iget-object p1, p0, Le/i/b/y1;->k:Le/i/b/z1/g0;

    invoke-virtual {p1}, Le/i/b/z1/g0;->a()V

    .line 19
    iget-object p1, p0, Le/i/b/y1;->l:Le/i/b/q2/o;

    invoke-virtual {p1}, Le/i/b/q2/o;->a()V

    .line 20
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 21
    :cond_5
    invoke-virtual {p0}, Le/i/b/y1;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    goto :goto_1

    .line 22
    :cond_6
    invoke-virtual {p0, p1}, Le/i/b/y1;->a(Lcom/criteo/publisher/model/AdUnit;)Le/i/b/u2/p;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_1

    .line 23
    :cond_7
    iget-object v0, p0, Le/i/b/y1;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 24
    :try_start_1
    invoke-virtual {p0, p1}, Le/i/b/y1;->h(Le/i/b/u2/p;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 25
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Le/i/b/y1;->d(Ljava/util/List;Lcom/criteo/publisher/context/ContextData;)V

    .line 26
    :cond_8
    invoke-virtual {p0, p1}, Le/i/b/y1;->b(Le/i/b/u2/p;)Le/i/b/u2/w;

    move-result-object v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    if-eqz v1, :cond_9

    .line 27
    invoke-interface {p3, v1}, Le/i/b/x1;->a(Le/i/b/u2/w;)V

    goto :goto_2

    .line 28
    :cond_9
    invoke-interface {p3}, Le/i/b/x1;->a()V

    :goto_2
    return-void

    :catchall_1
    move-exception p1

    .line 29
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final d(Ljava/util/List;Lcom/criteo/publisher/context/ContextData;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/i/b/u2/p;",
            ">;",
            "Lcom/criteo/publisher/context/ContextData;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/i/b/y1;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/i/b/y1;->h:Le/i/b/i2/c;

    new-instance v7, Le/i/b/y1$a;

    invoke-direct {v7, p0}, Le/i/b/y1$a;-><init>(Le/i/b/y1;)V

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    iget-object p1, v0, Le/i/b/i2/c;->g:Ljava/lang/Object;

    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v1, v0, Le/i/b/i2/c;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 7
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    monitor-exit p1

    goto :goto_1

    .line 9
    :cond_1
    new-instance v9, Le/i/b/i2/d;

    iget-object v2, v0, Le/i/b/i2/c;->d:Le/i/b/i2/g;

    iget-object v3, v0, Le/i/b/i2/c;->a:Le/i/b/u2/r;

    iget-object v4, v0, Le/i/b/i2/c;->c:Le/i/b/e2;

    move-object v1, v9

    move-object v5, v8

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Le/i/b/i2/d;-><init>(Le/i/b/i2/g;Le/i/b/u2/r;Le/i/b/e2;Ljava/util/List;Lcom/criteo/publisher/context/ContextData;Le/i/b/c2;)V

    .line 10
    new-instance p2, Le/i/b/i2/b;

    invoke-direct {p2, v0, v9, v8}, Le/i/b/i2/b;-><init>(Le/i/b/i2/c;Le/i/b/i2/d;Ljava/util/List;)V

    .line 11
    new-instance v1, Ljava/util/concurrent/FutureTask;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/i/b/u2/p;

    .line 13
    iget-object v3, v0, Le/i/b/i2/c;->f:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    iget-object p1, v0, Le/i/b/i2/c;->e:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :goto_1
    iget-object p1, p0, Le/i/b/y1;->k:Le/i/b/z1/g0;

    invoke-virtual {p1}, Le/i/b/z1/g0;->a()V

    .line 17
    iget-object p1, p0, Le/i/b/y1;->l:Le/i/b/q2/o;

    invoke-virtual {p1}, Le/i/b/q2/o;->a()V

    return-void

    :catchall_0
    move-exception p1

    .line 18
    invoke-virtual {v0, v8}, Le/i/b/i2/c;->a(Ljava/util/List;)V

    .line 19
    throw p1

    :catchall_1
    move-exception p2

    .line 20
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p2
.end method

.method public final e(Le/i/b/u2/p;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/i/b/y1;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/i/b/y1;->b:Le/i/b/u1/a;

    .line 3
    iget-object v1, v1, Le/i/b/u1/a;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/i/b/u2/w;

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, p0, Le/i/b/y1;->f:Le/i/b/e2;

    invoke-virtual {v1, v2}, Le/i/b/u2/w;->d(Le/i/b/e2;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Le/i/b/y1;->b:Le/i/b/u1/a;

    .line 6
    iget-object v2, v2, Le/i/b/u1/a;->a:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v2, p0, Le/i/b/y1;->j:Le/i/b/s1/a;

    invoke-interface {v2, p1, v1}, Le/i/b/s1/a;->b(Le/i/b/u2/p;Le/i/b/u2/w;)V

    .line 8
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/i/b/u2/w;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/i/b/y1;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/i/b/u2/w;

    .line 3
    iget-object v2, p0, Le/i/b/y1;->b:Le/i/b/u1/a;

    invoke-virtual {v2, v1}, Le/i/b/u1/a;->b(Le/i/b/u2/w;)Le/i/b/u2/p;

    move-result-object v3

    invoke-virtual {v2, v3}, Le/i/b/u1/a;->a(Le/i/b/u2/p;)Le/i/b/u2/w;

    move-result-object v2

    .line 4
    invoke-virtual {p0, v2}, Le/i/b/y1;->i(Le/i/b/u2/w;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v1}, Le/i/b/u2/w;->n()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1}, Le/i/b/u2/w;->e()Ljava/lang/Double;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_2

    move-wide v5, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Le/i/b/u2/w;->e()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    :goto_1
    cmpl-double v2, v5, v3

    if-lez v2, :cond_3

    .line 7
    invoke-virtual {v1}, Le/i/b/u2/w;->k()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_4

    const/16 v2, 0x384

    .line 8
    invoke-virtual {v1, v2}, Le/i/b/u2/w;->c(I)V

    .line 9
    :cond_4
    iget-object v2, p0, Le/i/b/y1;->b:Le/i/b/u1/a;

    .line 10
    invoke-virtual {v2, v1}, Le/i/b/u1/a;->b(Le/i/b/u2/w;)Le/i/b/u2/p;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 11
    iget-object v2, v2, Le/i/b/u1/a;->a:Ljava/util/Map;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_5
    iget-object v2, p0, Le/i/b/y1;->j:Le/i/b/s1/a;

    invoke-interface {v2, v1}, Le/i/b/s1/a;->a(Le/i/b/u2/w;)V

    goto :goto_0

    .line 13
    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/i/b/y1;->e:Le/i/b/u2/x;

    .line 2
    iget-object v0, v0, Le/i/b/u2/x;->b:Le/i/b/u2/d0;

    .line 3
    invoke-virtual {v0}, Le/i/b/u2/d0;->h()Ljava/lang/Boolean;

    move-result-object v0

    .line 4
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    invoke-static {v0, v1}, Le/i/b/s2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final h(Le/i/b/u2/p;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/i/b/y1;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-object v2, p0, Le/i/b/y1;->f:Le/i/b/e2;

    invoke-interface {v2}, Le/i/b/e2;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v1

    .line 2
    :cond_1
    iget-object v0, p0, Le/i/b/y1;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Le/i/b/y1;->b:Le/i/b/u1/a;

    .line 4
    iget-object v1, v1, Le/i/b/u1/a;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/i/b/u2/w;

    .line 5
    invoke-virtual {p0, p1}, Le/i/b/y1;->i(Le/i/b/u2/w;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public i(Le/i/b/u2/w;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Le/i/b/u2/w;->k()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_2

    .line 2
    invoke-virtual {p1}, Le/i/b/u2/w;->e()Ljava/lang/Double;

    move-result-object v1

    const-wide/16 v3, 0x0

    if-nez v1, :cond_1

    move-wide v5, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Le/i/b/u2/w;->e()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    :goto_0
    cmpl-double v1, v5, v3

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    if-eqz v1, :cond_3

    .line 3
    iget-object v1, p0, Le/i/b/y1;->f:Le/i/b/e2;

    invoke-virtual {p1, v1}, Le/i/b/u2/w;->d(Le/i/b/e2;)Z

    move-result p1

    if-nez p1, :cond_3

    move v0, v2

    :cond_3
    return v0
.end method
