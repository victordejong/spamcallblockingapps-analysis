.class public Le/k/a/c/j0/i/a;
.super Le/k/a/c/j0/i/q;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Le/k/a/c/i;Le/k/a/c/j0/f;Ljava/lang/String;ZLe/k/a/c/i;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Le/k/a/c/j0/i/q;-><init>(Le/k/a/c/i;Le/k/a/c/j0/f;Ljava/lang/String;ZLe/k/a/c/i;)V

    return-void
.end method

.method public constructor <init>(Le/k/a/c/j0/i/a;Le/k/a/c/d;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Le/k/a/c/j0/i/q;-><init>(Le/k/a/c/j0/i/q;Le/k/a/c/d;)V

    return-void
.end method


# virtual methods
.method public b(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Le/k/a/c/j0/i/a;->p(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Le/k/a/c/j0/i/a;->p(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Le/k/a/c/j0/i/a;->p(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Le/k/a/c/j0/i/a;->p(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

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
    new-instance v0, Le/k/a/c/j0/i/a;

    invoke-direct {v0, p0, p1}, Le/k/a/c/j0/i/a;-><init>(Le/k/a/c/j0/i/a;Le/k/a/c/d;)V

    :goto_0
    return-object v0
.end method

.method public j()Le/k/a/a/e0$a;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/a/e0$a;->c:Le/k/a/a/e0$a;

    return-object v0
.end method

.method public p(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 7
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
    invoke-virtual {p1}, Le/k/a/b/j;->V1()Z

    move-result v0

    .line 5
    invoke-virtual {p1}, Le/k/a/b/j;->V1()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 6
    iget-object v1, p0, Le/k/a/c/j0/i/q;->d:Le/k/a/c/i;

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Le/k/a/c/j0/i/q;->a:Le/k/a/c/j0/f;

    invoke-interface {v1}, Le/k/a/c/j0/f;->f()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Le/k/a/c/j0/i/q;->b:Le/k/a/c/i;

    .line 9
    sget-object v0, Le/k/a/b/m;->l:Le/k/a/b/m;

    const-string v1, "need JSON Array to contain As.WRAPPER_ARRAY type information for class "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10
    invoke-virtual {p0}, Le/k/a/c/j0/i/q;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    .line 11
    invoke-virtual {p2, p1, v0, v1, v3}, Le/k/a/c/g;->e0(Le/k/a/c/i;Le/k/a/b/m;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 12
    :cond_2
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v1

    .line 13
    sget-object v4, Le/k/a/b/m;->p:Le/k/a/b/m;

    if-ne v1, v4, :cond_7

    .line 14
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 16
    :goto_0
    invoke-virtual {p0, p2, v1}, Le/k/a/c/j0/i/q;->n(Le/k/a/c/g;Ljava/lang/String;)Le/k/a/c/j;

    move-result-object v4

    .line 17
    iget-boolean v5, p0, Le/k/a/c/j0/i/q;->f:Z

    if-eqz v5, :cond_3

    .line 18
    invoke-virtual {p0}, Le/k/a/c/j0/i/a;->q()Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Le/k/a/b/m;->j:Le/k/a/b/m;

    .line 19
    invoke-virtual {p1, v5}, Le/k/a/b/j;->O1(Le/k/a/b/m;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 20
    new-instance v5, Le/k/a/c/n0/a0;

    invoke-direct {v5, v2, v3}, Le/k/a/c/n0/a0;-><init>(Le/k/a/b/n;Z)V

    .line 21
    invoke-virtual {v5}, Le/k/a/c/n0/a0;->M1()V

    .line 22
    iget-object v6, p0, Le/k/a/c/j0/i/q;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Le/k/a/c/n0/a0;->B0(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v5, v1}, Le/k/a/c/n0/a0;->T1(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Le/k/a/b/j;->j()V

    .line 25
    invoke-virtual {v5, p1}, Le/k/a/c/n0/a0;->y2(Le/k/a/b/j;)Le/k/a/b/j;

    move-result-object v1

    invoke-static {v3, v1, p1}, Le/k/a/b/a0/k;->y2(ZLe/k/a/b/j;Le/k/a/b/j;)Le/k/a/b/a0/k;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Le/k/a/b/a0/k;->i2()Le/k/a/b/m;

    :cond_3
    if-eqz v0, :cond_4

    .line 27
    invoke-virtual {p1}, Le/k/a/b/j;->l()Le/k/a/b/m;

    move-result-object v1

    sget-object v5, Le/k/a/b/m;->m:Le/k/a/b/m;

    if-ne v1, v5, :cond_4

    .line 28
    invoke-virtual {v4, p2}, Le/k/a/c/j;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 29
    :cond_4
    invoke-virtual {v4, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_6

    .line 30
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object p1

    sget-object v0, Le/k/a/b/m;->m:Le/k/a/b/m;

    if-ne p1, v0, :cond_5

    goto :goto_1

    .line 31
    :cond_5
    iget-object p1, p0, Le/k/a/c/j0/i/q;->b:Le/k/a/c/i;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "expected closing END_ARRAY after type information and deserialized value"

    .line 32
    invoke-virtual {p2, p1, v0, v3, v1}, Le/k/a/c/g;->e0(Le/k/a/c/i;Le/k/a/b/m;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_6
    :goto_1
    return-object v1

    .line 33
    :cond_7
    iget-object p1, p0, Le/k/a/c/j0/i/q;->b:Le/k/a/c/i;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 34
    invoke-virtual {p0}, Le/k/a/c/j0/i/q;->o()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "need JSON String that contains type id (for subtype of %s)"

    .line 35
    invoke-virtual {p2, p1, v4, v1, v0}, Le/k/a/c/g;->e0(Le/k/a/c/i;Le/k/a/b/m;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method public q()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
