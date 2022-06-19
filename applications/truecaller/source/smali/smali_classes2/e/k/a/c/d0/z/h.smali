.class public Le/k/a/c/d0/z/h;
.super Le/k/a/c/d0/z/i;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/d0/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/c/d0/z/h$a;,
        Le/k/a/c/d0/z/h$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/d0/z/i<",
        "Ljava/util/Collection<",
        "Ljava/lang/Object;",
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
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Le/k/a/c/j0/e;

.field public final j:Le/k/a/c/d0/w;

.field public final k:Le/k/a/c/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/k/a/c/i;Le/k/a/c/j;Le/k/a/c/j0/e;Le/k/a/c/d0/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/i;",
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;",
            "Le/k/a/c/j0/e;",
            "Le/k/a/c/d0/w;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Le/k/a/c/d0/z/i;-><init>(Le/k/a/c/i;Le/k/a/c/d0/r;Ljava/lang/Boolean;)V

    .line 2
    iput-object p2, p0, Le/k/a/c/d0/z/h;->h:Le/k/a/c/j;

    .line 3
    iput-object p3, p0, Le/k/a/c/d0/z/h;->i:Le/k/a/c/j0/e;

    .line 4
    iput-object p4, p0, Le/k/a/c/d0/z/h;->j:Le/k/a/c/d0/w;

    .line 5
    iput-object v0, p0, Le/k/a/c/d0/z/h;->k:Le/k/a/c/j;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/i;Le/k/a/c/j;Le/k/a/c/j0/e;Le/k/a/c/d0/w;Le/k/a/c/j;Le/k/a/c/d0/r;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/i;",
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;",
            "Le/k/a/c/j0/e;",
            "Le/k/a/c/d0/w;",
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;",
            "Le/k/a/c/d0/r;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p6, p7}, Le/k/a/c/d0/z/i;-><init>(Le/k/a/c/i;Le/k/a/c/d0/r;Ljava/lang/Boolean;)V

    .line 7
    iput-object p2, p0, Le/k/a/c/d0/z/h;->h:Le/k/a/c/j;

    .line 8
    iput-object p3, p0, Le/k/a/c/d0/z/h;->i:Le/k/a/c/j0/e;

    .line 9
    iput-object p4, p0, Le/k/a/c/d0/z/h;->j:Le/k/a/c/d0/w;

    .line 10
    iput-object p5, p0, Le/k/a/c/d0/z/h;->k:Le/k/a/c/j;

    return-void
.end method


