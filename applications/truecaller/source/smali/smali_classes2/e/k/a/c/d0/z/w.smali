.class public Le/k/a/c/d0/z/w;
.super Le/k/a/c/d0/z/i;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/d0/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/d0/z/i<",
        "[",
        "Ljava/lang/Object;",
        ">;",
        "Le/k/a/c/d0/i;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# instance fields
.field public final h:Z

.field public final i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

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

.field public final l:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/k/a/c/d0/z/w;Le/k/a/c/j;Le/k/a/c/j0/e;Le/k/a/c/d0/r;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/d0/z/w;",
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;",
            "Le/k/a/c/j0/e;",
            "Le/k/a/c/d0/r;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p4, p5}, Le/k/a/c/d0/z/i;-><init>(Le/k/a/c/d0/z/i;Le/k/a/c/d0/r;Ljava/lang/Boolean;)V

    .line 12
    iget-object p4, p1, Le/k/a/c/d0/z/w;->i:Ljava/lang/Class;

    iput-object p4, p0, Le/k/a/c/d0/z/w;->i:Ljava/lang/Class;

    .line 13
    iget-boolean p4, p1, Le/k/a/c/d0/z/w;->h:Z

    iput-boolean p4, p0, Le/k/a/c/d0/z/w;->h:Z

    .line 14
    iget-object p1, p1, Le/k/a/c/d0/z/w;->l:[Ljava/lang/Object;

    iput-object p1, p0, Le/k/a/c/d0/z/w;->l:[Ljava/lang/Object;

    .line 15
    iput-object p2, p0, Le/k/a/c/d0/z/w;->j:Le/k/a/c/j;

    .line 16
    iput-object p3, p0, Le/k/a/c/d0/z/w;->k:Le/k/a/c/j0/e;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/i;Le/k/a/c/j;Le/k/a/c/j0/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/i;",
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;",
            "Le/k/a/c/j0/e;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Le/k/a/c/d0/z/i;-><init>(Le/k/a/c/i;Le/k/a/c/d0/r;Ljava/lang/Boolean;)V

    .line 2
    check-cast p1, Le/k/a/c/m0/a;

    .line 3
    iget-object v0, p1, Le/k/a/c/m0/a;->j:Le/k/a/c/i;

    .line 4
    iget-object v0, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 5
    iput-object v0, p0, Le/k/a/c/d0/z/w;->i:Ljava/lang/Class;

    .line 6
    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Le/k/a/c/d0/z/w;->h:Z

    .line 7
    iput-object p2, p0, Le/k/a/c/d0/z/w;->j:Le/k/a/c/j;

    .line 8
    iput-object p3, p0, Le/k/a/c/d0/z/w;->k:Le/k/a/c/j0/e;

    .line 9
    iget-object p1, p1, Le/k/a/c/m0/a;->k:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 10
    iput-object p1, p0, Le/k/a/c/d0/z/w;->l:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Le/k/a/c/g;Le/k/a/c/d;)Le/k/a/c/j;
    .locals 8
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
    iget-object v0, p0, Le/k/a/c/d0/z/w;->j:Le/k/a/c/j;

    .line 2
    iget-object v1, p0, Le/k/a/c/d0/z/i;->d:Le/k/a/c/i;

    .line 3
    iget-object v1, v1, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 4
    sget-object v2, Le/k/a/a/k$a;->a:Le/k/a/a/k$a;

    .line 5
    invoke-virtual {p0, p1, p2, v1}, Le/k/a/c/d0/z/b0;->h0(Le/k/a/c/g;Le/k/a/c/d;Ljava/lang/Class;)Le/k/a/a/k$d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1, v2}, Le/k/a/a/k$d;->b(Le/k/a/a/k$a;)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v7, v1

    .line 7
    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/d0/z/b0;->g0(Le/k/a/c/g;Le/k/a/c/d;Le/k/a/c/j;)Le/k/a/c/j;

    move-result-object v0

    .line 8
    iget-object v1, p0, Le/k/a/c/d0/z/i;->d:Le/k/a/c/i;

    invoke-virtual {v1}, Le/k/a/c/i;->k()Le/k/a/c/i;

    move-result-object v1

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p1, v1, p2}, Le/k/a/c/g;->s(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/j;

    move-result-object v0

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p1, v0, p2, v1}, Le/k/a/c/g;->G(Le/k/a/c/j;Le/k/a/c/d;Le/k/a/c/i;)Le/k/a/c/j;

    move-result-object v0

    :goto_1
    move-object v4, v0

    .line 11
    iget-object v0, p0, Le/k/a/c/d0/z/w;->k:Le/k/a/c/j0/e;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0, p2}, Le/k/a/c/j0/e;->f(Le/k/a/c/d;)Le/k/a/c/j0/e;

    move-result-object v0

    :cond_2
    move-object v5, v0

    .line 13
    invoke-virtual {p0, p1, p2, v4}, Le/k/a/c/d0/z/b0;->f0(Le/k/a/c/g;Le/k/a/c/d;Le/k/a/c/j;)Le/k/a/c/d0/r;

    move-result-object v6

    .line 14
    iget-object p1, p0, Le/k/a/c/d0/z/i;->g:Ljava/lang/Boolean;

    invoke-static {v7, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Le/k/a/c/d0/z/i;->e:Le/k/a/c/d0/r;

    if-ne v6, p1, :cond_3

    iget-object p1, p0, Le/k/a/c/d0/z/w;->j:Le/k/a/c/j;

    if-ne v4, p1, :cond_3

    iget-object p1, p0, Le/k/a/c/d0/z/w;->k:Le/k/a/c/j0/e;

    if-ne v5, p1, :cond_3

    move-object p1, p0

    goto :goto_2

    .line 15
    :cond_3
    new-instance p1, Le/k/a/c/d0/z/w;

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Le/k/a/c/d0/z/w;-><init>(Le/k/a/c/d0/z/w;Le/k/a/c/j;Le/k/a/c/j0/e;Le/k/a/c/d0/r;Ljava/lang/Boolean;)V

    :goto_2
    return-object p1
.end method

.method public d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/k;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/b/j;->V1()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/w;->o0(Le/k/a/b/j;Le/k/a/c/g;)[Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    .line 3
    :cond_0
    invoke-virtual {p2}, Le/k/a/c/g;->U()Le/k/a/c/n0/u;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Le/k/a/c/n0/u;->g()[Ljava/lang/Object;

    move-result-object v1

    .line 5
    iget-object v2, p0, Le/k/a/c/d0/z/w;->k:Le/k/a/c/j0/e;

    const/4 v3, 0x0

    move v4, v3

    .line 6
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v5

    sget-object v6, Le/k/a/b/m;->m:Le/k/a/b/m;

    if-eq v5, v6, :cond_5

    .line 7
    sget-object v6, Le/k/a/b/m;->u:Le/k/a/b/m;

    if-ne v5, v6, :cond_2

    .line 8
    iget-boolean v5, p0, Le/k/a/c/d0/z/i;->f:Z

    if-eqz v5, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v5, p0, Le/k/a/c/d0/z/i;->e:Le/k/a/c/d0/r;

    invoke-interface {v5, p2}, Le/k/a/c/d0/r;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    .line 10
    iget-object v5, p0, Le/k/a/c/d0/z/w;->j:Le/k/a/c/j;

    invoke-virtual {v5, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .line 11
    :cond_3
    iget-object v5, p0, Le/k/a/c/d0/z/w;->j:Le/k/a/c/j;

    invoke-virtual {v5, p1, p2, v2}, Le/k/a/c/j;->f(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/j0/e;)Ljava/lang/Object;

    move-result-object v5

    .line 12
    :goto_1
    array-length v6, v1

    if-lt v4, v6, :cond_4

    .line 13
    invoke-virtual {v0, v1}, Le/k/a/c/n0/u;->c([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v4, v3

    :cond_4
    add-int/lit8 v6, v4, 0x1

    .line 14
    :try_start_1
    aput-object v5, v1, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v4, v6

    goto :goto_0

    :catch_0
    move-exception p1

    move v4, v6

    goto :goto_4

    .line 15
    :cond_5
    iget-boolean p1, p0, Le/k/a/c/d0/z/w;->h:Z

    if-eqz p1, :cond_6

    .line 16
    invoke-virtual {v0, v1, v4}, Le/k/a/c/n0/u;->e([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    .line 17
    :cond_6
    iget-object p1, p0, Le/k/a/c/d0/z/w;->i:Ljava/lang/Class;

    invoke-virtual {v0, v1, v4, p1}, Le/k/a/c/n0/u;->f([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .line 18
    :goto_2
    invoke-virtual {p2, v0}, Le/k/a/c/g;->g0(Le/k/a/c/n0/u;)V

    :goto_3
    return-object p1

    :catch_1
    move-exception p1

    .line 19
    :goto_4
    iget p2, v0, Le/k/a/c/n0/u;->c:I

    add-int/2addr p2, v4

    .line 20
    invoke-static {p1, v1, p2}, Le/k/a/c/k;->i(Ljava/lang/Throwable;Ljava/lang/Object;I)Le/k/a/c/k;

    move-result-object p1

    throw p1
.end method

.method public e(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p3, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Le/k/a/b/j;->V1()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/w;->o0(Le/k/a/b/j;Le/k/a/c/g;)[Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    array-length p2, p3

    .line 5
    array-length v0, p1

    add-int/2addr v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    invoke-static {p3, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    array-length p3, p1

    invoke-static {p1, v1, v0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p3, v0

    goto :goto_3

    .line 8
    :cond_1
    invoke-virtual {p2}, Le/k/a/c/g;->U()Le/k/a/c/n0/u;

    move-result-object v0

    .line 9
    array-length v2, p3

    .line 10
    invoke-virtual {v0, p3, v2}, Le/k/a/c/n0/u;->h([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    .line 11
    iget-object v3, p0, Le/k/a/c/d0/z/w;->k:Le/k/a/c/j0/e;

    .line 12
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v4

    sget-object v5, Le/k/a/b/m;->m:Le/k/a/b/m;

    if-eq v4, v5, :cond_6

    .line 13
    sget-object v5, Le/k/a/b/m;->u:Le/k/a/b/m;

    if-ne v4, v5, :cond_3

    .line 14
    iget-boolean v4, p0, Le/k/a/c/d0/z/i;->f:Z

    if-eqz v4, :cond_2

    goto :goto_0

    .line 15
    :cond_2
    iget-object v4, p0, Le/k/a/c/d0/z/i;->e:Le/k/a/c/d0/r;

    invoke-interface {v4, p2}, Le/k/a/c/d0/r;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    .line 16
    iget-object v4, p0, Le/k/a/c/d0/z/w;->j:Le/k/a/c/j;

    invoke-virtual {v4, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 17
    :cond_4
    iget-object v4, p0, Le/k/a/c/d0/z/w;->j:Le/k/a/c/j;

    invoke-virtual {v4, p1, p2, v3}, Le/k/a/c/j;->f(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/j0/e;)Ljava/lang/Object;

    move-result-object v4

    .line 18
    :goto_1
    array-length v5, p3

    if-lt v2, v5, :cond_5

    .line 19
    invoke-virtual {v0, p3}, Le/k/a/c/n0/u;->c([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v2, v1

    :cond_5
    add-int/lit8 v5, v2, 0x1

    .line 20
    :try_start_1
    aput-object v4, p3, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v5

    goto :goto_0

    :catch_0
    move-exception p1

    move v2, v5

    goto :goto_4

    .line 21
    :cond_6
    iget-boolean p1, p0, Le/k/a/c/d0/z/w;->h:Z

    if-eqz p1, :cond_7

    .line 22
    invoke-virtual {v0, p3, v2}, Le/k/a/c/n0/u;->e([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    .line 23
    :cond_7
    iget-object p1, p0, Le/k/a/c/d0/z/w;->i:Ljava/lang/Class;

    invoke-virtual {v0, p3, v2, p1}, Le/k/a/c/n0/u;->f([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    :goto_2
    move-object p3, p1

    .line 24
    invoke-virtual {p2, v0}, Le/k/a/c/g;->g0(Le/k/a/c/n0/u;)V

    :goto_3
    return-object p3

    :catch_1
    move-exception p1

    .line 25
    :goto_4
    iget p2, v0, Le/k/a/c/n0/u;->c:I

    add-int/2addr p2, v2

    .line 26
    invoke-static {p1, p3, p2}, Le/k/a/c/k;->i(Ljava/lang/Throwable;Ljava/lang/Object;I)Le/k/a/c/k;

    move-result-object p1

    throw p1
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

    check-cast p1, [Ljava/lang/Object;

    return-object p1
.end method

.method public i()Le/k/a/c/n0/a;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/n0/a;->b:Le/k/a/c/n0/a;

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
    iget-object p1, p0, Le/k/a/c/d0/z/w;->l:[Ljava/lang/Object;

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
    iget-object v0, p0, Le/k/a/c/d0/z/w;->j:Le/k/a/c/j;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/w;->j:Le/k/a/c/j;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/k/a/c/d0/z/w;->k:Le/k/a/c/j0/e;

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
    sget-object v0, Le/k/a/c/m0/f;->a:Le/k/a/c/m0/f;

    return-object v0
.end method

.method public o0(Le/k/a/b/j;Le/k/a/c/g;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/i;->g:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    sget-object v0, Le/k/a/c/h;->s:Le/k/a/c/h;

    .line 2
    invoke-virtual {p2, v0}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_5

    .line 3
    sget-object v0, Le/k/a/b/m;->p:Le/k/a/b/m;

    invoke-virtual {p1, v0}, Le/k/a/b/j;->O1(Le/k/a/b/m;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4
    iget-object v0, p0, Le/k/a/c/d0/z/w;->i:Ljava/lang/Class;

    const-class v1, Ljava/lang/Byte;

    if-ne v0, v1, :cond_3

    .line 5
    invoke-virtual {p2}, Le/k/a/c/g;->A()Le/k/a/b/a;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/k/a/b/j;->I(Le/k/a/b/a;)[B

    move-result-object p1

    .line 6
    array-length p2, p1

    new-array p2, p2, [Ljava/lang/Byte;

    .line 7
    array-length v0, p1

    :goto_2
    if-ge v3, v0, :cond_2

    .line 8
    aget-byte v1, p1, v3

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-object p2

    .line 9
    :cond_3
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->C(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    return-object p1

    .line 10
    :cond_4
    iget-object v0, p0, Le/k/a/c/d0/z/i;->d:Le/k/a/c/i;

    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->H(Le/k/a/c/i;Le/k/a/b/j;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    .line 11
    :cond_5
    sget-object v0, Le/k/a/b/m;->u:Le/k/a/b/m;

    invoke-virtual {p1, v0}, Le/k/a/b/j;->O1(Le/k/a/b/m;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 12
    iget-boolean p1, p0, Le/k/a/c/d0/z/i;->f:Z

    if-eqz p1, :cond_6

    .line 13
    iget-object p1, p0, Le/k/a/c/d0/z/w;->l:[Ljava/lang/Object;

    return-object p1

    .line 14
    :cond_6
    iget-object p1, p0, Le/k/a/c/d0/z/i;->e:Le/k/a/c/d0/r;

    invoke-interface {p1, p2}, Le/k/a/c/d0/r;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    .line 15
    :cond_7
    iget-object v0, p0, Le/k/a/c/d0/z/w;->k:Le/k/a/c/j0/e;

    if-nez v0, :cond_8

    .line 16
    iget-object v0, p0, Le/k/a/c/d0/z/w;->j:Le/k/a/c/j;

    invoke-virtual {v0, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    .line 17
    :cond_8
    iget-object v1, p0, Le/k/a/c/d0/z/w;->j:Le/k/a/c/j;

    invoke-virtual {v1, p1, p2, v0}, Le/k/a/c/j;->f(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/j0/e;)Ljava/lang/Object;

    move-result-object p1

    .line 18
    :goto_3
    iget-boolean p2, p0, Le/k/a/c/d0/z/w;->h:Z

    if-eqz p2, :cond_9

    new-array p2, v2, [Ljava/lang/Object;

    goto :goto_4

    .line 19
    :cond_9
    iget-object p2, p0, Le/k/a/c/d0/z/w;->i:Ljava/lang/Class;

    invoke-static {p2, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    .line 20
    :goto_4
    aput-object p1, p2, v3

    return-object p2
.end method
