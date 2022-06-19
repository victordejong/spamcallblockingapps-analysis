.class public Ln3/i/b/h/m/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ln3/i/b/h/m/b$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln3/i/b/h/m/b$a;

    invoke-direct {v0}, Ln3/i/b/h/m/b$a;-><init>()V

    sput-object v0, Ln3/i/b/h/m/h;->a:Ln3/i/b/h/m/b$a;

    return-void
.end method

.method public static a(Ln3/i/b/h/d;)Z
    .locals 8

    .line 1
    sget-object v0, Ln3/i/b/h/d$a;->c:Ln3/i/b/h/d$a;

    sget-object v1, Ln3/i/b/h/d$a;->b:Ln3/i/b/h/d$a;

    sget-object v2, Ln3/i/b/h/d$a;->a:Ln3/i/b/h/d$a;

    invoke-virtual {p0}, Ln3/i/b/h/d;->r()Ln3/i/b/h/d$a;

    move-result-object v3

    .line 2
    invoke-virtual {p0}, Ln3/i/b/h/d;->v()Ln3/i/b/h/d$a;

    move-result-object v4

    .line 3
    iget-object v5, p0, Ln3/i/b/h/d;->R:Ln3/i/b/h/d;

    if-eqz v5, :cond_0

    .line 4
    check-cast v5, Ln3/i/b/h/e;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    .line 5
    invoke-virtual {v5}, Ln3/i/b/h/d;->r()Ln3/i/b/h/d$a;

    move-result-object v6

    :cond_1
    if-eqz v5, :cond_2

    .line 6
    invoke-virtual {v5}, Ln3/i/b/h/d;->v()Ln3/i/b/h/d$a;

    move-result-object v5

    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v3, v2, :cond_5

    if-eq v3, v1, :cond_5

    if-ne v3, v0, :cond_3

    .line 7
    iget v3, p0, Ln3/i/b/h/d;->l:I

    if-nez v3, :cond_3

    iget v3, p0, Ln3/i/b/h/d;->U:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_3

    .line 8
    invoke-virtual {p0, v6}, Ln3/i/b/h/d;->z(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 9
    :cond_3
    invoke-virtual {p0}, Ln3/i/b/h/d;->E()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move v3, v6

    goto :goto_2

    :cond_5
    :goto_1
    move v3, v7

    :goto_2
    if-eq v4, v2, :cond_8

    if-eq v4, v1, :cond_8

    if-ne v4, v0, :cond_6

    .line 10
    iget v0, p0, Ln3/i/b/h/d;->m:I

    if-nez v0, :cond_6

    iget v0, p0, Ln3/i/b/h/d;->U:F

    cmpl-float v0, v0, v5

    if-nez v0, :cond_6

    .line 11
    invoke-virtual {p0, v7}, Ln3/i/b/h/d;->z(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 12
    :cond_6
    invoke-virtual {p0}, Ln3/i/b/h/d;->F()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    move v0, v6

    goto :goto_4

    :cond_8
    :goto_3
    move v0, v7

    .line 13
    :goto_4
    iget p0, p0, Ln3/i/b/h/d;->U:F

    cmpl-float p0, p0, v5

    if-lez p0, :cond_a

    if-nez v3, :cond_9

    if-eqz v0, :cond_a

    :cond_9
    return v7

    :cond_a
    if-eqz v3, :cond_b

    if-eqz v0, :cond_b

    move v6, v7

    :cond_b
    return v6
.end method

.method public static b(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1
    sget-object v3, Ln3/i/b/h/d$a;->c:Ln3/i/b/h/d$a;

    instance-of v4, v0, Ln3/i/b/h/e;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Ln3/i/b/h/d;->D()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static/range {p0 .. p0}, Ln3/i/b/h/m/h;->a(Ln3/i/b/h/d;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2
    new-instance v4, Ln3/i/b/h/m/b$a;

    invoke-direct {v4}, Ln3/i/b/h/m/b$a;-><init>()V

    .line 3
    invoke-static {v0, v1, v4, v5}, Ln3/i/b/h/e;->d0(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;Ln3/i/b/h/m/b$a;I)Z

    .line 4
    :cond_0
    sget-object v4, Ln3/i/b/h/c$a;->b:Ln3/i/b/h/c$a;

    invoke-virtual {v0, v4}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v4

    .line 5
    sget-object v6, Ln3/i/b/h/c$a;->d:Ln3/i/b/h/c$a;

    invoke-virtual {v0, v6}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v6

    .line 6
    invoke-virtual {v4}, Ln3/i/b/h/c;->d()I

    move-result v7

    .line 7
    invoke-virtual {v6}, Ln3/i/b/h/c;->d()I

    move-result v8

    .line 8
    iget-object v9, v4, Ln3/i/b/h/c;->a:Ljava/util/HashSet;

    const/4 v10, 0x0

    const/16 v11, 0x8

    if-eqz v9, :cond_c

    .line 9
    iget-boolean v4, v4, Ln3/i/b/h/c;->c:Z

    if-eqz v4, :cond_c

    .line 10
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ln3/i/b/h/c;

    .line 11
    iget-object v13, v9, Ln3/i/b/h/c;->d:Ln3/i/b/h/d;

    .line 12
    invoke-static {v13}, Ln3/i/b/h/m/h;->a(Ln3/i/b/h/d;)Z

    move-result v14

    .line 13
    invoke-virtual {v13}, Ln3/i/b/h/d;->D()Z

    move-result v15

    if-eqz v15, :cond_2

    if-eqz v14, :cond_2

    .line 14
    new-instance v15, Ln3/i/b/h/m/b$a;

    invoke-direct {v15}, Ln3/i/b/h/m/b$a;-><init>()V

    .line 15
    invoke-static {v13, v1, v15, v5}, Ln3/i/b/h/e;->d0(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;Ln3/i/b/h/m/b$a;I)Z

    .line 16
    :cond_2
    invoke-virtual {v13}, Ln3/i/b/h/d;->r()Ln3/i/b/h/d$a;

    move-result-object v15

    if-ne v15, v3, :cond_8

    if-eqz v14, :cond_3

    goto :goto_2

    .line 17
    :cond_3
    invoke-virtual {v13}, Ln3/i/b/h/d;->r()Ln3/i/b/h/d$a;

    move-result-object v14

    if-ne v14, v3, :cond_1

    iget v14, v13, Ln3/i/b/h/d;->p:I

    if-ltz v14, :cond_1

    iget v14, v13, Ln3/i/b/h/d;->o:I

    if-ltz v14, :cond_1

    .line 18
    iget v14, v13, Ln3/i/b/h/d;->j0:I

    if-eq v14, v11, :cond_4

    .line 19
    iget v14, v13, Ln3/i/b/h/d;->l:I

    if-nez v14, :cond_1

    .line 20
    iget v14, v13, Ln3/i/b/h/d;->U:F

    cmpl-float v14, v14, v10

    if-nez v14, :cond_1

    .line 21
    :cond_4
    invoke-virtual {v13}, Ln3/i/b/h/d;->B()Z

    move-result v14

    if-nez v14, :cond_1

    .line 22
    iget-boolean v14, v13, Ln3/i/b/h/d;->C:Z

    if-nez v14, :cond_1

    .line 23
    iget-object v14, v13, Ln3/i/b/h/d;->F:Ln3/i/b/h/c;

    if-ne v9, v14, :cond_5

    iget-object v15, v13, Ln3/i/b/h/d;->H:Ln3/i/b/h/c;

    iget-object v15, v15, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-eqz v15, :cond_5

    .line 24
    iget-boolean v15, v15, Ln3/i/b/h/c;->c:Z

    if-nez v15, :cond_6

    .line 25
    :cond_5
    iget-object v15, v13, Ln3/i/b/h/d;->H:Ln3/i/b/h/c;

    if-ne v9, v15, :cond_7

    iget-object v9, v14, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-eqz v9, :cond_7

    .line 26
    iget-boolean v9, v9, Ln3/i/b/h/c;->c:Z

    if-eqz v9, :cond_7

    :cond_6
    const/4 v9, 0x1

    goto :goto_1

    :cond_7
    move v9, v5

    :goto_1
    if-eqz v9, :cond_1

    .line 27
    invoke-virtual {v13}, Ln3/i/b/h/d;->B()Z

    move-result v9

    if-nez v9, :cond_1

    .line 28
    invoke-static {v0, v1, v13, v2}, Ln3/i/b/h/m/h;->d(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;Ln3/i/b/h/d;Z)V

    goto :goto_0

    .line 29
    :cond_8
    :goto_2
    invoke-virtual {v13}, Ln3/i/b/h/d;->D()Z

    move-result v14

    if-eqz v14, :cond_9

    goto/16 :goto_0

    .line 30
    :cond_9
    iget-object v14, v13, Ln3/i/b/h/d;->F:Ln3/i/b/h/c;

    if-ne v9, v14, :cond_a

    iget-object v15, v13, Ln3/i/b/h/d;->H:Ln3/i/b/h/c;

    iget-object v15, v15, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-nez v15, :cond_a

    .line 31
    invoke-virtual {v14}, Ln3/i/b/h/c;->e()I

    move-result v9

    add-int/2addr v9, v7

    .line 32
    invoke-virtual {v13}, Ln3/i/b/h/d;->w()I

    move-result v14

    add-int/2addr v14, v9

    .line 33
    invoke-virtual {v13, v9, v14}, Ln3/i/b/h/d;->L(II)V

    .line 34
    invoke-static {v13, v1, v2}, Ln3/i/b/h/m/h;->b(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;Z)V

    goto/16 :goto_0

    .line 35
    :cond_a
    iget-object v15, v13, Ln3/i/b/h/d;->H:Ln3/i/b/h/c;

    if-ne v9, v15, :cond_b

    iget-object v12, v14, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-nez v12, :cond_b

    .line 36
    invoke-virtual {v15}, Ln3/i/b/h/c;->e()I

    move-result v9

    sub-int v9, v7, v9

    .line 37
    invoke-virtual {v13}, Ln3/i/b/h/d;->w()I

    move-result v12

    sub-int v12, v9, v12

    .line 38
    invoke-virtual {v13, v12, v9}, Ln3/i/b/h/d;->L(II)V

    .line 39
    invoke-static {v13, v1, v2}, Ln3/i/b/h/m/h;->b(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;Z)V

    goto/16 :goto_0

    :cond_b
    if-ne v9, v14, :cond_1

    .line 40
    iget-object v9, v15, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-eqz v9, :cond_1

    .line 41
    iget-boolean v9, v9, Ln3/i/b/h/c;->c:Z

    if-eqz v9, :cond_1

    .line 42
    invoke-virtual {v13}, Ln3/i/b/h/d;->B()Z

    move-result v9

    if-nez v9, :cond_1

    .line 43
    invoke-static {v1, v13, v2}, Ln3/i/b/h/m/h;->c(Ln3/i/b/h/m/b$b;Ln3/i/b/h/d;Z)V

    goto/16 :goto_0

    .line 44
    :cond_c
    instance-of v4, v0, Ln3/i/b/h/g;

    if-eqz v4, :cond_d

    return-void

    .line 45
    :cond_d
    iget-object v4, v6, Ln3/i/b/h/c;->a:Ljava/util/HashSet;

    if-eqz v4, :cond_19

    .line 46
    iget-boolean v6, v6, Ln3/i/b/h/c;->c:Z

    if-eqz v6, :cond_19

    .line 47
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln3/i/b/h/c;

    .line 48
    iget-object v7, v6, Ln3/i/b/h/c;->d:Ln3/i/b/h/d;

    .line 49
    invoke-static {v7}, Ln3/i/b/h/m/h;->a(Ln3/i/b/h/d;)Z

    move-result v9

    .line 50
    invoke-virtual {v7}, Ln3/i/b/h/d;->D()Z

    move-result v12

    if-eqz v12, :cond_f

    if-eqz v9, :cond_f

    .line 51
    new-instance v12, Ln3/i/b/h/m/b$a;

    invoke-direct {v12}, Ln3/i/b/h/m/b$a;-><init>()V

    .line 52
    invoke-static {v7, v1, v12, v5}, Ln3/i/b/h/e;->d0(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;Ln3/i/b/h/m/b$a;I)Z

    .line 53
    :cond_f
    iget-object v12, v7, Ln3/i/b/h/d;->F:Ln3/i/b/h/c;

    if-ne v6, v12, :cond_10

    iget-object v13, v7, Ln3/i/b/h/d;->H:Ln3/i/b/h/c;

    iget-object v13, v13, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-eqz v13, :cond_10

    .line 54
    iget-boolean v13, v13, Ln3/i/b/h/c;->c:Z

    if-nez v13, :cond_11

    .line 55
    :cond_10
    iget-object v13, v7, Ln3/i/b/h/d;->H:Ln3/i/b/h/c;

    if-ne v6, v13, :cond_12

    iget-object v12, v12, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-eqz v12, :cond_12

    .line 56
    iget-boolean v12, v12, Ln3/i/b/h/c;->c:Z

    if-eqz v12, :cond_12

    :cond_11
    const/4 v12, 0x1

    goto :goto_4

    :cond_12
    move v12, v5

    .line 57
    :goto_4
    invoke-virtual {v7}, Ln3/i/b/h/d;->r()Ln3/i/b/h/d$a;

    move-result-object v13

    if-ne v13, v3, :cond_15

    if-eqz v9, :cond_13

    goto :goto_5

    .line 58
    :cond_13
    invoke-virtual {v7}, Ln3/i/b/h/d;->r()Ln3/i/b/h/d$a;

    move-result-object v6

    if-ne v6, v3, :cond_e

    iget v6, v7, Ln3/i/b/h/d;->p:I

    if-ltz v6, :cond_e

    iget v6, v7, Ln3/i/b/h/d;->o:I

    if-ltz v6, :cond_e

    .line 59
    iget v6, v7, Ln3/i/b/h/d;->j0:I

    if-eq v6, v11, :cond_14

    .line 60
    iget v6, v7, Ln3/i/b/h/d;->l:I

    if-nez v6, :cond_e

    .line 61
    iget v6, v7, Ln3/i/b/h/d;->U:F

    cmpl-float v6, v6, v10

    if-nez v6, :cond_e

    .line 62
    :cond_14
    invoke-virtual {v7}, Ln3/i/b/h/d;->B()Z

    move-result v6

    if-nez v6, :cond_e

    .line 63
    iget-boolean v6, v7, Ln3/i/b/h/d;->C:Z

    if-nez v6, :cond_e

    if-eqz v12, :cond_e

    .line 64
    invoke-virtual {v7}, Ln3/i/b/h/d;->B()Z

    move-result v6

    if-nez v6, :cond_e

    .line 65
    invoke-static {v0, v1, v7, v2}, Ln3/i/b/h/m/h;->d(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;Ln3/i/b/h/d;Z)V

    goto :goto_3

    .line 66
    :cond_15
    :goto_5
    invoke-virtual {v7}, Ln3/i/b/h/d;->D()Z

    move-result v9

    if-eqz v9, :cond_16

    goto/16 :goto_3

    .line 67
    :cond_16
    iget-object v9, v7, Ln3/i/b/h/d;->F:Ln3/i/b/h/c;

    if-ne v6, v9, :cond_17

    iget-object v13, v7, Ln3/i/b/h/d;->H:Ln3/i/b/h/c;

    iget-object v13, v13, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-nez v13, :cond_17

    .line 68
    invoke-virtual {v9}, Ln3/i/b/h/c;->e()I

    move-result v6

    add-int/2addr v6, v8

    .line 69
    invoke-virtual {v7}, Ln3/i/b/h/d;->w()I

    move-result v9

    add-int/2addr v9, v6

    .line 70
    invoke-virtual {v7, v6, v9}, Ln3/i/b/h/d;->L(II)V

    .line 71
    invoke-static {v7, v1, v2}, Ln3/i/b/h/m/h;->b(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;Z)V

    goto/16 :goto_3

    .line 72
    :cond_17
    iget-object v13, v7, Ln3/i/b/h/d;->H:Ln3/i/b/h/c;

    if-ne v6, v13, :cond_18

    iget-object v6, v9, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-nez v6, :cond_18

    .line 73
    invoke-virtual {v13}, Ln3/i/b/h/c;->e()I

    move-result v6

    sub-int v6, v8, v6

    .line 74
    invoke-virtual {v7}, Ln3/i/b/h/d;->w()I

    move-result v9

    sub-int v9, v6, v9

    .line 75
    invoke-virtual {v7, v9, v6}, Ln3/i/b/h/d;->L(II)V

    .line 76
    invoke-static {v7, v1, v2}, Ln3/i/b/h/m/h;->b(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;Z)V

    goto/16 :goto_3

    :cond_18
    if-eqz v12, :cond_e

    .line 77
    invoke-virtual {v7}, Ln3/i/b/h/d;->B()Z

    move-result v6

    if-nez v6, :cond_e

    .line 78
    invoke-static {v1, v7, v2}, Ln3/i/b/h/m/h;->c(Ln3/i/b/h/m/b$b;Ln3/i/b/h/d;Z)V

    goto/16 :goto_3

    :cond_19
    return-void
.end method

.method public static c(Ln3/i/b/h/m/b$b;Ln3/i/b/h/d;Z)V
    .locals 6

    .line 1
    iget v0, p1, Ln3/i/b/h/d;->f0:F

    .line 2
    iget-object v1, p1, Ln3/i/b/h/d;->F:Ln3/i/b/h/c;

    iget-object v1, v1, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    invoke-virtual {v1}, Ln3/i/b/h/c;->d()I

    move-result v1

    .line 3
    iget-object v2, p1, Ln3/i/b/h/d;->H:Ln3/i/b/h/c;

    iget-object v2, v2, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    invoke-virtual {v2}, Ln3/i/b/h/c;->d()I

    move-result v2

    .line 4
    iget-object v3, p1, Ln3/i/b/h/d;->F:Ln3/i/b/h/c;

    invoke-virtual {v3}, Ln3/i/b/h/c;->e()I

    move-result v3

    add-int/2addr v3, v1

    .line 5
    iget-object v4, p1, Ln3/i/b/h/d;->H:Ln3/i/b/h/c;

    invoke-virtual {v4}, Ln3/i/b/h/c;->e()I

    move-result v4

    sub-int v4, v2, v4

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v1, v2, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v1, v3

    move v2, v4

    .line 6
    :goto_0
    invoke-virtual {p1}, Ln3/i/b/h/d;->w()I

    move-result v3

    sub-int v4, v2, v1

    sub-int/2addr v4, v3

    if-le v1, v2, :cond_1

    sub-int v4, v1, v2

    sub-int/2addr v4, v3

    :cond_1
    int-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v5

    float-to-int v0, v0

    add-int/2addr v0, v1

    add-int v4, v0, v3

    if-le v1, v2, :cond_2

    sub-int v4, v0, v3

    .line 7
    :cond_2
    invoke-virtual {p1, v0, v4}, Ln3/i/b/h/d;->L(II)V

    .line 8
    invoke-static {p1, p0, p2}, Ln3/i/b/h/m/h;->b(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;Z)V

    return-void
.end method

.method public static d(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;Ln3/i/b/h/d;Z)V
    .locals 7

    .line 1
    iget v0, p2, Ln3/i/b/h/d;->f0:F

    .line 2
    iget-object v1, p2, Ln3/i/b/h/d;->F:Ln3/i/b/h/c;

    iget-object v1, v1, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    invoke-virtual {v1}, Ln3/i/b/h/c;->d()I

    move-result v1

    iget-object v2, p2, Ln3/i/b/h/d;->F:Ln3/i/b/h/c;

    invoke-virtual {v2}, Ln3/i/b/h/c;->e()I

    move-result v2

    add-int/2addr v2, v1

    .line 3
    iget-object v1, p2, Ln3/i/b/h/d;->H:Ln3/i/b/h/c;

    iget-object v1, v1, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    invoke-virtual {v1}, Ln3/i/b/h/c;->d()I

    move-result v1

    iget-object v3, p2, Ln3/i/b/h/d;->H:Ln3/i/b/h/c;

    invoke-virtual {v3}, Ln3/i/b/h/c;->e()I

    move-result v3

    sub-int/2addr v1, v3

    if-lt v1, v2, :cond_4

    .line 4
    invoke-virtual {p2}, Ln3/i/b/h/d;->w()I

    move-result v3

    .line 5
    iget v4, p2, Ln3/i/b/h/d;->j0:I

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    .line 6
    iget v4, p2, Ln3/i/b/h/d;->l:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 7
    instance-of v3, p0, Ln3/i/b/h/e;

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {p0}, Ln3/i/b/h/d;->w()I

    move-result p0

    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Ln3/i/b/h/d;->R:Ln3/i/b/h/d;

    .line 10
    invoke-virtual {p0}, Ln3/i/b/h/d;->w()I

    move-result p0

    .line 11
    :goto_0
    iget v3, p2, Ln3/i/b/h/d;->f0:F

    mul-float/2addr v3, v6

    int-to-float p0, p0

    mul-float/2addr v3, p0

    float-to-int v3, v3

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    sub-int v3, v1, v2

    .line 12
    :cond_2
    :goto_1
    iget p0, p2, Ln3/i/b/h/d;->o:I

    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 13
    iget p0, p2, Ln3/i/b/h/d;->p:I

    if-lez p0, :cond_3

    .line 14
    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_3
    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    int-to-float p0, v1

    mul-float/2addr v0, p0

    add-float/2addr v0, v6

    float-to-int p0, v0

    add-int/2addr v2, p0

    add-int/2addr v3, v2

    .line 15
    invoke-virtual {p2, v2, v3}, Ln3/i/b/h/d;->L(II)V

    .line 16
    invoke-static {p2, p1, p3}, Ln3/i/b/h/m/h;->b(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;Z)V

    :cond_4
    return-void
.end method

.method public static e(Ln3/i/b/h/m/b$b;Ln3/i/b/h/d;)V
    .locals 6

    .line 1
    iget v0, p1, Ln3/i/b/h/d;->g0:F

    .line 2
    iget-object v1, p1, Ln3/i/b/h/d;->G:Ln3/i/b/h/c;

    iget-object v1, v1, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    invoke-virtual {v1}, Ln3/i/b/h/c;->d()I

    move-result v1

    .line 3
    iget-object v2, p1, Ln3/i/b/h/d;->I:Ln3/i/b/h/c;

    iget-object v2, v2, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    invoke-virtual {v2}, Ln3/i/b/h/c;->d()I

    move-result v2

    .line 4
    iget-object v3, p1, Ln3/i/b/h/d;->G:Ln3/i/b/h/c;

    invoke-virtual {v3}, Ln3/i/b/h/c;->e()I

    move-result v3

    add-int/2addr v3, v1

    .line 5
    iget-object v4, p1, Ln3/i/b/h/d;->I:Ln3/i/b/h/c;

    invoke-virtual {v4}, Ln3/i/b/h/c;->e()I

    move-result v4

    sub-int v4, v2, v4

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v1, v2, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v1, v3

    move v2, v4

    .line 6
    :goto_0
    invoke-virtual {p1}, Ln3/i/b/h/d;->q()I

    move-result v3

    sub-int v4, v2, v1

    sub-int/2addr v4, v3

    if-le v1, v2, :cond_1

    sub-int v4, v1, v2

    sub-int/2addr v4, v3

    :cond_1
    int-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v5

    float-to-int v0, v0

    add-int v4, v1, v0

    add-int v5, v4, v3

    if-le v1, v2, :cond_2

    sub-int v4, v1, v0

    sub-int v5, v4, v3

    .line 7
    :cond_2
    invoke-virtual {p1, v4, v5}, Ln3/i/b/h/d;->M(II)V

    .line 8
    invoke-static {p1, p0}, Ln3/i/b/h/m/h;->g(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;)V

    return-void
.end method

.method public static f(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;Ln3/i/b/h/d;)V
    .locals 7

    .line 1
    iget v0, p2, Ln3/i/b/h/d;->g0:F

    .line 2
    iget-object v1, p2, Ln3/i/b/h/d;->G:Ln3/i/b/h/c;

    iget-object v1, v1, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    invoke-virtual {v1}, Ln3/i/b/h/c;->d()I

    move-result v1

    iget-object v2, p2, Ln3/i/b/h/d;->G:Ln3/i/b/h/c;

    invoke-virtual {v2}, Ln3/i/b/h/c;->e()I

    move-result v2

    add-int/2addr v2, v1

    .line 3
    iget-object v1, p2, Ln3/i/b/h/d;->I:Ln3/i/b/h/c;

    iget-object v1, v1, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    invoke-virtual {v1}, Ln3/i/b/h/c;->d()I

    move-result v1

    iget-object v3, p2, Ln3/i/b/h/d;->I:Ln3/i/b/h/c;

    invoke-virtual {v3}, Ln3/i/b/h/c;->e()I

    move-result v3

    sub-int/2addr v1, v3

    if-lt v1, v2, :cond_4

    .line 4
    invoke-virtual {p2}, Ln3/i/b/h/d;->q()I

    move-result v3

    .line 5
    iget v4, p2, Ln3/i/b/h/d;->j0:I

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    .line 6
    iget v4, p2, Ln3/i/b/h/d;->m:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 7
    instance-of v3, p0, Ln3/i/b/h/e;

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {p0}, Ln3/i/b/h/d;->q()I

    move-result p0

    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Ln3/i/b/h/d;->R:Ln3/i/b/h/d;

    .line 10
    invoke-virtual {p0}, Ln3/i/b/h/d;->q()I

    move-result p0

    :goto_0
    mul-float v3, v0, v6

    int-to-float p0, p0

    mul-float/2addr v3, p0

    float-to-int v3, v3

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    sub-int v3, v1, v2

    .line 11
    :cond_2
    :goto_1
    iget p0, p2, Ln3/i/b/h/d;->r:I

    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 12
    iget p0, p2, Ln3/i/b/h/d;->s:I

    if-lez p0, :cond_3

    .line 13
    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_3
    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    int-to-float p0, v1

    mul-float/2addr v0, p0

    add-float/2addr v0, v6

    float-to-int p0, v0

    add-int/2addr v2, p0

    add-int/2addr v3, v2

    .line 14
    invoke-virtual {p2, v2, v3}, Ln3/i/b/h/d;->M(II)V

    .line 15
    invoke-static {p2, p1}, Ln3/i/b/h/m/h;->g(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;)V

    :cond_4
    return-void
.end method

.method public static g(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;)V
    .locals 14

    .line 1
    sget-object v0, Ln3/i/b/h/d$a;->c:Ln3/i/b/h/d$a;

    instance-of v1, p0, Ln3/i/b/h/e;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ln3/i/b/h/d;->D()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Ln3/i/b/h/m/h;->a(Ln3/i/b/h/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Ln3/i/b/h/m/b$a;

    invoke-direct {v1}, Ln3/i/b/h/m/b$a;-><init>()V

    .line 3
    invoke-static {p0, p1, v1, v2}, Ln3/i/b/h/e;->d0(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;Ln3/i/b/h/m/b$a;I)Z

    .line 4
    :cond_0
    sget-object v1, Ln3/i/b/h/c$a;->c:Ln3/i/b/h/c$a;

    invoke-virtual {p0, v1}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v1

    .line 5
    sget-object v3, Ln3/i/b/h/c$a;->e:Ln3/i/b/h/c$a;

    invoke-virtual {p0, v3}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v3

    .line 6
    invoke-virtual {v1}, Ln3/i/b/h/c;->d()I

    move-result v4

    .line 7
    invoke-virtual {v3}, Ln3/i/b/h/c;->d()I

    move-result v5

    .line 8
    iget-object v6, v1, Ln3/i/b/h/c;->a:Ljava/util/HashSet;

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x1

    if-eqz v6, :cond_c

    .line 9
    iget-boolean v1, v1, Ln3/i/b/h/c;->c:Z

    if-eqz v1, :cond_c

    .line 10
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln3/i/b/h/c;

    .line 11
    iget-object v10, v6, Ln3/i/b/h/c;->d:Ln3/i/b/h/d;

    .line 12
    invoke-static {v10}, Ln3/i/b/h/m/h;->a(Ln3/i/b/h/d;)Z

    move-result v11

    .line 13
    invoke-virtual {v10}, Ln3/i/b/h/d;->D()Z

    move-result v12

    if-eqz v12, :cond_2

    if-eqz v11, :cond_2

    .line 14
    new-instance v12, Ln3/i/b/h/m/b$a;

    invoke-direct {v12}, Ln3/i/b/h/m/b$a;-><init>()V

    .line 15
    invoke-static {v10, p1, v12, v2}, Ln3/i/b/h/e;->d0(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;Ln3/i/b/h/m/b$a;I)Z

    .line 16
    :cond_2
    invoke-virtual {v10}, Ln3/i/b/h/d;->v()Ln3/i/b/h/d$a;

    move-result-object v12

    if-ne v12, v0, :cond_8

    if-eqz v11, :cond_3

    goto :goto_2

    .line 17
    :cond_3
    invoke-virtual {v10}, Ln3/i/b/h/d;->v()Ln3/i/b/h/d$a;

    move-result-object v11

    if-ne v11, v0, :cond_1

    iget v11, v10, Ln3/i/b/h/d;->s:I

    if-ltz v11, :cond_1

    iget v11, v10, Ln3/i/b/h/d;->r:I

    if-ltz v11, :cond_1

    .line 18
    iget v11, v10, Ln3/i/b/h/d;->j0:I

    if-eq v11, v8, :cond_4

    .line 19
    iget v11, v10, Ln3/i/b/h/d;->m:I

    if-nez v11, :cond_1

    .line 20
    iget v11, v10, Ln3/i/b/h/d;->U:F

    cmpl-float v11, v11, v7

    if-nez v11, :cond_1

    .line 21
    :cond_4
    invoke-virtual {v10}, Ln3/i/b/h/d;->C()Z

    move-result v11

    if-nez v11, :cond_1

    .line 22
    iget-boolean v11, v10, Ln3/i/b/h/d;->C:Z

    if-nez v11, :cond_1

    .line 23
    iget-object v11, v10, Ln3/i/b/h/d;->G:Ln3/i/b/h/c;

    if-ne v6, v11, :cond_5

    iget-object v12, v10, Ln3/i/b/h/d;->I:Ln3/i/b/h/c;

    iget-object v12, v12, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-eqz v12, :cond_5

    .line 24
    iget-boolean v12, v12, Ln3/i/b/h/c;->c:Z

    if-nez v12, :cond_6

    .line 25
    :cond_5
    iget-object v12, v10, Ln3/i/b/h/d;->I:Ln3/i/b/h/c;

    if-ne v6, v12, :cond_7

    iget-object v6, v11, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-eqz v6, :cond_7

    .line 26
    iget-boolean v6, v6, Ln3/i/b/h/c;->c:Z

    if-eqz v6, :cond_7

    :cond_6
    move v6, v9

    goto :goto_1

    :cond_7
    move v6, v2

    :goto_1
    if-eqz v6, :cond_1

    .line 27
    invoke-virtual {v10}, Ln3/i/b/h/d;->C()Z

    move-result v6

    if-nez v6, :cond_1

    .line 28
    invoke-static {p0, p1, v10}, Ln3/i/b/h/m/h;->f(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;Ln3/i/b/h/d;)V

    goto :goto_0

    .line 29
    :cond_8
    :goto_2
    invoke-virtual {v10}, Ln3/i/b/h/d;->D()Z

    move-result v11

    if-eqz v11, :cond_9

    goto/16 :goto_0

    .line 30
    :cond_9
    iget-object v11, v10, Ln3/i/b/h/d;->G:Ln3/i/b/h/c;

    if-ne v6, v11, :cond_a

    iget-object v12, v10, Ln3/i/b/h/d;->I:Ln3/i/b/h/c;

    iget-object v12, v12, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-nez v12, :cond_a

    .line 31
    invoke-virtual {v11}, Ln3/i/b/h/c;->e()I

    move-result v6

    add-int/2addr v6, v4

    .line 32
    invoke-virtual {v10}, Ln3/i/b/h/d;->q()I

    move-result v11

    add-int/2addr v11, v6

    .line 33
    invoke-virtual {v10, v6, v11}, Ln3/i/b/h/d;->M(II)V

    .line 34
    invoke-static {v10, p1}, Ln3/i/b/h/m/h;->g(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;)V

    goto/16 :goto_0

    .line 35
    :cond_a
    iget-object v12, v10, Ln3/i/b/h/d;->I:Ln3/i/b/h/c;

    if-ne v6, v12, :cond_b

    iget-object v13, v12, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-nez v13, :cond_b

    .line 36
    invoke-virtual {v12}, Ln3/i/b/h/c;->e()I

    move-result v6

    sub-int v6, v4, v6

    .line 37
    invoke-virtual {v10}, Ln3/i/b/h/d;->q()I

    move-result v11

    sub-int v11, v6, v11

    .line 38
    invoke-virtual {v10, v11, v6}, Ln3/i/b/h/d;->M(II)V

    .line 39
    invoke-static {v10, p1}, Ln3/i/b/h/m/h;->g(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;)V

    goto/16 :goto_0

    :cond_b
    if-ne v6, v11, :cond_1

    .line 40
    iget-object v6, v12, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-eqz v6, :cond_1

    .line 41
    iget-boolean v6, v6, Ln3/i/b/h/c;->c:Z

    if-eqz v6, :cond_1

    .line 42
    invoke-static {p1, v10}, Ln3/i/b/h/m/h;->e(Ln3/i/b/h/m/b$b;Ln3/i/b/h/d;)V

    goto/16 :goto_0

    .line 43
    :cond_c
    instance-of v1, p0, Ln3/i/b/h/g;

    if-eqz v1, :cond_d

    return-void

    .line 44
    :cond_d
    iget-object v1, v3, Ln3/i/b/h/c;->a:Ljava/util/HashSet;

    if-eqz v1, :cond_19

    .line 45
    iget-boolean v3, v3, Ln3/i/b/h/c;->c:Z

    if-eqz v3, :cond_19

    .line 46
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/i/b/h/c;

    .line 47
    iget-object v4, v3, Ln3/i/b/h/c;->d:Ln3/i/b/h/d;

    .line 48
    invoke-static {v4}, Ln3/i/b/h/m/h;->a(Ln3/i/b/h/d;)Z

    move-result v6

    .line 49
    invoke-virtual {v4}, Ln3/i/b/h/d;->D()Z

    move-result v10

    if-eqz v10, :cond_f

    if-eqz v6, :cond_f

    .line 50
    new-instance v10, Ln3/i/b/h/m/b$a;

    invoke-direct {v10}, Ln3/i/b/h/m/b$a;-><init>()V

    .line 51
    invoke-static {v4, p1, v10, v2}, Ln3/i/b/h/e;->d0(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;Ln3/i/b/h/m/b$a;I)Z

    .line 52
    :cond_f
    iget-object v10, v4, Ln3/i/b/h/d;->G:Ln3/i/b/h/c;

    if-ne v3, v10, :cond_10

    iget-object v11, v4, Ln3/i/b/h/d;->I:Ln3/i/b/h/c;

    iget-object v11, v11, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-eqz v11, :cond_10

    .line 53
    iget-boolean v11, v11, Ln3/i/b/h/c;->c:Z

    if-nez v11, :cond_11

    .line 54
    :cond_10
    iget-object v11, v4, Ln3/i/b/h/d;->I:Ln3/i/b/h/c;

    if-ne v3, v11, :cond_12

    iget-object v10, v10, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-eqz v10, :cond_12

    .line 55
    iget-boolean v10, v10, Ln3/i/b/h/c;->c:Z

    if-eqz v10, :cond_12

    :cond_11
    move v10, v9

    goto :goto_4

    :cond_12
    move v10, v2

    .line 56
    :goto_4
    invoke-virtual {v4}, Ln3/i/b/h/d;->v()Ln3/i/b/h/d$a;

    move-result-object v11

    if-ne v11, v0, :cond_15

    if-eqz v6, :cond_13

    goto :goto_5

    .line 57
    :cond_13
    invoke-virtual {v4}, Ln3/i/b/h/d;->v()Ln3/i/b/h/d$a;

    move-result-object v3

    if-ne v3, v0, :cond_e

    iget v3, v4, Ln3/i/b/h/d;->s:I

    if-ltz v3, :cond_e

    iget v3, v4, Ln3/i/b/h/d;->r:I

    if-ltz v3, :cond_e

    .line 58
    iget v3, v4, Ln3/i/b/h/d;->j0:I

    if-eq v3, v8, :cond_14

    .line 59
    iget v3, v4, Ln3/i/b/h/d;->m:I

    if-nez v3, :cond_e

    .line 60
    iget v3, v4, Ln3/i/b/h/d;->U:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_e

    .line 61
    :cond_14
    invoke-virtual {v4}, Ln3/i/b/h/d;->C()Z

    move-result v3

    if-nez v3, :cond_e

    .line 62
    iget-boolean v3, v4, Ln3/i/b/h/d;->C:Z

    if-nez v3, :cond_e

    if-eqz v10, :cond_e

    .line 63
    invoke-virtual {v4}, Ln3/i/b/h/d;->C()Z

    move-result v3

    if-nez v3, :cond_e

    .line 64
    invoke-static {p0, p1, v4}, Ln3/i/b/h/m/h;->f(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;Ln3/i/b/h/d;)V

    goto :goto_3

    .line 65
    :cond_15
    :goto_5
    invoke-virtual {v4}, Ln3/i/b/h/d;->D()Z

    move-result v6

    if-eqz v6, :cond_16

    goto/16 :goto_3

    .line 66
    :cond_16
    iget-object v6, v4, Ln3/i/b/h/d;->G:Ln3/i/b/h/c;

    if-ne v3, v6, :cond_17

    iget-object v11, v4, Ln3/i/b/h/d;->I:Ln3/i/b/h/c;

    iget-object v11, v11, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-nez v11, :cond_17

    .line 67
    invoke-virtual {v6}, Ln3/i/b/h/c;->e()I

    move-result v3

    add-int/2addr v3, v5

    .line 68
    invoke-virtual {v4}, Ln3/i/b/h/d;->q()I

    move-result v6

    add-int/2addr v6, v3

    .line 69
    invoke-virtual {v4, v3, v6}, Ln3/i/b/h/d;->M(II)V

    .line 70
    invoke-static {v4, p1}, Ln3/i/b/h/m/h;->g(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;)V

    goto/16 :goto_3

    .line 71
    :cond_17
    iget-object v11, v4, Ln3/i/b/h/d;->I:Ln3/i/b/h/c;

    if-ne v3, v11, :cond_18

    iget-object v3, v6, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-nez v3, :cond_18

    .line 72
    invoke-virtual {v11}, Ln3/i/b/h/c;->e()I

    move-result v3

    sub-int v3, v5, v3

    .line 73
    invoke-virtual {v4}, Ln3/i/b/h/d;->q()I

    move-result v6

    sub-int v6, v3, v6

    .line 74
    invoke-virtual {v4, v6, v3}, Ln3/i/b/h/d;->M(II)V

    .line 75
    invoke-static {v4, p1}, Ln3/i/b/h/m/h;->g(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;)V

    goto/16 :goto_3

    :cond_18
    if-eqz v10, :cond_e

    .line 76
    invoke-virtual {v4}, Ln3/i/b/h/d;->C()Z

    move-result v3

    if-nez v3, :cond_e

    .line 77
    invoke-static {p1, v4}, Ln3/i/b/h/m/h;->e(Ln3/i/b/h/m/b$b;Ln3/i/b/h/d;)V

    goto/16 :goto_3

    .line 78
    :cond_19
    sget-object v1, Ln3/i/b/h/c$a;->f:Ln3/i/b/h/c$a;

    invoke-virtual {p0, v1}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object p0

    .line 79
    iget-object v1, p0, Ln3/i/b/h/c;->a:Ljava/util/HashSet;

    if-eqz v1, :cond_1f

    .line 80
    iget-boolean v1, p0, Ln3/i/b/h/c;->c:Z

    if-eqz v1, :cond_1f

    .line 81
    invoke-virtual {p0}, Ln3/i/b/h/c;->d()I

    move-result v1

    .line 82
    iget-object p0, p0, Ln3/i/b/h/c;->a:Ljava/util/HashSet;

    .line 83
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1a
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/i/b/h/c;

    .line 84
    iget-object v4, v3, Ln3/i/b/h/c;->d:Ln3/i/b/h/d;

    .line 85
    invoke-static {v4}, Ln3/i/b/h/m/h;->a(Ln3/i/b/h/d;)Z

    move-result v5

    .line 86
    invoke-virtual {v4}, Ln3/i/b/h/d;->D()Z

    move-result v6

    if-eqz v6, :cond_1b

    if-eqz v5, :cond_1b

    .line 87
    new-instance v6, Ln3/i/b/h/m/b$a;

    invoke-direct {v6}, Ln3/i/b/h/m/b$a;-><init>()V

    .line 88
    invoke-static {v4, p1, v6, v2}, Ln3/i/b/h/e;->d0(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;Ln3/i/b/h/m/b$a;I)Z

    .line 89
    :cond_1b
    invoke-virtual {v4}, Ln3/i/b/h/d;->v()Ln3/i/b/h/d$a;

    move-result-object v6

    if-ne v6, v0, :cond_1c

    if-eqz v5, :cond_1a

    .line 90
    :cond_1c
    invoke-virtual {v4}, Ln3/i/b/h/d;->D()Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_6

    .line 91
    :cond_1d
    iget-object v5, v4, Ln3/i/b/h/d;->J:Ln3/i/b/h/c;

    if-ne v3, v5, :cond_1a

    .line 92
    iget-boolean v3, v4, Ln3/i/b/h/d;->A:Z

    if-nez v3, :cond_1e

    goto :goto_7

    .line 93
    :cond_1e
    iget v3, v4, Ln3/i/b/h/d;->c0:I

    sub-int v3, v1, v3

    .line 94
    iget v5, v4, Ln3/i/b/h/d;->T:I

    add-int/2addr v5, v3

    .line 95
    iput v3, v4, Ln3/i/b/h/d;->X:I

    .line 96
    iget-object v6, v4, Ln3/i/b/h/d;->G:Ln3/i/b/h/c;

    invoke-virtual {v6, v3}, Ln3/i/b/h/c;->m(I)V

    .line 97
    iget-object v3, v4, Ln3/i/b/h/d;->I:Ln3/i/b/h/c;

    invoke-virtual {v3, v5}, Ln3/i/b/h/c;->m(I)V

    .line 98
    iget-object v3, v4, Ln3/i/b/h/d;->J:Ln3/i/b/h/c;

    .line 99
    iput v1, v3, Ln3/i/b/h/c;->b:I

    .line 100
    iput-boolean v9, v3, Ln3/i/b/h/c;->c:Z

    .line 101
    iput-boolean v9, v4, Ln3/i/b/h/d;->i:Z

    .line 102
    :goto_7
    :try_start_0
    invoke-static {v4, p1}, Ln3/i/b/h/m/h;->g(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p0

    throw p0

    :cond_1f
    return-void
.end method
