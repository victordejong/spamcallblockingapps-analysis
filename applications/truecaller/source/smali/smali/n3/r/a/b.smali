.class public Ln3/r/a/b;
.super Ln3/r/a/u0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/r/a/b$d;,
        Ln3/r/a/b$b;,
        Ln3/r/a/b$c;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ln3/r/a/u0;-><init>(Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/util/List;Z)V
    .locals 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ln3/r/a/u0$d;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v6, p2

    .line 1
    sget-object v8, Ln3/r/a/u0$d$c;->c:Ln3/r/a/u0$d$c;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v10, Ln3/r/a/u0$d$c;->b:Ln3/r/a/u0$d$c;

    .line 2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v11, v1

    move-object v12, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/r/a/u0$d;

    .line 3
    iget-object v4, v1, Ln3/r/a/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 4
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v4}, Ln3/r/a/u0$d$c;->d(Landroid/view/View;)Ln3/r/a/u0$d$c;

    move-result-object v4

    .line 5
    iget-object v5, v1, Ln3/r/a/u0$d;->a:Ln3/r/a/u0$d$c;

    .line 6
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eqz v5, :cond_2

    if-eq v5, v3, :cond_1

    if-eq v5, v2, :cond_2

    const/4 v2, 0x3

    if-eq v5, v2, :cond_2

    goto :goto_0

    :cond_1
    if-eq v4, v10, :cond_0

    move-object v12, v1

    goto :goto_0

    :cond_2
    if-ne v4, v10, :cond_0

    if-nez v11, :cond_0

    move-object v11, v1

    goto :goto_0

    .line 7
    :cond_3
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/r/a/u0$d;

    .line 11
    new-instance v2, Ln3/k/e/a;

    invoke-direct {v2}, Ln3/k/e/a;-><init>()V

    .line 12
    invoke-virtual {v1}, Ln3/r/a/u0$d;->d()V

    .line 13
    iget-object v4, v1, Ln3/r/a/u0$d;->e:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v4, Ln3/r/a/b$b;

    invoke-direct {v4, v1, v2, v6}, Ln3/r/a/b$b;-><init>(Ln3/r/a/u0$d;Ln3/k/e/a;Z)V

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v2, Ln3/k/e/a;

    invoke-direct {v2}, Ln3/k/e/a;-><init>()V

    .line 16
    invoke-virtual {v1}, Ln3/r/a/u0$d;->d()V

    .line 17
    iget-object v4, v1, Ln3/r/a/u0$d;->e:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v4, Ln3/r/a/b$d;

    if-eqz v6, :cond_4

    if-ne v1, v11, :cond_5

    goto :goto_2

    :cond_4
    if-ne v1, v12, :cond_5

    :goto_2
    move v5, v3

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    .line 19
    :goto_3
    invoke-direct {v4, v1, v2, v6, v5}, Ln3/r/a/b$d;-><init>(Ln3/r/a/u0$d;Ln3/k/e/a;ZZ)V

    .line 20
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v2, Ln3/r/a/b$a;

    invoke-direct {v2, v7, v15, v1}, Ln3/r/a/b$a;-><init>(Ln3/r/a/b;Ljava/util/List;Ln3/r/a/u0$d;)V

    .line 22
    iget-object v1, v1, Ln3/r/a/u0$d;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 23
    :cond_6
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 24
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v3, v1

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/r/a/b$d;

    .line 25
    invoke-virtual {v1}, Ln3/r/a/b$c;->b()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 p1, v0

    move-object/from16 v24, v13

    goto/16 :goto_7

    .line 26
    :cond_7
    iget-object v2, v1, Ln3/r/a/b$d;->c:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ln3/r/a/b$d;->c(Ljava/lang/Object;)Ln3/r/a/o0;

    move-result-object v2

    move-object/from16 p1, v0

    .line 27
    iget-object v0, v1, Ln3/r/a/b$d;->e:Ljava/lang/Object;

    .line 28
    invoke-virtual {v1, v0}, Ln3/r/a/b$d;->c(Ljava/lang/Object;)Ln3/r/a/o0;

    move-result-object v0

    move-object/from16 v24, v13

    const-string v13, " returned Transition "

    const-string v16, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    if-eqz v2, :cond_9

    if-eqz v0, :cond_9

    if-ne v2, v0, :cond_8

    goto :goto_5

    .line 29
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static/range {v16 .. v16}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 30
    iget-object v3, v1, Ln3/r/a/b$c;->a:Ln3/r/a/u0$d;

    .line 31
    iget-object v3, v3, Ln3/r/a/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Ln3/r/a/b$d;->c:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " which uses a different Transition  type than its shared element transition "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Ln3/r/a/b$d;->e:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_5
    if-eqz v2, :cond_a

    goto :goto_6

    :cond_a
    move-object v2, v0

    :goto_6
    if-nez v3, :cond_b

    move-object v3, v2

    goto :goto_7

    :cond_b
    if-eqz v2, :cond_d

    if-ne v3, v2, :cond_c

    goto :goto_7

    .line 33
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static/range {v16 .. v16}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 34
    iget-object v3, v1, Ln3/r/a/b$c;->a:Ln3/r/a/u0$d;

    .line 35
    iget-object v3, v3, Ln3/r/a/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v1, v1, Ln3/r/a/b$d;->c:Ljava/lang/Object;

    const-string v3, " which uses a different Transition  type than other Fragments."

    .line 38
    invoke-static {v2, v1, v3}, Le/d/c/a/a;->d(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_7
    move-object/from16 v0, p1

    move-object/from16 v13, v24

    goto/16 :goto_4

    :cond_e
    move-object/from16 v24, v13

    if-nez v3, :cond_10

    .line 39
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/r/a/b$d;

    .line 40
    iget-object v2, v1, Ln3/r/a/b$c;->a:Ln3/r/a/u0$d;

    .line 41
    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual {v1}, Ln3/r/a/b$c;->a()V

    goto :goto_8

    :cond_f
    move-object/from16 v30, v8

    move-object v8, v9

    move-object/from16 v29, v15

    move-object v9, v4

    goto/16 :goto_1a

    .line 43
    :cond_10
    new-instance v13, Landroid/view/View;

    .line 44
    iget-object v0, v7, Ln3/r/a/u0;->a:Landroid/view/ViewGroup;

    .line 45
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v13, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v25, v10

    .line 49
    new-instance v10, Ln3/g/a;

    invoke-direct {v10}, Ln3/g/a;-><init>()V

    .line 50
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 p1, v2

    move-object/from16 v2, v16

    move-object/from16 v27, v17

    move/from16 v28, v18

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object v4, v11

    move-object v5, v12

    :goto_9
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1c

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v29, v15

    move-object/from16 v15, v18

    check-cast v15, Ln3/r/a/b$d;

    .line 51
    iget-object v15, v15, Ln3/r/a/b$d;->e:Ljava/lang/Object;

    if-eqz v15, :cond_11

    const/16 v18, 0x1

    goto :goto_a

    :cond_11
    const/16 v18, 0x0

    :goto_a
    if-eqz v18, :cond_1b

    if-eqz v4, :cond_1b

    if-eqz v5, :cond_1b

    .line 52
    invoke-virtual {v3, v15}, Ln3/r/a/o0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 53
    invoke-virtual {v3, v2}, Ln3/r/a/o0;->y(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 54
    iget-object v2, v5, Ln3/r/a/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 55
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v18, v3

    .line 56
    iget-object v3, v4, Ln3/r/a/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 57
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v30, v8

    .line 58
    iget-object v8, v4, Ln3/r/a/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 59
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v8

    const/16 v19, 0x0

    move-object/from16 v32, v9

    move-object/from16 v31, v14

    move/from16 v14, v19

    .line 60
    :goto_b
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v14, v9, :cond_13

    .line 61
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    move-object/from16 v19, v8

    const/4 v8, -0x1

    if-eq v9, v8, :cond_12

    .line 62
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v9, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_12
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, v19

    goto :goto_b

    .line 63
    :cond_13
    iget-object v3, v5, Ln3/r/a/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 64
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v8

    if-nez v6, :cond_14

    .line 65
    iget-object v3, v4, Ln3/r/a/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 66
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Ln3/k/a/b0;

    move-result-object v3

    .line 67
    iget-object v9, v5, Ln3/r/a/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 68
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Ln3/k/a/b0;

    move-result-object v9

    goto :goto_c

    .line 69
    :cond_14
    iget-object v3, v4, Ln3/r/a/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 70
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Ln3/k/a/b0;

    move-result-object v3

    .line 71
    iget-object v9, v5, Ln3/r/a/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 72
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Ln3/k/a/b0;

    move-result-object v9

    .line 73
    :goto_c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/16 v19, 0x0

    move-object/from16 v33, v13

    move/from16 v13, v19

    :goto_d
    if-ge v13, v14, :cond_15

    .line 74
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move/from16 v20, v14

    move-object/from16 v14, v19

    check-cast v14, Ljava/lang/String;

    .line 75
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v34, v15

    move-object/from16 v15, v19

    check-cast v15, Ljava/lang/String;

    .line 76
    invoke-virtual {v10, v14, v15}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    move/from16 v14, v20

    move-object/from16 v15, v34

    goto :goto_d

    :cond_15
    move-object/from16 v34, v15

    .line 77
    new-instance v13, Ln3/g/a;

    invoke-direct {v13}, Ln3/g/a;-><init>()V

    .line 78
    iget-object v14, v4, Ln3/r/a/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 79
    iget-object v14, v14, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v13, v14}, Ln3/r/a/b;->k(Ljava/util/Map;Landroid/view/View;)V

    .line 80
    invoke-static {v13, v2}, Ln3/g/g;->k(Ljava/util/Map;Ljava/util/Collection;)Z

    if-nez v3, :cond_1a

    .line 81
    invoke-virtual {v13}, Ln3/g/a;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 82
    invoke-static {v10, v3}, Ln3/g/g;->k(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 83
    new-instance v14, Ln3/g/a;

    invoke-direct {v14}, Ln3/g/a;-><init>()V

    .line 84
    iget-object v3, v5, Ln3/r/a/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 85
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v14, v3}, Ln3/r/a/b;->k(Ljava/util/Map;Landroid/view/View;)V

    .line 86
    invoke-static {v14, v8}, Ln3/g/g;->k(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 87
    invoke-virtual {v10}, Ln3/g/a;->values()Ljava/util/Collection;

    move-result-object v3

    .line 88
    invoke-static {v14, v3}, Ln3/g/g;->k(Ljava/util/Map;Ljava/util/Collection;)Z

    if-nez v9, :cond_19

    .line 89
    invoke-static {v10, v14}, Ln3/r/a/m0;->n(Ln3/g/a;Ln3/g/a;)V

    .line 90
    invoke-virtual {v10}, Ln3/g/a;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v7, v13, v3}, Ln3/r/a/b;->l(Ln3/g/a;Ljava/util/Collection;)V

    .line 91
    invoke-virtual {v10}, Ln3/g/a;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v7, v14, v3}, Ln3/r/a/b;->l(Ln3/g/a;Ljava/util/Collection;)V

    .line 92
    invoke-virtual {v10}, Ln3/g/h;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 93
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 94
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    move-object/from16 v35, v10

    move-object v3, v12

    move-object/from16 v9, v16

    move-object/from16 v38, v17

    move-object/from16 v6, v18

    move-object/from16 v8, v32

    move-object/from16 v10, p1

    move-object v12, v0

    move-object/from16 v0, v33

    :goto_e
    move-object/from16 v40, v11

    move-object v11, v1

    move-object/from16 v1, v40

    goto/16 :goto_10

    .line 95
    :cond_16
    iget-object v3, v5, Ln3/r/a/u0$d;->c:Landroidx/fragment/app/Fragment;

    iget-object v4, v4, Ln3/r/a/u0$d;->c:Landroidx/fragment/app/Fragment;

    const/4 v5, 0x1

    .line 96
    invoke-static {v3, v4, v6, v13, v5}, Ln3/r/a/m0;->c(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLn3/g/a;Z)V

    .line 97
    iget-object v9, v7, Ln3/r/a/u0;->a:Landroid/view/ViewGroup;

    .line 98
    new-instance v15, Ln3/r/a/g;

    move-object v5, v0

    move-object v0, v15

    move-object v4, v1

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 p1, v2

    move-object v2, v12

    move-object/from16 v35, v10

    move-object/from16 v6, v18

    move-object v10, v3

    move-object v3, v11

    move-object/from16 v37, v11

    move-object/from16 v36, v12

    move-object/from16 v12, v16

    move-object v11, v4

    move/from16 v4, p2

    move-object/from16 v39, v12

    move-object/from16 v38, v17

    move-object v12, v5

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Ln3/r/a/g;-><init>(Ln3/r/a/b;Ln3/r/a/u0$d;Ln3/r/a/u0$d;ZLn3/g/a;)V

    invoke-static {v9, v15}, Ln3/k/i/q;->a(Landroid/view/View;Ljava/lang/Runnable;)Ln3/k/i/q;

    .line 99
    invoke-virtual {v13}, Ln3/g/a;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x0

    move-object/from16 v1, p1

    .line 101
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 102
    invoke-virtual {v13, v1}, Ln3/g/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object/from16 v2, v34

    .line 103
    invoke-virtual {v6, v2, v1}, Ln3/r/a/o0;->t(Ljava/lang/Object;Landroid/view/View;)V

    move-object/from16 v27, v1

    goto :goto_f

    :cond_17
    move-object/from16 v2, v34

    const/4 v0, 0x0

    .line 104
    :goto_f
    invoke-virtual {v14}, Ln3/g/a;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 105
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 106
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 107
    invoke-virtual {v14, v0}, Ln3/g/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_18

    .line 108
    iget-object v1, v7, Ln3/r/a/u0;->a:Landroid/view/ViewGroup;

    .line 109
    new-instance v3, Ln3/r/a/h;

    invoke-direct {v3, v7, v6, v0, v10}, Ln3/r/a/h;-><init>(Ln3/r/a/b;Ln3/r/a/o0;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {v1, v3}, Ln3/k/i/q;->a(Landroid/view/View;Ljava/lang/Runnable;)Ln3/k/i/q;

    const/16 v28, 0x1

    :cond_18
    move-object/from16 v0, v33

    .line 110
    invoke-virtual {v6, v2, v0, v11}, Ln3/r/a/o0;->w(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v6

    move-object/from16 v17, v2

    move-object/from16 v22, v2

    move-object/from16 v23, v12

    .line 111
    invoke-virtual/range {v16 .. v23}, Ln3/r/a/o0;->r(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v8, v32

    move-object/from16 v1, v37

    move-object/from16 v9, v39

    .line 112
    invoke-virtual {v9, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v36

    .line 113
    invoke-virtual {v9, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v1

    move-object v5, v3

    goto :goto_10

    :cond_19
    const/4 v0, 0x0

    .line 114
    throw v0

    :cond_1a
    const/4 v0, 0x0

    .line 115
    throw v0

    :cond_1b
    move-object v6, v3

    move-object/from16 v30, v8

    move-object v8, v9

    move-object/from16 v35, v10

    move-object v3, v12

    move-object/from16 v31, v14

    move-object/from16 v9, v16

    move-object/from16 v38, v17

    move-object/from16 v10, p1

    move-object v12, v0

    move-object v0, v13

    goto/16 :goto_e

    :goto_10
    move-object v13, v0

    move-object/from16 v16, v9

    move-object/from16 p1, v10

    move-object v0, v12

    move-object/from16 v15, v29

    move-object/from16 v14, v31

    move-object/from16 v10, v35

    move-object/from16 v17, v38

    move-object v12, v3

    move-object v3, v6

    move-object v9, v8

    move-object/from16 v8, v30

    move/from16 v6, p2

    move-object/from16 v40, v11

    move-object v11, v1

    move-object/from16 v1, v40

    goto/16 :goto_9

    :cond_1c
    move-object v12, v0

    move-object v11, v1

    move-object v6, v3

    move-object/from16 v30, v8

    move-object v8, v9

    move-object/from16 v35, v10

    move-object v0, v13

    move-object/from16 v31, v14

    move-object/from16 v29, v15

    move-object/from16 v9, v16

    move-object/from16 v38, v17

    move-object/from16 v10, p1

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ln3/r/a/b$d;

    .line 118
    invoke-virtual {v15}, Ln3/r/a/b$c;->b()Z

    move-result v16

    if-eqz v16, :cond_1d

    move-object/from16 p1, v3

    .line 119
    iget-object v3, v15, Ln3/r/a/b$c;->a:Ln3/r/a/u0$d;

    move-object/from16 v26, v13

    move-object/from16 v13, v38

    .line 120
    invoke-virtual {v9, v3, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-virtual {v15}, Ln3/r/a/b$c;->a()V

    move-object/from16 v3, p1

    move-object/from16 v13, v26

    goto :goto_11

    :cond_1d
    move-object/from16 p1, v3

    move-object/from16 v26, v13

    move-object/from16 v13, v38

    .line 122
    iget-object v3, v15, Ln3/r/a/b$d;->c:Ljava/lang/Object;

    .line 123
    invoke-virtual {v6, v3}, Ln3/r/a/o0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v32, v14

    .line 124
    iget-object v14, v15, Ln3/r/a/b$c;->a:Ln3/r/a/u0$d;

    if-eqz v2, :cond_1f

    if-eq v14, v4, :cond_1e

    if-ne v14, v5, :cond_1f

    :cond_1e
    const/16 v16, 0x1

    goto :goto_12

    :cond_1f
    const/16 v16, 0x0

    :goto_12
    if-nez v3, :cond_21

    if-nez v16, :cond_20

    .line 125
    invoke-virtual {v9, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-virtual {v15}, Ln3/r/a/b$c;->a()V

    :cond_20
    move-object/from16 v16, v0

    move-object/from16 v33, v5

    move-object/from16 v38, v13

    move-object/from16 v5, v25

    move-object/from16 v13, v26

    move-object/from16 v0, v27

    move-object/from16 v14, v32

    goto/16 :goto_16

    :cond_21
    move-object/from16 v38, v13

    .line 127
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v33, v5

    .line 128
    iget-object v5, v14, Ln3/r/a/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 129
    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 130
    invoke-virtual {v7, v13, v5}, Ln3/r/a/b;->j(Ljava/util/ArrayList;Landroid/view/View;)V

    if-eqz v16, :cond_23

    if-ne v14, v4, :cond_22

    .line 131
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_13

    .line 132
    :cond_22
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 133
    :cond_23
    :goto_13
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 134
    invoke-virtual {v6, v3, v0}, Ln3/r/a/o0;->a(Ljava/lang/Object;Landroid/view/View;)V

    move-object/from16 v16, v0

    goto :goto_14

    .line 135
    :cond_24
    invoke-virtual {v6, v3, v13}, Ln3/r/a/o0;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v6

    move-object/from16 v17, v3

    move-object/from16 v18, v3

    move-object/from16 v19, v13

    .line 136
    invoke-virtual/range {v16 .. v23}, Ln3/r/a/o0;->r(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 137
    iget-object v5, v14, Ln3/r/a/u0$d;->a:Ln3/r/a/u0$d$c;

    move-object/from16 v16, v0

    move-object/from16 v0, v30

    if-ne v5, v0, :cond_25

    move-object/from16 v5, v29

    .line 138
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 139
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v30, v0

    .line 140
    iget-object v0, v14, Ln3/r/a/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 141
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, v14, Ln3/r/a/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 143
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 144
    invoke-virtual {v6, v3, v0, v5}, Ln3/r/a/o0;->q(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 145
    iget-object v0, v7, Ln3/r/a/u0;->a:Landroid/view/ViewGroup;

    .line 146
    new-instance v5, Ln3/r/a/i;

    invoke-direct {v5, v7, v13}, Ln3/r/a/i;-><init>(Ln3/r/a/b;Ljava/util/ArrayList;)V

    invoke-static {v0, v5}, Ln3/k/i/q;->a(Landroid/view/View;Ljava/lang/Runnable;)Ln3/k/i/q;

    goto :goto_14

    :cond_25
    move-object/from16 v30, v0

    .line 147
    :goto_14
    iget-object v0, v14, Ln3/r/a/u0$d;->a:Ln3/r/a/u0$d$c;

    move-object/from16 v5, v25

    if-ne v0, v5, :cond_27

    .line 148
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v28, :cond_26

    .line 149
    invoke-virtual {v6, v3, v10}, Ln3/r/a/o0;->s(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_26
    move-object/from16 v0, v27

    goto :goto_15

    :cond_27
    move-object/from16 v0, v27

    .line 150
    invoke-virtual {v6, v3, v0}, Ln3/r/a/o0;->t(Ljava/lang/Object;Landroid/view/View;)V

    .line 151
    :goto_15
    invoke-virtual {v9, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-boolean v13, v15, Ln3/r/a/b$d;->d:Z

    if-eqz v13, :cond_28

    const/4 v13, 0x0

    move-object/from16 v14, v32

    .line 153
    invoke-virtual {v6, v14, v3, v13}, Ln3/r/a/o0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    move-object/from16 v13, v26

    goto :goto_16

    :cond_28
    move-object/from16 v14, v32

    const/4 v13, 0x0

    move-object/from16 v15, v26

    .line 154
    invoke-virtual {v6, v15, v3, v13}, Ln3/r/a/o0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    :goto_16
    move-object/from16 v3, p1

    move-object/from16 v27, v0

    move-object/from16 v25, v5

    move-object/from16 v0, v16

    move-object/from16 v5, v33

    goto/16 :goto_11

    :cond_29
    move-object/from16 v33, v5

    move-object v15, v13

    .line 155
    invoke-virtual {v6, v14, v15, v2}, Ln3/r/a/o0;->l(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 156
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/r/a/b$d;

    .line 157
    invoke-virtual {v5}, Ln3/r/a/b$c;->b()Z

    move-result v10

    if-eqz v10, :cond_2a

    goto :goto_17

    .line 158
    :cond_2a
    iget-object v10, v5, Ln3/r/a/b$d;->c:Ljava/lang/Object;

    .line 159
    iget-object v13, v5, Ln3/r/a/b$c;->a:Ln3/r/a/u0$d;

    move-object/from16 v14, v33

    if-eqz v2, :cond_2c

    if-eq v13, v4, :cond_2b

    if-ne v13, v14, :cond_2c

    :cond_2b
    const/4 v15, 0x1

    goto :goto_18

    :cond_2c
    const/4 v15, 0x0

    :goto_18
    if-nez v10, :cond_2d

    if-eqz v15, :cond_30

    .line 160
    :cond_2d
    iget-object v10, v7, Ln3/r/a/u0;->a:Landroid/view/ViewGroup;

    .line 161
    sget-object v15, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 162
    invoke-virtual {v10}, Landroid/view/View;->isLaidOut()Z

    move-result v10

    if-nez v10, :cond_2f

    const/4 v10, 0x2

    .line 163
    invoke-static {v10}, Landroidx/fragment/app/FragmentManager;->T(I)Z

    move-result v10

    if-eqz v10, :cond_2e

    const-string v10, "SpecialEffectsController: Container "

    .line 164
    invoke-static {v10}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 165
    iget-object v15, v7, Ln3/r/a/u0;->a:Landroid/view/ViewGroup;

    .line 166
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " has not been laid out. Completing operation "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    :cond_2e
    invoke-virtual {v5}, Ln3/r/a/b$c;->a()V

    goto :goto_19

    .line 168
    :cond_2f
    iget-object v10, v5, Ln3/r/a/b$c;->a:Ln3/r/a/u0$d;

    .line 169
    iget-object v10, v10, Ln3/r/a/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 170
    iget-object v13, v5, Ln3/r/a/b$c;->b:Ln3/k/e/a;

    .line 171
    new-instance v15, Ln3/r/a/j;

    invoke-direct {v15, v7, v5}, Ln3/r/a/j;-><init>(Ln3/r/a/b;Ln3/r/a/b$d;)V

    .line 172
    invoke-virtual {v6, v10, v0, v13, v15}, Ln3/r/a/o0;->u(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Ln3/k/e/a;Ljava/lang/Runnable;)V

    :cond_30
    :goto_19
    move-object/from16 v33, v14

    goto :goto_17

    .line 173
    :cond_31
    iget-object v3, v7, Ln3/r/a/u0;->a:Landroid/view/ViewGroup;

    .line 174
    sget-object v4, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 175
    invoke-virtual {v3}, Landroid/view/View;->isLaidOut()Z

    move-result v3

    if-nez v3, :cond_32

    :goto_1a
    const/4 v0, 0x0

    goto :goto_1b

    :cond_32
    const/4 v3, 0x4

    .line 176
    invoke-static {v1, v3}, Ln3/r/a/m0;->p(Ljava/util/ArrayList;I)V

    .line 177
    invoke-virtual {v6, v12}, Ln3/r/a/o0;->n(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v20

    .line 178
    iget-object v3, v7, Ln3/r/a/u0;->a:Landroid/view/ViewGroup;

    .line 179
    invoke-virtual {v6, v3, v0}, Ln3/r/a/o0;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 180
    iget-object v0, v7, Ln3/r/a/u0;->a:Landroid/view/ViewGroup;

    move-object/from16 v16, v6

    move-object/from16 v17, v0

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-object/from16 v21, v35

    .line 181
    invoke-virtual/range {v16 .. v21}, Ln3/r/a/o0;->v(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 v0, 0x0

    .line 182
    invoke-static {v1, v0}, Ln3/r/a/m0;->p(Ljava/util/ArrayList;I)V

    .line 183
    invoke-virtual {v6, v2, v11, v12}, Ln3/r/a/o0;->x(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 184
    :goto_1b
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v10

    .line 185
    iget-object v11, v7, Ln3/r/a/u0;->a:Landroid/view/ViewGroup;

    .line 186
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 187
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 188
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v1, v0

    :goto_1c
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ln3/r/a/b$b;

    .line 189
    invoke-virtual {v15}, Ln3/r/a/b$c;->b()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 190
    invoke-virtual {v15}, Ln3/r/a/b$c;->a()V

    goto :goto_1c

    .line 191
    :cond_33
    invoke-virtual {v15, v12}, Ln3/r/a/b$b;->c(Landroid/content/Context;)Ln3/r/a/p;

    move-result-object v2

    if-nez v2, :cond_34

    .line 192
    invoke-virtual {v15}, Ln3/r/a/b$c;->a()V

    goto :goto_1c

    .line 193
    :cond_34
    iget-object v6, v2, Ln3/r/a/p;->b:Landroid/animation/Animator;

    if-nez v6, :cond_35

    .line 194
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 195
    :cond_35
    iget-object v5, v15, Ln3/r/a/b$c;->a:Ln3/r/a/u0$d;

    .line 196
    iget-object v2, v5, Ln3/r/a/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 197
    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    const/4 v3, 0x2

    .line 198
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->T(I)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring Animator set on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " as this Fragment was involved in a Transition."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    :cond_36
    invoke-virtual {v15}, Ln3/r/a/b$c;->a()V

    goto :goto_1c

    .line 201
    :cond_37
    iget-object v1, v5, Ln3/r/a/u0$d;->a:Ln3/r/a/u0$d$c;

    move-object/from16 v3, v30

    if-ne v1, v3, :cond_38

    const/4 v0, 0x1

    :cond_38
    move v4, v0

    move-object/from16 v1, v29

    if-eqz v4, :cond_39

    .line 202
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 203
    :cond_39
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 204
    invoke-virtual {v11, v2}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 205
    new-instance v0, Ln3/r/a/c;

    move-object/from16 v16, v3

    move-object v3, v0

    move-object/from16 v17, v1

    move-object/from16 v1, p0

    move-object/from16 p1, v2

    move-object v2, v11

    move-object/from16 v32, v8

    move-object v8, v3

    move-object/from16 v3, p1

    move-object/from16 v39, v9

    move-object v9, v6

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Ln3/r/a/c;-><init>(Ln3/r/a/b;Landroid/view/ViewGroup;Landroid/view/View;ZLn3/r/a/u0$d;Ln3/r/a/b$b;)V

    invoke-virtual {v9, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p1

    .line 206
    invoke-virtual {v9, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 207
    invoke-virtual {v9}, Landroid/animation/Animator;->start()V

    .line 208
    iget-object v0, v15, Ln3/r/a/b$c;->b:Ln3/k/e/a;

    .line 209
    new-instance v1, Ln3/r/a/d;

    invoke-direct {v1, v7, v9}, Ln3/r/a/d;-><init>(Ln3/r/a/b;Landroid/animation/Animator;)V

    invoke-virtual {v0, v1}, Ln3/k/e/a;->b(Ln3/k/e/a$a;)V

    const/4 v1, 0x1

    const/4 v0, 0x0

    move-object/from16 v30, v16

    move-object/from16 v29, v17

    move-object/from16 v8, v32

    move-object/from16 v9, v39

    goto/16 :goto_1c

    :cond_3a
    move-object/from16 v17, v29

    .line 210
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/r/a/b$b;

    .line 211
    iget-object v3, v2, Ln3/r/a/b$c;->a:Ln3/r/a/u0$d;

    .line 212
    iget-object v4, v3, Ln3/r/a/u0$d;->c:Landroidx/fragment/app/Fragment;

    const-string v5, "Ignoring Animation set on "

    if-eqz v10, :cond_3c

    const/4 v3, 0x2

    .line 213
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->T(I)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " as Animations cannot run alongside Transitions."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    :cond_3b
    invoke-virtual {v2}, Ln3/r/a/b$c;->a()V

    goto :goto_1d

    :cond_3c
    if-eqz v1, :cond_3e

    const/4 v3, 0x2

    .line 216
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->T(I)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " as Animations cannot run alongside Animators."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    :cond_3d
    invoke-virtual {v2}, Ln3/r/a/b$c;->a()V

    goto :goto_1d

    .line 219
    :cond_3e
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 220
    invoke-virtual {v2, v12}, Ln3/r/a/b$b;->c(Landroid/content/Context;)Ln3/r/a/p;

    move-result-object v5

    .line 221
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v5, v5, Ln3/r/a/p;->a:Landroid/view/animation/Animation;

    .line 223
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v3, v3, Ln3/r/a/u0$d;->a:Ln3/r/a/u0$d$c;

    .line 225
    sget-object v6, Ln3/r/a/u0$d$c;->a:Ln3/r/a/u0$d$c;

    if-eq v3, v6, :cond_3f

    .line 226
    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 227
    invoke-virtual {v2}, Ln3/r/a/b$c;->a()V

    goto :goto_1e

    .line 228
    :cond_3f
    invoke-virtual {v11, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 229
    new-instance v3, Ln3/r/a/q;

    invoke-direct {v3, v5, v11, v4}, Ln3/r/a/q;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 230
    new-instance v5, Ln3/r/a/e;

    invoke-direct {v5, v7, v11, v4, v2}, Ln3/r/a/e;-><init>(Ln3/r/a/b;Landroid/view/ViewGroup;Landroid/view/View;Ln3/r/a/b$b;)V

    invoke-virtual {v3, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 231
    invoke-virtual {v4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 232
    :goto_1e
    iget-object v3, v2, Ln3/r/a/b$c;->b:Ln3/k/e/a;

    .line 233
    new-instance v5, Ln3/r/a/f;

    invoke-direct {v5, v7, v4, v11, v2}, Ln3/r/a/f;-><init>(Ln3/r/a/b;Landroid/view/View;Landroid/view/ViewGroup;Ln3/r/a/b$b;)V

    invoke-virtual {v3, v5}, Ln3/k/e/a;->b(Ln3/k/e/a$a;)V

    goto/16 :goto_1d

    .line 234
    :cond_40
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/r/a/u0$d;

    .line 235
    iget-object v2, v1, Ln3/r/a/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 236
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 237
    iget-object v1, v1, Ln3/r/a/u0$d;->a:Ln3/r/a/u0$d$c;

    .line 238
    invoke-virtual {v1, v2}, Ln3/r/a/u0$d$c;->a(Landroid/view/View;)V

    goto :goto_1f

    .line 239
    :cond_41
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public j(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 2
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_3

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 9
    invoke-virtual {p0, p1, v2}, Ln3/r/a/b;->j(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public k(Ljava/util/Map;Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 5
    check-cast p2, Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 7
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 9
    invoke-virtual {p0, p1, v2}, Ln3/r/a/b;->k(Ljava/util/Map;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public l(Ln3/g/a;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/g/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ln3/g/a;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ln3/g/g$b;

    invoke-virtual {p1}, Ln3/g/g$b;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 2
    :cond_0
    :goto_0
    move-object v0, p1

    check-cast v0, Ln3/g/g$d;

    invoke-virtual {v0}, Ln3/g/g$d;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Ln3/g/g$d;->next()Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 5
    sget-object v2, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-interface {p2, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    invoke-virtual {v0}, Ln3/g/g$d;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method
