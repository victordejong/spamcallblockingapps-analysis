.class public Le/k/a/c/j0/i/g;
.super Le/k/a/c/j0/i/a;
.source "SourceFile"


# instance fields
.field public final i:Le/k/a/a/e0$a;

.field public final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/k/a/c/i;Le/k/a/c/j0/f;Ljava/lang/String;ZLe/k/a/c/i;Le/k/a/a/e0$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Le/k/a/c/j0/i/a;-><init>(Le/k/a/c/i;Le/k/a/c/j0/f;Ljava/lang/String;ZLe/k/a/c/i;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 2
    iget-object p2, p0, Le/k/a/c/j0/i/q;->e:Ljava/lang/String;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const-string p2, "missing type id property \'%s\'"

    .line 3
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iput-object p1, p0, Le/k/a/c/j0/i/g;->j:Ljava/lang/String;

    .line 5
    iput-object p6, p0, Le/k/a/c/j0/i/g;->i:Le/k/a/a/e0$a;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/j0/i/g;Le/k/a/c/d;)V
    .locals 4

    .line 6
    invoke-direct {p0, p1, p2}, Le/k/a/c/j0/i/a;-><init>(Le/k/a/c/j0/i/a;Le/k/a/c/d;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    new-array p2, v0, [Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Le/k/a/c/j0/i/q;->e:Ljava/lang/String;

    aput-object v0, p2, v1

    const-string v0, "missing type id property \'%s\'"

    .line 8
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Le/k/a/c/j0/i/q;->e:Ljava/lang/String;

    aput-object v3, v2, v1

    .line 9
    invoke-interface {p2}, Le/k/a/c/d;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v0

    const-string p2, "missing type id property \'%s\' (for POJO property \'%s\')"

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Le/k/a/c/j0/i/g;->j:Ljava/lang/String;

    .line 10
    iget-object p1, p1, Le/k/a/c/j0/i/g;->i:Le/k/a/a/e0$a;

    iput-object p1, p0, Le/k/a/c/j0/i/g;->i:Le/k/a/a/e0$a;

    return-void
.end method


# virtual methods
.method public b(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/m;->l:Le/k/a/b/m;

    invoke-virtual {p1, v0}, Le/k/a/b/j;->O1(Le/k/a/b/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Le/k/a/c/j0/i/a;->p(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Le/k/a/c/j0/i/g;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/b/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Le/k/a/b/j;->n1()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/j0/i/q;->l(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Le/k/a/b/j;->l()Le/k/a/b/m;

    move-result-object v0

    .line 5
    sget-object v1, Le/k/a/b/m;->j:Le/k/a/b/m;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 6
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_1
    sget-object v1, Le/k/a/b/m;->n:Le/k/a/b/m;

    if-eq v0, v1, :cond_2

    .line 8
    iget-object v0, p0, Le/k/a/c/j0/i/g;->j:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v2, v0}, Le/k/a/c/j0/i/g;->s(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/n0/a0;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    :goto_0
    sget-object v1, Le/k/a/c/p;->x:Le/k/a/c/p;

    invoke-virtual {p2, v1}, Le/k/a/c/g;->S(Le/k/a/c/p;)Z

    move-result v1

    .line 10
    :goto_1
    sget-object v3, Le/k/a/b/m;->n:Le/k/a/b/m;

    if-ne v0, v3, :cond_6

    .line 11
    invoke-virtual {p1}, Le/k/a/b/j;->k()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 13
    iget-object v3, p0, Le/k/a/c/j0/i/q;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v1, :cond_3

    iget-object v3, p0, Le/k/a/c/j0/i/q;->e:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    if-nez v2, :cond_4

    .line 15
    new-instance v2, Le/k/a/c/n0/a0;

    invoke-direct {v2, p1, p2}, Le/k/a/c/n0/a0;-><init>(Le/k/a/b/j;Le/k/a/c/g;)V

    .line 16
    :cond_4
    iget-object v3, v2, Le/k/a/c/n0/a0;->q:Le/k/a/b/x/f;

    invoke-virtual {v3, v0}, Le/k/a/b/x/f;->q(Ljava/lang/String;)I

    .line 17
    invoke-virtual {v2, v0}, Le/k/a/c/n0/a0;->h2(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v2, p1}, Le/k/a/c/n0/a0;->A2(Le/k/a/b/j;)V

    .line 19
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v0

    goto :goto_1

    .line 20
    :cond_5
    :goto_2
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v2, v0}, Le/k/a/c/j0/i/g;->r(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/n0/a0;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 21
    :cond_6
    iget-object v0, p0, Le/k/a/c/j0/i/g;->j:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v2, v0}, Le/k/a/c/j0/i/g;->s(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/n0/a0;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Le/k/a/c/d;)Le/k/a/c/j0/e;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/j0/i/q;->c:Le/k/a/c/d;

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Le/k/a/c/j0/i/g;

    invoke-direct {v0, p0, p1}, Le/k/a/c/j0/i/g;-><init>(Le/k/a/c/j0/i/g;Le/k/a/c/d;)V

    :goto_0
    return-object v0
.end method

.method public j()Le/k/a/a/e0$a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/j0/i/g;->i:Le/k/a/a/e0$a;

    return-object v0
.end method

.method public r(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/n0/a0;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2, p4}, Le/k/a/c/j0/i/q;->n(Le/k/a/c/g;Ljava/lang/String;)Le/k/a/c/j;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Le/k/a/c/j0/i/q;->f:Z

    if-eqz v1, :cond_1

    if-nez p3, :cond_0

    .line 3
    new-instance p3, Le/k/a/c/n0/a0;

    invoke-direct {p3, p1, p2}, Le/k/a/c/n0/a0;-><init>(Le/k/a/b/j;Le/k/a/c/g;)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Le/k/a/b/j;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Le/k/a/c/n0/a0;->B0(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p3, p4}, Le/k/a/c/n0/a0;->T1(Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_2

    .line 6
    invoke-virtual {p1}, Le/k/a/b/j;->j()V

    const/4 p4, 0x0

    .line 7
    invoke-virtual {p3, p1}, Le/k/a/c/n0/a0;->y2(Le/k/a/b/j;)Le/k/a/b/j;

    move-result-object p3

    invoke-static {p4, p3, p1}, Le/k/a/b/a0/k;->y2(ZLe/k/a/b/j;Le/k/a/b/j;)Le/k/a/b/a0/k;

    move-result-object p1

    .line 8
    :cond_2
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 9
    invoke-virtual {v0, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public s(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/n0/a0;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/j0/i/q;->d:Le/k/a/c/i;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Le/k/a/c/j0/i/q;->b:Le/k/a/c/i;

    invoke-static {p1, p2, v0}, Le/k/a/c/j0/e;->a(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/i;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 3
    :cond_1
    invoke-virtual {p1}, Le/k/a/b/j;->V1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0, p1, p2}, Le/k/a/c/j0/i/a;->p(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2
    sget-object v0, Le/k/a/b/m;->p:Le/k/a/b/m;

    invoke-virtual {p1, v0}, Le/k/a/b/j;->O1(Le/k/a/b/m;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    sget-object v0, Le/k/a/c/h;->v:Le/k/a/c/h;

    invoke-virtual {p2, v0}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v3

    .line 9
    :cond_3
    invoke-virtual {p0, p2}, Le/k/a/c/j0/i/q;->m(Le/k/a/c/g;)Le/k/a/c/j;

    move-result-object v0

    if-nez v0, :cond_5

    .line 10
    iget-object p1, p0, Le/k/a/c/j0/i/q;->b:Le/k/a/c/i;

    .line 11
    iget-object p3, p2, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 12
    iget-object p3, p3, Le/k/a/c/f;->l:Le/k/a/c/n0/n;

    :goto_1
    if-eqz p3, :cond_4

    .line 13
    iget-object v0, p3, Le/k/a/c/n0/n;->a:Ljava/lang/Object;

    .line 14
    check-cast v0, Le/k/a/c/d0/m;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p3, p3, Le/k/a/c/n0/n;->b:Le/k/a/c/n0/n;

    goto :goto_1

    :cond_4
    new-array p3, v1, [Ljava/lang/Object;

    aput-object p1, p3, v2

    const-string v0, "Could not resolve subtype of %s"

    .line 16
    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 17
    iget-object v0, p2, Le/k/a/c/g;->g:Le/k/a/b/j;

    invoke-virtual {p2, p3, p4}, Le/k/a/c/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 18
    new-instance p3, Le/k/a/c/e0/e;

    invoke-direct {p3, v0, p2, p1, v3}, Le/k/a/c/e0/e;-><init>(Le/k/a/b/j;Ljava/lang/String;Le/k/a/c/i;Ljava/lang/String;)V

    .line 19
    throw p3

    :cond_5
    if-eqz p3, :cond_6

    .line 20
    invoke-virtual {p3}, Le/k/a/c/n0/a0;->t0()V

    .line 21
    invoke-virtual {p3, p1}, Le/k/a/c/n0/a0;->y2(Le/k/a/b/j;)Le/k/a/b/j;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 23
    :cond_6
    invoke-virtual {v0, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
