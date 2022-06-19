.class public Le/k/a/c/l0/t/d0;
.super Le/k/a/c/l0/t/a;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/l0/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/l0/t/a<",
        "[",
        "Ljava/lang/Object;",
        ">;",
        "Le/k/a/c/l0/i;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# instance fields
.field public final e:Z

.field public final f:Le/k/a/c/i;

.field public final g:Le/k/a/c/j0/h;

.field public h:Le/k/a/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public i:Le/k/a/c/l0/s/l;


# direct methods
.method public constructor <init>(Le/k/a/c/i;ZLe/k/a/c/j0/h;Le/k/a/c/n;)V
    .locals 1
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
    const-class v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Le/k/a/c/l0/t/a;-><init>(Ljava/lang/Class;)V

    .line 2
    iput-object p1, p0, Le/k/a/c/l0/t/d0;->f:Le/k/a/c/i;

    .line 3
    iput-boolean p2, p0, Le/k/a/c/l0/t/d0;->e:Z

    .line 4
    iput-object p3, p0, Le/k/a/c/l0/t/d0;->g:Le/k/a/c/j0/h;

    .line 5
    sget-object p1, Le/k/a/c/l0/s/l$b;->b:Le/k/a/c/l0/s/l$b;

    iput-object p1, p0, Le/k/a/c/l0/t/d0;->i:Le/k/a/c/l0/s/l;

    .line 6
    iput-object p4, p0, Le/k/a/c/l0/t/d0;->h:Le/k/a/c/n;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/l0/t/d0;Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/l0/t/d0;",
            "Le/k/a/c/d;",
            "Le/k/a/c/j0/h;",
            "Le/k/a/c/n<",
            "*>;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2, p5}, Le/k/a/c/l0/t/a;-><init>(Le/k/a/c/l0/t/a;Le/k/a/c/d;Ljava/lang/Boolean;)V

    .line 8
    iget-object p2, p1, Le/k/a/c/l0/t/d0;->f:Le/k/a/c/i;

    iput-object p2, p0, Le/k/a/c/l0/t/d0;->f:Le/k/a/c/i;

    .line 9
    iput-object p3, p0, Le/k/a/c/l0/t/d0;->g:Le/k/a/c/j0/h;

    .line 10
    iget-boolean p1, p1, Le/k/a/c/l0/t/d0;->e:Z

    iput-boolean p1, p0, Le/k/a/c/l0/t/d0;->e:Z

    .line 11
    sget-object p1, Le/k/a/c/l0/s/l$b;->b:Le/k/a/c/l0/s/l$b;

    iput-object p1, p0, Le/k/a/c/l0/t/d0;->i:Le/k/a/c/l0/s/l;

    .line 12
    iput-object p4, p0, Le/k/a/c/l0/t/d0;->h:Le/k/a/c/n;

    return-void
.end method


