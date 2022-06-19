.class public Le/k/a/c/d0/z/j0;
.super Le/k/a/c/d0/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Le/k/a/c/d0/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/k/a/c/d0/c;-><init>(Le/k/a/c/d0/d;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Le/k/a/c/d0/d;->k:Z

    return-void
.end method

.method public constructor <init>(Le/k/a/c/d0/c;Le/k/a/c/n0/s;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Le/k/a/c/d0/c;-><init>(Le/k/a/c/d0/d;Le/k/a/c/n0/s;)V

    return-void
.end method


# virtual methods
.method public L0(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/d;->i:Le/k/a/c/d0/y/y;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/c;->n0(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/c/d0/d;->g:Le/k/a/c/j;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Le/k/a/c/d0/d;->f:Le/k/a/c/d0/w;

    .line 5
    invoke-virtual {v0, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-virtual {v1, p2, p1}, Le/k/a/c/d0/w;->w(Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    iget-object v0, p0, Le/k/a/c/d0/d;->d:Le/k/a/c/i;

    invoke-virtual {v0}, Le/k/a/c/i;->v()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_f

    .line 8
    iget-object v0, p0, Le/k/a/c/d0/d;->f:Le/k/a/c/d0/w;

    invoke-virtual {v0}, Le/k/a/c/d0/w;->h()Z

    move-result v0

    .line 9
    iget-object v3, p0, Le/k/a/c/d0/d;->f:Le/k/a/c/d0/w;

    invoke-virtual {v3}, Le/k/a/c/d0/w;->j()Z

    move-result v3

    if-nez v0, :cond_3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Le/k/a/c/d0/d;->d:Le/k/a/c/i;

    .line 11
    iget-object v4, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 12
    iget-object v5, p0, Le/k/a/c/d0/d;->f:Le/k/a/c/d0/w;

    new-array v8, v1, [Ljava/lang/Object;

    const-string v7, "Throwable needs a default constructor, a single-String-arg constructor; or explicit @JsonCreator"

    move-object v3, p2

    move-object v6, p1

    .line 13
    invoke-virtual/range {v3 .. v8}, Le/k/a/c/g;->E(Ljava/lang/Class;Le/k/a/c/d0/w;Le/k/a/b/j;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v2

    :cond_3
    :goto_0
    move v5, v1

    move-object v3, v2

    move-object v4, v3

    .line 14
    :goto_1
    sget-object v6, Le/k/a/b/m;->k:Le/k/a/b/m;

    invoke-virtual {p1, v6}, Le/k/a/b/j;->O1(Le/k/a/b/m;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 15
    invoke-virtual {p1}, Le/k/a/b/j;->k()Ljava/lang/String;

    move-result-object v6

    .line 16
    iget-object v7, p0, Le/k/a/c/d0/d;->l:Le/k/a/c/d0/y/c;

    invoke-virtual {v7, v6}, Le/k/a/c/d0/y/c;->e(Ljava/lang/String;)Le/k/a/c/d0/u;

    move-result-object v7

    .line 17
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    if-eqz v7, :cond_6

    if-eqz v3, :cond_4

    .line 18
    invoke-virtual {v7, p1, p2, v3}, Le/k/a/c/d0/u;->i(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    if-nez v4, :cond_5

    .line 19
    iget-object v4, p0, Le/k/a/c/d0/d;->l:Le/k/a/c/d0/y/c;

    .line 20
    iget v4, v4, Le/k/a/c/d0/y/c;->c:I

    add-int/2addr v4, v4

    .line 21
    new-array v4, v4, [Ljava/lang/Object;

    :cond_5
    add-int/lit8 v6, v5, 0x1

    .line 22
    aput-object v7, v4, v5

    add-int/lit8 v5, v6, 0x1

    .line 23
    invoke-virtual {v7, p1, p2}, Le/k/a/c/d0/u;->h(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v4, v6

    goto :goto_3

    :cond_6
    const-string v7, "message"

    .line 24
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-eqz v0, :cond_8

    .line 25
    iget-object v3, p0, Le/k/a/c/d0/d;->f:Le/k/a/c/d0/w;

    invoke-virtual {p1}, Le/k/a/b/j;->F1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p2, v6}, Le/k/a/c/d0/w;->t(Le/k/a/c/g;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v4, :cond_b

    move v6, v1

    :goto_2
    if-ge v6, v5, :cond_7

    .line 26
    aget-object v7, v4, v6

    check-cast v7, Le/k/a/c/d0/u;

    add-int/lit8 v8, v6, 0x1

    .line 27
    aget-object v8, v4, v8

    invoke-virtual {v7, v3, v8}, Le/k/a/c/d0/u;->z(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x2

    goto :goto_2

    :cond_7
    move-object v4, v2

    goto :goto_3

    .line 28
    :cond_8
    iget-object v7, p0, Le/k/a/c/d0/d;->o:Ljava/util/Set;

    if-eqz v7, :cond_9

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 29
    invoke-virtual {p1}, Le/k/a/b/j;->w2()Le/k/a/b/j;

    goto :goto_3

    .line 30
    :cond_9
    iget-object v7, p0, Le/k/a/c/d0/d;->n:Le/k/a/c/d0/t;

    if-eqz v7, :cond_a

    .line 31
    invoke-virtual {v7, p1, p2, v3, v6}, Le/k/a/c/d0/t;->b(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 32
    :cond_a
    invoke-virtual {p0, p1, p2, v3, v6}, Le/k/a/c/d0/d;->l0(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    :cond_b
    :goto_3
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    goto :goto_1

    :cond_c
    if-nez v3, :cond_e

    if-eqz v0, :cond_d

    .line 34
    iget-object p1, p0, Le/k/a/c/d0/d;->f:Le/k/a/c/d0/w;

    invoke-virtual {p1, p2, v2}, Le/k/a/c/d0/w;->t(Le/k/a/c/g;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_4

    .line 35
    :cond_d
    iget-object p1, p0, Le/k/a/c/d0/d;->f:Le/k/a/c/d0/w;

    invoke-virtual {p1, p2}, Le/k/a/c/d0/w;->v(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    :goto_4
    move-object v3, p1

    if-eqz v4, :cond_e

    :goto_5
    if-ge v1, v5, :cond_e

    .line 36
    aget-object p1, v4, v1

    check-cast p1, Le/k/a/c/d0/u;

    add-int/lit8 p2, v1, 0x1

    .line 37
    aget-object p2, v4, p2

    invoke-virtual {p1, v3, p2}, Le/k/a/c/d0/u;->z(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_5

    :cond_e
    return-object v3

    .line 38
    :cond_f
    iget-object v0, p0, Le/k/a/c/d0/d;->d:Le/k/a/c/i;

    .line 39
    iget-object v4, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 40
    iget-object v5, p0, Le/k/a/c/d0/d;->f:Le/k/a/c/d0/w;

    new-array v8, v1, [Ljava/lang/Object;

    const-string v7, "abstract type (need to add/enable type information?)"

    move-object v3, p2

    move-object v6, p1

    .line 41
    invoke-virtual/range {v3 .. v8}, Le/k/a/c/g;->E(Ljava/lang/Class;Le/k/a/c/d0/w;Le/k/a/b/j;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v2
.end method

.method public q(Le/k/a/c/n0/s;)Le/k/a/c/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/n0/s;",
            ")",
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Le/k/a/c/d0/z/j0;

    const-class v1, Le/k/a/c/d0/z/j0;

    if-eq v0, v1, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Le/k/a/c/d0/z/j0;

    invoke-direct {v0, p0, p1}, Le/k/a/c/d0/z/j0;-><init>(Le/k/a/c/d0/c;Le/k/a/c/n0/s;)V

    return-object v0
.end method
