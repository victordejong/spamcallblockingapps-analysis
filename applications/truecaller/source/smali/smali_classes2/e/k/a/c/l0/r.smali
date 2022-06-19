.class public abstract Le/k/a/c/l0/r;
.super Le/k/a/c/l0/c;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/k/a/c/l0/c;-><init>()V

    return-void
.end method

.method public constructor <init>(Le/k/a/c/g0/s;Le/k/a/c/n0/b;Le/k/a/c/i;Le/k/a/c/n;Le/k/a/c/j0/h;Le/k/a/c/i;Le/k/a/a/r$b;[Ljava/lang/Class;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g0/s;",
            "Le/k/a/c/n0/b;",
            "Le/k/a/c/i;",
            "Le/k/a/c/n<",
            "*>;",
            "Le/k/a/c/j0/h;",
            "Le/k/a/c/i;",
            "Le/k/a/a/r$b;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    move-object/from16 v0, p7

    .line 2
    sget-object v1, Le/k/a/a/r$a;->g:Le/k/a/a/r$a;

    sget-object v2, Le/k/a/a/r$a;->a:Le/k/a/a/r$a;

    invoke-virtual {p1}, Le/k/a/c/g0/s;->s()Le/k/a/c/g0/i;

    move-result-object v5

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v3, v0, Le/k/a/a/r$b;->a:Le/k/a/a/r$a;

    if-eq v3, v2, :cond_1

    if-eq v3, v1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x0

    :goto_1
    move v11, v3

    if-nez v0, :cond_2

    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    move-object v12, v0

    goto :goto_4

    .line 5
    :cond_2
    iget-object v0, v0, Le/k/a/a/r$b;->a:Le/k/a/a/r$a;

    if-eq v0, v2, :cond_4

    .line 6
    sget-object v2, Le/k/a/a/r$a;->b:Le/k/a/a/r$a;

    if-eq v0, v2, :cond_4

    if-ne v0, v1, :cond_3

    goto :goto_3

    .line 7
    :cond_3
    sget-object v0, Le/k/a/a/r$a;->d:Le/k/a/a/r$a;

    goto :goto_2

    :cond_4
    :goto_3
    const/4 v0, 0x0

    goto :goto_2

    :goto_4
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 8
    invoke-direct/range {v3 .. v13}, Le/k/a/c/l0/c;-><init>(Le/k/a/c/g0/s;Le/k/a/c/g0/i;Le/k/a/c/n0/b;Le/k/a/c/i;Le/k/a/c/n;Le/k/a/c/j0/h;Le/k/a/c/i;ZLjava/lang/Object;[Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/l0/r;->o(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    iget-object p1, p0, Le/k/a/c/l0/c;->m:Le/k/a/c/n;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Le/k/a/b/g;->D0()V

    :goto_0
    return-void

    .line 5
    :cond_1
    iget-object v1, p0, Le/k/a/c/l0/c;->l:Le/k/a/c/n;

    if-nez v1, :cond_3

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 7
    iget-object v2, p0, Le/k/a/c/l0/c;->o:Le/k/a/c/l0/s/l;

    .line 8
    invoke-virtual {v2, v1}, Le/k/a/c/l0/s/l;->c(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v3

    if-nez v3, :cond_2

    .line 9
    invoke-virtual {p0, v2, v1, p3}, Le/k/a/c/l0/c;->b(Le/k/a/c/l0/s/l;Ljava/lang/Class;Le/k/a/c/a0;)Le/k/a/c/n;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v3

    .line 10
    :cond_3
    :goto_1
    iget-object v2, p0, Le/k/a/c/l0/c;->q:Ljava/lang/Object;

    if-eqz v2, :cond_5

    .line 11
    sget-object v3, Le/k/a/a/r$a;->d:Le/k/a/a/r$a;

    if-ne v3, v2, :cond_4

    .line 12
    invoke-virtual {v1, p3, v0}, Le/k/a/c/n;->d(Le/k/a/c/a0;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 13
    invoke-virtual {p0, p2, p3}, Le/k/a/c/l0/c;->n(Le/k/a/b/g;Le/k/a/c/a0;)V

    return-void

    .line 14
    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 15
    invoke-virtual {p0, p2, p3}, Le/k/a/c/l0/c;->n(Le/k/a/b/g;Le/k/a/c/a0;)V

    return-void

    :cond_5
    if-ne v0, p1, :cond_6

    .line 16
    invoke-virtual {p0, p2, p3, v1}, Le/k/a/c/l0/c;->g(Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/n;)Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    .line 17
    :cond_6
    iget-object p1, p0, Le/k/a/c/l0/c;->n:Le/k/a/c/j0/h;

    if-nez p1, :cond_7

    .line 18
    invoke-virtual {v1, v0, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    goto :goto_2

    .line 19
    :cond_7
    invoke-virtual {v1, v0, p2, p3, p1}, Le/k/a/c/n;->g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V

    :goto_2
    return-void
.end method

.method public l(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/l0/r;->o(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    iget-object p1, p0, Le/k/a/c/l0/c;->m:Le/k/a/c/n;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Le/k/a/c/l0/c;->c:Le/k/a/b/w/i;

    invoke-virtual {p2, p1}, Le/k/a/b/g;->z0(Le/k/a/b/p;)V

    .line 4
    iget-object p1, p0, Le/k/a/c/l0/c;->m:Le/k/a/c/n;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    :cond_0
    return-void

    .line 5
    :cond_1
    iget-object v1, p0, Le/k/a/c/l0/c;->l:Le/k/a/c/n;

    if-nez v1, :cond_3

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 7
    iget-object v2, p0, Le/k/a/c/l0/c;->o:Le/k/a/c/l0/s/l;

    .line 8
    invoke-virtual {v2, v1}, Le/k/a/c/l0/s/l;->c(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v3

    if-nez v3, :cond_2

    .line 9
    invoke-virtual {p0, v2, v1, p3}, Le/k/a/c/l0/c;->b(Le/k/a/c/l0/s/l;Ljava/lang/Class;Le/k/a/c/a0;)Le/k/a/c/n;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v3

    .line 10
    :cond_3
    :goto_0
    iget-object v2, p0, Le/k/a/c/l0/c;->q:Ljava/lang/Object;

    if-eqz v2, :cond_5

    .line 11
    sget-object v3, Le/k/a/a/r$a;->d:Le/k/a/a/r$a;

    if-ne v3, v2, :cond_4

    .line 12
    invoke-virtual {v1, p3, v0}, Le/k/a/c/n;->d(Le/k/a/c/a0;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-void

    .line 13
    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-void

    :cond_5
    if-ne v0, p1, :cond_6

    .line 14
    invoke-virtual {p0, p2, p3, v1}, Le/k/a/c/l0/c;->g(Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/n;)Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    .line 15
    :cond_6
    iget-object p1, p0, Le/k/a/c/l0/c;->c:Le/k/a/b/w/i;

    invoke-virtual {p2, p1}, Le/k/a/b/g;->z0(Le/k/a/b/p;)V

    .line 16
    iget-object p1, p0, Le/k/a/c/l0/c;->n:Le/k/a/c/j0/h;

    if-nez p1, :cond_7

    .line 17
    invoke-virtual {v1, v0, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    goto :goto_1

    .line 18
    :cond_7
    invoke-virtual {v1, v0, p2, p3, p1}, Le/k/a/c/n;->g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V

    :goto_1
    return-void
.end method

.method public abstract o(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract p(Le/k/a/c/c0/k;Le/k/a/c/g0/c;Le/k/a/c/g0/s;Le/k/a/c/i;)Le/k/a/c/l0/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Le/k/a/c/g0/c;",
            "Le/k/a/c/g0/s;",
            "Le/k/a/c/i;",
            ")",
            "Le/k/a/c/l0/r;"
        }
    .end annotation
.end method
