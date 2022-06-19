.class public final Le/k/a/c/l0/s/f;
.super Le/k/a/c/l0/t/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/l0/t/b<",
        "Ljava/util/List<",
        "*>;>;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
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
    const-class v1, Ljava/util/List;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Le/k/a/c/l0/t/b;-><init>(Ljava/lang/Class;Le/k/a/c/i;ZLe/k/a/c/j0/h;Le/k/a/c/n;)V

    return-void
.end method

.method public constructor <init>(Le/k/a/c/l0/s/f;Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/l0/s/f;",
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
    check-cast p2, Ljava/util/List;

    .line 2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

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
    check-cast p1, Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

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
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/l0/s/f;->t(Ljava/util/List;Le/k/a/b/g;Le/k/a/c/a0;)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p2, p1, v0}, Le/k/a/b/g;->L1(Ljava/lang/Object;I)V

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/l0/s/f;->t(Ljava/util/List;Le/k/a/b/g;Le/k/a/c/a0;)V

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
    new-instance v6, Le/k/a/c/l0/s/f;

    iget-object v2, p0, Le/k/a/c/l0/t/b;->d:Le/k/a/c/d;

    iget-object v4, p0, Le/k/a/c/l0/t/b;->h:Le/k/a/c/n;

    iget-object v5, p0, Le/k/a/c/l0/t/b;->f:Ljava/lang/Boolean;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Le/k/a/c/l0/s/f;-><init>(Le/k/a/c/l0/s/f;Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Ljava/lang/Boolean;)V

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
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/l0/s/f;->t(Ljava/util/List;Le/k/a/b/g;Le/k/a/c/a0;)V

    return-void
.end method

.method public s(Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Ljava/lang/Boolean;)Le/k/a/c/l0/t/b;
    .locals 7

    .line 1
    new-instance v6, Le/k/a/c/l0/s/f;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Le/k/a/c/l0/s/f;-><init>(Le/k/a/c/l0/s/f;Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Ljava/lang/Boolean;)V

    return-object v6
.end method

