.class public final Ls1/a/a/a/v0/a/o/e;
.super Ls1/a/a/a/v0/b/h1/i0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/a/o/e;Ls1/a/a/a/v0/b/b$a;Z)V
    .locals 8

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v4, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    .line 4
    sget-object v5, Ls1/a/a/a/v0/n/l;->g:Ls1/a/a/a/v0/f/e;

    .line 5
    sget-object v7, Ls1/a/a/a/v0/b/r0;->a:Ls1/a/a/a/v0/b/r0;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    .line 6
    invoke-direct/range {v1 .. v7}, Ls1/a/a/a/v0/b/h1/i0;-><init>(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/q0;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/b/r0;)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Ls1/a/a/a/v0/b/h1/r;->l:Z

    .line 8
    iput-boolean p4, p0, Ls1/a/a/a/v0/b/h1/r;->u:Z

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Ls1/a/a/a/v0/b/h1/r;->v:Z

    return-void
.end method

.method public static final b1(Ls1/a/a/a/v0/a/o/b;Z)Ls1/a/a/a/v0/a/o/e;
    .locals 20

    move-object/from16 v0, p0

    const-string v1, "functionClass"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, v0, Ls1/a/a/a/v0/a/o/b;->g:Ljava/util/List;

    .line 2
    new-instance v14, Ls1/a/a/a/v0/a/o/e;

    const/4 v2, 0x0

    sget-object v3, Ls1/a/a/a/v0/b/b$a;->a:Ls1/a/a/a/v0/b/b$a;

    move/from16 v4, p1

    .line 3
    invoke-direct {v14, v0, v2, v3, v4}, Ls1/a/a/a/v0/a/o/e;-><init>(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/a/o/e;Ls1/a/a/a/v0/b/b$a;Z)V

    .line 4
    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/b/h1/b;->a0()Ls1/a/a/a/v0/b/n0;

    move-result-object v0

    .line 5
    sget-object v15, Ls1/u/s;->a:Ls1/u/s;

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 8
    move-object v6, v4

    check-cast v6, Ls1/a/a/a/v0/b/w0;

    .line 9
    invoke-interface {v6}, Ls1/a/a/a/v0/b/w0;->k()Ls1/a/a/a/v0/m/j1;

    move-result-object v6

    sget-object v7, Ls1/a/a/a/v0/m/j1;->d:Ls1/a/a/a/v0/m/j1;

    if-ne v6, v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_1

    goto :goto_2

    .line 10
    :cond_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_2
    :goto_2
    invoke-static {v2}, Ls1/u/i;->h1(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v2

    .line 12
    new-instance v13, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    check-cast v2, Ls1/u/x;

    invoke-virtual {v2}, Ls1/u/x;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    move-object/from16 v2, v16

    check-cast v2, Ls1/u/y;

    invoke-virtual {v2}, Ls1/u/y;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 14
    check-cast v2, Ls1/u/w;

    .line 15
    iget v5, v2, Ls1/u/w;->a:I

    .line 16
    iget-object v2, v2, Ls1/u/w;->b:Ljava/lang/Object;

    .line 17
    check-cast v2, Ls1/a/a/a/v0/b/w0;

    .line 18
    invoke-interface {v2}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v3

    invoke-virtual {v3}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "typeParameter.name.asString()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v6, 0x45

    if-eq v4, v6, :cond_4

    const/16 v6, 0x54

    if-eq v4, v6, :cond_3

    goto :goto_4

    :cond_3
    const-string v4, "T"

    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v3, "instance"

    goto :goto_5

    :cond_4
    const-string v4, "E"

    .line 21
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v3, "receiver"

    goto :goto_5

    .line 22
    :cond_5
    :goto_4
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "(this as java.lang.String).toLowerCase()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    :goto_5
    new-instance v12, Ls1/a/a/a/v0/b/h1/n0;

    const/4 v4, 0x0

    .line 24
    sget-object v6, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 25
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v6, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    .line 27
    invoke-static {v3}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v7

    const-string v3, "Name.identifier(name)"

    invoke-static {v7, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-interface {v2}, Ls1/a/a/a/v0/b/h;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object v8

    const-string v2, "typeParameter.defaultType"

    invoke-static {v8, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    .line 29
    sget-object v3, Ls1/a/a/a/v0/b/r0;->a:Ls1/a/a/a/v0/b/r0;

    const-string v2, "SourceElement.NO_SOURCE"

    invoke-static {v3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v12

    move-object/from16 v18, v3

    move-object v3, v14

    move-object/from16 v19, v12

    move-object/from16 v12, v17

    move-object/from16 p0, v15

    move-object v15, v13

    move-object/from16 v13, v18

    .line 30
    invoke-direct/range {v2 .. v13}, Ls1/a/a/a/v0/b/h1/n0;-><init>(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/b1;ILs1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/m/e0;ZZZLs1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/r0;)V

    move-object/from16 v2, v19

    .line 31
    invoke-interface {v15, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v13, v15

    move-object/from16 v15, p0

    goto/16 :goto_3

    :cond_6
    move-object/from16 p0, v15

    move-object v15, v13

    .line 32
    invoke-static {v1}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/b/w0;

    invoke-interface {v1}, Ls1/a/a/a/v0/b/h;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object v7

    .line 33
    sget-object v8, Ls1/a/a/a/v0/b/y;->d:Ls1/a/a/a/v0/b/y;

    .line 34
    sget-object v9, Ls1/a/a/a/v0/b/q;->e:Ls1/a/a/a/v0/b/r;

    const/4 v3, 0x0

    move-object v2, v14

    move-object v4, v0

    move-object/from16 v5, p0

    move-object v6, v15

    .line 35
    invoke-virtual/range {v2 .. v9}, Ls1/a/a/a/v0/b/h1/i0;->Z0(Ls1/a/a/a/v0/b/n0;Ls1/a/a/a/v0/b/n0;Ljava/util/List;Ljava/util/List;Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;)Ls1/a/a/a/v0/b/h1/i0;

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, v14, Ls1/a/a/a/v0/b/h1/r;->w:Z

    return-object v14
.end method


# virtual methods
.method public L()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public N0(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/v;Ls1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/r0;)Ls1/a/a/a/v0/b/h1/r;
    .locals 0

    const-string p4, "newOwner"

    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "kind"

    invoke-static {p3, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "annotations"

    invoke-static {p5, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "source"

    invoke-static {p6, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p4, Ls1/a/a/a/v0/a/o/e;

    check-cast p2, Ls1/a/a/a/v0/a/o/e;

    .line 2
    iget-boolean p5, p0, Ls1/a/a/a/v0/b/h1/r;->u:Z

    .line 3
    invoke-direct {p4, p1, p2, p3, p5}, Ls1/a/a/a/v0/a/o/e;-><init>(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/a/o/e;Ls1/a/a/a/v0/b/b$a;Z)V

    return-object p4
.end method

.method public O0(Ls1/a/a/a/v0/b/h1/r$c;)Ls1/a/a/a/v0/b/v;
    .locals 11

    const-string v0, "configuration"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Ls1/a/a/a/v0/b/h1/r;->O0(Ls1/a/a/a/v0/b/h1/r$c;)Ls1/a/a/a/v0/b/v;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/a/o/e;

    if-eqz p1, :cond_c

    .line 2
    invoke-virtual {p1}, Ls1/a/a/a/v0/b/h1/r;->i()Ljava/util/List;

    move-result-object v0

    const-string v1, "substituted.valueParameters"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const-string v3, "it.type"

    const/4 v4, 0x0

    const-string v5, "it"

    const/4 v6, 0x1

    if-eqz v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/a/a/a/v0/b/b1;

    .line 5
    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v2

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ls1/a/a/a/v0/a/f;->b(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/f/e;

    move-result-object v2

    if-eqz v2, :cond_2

    move v2, v6

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    if-eqz v2, :cond_1

    move v0, v4

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v6

    :goto_2
    if-eqz v0, :cond_4

    return-object p1

    .line 6
    :cond_4
    invoke-virtual {p1}, Ls1/a/a/a/v0/b/h1/r;->i()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 9
    check-cast v7, Ls1/a/a/a/v0/b/b1;

    .line 10
    invoke-static {v7, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v7

    invoke-static {v7, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Ls1/a/a/a/v0/a/f;->b(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/f/e;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 11
    :cond_5
    invoke-virtual {p1}, Ls1/a/a/a/v0/b/h1/r;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v0, v3

    .line 12
    invoke-virtual {p1}, Ls1/a/a/a/v0/b/h1/r;->i()Ljava/util/List;

    move-result-object v3

    const-string v7, "valueParameters"

    invoke-static {v3, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v3, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 15
    check-cast v3, Ls1/a/a/a/v0/b/b1;

    .line 16
    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v8

    const-string v9, "it.name"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-interface {v3}, Ls1/a/a/a/v0/b/b1;->j()I

    move-result v9

    sub-int v10, v9, v0

    if-ltz v10, :cond_6

    .line 18
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ls1/a/a/a/v0/f/e;

    if-eqz v10, :cond_6

    move-object v8, v10

    .line 19
    :cond_6
    invoke-interface {v3, p1, v8, v9}, Ls1/a/a/a/v0/b/b1;->K(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/f/e;I)Ls1/a/a/a/v0/b/b1;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 20
    :cond_7
    sget-object v0, Ls1/a/a/a/v0/m/d1;->b:Ls1/a/a/a/v0/m/d1;

    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/b/h1/r;->R0(Ls1/a/a/a/v0/m/d1;)Ls1/a/a/a/v0/b/h1/r$c;

    move-result-object v0

    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_6

    .line 22
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/a/a/a/v0/f/e;

    if-nez v2, :cond_a

    move v2, v6

    goto :goto_5

    :cond_a
    move v2, v4

    :goto_5
    if-eqz v2, :cond_9

    move v4, v6

    .line 23
    :cond_b
    :goto_6
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Ls1/a/a/a/v0/b/h1/r$c;->u:Ljava/lang/Boolean;

    .line 24
    iput-object v7, v0, Ls1/a/a/a/v0/b/h1/r$c;->g:Ljava/util/List;

    .line 25
    invoke-virtual {p1}, Ls1/a/a/a/v0/b/h1/i0;->Y0()Ls1/a/a/a/v0/b/q0;

    move-result-object v1

    .line 26
    iput-object v1, v0, Ls1/a/a/a/v0/b/h1/r$c;->e:Ls1/a/a/a/v0/b/v;

    const-string v1, "newCopyBuilder(TypeSubst\u2026   .setOriginal(original)"

    .line 27
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-super {p1, v0}, Ls1/a/a/a/v0/b/h1/r;->O0(Ls1/a/a/a/v0/b/h1/r$c;)Ls1/a/a/a/v0/b/v;

    move-result-object p1

    invoke-static {p1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    return-object p1

    :cond_c
    const/4 p1, 0x0

    return-object p1
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public y()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
