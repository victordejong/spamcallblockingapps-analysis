.class public final Lp3/a/q$a;
.super Lp3/a/q;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lp3/a/q$d;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lp3/a/q$b;

.field public h:Ljava/lang/Throwable;

.field public i:Z


# virtual methods
.method public E()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lp3/a/q$a;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-super {p0}, Lp3/a/q;->E()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-super {p0}, Lp3/a/q;->j()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lp3/a/q$a;->K(Ljava/lang/Throwable;)Z

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public I(Lp3/a/q$b;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p0}, Lp3/a/q$a;->P(Lp3/a/q$b;Lp3/a/q;)V

    return-void
.end method

.method public final J(Lp3/a/q$d;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lp3/a/q$a;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lp3/a/q$d;->a()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lp3/a/q$a;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp3/a/q$a;->f:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lp3/a/q;->a:Lp3/a/q$a;

    if-eqz p1, :cond_2

    .line 8
    new-instance v0, Lp3/a/q$a$a;

    invoke-direct {v0, p0}, Lp3/a/q$a$a;-><init>(Lp3/a/q$a;)V

    iput-object v0, p0, Lp3/a/q$a;->g:Lp3/a/q$b;

    .line 9
    new-instance v1, Lp3/a/q$d;

    sget-object v2, Lp3/a/q$c;->a:Lp3/a/q$c;

    invoke-direct {v1, v2, v0, p0}, Lp3/a/q$d;-><init>(Ljava/util/concurrent/Executor;Lp3/a/q$b;Lp3/a/q;)V

    invoke-virtual {p1, v1}, Lp3/a/q$a;->J(Lp3/a/q$d;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public K(Ljava/lang/Throwable;)Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lp3/a/q$a;->i:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 3
    iput-boolean v1, p0, Lp3/a/q$a;->i:Z

    .line 4
    iput-object p1, p0, Lp3/a/q$a;->h:Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    move v1, v2

    .line 5
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_6

    .line 6
    monitor-enter p0

    .line 7
    :try_start_1
    iget-object p1, p0, Lp3/a/q$a;->f:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    .line 8
    monitor-exit p0

    goto :goto_3

    .line 9
    :cond_1
    iget-object v0, p0, Lp3/a/q$a;->g:Lp3/a/q$b;

    .line 10
    iput-object v3, p0, Lp3/a/q$a;->g:Lp3/a/q$b;

    .line 11
    iput-object v3, p0, Lp3/a/q$a;->f:Ljava/util/ArrayList;

    .line 12
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp3/a/q$d;

    .line 14
    iget-object v4, v3, Lp3/a/q$d;->c:Lp3/a/q;

    if-ne v4, p0, :cond_2

    .line 15
    invoke-virtual {v3}, Lp3/a/q$d;->a()V

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp3/a/q$d;

    .line 17
    iget-object v3, v2, Lp3/a/q$d;->c:Lp3/a/q;

    if-eq v3, p0, :cond_4

    .line 18
    invoke-virtual {v2}, Lp3/a/q$d;->a()V

    goto :goto_2

    .line 19
    :cond_5
    iget-object p1, p0, Lp3/a/q;->a:Lp3/a/q$a;

    if-eqz p1, :cond_6

    .line 20
    invoke-virtual {p1, v0, p1}, Lp3/a/q$a;->P(Lp3/a/q$b;Lp3/a/q;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 21
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_6
    :goto_3
    return v1

    :catchall_1
    move-exception p1

    .line 22
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final P(Lp3/a/q$b;Lp3/a/q;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lp3/a/q$a;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 4
    iget-object v1, p0, Lp3/a/q$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp3/a/q$d;

    .line 5
    iget-object v2, v1, Lp3/a/q$d;->b:Lp3/a/q$b;

    if-ne v2, p1, :cond_0

    .line 6
    iget-object v1, v1, Lp3/a/q$d;->c:Lp3/a/q;

    if-ne v1, p2, :cond_0

    .line 7
    iget-object p1, p0, Lp3/a/q$a;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8
    :cond_1
    :goto_1
    iget-object p1, p0, Lp3/a/q$a;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lp3/a/q;->a:Lp3/a/q$a;

    if-eqz p1, :cond_2

    .line 10
    iget-object p2, p0, Lp3/a/q$a;->g:Lp3/a/q$b;

    invoke-virtual {p1, p2}, Lp3/a/q$a;->I(Lp3/a/q$b;)V

    :cond_2
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lp3/a/q$a;->g:Lp3/a/q$b;

    .line 12
    iput-object p1, p0, Lp3/a/q$a;->f:Ljava/util/ArrayList;

    .line 13
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Lp3/a/q$b;Ljava/util/concurrent/Executor;)V
    .locals 1

    const-string v0, "cancellationListener"

    .line 1
    invoke-static {p1, v0}, Lp3/a/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "executor"

    .line 2
    invoke-static {p2, v0}, Lp3/a/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lp3/a/q$d;

    invoke-direct {v0, p2, p1, p0}, Lp3/a/q$d;-><init>(Ljava/util/concurrent/Executor;Lp3/a/q$b;Lp3/a/q;)V

    invoke-virtual {p0, v0}, Lp3/a/q$a;->J(Lp3/a/q$d;)V

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lp3/a/q$a;->K(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public d()Lp3/a/q;
    .locals 1

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method public j()Ljava/lang/Throwable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp3/a/q$a;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lp3/a/q$a;->h:Ljava/lang/Throwable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public q(Lp3/a/q;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public s()Lp3/a/r;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
