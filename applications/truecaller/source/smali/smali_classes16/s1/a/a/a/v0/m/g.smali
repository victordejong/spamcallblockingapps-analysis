.class public final Ls1/a/a/a/v0/m/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls1/a/a/a/v0/m/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/m/g;

    invoke-direct {v0}, Ls1/a/a/a/v0/m/g;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/m/g;->a:Ls1/a/a/a/v0/m/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static f(Ls1/a/a/a/v0/m/g;Ls1/a/a/a/v0/m/h;Ls1/a/a/a/v0/m/n1/h;Ls1/a/a/a/v0/m/n1/h;ZI)Z
    .locals 25

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "context"

    .line 1
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "subType"

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "superType"

    invoke-static {v2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v1, v2, :cond_0

    goto/16 :goto_2b

    .line 2
    :cond_0
    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v12, Ls1/a/a/a/v0/m/g;->a:Ls1/a/a/a/v0/m/g;

    invoke-virtual/range {p1 .. p2}, Ls1/a/a/a/v0/m/h;->P(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/m/h;->O(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/h;

    move-result-object v1

    invoke-virtual {v0, v2}, Ls1/a/a/a/v0/m/h;->P(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Ls1/a/a/a/v0/m/h;->O(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/h;

    move-result-object v2

    .line 4
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/m/h;->k(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/i;

    move-result-object v14

    invoke-virtual {v0, v2}, Ls1/a/a/a/v0/m/h;->d(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/i;

    move-result-object v15

    .line 5
    move-object v11, v0

    check-cast v11, Ls1/a/a/a/v0/m/l1/b;

    invoke-virtual {v11, v14}, Ls1/a/a/a/v0/m/l1/b;->X(Ls1/a/a/a/v0/m/n1/h;)Z

    move-result v6

    const/16 v16, 0x0

    const-string v10, ", "

    const-string v9, "ClassicTypeSystemContext couldn\'t handle: "

    if-nez v6, :cond_b

    invoke-virtual {v11, v15}, Ls1/a/a/a/v0/m/l1/b;->X(Ls1/a/a/a/v0/m/n1/h;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_5

    .line 6
    :cond_1
    invoke-virtual {v11, v14}, Ls1/a/a/a/v0/m/l1/b;->b0(Ls1/a/a/a/v0/m/n1/i;)Z

    invoke-virtual {v11, v15}, Ls1/a/a/a/v0/m/l1/b;->b0(Ls1/a/a/a/v0/m/n1/i;)Z

    const-string v6, "$this$asCapturedType"

    .line 7
    invoke-static {v15, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {v15, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    instance-of v6, v15, Ls1/a/a/a/v0/m/l0;

    if-eqz v6, :cond_a

    .line 10
    instance-of v6, v15, Ls1/a/a/a/v0/m/l1/g;

    if-nez v6, :cond_2

    move-object/from16 v6, v16

    goto :goto_0

    :cond_2
    move-object v6, v15

    :goto_0
    check-cast v6, Ls1/a/a/a/v0/m/l1/g;

    if-eqz v6, :cond_3

    const-string v7, "$this$lowerType"

    .line 11
    invoke-static {v6, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {v6, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v7, v6, Ls1/a/a/a/v0/m/l1/g;->d:Ls1/a/a/a/v0/m/i1;

    move-object/from16 v17, v7

    goto :goto_1

    :cond_3
    move-object/from16 v17, v16

    :goto_1
    if-eqz v6, :cond_4

    if-eqz v17, :cond_4

    .line 14
    invoke-static {v14, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v18, 0x0

    const/16 v19, 0x8

    move-object v6, v12

    move-object v7, v11

    move-object v8, v14

    move-object/from16 v20, v9

    move-object/from16 v9, v17

    move-object/from16 p0, v13

    move-object v13, v10

    move/from16 v10, v18

    move-object/from16 p4, v5

    move-object v5, v11

    move/from16 v11, v19

    .line 15
    invoke-static/range {v6 .. v11}, Ls1/a/a/a/v0/m/g;->f(Ls1/a/a/a/v0/m/g;Ls1/a/a/a/v0/m/h;Ls1/a/a/a/v0/m/n1/h;Ls1/a/a/a/v0/m/n1/h;ZI)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object/from16 v6, v20

    goto/16 :goto_6

    :cond_4
    move-object/from16 p4, v5

    move-object/from16 v20, v9

    move-object v5, v11

    move-object/from16 p0, v13

    move-object v13, v10

    .line 16
    :cond_5
    invoke-virtual {v5, v15}, Ls1/a/a/a/v0/m/l1/b;->u(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/n1/l;

    move-result-object v6

    .line 17
    invoke-virtual {v5, v6}, Ls1/a/a/a/v0/m/l1/b;->Z(Ls1/a/a/a/v0/m/n1/l;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 18
    invoke-virtual {v5, v15}, Ls1/a/a/a/v0/m/l1/b;->e(Ls1/a/a/a/v0/m/n1/i;)Z

    .line 19
    invoke-virtual {v5, v6}, Ls1/a/a/a/v0/m/l1/b;->e0(Ls1/a/a/a/v0/m/n1/l;)Ljava/util/Collection;

    move-result-object v6

    .line 20
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_2

    .line 21
    :cond_6
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Ls1/a/a/a/v0/m/n1/h;

    const/4 v10, 0x0

    const/16 v11, 0x8

    move-object v6, v12

    move-object v7, v5

    move-object v8, v14

    .line 22
    invoke-static/range {v6 .. v11}, Ls1/a/a/a/v0/m/g;->f(Ls1/a/a/a/v0/m/g;Ls1/a/a/a/v0/m/h;Ls1/a/a/a/v0/m/n1/h;Ls1/a/a/a/v0/m/n1/h;ZI)Z

    move-result v6

    if-nez v6, :cond_7

    const/4 v6, 0x0

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v6, 0x1

    .line 23
    :goto_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_4

    :cond_9
    move-object/from16 v6, v16

    :goto_4
    move-object v7, v6

    move-object/from16 v6, v20

    goto :goto_7

    :cond_a
    move-object v6, v9

    move-object v13, v10

    .line 24
    invoke-static {v6, v15, v13}, Le/d/c/a/a;->N(Ljava/lang/String;Ls1/a/a/a/v0/m/n1/i;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v15, v0}, Le/d/c/a/a;->q(Ls1/a/a/a/v0/m/n1/i;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 25
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    :goto_5
    move-object/from16 p4, v5

    move-object v6, v9

    move-object v5, v11

    move-object/from16 p0, v13

    move-object v13, v10

    .line 26
    iget-boolean v7, v5, Ls1/a/a/a/v0/m/l1/b;->e:Z

    if-eqz v7, :cond_c

    :goto_6
    move-object/from16 v7, p0

    goto :goto_7

    .line 27
    :cond_c
    invoke-virtual {v5, v14}, Ls1/a/a/a/v0/m/l1/b;->e(Ls1/a/a/a/v0/m/n1/i;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {v5, v15}, Ls1/a/a/a/v0/m/l1/b;->e(Ls1/a/a/a/v0/m/n1/i;)Z

    move-result v7

    if-nez v7, :cond_d

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_d
    const/4 v7, 0x0

    .line 28
    invoke-virtual {v5, v14, v7}, Ls1/a/a/a/v0/m/l1/b;->v(Ls1/a/a/a/v0/m/n1/i;Z)Ls1/a/a/a/v0/m/n1/i;

    move-result-object v8

    .line 29
    invoke-virtual {v5, v15, v7}, Ls1/a/a/a/v0/m/l1/b;->v(Ls1/a/a/a/v0/m/n1/i;Z)Ls1/a/a/a/v0/m/n1/i;

    move-result-object v7

    .line 30
    invoke-static {v5, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "a"

    invoke-static {v8, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "b"

    invoke-static {v7, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-static {v5, v8, v7}, Ls1/a/a/a/v0/m/d;->b(Ls1/a/a/a/v0/m/n1/n;Ls1/a/a/a/v0/m/n1/h;Ls1/a/a/a/v0/m/n1/h;)Z

    move-result v7

    .line 32
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    :goto_7
    if-eqz v7, :cond_e

    .line 33
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 34
    invoke-virtual {v0, v1, v2}, Ls1/a/a/a/v0/m/h;->C(Ls1/a/a/a/v0/m/n1/h;Ls1/a/a/a/v0/m/n1/h;)Ljava/lang/Boolean;

    goto/16 :goto_31

    .line 35
    :cond_e
    invoke-virtual {v0, v1, v2}, Ls1/a/a/a/v0/m/h;->C(Ls1/a/a/a/v0/m/n1/h;Ls1/a/a/a/v0/m/n1/h;)Ljava/lang/Boolean;

    .line 36
    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/m/h;->k(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/i;

    move-result-object v1

    invoke-virtual {v0, v2}, Ls1/a/a/a/v0/m/h;->d(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/i;

    move-result-object v2

    .line 37
    sget-object v7, Ls1/a/a/a/v0/m/h$a$c;->a:Ls1/a/a/a/v0/m/h$a$c;

    sget-object v8, Ls1/a/a/a/v0/m/h$a$b;->a:Ls1/a/a/a/v0/m/h$a$b;

    .line 38
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, p4

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v5, v2}, Ls1/a/a/a/v0/m/l1/b;->e(Ls1/a/a/a/v0/m/n1/i;)Z

    move-result v3

    const-string v9, "current"

    const-string v10, ". Supertypes = "

    const-string v11, "Too many supertypes for type: "

    if-eqz v3, :cond_f

    goto/16 :goto_a

    .line 40
    :cond_f
    invoke-virtual {v5, v1}, Ls1/a/a/a/v0/m/l1/b;->K(Ls1/a/a/a/v0/m/n1/h;)Z

    move-result v3

    if-eqz v3, :cond_10

    goto/16 :goto_a

    .line 41
    :cond_10
    instance-of v3, v1, Ls1/a/a/a/v0/m/n1/c;

    if-eqz v3, :cond_12

    move-object v3, v1

    check-cast v3, Ls1/a/a/a/v0/m/n1/c;

    const-string v14, "$this$isProjectionNotNull"

    .line 42
    invoke-static {v3, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-static {v3, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    instance-of v14, v3, Ls1/a/a/a/v0/m/l1/g;

    if-eqz v14, :cond_11

    .line 45
    check-cast v3, Ls1/a/a/a/v0/m/l1/g;

    .line 46
    iget-boolean v3, v3, Ls1/a/a/a/v0/m/l1/g;->g:Z

    if-eqz v3, :cond_12

    goto/16 :goto_a

    .line 47
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_12
    invoke-static {v5, v1, v8}, Ls1/a/a/a/v0/m/c;->a(Ls1/a/a/a/v0/m/h;Ls1/a/a/a/v0/m/n1/i;Ls1/a/a/a/v0/m/h$a;)Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_a

    .line 50
    :cond_13
    invoke-virtual {v5, v2}, Ls1/a/a/a/v0/m/l1/b;->K(Ls1/a/a/a/v0/m/n1/h;)Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_8

    .line 51
    :cond_14
    sget-object v3, Ls1/a/a/a/v0/m/h$a$d;->a:Ls1/a/a/a/v0/m/h$a$d;

    invoke-static {v5, v2, v3}, Ls1/a/a/a/v0/m/c;->a(Ls1/a/a/a/v0/m/h;Ls1/a/a/a/v0/m/n1/i;Ls1/a/a/a/v0/m/h$a;)Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_8

    .line 52
    :cond_15
    invoke-virtual {v5, v1}, Ls1/a/a/a/v0/m/l1/b;->J(Ls1/a/a/a/v0/m/n1/i;)Z

    move-result v3

    if-eqz v3, :cond_16

    :goto_8
    move-object/from16 v20, v6

    move-object/from16 p2, v8

    goto/16 :goto_13

    .line 53
    :cond_16
    invoke-virtual {v5, v2}, Ls1/a/a/a/v0/m/l1/b;->u(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/n1/l;

    move-result-object v3

    const-string v14, "$this$hasPathByNotMarkedNullableNodes"

    .line 54
    invoke-static {v5, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "start"

    invoke-static {v1, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "end"

    invoke-static {v3, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v5, v1}, Ls1/a/a/a/v0/m/l1/b;->a0(Ls1/a/a/a/v0/m/n1/h;)Z

    move-result v14

    if-eqz v14, :cond_17

    const/4 v14, 0x1

    goto :goto_9

    .line 56
    :cond_17
    invoke-virtual {v5, v1}, Ls1/a/a/a/v0/m/l1/b;->e(Ls1/a/a/a/v0/m/n1/i;)Z

    move-result v14

    if-eqz v14, :cond_18

    const/4 v14, 0x0

    goto :goto_9

    .line 57
    :cond_18
    iget-boolean v14, v5, Ls1/a/a/a/v0/m/l1/b;->f:Z

    if-eqz v14, :cond_19

    .line 58
    invoke-virtual {v5, v1}, Ls1/a/a/a/v0/m/l1/b;->b0(Ls1/a/a/a/v0/m/n1/i;)Z

    .line 59
    :cond_19
    invoke-virtual {v5, v1}, Ls1/a/a/a/v0/m/l1/b;->u(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/n1/l;

    move-result-object v14

    invoke-virtual {v5, v14, v3}, Ls1/a/a/a/v0/m/l1/b;->B(Ls1/a/a/a/v0/m/n1/l;Ls1/a/a/a/v0/m/n1/l;)Z

    move-result v14

    :goto_9
    if-eqz v14, :cond_1a

    :goto_a
    move-object/from16 v20, v6

    move-object/from16 p2, v8

    goto/16 :goto_11

    .line 60
    :cond_1a
    invoke-virtual {v5}, Ls1/a/a/a/v0/m/h;->I()V

    .line 61
    iget-object v14, v5, Ls1/a/a/a/v0/m/h;->c:Ljava/util/ArrayDeque;

    .line 62
    invoke-static {v14}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 63
    iget-object v15, v5, Ls1/a/a/a/v0/m/h;->d:Ljava/util/Set;

    .line 64
    invoke-static {v15}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 65
    invoke-virtual {v14, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 66
    :goto_b
    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_24

    move-object/from16 p2, v8

    .line 67
    invoke-interface {v15}, Ljava/util/Set;->size()I

    move-result v8

    move-object/from16 v20, v6

    const/16 v6, 0x3e8

    if-gt v8, v6, :cond_23

    .line 68
    invoke-virtual {v14}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls1/a/a/a/v0/m/n1/i;

    .line 69
    invoke-static {v6, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v15, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b

    goto/16 :goto_12

    .line 70
    :cond_1b
    invoke-virtual {v5, v6}, Ls1/a/a/a/v0/m/l1/b;->e(Ls1/a/a/a/v0/m/n1/i;)Z

    move-result v8

    if-eqz v8, :cond_1c

    move-object v8, v7

    goto :goto_c

    :cond_1c
    move-object/from16 v8, p2

    .line 71
    :goto_c
    invoke-static {v8, v7}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_1d

    goto :goto_d

    :cond_1d
    move-object/from16 v8, v16

    :goto_d
    if-eqz v8, :cond_22

    .line 72
    invoke-virtual {v5, v6}, Ls1/a/a/a/v0/m/l1/b;->u(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/n1/l;

    move-result-object v6

    invoke-virtual {v5, v6}, Ls1/a/a/a/v0/m/l1/b;->e0(Ls1/a/a/a/v0/m/n1/l;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_22

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 p3, v6

    move-object/from16 v6, v17

    check-cast v6, Ls1/a/a/a/v0/m/n1/h;

    .line 73
    invoke-virtual {v8, v5, v6}, Ls1/a/a/a/v0/m/h$a;->a(Ls1/a/a/a/v0/m/h;Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/i;

    move-result-object v6

    .line 74
    invoke-virtual {v5, v6}, Ls1/a/a/a/v0/m/l1/b;->a0(Ls1/a/a/a/v0/m/n1/h;)Z

    move-result v17

    if-eqz v17, :cond_1e

    const/16 v17, 0x1

    goto :goto_f

    .line 75
    :cond_1e
    invoke-virtual {v5, v6}, Ls1/a/a/a/v0/m/l1/b;->e(Ls1/a/a/a/v0/m/n1/i;)Z

    move-result v17

    if-eqz v17, :cond_1f

    const/16 v17, 0x0

    :goto_f
    move-object/from16 p4, v8

    goto :goto_10

    :cond_1f
    move-object/from16 p4, v8

    .line 76
    iget-boolean v8, v5, Ls1/a/a/a/v0/m/l1/b;->f:Z

    if-eqz v8, :cond_20

    .line 77
    invoke-virtual {v5, v6}, Ls1/a/a/a/v0/m/l1/b;->b0(Ls1/a/a/a/v0/m/n1/i;)Z

    .line 78
    :cond_20
    invoke-virtual {v5, v6}, Ls1/a/a/a/v0/m/l1/b;->u(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/n1/l;

    move-result-object v8

    invoke-virtual {v5, v8, v3}, Ls1/a/a/a/v0/m/l1/b;->B(Ls1/a/a/a/v0/m/n1/l;Ls1/a/a/a/v0/m/n1/l;)Z

    move-result v17

    :goto_10
    if-eqz v17, :cond_21

    .line 79
    invoke-virtual {v5}, Ls1/a/a/a/v0/m/h;->D()V

    :goto_11
    const/4 v3, 0x1

    goto :goto_14

    .line 80
    :cond_21
    invoke-virtual {v14, v6}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, p3

    move-object/from16 v8, p4

    goto :goto_e

    :cond_22
    :goto_12
    move-object/from16 v8, p2

    move-object/from16 v6, v20

    goto/16 :goto_b

    .line 81
    :cond_23
    invoke-static {v11, v1, v10}, Le/d/c/a/a;->N(Ljava/lang/String;Ls1/a/a/a/v0/m/n1/i;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x3f

    move-object/from16 v17, v15

    invoke-static/range {v17 .. v24}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_24
    move-object/from16 v20, v6

    move-object/from16 p2, v8

    .line 82
    invoke-virtual {v5}, Ls1/a/a/a/v0/m/h;->D()V

    :goto_13
    const/4 v3, 0x0

    :goto_14
    if-nez v3, :cond_25

    goto/16 :goto_30

    .line 83
    :cond_25
    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/m/h;->k(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/i;

    move-result-object v3

    invoke-virtual {v0, v2}, Ls1/a/a/a/v0/m/h;->d(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/i;

    move-result-object v6

    .line 84
    invoke-virtual {v0, v3}, Ls1/a/a/a/v0/m/h;->N(Ls1/a/a/a/v0/m/n1/i;)Z

    move-result v8

    if-nez v8, :cond_26

    invoke-virtual {v0, v6}, Ls1/a/a/a/v0/m/h;->N(Ls1/a/a/a/v0/m/n1/i;)Z

    move-result v8

    if-nez v8, :cond_26

    goto :goto_16

    .line 85
    :cond_26
    new-instance v8, Ls1/a/a/a/v0/m/e;

    invoke-direct {v8, v0}, Ls1/a/a/a/v0/m/e;-><init>(Ls1/a/a/a/v0/m/h;)V

    .line 86
    new-instance v14, Ls1/a/a/a/v0/m/f;

    invoke-direct {v14, v0}, Ls1/a/a/a/v0/m/f;-><init>(Ls1/a/a/a/v0/m/h;)V

    .line 87
    invoke-virtual {v0, v3}, Ls1/a/a/a/v0/m/h;->N(Ls1/a/a/a/v0/m/n1/i;)Z

    move-result v15

    if-eqz v15, :cond_27

    invoke-virtual {v0, v6}, Ls1/a/a/a/v0/m/h;->N(Ls1/a/a/a/v0/m/n1/i;)Z

    move-result v15

    if-eqz v15, :cond_27

    goto :goto_15

    .line 88
    :cond_27
    invoke-virtual {v0, v3}, Ls1/a/a/a/v0/m/h;->N(Ls1/a/a/a/v0/m/n1/i;)Z

    move-result v15

    if-eqz v15, :cond_28

    const/4 v14, 0x0

    .line 89
    invoke-virtual {v8, v3, v6, v14}, Ls1/a/a/a/v0/m/e;->a(Ls1/a/a/a/v0/m/n1/i;Ls1/a/a/a/v0/m/n1/i;Z)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_15

    .line 90
    :cond_28
    invoke-virtual {v0, v6}, Ls1/a/a/a/v0/m/h;->N(Ls1/a/a/a/v0/m/n1/i;)Z

    move-result v15

    if-eqz v15, :cond_2a

    .line 91
    invoke-virtual {v14, v3}, Ls1/a/a/a/v0/m/f;->a(Ls1/a/a/a/v0/m/n1/i;)Z

    move-result v14

    if-nez v14, :cond_29

    const/4 v14, 0x1

    .line 92
    invoke-virtual {v8, v6, v3, v14}, Ls1/a/a/a/v0/m/e;->a(Ls1/a/a/a/v0/m/n1/i;Ls1/a/a/a/v0/m/n1/i;Z)Z

    move-result v3

    if-eqz v3, :cond_2a

    :cond_29
    :goto_15
    move-object/from16 v3, p0

    goto :goto_17

    :cond_2a
    :goto_16
    move-object/from16 v3, v16

    :goto_17
    if-eqz v3, :cond_2b

    .line 93
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 94
    invoke-virtual {v0, v1, v2}, Ls1/a/a/a/v0/m/h;->C(Ls1/a/a/a/v0/m/n1/h;Ls1/a/a/a/v0/m/n1/h;)Ljava/lang/Boolean;

    goto/16 :goto_31

    .line 95
    :cond_2b
    invoke-virtual {v5, v2}, Ls1/a/a/a/v0/m/l1/b;->u(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/n1/l;

    move-result-object v3

    .line 96
    invoke-virtual {v5, v1}, Ls1/a/a/a/v0/m/l1/b;->u(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/n1/l;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ls1/a/a/a/v0/m/l1/b;->B(Ls1/a/a/a/v0/m/n1/l;Ls1/a/a/a/v0/m/n1/l;)Z

    move-result v6

    if-eqz v6, :cond_2c

    invoke-virtual {v5, v3}, Ls1/a/a/a/v0/m/l1/b;->c0(Ls1/a/a/a/v0/m/n1/l;)I

    move-result v6

    if-nez v6, :cond_2c

    goto/16 :goto_2b

    .line 97
    :cond_2c
    invoke-virtual {v5, v2}, Ls1/a/a/a/v0/m/l1/b;->u(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/n1/l;

    move-result-object v6

    const-string v8, "$this$isAnyConstructor"

    .line 98
    invoke-static {v6, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-static {v6, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    instance-of v8, v6, Ls1/a/a/a/v0/m/v0;

    if-eqz v8, :cond_59

    .line 101
    check-cast v6, Ls1/a/a/a/v0/m/v0;

    sget-object v8, Ls1/a/a/a/v0/a/k$a;->a:Ls1/a/a/a/v0/f/c;

    invoke-static {v6, v8}, Ls1/a/a/a/v0/a/g;->K(Ls1/a/a/a/v0/m/v0;Ls1/a/a/a/v0/f/c;)Z

    move-result v6

    if-eqz v6, :cond_2d

    goto/16 :goto_2b

    :cond_2d
    const-string v6, "$this$findCorrespondingSupertypes"

    .line 102
    invoke-static {v0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "superConstructor"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/m/h;->J(Ls1/a/a/a/v0/m/n1/i;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 104
    invoke-virtual {v12, v0, v1, v3}, Ls1/a/a/a/v0/m/g;->b(Ls1/a/a/a/v0/m/h;Ls1/a/a/a/v0/m/n1/i;Ls1/a/a/a/v0/m/n1/l;)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_1d

    .line 105
    :cond_2e
    invoke-virtual {v5, v3}, Ls1/a/a/a/v0/m/l1/b;->W(Ls1/a/a/a/v0/m/n1/l;)Z

    move-result v4

    if-nez v4, :cond_2f

    const-string v4, "$this$isIntegerLiteralTypeConstructor"

    .line 106
    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-static {v3}, Ls1/a/a/a/v0/f/d;->f2(Ls1/a/a/a/v0/m/n1/l;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 108
    invoke-virtual {v12, v0, v1, v3}, Ls1/a/a/a/v0/m/g;->a(Ls1/a/a/a/v0/m/h;Ls1/a/a/a/v0/m/n1/i;Ls1/a/a/a/v0/m/n1/l;)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_1d

    .line 109
    :cond_2f
    new-instance v4, Ls1/a/a/a/v0/o/l;

    invoke-direct {v4}, Ls1/a/a/a/v0/o/l;-><init>()V

    .line 110
    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/m/h;->I()V

    .line 111
    iget-object v6, v0, Ls1/a/a/a/v0/m/h;->c:Ljava/util/ArrayDeque;

    .line 112
    invoke-static {v6}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 113
    iget-object v8, v0, Ls1/a/a/a/v0/m/h;->d:Ljava/util/Set;

    .line 114
    invoke-static {v8}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 115
    invoke-virtual {v6, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 116
    :cond_30
    :goto_18
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_35

    .line 117
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v13

    const/16 v14, 0x3e8

    if-gt v13, v14, :cond_34

    .line 118
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ls1/a/a/a/v0/m/n1/i;

    .line 119
    invoke-static {v13, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_31

    goto :goto_18

    .line 120
    :cond_31
    invoke-virtual {v0, v13}, Ls1/a/a/a/v0/m/h;->J(Ls1/a/a/a/v0/m/n1/i;)Z

    move-result v14

    if-eqz v14, :cond_32

    .line 121
    invoke-virtual {v4, v13}, Ls1/a/a/a/v0/o/l;->add(Ljava/lang/Object;)Z

    move-object v14, v7

    goto :goto_19

    :cond_32
    move-object/from16 v14, p2

    .line 122
    :goto_19
    invoke-static {v14, v7}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_33

    goto :goto_1a

    :cond_33
    move-object/from16 v14, v16

    :goto_1a
    if-eqz v14, :cond_30

    .line 123
    invoke-virtual {v5, v13}, Ls1/a/a/a/v0/m/l1/b;->u(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/n1/l;

    move-result-object v13

    invoke-virtual {v5, v13}, Ls1/a/a/a/v0/m/l1/b;->e0(Ls1/a/a/a/v0/m/n1/l;)Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_30

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ls1/a/a/a/v0/m/n1/h;

    .line 124
    invoke-virtual {v14, v0, v15}, Ls1/a/a/a/v0/m/h$a;->a(Ls1/a/a/a/v0/m/h;Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/i;

    move-result-object v15

    .line 125
    invoke-virtual {v6, v15}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 126
    :cond_34
    invoke-static {v11, v1, v10}, Le/d/c/a/a;->N(Ljava/lang/String;Ls1/a/a/a/v0/m/n1/i;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x3f

    move-object/from16 v17, v8

    invoke-static/range {v17 .. v24}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_35
    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/m/h;->D()V

    .line 128
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 129
    invoke-virtual {v4}, Ls1/a/a/a/v0/o/l;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_36

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 130
    check-cast v8, Ls1/a/a/a/v0/m/n1/i;

    const-string v13, "it"

    .line 131
    invoke-static {v8, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12, v0, v8, v3}, Ls1/a/a/a/v0/m/g;->b(Ls1/a/a/a/v0/m/h;Ls1/a/a/a/v0/m/n1/i;Ls1/a/a/a/v0/m/n1/l;)Ljava/util/List;

    move-result-object v8

    .line 132
    invoke-static {v6, v8}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1c

    :cond_36
    move-object v4, v6

    .line 133
    :goto_1d
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_4e

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4d

    .line 134
    new-instance v6, Ls1/a/a/a/v0/m/n1/a;

    invoke-virtual {v5, v3}, Ls1/a/a/a/v0/m/l1/b;->c0(Ls1/a/a/a/v0/m/n1/l;)I

    move-result v7

    invoke-direct {v6, v7}, Ls1/a/a/a/v0/m/n1/a;-><init>(I)V

    .line 135
    invoke-virtual {v5, v3}, Ls1/a/a/a/v0/m/l1/b;->c0(Ls1/a/a/a/v0/m/n1/l;)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1e
    if-ge v9, v7, :cond_49

    if-nez v8, :cond_38

    .line 136
    invoke-virtual {v5, v3, v9}, Ls1/a/a/a/v0/m/l1/b;->U(Ls1/a/a/a/v0/m/n1/l;I)Ls1/a/a/a/v0/m/n1/m;

    move-result-object v8

    invoke-virtual {v5, v8}, Ls1/a/a/a/v0/m/l1/b;->V(Ls1/a/a/a/v0/m/n1/m;)Ls1/a/a/a/v0/m/n1/p;

    move-result-object v8

    sget-object v10, Ls1/a/a/a/v0/m/n1/p;->c:Ls1/a/a/a/v0/m/n1/p;

    if-eq v8, v10, :cond_37

    goto :goto_1f

    :cond_37
    const/4 v8, 0x0

    goto :goto_20

    :cond_38
    :goto_1f
    const/4 v8, 0x1

    :goto_20
    if-eqz v8, :cond_39

    move-object/from16 p0, v3

    move/from16 p2, v7

    move/from16 p3, v8

    goto/16 :goto_2a

    .line 137
    :cond_39
    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v4, v11}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_21
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 139
    check-cast v13, Ls1/a/a/a/v0/m/n1/i;

    .line 140
    invoke-virtual {v0, v13, v9}, Ls1/a/a/a/v0/m/h;->G(Ls1/a/a/a/v0/m/n1/i;I)Ls1/a/a/a/v0/m/n1/k;

    move-result-object v14

    if-eqz v14, :cond_3c

    invoke-virtual {v5, v14}, Ls1/a/a/a/v0/m/l1/b;->l(Ls1/a/a/a/v0/m/n1/k;)Ls1/a/a/a/v0/m/n1/p;

    move-result-object v15

    move-object/from16 p0, v3

    sget-object v3, Ls1/a/a/a/v0/m/n1/p;->d:Ls1/a/a/a/v0/m/n1/p;

    if-ne v15, v3, :cond_3a

    const/4 v3, 0x1

    goto :goto_22

    :cond_3a
    const/4 v3, 0x0

    :goto_22
    if-eqz v3, :cond_3b

    goto :goto_23

    :cond_3b
    move-object/from16 v14, v16

    :goto_23
    if-eqz v14, :cond_3c

    invoke-virtual {v5, v14}, Ls1/a/a/a/v0/m/l1/b;->m(Ls1/a/a/a/v0/m/n1/k;)Ls1/a/a/a/v0/m/n1/h;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 141
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, p0

    goto :goto_21

    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect type: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", subType: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", superType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3d
    move-object/from16 p0, v3

    const-string v3, "types"

    .line 142
    invoke-static {v10, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-static {v10, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    sget-object v11, Ls1/a/a/a/v0/m/l1/r;->a:Ls1/a/a/a/v0/m/l1/r;

    invoke-static {v10, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_48

    const/4 v13, 0x1

    if-eq v3, v13, :cond_47

    .line 146
    new-instance v3, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v10, v13}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v3, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_24
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_43

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move/from16 p2, v7

    .line 148
    move-object/from16 v7, v17

    check-cast v7, Ls1/a/a/a/v0/m/i1;

    if-nez v15, :cond_3f

    .line 149
    invoke-static {v7}, Ls1/a/a/a/v0/f/d;->Z1(Ls1/a/a/a/v0/m/e0;)Z

    move-result v15

    if-eqz v15, :cond_3e

    goto :goto_25

    :cond_3e
    const/4 v15, 0x0

    goto :goto_26

    :cond_3f
    :goto_25
    const/4 v15, 0x1

    :goto_26
    move/from16 p3, v8

    .line 150
    instance-of v8, v7, Ls1/a/a/a/v0/m/l0;

    if-eqz v8, :cond_40

    check-cast v7, Ls1/a/a/a/v0/m/l0;

    goto :goto_27

    .line 151
    :cond_40
    instance-of v8, v7, Ls1/a/a/a/v0/m/y;

    if-eqz v8, :cond_42

    .line 152
    invoke-static {v7}, Ls1/a/a/a/v0/f/d;->W1(Ls1/a/a/a/v0/m/e0;)Z

    move-result v8

    if-eqz v8, :cond_41

    goto/16 :goto_29

    .line 153
    :cond_41
    check-cast v7, Ls1/a/a/a/v0/m/y;

    .line 154
    iget-object v7, v7, Ls1/a/a/a/v0/m/y;->b:Ls1/a/a/a/v0/m/l0;

    const/4 v8, 0x1

    move v14, v8

    .line 155
    :goto_27
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v7, p2

    move/from16 v8, p3

    goto :goto_24

    :cond_42
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    :cond_43
    move/from16 p2, v7

    move/from16 p3, v8

    if-eqz v15, :cond_44

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Intersection of error types: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ls1/a/a/a/v0/m/x;->d(Ljava/lang/String;)Ls1/a/a/a/v0/m/l0;

    move-result-object v7

    const-string v3, "ErrorUtils.createErrorTy\u2026 of error types: $types\")"

    invoke-static {v7, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_29

    :cond_44
    if-nez v14, :cond_45

    .line 157
    invoke-virtual {v11, v3}, Ls1/a/a/a/v0/m/l1/r;->b(Ljava/util/List;)Ls1/a/a/a/v0/m/l0;

    move-result-object v7

    goto :goto_29

    .line 158
    :cond_45
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v10, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 159
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_28
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_46

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 160
    check-cast v10, Ls1/a/a/a/v0/m/i1;

    .line 161
    invoke-static {v10}, Ls1/a/a/a/v0/f/d;->X3(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/l0;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 162
    :cond_46
    invoke-virtual {v11, v3}, Ls1/a/a/a/v0/m/l1/r;->b(Ljava/util/List;)Ls1/a/a/a/v0/m/l0;

    move-result-object v3

    invoke-virtual {v11, v7}, Ls1/a/a/a/v0/m/l1/r;->b(Ljava/util/List;)Ls1/a/a/a/v0/m/l0;

    move-result-object v7

    invoke-static {v3, v7}, Ls1/a/a/a/v0/m/f0;->c(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/i1;

    move-result-object v7

    goto :goto_29

    :cond_47
    move/from16 p2, v7

    move/from16 p3, v8

    .line 163
    invoke-static {v10}, Ls1/u/i;->B0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ls1/a/a/a/v0/m/i1;

    :goto_29
    const-string v3, "$this$asTypeArgument"

    .line 164
    invoke-static {v7, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-static {v7, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-static {v7}, Ls1/a/a/a/v0/f/d;->F(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/y0;

    move-result-object v3

    .line 167
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2a
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, p0

    move/from16 v7, p2

    move/from16 v8, p3

    goto/16 :goto_1e

    .line 168
    :cond_48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected some types"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    if-nez v8, :cond_4a

    .line 169
    invoke-virtual {v12, v0, v6, v2}, Ls1/a/a/a/v0/m/g;->e(Ls1/a/a/a/v0/m/h;Ls1/a/a/a/v0/m/n1/j;Ls1/a/a/a/v0/m/n1/i;)Z

    move-result v1

    if-eqz v1, :cond_4a

    goto :goto_2b

    .line 170
    :cond_4a
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4b

    goto/16 :goto_30

    .line 171
    :cond_4b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/m/n1/i;

    .line 172
    invoke-virtual {v5, v3}, Ls1/a/a/a/v0/m/l1/b;->S(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/n1/j;

    move-result-object v3

    invoke-virtual {v12, v0, v3, v2}, Ls1/a/a/a/v0/m/g;->e(Ls1/a/a/a/v0/m/h;Ls1/a/a/a/v0/m/n1/j;Ls1/a/a/a/v0/m/n1/i;)Z

    move-result v3

    if-eqz v3, :cond_4c

    :goto_2b
    const/4 v3, 0x1

    goto/16 :goto_31

    .line 173
    :cond_4d
    invoke-static {v4}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/m/n1/i;

    invoke-virtual {v5, v1}, Ls1/a/a/a/v0/m/l1/b;->S(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/n1/j;

    move-result-object v1

    invoke-virtual {v12, v0, v1, v2}, Ls1/a/a/a/v0/m/g;->e(Ls1/a/a/a/v0/m/h;Ls1/a/a/a/v0/m/n1/j;Ls1/a/a/a/v0/m/n1/i;)Z

    move-result v3

    goto/16 :goto_31

    .line 174
    :cond_4e
    invoke-virtual {v5, v1}, Ls1/a/a/a/v0/m/l1/b;->u(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/n1/l;

    move-result-object v0

    .line 175
    invoke-virtual {v5, v0}, Ls1/a/a/a/v0/m/l1/b;->W(Ls1/a/a/a/v0/m/n1/l;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 176
    invoke-virtual {v5, v0}, Ls1/a/a/a/v0/m/l1/b;->h(Ls1/a/a/a/v0/m/n1/l;)Z

    move-result v3

    goto/16 :goto_31

    .line 177
    :cond_4f
    invoke-virtual {v5, v1}, Ls1/a/a/a/v0/m/l1/b;->u(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/n1/l;

    move-result-object v0

    invoke-virtual {v5, v0}, Ls1/a/a/a/v0/m/l1/b;->h(Ls1/a/a/a/v0/m/n1/l;)Z

    move-result v0

    if-eqz v0, :cond_50

    goto :goto_2b

    .line 178
    :cond_50
    invoke-virtual {v5}, Ls1/a/a/a/v0/m/h;->I()V

    .line 179
    iget-object v0, v5, Ls1/a/a/a/v0/m/h;->c:Ljava/util/ArrayDeque;

    .line 180
    invoke-static {v0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 181
    iget-object v2, v5, Ls1/a/a/a/v0/m/h;->d:Ljava/util/Set;

    .line 182
    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 183
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 184
    :cond_51
    :goto_2c
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_57

    .line 185
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    const/16 v4, 0x3e8

    if-gt v3, v4, :cond_56

    .line 186
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/m/n1/i;

    .line 187
    invoke-static {v3, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_52

    goto :goto_2c

    .line 188
    :cond_52
    invoke-virtual {v5, v3}, Ls1/a/a/a/v0/m/l1/b;->J(Ls1/a/a/a/v0/m/n1/i;)Z

    move-result v4

    if-eqz v4, :cond_53

    move-object v4, v7

    goto :goto_2d

    :cond_53
    move-object/from16 v4, p2

    .line 189
    :goto_2d
    invoke-static {v4, v7}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v8, 0x1

    xor-int/2addr v6, v8

    if-eqz v6, :cond_54

    goto :goto_2e

    :cond_54
    move-object/from16 v4, v16

    :goto_2e
    if-eqz v4, :cond_51

    .line 190
    invoke-virtual {v5, v3}, Ls1/a/a/a/v0/m/l1/b;->u(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/n1/l;

    move-result-object v3

    invoke-virtual {v5, v3}, Ls1/a/a/a/v0/m/l1/b;->e0(Ls1/a/a/a/v0/m/n1/l;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls1/a/a/a/v0/m/n1/h;

    .line 191
    invoke-virtual {v4, v5, v6}, Ls1/a/a/a/v0/m/h$a;->a(Ls1/a/a/a/v0/m/h;Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/i;

    move-result-object v6

    .line 192
    invoke-virtual {v5, v6}, Ls1/a/a/a/v0/m/l1/b;->u(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/n1/l;

    move-result-object v12

    invoke-virtual {v5, v12}, Ls1/a/a/a/v0/m/l1/b;->h(Ls1/a/a/a/v0/m/n1/l;)Z

    move-result v12

    if-eqz v12, :cond_55

    .line 193
    invoke-virtual {v5}, Ls1/a/a/a/v0/m/h;->D()V

    move v3, v8

    goto :goto_31

    .line 194
    :cond_55
    invoke-virtual {v0, v6}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 195
    :cond_56
    invoke-static {v11, v1, v10}, Le/d/c/a/a;->N(Ljava/lang/String;Ls1/a/a/a/v0/m/n1/i;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x3f

    move-object/from16 v17, v2

    invoke-static/range {v17 .. v24}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    :cond_57
    invoke-virtual {v5}, Ls1/a/a/a/v0/m/h;->D()V

    :cond_58
    :goto_30
    const/4 v3, 0x0

    :goto_31
    return v3

    :cond_59
    move-object/from16 v0, v20

    .line 197
    invoke-static {v0, v6, v13}, Le/d/c/a/a;->O(Ljava/lang/String;Ls1/a/a/a/v0/m/n1/l;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6, v0}, Le/d/c/a/a;->r(Ls1/a/a/a/v0/m/n1/l;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 198
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/m/h;Ls1/a/a/a/v0/m/n1/i;Ls1/a/a/a/v0/m/n1/l;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/m/h;",
            "Ls1/a/a/a/v0/m/n1/i;",
            "Ls1/a/a/a/v0/m/n1/l;",
            ")",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/m/n1/i;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1
    sget-object v3, Ls1/a/a/a/v0/m/h$a$c;->a:Ls1/a/a/a/v0/m/h$a$c;

    sget-object v4, Ls1/a/a/a/v0/m/n1/b;->a:Ls1/a/a/a/v0/m/n1/b;

    sget-object v5, Ls1/u/s;->a:Ls1/u/s;

    invoke-virtual/range {p1 .. p3}, Ls1/a/a/a/v0/m/h;->E(Ls1/a/a/a/v0/m/n1/i;Ls1/a/a/a/v0/m/n1/l;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    return-object v6

    .line 2
    :cond_0
    move-object v6, v0

    check-cast v6, Ls1/a/a/a/v0/m/l1/b;

    invoke-virtual {v6, v2}, Ls1/a/a/a/v0/m/l1/b;->W(Ls1/a/a/a/v0/m/n1/l;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual/range {p1 .. p2}, Ls1/a/a/a/v0/m/h;->J(Ls1/a/a/a/v0/m/n1/i;)Z

    move-result v7

    if-eqz v7, :cond_1

    return-object v5

    :cond_1
    const-string v7, "$this$isCommonFinalClassConstructor"

    .line 3
    invoke-static {v2, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {v2, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    instance-of v7, v2, Ls1/a/a/a/v0/m/v0;

    if-eqz v7, :cond_f

    .line 6
    move-object v7, v2

    check-cast v7, Ls1/a/a/a/v0/m/v0;

    invoke-interface {v7}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v7

    instance-of v8, v7, Ls1/a/a/a/v0/b/e;

    const/4 v9, 0x0

    if-nez v8, :cond_2

    move-object v7, v9

    :cond_2
    check-cast v7, Ls1/a/a/a/v0/b/e;

    const/4 v8, 0x0

    const/4 v10, 0x1

    if-eqz v7, :cond_3

    .line 7
    invoke-static {v7}, Le/q/f/a/d/a;->w1(Ls1/a/a/a/v0/b/e;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v7}, Ls1/a/a/a/v0/b/e;->getKind()Ls1/a/a/a/v0/b/f;

    move-result-object v11

    sget-object v12, Ls1/a/a/a/v0/b/f;->d:Ls1/a/a/a/v0/b/f;

    if-eq v11, v12, :cond_3

    invoke-interface {v7}, Ls1/a/a/a/v0/b/e;->getKind()Ls1/a/a/a/v0/b/f;

    move-result-object v7

    sget-object v11, Ls1/a/a/a/v0/b/f;->e:Ls1/a/a/a/v0/b/f;

    if-eq v7, v11, :cond_3

    move v8, v10

    :cond_3
    if-eqz v8, :cond_6

    .line 8
    invoke-virtual {v6, v1}, Ls1/a/a/a/v0/m/l1/b;->u(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/n1/l;

    move-result-object v0

    invoke-virtual {v6, v0, v2}, Ls1/a/a/a/v0/m/l1/b;->B(Ls1/a/a/a/v0/m/n1/l;Ls1/a/a/a/v0/m/n1/l;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    invoke-virtual {v6, v1, v4}, Ls1/a/a/a/v0/m/l1/b;->T(Ls1/a/a/a/v0/m/n1/i;Ls1/a/a/a/v0/m/n1/b;)Ls1/a/a/a/v0/m/n1/i;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    :cond_5
    return-object v5

    .line 10
    :cond_6
    new-instance v5, Ls1/a/a/a/v0/o/l;

    invoke-direct {v5}, Ls1/a/a/a/v0/o/l;-><init>()V

    .line 11
    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/m/h;->I()V

    .line 12
    iget-object v7, v0, Ls1/a/a/a/v0/m/h;->c:Ljava/util/ArrayDeque;

    .line 13
    invoke-static {v7}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 14
    iget-object v11, v0, Ls1/a/a/a/v0/m/h;->d:Ljava/util/Set;

    .line 15
    invoke-static {v11}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v7, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 17
    :cond_7
    :goto_1
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    xor-int/2addr v8, v10

    if-eqz v8, :cond_e

    .line 18
    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v8

    const/16 v12, 0x3e8

    if-gt v8, v12, :cond_d

    .line 19
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ls1/a/a/a/v0/m/n1/i;

    const-string v12, "current"

    .line 20
    invoke-static {v8, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v11, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    goto :goto_1

    .line 21
    :cond_8
    invoke-virtual {v6, v8, v4}, Ls1/a/a/a/v0/m/l1/b;->T(Ls1/a/a/a/v0/m/n1/i;Ls1/a/a/a/v0/m/n1/b;)Ls1/a/a/a/v0/m/n1/i;

    move-result-object v12

    if-eqz v12, :cond_9

    goto :goto_2

    :cond_9
    move-object v12, v8

    .line 22
    :goto_2
    invoke-virtual {v6, v12}, Ls1/a/a/a/v0/m/l1/b;->u(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/n1/l;

    move-result-object v13

    invoke-virtual {v6, v13, v2}, Ls1/a/a/a/v0/m/l1/b;->B(Ls1/a/a/a/v0/m/n1/l;Ls1/a/a/a/v0/m/n1/l;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 23
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v12, v3

    goto :goto_3

    .line 24
    :cond_a
    invoke-virtual {v6, v12}, Ls1/a/a/a/v0/m/l1/b;->b(Ls1/a/a/a/v0/m/n1/h;)I

    move-result v13

    if-nez v13, :cond_b

    .line 25
    sget-object v12, Ls1/a/a/a/v0/m/h$a$b;->a:Ls1/a/a/a/v0/m/h$a$b;

    goto :goto_3

    .line 26
    :cond_b
    invoke-virtual {v0, v12}, Ls1/a/a/a/v0/m/h;->Q(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/h$a;

    move-result-object v12

    .line 27
    :goto_3
    invoke-static {v12, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    xor-int/2addr v13, v10

    if-eqz v13, :cond_c

    goto :goto_4

    :cond_c
    move-object v12, v9

    :goto_4
    if-eqz v12, :cond_7

    .line 28
    invoke-virtual {v6, v8}, Ls1/a/a/a/v0/m/l1/b;->u(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/n1/l;

    move-result-object v8

    invoke-virtual {v6, v8}, Ls1/a/a/a/v0/m/l1/b;->e0(Ls1/a/a/a/v0/m/n1/l;)Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ls1/a/a/a/v0/m/n1/h;

    .line 29
    invoke-virtual {v12, v0, v13}, Ls1/a/a/a/v0/m/h$a;->a(Ls1/a/a/a/v0/m/h;Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/i;

    move-result-object v13

    .line 30
    invoke-virtual {v7, v13}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    const-string v0, "Too many supertypes for type: "

    const-string v2, ". Supertypes = "

    .line 31
    invoke-static {v0, v1, v2}, Le/d/c/a/a;->N(Ljava/lang/String;Ls1/a/a/a/v0/m/n1/i;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x3f

    invoke-static/range {v11 .. v18}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 32
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/m/h;->D()V

    return-object v5

    :cond_f
    const-string v0, "ClassicTypeSystemContext couldn\'t handle: "

    const-string v1, ", "

    .line 33
    invoke-static {v0, v2, v1}, Le/d/c/a/a;->O(Ljava/lang/String;Ls1/a/a/a/v0/m/n1/l;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v0}, Le/d/c/a/a;->r(Ls1/a/a/a/v0/m/n1/l;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 34
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b(Ls1/a/a/a/v0/m/h;Ls1/a/a/a/v0/m/n1/i;Ls1/a/a/a/v0/m/n1/l;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/m/h;",
            "Ls1/a/a/a/v0/m/n1/i;",
            "Ls1/a/a/a/v0/m/n1/l;",
            ")",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/m/n1/i;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Ls1/a/a/a/v0/m/g;->a(Ls1/a/a/a/v0/m/h;Ls1/a/a/a/v0/m/n1/i;Ls1/a/a/a/v0/m/n1/l;)Ljava/util/List;

    move-result-object p2

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    goto :goto_4

    .line 3
    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ls1/a/a/a/v0/m/n1/i;

    .line 5
    move-object v4, p1

    check-cast v4, Ls1/a/a/a/v0/m/l1/b;

    invoke-virtual {v4, v3}, Ls1/a/a/a/v0/m/l1/b;->S(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/n1/j;

    move-result-object v3

    .line 6
    invoke-virtual {v4, v3}, Ls1/a/a/a/v0/m/l1/b;->d0(Ls1/a/a/a/v0/m/n1/j;)I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_4

    .line 7
    invoke-virtual {v4, v3, v7}, Ls1/a/a/a/v0/m/l1/b;->F(Ls1/a/a/a/v0/m/n1/j;I)Ls1/a/a/a/v0/m/n1/k;

    move-result-object v8

    .line 8
    invoke-virtual {v4, v8}, Ls1/a/a/a/v0/m/l1/b;->m(Ls1/a/a/a/v0/m/n1/k;)Ls1/a/a/a/v0/m/n1/h;

    move-result-object v8

    invoke-virtual {v4, v8}, Ls1/a/a/a/v0/m/l1/b;->j(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/f;

    move-result-object v8

    if-nez v8, :cond_2

    move v8, v2

    goto :goto_2

    :cond_2
    move v8, v6

    :goto_2
    if-nez v8, :cond_3

    move v2, v6

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_5
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_6

    move-object p2, p3

    :cond_6
    :goto_4
    return-object p2
.end method

.method public final c(Ls1/a/a/a/v0/m/h;Ls1/a/a/a/v0/m/n1/h;Ls1/a/a/a/v0/m/n1/h;)Z
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "a"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p2, p3, :cond_0

    return v0

    .line 1
    :cond_0
    sget-object v7, Ls1/a/a/a/v0/m/g;->a:Ls1/a/a/a/v0/m/g;

    invoke-virtual {v7, p1, p2}, Ls1/a/a/a/v0/m/g;->d(Ls1/a/a/a/v0/m/h;Ls1/a/a/a/v0/m/n1/h;)Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v7, p1, p3}, Ls1/a/a/a/v0/m/g;->d(Ls1/a/a/a/v0/m/h;Ls1/a/a/a/v0/m/n1/h;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2
    invoke-virtual {p1, p2}, Ls1/a/a/a/v0/m/h;->P(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/h;

    move-result-object v1

    .line 3
    invoke-virtual {p1, p3}, Ls1/a/a/a/v0/m/h;->P(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/h;

    move-result-object v2

    .line 4
    invoke-virtual {p1, v1}, Ls1/a/a/a/v0/m/h;->k(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/i;

    move-result-object v3

    .line 5
    invoke-virtual {p1, v1}, Ls1/a/a/a/v0/m/h;->i(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/l;

    move-result-object v4

    invoke-virtual {p1, v2}, Ls1/a/a/a/v0/m/h;->i(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/l;

    move-result-object v5

    move-object v6, p1

    check-cast v6, Ls1/a/a/a/v0/m/l1/b;

    invoke-virtual {v6, v4, v5}, Ls1/a/a/a/v0/m/l1/b;->B(Ls1/a/a/a/v0/m/n1/l;Ls1/a/a/a/v0/m/n1/l;)Z

    move-result v4

    if-nez v4, :cond_1

    return v8

    .line 6
    :cond_1
    invoke-virtual {v6, v3}, Ls1/a/a/a/v0/m/l1/b;->b(Ls1/a/a/a/v0/m/n1/h;)I

    move-result v4

    if-nez v4, :cond_5

    .line 7
    invoke-virtual {p1, v1}, Ls1/a/a/a/v0/m/h;->H(Ls1/a/a/a/v0/m/n1/h;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1, v2}, Ls1/a/a/a/v0/m/h;->H(Ls1/a/a/a/v0/m/n1/h;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v6, v3}, Ls1/a/a/a/v0/m/l1/b;->e(Ls1/a/a/a/v0/m/n1/i;)Z

    move-result p2

    invoke-virtual {p1, v2}, Ls1/a/a/a/v0/m/h;->k(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/i;

    move-result-object p1

    invoke-virtual {v6, p1}, Ls1/a/a/a/v0/m/l1/b;->e(Ls1/a/a/a/v0/m/n1/i;)Z

    move-result p1

    if-ne p2, p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v8

    :cond_4
    :goto_0
    return v0

    :cond_5
    const/4 v5, 0x0

    const/16 v6, 0x8

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 9
    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/m/g;->f(Ls1/a/a/a/v0/m/g;Ls1/a/a/a/v0/m/h;Ls1/a/a/a/v0/m/n1/h;Ls1/a/a/a/v0/m/n1/h;ZI)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v5, 0x0

    const/16 v6, 0x8

    move-object v1, v7

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/m/g;->f(Ls1/a/a/a/v0/m/g;Ls1/a/a/a/v0/m/h;Ls1/a/a/a/v0/m/n1/h;Ls1/a/a/a/v0/m/n1/h;ZI)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    move v0, v8

    :goto_1
    return v0
.end method

.method public final d(Ls1/a/a/a/v0/m/h;Ls1/a/a/a/v0/m/n1/h;)Z
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Ls1/a/a/a/v0/m/h;->i(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/l;

    move-result-object v0

    const-string v1, "$this$isDenotable"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    instance-of v1, v0, Ls1/a/a/a/v0/m/v0;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Ls1/a/a/a/v0/m/v0;

    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1, p2}, Ls1/a/a/a/v0/m/h;->L(Ls1/a/a/a/v0/m/n1/h;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Ls1/a/a/a/v0/m/h;->K(Ls1/a/a/a/v0/m/n1/h;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1, p2}, Ls1/a/a/a/v0/m/h;->k(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/i;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ls1/a/a/a/v0/m/l1/b;

    invoke-virtual {v1, v0}, Ls1/a/a/a/v0/m/l1/b;->u(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/n1/l;

    move-result-object v0

    invoke-virtual {p1, p2}, Ls1/a/a/a/v0/m/h;->d(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/i;

    move-result-object p1

    invoke-virtual {v1, p1}, Ls1/a/a/a/v0/m/l1/b;->u(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/n1/l;

    move-result-object p1

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    const-string p1, "ClassicTypeSystemContext couldn\'t handle: "

    const-string p2, ", "

    .line 8
    invoke-static {p1, v0, p2}, Le/d/c/a/a;->O(Ljava/lang/String;Ls1/a/a/a/v0/m/n1/l;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v0, p1}, Le/d/c/a/a;->r(Ls1/a/a/a/v0/m/n1/l;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final e(Ls1/a/a/a/v0/m/h;Ls1/a/a/a/v0/m/n1/j;Ls1/a/a/a/v0/m/n1/i;)Z
    .locals 16

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    sget-object v9, Ls1/a/a/a/v0/m/g;->a:Ls1/a/a/a/v0/m/g;

    const-string v0, "$this$isSubtypeForSameConstructor"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "capturedSubArguments"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "superType"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    move-object v10, v6

    check-cast v10, Ls1/a/a/a/v0/m/l1/b;

    invoke-virtual {v10, v8}, Ls1/a/a/a/v0/m/l1/b;->u(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/n1/l;

    move-result-object v11

    .line 2
    invoke-virtual {v10, v11}, Ls1/a/a/a/v0/m/l1/b;->c0(Ls1/a/a/a/v0/m/n1/l;)I

    move-result v12

    const/4 v13, 0x0

    move v14, v13

    :goto_0
    const/4 v0, 0x1

    if-ge v14, v12, :cond_a

    .line 3
    invoke-virtual {v10, v8, v14}, Ls1/a/a/a/v0/m/l1/b;->q(Ls1/a/a/a/v0/m/n1/h;I)Ls1/a/a/a/v0/m/n1/k;

    move-result-object v1

    .line 4
    invoke-virtual {v10, v1}, Ls1/a/a/a/v0/m/l1/b;->c(Ls1/a/a/a/v0/m/n1/k;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 5
    :cond_0
    invoke-virtual {v10, v1}, Ls1/a/a/a/v0/m/l1/b;->m(Ls1/a/a/a/v0/m/n1/k;)Ls1/a/a/a/v0/m/n1/h;

    move-result-object v3

    .line 6
    invoke-virtual {v6, v7, v14}, Ls1/a/a/a/v0/m/h;->F(Ls1/a/a/a/v0/m/n1/j;I)Ls1/a/a/a/v0/m/n1/k;

    move-result-object v2

    .line 7
    invoke-virtual {v10, v2}, Ls1/a/a/a/v0/m/l1/b;->l(Ls1/a/a/a/v0/m/n1/k;)Ls1/a/a/a/v0/m/n1/p;

    sget-object v4, Ls1/a/a/a/v0/m/n1/p;->d:Ls1/a/a/a/v0/m/n1/p;

    .line 8
    invoke-virtual {v10, v2}, Ls1/a/a/a/v0/m/l1/b;->m(Ls1/a/a/a/v0/m/n1/k;)Ls1/a/a/a/v0/m/n1/h;

    move-result-object v5

    .line 9
    invoke-virtual {v10, v11, v14}, Ls1/a/a/a/v0/m/l1/b;->U(Ls1/a/a/a/v0/m/n1/l;I)Ls1/a/a/a/v0/m/n1/m;

    move-result-object v2

    invoke-virtual {v10, v2}, Ls1/a/a/a/v0/m/l1/b;->V(Ls1/a/a/a/v0/m/n1/m;)Ls1/a/a/a/v0/m/n1/p;

    move-result-object v2

    invoke-virtual {v10, v1}, Ls1/a/a/a/v0/m/l1/b;->l(Ls1/a/a/a/v0/m/n1/k;)Ls1/a/a/a/v0/m/n1/p;

    move-result-object v1

    const-string v15, "declared"

    .line 10
    invoke-static {v2, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "useSite"

    invoke-static {v1, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v2, v4, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    if-ne v1, v4, :cond_2

    goto :goto_1

    :cond_2
    if-ne v2, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_9

    .line 11
    iget v1, v6, Ls1/a/a/a/v0/m/h;->a:I

    const/16 v4, 0x64

    if-gt v1, v4, :cond_8

    add-int/lit8 v1, v1, 0x1

    .line 12
    iput v1, v6, Ls1/a/a/a/v0/m/h;->a:I

    .line 13
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_6

    if-eq v1, v0, :cond_5

    const/4 v0, 0x2

    if-ne v1, v0, :cond_4

    .line 14
    invoke-virtual {v9, v6, v5, v3}, Ls1/a/a/a/v0/m/g;->c(Ls1/a/a/a/v0/m/h;Ls1/a/a/a/v0/m/n1/h;Ls1/a/a/a/v0/m/n1/h;)Z

    move-result v0

    goto :goto_2

    .line 15
    :cond_4
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    :cond_5
    const/4 v4, 0x0

    const/16 v15, 0x8

    move-object v0, v9

    move-object/from16 v1, p1

    move-object v2, v5

    move v5, v15

    .line 16
    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/m/g;->f(Ls1/a/a/a/v0/m/g;Ls1/a/a/a/v0/m/h;Ls1/a/a/a/v0/m/n1/h;Ls1/a/a/a/v0/m/n1/h;ZI)Z

    move-result v0

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    const/16 v15, 0x8

    move-object v0, v9

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v5

    move v5, v15

    .line 17
    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/m/g;->f(Ls1/a/a/a/v0/m/g;Ls1/a/a/a/v0/m/h;Ls1/a/a/a/v0/m/n1/h;Ls1/a/a/a/v0/m/n1/h;ZI)Z

    move-result v0

    .line 18
    :goto_2
    iget v1, v6, Ls1/a/a/a/v0/m/h;->a:I

    add-int/lit8 v1, v1, -0x1

    .line 19
    iput v1, v6, Ls1/a/a/a/v0/m/h;->a:I

    if-nez v0, :cond_7

    return v13

    :cond_7
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 20
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Arguments depth is too high. Some related argument: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 21
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/m/h;->M()Z

    move-result v0

    :cond_a
    return v0
.end method
