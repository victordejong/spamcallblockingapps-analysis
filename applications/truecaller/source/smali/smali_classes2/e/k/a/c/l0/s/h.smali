.class public Le/k/a/c/l0/s/h;
.super Le/k/a/c/l0/t/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/l0/t/b<",
        "Ljava/util/Iterator<",
        "*>;>;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# direct methods
.method public constructor <init>(Le/k/a/c/i;ZLe/k/a/c/j0/h;)V
    .locals 6

    .line 1
    const-class v1, Ljava/util/Iterator;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Le/k/a/c/l0/t/b;-><init>(Ljava/lang/Class;Le/k/a/c/i;ZLe/k/a/c/j0/h;Le/k/a/c/n;)V

    return-void
.end method

.method public constructor <init>(Le/k/a/c/l0/s/h;Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/l0/s/h;",
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
    check-cast p2, Ljava/util/Iterator;

    .line 2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/Iterator;

    .line 2
    invoke-virtual {p2, p1}, Le/k/a/b/g;->I1(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/l0/s/h;->t(Ljava/util/Iterator;Le/k/a/b/g;Le/k/a/c/a0;)V

    .line 4
    invoke-virtual {p2}, Le/k/a/b/g;->p0()V

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
    new-instance v6, Le/k/a/c/l0/s/h;

    iget-object v2, p0, Le/k/a/c/l0/t/b;->d:Le/k/a/c/d;

    iget-object v4, p0, Le/k/a/c/l0/t/b;->h:Le/k/a/c/n;

    iget-object v5, p0, Le/k/a/c/l0/t/b;->f:Ljava/lang/Boolean;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Le/k/a/c/l0/s/h;-><init>(Le/k/a/c/l0/s/h;Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Ljava/lang/Boolean;)V

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
    check-cast p1, Ljava/util/Iterator;

    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/l0/s/h;->t(Ljava/util/Iterator;Le/k/a/b/g;Le/k/a/c/a0;)V

    return-void
.end method

.method public s(Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Ljava/lang/Boolean;)Le/k/a/c/l0/t/b;
    .locals 7

    .line 1
    new-instance v6, Le/k/a/c/l0/s/h;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Le/k/a/c/l0/s/h;-><init>(Le/k/a/c/l0/s/h;Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Ljava/lang/Boolean;)V

    return-object v6
.end method

.method public t(Ljava/util/Iterator;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
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
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/k/a/c/l0/t/b;->h:Le/k/a/c/n;

    if-nez v0, :cond_7

    .line 3
    iget-object v1, p0, Le/k/a/c/l0/t/b;->g:Le/k/a/c/j0/h;

    .line 4
    iget-object v0, p0, Le/k/a/c/l0/t/b;->i:Le/k/a/c/l0/s/l;

    .line 5
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 6
    invoke-virtual {p3, p2}, Le/k/a/c/a0;->t(Le/k/a/b/g;)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 8
    invoke-virtual {v0, v3}, Le/k/a/c/l0/s/l;->c(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v4

    if-nez v4, :cond_5

    .line 9
    iget-object v4, p0, Le/k/a/c/l0/t/b;->c:Le/k/a/c/i;

    invoke-virtual {v4}, Le/k/a/c/i;->s()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 10
    iget-object v4, p0, Le/k/a/c/l0/t/b;->c:Le/k/a/c/i;

    .line 11
    invoke-virtual {p3, v4, v3}, Le/k/a/c/a0;->s(Le/k/a/c/i;Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object v3

    .line 12
    iget-object v4, p0, Le/k/a/c/l0/t/b;->d:Le/k/a/c/d;

    invoke-virtual {v0, v3, p3, v4}, Le/k/a/c/l0/s/l;->a(Le/k/a/c/i;Le/k/a/c/a0;Le/k/a/c/d;)Le/k/a/c/l0/s/l$d;

    move-result-object v3

    .line 13
    iget-object v4, v3, Le/k/a/c/l0/s/l$d;->b:Le/k/a/c/l0/s/l;

    if-eq v0, v4, :cond_3

    .line 14
    iput-object v4, p0, Le/k/a/c/l0/t/b;->i:Le/k/a/c/l0/s/l;

    .line 15
    :cond_3
    iget-object v0, v3, Le/k/a/c/l0/s/l$d;->a:Le/k/a/c/n;

    goto :goto_0

    .line 16
    :cond_4
    invoke-virtual {p0, v0, v3, p3}, Le/k/a/c/l0/t/b;->q(Le/k/a/c/l0/s/l;Ljava/lang/Class;Le/k/a/c/a0;)Le/k/a/c/n;

    move-result-object v0

    :goto_0
    move-object v4, v0

    .line 17
    iget-object v0, p0, Le/k/a/c/l0/t/b;->i:Le/k/a/c/l0/s/l;

    :cond_5
    if-nez v1, :cond_6

    .line 18
    invoke-virtual {v4, v2, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    goto :goto_1

    .line 19
    :cond_6
    invoke-virtual {v4, v2, p2, p3, v1}, Le/k/a/c/n;->g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V

    .line 20
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 21
    :cond_7
    iget-object v1, p0, Le/k/a/c/l0/t/b;->g:Le/k/a/c/j0/h;

    .line 22
    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_9

    .line 23
    invoke-virtual {p3, p2}, Le/k/a/c/a0;->t(Le/k/a/b/g;)V

    goto :goto_2

    :cond_9
    if-nez v1, :cond_a

    .line 24
    invoke-virtual {v0, v2, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    goto :goto_2

    .line 25
    :cond_a
    invoke-virtual {v0, v2, p2, p3, v1}, Le/k/a/c/n;->g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V

    .line 26
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_8

    return-void
.end method
