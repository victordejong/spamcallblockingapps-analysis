.class public Le/k/a/c/l0/s/s;
.super Le/k/a/c/l0/c;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final u:Le/k/a/c/n0/s;


# direct methods
.method public constructor <init>(Le/k/a/c/l0/c;Le/k/a/c/n0/s;)V
    .locals 1

    .line 3
    iget-object v0, p1, Le/k/a/c/l0/c;->c:Le/k/a/b/w/i;

    invoke-direct {p0, p1, v0}, Le/k/a/c/l0/c;-><init>(Le/k/a/c/l0/c;Le/k/a/b/w/i;)V

    .line 4
    iput-object p2, p0, Le/k/a/c/l0/s/s;->u:Le/k/a/c/n0/s;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/l0/s/s;Le/k/a/c/n0/s;Le/k/a/b/w/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Le/k/a/c/l0/c;-><init>(Le/k/a/c/l0/c;Le/k/a/b/w/i;)V

    .line 2
    iput-object p2, p0, Le/k/a/c/l0/s/s;->u:Le/k/a/c/n0/s;

    return-void
.end method


# virtual methods
.method public b(Le/k/a/c/l0/s/l;Ljava/lang/Class;Le/k/a/c/a0;)Le/k/a/c/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/l0/s/l;",
            "Ljava/lang/Class<",
            "*>;",
            "Le/k/a/c/a0;",
            ")",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/k/a/c/l0/c;->g:Le/k/a/c/i;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p3, p1, p2}, Le/k/a/c/a0;->s(Le/k/a/c/i;Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object p1

    .line 3
    invoke-virtual {p3, p1, p0}, Le/k/a/c/a0;->C(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p3, p2, p0}, Le/k/a/c/a0;->D(Ljava/lang/Class;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object p1

    .line 5
    :goto_0
    iget-object p3, p0, Le/k/a/c/l0/s/s;->u:Le/k/a/c/n0/s;

    .line 6
    invoke-virtual {p1}, Le/k/a/c/n;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Le/k/a/c/l0/s/t;

    if-eqz v0, :cond_1

    .line 7
    move-object v0, p1

    check-cast v0, Le/k/a/c/l0/s/t;

    iget-object v0, v0, Le/k/a/c/l0/s/t;->l:Le/k/a/c/n0/s;

    .line 8
    new-instance v1, Le/k/a/c/n0/s$a;

    invoke-direct {v1, p3, v0}, Le/k/a/c/n0/s$a;-><init>(Le/k/a/c/n0/s;Le/k/a/c/n0/s;)V

    move-object p3, v1

    .line 9
    :cond_1
    invoke-virtual {p1, p3}, Le/k/a/c/n;->h(Le/k/a/c/n0/s;)Le/k/a/c/n;

    move-result-object p1

    .line 10
    iget-object p3, p0, Le/k/a/c/l0/c;->o:Le/k/a/c/l0/s/l;

    invoke-virtual {p3, p2, p1}, Le/k/a/c/l0/s/l;->b(Ljava/lang/Class;Le/k/a/c/n;)Le/k/a/c/l0/s/l;

    move-result-object p2

    iput-object p2, p0, Le/k/a/c/l0/c;->o:Le/k/a/c/l0/s/l;

    return-object p1
.end method

.method public i(Le/k/a/c/n;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/s/s;->u:Le/k/a/c/n0/s;

    .line 2
    invoke-virtual {p1}, Le/k/a/c/n;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Le/k/a/c/l0/s/t;

    if-eqz v1, :cond_0

    .line 3
    move-object v1, p1

    check-cast v1, Le/k/a/c/l0/s/t;

    iget-object v1, v1, Le/k/a/c/l0/s/t;->l:Le/k/a/c/n0/s;

    .line 4
    new-instance v2, Le/k/a/c/n0/s$a;

    invoke-direct {v2, v0, v1}, Le/k/a/c/n0/s$a;-><init>(Le/k/a/c/n0/s;Le/k/a/c/n0/s;)V

    move-object v0, v2

    .line 5
    :cond_0
    invoke-virtual {p1, v0}, Le/k/a/c/n;->h(Le/k/a/c/n0/s;)Le/k/a/c/n;

    move-result-object p1

    .line 6
    :cond_1
    invoke-super {p0, p1}, Le/k/a/c/l0/c;->i(Le/k/a/c/n;)V

    return-void
.end method

.method public j(Le/k/a/c/n0/s;)Le/k/a/c/l0/c;
    .locals 3

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/c;->c:Le/k/a/b/w/i;

    .line 2
    iget-object v0, v0, Le/k/a/b/w/i;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v0}, Le/k/a/c/n0/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Le/k/a/c/l0/s/s;->u:Le/k/a/c/n0/s;

    .line 5
    new-instance v2, Le/k/a/c/n0/s$a;

    invoke-direct {v2, p1, v1}, Le/k/a/c/n0/s$a;-><init>(Le/k/a/c/n0/s;Le/k/a/c/n0/s;)V

    .line 6
    new-instance p1, Le/k/a/b/w/i;

    invoke-direct {p1, v0}, Le/k/a/b/w/i;-><init>(Ljava/lang/String;)V

    .line 7
    new-instance v0, Le/k/a/c/l0/s/s;

    invoke-direct {v0, p0, v2, p1}, Le/k/a/c/l0/s/s;-><init>(Le/k/a/c/l0/s/s;Le/k/a/c/n0/s;Le/k/a/b/w/i;)V

    return-object v0
.end method

.method public l(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/c;->j:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/k/a/c/l0/c;->k:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, p0, Le/k/a/c/l0/c;->l:Le/k/a/c/n;

    if-nez v1, :cond_3

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 5
    iget-object v2, p0, Le/k/a/c/l0/c;->o:Le/k/a/c/l0/s/l;

    .line 6
    invoke-virtual {v2, v1}, Le/k/a/c/l0/s/l;->c(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v3

    if-nez v3, :cond_2

    .line 7
    invoke-virtual {p0, v2, v1, p3}, Le/k/a/c/l0/s/s;->b(Le/k/a/c/l0/s/l;Ljava/lang/Class;Le/k/a/c/a0;)Le/k/a/c/n;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v3

    .line 8
    :cond_3
    :goto_1
    iget-object v2, p0, Le/k/a/c/l0/c;->q:Ljava/lang/Object;

    if-eqz v2, :cond_5

    .line 9
    sget-object v3, Le/k/a/a/r$a;->d:Le/k/a/a/r$a;

    if-ne v3, v2, :cond_4

    .line 10
    invoke-virtual {v1, p3, v0}, Le/k/a/c/n;->d(Le/k/a/c/a0;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-void

    .line 11
    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-void

    :cond_5
    if-ne v0, p1, :cond_6

    .line 12
    invoke-virtual {p0, p2, p3, v1}, Le/k/a/c/l0/c;->g(Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/n;)Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    .line 13
    :cond_6
    invoke-virtual {v1}, Le/k/a/c/n;->e()Z

    move-result p1

    if-nez p1, :cond_7

    .line 14
    iget-object p1, p0, Le/k/a/c/l0/c;->c:Le/k/a/b/w/i;

    invoke-virtual {p2, p1}, Le/k/a/b/g;->z0(Le/k/a/b/p;)V

    .line 15
    :cond_7
    iget-object p1, p0, Le/k/a/c/l0/c;->n:Le/k/a/c/j0/h;

    if-nez p1, :cond_8

    .line 16
    invoke-virtual {v1, v0, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    goto :goto_2

    .line 17
    :cond_8
    invoke-virtual {v1, v0, p2, p3, p1}, Le/k/a/c/n;->g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V

    :goto_2
    return-void
.end method
