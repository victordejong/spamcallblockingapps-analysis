.class public final Le/k/a/c/d0/z/h0;
.super Le/k/a/c/d0/z/i;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/d0/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/d0/z/i<",
        "Ljava/util/Collection<",
        "Ljava/lang/String;",
        ">;>;",
        "Le/k/a/c/d0/i;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# instance fields
.field public final h:Le/k/a/c/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/j<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Le/k/a/c/d0/w;

.field public final j:Le/k/a/c/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/k/a/c/i;Le/k/a/c/d0/w;Le/k/a/c/j;Le/k/a/c/j;Le/k/a/c/d0/r;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/i;",
            "Le/k/a/c/d0/w;",
            "Le/k/a/c/j<",
            "*>;",
            "Le/k/a/c/j<",
            "*>;",
            "Le/k/a/c/d0/r;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p5, p6}, Le/k/a/c/d0/z/i;-><init>(Le/k/a/c/i;Le/k/a/c/d0/r;Ljava/lang/Boolean;)V

    .line 6
    iput-object p4, p0, Le/k/a/c/d0/z/h0;->h:Le/k/a/c/j;

    .line 7
    iput-object p2, p0, Le/k/a/c/d0/z/h0;->i:Le/k/a/c/d0/w;

    .line 8
    iput-object p3, p0, Le/k/a/c/d0/z/h0;->j:Le/k/a/c/j;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/i;Le/k/a/c/j;Le/k/a/c/d0/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/i;",
            "Le/k/a/c/j<",
            "*>;",
            "Le/k/a/c/d0/w;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Le/k/a/c/d0/z/i;-><init>(Le/k/a/c/i;Le/k/a/c/d0/r;Ljava/lang/Boolean;)V

    .line 2
    iput-object p2, p0, Le/k/a/c/d0/z/h0;->h:Le/k/a/c/j;

    .line 3
    iput-object p3, p0, Le/k/a/c/d0/z/h0;->i:Le/k/a/c/d0/w;

    .line 4
    iput-object v0, p0, Le/k/a/c/d0/z/h0;->j:Le/k/a/c/j;

    return-void
.end method


