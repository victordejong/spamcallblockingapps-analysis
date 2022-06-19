.class public Le/k/a/c/d0/z/l;
.super Le/k/a/c/d0/z/i;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/d0/i;
.implements Le/k/a/c/d0/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/d0/z/i<",
        "Ljava/util/EnumMap<",
        "**>;>;",
        "Le/k/a/c/d0/i;",
        "Le/k/a/c/d0/s;"
    }
.end annotation


# instance fields
.field public final h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public i:Le/k/a/c/o;

.field public j:Le/k/a/c/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Le/k/a/c/j0/e;

.field public final l:Le/k/a/c/d0/w;

.field public m:Le/k/a/c/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public n:Le/k/a/c/d0/y/y;


# direct methods
.method public constructor <init>(Le/k/a/c/d0/z/l;Le/k/a/c/o;Le/k/a/c/j;Le/k/a/c/j0/e;Le/k/a/c/d0/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/d0/z/l;",
            "Le/k/a/c/o;",
            "Le/k/a/c/j<",
            "*>;",
            "Le/k/a/c/j0/e;",
            "Le/k/a/c/d0/r;",
            ")V"
        }
    .end annotation

    .line 10
    iget-object v0, p1, Le/k/a/c/d0/z/i;->g:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p5, v0}, Le/k/a/c/d0/z/i;-><init>(Le/k/a/c/d0/z/i;Le/k/a/c/d0/r;Ljava/lang/Boolean;)V

    .line 11
    iget-object p5, p1, Le/k/a/c/d0/z/l;->h:Ljava/lang/Class;

    iput-object p5, p0, Le/k/a/c/d0/z/l;->h:Ljava/lang/Class;

    .line 12
    iput-object p2, p0, Le/k/a/c/d0/z/l;->i:Le/k/a/c/o;

    .line 13
    iput-object p3, p0, Le/k/a/c/d0/z/l;->j:Le/k/a/c/j;

    .line 14
    iput-object p4, p0, Le/k/a/c/d0/z/l;->k:Le/k/a/c/j0/e;

    .line 15
    iget-object p2, p1, Le/k/a/c/d0/z/l;->l:Le/k/a/c/d0/w;

    iput-object p2, p0, Le/k/a/c/d0/z/l;->l:Le/k/a/c/d0/w;

    .line 16
    iget-object p2, p1, Le/k/a/c/d0/z/l;->m:Le/k/a/c/j;

    iput-object p2, p0, Le/k/a/c/d0/z/l;->m:Le/k/a/c/j;

    .line 17
    iget-object p1, p1, Le/k/a/c/d0/z/l;->n:Le/k/a/c/d0/y/y;

    iput-object p1, p0, Le/k/a/c/d0/z/l;->n:Le/k/a/c/d0/y/y;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/i;Le/k/a/c/d0/w;Le/k/a/c/o;Le/k/a/c/j;Le/k/a/c/j0/e;Le/k/a/c/d0/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/i;",
            "Le/k/a/c/d0/w;",
            "Le/k/a/c/o;",
            "Le/k/a/c/j<",
            "*>;",
            "Le/k/a/c/j0/e;",
            "Le/k/a/c/d0/r;",
            ")V"
        }
    .end annotation

    const/4 p3, 0x0

    .line 1
    invoke-direct {p0, p1, p3, p3}, Le/k/a/c/d0/z/i;-><init>(Le/k/a/c/i;Le/k/a/c/d0/r;Ljava/lang/Boolean;)V

    .line 2
    check-cast p1, Le/k/a/c/m0/g;

    .line 3
    iget-object p1, p1, Le/k/a/c/m0/g;->j:Le/k/a/c/i;

    .line 4
    iget-object p1, p1, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Le/k/a/c/d0/z/l;->h:Ljava/lang/Class;

    .line 6
    iput-object p3, p0, Le/k/a/c/d0/z/l;->i:Le/k/a/c/o;

    .line 7
    iput-object p4, p0, Le/k/a/c/d0/z/l;->j:Le/k/a/c/j;

    .line 8
    iput-object p5, p0, Le/k/a/c/d0/z/l;->k:Le/k/a/c/j0/e;

    .line 9
    iput-object p2, p0, Le/k/a/c/d0/z/l;->l:Le/k/a/c/d0/w;

    return-void