# virtual methods
.method public b(Le/k/a/c/a0;Le/k/a/c/d;)Le/k/a/c/n;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/a0;",
            "Le/k/a/c/d;",
            ")",
            "Le/k/a/c/n<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/t/d0;->g:Le/k/a/c/j0/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p2}, Le/k/a/c/j0/h;->a(Le/k/a/c/d;)Le/k/a/c/j0/h;

    move-result-object v0

    :cond_0
    move-object v4, v0

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 3
    invoke-interface {p2}, Le/k/a/c/d;->c()Le/k/a/c/g0/i;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Le/k/a/c/a0;->E()Le/k/a/c/b;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v2, v1}, Le/k/a/c/b;->d(Le/k/a/c/g0/b;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {p1, v1, v2}, Le/k/a/c/a0;->Q(Le/k/a/c/g0/b;Ljava/lang/Object;)Le/k/a/c/n;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 7
    :goto_0
    iget-object v2, p0, Le/k/a/c/l0/t/q0;->a:Ljava/lang/Class;

    .line 8
    invoke-virtual {p0, p1, p2, v2}, Le/k/a/c/l0/t/q0;->l(Le/k/a/c/a0;Le/k/a/c/d;Ljava/lang/Class;)Le/k/a/a/k$d;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 9
    sget-object v0, Le/k/a/a/k$a;->f:Le/k/a/a/k$a;

    invoke-virtual {v2, v0}, Le/k/a/a/k$d;->b(Le/k/a/a/k$a;)Ljava/lang/Boolean;

    move-result-object v0

    :cond_2
    move-object v6, v0

    if-nez v1, :cond_3

    .line 10
    iget-object v1, p0, Le/k/a/c/l0/t/d0;->h:Le/k/a/c/n;

    .line 11
    :cond_3
    invoke-virtual {p0, p1, p2, v1}, Le/k/a/c/l0/t/q0;->k(Le/k/a/c/a0;Le/k/a/c/d;Le/k/a/c/n;)Le/k/a/c/n;

    move-result-object v0

    if-nez v0, :cond_4

    .line 12
    iget-object v1, p0, Le/k/a/c/l0/t/d0;->f:Le/k/a/c/i;

    if-eqz v1, :cond_4

    .line 13
    iget-boolean v2, p0, Le/k/a/c/l0/t/d0;->e:Z

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Le/k/a/c/i;->E()Z

    move-result v1

    if-nez v1, :cond_4

    .line 14
    iget-object v0, p0, Le/k/a/c/l0/t/d0;->f:Le/k/a/c/i;

    invoke-virtual {p1, v0, p2}, Le/k/a/c/a0;->u(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object p1

    move-object v5, p1

    goto :goto_1

    :cond_4
    move-object v5, v0

    .line 15
    :goto_1
    iget-object p1, p0, Le/k/a/c/l0/t/a;->c:Le/k/a/c/d;

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Le/k/a/c/l0/t/d0;->h:Le/k/a/c/n;

    if-ne v5, p1, :cond_5

    iget-object p1, p0, Le/k/a/c/l0/t/d0;->g:Le/k/a/c/j0/h;

    if-ne p1, v4, :cond_5

    iget-object p1, p0, Le/k/a/c/l0/t/a;->d:Ljava/lang/Boolean;

    .line 16
    invoke-static {p1, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move-object p1, p0

    goto :goto_2

    .line 17
    :cond_5
    new-instance p1, Le/k/a/c/l0/t/d0;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Le/k/a/c/l0/t/d0;-><init>(Le/k/a/c/l0/t/d0;Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Ljava/lang/Boolean;)V

    :goto_2
    return-object p1
.end method

.method public d(Le/k/a/c/a0;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, [Ljava/lang/Object;

    .line 2
    array-length p1, p2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
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
    check-cast p1, [Ljava/lang/Object;

    .line 2
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Le/k/a/c/l0/t/a;->d:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    sget-object v1, Le/k/a/c/z;->v:Le/k/a/c/z;

    .line 4
    invoke-virtual {p3, v1}, Le/k/a/c/a0;->M(Le/k/a/c/z;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Le/k/a/c/l0/t/a;->d:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_2

    .line 5
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/l0/t/d0;->t([Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p2, p1, v0}, Le/k/a/b/g;->L1(Ljava/lang/Object;I)V

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/l0/t/d0;->t([Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    .line 8
    invoke-virtual {p2}, Le/k/a/b/g;->p0()V

    :goto_0
    return-void
.end method

.method public p(Le/k/a/c/j0/h;)Le/k/a/c/l0/h;
    .locals 4
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
    new-instance v0, Le/k/a/c/l0/t/d0;

    iget-object v1, p0, Le/k/a/c/l0/t/d0;->f:Le/k/a/c/i;

    iget-boolean v2, p0, Le/k/a/c/l0/t/d0;->e:Z

    iget-object v3, p0, Le/k/a/c/l0/t/d0;->h:Le/k/a/c/n;

    invoke-direct {v0, v1, v2, p1, v3}, Le/k/a/c/l0/t/d0;-><init>(Le/k/a/c/i;ZLe/k/a/c/j0/h;Le/k/a/c/n;)V

    return-object v0
.end method

.method public r(Le/k/a/c/d;Ljava/lang/Boolean;)Le/k/a/c/n;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/d;",
            "Ljava/lang/Boolean;",
            ")",
            "Le/k/a/c/n<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v6, Le/k/a/c/l0/t/d0;

    iget-object v3, p0, Le/k/a/c/l0/t/d0;->g:Le/k/a/c/j0/h;

    iget-object v4, p0, Le/k/a/c/l0/t/d0;->h:Le/k/a/c/n;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/k/a/c/l0/t/d0;-><init>(Le/k/a/c/l0/t/d0;Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Ljava/lang/Boolean;)V

    return-object v6
.end method

.method public bridge synthetic s(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/l0/t/d0;->t([Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    return-void
.end method

.method public t([Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Le/k/a/c/l0/t/d0;->h:Le/k/a/c/n;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 3
    array-length v0, p1

    .line 4
    iget-object v4, p0, Le/k/a/c/l0/t/d0;->g:Le/k/a/c/j0/h;

    move-object v5, v3

    :goto_0
    if-ge v2, v0, :cond_3

    .line 5
    :try_start_0
    aget-object v5, p1, v2

    if-nez v5, :cond_1

    .line 6
    invoke-virtual {p3, p2}, Le/k/a/c/a0;->t(Le/k/a/b/g;)V

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    .line 7
    invoke-virtual {v1, v5, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v1, v5, p2, p3, v4}, Le/k/a/c/n;->g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p0, p3, p1, v5, v2}, Le/k/a/c/l0/t/q0;->n(Le/k/a/c/a0;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    throw v3

    :cond_3
    return-void

    .line 10
    :cond_4
    iget-object v1, p0, Le/k/a/c/l0/t/d0;->g:Le/k/a/c/j0/h;

    if-eqz v1, :cond_8

    .line 11
    array-length v0, p1

    .line 12
    :try_start_1
    iget-object v4, p0, Le/k/a/c/l0/t/d0;->i:Le/k/a/c/l0/s/l;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v5, v3

    :goto_2
    if-ge v2, v0, :cond_7

    .line 13
    :try_start_2
    aget-object v5, p1, v2

    if-nez v5, :cond_5

    .line 14
    invoke-virtual {p3, p2}, Le/k/a/c/a0;->t(Le/k/a/b/g;)V

    goto :goto_3

    .line 15
    :cond_5
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 16
    invoke-virtual {v4, v6}, Le/k/a/c/l0/s/l;->c(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v7

    if-nez v7, :cond_6

    .line 17
    iget-object v7, p0, Le/k/a/c/l0/t/a;->c:Le/k/a/c/d;

    .line 18
    invoke-virtual {p3, v6, v7}, Le/k/a/c/a0;->v(Ljava/lang/Class;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object v7

    .line 19
    invoke-virtual {v4, v6, v7}, Le/k/a/c/l0/s/l;->b(Ljava/lang/Class;Le/k/a/c/n;)Le/k/a/c/l0/s/l;

    move-result-object v6

    if-eq v4, v6, :cond_6

    .line 20
    iput-object v6, p0, Le/k/a/c/l0/t/d0;->i:Le/k/a/c/l0/s/l;

    .line 21
    :cond_6
    invoke-virtual {v7, v5, p2, p3, v1}, Le/k/a/c/n;->g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_4

    :cond_7
    return-void

    :catch_2
    move-exception p1

    move-object v5, v3

    .line 22
    :goto_4
    invoke-virtual {p0, p3, p1, v5, v2}, Le/k/a/c/l0/t/q0;->n(Le/k/a/c/a0;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    throw v3

    .line 23
    :cond_8
    :try_start_3
    iget-object v1, p0, Le/k/a/c/l0/t/d0;->i:Le/k/a/c/l0/s/l;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-object v4, v3

    :goto_5
    if-ge v2, v0, :cond_d

    .line 24
    :try_start_4
    aget-object v4, p1, v2

    if-nez v4, :cond_9

    .line 25
    invoke-virtual {p3, p2}, Le/k/a/c/a0;->t(Le/k/a/b/g;)V

    goto :goto_7

    .line 26
    :cond_9
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 27
    invoke-virtual {v1, v5}, Le/k/a/c/l0/s/l;->c(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v6

    if-nez v6, :cond_c

    .line 28
    iget-object v6, p0, Le/k/a/c/l0/t/d0;->f:Le/k/a/c/i;

    invoke-virtual {v6}, Le/k/a/c/i;->s()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 29
    iget-object v6, p0, Le/k/a/c/l0/t/d0;->f:Le/k/a/c/i;

    .line 30
    invoke-virtual {p3, v6, v5}, Le/k/a/c/a0;->s(Le/k/a/c/i;Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object v5

    .line 31
    iget-object v6, p0, Le/k/a/c/l0/t/a;->c:Le/k/a/c/d;

    invoke-virtual {v1, v5, p3, v6}, Le/k/a/c/l0/s/l;->a(Le/k/a/c/i;Le/k/a/c/a0;Le/k/a/c/d;)Le/k/a/c/l0/s/l$d;

    move-result-object v5

    .line 32
    iget-object v6, v5, Le/k/a/c/l0/s/l$d;->b:Le/k/a/c/l0/s/l;

    if-eq v1, v6, :cond_a

    .line 33
    iput-object v6, p0, Le/k/a/c/l0/t/d0;->i:Le/k/a/c/l0/s/l;

    .line 34
    :cond_a
    iget-object v6, v5, Le/k/a/c/l0/s/l$d;->a:Le/k/a/c/n;

    goto :goto_6

    .line 35
    :cond_b
    iget-object v6, p0, Le/k/a/c/l0/t/a;->c:Le/k/a/c/d;

    .line 36
    invoke-virtual {p3, v5, v6}, Le/k/a/c/a0;->v(Ljava/lang/Class;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object v6

    .line 37
    invoke-virtual {v1, v5, v6}, Le/k/a/c/l0/s/l;->b(Ljava/lang/Class;Le/k/a/c/n;)Le/k/a/c/l0/s/l;

    move-result-object v5

    if-eq v1, v5, :cond_c

    .line 38
    iput-object v5, p0, Le/k/a/c/l0/t/d0;->i:Le/k/a/c/l0/s/l;

    .line 39
    :cond_c
    :goto_6
    invoke-virtual {v6, v4, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :catch_3
    move-exception p1

    goto :goto_8

    :cond_d
    return-void

    :catch_4
    move-exception p1

    move-object v4, v3

    .line 40
    :goto_8
    invoke-virtual {p0, p3, p1, v4, v2}, Le/k/a/c/l0/t/q0;->n(Le/k/a/c/a0;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    throw v3
.end method