.method public t(Ljava/util/List;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
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
    iget-object v0, p0, Le/k/a/c/l0/t/b;->h:Le/k/a/c/n;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_3

    .line 3
    :cond_0
    iget-object v4, p0, Le/k/a/c/l0/t/b;->g:Le/k/a/c/j0/h;

    :goto_0
    if-ge v2, v3, :cond_3

    .line 4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 5
    :try_start_0
    invoke-virtual {p3, p2}, Le/k/a/c/a0;->t(Le/k/a/b/g;)V

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_2

    :cond_1
    if-nez v4, :cond_2

    .line 6
    invoke-virtual {v0, v5, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v0, v5, p2, p3, v4}, Le/k/a/c/n;->g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :goto_2
    invoke-virtual {p0, p3, p2, p1, v2}, Le/k/a/c/l0/t/q0;->n(Le/k/a/c/a0;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    throw v1

    :cond_3
    :goto_3
    return-void

    .line 9
    :cond_4
    iget-object v0, p0, Le/k/a/c/l0/t/b;->g:Le/k/a/c/j0/h;

    if-eqz v0, :cond_b

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_7

    .line 11
    :cond_5
    :try_start_1
    iget-object v3, p0, Le/k/a/c/l0/t/b;->g:Le/k/a/c/j0/h;

    .line 12
    iget-object v4, p0, Le/k/a/c/l0/t/b;->i:Le/k/a/c/l0/s/l;

    :goto_4
    if-ge v2, v0, :cond_a

    .line 13
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6

    .line 14
    invoke-virtual {p3, p2}, Le/k/a/c/a0;->t(Le/k/a/b/g;)V

    goto :goto_6

    .line 15
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 16
    invoke-virtual {v4, v6}, Le/k/a/c/l0/s/l;->c(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v7

    if-nez v7, :cond_9

    .line 17
    iget-object v7, p0, Le/k/a/c/l0/t/b;->c:Le/k/a/c/i;

    invoke-virtual {v7}, Le/k/a/c/i;->s()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 18
    iget-object v7, p0, Le/k/a/c/l0/t/b;->c:Le/k/a/c/i;

    .line 19
    invoke-virtual {p3, v7, v6}, Le/k/a/c/a0;->s(Le/k/a/c/i;Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object v6

    .line 20
    iget-object v7, p0, Le/k/a/c/l0/t/b;->d:Le/k/a/c/d;

    invoke-virtual {v4, v6, p3, v7}, Le/k/a/c/l0/s/l;->a(Le/k/a/c/i;Le/k/a/c/a0;Le/k/a/c/d;)Le/k/a/c/l0/s/l$d;

    move-result-object v6

    .line 21
    iget-object v7, v6, Le/k/a/c/l0/s/l$d;->b:Le/k/a/c/l0/s/l;

    if-eq v4, v7, :cond_7

    .line 22
    iput-object v7, p0, Le/k/a/c/l0/t/b;->i:Le/k/a/c/l0/s/l;

    .line 23
    :cond_7
    iget-object v4, v6, Le/k/a/c/l0/s/l$d;->a:Le/k/a/c/n;

    goto :goto_5

    .line 24
    :cond_8
    invoke-virtual {p0, v4, v6, p3}, Le/k/a/c/l0/t/b;->q(Le/k/a/c/l0/s/l;Ljava/lang/Class;Le/k/a/c/a0;)Le/k/a/c/n;

    move-result-object v4

    :goto_5
    move-object v7, v4

    .line 25
    iget-object v4, p0, Le/k/a/c/l0/t/b;->i:Le/k/a/c/l0/s/l;

    .line 26
    :cond_9
    invoke-virtual {v7, v5, p2, p3, v3}, Le/k/a/c/n;->g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    :goto_7
    return-void

    :catch_1
    move-exception p2

    .line 27
    invoke-virtual {p0, p3, p2, p1, v2}, Le/k/a/c/l0/t/q0;->n(Le/k/a/c/a0;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    throw v1

    .line 28
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 29
    :cond_c
    :try_start_2
    iget-object v3, p0, Le/k/a/c/l0/t/b;->i:Le/k/a/c/l0/s/l;

    :goto_8
    if-ge v2, v0, :cond_11

    .line 30
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_d

    .line 31
    invoke-virtual {p3, p2}, Le/k/a/c/a0;->t(Le/k/a/b/g;)V

    goto :goto_a

    .line 32
    :cond_d
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 33
    invoke-virtual {v3, v5}, Le/k/a/c/l0/s/l;->c(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v6

    if-nez v6, :cond_10

    .line 34
    iget-object v6, p0, Le/k/a/c/l0/t/b;->c:Le/k/a/c/i;

    invoke-virtual {v6}, Le/k/a/c/i;->s()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 35
    iget-object v6, p0, Le/k/a/c/l0/t/b;->c:Le/k/a/c/i;

    .line 36
    invoke-virtual {p3, v6, v5}, Le/k/a/c/a0;->s(Le/k/a/c/i;Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object v5

    .line 37
    iget-object v6, p0, Le/k/a/c/l0/t/b;->d:Le/k/a/c/d;

    invoke-virtual {v3, v5, p3, v6}, Le/k/a/c/l0/s/l;->a(Le/k/a/c/i;Le/k/a/c/a0;Le/k/a/c/d;)Le/k/a/c/l0/s/l$d;

    move-result-object v5

    .line 38
    iget-object v6, v5, Le/k/a/c/l0/s/l$d;->b:Le/k/a/c/l0/s/l;

    if-eq v3, v6, :cond_e

    .line 39
    iput-object v6, p0, Le/k/a/c/l0/t/b;->i:Le/k/a/c/l0/s/l;

    .line 40
    :cond_e
    iget-object v3, v5, Le/k/a/c/l0/s/l$d;->a:Le/k/a/c/n;

    goto :goto_9

    .line 41
    :cond_f
    invoke-virtual {p0, v3, v5, p3}, Le/k/a/c/l0/t/b;->q(Le/k/a/c/l0/s/l;Ljava/lang/Class;Le/k/a/c/a0;)Le/k/a/c/n;

    move-result-object v3

    :goto_9
    move-object v6, v3

    .line 42
    iget-object v3, p0, Le/k/a/c/l0/t/b;->i:Le/k/a/c/l0/s/l;

    .line 43
    :cond_10
    invoke-virtual {v6, v4, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_11
    return-void

    :catch_2
    move-exception p2

    .line 44
    invoke-virtual {p0, p3, p2, p1, v2}, Le/k/a/c/l0/t/q0;->n(Le/k/a/c/a0;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    throw v1
.end method