.end method


# virtual methods
.method public a(Le/k/a/c/g;Le/k/a/c/d;)Le/k/a/c/j;
    .locals 7
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
    iget-object v0, p0, Le/k/a/c/d0/z/l;->i:Le/k/a/c/o;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/k/a/c/d0/z/i;->d:Le/k/a/c/i;

    invoke-virtual {v0}, Le/k/a/c/i;->o()Le/k/a/c/i;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Le/k/a/c/g;->u(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/o;

    move-result-object v0

    :cond_0
    move-object v3, v0

    .line 3
    iget-object v0, p0, Le/k/a/c/d0/z/l;->j:Le/k/a/c/j;

    .line 4
    iget-object v1, p0, Le/k/a/c/d0/z/i;->d:Le/k/a/c/i;

    invoke-virtual {v1}, Le/k/a/c/i;->k()Le/k/a/c/i;

    move-result-object v1

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p1, v1, p2}, Le/k/a/c/g;->s(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/j;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1, v0, p2, v1}, Le/k/a/c/g;->G(Le/k/a/c/j;Le/k/a/c/d;Le/k/a/c/i;)Le/k/a/c/j;

    move-result-object v0

    :goto_0
    move-object v4, v0

    .line 7
    iget-object v0, p0, Le/k/a/c/d0/z/l;->k:Le/k/a/c/j0/e;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, p2}, Le/k/a/c/j0/e;->f(Le/k/a/c/d;)Le/k/a/c/j0/e;

    move-result-object v0

    :cond_2
    move-object v5, v0

    .line 9
    invoke-virtual {p0, p1, p2, v4}, Le/k/a/c/d0/z/b0;->f0(Le/k/a/c/g;Le/k/a/c/d;Le/k/a/c/j;)Le/k/a/c/d0/r;

    move-result-object v6

    .line 10
    iget-object p1, p0, Le/k/a/c/d0/z/l;->i:Le/k/a/c/o;

    if-ne v3, p1, :cond_3

    iget-object p1, p0, Le/k/a/c/d0/z/i;->e:Le/k/a/c/d0/r;

    if-ne v6, p1, :cond_3

    iget-object p1, p0, Le/k/a/c/d0/z/l;->j:Le/k/a/c/j;

    if-ne v4, p1, :cond_3

    iget-object p1, p0, Le/k/a/c/d0/z/l;->k:Le/k/a/c/j0/e;

    if-ne v5, p1, :cond_3

    move-object p1, p0

    goto :goto_1

    .line 11
    :cond_3
    new-instance p1, Le/k/a/c/d0/z/l;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Le/k/a/c/d0/z/l;-><init>(Le/k/a/c/d0/z/l;Le/k/a/c/o;Le/k/a/c/j;Le/k/a/c/j0/e;Le/k/a/c/d0/r;)V

    :goto_1
    return-object p1
.end method

