.class public abstract Ln3/m0/c0/t/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ln3/m0/c0/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/m0/c0/c;

    invoke-direct {v0}, Ln3/m0/c0/c;-><init>()V

    iput-object v0, p0, Ln3/m0/c0/t/d;->a:Ln3/m0/c0/c;

    return-void
.end method


# virtual methods
.method public a(Ln3/m0/c0/l;Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p1, Ln3/m0/c0/l;->c:Landroidx/work/impl/WorkDatabase;

    .line 2
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->f()Ln3/m0/c0/s/q;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->a()Ln3/m0/c0/s/b;

    move-result-object v0

    .line 4
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 5
    invoke-virtual {v2, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 6
    :goto_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    .line 7
    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8
    move-object v6, v1

    check-cast v6, Ln3/m0/c0/s/t;

    invoke-virtual {v6, v3}, Ln3/m0/c0/s/t;->h(Ljava/lang/String;)Ln3/m0/x$a;

    move-result-object v7

    .line 9
    sget-object v8, Ln3/m0/x$a;->c:Ln3/m0/x$a;

    if-eq v7, v8, :cond_0

    sget-object v8, Ln3/m0/x$a;->d:Ln3/m0/x$a;

    if-eq v7, v8, :cond_0

    .line 10
    sget-object v7, Ln3/m0/x$a;->f:Ln3/m0/x$a;

    new-array v5, v5, [Ljava/lang/String;

    aput-object v3, v5, v4

    invoke-virtual {v6, v7, v5}, Ln3/m0/c0/s/t;->r(Ln3/m0/x$a;[Ljava/lang/String;)I

    .line 11
    :cond_0
    move-object v4, v0

    check-cast v4, Ln3/m0/c0/s/c;

    invoke-virtual {v4, v3}, Ln3/m0/c0/s/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p1, Ln3/m0/c0/l;->f:Ln3/m0/c0/d;

    .line 13
    iget-object v1, v0, Ln3/m0/c0/d;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 14
    :try_start_0
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v2

    sget-object v3, Ln3/m0/c0/d;->l:Ljava/lang/String;

    const-string v6, "Processor cancelling %s"

    new-array v7, v5, [Ljava/lang/Object;

    aput-object p2, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v6, v7}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 15
    iget-object v2, v0, Ln3/m0/c0/d;->i:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v2, v0, Ln3/m0/c0/d;->f:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/m0/c0/o;

    if-eqz v2, :cond_2

    move v4, v5

    :cond_2
    if-nez v2, :cond_3

    .line 17
    iget-object v2, v0, Ln3/m0/c0/d;->g:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/m0/c0/o;

    .line 18
    :cond_3
    invoke-static {p2, v2}, Ln3/m0/c0/d;->c(Ljava/lang/String;Ln3/m0/c0/o;)Z

    if-eqz v4, :cond_4

    .line 19
    invoke-virtual {v0}, Ln3/m0/c0/d;->h()V

    .line 20
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iget-object p1, p1, Ln3/m0/c0/l;->e:Ljava/util/List;

    .line 22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/m0/c0/e;

    .line 23
    invoke-interface {v0, p2}, Ln3/m0/c0/e;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 24
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b(Ln3/m0/c0/l;)V
    .locals 2

    .line 1
    iget-object v0, p1, Ln3/m0/c0/l;->b:Ln3/m0/c;

    .line 2
    iget-object v1, p1, Ln3/m0/c0/l;->c:Landroidx/work/impl/WorkDatabase;

    .line 3
    iget-object p1, p1, Ln3/m0/c0/l;->e:Ljava/util/List;

    .line 4
    invoke-static {v0, v1, p1}, Ln3/m0/c0/f;->a(Ln3/m0/c;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void
.end method

.method public abstract c()V
.end method

.method public run()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ln3/m0/c0/t/d;->c()V

    .line 2
    iget-object v0, p0, Ln3/m0/c0/t/d;->a:Ln3/m0/c0/c;

    sget-object v1, Ln3/m0/s;->a:Ln3/m0/s$b$c;

    invoke-virtual {v0, v1}, Ln3/m0/c0/c;->a(Ln3/m0/s$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    iget-object v1, p0, Ln3/m0/c0/t/d;->a:Ln3/m0/c0/c;

    new-instance v2, Ln3/m0/s$b$a;

    invoke-direct {v2, v0}, Ln3/m0/s$b$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Ln3/m0/c0/c;->a(Ln3/m0/s$b;)V

    :goto_0
    return-void
.end method