# virtual methods
.method public a(Le/k/a/c/g;Le/k/a/c/d;)Le/k/a/c/j;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g;",
            "Le/k/a/c/d;",
            ")",
            "Le/k/a/c/j<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/h0;->i:Le/k/a/c/d0/w;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Le/k/a/c/d0/w;->x()Le/k/a/c/g0/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/k/a/c/d0/z/h0;->i:Le/k/a/c/d0/w;

    .line 4
    iget-object v2, p1, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 5
    invoke-virtual {v0, v2}, Le/k/a/c/d0/w;->y(Le/k/a/c/f;)Le/k/a/c/i;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v0, p2}, Le/k/a/c/g;->s(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/j;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Le/k/a/c/d0/z/h0;->i:Le/k/a/c/d0/w;

    invoke-virtual {v0}, Le/k/a/c/d0/w;->A()Le/k/a/c/g0/n;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Le/k/a/c/d0/z/h0;->i:Le/k/a/c/d0/w;

    .line 9
    iget-object v2, p1, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 10
    invoke-virtual {v0, v2}, Le/k/a/c/d0/w;->B(Le/k/a/c/f;)Le/k/a/c/i;

    move-result-object v0

    .line 11
    invoke-virtual {p1, v0, p2}, Le/k/a/c/g;->s(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/j;

    move-result-object v0

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, v1

    .line 12
    :goto_1
    iget-object v0, p0, Le/k/a/c/d0/z/h0;->h:Le/k/a/c/j;

    .line 13
    iget-object v2, p0, Le/k/a/c/d0/z/i;->d:Le/k/a/c/i;

    invoke-virtual {v2}, Le/k/a/c/i;->k()Le/k/a/c/i;

    move-result-object v2

    if-nez v0, :cond_2

    .line 14
    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/d0/z/b0;->g0(Le/k/a/c/g;Le/k/a/c/d;Le/k/a/c/j;)Le/k/a/c/j;

    move-result-object v0

    if-nez v0, :cond_3

    .line 15
    invoke-virtual {p1, v2, p2}, Le/k/a/c/g;->s(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/j;

    move-result-object v0

    goto :goto_2

    .line 16
    :cond_2
    invoke-virtual {p1, v0, p2, v2}, Le/k/a/c/g;->G(Le/k/a/c/j;Le/k/a/c/d;Le/k/a/c/i;)Le/k/a/c/j;

    move-result-object v0

    .line 17
    :cond_3
    :goto_2
    const-class v2, Ljava/util/Collection;

    sget-object v3, Le/k/a/a/k$a;->a:Le/k/a/a/k$a;

    .line 18
    invoke-virtual {p0, p1, p2, v2}, Le/k/a/c/d0/z/b0;->h0(Le/k/a/c/g;Le/k/a/c/d;Ljava/lang/Class;)Le/k/a/a/k$d;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 19
    invoke-virtual {v2, v3}, Le/k/a/a/k$d;->b(Le/k/a/a/k$a;)Ljava/lang/Boolean;

    move-result-object v2

    move-object v8, v2

    goto :goto_3

    :cond_4
    move-object v8, v1

    .line 20
    :goto_3
    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/d0/z/b0;->f0(Le/k/a/c/g;Le/k/a/c/d;Le/k/a/c/j;)Le/k/a/c/d0/r;

    move-result-object v7

    .line 21
    invoke-static {v0}, Le/k/a/c/n0/g;->y(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move-object v6, v1

    goto :goto_4

    :cond_5
    move-object v6, v0

    .line 22
    :goto_4
    iget-object p1, p0, Le/k/a/c/d0/z/i;->g:Ljava/lang/Boolean;

    invoke-static {p1, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Le/k/a/c/d0/z/i;->e:Le/k/a/c/d0/r;

    if-ne p1, v7, :cond_6

    iget-object p1, p0, Le/k/a/c/d0/z/h0;->h:Le/k/a/c/j;

    if-ne p1, v6, :cond_6

    iget-object p1, p0, Le/k/a/c/d0/z/h0;->j:Le/k/a/c/j;

    if-ne p1, v5, :cond_6

    move-object p1, p0

    goto :goto_5

    .line 23
    :cond_6
    new-instance p1, Le/k/a/c/d0/z/h0;

    iget-object v3, p0, Le/k/a/c/d0/z/i;->d:Le/k/a/c/i;

    iget-object v4, p0, Le/k/a/c/d0/z/h0;->i:Le/k/a/c/d0/w;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Le/k/a/c/d0/z/h0;-><init>(Le/k/a/c/i;Le/k/a/c/d0/w;Le/k/a/c/j;Le/k/a/c/j;Le/k/a/c/d0/r;Ljava/lang/Boolean;)V

    :goto_5
    return-object p1
.end method

.method public d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/h0;->j:Le/k/a/c/j;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/k/a/c/d0/z/h0;->i:Le/k/a/c/d0/w;

    .line 3
    invoke-virtual {v0, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-virtual {v1, p2, p1}, Le/k/a/c/d0/w;->w(Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Le/k/a/c/d0/z/h0;->i:Le/k/a/c/d0/w;

    invoke-virtual {v0, p2}, Le/k/a/c/d0/w;->v(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 6
    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/d0/z/h0;->o0(Le/k/a/b/j;Le/k/a/c/g;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic e(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p3, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/d0/z/h0;->o0(Le/k/a/b/j;Le/k/a/c/g;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public f(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/j0/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p3, p1, p2}, Le/k/a/c/j0/e;->c(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i0()Le/k/a/c/d0/w;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/h0;->i:Le/k/a/c/d0/w;

    return-object v0
.end method

.method public m0()Le/k/a/c/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/h0;->h:Le/k/a/c/j;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/h0;->h:Le/k/a/c/j;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/k/a/c/d0/z/h0;->j:Le/k/a/c/j;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()Le/k/a/c/m0/f;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/m0/f;->b:Le/k/a/c/m0/f;

    return-object v0
.end method

.method public o0(Le/k/a/b/j;Le/k/a/c/g;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/b/j;",
            "Le/k/a/c/g;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/b/j;->V1()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2
    iget-object v0, p0, Le/k/a/c/d0/z/i;->g:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    sget-object v0, Le/k/a/c/h;->s:Le/k/a/c/h;

    .line 3
    invoke-virtual {p2, v0}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    .line 4
    sget-object p3, Le/k/a/b/m;->p:Le/k/a/b/m;

    invoke-virtual {p1, p3}, Le/k/a/b/j;->O1(Le/k/a/b/m;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 5
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->C(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Ljava/util/Collection;

    goto :goto_3

    .line 6
    :cond_2
    iget-object p3, p0, Le/k/a/c/d0/z/i;->d:Le/k/a/c/i;

    invoke-virtual {p2, p3, p1}, Le/k/a/c/g;->H(Le/k/a/c/i;Le/k/a/b/j;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    .line 7
    :cond_3
    iget-object v0, p0, Le/k/a/c/d0/z/h0;->h:Le/k/a/c/j;

    .line 8
    invoke-virtual {p1}, Le/k/a/b/j;->l()Le/k/a/b/m;

    move-result-object v1

    .line 9
    sget-object v2, Le/k/a/b/m;->u:Le/k/a/b/m;

    if-ne v1, v2, :cond_5

    .line 10
    iget-boolean p1, p0, Le/k/a/c/d0/z/i;->f:Z

    if-eqz p1, :cond_4

    goto :goto_3

    .line 11
    :cond_4
    iget-object p1, p0, Le/k/a/c/d0/z/i;->e:Le/k/a/c/d0/r;

    invoke-interface {p1, p2}, Le/k/a/c/d0/r;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_2

    :cond_5
    if-nez v0, :cond_6

    .line 12
    :try_start_0
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->a0(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    invoke-virtual {v0, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :goto_2
    invoke-interface {p3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_3
    return-object p3

    :catch_0
    move-exception p1

    .line 14
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p2

    invoke-static {p1, p3, p2}, Le/k/a/c/k;->i(Ljava/lang/Throwable;Ljava/lang/Object;I)Le/k/a/c/k;

    move-result-object p1

    throw p1

    .line 15
    :cond_7
    iget-object v0, p0, Le/k/a/c/d0/z/h0;->h:Le/k/a/c/j;

    if-eqz v0, :cond_c

    .line 16
    :goto_4
    :try_start_1
    invoke-virtual {p1}, Le/k/a/b/j;->h2()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    .line 17
    invoke-virtual {p1}, Le/k/a/b/j;->l()Le/k/a/b/m;

    move-result-object v1

    .line 18
    sget-object v2, Le/k/a/b/m;->m:Le/k/a/b/m;

    if-ne v1, v2, :cond_8

    return-object p3

    .line 19
    :cond_8
    sget-object v2, Le/k/a/b/m;->u:Le/k/a/b/m;

    if-ne v1, v2, :cond_a

    .line 20
    iget-boolean v1, p0, Le/k/a/c/d0/z/i;->f:Z

    if-eqz v1, :cond_9

    goto :goto_4

    .line 21
    :cond_9
    iget-object v1, p0, Le/k/a/c/d0/z/i;->e:Le/k/a/c/d0/r;

    invoke-interface {v1, p2}, Le/k/a/c/d0/r;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_5

    .line 22
    :cond_a
    invoke-virtual {v0, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_5

    .line 23
    :cond_b
    invoke-virtual {v0, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 24
    :goto_5
    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 25
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p2

    invoke-static {p1, p3, p2}, Le/k/a/c/k;->i(Ljava/lang/Throwable;Ljava/lang/Object;I)Le/k/a/c/k;

    move-result-object p1

    throw p1

    .line 26
    :cond_c
    :goto_6
    :try_start_2
    invoke-virtual {p1}, Le/k/a/b/j;->h2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 27
    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 28
    :cond_d
    invoke-virtual {p1}, Le/k/a/b/j;->l()Le/k/a/b/m;

    move-result-object v0

    .line 29
    sget-object v1, Le/k/a/b/m;->m:Le/k/a/b/m;

    if-ne v0, v1, :cond_e

    return-object p3

    .line 30
    :cond_e
    sget-object v1, Le/k/a/b/m;->u:Le/k/a/b/m;

    if-ne v0, v1, :cond_10

    .line 31
    iget-boolean v0, p0, Le/k/a/c/d0/z/i;->f:Z

    if-eqz v0, :cond_f

    goto :goto_6

    .line 32
    :cond_f
    iget-object v0, p0, Le/k/a/c/d0/z/i;->e:Le/k/a/c/d0/r;

    invoke-interface {v0, p2}, Le/k/a/c/d0/r;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_7

    .line 33
    :cond_10
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->a0(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/String;

    move-result-object v0

    .line 34
    :goto_7
    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception p1

    .line 35
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p2

    invoke-static {p1, p3, p2}, Le/k/a/c/k;->i(Ljava/lang/Throwable;Ljava/lang/Object;I)Le/k/a/c/k;

    move-result-object p1

    throw p1
.end method