.method public b(Le/k/a/c/g;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/l;->l:Le/k/a/c/d0/w;

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Le/k/a/c/d0/w;->k()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Le/k/a/c/d0/z/l;->l:Le/k/a/c/d0/w;

    .line 4
    iget-object v5, p1, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 5
    invoke-virtual {v0, v5}, Le/k/a/c/d0/w;->B(Le/k/a/c/f;)Le/k/a/c/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1, v0, v4}, Le/k/a/c/g;->s(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/j;

    move-result-object p1

    .line 7
    iput-object p1, p0, Le/k/a/c/d0/z/l;->m:Le/k/a/c/j;

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Le/k/a/c/d0/z/i;->d:Le/k/a/c/i;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    iget-object v2, p0, Le/k/a/c/d0/z/l;->l:Le/k/a/c/d0/w;

    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "Invalid delegate-creator definition for %s: value instantiator (%s) returned true for \'canCreateUsingDelegate()\', but null for \'getDelegateType()\'"

    .line 10
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Le/k/a/c/g;->m(Le/k/a/c/i;Ljava/lang/String;)Ljava/lang/Object;

    throw v4

    .line 11
    :cond_1
    iget-object v0, p0, Le/k/a/c/d0/z/l;->l:Le/k/a/c/d0/w;

    invoke-virtual {v0}, Le/k/a/c/d0/w;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Le/k/a/c/d0/z/l;->l:Le/k/a/c/d0/w;

    .line 13
    iget-object v5, p1, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 14
    invoke-virtual {v0, v5}, Le/k/a/c/d0/w;->y(Le/k/a/c/f;)Le/k/a/c/i;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {p1, v0, v4}, Le/k/a/c/g;->s(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/j;

    move-result-object p1

    .line 16
    iput-object p1, p0, Le/k/a/c/d0/z/l;->m:Le/k/a/c/j;

    goto :goto_0

    .line 17
    :cond_2
    iget-object v0, p0, Le/k/a/c/d0/z/i;->d:Le/k/a/c/i;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    iget-object v2, p0, Le/k/a/c/d0/z/l;->l:Le/k/a/c/d0/w;

    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "Invalid delegate-creator definition for %s: value instantiator (%s) returned true for \'canCreateUsingArrayDelegate()\', but null for \'getArrayDelegateType()\'"

    .line 19
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Le/k/a/c/g;->m(Le/k/a/c/i;Ljava/lang/String;)Ljava/lang/Object;

    throw v4

    .line 20
    :cond_3
    iget-object v0, p0, Le/k/a/c/d0/z/l;->l:Le/k/a/c/d0/w;

    invoke-virtual {v0}, Le/k/a/c/d0/w;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    iget-object v0, p0, Le/k/a/c/d0/z/l;->l:Le/k/a/c/d0/w;

    .line 22
    iget-object v1, p1, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 23
    invoke-virtual {v0, v1}, Le/k/a/c/d0/w;->C(Le/k/a/c/f;)[Le/k/a/c/d0/u;

    move-result-object v0

    .line 24
    iget-object v1, p0, Le/k/a/c/d0/z/l;->l:Le/k/a/c/d0/w;

    sget-object v2, Le/k/a/c/p;->x:Le/k/a/c/p;

    .line 25
    invoke-virtual {p1, v2}, Le/k/a/c/g;->S(Le/k/a/c/p;)Z

    move-result v2

    .line 26
    invoke-static {p1, v1, v0, v2}, Le/k/a/c/d0/y/y;->b(Le/k/a/c/g;Le/k/a/c/d0/w;[Le/k/a/c/d0/u;Z)Le/k/a/c/d0/y/y;

    move-result-object p1

    iput-object p1, p0, Le/k/a/c/d0/z/l;->n:Le/k/a/c/d0/y/y;

    :cond_4
    :goto_0
    return-void
.end method

.method public d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/l;->n:Le/k/a/c/d0/y/y;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    .line 2
    new-instance v3, Le/k/a/c/d0/y/b0;

    iget v4, v0, Le/k/a/c/d0/y/y;->a:I

    invoke-direct {v3, p1, p2, v4, v2}, Le/k/a/c/d0/y/b0;-><init>(Le/k/a/b/j;Le/k/a/c/g;ILe/k/a/c/d0/y/v;)V

    .line 3
    invoke-virtual {p1}, Le/k/a/b/j;->Y1()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    invoke-virtual {p1}, Le/k/a/b/j;->b2()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 5
    :cond_0
    sget-object v4, Le/k/a/b/m;->n:Le/k/a/b/m;

    invoke-virtual {p1, v4}, Le/k/a/b/j;->O1(Le/k/a/b/m;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {p1}, Le/k/a/b/j;->k()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v2

    :goto_0
    if-eqz v4, :cond_9

    .line 7
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v5

    .line 8
    iget-object v6, v0, Le/k/a/c/d0/y/y;->c:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/k/a/c/d0/u;

    if-eqz v6, :cond_2

    .line 9
    invoke-virtual {v6, p1, p2}, Le/k/a/c/d0/u;->h(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Le/k/a/c/d0/y/b0;->b(Le/k/a/c/d0/u;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 10
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 11
    :try_start_0
    invoke-virtual {v0, p2, v3}, Le/k/a/c/d0/y/y;->a(Le/k/a/c/g;Le/k/a/c/d0/y/b0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EnumMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/d0/z/l;->p0(Le/k/a/b/j;Le/k/a/c/g;Ljava/util/EnumMap;)Ljava/util/EnumMap;

    goto/16 :goto_4

    :catch_0
    move-exception p1

    .line 13
    iget-object v0, p0, Le/k/a/c/d0/z/i;->d:Le/k/a/c/i;

    .line 14
    iget-object v0, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 15
    invoke-virtual {p0, p2, p1, v0, v4}, Le/k/a/c/d0/z/i;->n0(Le/k/a/c/g;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    throw v2

    .line 16
    :cond_2
    iget-object v6, p0, Le/k/a/c/d0/z/l;->i:Le/k/a/c/o;

    invoke-virtual {v6, v4, p2}, Le/k/a/c/o;->a(Ljava/lang/String;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Enum;

    if-nez v6, :cond_4

    .line 17
    sget-object v5, Le/k/a/c/h;->z:Le/k/a/c/h;

    invoke-virtual {p2, v5}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 18
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 19
    invoke-virtual {p1}, Le/k/a/b/j;->w2()Le/k/a/b/j;

    goto :goto_2

    .line 20
    :cond_3
    iget-object p1, p0, Le/k/a/c/d0/z/l;->h:Ljava/lang/Class;

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v3, p0, Le/k/a/c/d0/z/i;->d:Le/k/a/c/i;

    .line 21
    invoke-virtual {v3}, Le/k/a/c/i;->o()Le/k/a/c/i;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "value not one of declared Enum instance names for %s"

    .line 22
    invoke-virtual {p2, p1, v4, v1, v0}, Le/k/a/c/g;->N(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v2

    .line 23
    :cond_4
    :try_start_1
    sget-object v7, Le/k/a/b/m;->u:Le/k/a/b/m;

    if-ne v5, v7, :cond_6

    .line 24
    iget-boolean v5, p0, Le/k/a/c/d0/z/i;->f:Z

    if-eqz v5, :cond_5

    goto :goto_2

    .line 25
    :cond_5
    iget-object v5, p0, Le/k/a/c/d0/z/i;->e:Le/k/a/c/d0/r;

    invoke-interface {v5, p2}, Le/k/a/c/d0/r;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 26
    :cond_6
    iget-object v5, p0, Le/k/a/c/d0/z/l;->k:Le/k/a/c/j0/e;

    if-nez v5, :cond_7

    .line 27
    iget-object v5, p0, Le/k/a/c/d0/z/l;->j:Le/k/a/c/j;

    invoke-virtual {v5, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 28
    :cond_7
    iget-object v7, p0, Le/k/a/c/d0/z/l;->j:Le/k/a/c/j;

    invoke-virtual {v7, p1, p2, v5}, Le/k/a/c/j;->f(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/j0/e;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 29
    :goto_1
    new-instance v5, Le/k/a/c/d0/y/a0$b;

    iget-object v7, v3, Le/k/a/c/d0/y/b0;->h:Le/k/a/c/d0/y/a0;

    invoke-direct {v5, v7, v4, v6}, Le/k/a/c/d0/y/a0$b;-><init>(Le/k/a/c/d0/y/a0;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v5, v3, Le/k/a/c/d0/y/b0;->h:Le/k/a/c/d0/y/a0;

    .line 30
    :cond_8
    :goto_2
    invoke-virtual {p1}, Le/k/a/b/j;->b2()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :catch_1
    move-exception p1

    .line 31
    iget-object v0, p0, Le/k/a/c/d0/z/i;->d:Le/k/a/c/i;

    .line 32
    iget-object v0, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 33
    invoke-virtual {p0, p2, p1, v0, v4}, Le/k/a/c/d0/z/i;->n0(Le/k/a/c/g;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    throw v2

    .line 34
    :cond_9
    :try_start_2
    invoke-virtual {v0, p2, v3}, Le/k/a/c/d0/y/y;->a(Le/k/a/c/g;Le/k/a/c/d0/y/b0;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/EnumMap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 35
    iget-object v0, p0, Le/k/a/c/d0/z/i;->d:Le/k/a/c/i;

    .line 36
    iget-object v0, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 37
    invoke-virtual {p0, p2, p1, v0, v4}, Le/k/a/c/d0/z/i;->n0(Le/k/a/c/g;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    throw v2

    .line 38
    :cond_a
    iget-object v0, p0, Le/k/a/c/d0/z/l;->m:Le/k/a/c/j;

    if-eqz v0, :cond_b

    .line 39
    iget-object v1, p0, Le/k/a/c/d0/z/l;->l:Le/k/a/c/d0/w;

    .line 40
    invoke-virtual {v0, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    .line 41
    invoke-virtual {v1, p2, p1}, Le/k/a/c/d0/w;->w(Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/EnumMap;

    goto :goto_4

    .line 42
    :cond_b
    invoke-virtual {p1}, Le/k/a/b/j;->q()I

    move-result v0

    if-eq v0, v1, :cond_f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    const/4 v1, 0x5

    if-eq v0, v1, :cond_f

    const/4 v1, 0x6

    if-eq v0, v1, :cond_d

    .line 43
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->b:Le/k/a/c/i;

    if-eqz v0, :cond_c

    goto :goto_3

    .line 44
    :cond_c
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Le/k/a/c/g;->o(Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object v0

    .line 45
    :goto_3
    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->H(Le/k/a/c/i;Le/k/a/b/j;)Ljava/lang/Object;

    throw v2

    .line 46
    :cond_d
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->C(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/EnumMap;

    goto :goto_4

    .line 47
    :cond_e
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->A(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/EnumMap;

    goto :goto_4

    .line 48
    :cond_f
    invoke-virtual {p0, p2}, Le/k/a/c/d0/z/l;->o0(Le/k/a/c/g;)Ljava/util/EnumMap;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/d0/z/l;->p0(Le/k/a/b/j;Le/k/a/c/g;Ljava/util/EnumMap;)Ljava/util/EnumMap;

    :goto_4
    return-object v0
.end method

.method public bridge synthetic e(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p3, Ljava/util/EnumMap;

    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/d0/z/l;->p0(Le/k/a/b/j;Le/k/a/c/g;Ljava/util/EnumMap;)Ljava/util/EnumMap;

    return-object p3
.end method

.method public f(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/j0/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p3, p1, p2}, Le/k/a/c/j0/e;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i0()Le/k/a/c/d0/w;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/l;->l:Le/k/a/c/d0/w;

    return-object v0
.end method

.method public j(Le/k/a/c/g;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/c/d0/z/l;->o0(Le/k/a/c/g;)Ljava/util/EnumMap;

    move-result-object p1

    return-object p1
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
    iget-object v0, p0, Le/k/a/c/d0/z/l;->j:Le/k/a/c/j;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/l;->j:Le/k/a/c/j;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/k/a/c/d0/z/l;->i:Le/k/a/c/o;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/k/a/c/d0/z/l;->k:Le/k/a/c/j0/e;

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
    sget-object v0, Le/k/a/c/m0/f;->c:Le/k/a/c/m0/f;

    return-object v0
.end method

.method public o0(Le/k/a/c/g;)Ljava/util/EnumMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g;",
            ")",
            "Ljava/util/EnumMap<",
            "**>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/l;->l:Le/k/a/c/d0/w;

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Ljava/util/EnumMap;

    iget-object v0, p0, Le/k/a/c/d0/z/l;->h:Ljava/lang/Class;

    invoke-direct {p1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Le/k/a/c/d0/w;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Le/k/a/c/d0/z/l;->l:Le/k/a/c/d0/w;

    invoke-virtual {v0, p1}, Le/k/a/c/d0/w;->v(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EnumMap;

    return-object v0

    .line 5
    :cond_1
    iget-object v3, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    .line 6
    iget-object v4, p0, Le/k/a/c/d0/z/l;->l:Le/k/a/c/d0/w;

    const/4 v5, 0x0

    const-string v6, "no default constructor found"

    const/4 v0, 0x0

    new-array v7, v0, [Ljava/lang/Object;

    move-object v2, p1

    .line 7
    invoke-virtual/range {v2 .. v7}, Le/k/a/c/g;->E(Ljava/lang/Class;Le/k/a/c/d0/w;Le/k/a/b/j;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    throw v1

    :catch_0
    move-exception v0

    .line 8
    invoke-static {p1, v0}, Le/k/a/c/n0/g;->H(Le/k/a/c/g;Ljava/io/IOException;)Ljava/lang/Object;

    throw v1
.end method

.method public p0(Le/k/a/b/j;Le/k/a/c/g;Ljava/util/EnumMap;)Ljava/util/EnumMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/b/j;",
            "Le/k/a/c/g;",
            "Ljava/util/EnumMap;",
            ")",
            "Ljava/util/EnumMap<",
            "**>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p3}, Le/k/a/b/j;->t2(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Le/k/a/c/d0/z/l;->j:Le/k/a/c/j;

    .line 3
    iget-object v1, p0, Le/k/a/c/d0/z/l;->k:Le/k/a/c/j0/e;

    .line 4
    invoke-virtual {p1}, Le/k/a/b/j;->Y1()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p1}, Le/k/a/b/j;->b2()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Le/k/a/b/j;->l()Le/k/a/b/m;

    move-result-object v2

    .line 7
    sget-object v5, Le/k/a/b/m;->n:Le/k/a/b/m;

    if-eq v2, v5, :cond_2

    .line 8
    sget-object p1, Le/k/a/b/m;->k:Le/k/a/b/m;

    if-ne v2, p1, :cond_1

    return-object p3

    :cond_1
    new-array p1, v3, [Ljava/lang/Object;

    .line 9
    invoke-virtual {p2, p0, v5, v4, p1}, Le/k/a/c/g;->f0(Le/k/a/c/j;Le/k/a/b/m;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    .line 10
    :cond_2
    invoke-virtual {p1}, Le/k/a/b/j;->k()Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_8

    .line 11
    iget-object v5, p0, Le/k/a/c/d0/z/l;->i:Le/k/a/c/o;

    invoke-virtual {v5, v2, p2}, Le/k/a/c/o;->a(Ljava/lang/String;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Enum;

    .line 12
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v6

    if-nez v5, :cond_4

    .line 13
    sget-object v5, Le/k/a/c/h;->z:Le/k/a/c/h;

    invoke-virtual {p2, v5}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 14
    invoke-virtual {p1}, Le/k/a/b/j;->w2()Le/k/a/b/j;

    goto :goto_2

    .line 15
    :cond_3
    iget-object p1, p0, Le/k/a/c/d0/z/l;->h:Ljava/lang/Class;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    iget-object v0, p0, Le/k/a/c/d0/z/i;->d:Le/k/a/c/i;

    .line 16
    invoke-virtual {v0}, Le/k/a/c/i;->o()Le/k/a/c/i;

    move-result-object v0

    aput-object v0, p3, v3

    const-string v0, "value not one of declared Enum instance names for %s"

    .line 17
    invoke-virtual {p2, p1, v2, v0, p3}, Le/k/a/c/g;->N(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v4

    .line 18
    :cond_4
    :try_start_0
    sget-object v7, Le/k/a/b/m;->u:Le/k/a/b/m;

    if-ne v6, v7, :cond_6

    .line 19
    iget-boolean v6, p0, Le/k/a/c/d0/z/i;->f:Z

    if-eqz v6, :cond_5

    goto :goto_2

    .line 20
    :cond_5
    iget-object v6, p0, Le/k/a/c/d0/z/i;->e:Le/k/a/c/d0/r;

    invoke-interface {v6, p2}, Le/k/a/c/d0/r;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_6
    if-nez v1, :cond_7

    .line 21
    invoke-virtual {v0, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 22
    :cond_7
    invoke-virtual {v0, p1, p2, v1}, Le/k/a/c/j;->f(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/j0/e;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_1
    invoke-virtual {p3, v5, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :goto_2
    invoke-virtual {p1}, Le/k/a/b/j;->b2()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p0, p2, p1, p3, v2}, Le/k/a/c/d0/z/i;->n0(Le/k/a/c/g;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    throw v4

    :cond_8
    return-object p3
.end method
