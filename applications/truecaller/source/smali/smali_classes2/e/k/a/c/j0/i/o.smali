.class public Le/k/a/c/j0/i/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/j0/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/k/a/c/j0/g<",
        "Le/k/a/c/j0/i/o;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Le/k/a/a/e0$b;

.field public b:Le/k/a/a/e0$a;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public f:Le/k/a/c/j0/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/k/a/c/j0/i/o;->d:Z

    return-void
.end method


# virtual methods
.method public a(Z)Le/k/a/c/j0/g;
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/k/a/c/j0/i/o;->d:Z

    return-object p0
.end method

.method public b(Le/k/a/c/f;Le/k/a/c/i;Ljava/util/Collection;)Le/k/a/c/j0/e;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/f;",
            "Le/k/a/c/i;",
            "Ljava/util/Collection<",
            "Le/k/a/c/j0/b;",
            ">;)",
            "Le/k/a/c/j0/e;"
        }
    .end annotation

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p2

    .line 1
    iget-object v0, v7, Le/k/a/c/j0/i/o;->a:Le/k/a/a/e0$b;

    sget-object v1, Le/k/a/a/e0$b;->b:Le/k/a/a/e0$b;

    const/4 v10, 0x0

    if-ne v0, v1, :cond_0

    return-object v10

    .line 2
    :cond_0
    invoke-virtual/range {p2 .. p2}, Le/k/a/c/i;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v10

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Le/k/a/c/j0/i/o;->j(Le/k/a/c/c0/k;)Le/k/a/c/j0/c;

    move-result-object v0

    .line 4
    iget-object v1, v7, Le/k/a/c/j0/i/o;->a:Le/k/a/a/e0$b;

    sget-object v2, Le/k/a/a/e0$b;->c:Le/k/a/a/e0$b;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eq v1, v2, :cond_2

    sget-object v2, Le/k/a/a/e0$b;->d:Le/k/a/a/e0$b;

    if-ne v1, v2, :cond_3

    .line 5
    :cond_2
    invoke-virtual {v0, p1, v9}, Le/k/a/c/j0/c;->a(Le/k/a/c/c0/k;Le/k/a/c/i;)Le/k/a/c/j0/c$b;

    move-result-object v1

    .line 6
    sget-object v2, Le/k/a/c/j0/c$b;->b:Le/k/a/c/j0/c$b;

    if-eq v1, v2, :cond_10

    .line 7
    sget-object v2, Le/k/a/c/j0/c$b;->a:Le/k/a/c/j0/c$b;

    if-ne v1, v2, :cond_3

    .line 8
    sget-object v0, Le/k/a/c/j0/i/l;->a:Le/k/a/c/j0/i/l;

    :cond_3
    move-object v3, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    .line 9
    invoke-virtual/range {v0 .. v6}, Le/k/a/c/j0/i/o;->i(Le/k/a/c/c0/k;Le/k/a/c/i;Le/k/a/c/j0/c;Ljava/util/Collection;ZZ)Le/k/a/c/j0/f;

    move-result-object v2

    .line 10
    iget-object v0, v7, Le/k/a/c/j0/i/o;->e:Ljava/lang/Class;

    if-nez v0, :cond_4

    .line 11
    sget-object v0, Le/k/a/c/p;->s:Le/k/a/c/p;

    invoke-virtual {p1, v0}, Le/k/a/c/c0/k;->o(Le/k/a/c/p;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual/range {p2 .. p2}, Le/k/a/c/i;->v()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    .line 12
    :cond_4
    const-class v1, Ljava/lang/Void;

    if-eq v0, v1, :cond_9

    const-class v1, Le/k/a/c/b0/j;

    if-ne v0, v1, :cond_5

    goto :goto_2

    .line 13
    :cond_5
    iget-object v1, v9, Le/k/a/c/i;->a:Ljava/lang/Class;

    if-ne v1, v0, :cond_6

    move v1, v13

    goto :goto_0

    :cond_6
    move v1, v12

    :goto_0
    if-eqz v1, :cond_7

    :goto_1
    move-object v5, v9

    goto :goto_4

    .line 14
    :cond_7
    invoke-virtual {v9, v0}, Le/k/a/c/i;->J(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 15
    iget-object v0, v8, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 16
    iget-object v0, v0, Le/k/a/c/c0/a;->a:Le/k/a/c/m0/o;

    .line 17
    iget-object v1, v7, Le/k/a/c/j0/i/o;->e:Ljava/lang/Class;

    .line 18
    invoke-virtual {v0, v9, v1, v12}, Le/k/a/c/m0/o;->k(Le/k/a/c/i;Ljava/lang/Class;Z)Le/k/a/c/i;

    move-result-object v0

    goto :goto_3

    :cond_8
    move-object v5, v10

    goto :goto_4

    .line 19
    :cond_9
    :goto_2
    iget-object v1, v8, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 20
    iget-object v1, v1, Le/k/a/c/c0/a;->a:Le/k/a/c/m0/o;

    .line 21
    sget-object v3, Le/k/a/c/m0/o;->e:Le/k/a/c/m0/n;

    invoke-virtual {v1, v10, v0, v3}, Le/k/a/c/m0/o;->b(Le/k/a/c/m0/c;Ljava/lang/reflect/Type;Le/k/a/c/m0/n;)Le/k/a/c/i;

    move-result-object v0

    :goto_3
    move-object v5, v0

    .line 22
    :goto_4
    iget-object v0, v7, Le/k/a/c/j0/i/o;->a:Le/k/a/a/e0$b;

    sget-object v1, Le/k/a/a/e0$b;->f:Le/k/a/a/e0$b;

    if-ne v0, v1, :cond_a

    .line 23
    new-instance v6, Le/k/a/c/j0/i/c;

    move-object v0, v6

    move-object/from16 v1, p2

    move-object v3, v5

    move-object v4, p1

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Le/k/a/c/j0/i/c;-><init>(Le/k/a/c/i;Le/k/a/c/j0/f;Le/k/a/c/i;Le/k/a/c/f;Ljava/util/Collection;)V

    return-object v6

    .line 24
    :cond_a
    iget-object v0, v7, Le/k/a/c/j0/i/o;->b:Le/k/a/a/e0$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_f

    if-eq v0, v13, :cond_e

    if-eq v0, v11, :cond_d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    goto :goto_5

    .line 25
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Do not know how to construct standard type serializer for inclusion type: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Le/k/a/c/j0/i/o;->b:Le/k/a/a/e0$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_c
    new-instance v6, Le/k/a/c/j0/i/e;

    iget-object v3, v7, Le/k/a/c/j0/i/o;->c:Ljava/lang/String;

    iget-boolean v4, v7, Le/k/a/c/j0/i/o;->d:Z

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Le/k/a/c/j0/i/e;-><init>(Le/k/a/c/i;Le/k/a/c/j0/f;Ljava/lang/String;ZLe/k/a/c/i;)V

    return-object v6

    .line 27
    :cond_d
    new-instance v6, Le/k/a/c/j0/i/a;

    iget-object v3, v7, Le/k/a/c/j0/i/o;->c:Ljava/lang/String;

    iget-boolean v4, v7, Le/k/a/c/j0/i/o;->d:Z

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Le/k/a/c/j0/i/a;-><init>(Le/k/a/c/i;Le/k/a/c/j0/f;Ljava/lang/String;ZLe/k/a/c/i;)V

    return-object v6

    .line 28
    :cond_e
    new-instance v6, Le/k/a/c/j0/i/i;

    iget-object v3, v7, Le/k/a/c/j0/i/o;->c:Ljava/lang/String;

    iget-boolean v4, v7, Le/k/a/c/j0/i/o;->d:Z

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Le/k/a/c/j0/i/i;-><init>(Le/k/a/c/i;Le/k/a/c/j0/f;Ljava/lang/String;ZLe/k/a/c/i;)V

    return-object v6

    .line 29
    :cond_f
    :goto_5
    new-instance v8, Le/k/a/c/j0/i/g;

    iget-object v3, v7, Le/k/a/c/j0/i/o;->c:Ljava/lang/String;

    iget-boolean v4, v7, Le/k/a/c/j0/i/o;->d:Z

    iget-object v6, v7, Le/k/a/c/j0/i/o;->b:Le/k/a/a/e0$a;

    move-object v0, v8

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v6}, Le/k/a/c/j0/i/g;-><init>(Le/k/a/c/i;Le/k/a/c/j0/f;Ljava/lang/String;ZLe/k/a/c/i;Le/k/a/a/e0$a;)V

    return-object v8

    .line 30
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-array v2, v11, [Ljava/lang/Object;

    .line 31
    invoke-static {v0}, Le/k/a/c/n0/g;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v12

    .line 32
    iget-object v0, v9, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 33
    invoke-static {v0}, Le/k/a/c/n0/g;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v13

    const-string v0, "Configured `PolymorphicTypeValidator` (of type %s) denied resolution of all subtypes of base type %s"

    .line 34
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public c(Le/k/a/a/e0$b;Le/k/a/c/j0/f;)Le/k/a/c/j0/g;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Le/k/a/c/j0/i/o;->a:Le/k/a/a/e0$b;

    .line 2
    iput-object p2, p0, Le/k/a/c/j0/i/o;->f:Le/k/a/c/j0/f;

    .line 3
    iget-object p1, p1, Le/k/a/a/e0$b;->a:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Le/k/a/c/j0/i/o;->c:Ljava/lang/String;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "idType cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Ljava/lang/String;)Le/k/a/c/j0/g;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget-object p1, p0, Le/k/a/c/j0/i/o;->a:Le/k/a/a/e0$b;

    .line 3
    iget-object p1, p1, Le/k/a/a/e0$b;->a:Ljava/lang/String;

    .line 4
    :cond_1
    iput-object p1, p0, Le/k/a/c/j0/i/o;->c:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/Class;)Le/k/a/c/j0/g;
    .locals 0

    .line 1
    iput-object p1, p0, Le/k/a/c/j0/i/o;->e:Ljava/lang/Class;

    return-object p0
.end method

.method public f(Le/k/a/c/y;Le/k/a/c/i;Ljava/util/Collection;)Le/k/a/c/j0/h;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/y;",
            "Le/k/a/c/i;",
            "Ljava/util/Collection<",
            "Le/k/a/c/j0/b;",
            ">;)",
            "Le/k/a/c/j0/h;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/j0/i/o;->a:Le/k/a/a/e0$b;

    sget-object v1, Le/k/a/a/e0$b;->b:Le/k/a/a/e0$b;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    invoke-virtual {p2}, Le/k/a/c/i;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v2

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Le/k/a/c/j0/i/o;->j(Le/k/a/c/c0/k;)Le/k/a/c/j0/c;

    move-result-object v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v9}, Le/k/a/c/j0/i/o;->i(Le/k/a/c/c0/k;Le/k/a/c/i;Le/k/a/c/j0/c;Ljava/util/Collection;ZZ)Le/k/a/c/j0/f;

    move-result-object p1

    .line 4
    iget-object p2, p0, Le/k/a/c/j0/i/o;->a:Le/k/a/a/e0$b;

    sget-object p3, Le/k/a/a/e0$b;->f:Le/k/a/a/e0$b;

    if-ne p2, p3, :cond_2

    .line 5
    new-instance p2, Le/k/a/c/j0/i/d;

    iget-object p3, p0, Le/k/a/c/j0/i/o;->c:Ljava/lang/String;

    invoke-direct {p2, p1, v2, p3}, Le/k/a/c/j0/i/d;-><init>(Le/k/a/c/j0/f;Le/k/a/c/d;Ljava/lang/String;)V

    return-object p2

    .line 6
    :cond_2
    iget-object p2, p0, Le/k/a/c/j0/i/o;->b:Le/k/a/a/e0$a;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_7

    const/4 p3, 0x1

    if-eq p2, p3, :cond_6

    const/4 p3, 0x2

    if-eq p2, p3, :cond_5

    const/4 p3, 0x3

    if-eq p2, p3, :cond_4

    const/4 p3, 0x4

    if-ne p2, p3, :cond_3

    .line 7
    new-instance p2, Le/k/a/c/j0/i/d;

    iget-object p3, p0, Le/k/a/c/j0/i/o;->c:Ljava/lang/String;

    invoke-direct {p2, p1, v2, p3}, Le/k/a/c/j0/i/d;-><init>(Le/k/a/c/j0/f;Le/k/a/c/d;Ljava/lang/String;)V

    return-object p2

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Do not know how to construct standard type serializer for inclusion type: "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Le/k/a/c/j0/i/o;->b:Le/k/a/a/e0$a;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_4
    new-instance p2, Le/k/a/c/j0/i/f;

    iget-object p3, p0, Le/k/a/c/j0/i/o;->c:Ljava/lang/String;

    invoke-direct {p2, p1, v2, p3}, Le/k/a/c/j0/i/f;-><init>(Le/k/a/c/j0/f;Le/k/a/c/d;Ljava/lang/String;)V

    return-object p2

    .line 10
    :cond_5
    new-instance p2, Le/k/a/c/j0/i/b;

    invoke-direct {p2, p1, v2}, Le/k/a/c/j0/i/b;-><init>(Le/k/a/c/j0/f;Le/k/a/c/d;)V

    return-object p2

    .line 11
    :cond_6
    new-instance p2, Le/k/a/c/j0/i/j;

    invoke-direct {p2, p1, v2}, Le/k/a/c/j0/i/j;-><init>(Le/k/a/c/j0/f;Le/k/a/c/d;)V

    return-object p2

    .line 12
    :cond_7
    new-instance p2, Le/k/a/c/j0/i/h;

    iget-object p3, p0, Le/k/a/c/j0/i/o;->c:Ljava/lang/String;

    invoke-direct {p2, p1, v2, p3}, Le/k/a/c/j0/i/h;-><init>(Le/k/a/c/j0/f;Le/k/a/c/d;Ljava/lang/String;)V

    return-object p2
