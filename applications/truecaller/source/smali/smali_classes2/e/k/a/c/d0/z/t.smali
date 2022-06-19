.class public Le/k/a/c/d0/z/t;
.super Le/k/a/c/d0/z/i;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/d0/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/d0/z/i<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;",
        "Le/k/a/c/d0/i;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# instance fields
.field public final h:Le/k/a/c/o;

.field public final i:Le/k/a/c/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Le/k/a/c/j0/e;


# direct methods
.method public constructor <init>(Le/k/a/c/d0/z/t;Le/k/a/c/o;Le/k/a/c/j;Le/k/a/c/j0/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/d0/z/t;",
            "Le/k/a/c/o;",
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;",
            "Le/k/a/c/j0/e;",
            ")V"
        }
    .end annotation

    .line 7
    iget-object v0, p1, Le/k/a/c/d0/z/i;->e:Le/k/a/c/d0/r;

    iget-object v1, p1, Le/k/a/c/d0/z/i;->g:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0, v1}, Le/k/a/c/d0/z/i;-><init>(Le/k/a/c/d0/z/i;Le/k/a/c/d0/r;Ljava/lang/Boolean;)V

    .line 8
    iput-object p2, p0, Le/k/a/c/d0/z/t;->h:Le/k/a/c/o;

    .line 9
    iput-object p3, p0, Le/k/a/c/d0/z/t;->i:Le/k/a/c/j;

    .line 10
    iput-object p4, p0, Le/k/a/c/d0/z/t;->j:Le/k/a/c/j0/e;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/i;Le/k/a/c/o;Le/k/a/c/j;Le/k/a/c/j0/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/i;",
            "Le/k/a/c/o;",
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
    invoke-virtual {p1}, Le/k/a/c/i;->g()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    iput-object p2, p0, Le/k/a/c/d0/z/t;->h:Le/k/a/c/o;

    .line 4
    iput-object p3, p0, Le/k/a/c/d0/z/t;->i:Le/k/a/c/j;

    .line 5
    iput-object p4, p0, Le/k/a/c/d0/z/t;->j:Le/k/a/c/j0/e;

    return-void

    .line 6
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Missing generic type information for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public a(Le/k/a/c/g;Le/k/a/c/d;)Le/k/a/c/j;
    .locals 4
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
    iget-object v0, p0, Le/k/a/c/d0/z/t;->h:Le/k/a/c/o;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/k/a/c/d0/z/i;->d:Le/k/a/c/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le/k/a/c/i;->f(I)Le/k/a/c/i;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Le/k/a/c/g;->u(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/o;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, v0, Le/k/a/c/d0/j;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Le/k/a/c/d0/j;

    invoke-interface {v0, p1, p2}, Le/k/a/c/d0/j;->a(Le/k/a/c/g;Le/k/a/c/d;)Le/k/a/c/o;

    move-result-object v0

    .line 5
    :cond_1
    :goto_0
    iget-object v1, p0, Le/k/a/c/d0/z/t;->i:Le/k/a/c/j;

    .line 6
    invoke-virtual {p0, p1, p2, v1}, Le/k/a/c/d0/z/b0;->g0(Le/k/a/c/g;Le/k/a/c/d;Le/k/a/c/j;)Le/k/a/c/j;

    move-result-object v1

    .line 7
    iget-object v2, p0, Le/k/a/c/d0/z/i;->d:Le/k/a/c/i;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Le/k/a/c/i;->f(I)Le/k/a/c/i;

    move-result-object v2

    if-nez v1, :cond_2

    .line 8
    invoke-virtual {p1, v2, p2}, Le/k/a/c/g;->s(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/j;

    move-result-object p1

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p1, v1, p2, v2}, Le/k/a/c/g;->G(Le/k/a/c/j;Le/k/a/c/d;Le/k/a/c/i;)Le/k/a/c/j;

    move-result-object p1

    .line 10
    :goto_1
    iget-object v1, p0, Le/k/a/c/d0/z/t;->j:Le/k/a/c/j0/e;

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {v1, p2}, Le/k/a/c/j0/e;->f(Le/k/a/c/d;)Le/k/a/c/j0/e;

    move-result-object v1

    .line 12
    :cond_3
    iget-object p2, p0, Le/k/a/c/d0/z/t;->h:Le/k/a/c/o;

    if-ne p2, v0, :cond_4

    iget-object p2, p0, Le/k/a/c/d0/z/t;->i:Le/k/a/c/j;

    if-ne p2, p1, :cond_4

    iget-object p2, p0, Le/k/a/c/d0/z/t;->j:Le/k/a/c/j0/e;

    if-ne p2, v1, :cond_4

    move-object p2, p0

    goto :goto_2

    .line 13
    :cond_4
    new-instance p2, Le/k/a/c/d0/z/t;

    invoke-direct {p2, p0, v0, p1, v1}, Le/k/a/c/d0/z/t;-><init>(Le/k/a/c/d0/z/t;Le/k/a/c/o;Le/k/a/c/j;Le/k/a/c/j0/e;)V

    :goto_2
    return-object p2
.end method

.method public d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/k;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/b/j;->l()Le/k/a/b/m;

    move-result-object v0

    .line 2
    sget-object v1, Le/k/a/b/m;->j:Le/k/a/b/m;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v0

    goto :goto_1

    .line 4
    :cond_0
    sget-object v1, Le/k/a/b/m;->n:Le/k/a/b/m;

    if-eq v0, v1, :cond_3

    sget-object v1, Le/k/a/b/m;->k:Le/k/a/b/m;

    if-eq v0, v1, :cond_3

    .line 5
    sget-object v1, Le/k/a/b/m;->l:Le/k/a/b/m;

    if-ne v0, v1, :cond_1

    .line 6
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->A(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    goto/16 :goto_3

    .line 7
    :cond_1
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->b:Le/k/a/c/i;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Le/k/a/c/g;->o(Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object v0

    .line 9
    :goto_0
    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->H(Le/k/a/c/i;Le/k/a/b/j;)Ljava/lang/Object;

    throw v2

    .line 10
    :cond_3
    :goto_1
    sget-object v1, Le/k/a/b/m;->n:Le/k/a/b/m;

    const/4 v3, 0x0

    if-eq v0, v1, :cond_5

    .line 11
    sget-object v1, Le/k/a/b/m;->k:Le/k/a/b/m;

    if-ne v0, v1, :cond_4

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "Cannot deserialize a Map.Entry out of empty JSON Object"

    .line 12
    invoke-virtual {p2, p0, v0, p1}, Le/k/a/c/g;->a0(Le/k/a/c/j;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v2

    .line 13
    :cond_4
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    .line 14
    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v2

    .line 15
    :cond_5
    iget-object v0, p0, Le/k/a/c/d0/z/t;->h:Le/k/a/c/o;

    .line 16
    iget-object v4, p0, Le/k/a/c/d0/z/t;->i:Le/k/a/c/j;

    .line 17
    iget-object v5, p0, Le/k/a/c/d0/z/t;->j:Le/k/a/c/j0/e;

    .line 18
    invoke-virtual {p1}, Le/k/a/b/j;->k()Ljava/lang/String;

    move-result-object v6

    .line 19
    invoke-virtual {v0, v6, p2}, Le/k/a/c/o;->a(Ljava/lang/String;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v7

    .line 21
    :try_start_0
    sget-object v8, Le/k/a/b/m;->u:Le/k/a/b/m;

    if-ne v7, v8, :cond_6

    .line 22
    invoke-virtual {v4, p2}, Le/k/a/c/j;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    :cond_6
    if-nez v5, :cond_7

    .line 23
    invoke-virtual {v4, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    .line 24
    :cond_7
    invoke-virtual {v4, p1, p2, v5}, Le/k/a/c/j;->f(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/j0/e;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_2
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v5

    .line 26
    sget-object v6, Le/k/a/b/m;->k:Le/k/a/b/m;

    if-eq v5, v6, :cond_9

    if-ne v5, v1, :cond_8

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 27
    invoke-virtual {p1}, Le/k/a/b/j;->k()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "Problem binding JSON into Map.Entry: more than one entry in JSON (second field: \'%s\')"

    .line 28
    invoke-virtual {p2, p0, p1, v0}, Le/k/a/c/g;->a0(Le/k/a/c/j;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v2

    .line 29
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Problem binding JSON into Map.Entry: unexpected content after JSON Object entry: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p2, p0, p1, v0}, Le/k/a/c/g;->a0(Le/k/a/c/j;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v2

    .line 30
    :cond_9
    new-instance p1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {p1, v0, v4}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    return-object p1

    :catch_0
    move-exception p1

    .line 31
    const-class v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, p2, p1, v0, v6}, Le/k/a/c/d0/z/i;->n0(Le/k/a/c/g;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    throw v2
.end method

.method public e(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p3, Ljava/util/Map$Entry;

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot update Map.Entry values"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

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
    invoke-virtual {p3, p1, p2}, Le/k/a/c/j0/e;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

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
    iget-object v0, p0, Le/k/a/c/d0/z/t;->i:Le/k/a/c/j;

    return-object v0
.end method

.method public o()Le/k/a/c/m0/f;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/m0/f;->c:Le/k/a/c/m0/f;

    return-object v0
.end method