# virtual methods
.method public a(Le/k/a/c/g;Le/k/a/c/d;)Le/k/a/c/j;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/h;->j:Le/k/a/c/d0/w;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Le/k/a/c/d0/w;->k()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Le/k/a/c/d0/z/h;->j:Le/k/a/c/d0/w;

    .line 4
    iget-object v5, p1, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 5
    invoke-virtual {v0, v5}, Le/k/a/c/d0/w;->B(Le/k/a/c/f;)Le/k/a/c/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1, v0, p2}, Le/k/a/c/g;->s(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/j;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Le/k/a/c/d0/z/i;->d:Le/k/a/c/i;

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v3

    iget-object v3, p0, Le/k/a/c/d0/z/h;->j:Le/k/a/c/d0/w;

    .line 8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "Invalid delegate-creator definition for %s: value instantiator (%s) returned true for \'canCreateUsingDelegate()\', but null for \'getDelegateType()\'"

    .line 9
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Le/k/a/c/g;->m(Le/k/a/c/i;Ljava/lang/String;)Ljava/lang/Object;

    throw v1

    .line 10
    :cond_1
    iget-object v0, p0, Le/k/a/c/d0/z/h;->j:Le/k/a/c/d0/w;

    invoke-virtual {v0}, Le/k/a/c/d0/w;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Le/k/a/c/d0/z/h;->j:Le/k/a/c/d0/w;

    .line 12
    iget-object v5, p1, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 13
    invoke-virtual {v0, v5}, Le/k/a/c/d0/w;->y(Le/k/a/c/f;)Le/k/a/c/i;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1, v0, p2}, Le/k/a/c/g;->s(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/j;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    .line 15
    :cond_2
    iget-object p2, p0, Le/k/a/c/d0/z/i;->d:Le/k/a/c/i;

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v3

    iget-object v3, p0, Le/k/a/c/d0/z/h;->j:Le/k/a/c/d0/w;

    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "Invalid delegate-creator definition for %s: value instantiator (%s) returned true for \'canCreateUsingArrayDelegate()\', but null for \'getArrayDelegateType()\'"

    .line 17
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Le/k/a/c/g;->m(Le/k/a/c/i;Ljava/lang/String;)Ljava/lang/Object;

    throw v1

    :cond_3
    move-object v3, v1

    .line 18
    :goto_1
    const-class v0, Ljava/util/Collection;

    sget-object v2, Le/k/a/a/k$a;->a:Le/k/a/a/k$a;

    .line 19
    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/d0/z/b0;->h0(Le/k/a/c/g;Le/k/a/c/d;Ljava/lang/Class;)Le/k/a/a/k$d;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 20
    invoke-virtual {v0, v2}, Le/k/a/a/k$d;->b(Le/k/a/a/k$a;)Ljava/lang/Boolean;

    move-result-object v1

    :cond_4
    move-object v7, v1

    .line 21
    iget-object v0, p0, Le/k/a/c/d0/z/h;->h:Le/k/a/c/j;

    .line 22
    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/d0/z/b0;->g0(Le/k/a/c/g;Le/k/a/c/d;Le/k/a/c/j;)Le/k/a/c/j;

    move-result-object v0

    .line 23
    iget-object v1, p0, Le/k/a/c/d0/z/i;->d:Le/k/a/c/i;

    invoke-virtual {v1}, Le/k/a/c/i;->k()Le/k/a/c/i;

    move-result-object v1

    if-nez v0, :cond_5

    .line 24
    invoke-virtual {p1, v1, p2}, Le/k/a/c/g;->s(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/j;

    move-result-object v0

    goto :goto_2

    .line 25
    :cond_5
    invoke-virtual {p1, v0, p2, v1}, Le/k/a/c/g;->G(Le/k/a/c/j;Le/k/a/c/d;Le/k/a/c/i;)Le/k/a/c/j;

    move-result-object v0

    :goto_2
    move-object v4, v0

    .line 26
    iget-object v0, p0, Le/k/a/c/d0/z/h;->i:Le/k/a/c/j0/e;

    if-eqz v0, :cond_6

    .line 27
    invoke-virtual {v0, p2}, Le/k/a/c/j0/e;->f(Le/k/a/c/d;)Le/k/a/c/j0/e;

    move-result-object v0

    :cond_6
    move-object v5, v0

    .line 28
    invoke-virtual {p0, p1, p2, v4}, Le/k/a/c/d0/z/b0;->f0(Le/k/a/c/g;Le/k/a/c/d;Le/k/a/c/j;)Le/k/a/c/d0/r;

    move-result-object v6

    .line 29
    iget-object p1, p0, Le/k/a/c/d0/z/i;->g:Ljava/lang/Boolean;

    invoke-static {v7, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Le/k/a/c/d0/z/i;->e:Le/k/a/c/d0/r;

    if-ne v6, p1, :cond_8

    iget-object p1, p0, Le/k/a/c/d0/z/h;->k:Le/k/a/c/j;

    if-ne v3, p1, :cond_8

    iget-object p1, p0, Le/k/a/c/d0/z/h;->h:Le/k/a/c/j;

    if-ne v4, p1, :cond_8

    iget-object p1, p0, Le/k/a/c/d0/z/h;->i:Le/k/a/c/j0/e;

    if-eq v5, p1, :cond_7

    goto :goto_3

    :cond_7
    move-object p1, p0

    goto :goto_4

    :cond_8
    :goto_3
    move-object v2, p0

    .line 30
    invoke-virtual/range {v2 .. v7}, Le/k/a/c/d0/z/h;->r0(Le/k/a/c/j;Le/k/a/c/j;Le/k/a/c/j0/e;Le/k/a/c/d0/r;Ljava/lang/Boolean;)Le/k/a/c/d0/z/h;

    move-result-object p1

    :goto_4
    return-object p1
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
    iget-object v0, p0, Le/k/a/c/d0/z/h;->k:Le/k/a/c/j;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/k/a/c/d0/z/h;->j:Le/k/a/c/d0/w;

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
    invoke-virtual {p1}, Le/k/a/b/j;->V1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, p2}, Le/k/a/c/d0/z/h;->p0(Le/k/a/c/g;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/d0/z/h;->o0(Le/k/a/b/j;Le/k/a/c/g;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Le/k/a/b/m;->p:Le/k/a/b/m;

    invoke-virtual {p1, v0}, Le/k/a/b/j;->O1(Le/k/a/b/m;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object v5

    .line 9
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    .line 10
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    sget-object v1, Le/k/a/c/m0/f;->b:Le/k/a/c/m0/f;

    sget-object v2, Le/k/a/c/c0/d;->j:Le/k/a/c/c0/d;

    invoke-virtual {p2, v1, v0, v2}, Le/k/a/c/g;->q(Le/k/a/c/m0/f;Ljava/lang/Class;Le/k/a/c/c0/d;)Le/k/a/c/c0/b;

    move-result-object v7

    const-string v6, "empty String (\"\")"

    move-object v1, p0

    move-object v2, p2

    move-object v3, v7

    move-object v4, v0

    .line 12
    invoke-virtual/range {v1 .. v6}, Le/k/a/c/d0/z/b0;->r(Le/k/a/c/g;Le/k/a/c/c0/b;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Le/k/a/c/c0/b;

    if-eqz v7, :cond_2

    .line 13
    invoke-virtual {p0, p2, v7, v0}, Le/k/a/c/d0/z/b0;->B(Le/k/a/c/g;Le/k/a/c/c0/b;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p0, p2}, Le/k/a/c/d0/z/h;->p0(Le/k/a/c/g;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/d0/z/h;->q0(Le/k/a/b/j;Le/k/a/c/g;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {p0, p2}, Le/k/a/c/d0/z/h;->p0(Le/k/a/c/g;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/d0/z/h;->q0(Le/k/a/b/j;Le/k/a/c/g;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public e(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p3, Ljava/util/Collection;

    .line 2
    invoke-virtual {p1}, Le/k/a/b/j;->V1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/d0/z/h;->o0(Le/k/a/b/j;Le/k/a/c/g;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/d0/z/h;->q0(Le/k/a/b/j;Le/k/a/c/g;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    :goto_0
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
    iget-object v0, p0, Le/k/a/c/d0/z/h;->j:Le/k/a/c/d0/w;

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
    iget-object v0, p0, Le/k/a/c/d0/z/h;->h:Le/k/a/c/j;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/h;->h:Le/k/a/c/j;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/k/a/c/d0/z/h;->i:Le/k/a/c/j0/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/k/a/c/d0/z/h;->k:Le/k/a/c/j;

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
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/b/j;",
            "Le/k/a/c/g;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
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
    iget-object v0, p0, Le/k/a/c/d0/z/h;->h:Le/k/a/c/j;

    .line 3
    invoke-virtual {v0}, Le/k/a/c/j;->l()Le/k/a/c/d0/y/v;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_8

    .line 4
    invoke-virtual {p1}, Le/k/a/b/j;->V1()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/d0/z/h;->q0(Le/k/a/b/j;Le/k/a/c/g;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p3

    goto :goto_2

    .line 6
    :cond_0
    invoke-virtual {p1, p3}, Le/k/a/b/j;->t2(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Le/k/a/c/d0/z/h;->h:Le/k/a/c/j;

    .line 8
    iget-object v1, p0, Le/k/a/c/d0/z/h;->i:Le/k/a/c/j0/e;

    .line 9
    new-instance v4, Le/k/a/c/d0/z/h$b;

    iget-object v5, p0, Le/k/a/c/d0/z/i;->d:Le/k/a/c/i;

    .line 10
    invoke-virtual {v5}, Le/k/a/c/i;->k()Le/k/a/c/i;

    move-result-object v5

    .line 11
    iget-object v5, v5, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 12
    invoke-direct {v4, v5, p3}, Le/k/a/c/d0/z/h$b;-><init>(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 13
    :goto_0
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v5

    sget-object v6, Le/k/a/b/m;->m:Le/k/a/b/m;

    if-eq v5, v6, :cond_7

    .line 14
    :try_start_0
    sget-object v6, Le/k/a/b/m;->u:Le/k/a/b/m;

    if-ne v5, v6, :cond_2

    .line 15
    iget-boolean v5, p0, Le/k/a/c/d0/z/i;->f:Z

    if-eqz v5, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    iget-object v5, p0, Le/k/a/c/d0/z/i;->e:Le/k/a/c/d0/r;

    invoke-interface {v5, p2}, Le/k/a/c/d0/r;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    .line 17
    invoke-virtual {v0, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .line 18
    :cond_3
    invoke-virtual {v0, p1, p2, v1}, Le/k/a/c/j;->f(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/j0/e;)Ljava/lang/Object;

    move-result-object v5

    .line 19
    :goto_1
    invoke-virtual {v4, v5}, Le/k/a/c/d0/z/h$b;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Le/k/a/c/d0/v; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p2, :cond_4

    .line 20
    sget-object v0, Le/k/a/c/h;->r:Le/k/a/c/h;

    invoke-virtual {p2, v0}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result p2

    if-eqz p2, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    if-nez v2, :cond_6

    .line 21
    invoke-static {p1}, Le/k/a/c/n0/g;->K(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 22
    :cond_6
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p2

    invoke-static {p1, p3, p2}, Le/k/a/c/k;->i(Ljava/lang/Throwable;Ljava/lang/Object;I)Le/k/a/c/k;

    move-result-object p1

    throw p1

    :catch_1
    move-exception v5

    .line 23
    new-instance v6, Le/k/a/c/d0/z/h$a;

    iget-object v7, v4, Le/k/a/c/d0/z/h$b;->a:Ljava/lang/Class;

    invoke-direct {v6, v4, v5, v7}, Le/k/a/c/d0/z/h$a;-><init>(Le/k/a/c/d0/z/h$b;Le/k/a/c/d0/v;Ljava/lang/Class;)V

    .line 24
    iget-object v7, v4, Le/k/a/c/d0/z/h$b;->c:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v5, v5, Le/k/a/c/d0/v;->d:Le/k/a/c/d0/y/c0;

    .line 26
    invoke-virtual {v5, v6}, Le/k/a/c/d0/y/c0;->a(Le/k/a/c/d0/y/c0$a;)V

    goto :goto_0

    :cond_7
    :goto_2
    return-object p3

    .line 27
    :cond_8
    iget-object v1, p0, Le/k/a/c/d0/z/h;->i:Le/k/a/c/j0/e;

    .line 28
    :goto_3
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v4

    sget-object v5, Le/k/a/b/m;->m:Le/k/a/b/m;

    if-eq v4, v5, :cond_f

    .line 29
    :try_start_1
    sget-object v5, Le/k/a/b/m;->u:Le/k/a/b/m;

    if-ne v4, v5, :cond_a

    .line 30
    iget-boolean v4, p0, Le/k/a/c/d0/z/i;->f:Z

    if-eqz v4, :cond_9

    goto :goto_3

    .line 31
    :cond_9
    iget-object v4, p0, Le/k/a/c/d0/z/i;->e:Le/k/a/c/d0/r;

    invoke-interface {v4, p2}, Le/k/a/c/d0/r;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_4

    :cond_a
    if-nez v1, :cond_b

    .line 32
    invoke-virtual {v0, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_4

    .line 33
    :cond_b
    invoke-virtual {v0, p1, p2, v1}, Le/k/a/c/j;->f(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/j0/e;)Ljava/lang/Object;

    move-result-object v4

    .line 34
    :goto_4
    invoke-interface {p3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    if-eqz p2, :cond_c

    .line 35
    sget-object v0, Le/k/a/c/h;->r:Le/k/a/c/h;

    invoke-virtual {p2, v0}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result p2

    if-eqz p2, :cond_d

    :cond_c
    move v2, v3

    :cond_d
    if-nez v2, :cond_e

    .line 36
    invoke-static {p1}, Le/k/a/c/n0/g;->K(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 37
    :cond_e
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p2

    invoke-static {p1, p3, p2}, Le/k/a/c/k;->i(Ljava/lang/Throwable;Ljava/lang/Object;I)Le/k/a/c/k;

    move-result-object p1

    throw p1

    :cond_f
    return-object p3
.end method

.method public p0(Le/k/a/c/g;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/h;->j:Le/k/a/c/d0/w;

    invoke-virtual {v0, p1}, Le/k/a/c/d0/w;->v(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public final q0(Le/k/a/b/j;Le/k/a/c/g;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/b/j;",
            "Le/k/a/c/g;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/i;->g:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    sget-object v0, Le/k/a/c/h;->s:Le/k/a/c/h;

    .line 2
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
    if-eqz v0, :cond_6

    .line 3
    iget-object v0, p0, Le/k/a/c/d0/z/h;->h:Le/k/a/c/j;

    .line 4
    iget-object v1, p0, Le/k/a/c/d0/z/h;->i:Le/k/a/c/j0/e;

    .line 5
    :try_start_0
    sget-object v2, Le/k/a/b/m;->u:Le/k/a/b/m;

    invoke-virtual {p1, v2}, Le/k/a/b/j;->O1(Le/k/a/b/m;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6
    iget-boolean p1, p0, Le/k/a/c/d0/z/i;->f:Z

    if-eqz p1, :cond_2

    return-object p3

    .line 7
    :cond_2
    iget-object p1, p0, Le/k/a/c/d0/z/i;->e:Le/k/a/c/d0/r;

    invoke-interface {p1, p2}, Le/k/a/c/d0/r;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_3
    if-nez v1, :cond_4

    .line 8
    invoke-virtual {v0, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    .line 9
    :cond_4
    invoke-virtual {v0, p1, p2, v1}, Le/k/a/c/j;->f(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/j0/e;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :goto_2
    invoke-interface {p3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p3

    :catch_0
    move-exception p1

    .line 11
    sget-object v0, Le/k/a/c/h;->r:Le/k/a/c/h;

    invoke-virtual {p2, v0}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 12
    invoke-static {p1}, Le/k/a/c/n0/g;->K(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 13
    :cond_5
    const-class p2, Ljava/lang/Object;

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p3

    invoke-static {p1, p2, p3}, Le/k/a/c/k;->i(Ljava/lang/Throwable;Ljava/lang/Object;I)Le/k/a/c/k;

    move-result-object p1

    throw p1

    .line 14
    :cond_6
    iget-object p3, p0, Le/k/a/c/d0/z/i;->d:Le/k/a/c/i;

    invoke-virtual {p2, p3, p1}, Le/k/a/c/g;->H(Le/k/a/c/i;Le/k/a/b/j;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method

.method public r0(Le/k/a/c/j;Le/k/a/c/j;Le/k/a/c/j0/e;Le/k/a/c/d0/r;Ljava/lang/Boolean;)Le/k/a/c/d0/z/h;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/j<",
            "*>;",
            "Le/k/a/c/j<",
            "*>;",
            "Le/k/a/c/j0/e;",
            "Le/k/a/c/d0/r;",
            "Ljava/lang/Boolean;",
            ")",
            "Le/k/a/c/d0/z/h;"
        }
    .end annotation

    .line 1
    new-instance v8, Le/k/a/c/d0/z/h;

    iget-object v1, p0, Le/k/a/c/d0/z/i;->d:Le/k/a/c/i;

    iget-object v4, p0, Le/k/a/c/d0/z/h;->j:Le/k/a/c/d0/w;

    move-object v0, v8

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Le/k/a/c/d0/z/h;-><init>(Le/k/a/c/i;Le/k/a/c/j;Le/k/a/c/j0/e;Le/k/a/c/d0/w;Le/k/a/c/j;Le/k/a/c/d0/r;Ljava/lang/Boolean;)V

    return-object v8
.end method