.end method

.method public g(Le/k/a/a/e0$a;)Le/k/a/c/j0/g;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Le/k/a/c/j0/i/o;->b:Le/k/a/a/e0$a;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "includeAs cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/j0/i/o;->e:Ljava/lang/Class;

    return-object v0
.end method

.method public i(Le/k/a/c/c0/k;Le/k/a/c/i;Le/k/a/c/j0/c;Ljava/util/Collection;ZZ)Le/k/a/c/j0/f;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Le/k/a/c/i;",
            "Le/k/a/c/j0/c;",
            "Ljava/util/Collection<",
            "Le/k/a/c/j0/b;",
            ">;ZZ)",
            "Le/k/a/c/j0/f;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/j0/i/o;->f:Le/k/a/c/j0/f;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Le/k/a/c/j0/i/o;->a:Le/k/a/a/e0$b;

    if-eqz v0, :cond_e

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const/4 v2, 0x1

    if-eq v0, v2, :cond_c

    const/4 v2, 0x2

    if-eq v0, v2, :cond_b

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_2

    if-ne v0, v3, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Do not know how to construct standard type id resolver for idType: "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Le/k/a/c/j0/i/o;->a:Le/k/a/a/e0$b;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-eq p5, p6, :cond_a

    if-eqz p5, :cond_3

    .line 5
    new-instance p3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    goto :goto_0

    .line 6
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 7
    new-instance p3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p3, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 8
    :goto_0
    sget-object v0, Le/k/a/c/p;->z:Le/k/a/c/p;

    invoke-virtual {p1, v0}, Le/k/a/c/c0/k;->o(Le/k/a/c/p;)Z

    move-result v0

    if-eqz p4, :cond_9

    .line 9
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_4
    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/k/a/c/j0/b;

    .line 10
    iget-object v3, v2, Le/k/a/c/j0/b;->a:Ljava/lang/Class;

    .line 11
    invoke-virtual {v2}, Le/k/a/c/j0/b;->a()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 12
    iget-object v2, v2, Le/k/a/c/j0/b;->c:Ljava/lang/String;

    goto :goto_2

    .line 13
    :cond_5
    invoke-static {v3}, Le/k/a/c/j0/i/s;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    if-eqz p5, :cond_6

    .line 14
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz p6, :cond_4

    if-eqz v0, :cond_7

    .line 15
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 16
    :cond_7
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/k/a/c/i;

    if-eqz v4, :cond_8

    .line 17
    iget-object v4, v4, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_1

    .line 19
    :cond_8
    invoke-virtual {p1, v3}, Le/k/a/c/c0/k;->d(Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 20
    :cond_9
    new-instance p4, Le/k/a/c/j0/i/s;

    invoke-direct {p4, p1, p2, p3, v1}, Le/k/a/c/j0/i/s;-><init>(Le/k/a/c/c0/k;Le/k/a/c/i;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/HashMap;)V

    return-object p4

    .line 21
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 22
    :cond_b
    new-instance p4, Le/k/a/c/j0/i/m;

    .line 23
    iget-object p1, p1, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 24
    iget-object p1, p1, Le/k/a/c/c0/a;->a:Le/k/a/c/m0/o;

    .line 25
    invoke-direct {p4, p2, p1, p3}, Le/k/a/c/j0/i/m;-><init>(Le/k/a/c/i;Le/k/a/c/m0/o;Le/k/a/c/j0/c;)V

    return-object p4

    .line 26
    :cond_c
    :goto_3
    new-instance p4, Le/k/a/c/j0/i/k;

    .line 27
    iget-object p1, p1, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 28
    iget-object p1, p1, Le/k/a/c/c0/a;->a:Le/k/a/c/m0/o;

    .line 29
    invoke-direct {p4, p2, p1, p3}, Le/k/a/c/j0/i/k;-><init>(Le/k/a/c/i;Le/k/a/c/m0/o;Le/k/a/c/j0/c;)V

    return-object p4

    :cond_d
    return-object v1

    .line 30
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot build, \'init()\' not yet called"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(Le/k/a/c/c0/k;)Le/k/a/c/j0/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;)",
            "Le/k/a/c/j0/c;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 2
    iget-object v0, v0, Le/k/a/c/c0/a;->g:Le/k/a/c/j0/c;

    .line 3
    sget-object v1, Le/k/a/c/j0/i/l;->a:Le/k/a/c/j0/i/l;

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v1, Le/k/a/c/p;->K:Le/k/a/c/p;

    invoke-virtual {p1, v1}, Le/k/a/c/c0/k;->o(Le/k/a/c/p;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Le/k/a/c/j0/a;

    invoke-direct {v0}, Le/k/a/c/j0/a;-><init>()V

    :cond_0
    return-object v0
.end method
