.class public Le/k/a/c/l0/t/j;
.super Le/k/a/c/l0/t/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/l0/t/b<",
        "Ljava/util/Collection<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/k/a/c/i;ZLe/k/a/c/j0/h;Le/k/a/c/n;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/i;",
            "Z",
            "Le/k/a/c/j0/h;",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-class v1, Ljava/util/Collection;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Le/k/a/c/l0/t/b;-><init>(Ljava/lang/Class;Le/k/a/c/i;ZLe/k/a/c/j0/h;Le/k/a/c/n;)V

    return-void
.end method

.method public constructor <init>(Le/k/a/c/l0/t/j;Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/l0/t/j;",
            "Le/k/a/c/d;",
            "Le/k/a/c/j0/h;",
            "Le/k/a/c/n<",
            "*>;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct/range {p0 .. p5}, Le/k/a/c/l0/t/b;-><init>(Le/k/a/c/l0/t/b;Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public d(Le/k/a/c/a0;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Ljava/util/Collection;

    .line 2
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    return p1
.end method

.method public f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/Collection;

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Le/k/a/c/l0/t/b;->f:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    sget-object v1, Le/k/a/c/z;->v:Le/k/a/c/z;

    .line 4
    invoke-virtual {p3, v1}, Le/k/a/c/a0;->M(Le/k/a/c/z;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Le/k/a/c/l0/t/b;->f:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_2

    .line 5
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/l0/t/j;->t(Ljava/util/Collection;Le/k/a/b/g;Le/k/a/c/a0;)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p2, p1, v0}, Le/k/a/b/g;->L1(Ljava/lang/Object;I)V

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/l0/t/j;->t(Ljava/util/Collection;Le/k/a/b/g;Le/k/a/c/a0;)V

    .line 8
    invoke-virtual {p2}, Le/k/a/b/g;->p0()V

    :goto_0
    return-void
.end method

.method public p(Le/k/a/c/j0/h;)Le/k/a/c/l0/h;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/j0/h;",
            ")",
            "Le/k/a/c/l0/h<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v6, Le/k/a/c/l0/t/j;

    iget-object v2, p0, Le/k/a/c/l0/t/b;->d:Le/k/a/c/d;

    iget-object v4, p0, Le/k/a/c/l0/t/b;->h:Le/k/a/c/n;

    iget-object v5, p0, Le/k/a/c/l0/t/b;->f:Ljava/lang/Boolean;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Le/k/a/c/l0/t/j;-><init>(Le/k/a/c/l0/t/j;Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Ljava/lang/Boolean;)V

    return-object v6
.end method

.method public bridge synthetic r(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/l0/t/j;->t(Ljava/util/Collection;Le/k/a/b/g;Le/k/a/c/a0;)V

    return-void
.end method

.method public s(Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Ljava/lang/Boolean;)Le/k/a/c/l0/t/b;
    .locals 7

    .line 1
    new-instance v6, Le/k/a/c/l0/t/j;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Le/k/a/c/l0/t/j;-><init>(Le/k/a/c/l0/t/j;Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Ljava/lang/Boolean;)V

    return-object v6
.end method

.method public t(Ljava/util/Collection;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Le/k/a/b/g;",
            "Le/k/a/c/a0;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2, p1}, Le/k/a/b/g;->J(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Le/k/a/c/l0/t/b;->h:Le/k/a/c/n;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5
    iget-object v4, p0, Le/k/a/c/l0/t/b;->g:Le/k/a/c/j0/h;

    .line 6
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 7
    :try_start_0
    invoke-virtual {p3, p2}, Le/k/a/c/a0;->t(Le/k/a/b/g;)V

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    .line 8
    invoke-virtual {v0, v5, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0, v5, p2, p3, v4}, Le/k/a/c/n;->g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 11
    :goto_1
    invoke-virtual {p0, p3, p2, p1, v2}, Le/k/a/c/l0/t/q0;->n(Le/k/a/c/a0;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    throw v1

    :cond_3
    :goto_2
    return-void

    .line 12
    :cond_4
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    return-void

    .line 14
    :cond_5
    iget-object v3, p0, Le/k/a/c/l0/t/b;->i:Le/k/a/c/l0/s/l;

    .line 15
    iget-object v4, p0, Le/k/a/c/l0/t/b;->g:Le/k/a/c/j0/h;

    .line 16
    :cond_6
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_7

    .line 17
    invoke-virtual {p3, p2}, Le/k/a/c/a0;->t(Le/k/a/b/g;)V

    goto :goto_4

    .line 18
    :cond_7
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 19
    invoke-virtual {v3, v6}, Le/k/a/c/l0/s/l;->c(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v7

    if-nez v7, :cond_a

    .line 20
    iget-object v7, p0, Le/k/a/c/l0/t/b;->c:Le/k/a/c/i;

    invoke-virtual {v7}, Le/k/a/c/i;->s()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 21
    iget-object v7, p0, Le/k/a/c/l0/t/b;->c:Le/k/a/c/i;

    .line 22
    invoke-virtual {p3, v7, v6}, Le/k/a/c/a0;->s(Le/k/a/c/i;Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object v6

    .line 23
    iget-object v7, p0, Le/k/a/c/l0/t/b;->d:Le/k/a/c/d;

    invoke-virtual {v3, v6, p3, v7}, Le/k/a/c/l0/s/l;->a(Le/k/a/c/i;Le/k/a/c/a0;Le/k/a/c/d;)Le/k/a/c/l0/s/l$d;

    move-result-object v6

    .line 24
    iget-object v7, v6, Le/k/a/c/l0/s/l$d;->b:Le/k/a/c/l0/s/l;

    if-eq v3, v7, :cond_8

    .line 25
    iput-object v7, p0, Le/k/a/c/l0/t/b;->i:Le/k/a/c/l0/s/l;

    .line 26
    :cond_8
    iget-object v3, v6, Le/k/a/c/l0/s/l$d;->a:Le/k/a/c/n;

    goto :goto_3

    .line 27
    :cond_9
    invoke-virtual {p0, v3, v6, p3}, Le/k/a/c/l0/t/b;->q(Le/k/a/c/l0/s/l;Ljava/lang/Class;Le/k/a/c/a0;)Le/k/a/c/n;

    move-result-object v3

    :goto_3
    move-object v7, v3

    .line 28
    iget-object v3, p0, Le/k/a/c/l0/t/b;->i:Le/k/a/c/l0/s/l;

    :cond_a
    if-nez v4, :cond_b

    .line 29
    invoke-virtual {v7, v5, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    goto :goto_4

    .line 30
    :cond_b
    invoke-virtual {v7, v5, p2, p3, v4}, Le/k/a/c/n;->g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v5, :cond_6

    return-void

    :catch_1
    move-exception p2

    .line 32
    invoke-virtual {p0, p3, p2, p1, v2}, Le/k/a/c/l0/t/q0;->n(Le/k/a/c/a0;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    throw v1
.end method
