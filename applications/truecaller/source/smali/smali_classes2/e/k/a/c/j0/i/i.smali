.class public Le/k/a/c/j0/i/i;
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

.method public constructor <init>(Le/k/a/c/j0/i/i;Le/k/a/c/d;)V
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
    invoke-virtual {p0, p1, p2}, Le/k/a/c/j0/i/i;->p(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Le/k/a/c/j0/i/i;->p(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Le/k/a/c/j0/i/i;->p(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Le/k/a/c/j0/i/i;->p(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

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
    new-instance v0, Le/k/a/c/j0/i/i;

    invoke-direct {v0, p0, p1}, Le/k/a/c/j0/i/i;-><init>(Le/k/a/c/j0/i/i;Le/k/a/c/d;)V

    :goto_0
    return-object v0
.end method

.method public j()Le/k/a/a/e0$a;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/a/e0$a;->b:Le/k/a/a/e0$a;

    return-object v0
.end method

.method public p(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 6
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

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 6
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v0

    sget-object v4, Le/k/a/b/m;->n:Le/k/a/b/m;

    if-ne v0, v4, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Le/k/a/c/j0/i/q;->b:Le/k/a/c/i;

    const-string v0, "need JSON String that contains type id (for subtype of "

    .line 8
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Le/k/a/c/j0/i/q;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    .line 10
    invoke-virtual {p2, p1, v4, v0, v1}, Le/k/a/c/g;->e0(Le/k/a/c/i;Le/k/a/b/m;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 11
    :cond_2
    sget-object v4, Le/k/a/b/m;->n:Le/k/a/b/m;

    if-ne v0, v4, :cond_5

    .line 12
    :goto_0
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {p0, p2, v0}, Le/k/a/c/j0/i/q;->n(Le/k/a/c/g;Ljava/lang/String;)Le/k/a/c/j;

    move-result-object v4

    .line 14
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 15
    iget-boolean v5, p0, Le/k/a/c/j0/i/q;->f:Z

    if-eqz v5, :cond_3

    invoke-virtual {p1, v1}, Le/k/a/b/j;->O1(Le/k/a/b/m;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    new-instance v1, Le/k/a/c/n0/a0;

    invoke-direct {v1, v2, v3}, Le/k/a/c/n0/a0;-><init>(Le/k/a/b/n;Z)V

    .line 17
    invoke-virtual {v1}, Le/k/a/c/n0/a0;->M1()V

    .line 18
    iget-object v5, p0, Le/k/a/c/j0/i/q;->e:Ljava/lang/String;

    invoke-virtual {v1, v5}, Le/k/a/c/n0/a0;->B0(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v1, v0}, Le/k/a/c/n0/a0;->T1(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Le/k/a/b/j;->j()V

    .line 21
    invoke-virtual {v1, p1}, Le/k/a/c/n0/a0;->y2(Le/k/a/b/j;)Le/k/a/b/j;

    move-result-object v0

    invoke-static {v3, v0, p1}, Le/k/a/b/a0/k;->y2(ZLe/k/a/b/j;Le/k/a/b/j;)Le/k/a/b/a0/k;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Le/k/a/b/a0/k;->i2()Le/k/a/b/m;

    .line 23
    :cond_3
    invoke-virtual {v4, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v0

    .line 24
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object p1

    sget-object v1, Le/k/a/b/m;->k:Le/k/a/b/m;

    if-ne p1, v1, :cond_4

    return-object v0

    .line 25
    :cond_4
    iget-object p1, p0, Le/k/a/c/j0/i/q;->b:Le/k/a/c/i;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v3, "expected closing END_OBJECT after type information and deserialized value"

    .line 26
    invoke-virtual {p2, p1, v1, v3, v0}, Le/k/a/c/g;->e0(Le/k/a/c/i;Le/k/a/b/m;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 27
    :cond_5
    iget-object p1, p0, Le/k/a/c/j0/i/q;->b:Le/k/a/c/i;

    const-string v0, "need JSON Object to contain As.WRAPPER_OBJECT type information for class "

    .line 28
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 29
    invoke-virtual {p0}, Le/k/a/c/j0/i/q;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    .line 30
    invoke-virtual {p2, p1, v1, v0, v3}, Le/k/a/c/g;->e0(Le/k/a/c/i;Le/k/a/b/m;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method
