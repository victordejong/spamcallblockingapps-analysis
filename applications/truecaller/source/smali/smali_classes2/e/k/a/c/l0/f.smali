.class public Le/k/a/c/l0/f;
.super Le/k/a/c/l0/b;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final d:Le/k/a/c/l0/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/k/a/c/l0/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/k/a/c/l0/f;-><init>(Le/k/a/c/c0/n;)V

    sput-object v0, Le/k/a/c/l0/f;->d:Le/k/a/c/l0/f;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/c0/n;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1}, Le/k/a/c/l0/b;-><init>(Le/k/a/c/c0/n;)V

    return-void
.end method


# virtual methods
.method public g(Le/k/a/c/a0;Le/k/a/c/g0/s;Le/k/a/c/l0/k;ZLe/k/a/c/g0/i;)Le/k/a/c/l0/c;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v14, p3

    move-object/from16 v0, p5

    .line 1
    invoke-virtual/range {p2 .. p2}, Le/k/a/c/g0/s;->d()Le/k/a/c/v;

    move-result-object v6

    .line 2
    invoke-virtual/range {p5 .. p5}, Le/k/a/c/g0/b;->e()Le/k/a/c/i;

    move-result-object v11

    .line 3
    new-instance v3, Le/k/a/c/d$a;

    invoke-virtual/range {p2 .. p2}, Le/k/a/c/g0/s;->w()Le/k/a/c/v;

    move-result-object v8

    .line 4
    invoke-virtual/range {p2 .. p2}, Le/k/a/c/g0/s;->getMetadata()Le/k/a/c/u;

    move-result-object v10

    move-object v5, v3

    move-object v7, v11

    move-object/from16 v9, p5

    invoke-direct/range {v5 .. v10}, Le/k/a/c/d$a;-><init>(Le/k/a/c/v;Le/k/a/c/i;Le/k/a/c/v;Le/k/a/c/g0/i;Le/k/a/c/u;)V

    .line 5
    invoke-virtual {v1, v2, v0}, Le/k/a/c/l0/b;->e(Le/k/a/c/a0;Le/k/a/c/g0/b;)Le/k/a/c/n;

    move-result-object v5

    .line 6
    instance-of v6, v5, Le/k/a/c/l0/n;

    if-eqz v6, :cond_0

    .line 7
    move-object v6, v5

    check-cast v6, Le/k/a/c/l0/n;

    invoke-interface {v6, v2}, Le/k/a/c/l0/n;->a(Le/k/a/c/a0;)V

    .line 8
    :cond_0
    invoke-virtual {v2, v5, v3}, Le/k/a/c/a0;->H(Le/k/a/c/n;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object v8

    .line 9
    invoke-virtual {v11}, Le/k/a/c/i;->z()Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_2

    invoke-virtual {v11}, Le/k/a/b/z/a;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v5

    goto :goto_1

    .line 10
    :cond_2
    :goto_0
    iget-object v3, v2, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 11
    invoke-virtual {v11}, Le/k/a/c/i;->k()Le/k/a/c/i;

    move-result-object v6

    .line 12
    invoke-virtual {v3}, Le/k/a/c/c0/k;->e()Le/k/a/c/b;

    move-result-object v7

    .line 13
    invoke-virtual {v7, v3, v0, v11}, Le/k/a/c/b;->E(Le/k/a/c/c0/k;Le/k/a/c/g0/i;Le/k/a/c/i;)Le/k/a/c/j0/g;

    move-result-object v7

    if-nez v7, :cond_3

    .line 14
    invoke-virtual {v1, v3, v6}, Le/k/a/c/l0/b;->b(Le/k/a/c/y;Le/k/a/c/i;)Le/k/a/c/j0/h;

    move-result-object v3

    goto :goto_1

    .line 15
    :cond_3
    iget-object v9, v3, Le/k/a/c/c0/l;->d:Le/k/a/c/j0/d;

    .line 16
    invoke-virtual {v9, v3, v0, v6}, Le/k/a/c/j0/d;->a(Le/k/a/c/c0/k;Le/k/a/c/g0/i;Le/k/a/c/i;)Ljava/util/Collection;

    move-result-object v9

    .line 17
    invoke-interface {v7, v3, v6, v9}, Le/k/a/c/j0/g;->f(Le/k/a/c/y;Le/k/a/c/i;Ljava/util/Collection;)Le/k/a/c/j0/h;

    move-result-object v3

    .line 18
    :goto_1
    iget-object v6, v2, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 19
    invoke-virtual {v6}, Le/k/a/c/c0/k;->e()Le/k/a/c/b;

    move-result-object v7

    .line 20
    invoke-virtual {v7, v6, v0, v11}, Le/k/a/c/b;->M(Le/k/a/c/c0/k;Le/k/a/c/g0/i;Le/k/a/c/i;)Le/k/a/c/j0/g;

    move-result-object v7

    if-nez v7, :cond_4

    .line 21
    invoke-virtual {v1, v6, v11}, Le/k/a/c/l0/b;->b(Le/k/a/c/y;Le/k/a/c/i;)Le/k/a/c/j0/h;

    move-result-object v6

    goto :goto_2

    .line 22
    :cond_4
    iget-object v9, v6, Le/k/a/c/c0/l;->d:Le/k/a/c/j0/d;

    .line 23
    invoke-virtual {v9, v6, v0, v11}, Le/k/a/c/j0/d;->a(Le/k/a/c/c0/k;Le/k/a/c/g0/i;Le/k/a/c/i;)Ljava/util/Collection;

    move-result-object v9

    .line 24
    invoke-interface {v7, v6, v11, v9}, Le/k/a/c/j0/g;->f(Le/k/a/c/y;Le/k/a/c/i;Ljava/util/Collection;)Le/k/a/c/j0/h;

    move-result-object v6

    :goto_2
    move-object v9, v6

    .line 25
    sget-object v6, Le/k/a/a/r$a;->d:Le/k/a/a/r$a;

    const/4 v7, 0x0

    move/from16 v10, p4

    :try_start_0
    invoke-virtual {v14, v0, v10, v11}, Le/k/a/c/l0/k;->a(Le/k/a/c/g0/b;ZLe/k/a/c/i;)Le/k/a/c/i;

    move-result-object v10
    :try_end_0
    .catch Le/k/a/c/k; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v3, :cond_7

    if-nez v10, :cond_5

    move-object v10, v11

    .line 26
    :cond_5
    invoke-virtual {v10}, Le/k/a/c/i;->k()Le/k/a/c/i;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 27
    invoke-virtual {v10, v3}, Le/k/a/c/i;->M(Ljava/lang/Object;)Le/k/a/c/i;

    move-result-object v3

    .line 28
    invoke-virtual {v3}, Le/k/a/c/i;->k()Le/k/a/c/i;

    move-object v10, v3

    goto :goto_3

    .line 29
    :cond_6
    iget-object v0, v14, Le/k/a/c/l0/k;->b:Le/k/a/c/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "serialization type "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " has no content"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4, v3, v6}, Le/k/a/c/a0;->N(Le/k/a/c/c;Le/k/a/c/g0/s;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v5

    :cond_7
    :goto_3
    if-nez v10, :cond_8

    move-object v3, v11

    goto :goto_4

    :cond_8
    move-object v3, v10

    .line 30
    :goto_4
    invoke-virtual/range {p2 .. p2}, Le/k/a/c/g0/s;->n()Le/k/a/c/g0/i;

    move-result-object v5

    if-eqz v5, :cond_22

    .line 31
    invoke-virtual {v5}, Le/k/a/c/g0/b;->d()Ljava/lang/Class;

    move-result-object v5

    .line 32
    iget-object v7, v14, Le/k/a/c/l0/k;->a:Le/k/a/c/y;

    .line 33
    iget-object v12, v3, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 34
    iget-object v13, v14, Le/k/a/c/l0/k;->e:Le/k/a/a/r$b;

    .line 35
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v15, v7, Le/k/a/c/c0/l;->i:Le/k/a/c/c0/g;

    invoke-virtual {v15, v12}, Le/k/a/c/c0/g;->a(Ljava/lang/Class;)Le/k/a/c/c0/f;

    .line 37
    iget-object v7, v7, Le/k/a/c/c0/l;->i:Le/k/a/c/c0/g;

    invoke-virtual {v7, v5}, Le/k/a/c/c0/g;->a(Ljava/lang/Class;)Le/k/a/c/c0/f;

    const/4 v5, 0x3

    new-array v7, v5, [Le/k/a/a/r$b;

    const/4 v12, 0x0

    aput-object v13, v7, v12

    const/4 v12, 0x1

    const/4 v13, 0x0

    aput-object v13, v7, v12

    const/4 v15, 0x2

    aput-object v13, v7, v15

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v5, :cond_b

    .line 38
    aget-object v5, v7, v15

    if-eqz v5, :cond_a

    if-nez v13, :cond_9

    goto :goto_6

    .line 39
    :cond_9
    invoke-virtual {v13, v5}, Le/k/a/a/r$b;->a(Le/k/a/a/r$b;)Le/k/a/a/r$b;

    move-result-object v5

    :goto_6
    move-object v13, v5

    :cond_a
    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x3

    goto :goto_5

    .line 40
    :cond_b
    invoke-virtual/range {p2 .. p2}, Le/k/a/c/g0/s;->h()Le/k/a/a/r$b;

    move-result-object v5

    invoke-virtual {v13, v5}, Le/k/a/a/r$b;->a(Le/k/a/a/r$b;)Le/k/a/a/r$b;

    move-result-object v5

    .line 41
    iget-object v7, v5, Le/k/a/a/r$b;->a:Le/k/a/a/r$a;

    .line 42
    sget-object v13, Le/k/a/a/r$a;->g:Le/k/a/a/r$a;

    if-ne v7, v13, :cond_c

    .line 43
    sget-object v7, Le/k/a/a/r$a;->a:Le/k/a/a/r$a;

    .line 44
    :cond_c
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eq v7, v12, :cond_1d

    const/4 v13, 0x2

    if-eq v7, v13, :cond_1c

    const/4 v13, 0x3

    if-eq v7, v13, :cond_1b

    const/4 v13, 0x4

    if-eq v7, v13, :cond_f

    const/4 v13, 0x5

    if-eq v7, v13, :cond_d

    const/4 v5, 0x0

    move v12, v5

    goto/16 :goto_f

    .line 45
    :cond_d
    iget-object v3, v5, Le/k/a/a/r$b;->c:Ljava/lang/Class;

    .line 46
    invoke-virtual {v2, v4, v3}, Le/k/a/c/a0;->J(Le/k/a/c/g0/s;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_e

    goto/16 :goto_d

    .line 47
    :cond_e
    invoke-virtual {v2, v3}, Le/k/a/c/a0;->K(Ljava/lang/Object;)Z

    move-result v12

    goto/16 :goto_d

    .line 48
    :cond_f
    iget-boolean v5, v14, Le/k/a/c/l0/k;->f:Z

    if-eqz v5, :cond_18

    .line 49
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v6, v14, Le/k/a/c/l0/k;->d:Ljava/lang/Object;

    if-nez v6, :cond_14

    .line 50
    iget-object v6, v14, Le/k/a/c/l0/k;->b:Le/k/a/c/c;

    iget-object v7, v14, Le/k/a/c/l0/k;->a:Le/k/a/c/y;

    invoke-virtual {v7}, Le/k/a/c/c0/k;->b()Z

    move-result v7

    check-cast v6, Le/k/a/c/g0/q;

    .line 51
    iget-object v13, v6, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    .line 52
    invoke-virtual {v13}, Le/k/a/c/g0/c;->f()Le/k/a/c/g0/c$a;

    move-result-object v13

    iget-object v13, v13, Le/k/a/c/g0/c$a;->a:Le/k/a/c/g0/e;

    if-nez v13, :cond_10

    const/4 v6, 0x0

    goto :goto_7

    :cond_10
    if-eqz v7, :cond_11

    .line 53
    iget-object v7, v6, Le/k/a/c/g0/q;->c:Le/k/a/c/c0/k;

    sget-object v15, Le/k/a/c/p;->q:Le/k/a/c/p;

    invoke-virtual {v7, v15}, Le/k/a/c/c0/k;->o(Le/k/a/c/p;)Z

    move-result v7

    invoke-virtual {v13, v7}, Le/k/a/c/g0/i;->f(Z)V

    .line 54
    :cond_11
    :try_start_1
    iget-object v7, v13, Le/k/a/c/g0/e;->d:Ljava/lang/reflect/Constructor;

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    .line 55
    invoke-virtual {v7, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_7
    if-nez v6, :cond_12

    move-object v6, v5

    .line 56
    :cond_12
    iput-object v6, v14, Le/k/a/c/l0/k;->d:Ljava/lang/Object;

    goto :goto_9

    :catch_0
    move-exception v0

    .line 57
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 58
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_8

    .line 59
    :cond_13
    invoke-static {v0}, Le/k/a/c/n0/g;->I(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 60
    invoke-static {v0}, Le/k/a/c/n0/g;->K(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 61
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Failed to instantiate bean of type "

    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v6, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    .line 62
    iget-object v4, v4, Le/k/a/c/g0/c;->b:Ljava/lang/Class;

    .line 63
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-static {v0}, Le/k/a/c/n0/g;->j(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_14
    :goto_9
    if-ne v6, v5, :cond_15

    const/4 v5, 0x0

    goto :goto_a

    .line 65
    :cond_15
    iget-object v5, v14, Le/k/a/c/l0/k;->d:Ljava/lang/Object;

    :goto_a
    if-eqz v5, :cond_18

    .line 66
    sget-object v3, Le/k/a/c/p;->p:Le/k/a/c/p;

    invoke-virtual {v2, v3}, Le/k/a/c/a0;->L(Le/k/a/c/p;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 67
    iget-object v3, v14, Le/k/a/c/l0/k;->a:Le/k/a/c/y;

    sget-object v6, Le/k/a/c/p;->q:Le/k/a/c/p;

    invoke-virtual {v3, v6}, Le/k/a/c/c0/k;->o(Le/k/a/c/p;)Z

    move-result v3

    invoke-virtual {v0, v3}, Le/k/a/c/g0/i;->f(Z)V

    .line 68
    :cond_16
    :try_start_2
    invoke-virtual {v0, v5}, Le/k/a/c/g0/i;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v5, 0x0

    goto :goto_c

    :catch_1
    move-exception v0

    .line 69
    invoke-virtual/range {p2 .. p2}, Le/k/a/c/g0/s;->getName()Ljava/lang/String;

    move-result-object v2

    .line 70
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_b

    .line 72
    :cond_17
    invoke-static {v0}, Le/k/a/c/n0/g;->I(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 73
    invoke-static {v0}, Le/k/a/c/n0/g;->K(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Failed to get property \'"

    const-string v4, "\' of default "

    invoke-static {v3, v2, v4}, Le/d/c/a/a;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instance"

    invoke-static {v5, v2, v3}, Le/d/c/a/a;->d2(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_18
    invoke-static {v3}, Ln3/g0/y;->i0(Le/k/a/c/i;)Ljava/lang/Object;

    move-result-object v3

    move v5, v12

    :goto_c
    if-nez v3, :cond_19

    :goto_d
    goto :goto_11

    .line 76
    :cond_19
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 77
    invoke-static {v3}, Le/k/a/c/n0/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :cond_1a
    move-object v6, v3

    goto :goto_10

    .line 78
    :cond_1b
    sget v3, Le/k/a/c/l0/c;->t:I

    goto :goto_e

    .line 79
    :cond_1c
    invoke-virtual {v3}, Le/k/a/b/z/a;->d()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 80
    sget v3, Le/k/a/c/l0/c;->t:I

    :goto_e
    move-object v13, v6

    goto :goto_12

    .line 81
    :cond_1d
    :goto_f
    sget-object v5, Le/k/a/c/z;->u:Le/k/a/c/z;

    .line 82
    invoke-virtual {v3}, Le/k/a/c/i;->z()Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v3, v14, Le/k/a/c/l0/k;->a:Le/k/a/c/y;

    invoke-virtual {v3, v5}, Le/k/a/c/y;->w(Le/k/a/c/z;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 83
    sget v3, Le/k/a/c/l0/c;->t:I

    move v5, v12

    :goto_10
    move v12, v5

    goto :goto_e

    :cond_1e
    const/4 v3, 0x0

    :goto_11
    move-object v13, v3

    .line 84
    :goto_12
    invoke-virtual/range {p2 .. p2}, Le/k/a/c/g0/s;->m()[Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_1f

    .line 85
    iget-object v3, v14, Le/k/a/c/l0/k;->b:Le/k/a/c/c;

    invoke-virtual {v3}, Le/k/a/c/c;->a()[Ljava/lang/Class;

    move-result-object v3

    :cond_1f
    move-object v15, v3

    .line 86
    iget-object v3, v14, Le/k/a/c/l0/k;->b:Le/k/a/c/c;

    .line 87
    check-cast v3, Le/k/a/c/g0/q;

    .line 88
    iget-object v3, v3, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    .line 89
    iget-object v6, v3, Le/k/a/c/g0/c;->j:Le/k/a/c/n0/b;

    .line 90
    new-instance v7, Le/k/a/c/l0/c;

    move-object v3, v7

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move-object v1, v7

    move-object v7, v11

    move v11, v12

    move-object v12, v13

    move-object v13, v15

    invoke-direct/range {v3 .. v13}, Le/k/a/c/l0/c;-><init>(Le/k/a/c/g0/s;Le/k/a/c/g0/i;Le/k/a/c/n0/b;Le/k/a/c/i;Le/k/a/c/n;Le/k/a/c/j0/h;Le/k/a/c/i;ZLjava/lang/Object;[Ljava/lang/Class;)V

    .line 91
    iget-object v3, v14, Le/k/a/c/l0/k;->c:Le/k/a/c/b;

    invoke-virtual {v3, v0}, Le/k/a/c/b;->x(Le/k/a/c/g0/b;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 92
    invoke-virtual {v2, v0, v3}, Le/k/a/c/a0;->Q(Le/k/a/c/g0/b;Ljava/lang/Object;)Le/k/a/c/n;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/k/a/c/l0/c;->h(Le/k/a/c/n;)V

    .line 93
    :cond_20
    iget-object v2, v14, Le/k/a/c/l0/k;->c:Le/k/a/c/b;

    invoke-virtual {v2, v0}, Le/k/a/c/b;->a0(Le/k/a/c/g0/i;)Le/k/a/c/n0/s;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 94
    new-instance v7, Le/k/a/c/l0/s/s;

    invoke-direct {v7, v1, v0}, Le/k/a/c/l0/s/s;-><init>(Le/k/a/c/l0/c;Le/k/a/c/n0/s;)V

    goto :goto_13

    :cond_21
    move-object v7, v1

    :goto_13
    return-object v7

    .line 95
    :cond_22
    iget-object v0, v14, Le/k/a/c/l0/k;->b:Le/k/a/c/c;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "could not determine property type"

    invoke-virtual {v2, v0, v4, v3, v1}, Le/k/a/c/a0;->N(Le/k/a/c/c;Le/k/a/c/g0/s;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    throw v0

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 96
    iget-object v0, v14, Le/k/a/c/l0/k;->b:Le/k/a/c/c;

    invoke-static {v1}, Le/k/a/c/n0/g;->j(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4, v1, v3}, Le/k/a/c/a0;->N(Le/k/a/c/c;Le/k/a/c/g0/s;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v5
.end method

.method public h(Le/k/a/c/a0;Le/k/a/c/i;Le/k/a/c/c;Z)Le/k/a/c/n;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/a0;",
            "Le/k/a/c/i;",
            "Le/k/a/c/c;",
            "Z)",
            "Le/k/a/c/n<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    move-object/from16 v6, p3

    move/from16 v9, p4

    .line 1
    sget-object v5, Le/k/a/a/k$c;->e:Le/k/a/a/k$c;

    sget-object v4, Le/k/a/a/r$a;->a:Le/k/a/a/r$a;

    sget-object v3, Le/k/a/a/r$a;->g:Le/k/a/a/r$a;

    .line 2
    iget-object v1, v8, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 3
    invoke-virtual/range {p2 .. p2}, Le/k/a/c/i;->z()Z

    move-result v2

    const/4 v10, 0x0

    if-eqz v2, :cond_36

    if-nez v9, :cond_0

    .line 4
    invoke-virtual {v7, v1, v6, v10}, Le/k/a/c/l0/b;->f(Le/k/a/c/y;Le/k/a/c/c;Le/k/a/c/j0/h;)Z

    move-result v1

    move/from16 v16, v1

    goto :goto_0

    :cond_0
    move/from16 v16, v9

    .line 5
    :goto_0
    iget-object v2, v8, Le/k/a/c/a0;->a:Le/k/a/c/y;

    if-nez v16, :cond_2

    .line 6
    iget-boolean v1, v0, Le/k/a/c/i;->e:Z

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual/range {p2 .. p2}, Le/k/a/c/i;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p2 .. p2}, Le/k/a/c/i;->k()Le/k/a/c/i;

    move-result-object v1

    invoke-virtual {v1}, Le/k/a/c/i;->E()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    move/from16 v1, v16

    .line 8
    :goto_1
    invoke-virtual/range {p2 .. p2}, Le/k/a/c/i;->k()Le/k/a/c/i;

    move-result-object v9

    .line 9
    invoke-virtual {v7, v2, v9}, Le/k/a/c/l0/b;->b(Le/k/a/c/y;Le/k/a/c/i;)Le/k/a/c/j0/h;

    move-result-object v15

    if-eqz v15, :cond_3

    const/4 v1, 0x0

    .line 10
    :cond_3
    move-object v14, v6

    check-cast v14, Le/k/a/c/g0/q;

    .line 11
    iget-object v9, v14, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    .line 12
    invoke-virtual/range {p1 .. p1}, Le/k/a/c/a0;->E()Le/k/a/c/b;

    move-result-object v10

    .line 13
    invoke-virtual {v10, v9}, Le/k/a/c/b;->d(Le/k/a/c/g0/b;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 14
    invoke-virtual {v8, v9, v10}, Le/k/a/c/a0;->Q(Le/k/a/c/g0/b;Ljava/lang/Object;)Le/k/a/c/n;

    move-result-object v9

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    :goto_2
    move-object v13, v9

    .line 15
    invoke-virtual/range {p2 .. p2}, Le/k/a/c/i;->F()Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 16
    move-object v12, v0

    check-cast v12, Le/k/a/c/m0/g;

    .line 17
    iget-object v9, v14, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    .line 18
    invoke-virtual/range {p1 .. p1}, Le/k/a/c/a0;->E()Le/k/a/c/b;

    move-result-object v10

    .line 19
    invoke-virtual {v10, v9}, Le/k/a/c/b;->s(Le/k/a/c/g0/b;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 20
    invoke-virtual {v8, v9, v10}, Le/k/a/c/a0;->Q(Le/k/a/c/g0/b;Ljava/lang/Object;)Le/k/a/c/n;

    move-result-object v9

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    :goto_3
    move-object/from16 v22, v9

    .line 21
    instance-of v9, v12, Le/k/a/c/m0/h;

    if-eqz v9, :cond_17

    .line 22
    move-object v2, v12

    check-cast v2, Le/k/a/c/m0/h;

    const/4 v9, 0x0

    .line 23
    invoke-virtual {v6, v9}, Le/k/a/c/c;->b(Le/k/a/a/k$d;)Le/k/a/a/k$d;

    move-result-object v9

    .line 24
    iget-object v9, v9, Le/k/a/a/k$d;->b:Le/k/a/a/k$c;

    if-ne v9, v5, :cond_6

    const/4 v1, 0x0

    move-object/from16 v25, v5

    goto/16 :goto_12

    .line 25
    :cond_6
    iget-object v12, v8, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 26
    invoke-virtual/range {p0 .. p0}, Le/k/a/c/l0/f;->i()Ljava/lang/Iterable;

    move-result-object v9

    move-object/from16 v17, v9

    check-cast v17, Le/k/a/c/n0/d;

    const/4 v9, 0x0

    :goto_4
    invoke-virtual/range {v17 .. v17}, Le/k/a/c/n0/d;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual/range {v17 .. v17}, Le/k/a/c/n0/d;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/k/a/c/l0/q;

    const/16 v18, 0x2

    move-object v10, v12

    move-object v11, v2

    move-object/from16 p4, v12

    move-object/from16 v12, p3

    move-object/from16 v23, v13

    move-object/from16 v13, v22

    move-object/from16 v25, v5

    move-object v5, v14

    move-object v14, v15

    move-object/from16 v21, v15

    move-object/from16 v15, v23

    .line 27
    invoke-interface/range {v9 .. v15}, Le/k/a/c/l0/q;->e(Le/k/a/c/y;Le/k/a/c/m0/h;Le/k/a/c/c;Le/k/a/c/n;Le/k/a/c/j0/h;Le/k/a/c/n;)Le/k/a/c/n;

    move-result-object v9

    if-eqz v9, :cond_7

    goto :goto_5

    :cond_7
    move-object/from16 v12, p4

    move-object v14, v5

    move-object/from16 v15, v21

    move-object/from16 v13, v23

    move-object/from16 v5, v25

    goto :goto_4

    :cond_8
    move-object/from16 v25, v5

    move-object/from16 p4, v12

    move-object/from16 v23, v13

    move-object v5, v14

    move-object/from16 v21, v15

    const/16 v18, 0x2

    :goto_5
    move/from16 v10, v18

    if-nez v9, :cond_15

    .line 28
    invoke-virtual {v7, v8, v2, v6}, Le/k/a/c/l0/b;->d(Le/k/a/c/a0;Le/k/a/c/i;Le/k/a/c/c;)Le/k/a/c/n;

    move-result-object v9

    if-nez v9, :cond_15

    .line 29
    invoke-virtual/range {p4 .. p4}, Le/k/a/c/c0/k;->e()Le/k/a/c/b;

    move-result-object v9

    .line 30
    iget-object v11, v5, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    .line 31
    invoke-virtual {v9, v11}, Le/k/a/c/b;->m(Le/k/a/c/g0/b;)Ljava/lang/Object;

    move-result-object v24

    .line 32
    const-class v9, Ljava/util/Map;

    .line 33
    iget-object v11, v5, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    move-object/from16 v12, p4

    .line 34
    invoke-virtual {v12, v9, v11}, Le/k/a/c/c0/l;->r(Ljava/lang/Class;Le/k/a/c/g0/c;)Le/k/a/a/p$a;

    move-result-object v9

    if-nez v9, :cond_9

    const/4 v9, 0x0

    goto :goto_6

    .line 35
    :cond_9
    invoke-virtual {v9}, Le/k/a/a/p$a;->e()Ljava/util/Set;

    move-result-object v9

    :goto_6
    move-object/from16 v17, v9

    .line 36
    const-class v9, Ljava/util/Map;

    .line 37
    iget-object v5, v5, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    .line 38
    invoke-virtual {v12, v5}, Le/k/a/c/c0/l;->s(Le/k/a/c/g0/c;)Le/k/a/a/s$a;

    move-result-object v5

    if-nez v5, :cond_a

    const/4 v5, 0x0

    goto :goto_7

    .line 39
    :cond_a
    iget-object v5, v5, Le/k/a/a/s$a;->a:Ljava/util/Set;

    :goto_7
    move-object/from16 v18, v5

    move-object/from16 v19, v2

    move/from16 v20, v1

    .line 40
    invoke-static/range {v17 .. v24}, Le/k/a/c/l0/t/t;->r(Ljava/util/Set;Ljava/util/Set;Le/k/a/c/i;ZLe/k/a/c/j0/h;Le/k/a/c/n;Le/k/a/c/n;Ljava/lang/Object;)Le/k/a/c/l0/t/t;

    move-result-object v1

    .line 41
    iget-object v2, v1, Le/k/a/c/l0/t/t;->f:Le/k/a/c/i;

    .line 42
    const-class v5, Ljava/util/Map;

    invoke-virtual {v7, v8, v6, v2, v5}, Le/k/a/c/l0/b;->c(Le/k/a/c/a0;Le/k/a/c/c;Le/k/a/c/i;Ljava/lang/Class;)Le/k/a/a/r$b;

    move-result-object v5

    if-nez v5, :cond_b

    move-object v9, v3

    goto :goto_8

    .line 43
    :cond_b
    iget-object v9, v5, Le/k/a/a/r$b;->b:Le/k/a/a/r$a;

    :goto_8
    if-eq v9, v3, :cond_14

    if-ne v9, v4, :cond_c

    goto :goto_c

    .line 44
    :cond_c
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    if-eq v9, v10, :cond_11

    const/4 v10, 0x3

    if-eq v9, v10, :cond_10

    const/4 v10, 0x4

    if-eq v9, v10, :cond_f

    const/4 v2, 0x5

    if-eq v9, v2, :cond_d

    goto :goto_9

    .line 45
    :cond_d
    iget-object v2, v5, Le/k/a/a/r$b;->d:Ljava/lang/Class;

    const/4 v5, 0x0

    .line 46
    invoke-virtual {v8, v5, v2}, Le/k/a/c/a0;->J(Le/k/a/c/g0/s;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_e

    goto :goto_a

    .line 47
    :cond_e
    invoke-virtual {v8, v2}, Le/k/a/c/a0;->K(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_b

    .line 48
    :cond_f
    invoke-static {v2}, Ln3/g0/y;->i0(Le/k/a/c/i;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 49
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 50
    invoke-static {v2}, Le/k/a/c/n0/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_a

    .line 51
    :cond_10
    sget-object v2, Le/k/a/c/l0/t/t;->s:Ljava/lang/Object;

    goto :goto_a

    .line 52
    :cond_11
    invoke-virtual {v2}, Le/k/a/b/z/a;->d()Z

    move-result v2

    if-eqz v2, :cond_12

    sget-object v2, Le/k/a/c/l0/t/t;->s:Ljava/lang/Object;

    goto :goto_a

    :cond_12
    :goto_9
    const/4 v2, 0x0

    :cond_13
    :goto_a
    const/4 v5, 0x1

    .line 53
    :goto_b
    invoke-virtual {v1, v2, v5}, Le/k/a/c/l0/t/t;->u(Ljava/lang/Object;Z)Le/k/a/c/l0/t/t;

    move-result-object v1

    goto :goto_d

    .line 54
    :cond_14
    :goto_c
    sget-object v2, Le/k/a/c/z;->t:Le/k/a/c/z;

    invoke-virtual {v8, v2}, Le/k/a/c/a0;->M(Le/k/a/c/z;)Z

    move-result v2

    if-nez v2, :cond_16

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 55
    invoke-virtual {v1, v2, v5}, Le/k/a/c/l0/t/t;->u(Ljava/lang/Object;Z)Le/k/a/c/l0/t/t;

    move-result-object v1

    goto :goto_d

    :cond_15
    move-object v1, v9

    .line 56
    :cond_16
    :goto_d
    iget-object v2, v7, Le/k/a/c/l0/b;->a:Le/k/a/c/c0/n;

    invoke-virtual {v2}, Le/k/a/c/c0/n;->a()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 57
    iget-object v2, v7, Le/k/a/c/l0/b;->a:Le/k/a/c/c0/n;

    invoke-virtual {v2}, Le/k/a/c/c0/n;->b()Ljava/lang/Iterable;

    move-result-object v2

    check-cast v2, Le/k/a/c/n0/d;

    :goto_e
    invoke-virtual {v2}, Le/k/a/c/n0/d;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-virtual {v2}, Le/k/a/c/n0/d;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/k/a/c/l0/g;

    .line 58
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_17
    move-object/from16 v25, v5

    move-object/from16 v23, v13

    move-object/from16 v21, v15

    const/4 v1, 0x0

    .line 59
    invoke-virtual/range {p0 .. p0}, Le/k/a/c/l0/f;->i()Ljava/lang/Iterable;

    move-result-object v5

    check-cast v5, Le/k/a/c/n0/d;

    :goto_f
    invoke-virtual {v5}, Le/k/a/c/n0/d;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_19

    invoke-virtual {v5}, Le/k/a/c/n0/d;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Le/k/a/c/l0/q;

    move-object v10, v2

    move-object v11, v12

    move-object/from16 v17, v12

    move-object/from16 v12, p3

    move-object/from16 v13, v22

    move-object/from16 v14, v21

    move-object/from16 v15, v23

    .line 60
    invoke-interface/range {v9 .. v15}, Le/k/a/c/l0/q;->d(Le/k/a/c/y;Le/k/a/c/m0/g;Le/k/a/c/c;Le/k/a/c/n;Le/k/a/c/j0/h;Le/k/a/c/n;)Le/k/a/c/n;

    move-result-object v1

    if-eqz v1, :cond_18

    goto :goto_10

    :cond_18
    move-object/from16 v12, v17

    goto :goto_f

    :cond_19
    :goto_10
    if-nez v1, :cond_1a

    .line 61
    invoke-virtual/range {p0 .. p3}, Le/k/a/c/l0/b;->d(Le/k/a/c/a0;Le/k/a/c/i;Le/k/a/c/c;)Le/k/a/c/n;

    move-result-object v1

    :cond_1a
    if-eqz v1, :cond_1b

    .line 62
    iget-object v2, v7, Le/k/a/c/l0/b;->a:Le/k/a/c/c0/n;

    invoke-virtual {v2}, Le/k/a/c/c0/n;->a()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 63
    iget-object v2, v7, Le/k/a/c/l0/b;->a:Le/k/a/c/c0/n;

    invoke-virtual {v2}, Le/k/a/c/c0/n;->b()Ljava/lang/Iterable;

    move-result-object v2

    check-cast v2, Le/k/a/c/n0/d;

    :goto_11
    invoke-virtual {v2}, Le/k/a/c/n0/d;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-virtual {v2}, Le/k/a/c/n0/d;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/k/a/c/l0/g;

    .line 64
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_1b
    :goto_12
    move-object v14, v3

    move-object v15, v4

    move-object v12, v6

    move-object/from16 v11, v25

    goto/16 :goto_1e

    :cond_1c
    move-object/from16 v25, v5

    move-object/from16 v23, v13

    move-object/from16 v21, v15

    const/4 v5, 0x0

    .line 65
    invoke-virtual/range {p2 .. p2}, Le/k/a/c/i;->x()Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 66
    move-object v9, v0

    check-cast v9, Le/k/a/c/m0/d;

    .line 67
    instance-of v10, v9, Le/k/a/c/m0/e;

    if-eqz v10, :cond_28

    .line 68
    check-cast v9, Le/k/a/c/m0/e;

    .line 69
    const-class v10, Ljava/lang/String;

    iget-object v11, v8, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 70
    invoke-virtual/range {p0 .. p0}, Le/k/a/c/l0/f;->i()Ljava/lang/Iterable;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Le/k/a/c/n0/d;

    :goto_13
    invoke-virtual {v12}, Le/k/a/c/n0/d;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {v12}, Le/k/a/c/n0/d;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/k/a/c/l0/q;

    move v13, v1

    move-object v1, v2

    move-object v2, v11

    move-object v14, v3

    move-object v3, v9

    move-object v15, v4

    move-object/from16 v4, p3

    move-object/from16 v17, v11

    move-object/from16 v11, v25

    move-object/from16 v5, v21

    move-object/from16 p4, v12

    move-object v12, v6

    move-object/from16 v6, v23

    .line 71
    invoke-interface/range {v1 .. v6}, Le/k/a/c/l0/q;->g(Le/k/a/c/y;Le/k/a/c/m0/e;Le/k/a/c/c;Le/k/a/c/j0/h;Le/k/a/c/n;)Le/k/a/c/n;

    move-result-object v5

    if-eqz v5, :cond_1d

    goto :goto_14

    :cond_1d
    move-object/from16 v25, v11

    move-object v6, v12

    move v1, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v11, v17

    move-object/from16 v12, p4

    goto :goto_13

    :cond_1e
    move v13, v1

    move-object v14, v3

    move-object v15, v4

    move-object v12, v6

    move-object/from16 v11, v25

    :goto_14
    if-nez v5, :cond_26

    .line 72
    invoke-virtual {v7, v8, v9, v12}, Le/k/a/c/l0/b;->d(Le/k/a/c/a0;Le/k/a/c/i;Le/k/a/c/c;)Le/k/a/c/n;

    move-result-object v1

    if-nez v1, :cond_27

    const/4 v2, 0x0

    .line 73
    invoke-virtual {v12, v2}, Le/k/a/c/c;->b(Le/k/a/a/k$d;)Le/k/a/a/k$d;

    move-result-object v2

    .line 74
    iget-object v2, v2, Le/k/a/a/k$d;->b:Le/k/a/a/k$c;

    if-ne v2, v11, :cond_1f

    goto/16 :goto_1d

    .line 75
    :cond_1f
    iget-object v2, v9, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 76
    const-class v3, Ljava/util/EnumSet;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 77
    iget-object v1, v9, Le/k/a/c/m0/d;->j:Le/k/a/c/i;

    .line 78
    invoke-virtual {v1}, Le/k/a/c/i;->A()Z

    move-result v2

    if-nez v2, :cond_20

    const/4 v1, 0x0

    .line 79
    :cond_20
    new-instance v2, Le/k/a/c/l0/t/n;

    invoke-direct {v2, v1}, Le/k/a/c/l0/t/n;-><init>(Le/k/a/c/i;)V

    move-object v1, v2

    goto :goto_16

    .line 80
    :cond_21
    iget-object v3, v9, Le/k/a/c/m0/d;->j:Le/k/a/c/i;

    .line 81
    iget-object v3, v3, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 82
    const-class v4, Ljava/util/RandomAccess;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_24

    if-ne v3, v10, :cond_23

    .line 83
    invoke-static/range {v23 .. v23}, Le/k/a/c/n0/g;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 84
    sget-object v1, Le/k/a/c/l0/s/g;->d:Le/k/a/c/l0/s/g;

    :cond_22
    move-object/from16 v6, v21

    move-object/from16 v5, v23

    goto :goto_15

    .line 85
    :cond_23
    iget-object v1, v9, Le/k/a/c/m0/d;->j:Le/k/a/c/i;

    .line 86
    new-instance v2, Le/k/a/c/l0/s/f;

    move-object/from16 v6, v21

    move-object/from16 v5, v23

    invoke-direct {v2, v1, v13, v6, v5}, Le/k/a/c/l0/s/f;-><init>(Le/k/a/c/i;ZLe/k/a/c/j0/h;Le/k/a/c/n;)V

    move-object v1, v2

    goto :goto_15

    :cond_24
    move-object/from16 v6, v21

    move-object/from16 v5, v23

    if-ne v3, v10, :cond_25

    .line 87
    invoke-static {v5}, Le/k/a/c/n0/g;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 88
    sget-object v1, Le/k/a/c/l0/s/o;->d:Le/k/a/c/l0/s/o;

    :cond_25
    :goto_15
    if-nez v1, :cond_27

    .line 89
    iget-object v1, v9, Le/k/a/c/m0/d;->j:Le/k/a/c/i;

    .line 90
    new-instance v2, Le/k/a/c/l0/t/j;

    invoke-direct {v2, v1, v13, v6, v5}, Le/k/a/c/l0/t/j;-><init>(Le/k/a/c/i;ZLe/k/a/c/j0/h;Le/k/a/c/n;)V

    move-object v5, v2

    :cond_26
    move-object v1, v5

    .line 91
    :cond_27
    :goto_16
    iget-object v2, v7, Le/k/a/c/l0/b;->a:Le/k/a/c/c0/n;

    invoke-virtual {v2}, Le/k/a/c/c0/n;->a()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 92
    iget-object v2, v7, Le/k/a/c/l0/b;->a:Le/k/a/c/c0/n;

    invoke-virtual {v2}, Le/k/a/c/c0/n;->b()Ljava/lang/Iterable;

    move-result-object v2

    check-cast v2, Le/k/a/c/n0/d;

    :goto_17
    invoke-virtual {v2}, Le/k/a/c/n0/d;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-virtual {v2}, Le/k/a/c/n0/d;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/k/a/c/l0/g;

    .line 93
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :cond_28
    move-object v14, v3

    move-object v15, v4

    move-object v12, v6

    move-object/from16 v6, v21

    move-object/from16 v5, v23

    move-object/from16 v11, v25

    .line 94
    invoke-virtual/range {p0 .. p0}, Le/k/a/c/l0/f;->i()Ljava/lang/Iterable;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Le/k/a/c/n0/d;

    const/4 v1, 0x0

    :goto_18
    invoke-virtual {v10}, Le/k/a/c/n0/d;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {v10}, Le/k/a/c/n0/d;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/k/a/c/l0/q;

    move-object v13, v2

    move-object v3, v9

    move-object/from16 v4, p3

    move-object/from16 v23, v5

    move-object v5, v6

    move-object/from16 v21, v6

    move-object/from16 v6, v23

    .line 95
    invoke-interface/range {v1 .. v6}, Le/k/a/c/l0/q;->c(Le/k/a/c/y;Le/k/a/c/m0/d;Le/k/a/c/c;Le/k/a/c/j0/h;Le/k/a/c/n;)Le/k/a/c/n;

    move-result-object v1

    if-eqz v1, :cond_29

    goto :goto_19

    :cond_29
    move-object v2, v13

    move-object/from16 v6, v21

    move-object/from16 v5, v23

    goto :goto_18

    :cond_2a
    :goto_19
    if-nez v1, :cond_2b

    .line 96
    invoke-virtual/range {p0 .. p3}, Le/k/a/c/l0/b;->d(Le/k/a/c/a0;Le/k/a/c/i;Le/k/a/c/c;)Le/k/a/c/n;

    move-result-object v1

    :cond_2b
    if-eqz v1, :cond_34

    .line 97
    iget-object v2, v7, Le/k/a/c/l0/b;->a:Le/k/a/c/c0/n;

    invoke-virtual {v2}, Le/k/a/c/c0/n;->a()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 98
    iget-object v2, v7, Le/k/a/c/l0/b;->a:Le/k/a/c/c0/n;

    invoke-virtual {v2}, Le/k/a/c/c0/n;->b()Ljava/lang/Iterable;

    move-result-object v2

    check-cast v2, Le/k/a/c/n0/d;

    :goto_1a
    invoke-virtual {v2}, Le/k/a/c/n0/d;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-virtual {v2}, Le/k/a/c/n0/d;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/k/a/c/l0/g;

    .line 99
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :cond_2c
    move v13, v1

    move-object v14, v3

    move-object v15, v4

    move-object v12, v6

    move-object/from16 v11, v25

    .line 100
    invoke-virtual/range {p2 .. p2}, Le/k/a/c/i;->w()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 101
    move-object v9, v0

    check-cast v9, Le/k/a/c/m0/a;

    .line 102
    iget-object v10, v8, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 103
    invoke-virtual/range {p0 .. p0}, Le/k/a/c/l0/f;->i()Ljava/lang/Iterable;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Le/k/a/c/n0/d;

    const/4 v1, 0x0

    :cond_2d
    invoke-virtual/range {v17 .. v17}, Le/k/a/c/n0/d;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual/range {v17 .. v17}, Le/k/a/c/n0/d;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/k/a/c/l0/q;

    move-object v2, v10

    move-object v3, v9

    move-object/from16 v4, p3

    move-object/from16 v5, v21

    move-object/from16 v6, v23

    .line 104
    invoke-interface/range {v1 .. v6}, Le/k/a/c/l0/q;->f(Le/k/a/c/y;Le/k/a/c/m0/a;Le/k/a/c/c;Le/k/a/c/j0/h;Le/k/a/c/n;)Le/k/a/c/n;

    move-result-object v1

    if-eqz v1, :cond_2d

    :cond_2e
    if-nez v1, :cond_32

    .line 105
    iget-object v2, v9, Le/k/a/c/i;->a:Ljava/lang/Class;

    move-object/from16 v3, v23

    if-eqz v3, :cond_2f

    .line 106
    invoke-static {v3}, Le/k/a/c/n0/g;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 107
    :cond_2f
    const-class v1, [Ljava/lang/String;

    if-ne v1, v2, :cond_30

    .line 108
    sget-object v1, Le/k/a/c/l0/s/n;->f:Le/k/a/c/l0/s/n;

    goto :goto_1b

    .line 109
    :cond_30
    sget-object v1, Le/k/a/c/l0/t/i0;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/k/a/c/n;

    :cond_31
    :goto_1b
    if-nez v1, :cond_32

    .line 110
    new-instance v1, Le/k/a/c/l0/t/d0;

    .line 111
    iget-object v2, v9, Le/k/a/c/m0/a;->j:Le/k/a/c/i;

    move-object/from16 v4, v21

    .line 112
    invoke-direct {v1, v2, v13, v4, v3}, Le/k/a/c/l0/t/d0;-><init>(Le/k/a/c/i;ZLe/k/a/c/j0/h;Le/k/a/c/n;)V

    .line 113
    :cond_32
    iget-object v2, v7, Le/k/a/c/l0/b;->a:Le/k/a/c/c0/n;

    invoke-virtual {v2}, Le/k/a/c/c0/n;->a()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 114
    iget-object v2, v7, Le/k/a/c/l0/b;->a:Le/k/a/c/c0/n;

    invoke-virtual {v2}, Le/k/a/c/c0/n;->b()Ljava/lang/Iterable;

    move-result-object v2

    check-cast v2, Le/k/a/c/n0/d;

    :goto_1c
    invoke-virtual {v2}, Le/k/a/c/n0/d;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-virtual {v2}, Le/k/a/c/n0/d;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/k/a/c/l0/g;

    .line 115
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_33
    :goto_1d
    const/4 v1, 0x0

    :cond_34
    :goto_1e
    if-eqz v1, :cond_35

    return-object v1

    :cond_35
    move/from16 v9, v16

    goto/16 :goto_26

    :cond_36
    move-object v14, v3

    move-object v15, v4

    move-object v11, v5

    move-object v12, v6

    .line 116
    invoke-virtual/range {p2 .. p2}, Le/k/a/b/z/a;->d()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 117
    move-object v10, v0

    check-cast v10, Le/k/a/c/m0/j;

    .line 118
    iget-object v1, v10, Le/k/a/c/m0/j;->j:Le/k/a/c/i;

    .line 119
    iget-object v2, v1, Le/k/a/c/i;->d:Ljava/lang/Object;

    .line 120
    check-cast v2, Le/k/a/c/j0/h;

    .line 121
    iget-object v13, v8, Le/k/a/c/a0;->a:Le/k/a/c/y;

    if-nez v2, :cond_37

    .line 122
    invoke-virtual {v7, v13, v1}, Le/k/a/c/l0/b;->b(Le/k/a/c/y;Le/k/a/c/i;)Le/k/a/c/j0/h;

    move-result-object v2

    :cond_37
    move-object v6, v2

    .line 123
    iget-object v1, v1, Le/k/a/c/i;->c:Ljava/lang/Object;

    .line 124
    move-object v5, v1

    check-cast v5, Le/k/a/c/n;

    .line 125
    invoke-virtual/range {p0 .. p0}, Le/k/a/c/l0/f;->i()Ljava/lang/Iterable;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Le/k/a/c/n0/d;

    :goto_1f
    invoke-virtual/range {v16 .. v16}, Le/k/a/c/n0/d;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual/range {v16 .. v16}, Le/k/a/c/n0/d;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/k/a/c/l0/q;

    move-object v2, v13

    move-object v3, v10

    move-object/from16 v4, p3

    move-object/from16 v17, v5

    move-object v5, v6

    move-object/from16 v18, v13

    move-object v13, v6

    move-object/from16 v6, v17

    .line 126
    invoke-interface/range {v1 .. v6}, Le/k/a/c/l0/q;->a(Le/k/a/c/y;Le/k/a/c/m0/j;Le/k/a/c/c;Le/k/a/c/j0/h;Le/k/a/c/n;)Le/k/a/c/n;

    move-result-object v1

    if-eqz v1, :cond_38

    goto/16 :goto_25

    :cond_38
    move-object v6, v13

    move-object/from16 v5, v17

    move-object/from16 v13, v18

    goto :goto_1f

    :cond_39
    move-object/from16 v17, v5

    move-object v13, v6

    .line 127
    const-class v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10, v1}, Le/k/a/c/i;->I(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 128
    iget-object v1, v10, Le/k/a/c/m0/j;->j:Le/k/a/c/i;

    .line 129
    const-class v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7, v8, v12, v1, v2}, Le/k/a/c/l0/b;->c(Le/k/a/c/a0;Le/k/a/c/c;Le/k/a/c/i;Ljava/lang/Class;)Le/k/a/a/r$b;

    move-result-object v2

    if-nez v2, :cond_3a

    move-object v3, v14

    goto :goto_20

    .line 130
    :cond_3a
    iget-object v3, v2, Le/k/a/a/r$b;->b:Le/k/a/a/r$a;

    :goto_20
    if-eq v3, v14, :cond_43

    if-ne v3, v15, :cond_3b

    goto :goto_23

    .line 131
    :cond_3b
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_40

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3f

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3e

    const/4 v1, 0x5

    if-eq v3, v1, :cond_3c

    goto :goto_21

    .line 132
    :cond_3c
    iget-object v1, v2, Le/k/a/a/r$b;->d:Ljava/lang/Class;

    const/4 v2, 0x0

    .line 133
    invoke-virtual {v8, v2, v1}, Le/k/a/c/a0;->J(Le/k/a/c/g0/s;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3d

    goto :goto_22

    .line 134
    :cond_3d
    invoke-virtual {v8, v1}, Le/k/a/c/a0;->K(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_24

    .line 135
    :cond_3e
    invoke-static {v1}, Ln3/g0/y;->i0(Le/k/a/c/i;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 136
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 137
    invoke-static {v1}, Le/k/a/c/n0/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_22

    .line 138
    :cond_3f
    sget-object v1, Le/k/a/c/l0/t/t;->s:Ljava/lang/Object;

    goto :goto_22

    .line 139
    :cond_40
    invoke-virtual {v1}, Le/k/a/b/z/a;->d()Z

    move-result v1

    if-eqz v1, :cond_41

    sget-object v1, Le/k/a/c/l0/t/t;->s:Ljava/lang/Object;

    goto :goto_22

    :cond_41
    :goto_21
    const/4 v1, 0x0

    :cond_42
    :goto_22
    const/4 v2, 0x1

    goto :goto_24

    :cond_43
    :goto_23
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 140
    :goto_24
    new-instance v3, Le/k/a/c/l0/t/c;

    move-object/from16 v4, v17

    invoke-direct {v3, v10, v9, v13, v4}, Le/k/a/c/l0/t/c;-><init>(Le/k/a/c/m0/j;ZLe/k/a/c/j0/h;Le/k/a/c/n;)V

    .line 141
    invoke-virtual {v3, v1, v2}, Le/k/a/c/l0/t/c;->q(Ljava/lang/Object;Z)Le/k/a/c/l0/t/f0;

    move-result-object v1

    goto :goto_25

    :cond_44
    const/4 v1, 0x0

    goto :goto_25

    .line 142
    :cond_45
    invoke-virtual/range {p0 .. p0}, Le/k/a/c/l0/f;->i()Ljava/lang/Iterable;

    move-result-object v2

    check-cast v2, Le/k/a/c/n0/d;

    const/4 v3, 0x0

    :cond_46
    invoke-virtual {v2}, Le/k/a/c/n0/d;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-virtual {v2}, Le/k/a/c/n0/d;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/k/a/c/l0/q;

    .line 143
    invoke-interface {v3, v1, v0, v12}, Le/k/a/c/l0/q;->b(Le/k/a/c/y;Le/k/a/c/i;Le/k/a/c/c;)Le/k/a/c/n;

    move-result-object v3

    if-eqz v3, :cond_46

    :cond_47
    move-object v1, v3

    :goto_25
    if-nez v1, :cond_48

    .line 144
    invoke-virtual/range {p0 .. p3}, Le/k/a/c/l0/b;->d(Le/k/a/c/a0;Le/k/a/c/i;Le/k/a/c/c;)Le/k/a/c/n;

    move-result-object v1

    :cond_48
    :goto_26
    if-nez v1, :cond_b6

    .line 145
    iget-object v1, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 146
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 147
    sget-object v2, Le/k/a/c/l0/b;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/k/a/c/n;

    if-nez v2, :cond_49

    .line 148
    sget-object v3, Le/k/a/c/l0/b;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-eqz v1, :cond_49

    const/4 v2, 0x0

    .line 149
    invoke-static {v1, v2}, Le/k/a/c/n0/g;->i(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/k/a/c/n;

    goto :goto_27

    :cond_49
    const/4 v1, 0x0

    move-object/from16 v26, v2

    move v2, v1

    move-object/from16 v1, v26

    :goto_27
    if-nez v1, :cond_b6

    .line 150
    invoke-virtual/range {p2 .. p2}, Le/k/a/c/i;->B()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 151
    iget-object v1, v8, Le/k/a/c/a0;->a:Le/k/a/c/y;

    const/4 v3, 0x0

    .line 152
    invoke-virtual {v12, v3}, Le/k/a/c/c;->b(Le/k/a/a/k$d;)Le/k/a/a/k$d;

    move-result-object v3

    .line 153
    iget-object v4, v3, Le/k/a/a/k$d;->b:Le/k/a/a/k$c;

    if-ne v4, v11, :cond_4c

    .line 154
    move-object v1, v12

    check-cast v1, Le/k/a/c/g0/q;

    .line 155
    invoke-virtual {v1}, Le/k/a/c/g0/q;->h()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 156
    :cond_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 157
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/k/a/c/g0/s;

    .line 158
    invoke-virtual {v3}, Le/k/a/c/g0/s;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "declaringClass"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 159
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_4b
    const/4 v1, 0x0

    const/4 v3, 0x1

    goto/16 :goto_31

    .line 160
    :cond_4c
    iget-object v4, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 161
    sget v5, Le/k/a/c/l0/t/m;->e:I

    .line 162
    invoke-static {v1, v4}, Le/k/a/c/n0/k;->a(Le/k/a/c/c0/k;Ljava/lang/Class;)Le/k/a/c/n0/k;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 163
    invoke-static {v4, v3, v6, v5}, Le/k/a/c/l0/t/m;->p(Ljava/lang/Class;Le/k/a/a/k$d;ZLjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    .line 164
    new-instance v4, Le/k/a/c/l0/t/m;

    invoke-direct {v4, v1, v3}, Le/k/a/c/l0/t/m;-><init>(Le/k/a/c/n0/k;Ljava/lang/Boolean;)V

    .line 165
    iget-object v1, v7, Le/k/a/c/l0/b;->a:Le/k/a/c/c0/n;

    invoke-virtual {v1}, Le/k/a/c/c0/n;->a()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 166
    iget-object v1, v7, Le/k/a/c/l0/b;->a:Le/k/a/c/c0/n;

    invoke-virtual {v1}, Le/k/a/c/c0/n;->b()Ljava/lang/Iterable;

    move-result-object v1

    check-cast v1, Le/k/a/c/n0/d;

    :goto_28
    invoke-virtual {v1}, Le/k/a/c/n0/d;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-virtual {v1}, Le/k/a/c/n0/d;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/k/a/c/l0/g;

    .line 167
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    :cond_4d
    move-object v1, v4

    move v3, v6

    goto/16 :goto_31

    :cond_4e
    const/4 v3, 0x1

    .line 168
    iget-object v1, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 169
    sget-object v4, Le/k/a/c/f0/g;->f:Le/k/a/c/f0/g;

    .line 170
    iget-object v5, v8, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 171
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v6, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 173
    sget-object v10, Le/k/a/c/f0/g;->c:Ljava/lang/Class;

    invoke-virtual {v4, v6, v10}, Le/k/a/c/f0/g;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_4f

    const-string v5, "com.fasterxml.jackson.databind.ext.DOMSerializer"

    .line 174
    invoke-virtual {v4, v5, v0}, Le/k/a/c/f0/g;->d(Ljava/lang/String;Le/k/a/c/i;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/k/a/c/n;

    goto :goto_29

    .line 175
    :cond_4f
    sget-object v10, Le/k/a/c/f0/g;->e:Le/k/a/c/f0/a;

    if-eqz v10, :cond_50

    .line 176
    invoke-virtual {v10, v6}, Le/k/a/c/f0/a;->b(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v10

    if-eqz v10, :cond_50

    move-object v4, v10

    goto :goto_29

    .line 177
    :cond_50
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    .line 178
    iget-object v13, v4, Le/k/a/c/f0/g;->b:Ljava/util/Map;

    invoke-interface {v13, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_52

    .line 179
    instance-of v5, v13, Le/k/a/c/n;

    if-eqz v5, :cond_51

    .line 180
    move-object v4, v13

    check-cast v4, Le/k/a/c/n;

    goto :goto_29

    .line 181
    :cond_51
    check-cast v13, Ljava/lang/String;

    invoke-virtual {v4, v13, v0}, Le/k/a/c/f0/g;->d(Ljava/lang/String;Le/k/a/c/i;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/k/a/c/n;

    goto :goto_29

    :cond_52
    const-string v13, "javax.xml."

    .line 182
    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_53

    invoke-virtual {v4, v6, v13}, Le/k/a/c/f0/g;->b(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_54

    :cond_53
    const-string v6, "com.fasterxml.jackson.databind.ext.CoreXMLSerializers"

    .line 183
    invoke-virtual {v4, v6, v0}, Le/k/a/c/f0/g;->d(Ljava/lang/String;Le/k/a/c/i;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_55

    :cond_54
    const/4 v4, 0x0

    goto :goto_29

    .line 184
    :cond_55
    check-cast v4, Le/k/a/c/l0/q;

    invoke-interface {v4, v5, v0, v12}, Le/k/a/c/l0/q;->b(Le/k/a/c/y;Le/k/a/c/i;Le/k/a/c/c;)Le/k/a/c/n;

    move-result-object v4

    :goto_29
    if-eqz v4, :cond_56

    goto/16 :goto_2f

    .line 185
    :cond_56
    const-class v4, Ljava/util/Calendar;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 186
    sget-object v1, Le/k/a/c/l0/t/h;->f:Le/k/a/c/l0/t/h;

    goto/16 :goto_31

    .line 187
    :cond_57
    const-class v4, Ljava/util/Date;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 188
    sget-object v1, Le/k/a/c/l0/t/k;->f:Le/k/a/c/l0/t/k;

    goto/16 :goto_31

    .line 189
    :cond_58
    const-class v4, Ljava/util/Map$Entry;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 190
    const-class v1, Ljava/util/Map$Entry;

    invoke-virtual {v0, v1}, Le/k/a/c/i;->i(Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object v1

    .line 191
    invoke-virtual {v1, v2}, Le/k/a/c/i;->h(I)Le/k/a/c/i;

    move-result-object v18

    .line 192
    invoke-virtual {v1, v3}, Le/k/a/c/i;->h(I)Le/k/a/c/i;

    move-result-object v1

    .line 193
    const-class v4, Ljava/util/Map$Entry;

    .line 194
    iget-object v5, v8, Le/k/a/c/a0;->a:Le/k/a/c/y;

    invoke-virtual {v5, v4}, Le/k/a/c/c0/l;->h(Ljava/lang/Class;)Le/k/a/a/k$d;

    move-result-object v4

    const/4 v5, 0x0

    .line 195
    invoke-virtual {v12, v5}, Le/k/a/c/c;->b(Le/k/a/a/k$d;)Le/k/a/a/k$d;

    move-result-object v5

    if-nez v5, :cond_59

    goto :goto_2a

    .line 196
    :cond_59
    invoke-virtual {v5, v4}, Le/k/a/a/k$d;->f(Le/k/a/a/k$d;)Le/k/a/a/k$d;

    move-result-object v4

    .line 197
    :goto_2a
    iget-object v4, v4, Le/k/a/a/k$d;->b:Le/k/a/a/k$c;

    if-ne v4, v11, :cond_5a

    goto/16 :goto_30

    .line 198
    :cond_5a
    new-instance v4, Le/k/a/c/l0/s/i;

    .line 199
    iget-object v5, v8, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 200
    invoke-virtual {v7, v5, v1}, Le/k/a/c/l0/b;->b(Le/k/a/c/y;Le/k/a/c/i;)Le/k/a/c/j0/h;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v16, v4

    move-object/from16 v17, v1

    move-object/from16 v19, v1

    move/from16 v20, v9

    invoke-direct/range {v16 .. v22}, Le/k/a/c/l0/s/i;-><init>(Le/k/a/c/i;Le/k/a/c/i;Le/k/a/c/i;ZLe/k/a/c/j0/h;Le/k/a/c/d;)V

    .line 201
    const-class v5, Ljava/util/Map$Entry;

    invoke-virtual {v7, v8, v12, v1, v5}, Le/k/a/c/l0/b;->c(Le/k/a/c/a0;Le/k/a/c/c;Le/k/a/c/i;Ljava/lang/Class;)Le/k/a/a/r$b;

    move-result-object v5

    if-nez v5, :cond_5b

    move-object v6, v14

    goto :goto_2b

    .line 202
    :cond_5b
    iget-object v6, v5, Le/k/a/a/r$b;->b:Le/k/a/a/r$a;

    :goto_2b
    if-eq v6, v14, :cond_65

    if-ne v6, v15, :cond_5c

    goto/16 :goto_2f

    .line 203
    :cond_5c
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v10, 0x2

    if-eq v6, v10, :cond_61

    const/4 v10, 0x3

    if-eq v6, v10, :cond_60

    const/4 v10, 0x4

    if-eq v6, v10, :cond_5f

    const/4 v1, 0x5

    if-eq v6, v1, :cond_5d

    goto :goto_2c

    .line 204
    :cond_5d
    iget-object v1, v5, Le/k/a/a/r$b;->d:Ljava/lang/Class;

    const/4 v5, 0x0

    .line 205
    invoke-virtual {v8, v5, v1}, Le/k/a/c/a0;->J(Le/k/a/c/g0/s;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5e

    goto :goto_2d

    .line 206
    :cond_5e
    invoke-virtual {v8, v1}, Le/k/a/c/a0;->K(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_2e

    .line 207
    :cond_5f
    invoke-static {v1}, Ln3/g0/y;->i0(Le/k/a/c/i;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_63

    .line 208
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_63

    .line 209
    invoke-static {v1}, Le/k/a/c/n0/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2d

    .line 210
    :cond_60
    sget-object v1, Le/k/a/c/l0/t/t;->s:Ljava/lang/Object;

    goto :goto_2d

    .line 211
    :cond_61
    invoke-virtual {v1}, Le/k/a/b/z/a;->d()Z

    move-result v1

    if-eqz v1, :cond_62

    sget-object v1, Le/k/a/c/l0/t/t;->s:Ljava/lang/Object;

    goto :goto_2d

    :cond_62
    :goto_2c
    const/4 v1, 0x0

    :cond_63
    :goto_2d
    move v5, v3

    .line 212
    :goto_2e
    iget-object v6, v4, Le/k/a/c/l0/s/i;->l:Ljava/lang/Object;

    if-ne v6, v1, :cond_64

    iget-boolean v6, v4, Le/k/a/c/l0/s/i;->m:Z

    if-ne v6, v5, :cond_64

    goto :goto_2f

    .line 213
    :cond_64
    new-instance v6, Le/k/a/c/l0/s/i;

    iget-object v15, v4, Le/k/a/c/l0/s/i;->h:Le/k/a/c/n;

    iget-object v10, v4, Le/k/a/c/l0/s/i;->i:Le/k/a/c/n;

    move-object v13, v6

    move-object v14, v4

    move-object/from16 v16, v10

    move-object/from16 v17, v1

    move/from16 v18, v5

    invoke-direct/range {v13 .. v18}, Le/k/a/c/l0/s/i;-><init>(Le/k/a/c/l0/s/i;Le/k/a/c/n;Le/k/a/c/n;Ljava/lang/Object;Z)V

    move-object v1, v6

    goto/16 :goto_31

    :cond_65
    :goto_2f
    move-object v1, v4

    goto/16 :goto_31

    .line 214
    :cond_66
    const-class v4, Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 215
    new-instance v1, Le/k/a/c/l0/t/g;

    invoke-direct {v1}, Le/k/a/c/l0/t/g;-><init>()V

    goto :goto_31

    .line 216
    :cond_67
    const-class v4, Ljava/net/InetAddress;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 217
    new-instance v1, Le/k/a/c/l0/t/p;

    invoke-direct {v1}, Le/k/a/c/l0/t/p;-><init>()V

    goto :goto_31

    .line 218
    :cond_68
    const-class v4, Ljava/net/InetSocketAddress;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 219
    new-instance v1, Le/k/a/c/l0/t/q;

    invoke-direct {v1}, Le/k/a/c/l0/t/q;-><init>()V

    goto :goto_31

    .line 220
    :cond_69
    const-class v4, Ljava/util/TimeZone;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 221
    new-instance v1, Le/k/a/c/l0/t/s0;

    invoke-direct {v1}, Le/k/a/c/l0/t/s0;-><init>()V

    goto :goto_31

    .line 222
    :cond_6a
    const-class v4, Ljava/nio/charset/Charset;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 223
    sget-object v1, Le/k/a/c/l0/t/t0;->c:Le/k/a/c/l0/t/t0;

    goto :goto_31

    .line 224
    :cond_6b
    const-class v4, Ljava/lang/Number;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6d

    const/4 v1, 0x0

    .line 225
    invoke-virtual {v12, v1}, Le/k/a/c/c;->b(Le/k/a/a/k$d;)Le/k/a/a/k$d;

    move-result-object v1

    .line 226
    iget-object v1, v1, Le/k/a/a/k$d;->b:Le/k/a/a/k$c;

    .line 227
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_6d

    const/4 v4, 0x4

    if-eq v1, v4, :cond_6d

    const/16 v4, 0x8

    if-eq v1, v4, :cond_6c

    .line 228
    sget-object v1, Le/k/a/c/l0/t/v;->c:Le/k/a/c/l0/t/v;

    goto :goto_31

    .line 229
    :cond_6c
    sget-object v1, Le/k/a/c/l0/t/t0;->c:Le/k/a/c/l0/t/t0;

    goto :goto_31

    :cond_6d
    :goto_30
    const/4 v1, 0x0

    :goto_31
    if-nez v1, :cond_b6

    .line 230
    iget-object v1, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 231
    invoke-static {v1}, Le/k/a/c/n0/g;->d(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6e

    invoke-static {v1}, Le/k/a/c/n0/g;->B(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_6e

    goto :goto_32

    :cond_6e
    move v3, v2

    :goto_32
    if-nez v3, :cond_6f

    .line 232
    iget-object v1, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 233
    invoke-static {v1}, Le/k/a/c/n0/g;->w(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_6f

    const/4 v0, 0x0

    goto/16 :goto_57

    .line 234
    :cond_6f
    const-class v1, Ljava/lang/Object;

    iget-object v3, v12, Le/k/a/c/c;->a:Le/k/a/c/i;

    .line 235
    iget-object v3, v3, Le/k/a/c/i;->a:Ljava/lang/Class;

    if-ne v3, v1, :cond_70

    .line 236
    invoke-virtual {v8, v1}, Le/k/a/c/a0;->G(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v0

    goto/16 :goto_57

    .line 237
    :cond_70
    invoke-static/range {p2 .. p2}, Ln3/g0/y;->A(Le/k/a/c/i;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_71

    .line 238
    iget-object v3, v8, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 239
    iget-object v4, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 240
    invoke-virtual {v3, v4}, Le/k/a/c/c0/l;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_71

    .line 241
    new-instance v3, Le/k/a/c/l0/s/r;

    invoke-direct {v3, v0, v1}, Le/k/a/c/l0/s/r;-><init>(Le/k/a/c/i;Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_33

    :cond_71
    const/4 v1, 0x0

    :goto_33
    if-eqz v1, :cond_73

    :cond_72
    :goto_34
    move-object v0, v1

    goto/16 :goto_57

    .line 242
    :cond_73
    iget-object v10, v8, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 243
    new-instance v11, Le/k/a/c/l0/e;

    invoke-direct {v11, v12}, Le/k/a/c/l0/e;-><init>(Le/k/a/c/c;)V

    .line 244
    iput-object v10, v11, Le/k/a/c/l0/e;->b:Le/k/a/c/y;

    .line 245
    move-object v13, v12

    check-cast v13, Le/k/a/c/g0/q;

    .line 246
    invoke-virtual {v13}, Le/k/a/c/g0/q;->h()Ljava/util/List;

    move-result-object v1

    .line 247
    iget-object v3, v8, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 248
    invoke-virtual {v3}, Le/k/a/c/c0/k;->e()Le/k/a/c/b;

    move-result-object v4

    .line 249
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 250
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 251
    :cond_74
    :goto_35
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_78

    .line 252
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Le/k/a/c/g0/s;

    .line 253
    invoke-virtual {v14}, Le/k/a/c/g0/s;->n()Le/k/a/c/g0/i;

    move-result-object v15

    if-nez v15, :cond_75

    .line 254
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_35

    .line 255
    :cond_75
    invoke-virtual {v14}, Le/k/a/c/g0/s;->u()Ljava/lang/Class;

    move-result-object v14

    .line 256
    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    if-nez v15, :cond_77

    .line 257
    invoke-virtual {v3, v14}, Le/k/a/c/c0/l;->f(Ljava/lang/Class;)Le/k/a/c/c0/f;

    .line 258
    invoke-virtual {v3, v14}, Le/k/a/c/c0/k;->m(Ljava/lang/Class;)Le/k/a/c/c;

    move-result-object v15

    .line 259
    check-cast v15, Le/k/a/c/g0/q;

    .line 260
    iget-object v15, v15, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    .line 261
    invoke-virtual {v4, v15}, Le/k/a/c/b;->o0(Le/k/a/c/g0/c;)Ljava/lang/Boolean;

    move-result-object v15

    if-nez v15, :cond_76

    .line 262
    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 263
    :cond_76
    invoke-virtual {v5, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_77
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_74

    .line 265
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_35

    .line 266
    :cond_78
    sget-object v4, Le/k/a/c/p;->k:Le/k/a/c/p;

    invoke-virtual {v3, v4}, Le/k/a/c/c0/k;->o(Le/k/a/c/p;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 267
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 268
    :cond_79
    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 269
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/k/a/c/g0/s;

    .line 270
    invoke-virtual {v5}, Le/k/a/c/g0/s;->a()Z

    move-result v6

    if-nez v6, :cond_79

    invoke-virtual {v5}, Le/k/a/c/g0/s;->B()Z

    move-result v5

    if-nez v5, :cond_79

    .line 271
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_36

    .line 272
    :cond_7a
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7b

    const/4 v1, 0x0

    move/from16 p4, v9

    goto/16 :goto_3a

    :cond_7b
    const/4 v4, 0x0

    .line 273
    invoke-virtual {v7, v3, v12, v4}, Le/k/a/c/l0/b;->f(Le/k/a/c/y;Le/k/a/c/c;Le/k/a/c/j0/h;)Z

    move-result v14

    .line 274
    new-instance v15, Le/k/a/c/l0/k;

    invoke-direct {v15, v3, v12}, Le/k/a/c/l0/k;-><init>(Le/k/a/c/y;Le/k/a/c/c;)V

    .line 275
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 276
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_7c
    :goto_37
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Le/k/a/c/g0/s;

    .line 277
    invoke-virtual {v3}, Le/k/a/c/g0/s;->n()Le/k/a/c/g0/i;

    move-result-object v1

    .line 278
    invoke-virtual {v3}, Le/k/a/c/g0/s;->D()Z

    move-result v4

    if-eqz v4, :cond_7e

    if-eqz v1, :cond_7c

    .line 279
    iget-object v3, v11, Le/k/a/c/l0/e;->g:Le/k/a/c/g0/i;

    if-nez v3, :cond_7d

    .line 280
    iput-object v1, v11, Le/k/a/c/l0/e;->g:Le/k/a/c/g0/i;

    goto :goto_37

    .line 281
    :cond_7d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Multiple type ids specified with "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v11, Le/k/a/c/l0/e;->g:Le/k/a/c/g0/i;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_7e
    invoke-virtual {v3}, Le/k/a/c/g0/s;->j()Le/k/a/c/b$a;

    move-result-object v4

    if-eqz v4, :cond_80

    .line 283
    iget-object v4, v4, Le/k/a/c/b$a;->a:Le/k/a/c/b$a$a;

    sget-object v5, Le/k/a/c/b$a$a;->b:Le/k/a/c/b$a$a;

    if-ne v4, v5, :cond_7f

    const/4 v4, 0x1

    goto :goto_38

    :cond_7f
    move v4, v2

    :goto_38
    if-eqz v4, :cond_80

    goto :goto_37

    .line 284
    :cond_80
    instance-of v2, v1, Le/k/a/c/g0/j;

    if-eqz v2, :cond_81

    .line 285
    move-object/from16 v17, v1

    check-cast v17, Le/k/a/c/g0/j;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v15

    move v5, v14

    move/from16 p4, v9

    move-object v9, v6

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Le/k/a/c/l0/f;->g(Le/k/a/c/a0;Le/k/a/c/g0/s;Le/k/a/c/l0/k;ZLe/k/a/c/g0/i;)Le/k/a/c/l0/c;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_81
    move/from16 p4, v9

    move-object v9, v6

    .line 286
    move-object v6, v1

    check-cast v6, Le/k/a/c/g0/g;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v15

    move v5, v14

    invoke-virtual/range {v1 .. v6}, Le/k/a/c/l0/f;->g(Le/k/a/c/a0;Le/k/a/c/g0/s;Le/k/a/c/l0/k;ZLe/k/a/c/g0/i;)Le/k/a/c/l0/c;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_39
    const/4 v2, 0x0

    move-object v6, v9

    move/from16 v9, p4

    goto/16 :goto_37

    :cond_82
    move/from16 p4, v9

    move-object v9, v6

    move-object v1, v9

    :goto_3a
    if-nez v1, :cond_83

    .line 287
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3f

    .line 288
    :cond_83
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_3b
    if-ge v3, v2, :cond_8a

    .line 289
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/k/a/c/l0/c;

    .line 290
    iget-object v5, v4, Le/k/a/c/l0/c;->n:Le/k/a/c/j0/h;

    if-eqz v5, :cond_89

    .line 291
    invoke-virtual {v5}, Le/k/a/c/j0/h;->c()Le/k/a/a/e0$a;

    move-result-object v6

    sget-object v9, Le/k/a/a/e0$a;->d:Le/k/a/a/e0$a;

    if-eq v6, v9, :cond_84

    goto :goto_3e

    .line 292
    :cond_84
    invoke-virtual {v5}, Le/k/a/c/j0/h;->b()Ljava/lang/String;

    move-result-object v5

    .line 293
    invoke-static {v5}, Le/k/a/c/v;->a(Ljava/lang/String;)Le/k/a/c/v;

    move-result-object v5

    .line 294
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_85
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_89

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/k/a/c/l0/c;

    if-eq v9, v4, :cond_85

    .line 295
    iget-object v14, v9, Le/k/a/c/l0/c;->d:Le/k/a/c/v;

    if-eqz v14, :cond_86

    .line 296
    invoke-virtual {v14, v5}, Le/k/a/c/v;->equals(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_3d

    .line 297
    :cond_86
    iget-object v9, v9, Le/k/a/c/l0/c;->c:Le/k/a/b/w/i;

    .line 298
    iget-object v9, v9, Le/k/a/b/w/i;->a:Ljava/lang/String;

    .line 299
    iget-object v14, v5, Le/k/a/c/v;->a:Ljava/lang/String;

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_88

    .line 300
    iget-object v9, v5, Le/k/a/c/v;->b:Ljava/lang/String;

    if-eqz v9, :cond_87

    const/4 v9, 0x1

    goto :goto_3c

    :cond_87
    const/4 v9, 0x0

    :goto_3c
    if-nez v9, :cond_88

    const/4 v9, 0x1

    goto :goto_3d

    :cond_88
    const/4 v9, 0x0

    :goto_3d
    if-eqz v9, :cond_85

    const/4 v5, 0x0

    .line 301
    iput-object v5, v4, Le/k/a/c/l0/c;->n:Le/k/a/c/j0/h;

    :cond_89
    :goto_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 302
    :cond_8a
    :goto_3f
    invoke-virtual/range {p1 .. p1}, Le/k/a/c/a0;->E()Le/k/a/c/b;

    move-result-object v2

    .line 303
    iget-object v3, v13, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    .line 304
    invoke-virtual {v2, v10, v3, v1}, Le/k/a/c/b;->a(Le/k/a/c/c0/k;Le/k/a/c/g0/c;Ljava/util/List;)V

    .line 305
    iget-object v2, v7, Le/k/a/c/l0/b;->a:Le/k/a/c/c0/n;

    invoke-virtual {v2}, Le/k/a/c/c0/n;->a()Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 306
    iget-object v2, v7, Le/k/a/c/l0/b;->a:Le/k/a/c/c0/n;

    invoke-virtual {v2}, Le/k/a/c/c0/n;->b()Ljava/lang/Iterable;

    move-result-object v2

    check-cast v2, Le/k/a/c/n0/d;

    :goto_40
    invoke-virtual {v2}, Le/k/a/c/n0/d;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8b

    invoke-virtual {v2}, Le/k/a/c/n0/d;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/k/a/c/l0/g;

    .line 307
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    .line 308
    :cond_8b
    iget-object v2, v12, Le/k/a/c/c;->a:Le/k/a/c/i;

    .line 309
    iget-object v2, v2, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 310
    iget-object v3, v13, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    .line 311
    invoke-virtual {v10, v2, v3}, Le/k/a/c/c0/l;->r(Ljava/lang/Class;Le/k/a/c/g0/c;)Le/k/a/a/p$a;

    move-result-object v2

    if-eqz v2, :cond_8c

    .line 312
    invoke-virtual {v2}, Le/k/a/a/p$a;->e()Ljava/util/Set;

    move-result-object v2

    goto :goto_41

    :cond_8c
    const/4 v2, 0x0

    .line 313
    :goto_41
    iget-object v3, v12, Le/k/a/c/c;->a:Le/k/a/c/i;

    .line 314
    iget-object v3, v3, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 315
    iget-object v3, v13, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    .line 316
    invoke-virtual {v10, v3}, Le/k/a/c/c0/l;->s(Le/k/a/c/g0/c;)Le/k/a/a/s$a;

    move-result-object v3

    if-eqz v3, :cond_8d

    .line 317
    iget-object v3, v3, Le/k/a/a/s$a;->a:Ljava/util/Set;

    goto :goto_42

    :cond_8d
    const/4 v3, 0x0

    :goto_42
    if-nez v3, :cond_8e

    if-eqz v2, :cond_90

    .line 318
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_90

    .line 319
    :cond_8e
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 320
    :cond_8f
    :goto_43
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_90

    .line 321
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/k/a/c/l0/c;

    .line 322
    iget-object v5, v5, Le/k/a/c/l0/c;->c:Le/k/a/b/w/i;

    .line 323
    iget-object v5, v5, Le/k/a/b/w/i;->a:Ljava/lang/String;

    .line 324
    invoke-static {v5, v2, v3}, Ln3/g0/y;->U1(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 325
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_43

    .line 326
    :cond_90
    iget-object v2, v7, Le/k/a/c/l0/b;->a:Le/k/a/c/c0/n;

    invoke-virtual {v2}, Le/k/a/c/c0/n;->a()Z

    move-result v2

    if-eqz v2, :cond_91

    .line 327
    iget-object v2, v7, Le/k/a/c/l0/b;->a:Le/k/a/c/c0/n;

    invoke-virtual {v2}, Le/k/a/c/c0/n;->b()Ljava/lang/Iterable;

    move-result-object v2

    check-cast v2, Le/k/a/c/n0/d;

    :goto_44
    invoke-virtual {v2}, Le/k/a/c/n0/d;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_91

    invoke-virtual {v2}, Le/k/a/c/n0/d;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/k/a/c/l0/g;

    .line 328
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    .line 329
    :cond_91
    iget-object v2, v13, Le/k/a/c/g0/q;->i:Le/k/a/c/g0/a0;

    if-nez v2, :cond_92

    const/4 v2, 0x0

    goto/16 :goto_46

    .line 330
    :cond_92
    iget-object v3, v2, Le/k/a/c/g0/a0;->b:Ljava/lang/Class;

    .line 331
    const-class v4, Le/k/a/a/m0;

    if-ne v3, v4, :cond_96

    .line 332
    iget-object v3, v2, Le/k/a/c/g0/a0;->a:Le/k/a/c/v;

    .line 333
    iget-object v3, v3, Le/k/a/c/v;->a:Ljava/lang/String;

    .line 334
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_45
    if-eq v5, v4, :cond_95

    .line 335
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/k/a/c/l0/c;

    .line 336
    iget-object v9, v6, Le/k/a/c/l0/c;->c:Le/k/a/b/w/i;

    .line 337
    iget-object v9, v9, Le/k/a/b/w/i;->a:Ljava/lang/String;

    .line 338
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_94

    if-lez v5, :cond_93

    .line 339
    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 340
    invoke-interface {v1, v3, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 341
    :cond_93
    iget-object v3, v6, Le/k/a/c/l0/c;->e:Le/k/a/c/i;

    .line 342
    new-instance v4, Le/k/a/c/l0/s/k;

    invoke-direct {v4, v2, v6}, Le/k/a/c/l0/s/k;-><init>(Le/k/a/c/g0/a0;Le/k/a/c/l0/c;)V

    .line 343
    iget-boolean v2, v2, Le/k/a/c/g0/a0;->e:Z

    const/4 v5, 0x0

    .line 344
    invoke-static {v3, v5, v4, v2}, Le/k/a/c/l0/s/j;->a(Le/k/a/c/i;Le/k/a/c/v;Le/k/a/a/k0;Z)Le/k/a/c/l0/s/j;

    move-result-object v2

    goto :goto_46

    :cond_94
    add-int/lit8 v5, v5, 0x1

    goto :goto_45

    .line 345
    :cond_95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 346
    iget-object v2, v12, Le/k/a/c/c;->a:Le/k/a/c/i;

    .line 347
    invoke-static {v2}, Le/k/a/c/n0/g;->t(Le/k/a/c/i;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    invoke-static {v3}, Le/k/a/c/n0/g;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Invalid Object Id definition for %s: cannot find property with name %s"

    .line 348
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_96
    const/4 v4, 0x0

    .line 349
    invoke-virtual {v8, v3}, Le/k/a/c/e;->f(Ljava/lang/reflect/Type;)Le/k/a/c/i;

    move-result-object v3

    .line 350
    invoke-virtual/range {p1 .. p1}, Le/k/a/c/a0;->i()Le/k/a/c/m0/o;

    move-result-object v5

    const-class v6, Le/k/a/a/k0;

    invoke-virtual {v5, v3, v6}, Le/k/a/c/m0/o;->n(Le/k/a/c/i;Ljava/lang/Class;)[Le/k/a/c/i;

    move-result-object v3

    aget-object v3, v3, v4

    .line 351
    iget-object v4, v13, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    .line 352
    invoke-virtual {v8, v4, v2}, Le/k/a/c/e;->k(Le/k/a/c/g0/b;Le/k/a/c/g0/a0;)Le/k/a/a/k0;

    move-result-object v4

    .line 353
    iget-object v5, v2, Le/k/a/c/g0/a0;->a:Le/k/a/c/v;

    .line 354
    iget-boolean v2, v2, Le/k/a/c/g0/a0;->e:Z

    .line 355
    invoke-static {v3, v5, v4, v2}, Le/k/a/c/l0/s/j;->a(Le/k/a/c/i;Le/k/a/c/v;Le/k/a/a/k0;Z)Le/k/a/c/l0/s/j;

    move-result-object v2

    .line 356
    :goto_46
    iput-object v2, v11, Le/k/a/c/l0/e;->h:Le/k/a/c/l0/s/j;

    .line 357
    iput-object v1, v11, Le/k/a/c/l0/e;->c:Ljava/util/List;

    .line 358
    invoke-virtual {v10}, Le/k/a/c/c0/k;->e()Le/k/a/c/b;

    move-result-object v1

    .line 359
    iget-object v2, v13, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    .line 360
    invoke-virtual {v1, v2}, Le/k/a/c/b;->m(Le/k/a/c/g0/b;)Ljava/lang/Object;

    move-result-object v1

    .line 361
    iput-object v1, v11, Le/k/a/c/l0/e;->f:Ljava/lang/Object;

    .line 362
    iget-object v1, v13, Le/k/a/c/g0/q;->b:Le/k/a/c/g0/b0;

    if-eqz v1, :cond_a0

    .line 363
    iget-boolean v2, v1, Le/k/a/c/g0/b0;->i:Z

    if-nez v2, :cond_97

    .line 364
    invoke-virtual {v1}, Le/k/a/c/g0/b0;->h()V

    .line 365
    :cond_97
    iget-object v2, v1, Le/k/a/c/g0/b0;->m:Ljava/util/LinkedList;

    if-eqz v2, :cond_99

    .line 366
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_98

    .line 367
    iget-object v1, v1, Le/k/a/c/g0/b0;->m:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/k/a/c/g0/i;

    goto :goto_47

    :cond_98
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 368
    iget-object v2, v1, Le/k/a/c/g0/b0;->m:Ljava/util/LinkedList;

    const/4 v4, 0x0

    .line 369
    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v4

    iget-object v2, v1, Le/k/a/c/g0/b0;->m:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "Multiple \'any-getter\' methods defined (%s vs %s)"

    .line 370
    invoke-virtual {v1, v2, v0}, Le/k/a/c/g0/b0;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :cond_99
    const/4 v1, 0x0

    :goto_47
    if-eqz v1, :cond_9b

    .line 371
    invoke-virtual {v1}, Le/k/a/c/g0/b;->d()Ljava/lang/Class;

    move-result-object v2

    .line 372
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_9a

    goto/16 :goto_49

    .line 373
    :cond_9a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 374
    invoke-virtual {v1}, Le/k/a/c/g0/b;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Invalid \'any-getter\' annotation on method %s(): return type is not instance of java.util.Map"

    .line 375
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_9b
    iget-object v1, v13, Le/k/a/c/g0/q;->b:Le/k/a/c/g0/b0;

    .line 377
    iget-boolean v2, v1, Le/k/a/c/g0/b0;->i:Z

    if-nez v2, :cond_9c

    .line 378
    invoke-virtual {v1}, Le/k/a/c/g0/b0;->h()V

    .line 379
    :cond_9c
    iget-object v2, v1, Le/k/a/c/g0/b0;->n:Ljava/util/LinkedList;

    if-eqz v2, :cond_9e

    .line 380
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_9d

    .line 381
    iget-object v1, v1, Le/k/a/c/g0/b0;->n:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/k/a/c/g0/i;

    goto :goto_48

    :cond_9d
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 382
    iget-object v2, v1, Le/k/a/c/g0/b0;->n:Ljava/util/LinkedList;

    const/4 v4, 0x0

    .line 383
    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v4

    iget-object v2, v1, Le/k/a/c/g0/b0;->n:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "Multiple \'any-getter\' fields defined (%s vs %s)"

    .line 384
    invoke-virtual {v1, v2, v0}, Le/k/a/c/g0/b0;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :cond_9e
    const/4 v1, 0x0

    :goto_48
    if-eqz v1, :cond_a0

    .line 385
    invoke-virtual {v1}, Le/k/a/c/g0/b;->d()Ljava/lang/Class;

    move-result-object v2

    .line 386
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_9f

    goto :goto_49

    .line 387
    :cond_9f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 388
    invoke-virtual {v1}, Le/k/a/c/g0/b;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Invalid \'any-getter\' annotation on field \'%s\': type is not instance of java.util.Map"

    .line 389
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a0
    const/4 v1, 0x0

    :goto_49
    if-eqz v1, :cond_a2

    .line 390
    invoke-virtual {v1}, Le/k/a/c/g0/b;->e()Le/k/a/c/i;

    move-result-object v16

    .line 391
    invoke-virtual/range {v16 .. v16}, Le/k/a/c/i;->k()Le/k/a/c/i;

    move-result-object v2

    .line 392
    invoke-virtual {v7, v10, v2}, Le/k/a/c/l0/b;->b(Le/k/a/c/y;Le/k/a/c/i;)Le/k/a/c/j0/h;

    move-result-object v18

    .line 393
    invoke-virtual {v7, v8, v1}, Le/k/a/c/l0/b;->e(Le/k/a/c/a0;Le/k/a/c/g0/b;)Le/k/a/c/n;

    move-result-object v3

    if-nez v3, :cond_a1

    const/4 v14, 0x0

    .line 394
    sget-object v3, Le/k/a/c/p;->r:Le/k/a/c/p;

    .line 395
    invoke-virtual {v10, v3}, Le/k/a/c/c0/k;->o(Le/k/a/c/p;)Z

    move-result v17

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v15, 0x0

    .line 396
    invoke-static/range {v14 .. v21}, Le/k/a/c/l0/t/t;->r(Ljava/util/Set;Ljava/util/Set;Le/k/a/c/i;ZLe/k/a/c/j0/h;Le/k/a/c/n;Le/k/a/c/n;Ljava/lang/Object;)Le/k/a/c/l0/t/t;

    move-result-object v3

    .line 397
    :cond_a1
    invoke-virtual {v1}, Le/k/a/c/g0/b;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/k/a/c/v;->a(Ljava/lang/String;)Le/k/a/c/v;

    move-result-object v15

    .line 398
    new-instance v4, Le/k/a/c/d$a;

    const/16 v17, 0x0

    sget-object v19, Le/k/a/c/u;->i:Le/k/a/c/u;

    move-object v14, v4

    move-object/from16 v16, v2

    move-object/from16 v18, v1

    invoke-direct/range {v14 .. v19}, Le/k/a/c/d$a;-><init>(Le/k/a/c/v;Le/k/a/c/i;Le/k/a/c/v;Le/k/a/c/g0/i;Le/k/a/c/u;)V

    .line 399
    new-instance v2, Le/k/a/c/l0/a;

    invoke-direct {v2, v4, v1, v3}, Le/k/a/c/l0/a;-><init>(Le/k/a/c/d;Le/k/a/c/g0/i;Le/k/a/c/n;)V

    .line 400
    iput-object v2, v11, Le/k/a/c/l0/e;->e:Le/k/a/c/l0/a;

    .line 401
    :cond_a2
    iget-object v1, v11, Le/k/a/c/l0/e;->c:Ljava/util/List;

    .line 402
    sget-object v2, Le/k/a/c/p;->u:Le/k/a/c/p;

    invoke-virtual {v10, v2}, Le/k/a/c/c0/k;->o(Le/k/a/c/p;)Z

    move-result v2

    .line 403
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 404
    new-array v4, v3, [Le/k/a/c/l0/c;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_4a
    if-ge v6, v3, :cond_a7

    .line 405
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/k/a/c/l0/c;

    .line 406
    iget-object v14, v9, Le/k/a/c/l0/c;->r:[Ljava/lang/Class;

    if-eqz v14, :cond_a5

    .line 407
    array-length v15, v14

    if-nez v15, :cond_a3

    goto :goto_4c

    :cond_a3
    add-int/lit8 v5, v5, 0x1

    .line 408
    array-length v15, v14

    move-object/from16 v16, v1

    const/4 v1, 0x1

    if-ne v15, v1, :cond_a4

    .line 409
    new-instance v1, Le/k/a/c/l0/s/e;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-direct {v1, v9, v14}, Le/k/a/c/l0/s/e;-><init>(Le/k/a/c/l0/c;Ljava/lang/Class;)V

    goto :goto_4b

    .line 410
    :cond_a4
    new-instance v1, Le/k/a/c/l0/s/d;

    invoke-direct {v1, v9, v14}, Le/k/a/c/l0/s/d;-><init>(Le/k/a/c/l0/c;[Ljava/lang/Class;)V

    .line 411
    :goto_4b
    aput-object v1, v4, v6

    goto :goto_4d

    :cond_a5
    :goto_4c
    move-object/from16 v16, v1

    if-eqz v2, :cond_a6

    .line 412
    aput-object v9, v4, v6

    :cond_a6
    :goto_4d
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v16

    goto :goto_4a

    :cond_a7
    if-eqz v2, :cond_a8

    if-nez v5, :cond_a8

    goto :goto_4e

    .line 413
    :cond_a8
    iget-object v1, v11, Le/k/a/c/l0/e;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v3, v1, :cond_b5

    .line 414
    iput-object v4, v11, Le/k/a/c/l0/e;->d:[Le/k/a/c/l0/c;

    .line 415
    :goto_4e
    iget-object v1, v7, Le/k/a/c/l0/b;->a:Le/k/a/c/c0/n;

    invoke-virtual {v1}, Le/k/a/c/c0/n;->a()Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 416
    iget-object v1, v7, Le/k/a/c/l0/b;->a:Le/k/a/c/c0/n;

    invoke-virtual {v1}, Le/k/a/c/c0/n;->b()Ljava/lang/Iterable;

    move-result-object v1

    check-cast v1, Le/k/a/c/n0/d;

    :goto_4f
    invoke-virtual {v1}, Le/k/a/c/n0/d;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a9

    invoke-virtual {v1}, Le/k/a/c/n0/d;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/k/a/c/l0/g;

    .line 417
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4f

    .line 418
    :cond_a9
    :try_start_0
    invoke-virtual {v11}, Le/k/a/c/l0/e;->a()Le/k/a/c/n;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_72

    .line 419
    invoke-virtual/range {p2 .. p2}, Le/k/a/c/i;->H()Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 420
    iget-object v0, v11, Le/k/a/c/l0/e;->a:Le/k/a/c/c;

    .line 421
    iget-object v0, v0, Le/k/a/c/c;->a:Le/k/a/c/i;

    .line 422
    new-instance v1, Le/k/a/c/l0/d;

    sget-object v2, Le/k/a/c/l0/t/d;->k:[Le/k/a/c/l0/c;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v11, v2, v3}, Le/k/a/c/l0/d;-><init>(Le/k/a/c/i;Le/k/a/c/l0/e;[Le/k/a/c/l0/c;[Le/k/a/c/l0/c;)V

    goto/16 :goto_34

    .line 423
    :cond_aa
    iget-object v1, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 424
    const-class v2, Ljava/util/Iterator;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 425
    iget-object v1, v10, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 426
    iget-object v1, v1, Le/k/a/c/c0/a;->a:Le/k/a/c/m0/o;

    .line 427
    const-class v2, Ljava/util/Iterator;

    invoke-virtual {v1, v0, v2}, Le/k/a/c/m0/o;->n(Le/k/a/c/i;Ljava/lang/Class;)[Le/k/a/c/i;

    move-result-object v0

    if-eqz v0, :cond_ac

    .line 428
    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_ab

    goto :goto_50

    :cond_ab
    const/4 v1, 0x0

    .line 429
    aget-object v0, v0, v1

    goto :goto_51

    :cond_ac
    :goto_50
    invoke-static {}, Le/k/a/c/m0/o;->p()Le/k/a/c/i;

    move-result-object v0

    .line 430
    :goto_51
    new-instance v1, Le/k/a/c/l0/s/h;

    invoke-virtual {v7, v10, v0}, Le/k/a/c/l0/b;->b(Le/k/a/c/y;Le/k/a/c/i;)Le/k/a/c/j0/h;

    move-result-object v2

    move/from16 v9, p4

    invoke-direct {v1, v0, v9, v2}, Le/k/a/c/l0/s/h;-><init>(Le/k/a/c/i;ZLe/k/a/c/j0/h;)V

    :goto_52
    move-object v0, v1

    goto :goto_55

    :cond_ad
    move/from16 v9, p4

    .line 431
    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 432
    iget-object v1, v10, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 433
    iget-object v1, v1, Le/k/a/c/c0/a;->a:Le/k/a/c/m0/o;

    .line 434
    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v1, v0, v2}, Le/k/a/c/m0/o;->n(Le/k/a/c/i;Ljava/lang/Class;)[Le/k/a/c/i;

    move-result-object v0

    if-eqz v0, :cond_af

    .line 435
    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_ae

    goto :goto_53

    :cond_ae
    const/4 v1, 0x0

    .line 436
    aget-object v0, v0, v1

    goto :goto_54

    :cond_af
    :goto_53
    invoke-static {}, Le/k/a/c/m0/o;->p()Le/k/a/c/i;

    move-result-object v0

    .line 437
    :goto_54
    new-instance v1, Le/k/a/c/l0/t/r;

    invoke-virtual {v7, v10, v0}, Le/k/a/c/l0/b;->b(Le/k/a/c/y;Le/k/a/c/i;)Le/k/a/c/j0/h;

    move-result-object v2

    invoke-direct {v1, v0, v9, v2}, Le/k/a/c/l0/t/r;-><init>(Le/k/a/c/i;ZLe/k/a/c/j0/h;)V

    goto :goto_52

    .line 438
    :cond_b0
    const-class v0, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 439
    sget-object v0, Le/k/a/c/l0/t/t0;->c:Le/k/a/c/l0/t/t0;

    goto :goto_55

    :cond_b1
    const/4 v0, 0x0

    :goto_55
    if-nez v0, :cond_b3

    .line 440
    iget-object v1, v13, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    .line 441
    iget-object v1, v1, Le/k/a/c/g0/c;->j:Le/k/a/c/n0/b;

    invoke-interface {v1}, Le/k/a/c/n0/b;->size()I

    move-result v1

    if-lez v1, :cond_b2

    const/4 v1, 0x1

    goto :goto_56

    :cond_b2
    const/4 v1, 0x0

    :goto_56
    if-eqz v1, :cond_b3

    .line 442
    iget-object v0, v11, Le/k/a/c/l0/e;->a:Le/k/a/c/c;

    .line 443
    iget-object v0, v0, Le/k/a/c/c;->a:Le/k/a/c/i;

    .line 444
    new-instance v1, Le/k/a/c/l0/d;

    sget-object v2, Le/k/a/c/l0/t/d;->k:[Le/k/a/c/l0/c;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v11, v2, v3}, Le/k/a/c/l0/d;-><init>(Le/k/a/c/i;Le/k/a/c/l0/e;[Le/k/a/c/l0/c;[Le/k/a/c/l0/c;)V

    goto/16 :goto_34

    :cond_b3
    :goto_57
    if-nez v0, :cond_b4

    .line 445
    iget-object v0, v12, Le/k/a/c/c;->a:Le/k/a/c/i;

    .line 446
    iget-object v0, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 447
    invoke-virtual {v8, v0}, Le/k/a/c/a0;->G(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v1

    goto :goto_58

    :cond_b4
    move-object v1, v0

    goto :goto_58

    :catch_0
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 448
    iget-object v2, v12, Le/k/a/c/c;->a:Le/k/a/c/i;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 449
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Failed to construct BeanSerializer for %s: (%s) %s"

    .line 450
    invoke-virtual {v8, v12, v1, v0}, Le/k/a/c/a0;->O(Le/k/a/c/c;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    throw v0

    :cond_b5
    const/4 v0, 0x2

    .line 451
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-array v0, v0, [Ljava/lang/Object;

    .line 452
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    iget-object v2, v11, Le/k/a/c/l0/e;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "Trying to set %d filtered properties; must match length of non-filtered `properties` (%d)"

    .line 453
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b6
    :goto_58
    if-eqz v1, :cond_b7

    .line 454
    iget-object v0, v7, Le/k/a/c/l0/b;->a:Le/k/a/c/c0/n;

    invoke-virtual {v0}, Le/k/a/c/c0/n;->a()Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 455
    iget-object v0, v7, Le/k/a/c/l0/b;->a:Le/k/a/c/c0/n;

    invoke-virtual {v0}, Le/k/a/c/c0/n;->b()Ljava/lang/Iterable;

    move-result-object v0

    check-cast v0, Le/k/a/c/n0/d;

    :goto_59
    invoke-virtual {v0}, Le/k/a/c/n0/d;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b7

    invoke-virtual {v0}, Le/k/a/c/n0/d;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/k/a/c/l0/g;

    .line 456
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_59

    :cond_b7
    return-object v1
.end method

.method public i()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Le/k/a/c/l0/q;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/b;->a:Le/k/a/c/c0/n;

    .line 2
    new-instance v1, Le/k/a/c/n0/d;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Le/k/a/c/c0/n;->a:[Le/k/a/c/l0/q;

    invoke-direct {v1, v0}, Le/k/a/c/n0/d;-><init>([Ljava/lang/Object;)V

    return-object v1
.end method
