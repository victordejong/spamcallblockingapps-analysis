.class public Ln3/g0/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/g0/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ln3/g0/m;

.field public b:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Ln3/g0/m;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/g0/q$a;->a:Ln3/g0/m;

    .line 3
    iput-object p2, p0, Ln3/g0/q$a;->b:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Ln3/g0/q$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2
    iget-object v1, v0, Ln3/g0/q$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 3
    sget-object v1, Ln3/g0/q;->c:Ljava/util/ArrayList;

    iget-object v2, v0, Ln3/g0/q$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 4
    :cond_0
    invoke-static {}, Ln3/g0/q;->b()Ln3/g/a;

    move-result-object v1

    .line 5
    iget-object v3, v0, Ln3/g0/q$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Ln3/g/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v5, v0, Ln3/g0/q$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5, v3}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 9
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_2
    :goto_0
    move-object v5, v4

    .line 10
    :goto_1
    iget-object v6, v0, Ln3/g0/q$a;->a:Ln3/g0/m;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v3, v0, Ln3/g0/q$a;->a:Ln3/g0/m;

    new-instance v6, Ln3/g0/q$a$a;

    invoke-direct {v6, v0, v1}, Ln3/g0/q$a$a;-><init>(Ln3/g0/q$a;Ln3/g/a;)V

    invoke-virtual {v3, v6}, Ln3/g0/m;->a(Ln3/g0/m$d;)Ln3/g0/m;

    .line 12
    iget-object v1, v0, Ln3/g0/q$a;->a:Ln3/g0/m;

    iget-object v3, v0, Ln3/g0/q$a;->b:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Ln3/g0/m;->j(Landroid/view/ViewGroup;Z)V

    if-eqz v5, :cond_3

    .line 13
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/g0/m;

    .line 14
    iget-object v5, v0, Ln3/g0/q$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Ln3/g0/m;->A(Landroid/view/View;)V

    goto :goto_2

    .line 15
    :cond_3
    iget-object v1, v0, Ln3/g0/q$a;->a:Ln3/g0/m;

    iget-object v8, v0, Ln3/g0/q$a;->b:Landroid/view/ViewGroup;

    .line 16
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Ln3/g0/m;->k:Ljava/util/ArrayList;

    .line 18
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Ln3/g0/m;->l:Ljava/util/ArrayList;

    .line 19
    iget-object v3, v1, Ln3/g0/m;->g:Ln3/g0/v;

    iget-object v5, v1, Ln3/g0/m;->h:Ln3/g0/v;

    .line 20
    new-instance v7, Ln3/g/a;

    iget-object v9, v3, Ln3/g0/v;->a:Ln3/g/a;

    invoke-direct {v7, v9}, Ln3/g/a;-><init>(Ln3/g/h;)V

    .line 21
    new-instance v9, Ln3/g/a;

    iget-object v10, v5, Ln3/g0/v;->a:Ln3/g/a;

    invoke-direct {v9, v10}, Ln3/g/a;-><init>(Ln3/g/h;)V

    move v10, v6

    .line 22
    :goto_3
    iget-object v11, v1, Ln3/g0/m;->j:[I

    array-length v12, v11

    if-ge v10, v12, :cond_f

    .line 23
    aget v11, v11, v10

    if-eq v11, v2, :cond_c

    const/4 v12, 0x2

    if-eq v11, v12, :cond_a

    const/4 v12, 0x3

    if-eq v11, v12, :cond_8

    const/4 v12, 0x4

    if-eq v11, v12, :cond_5

    :cond_4
    move-object/from16 v17, v3

    goto :goto_6

    .line 24
    :cond_5
    iget-object v11, v3, Ln3/g0/v;->c:Ln3/g/e;

    iget-object v12, v5, Ln3/g0/v;->c:Ln3/g/e;

    .line 25
    invoke-virtual {v11}, Ln3/g/e;->m()I

    move-result v13

    move v14, v6

    :goto_4
    if-ge v14, v13, :cond_4

    .line 26
    invoke-virtual {v11, v14}, Ln3/g/e;->n(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    if-eqz v15, :cond_6

    .line 27
    invoke-virtual {v1, v15}, Ln3/g0/m;->v(Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_6

    move-object/from16 v17, v3

    .line 28
    invoke-virtual {v11, v14}, Ln3/g/e;->j(I)J

    move-result-wide v2

    invoke-virtual {v12, v2, v3}, Ln3/g/e;->g(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_7

    .line 29
    invoke-virtual {v1, v2}, Ln3/g0/m;->v(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 30
    invoke-virtual {v7, v15, v4}, Ln3/g/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 31
    check-cast v3, Ln3/g0/u;

    .line 32
    invoke-virtual {v9, v2, v4}, Ln3/g/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 33
    move-object/from16 v6, v18

    check-cast v6, Ln3/g0/u;

    if-eqz v3, :cond_7

    if-eqz v6, :cond_7

    .line 34
    iget-object v4, v1, Ln3/g0/m;->k:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v3, v1, Ln3/g0/m;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-virtual {v7, v15}, Ln3/g/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {v9, v2}, Ln3/g/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_6
    move-object/from16 v17, v3

    :cond_7
    :goto_5
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v17

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto :goto_4

    :goto_6
    move-object/from16 v2, v17

    goto/16 :goto_a

    :cond_8
    move-object v2, v3

    .line 38
    iget-object v3, v2, Ln3/g0/v;->b:Landroid/util/SparseArray;

    iget-object v4, v5, Ln3/g0/v;->b:Landroid/util/SparseArray;

    .line 39
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v6, :cond_e

    .line 40
    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    if-eqz v12, :cond_9

    .line 41
    invoke-virtual {v1, v12}, Ln3/g0/m;->v(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 42
    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    if-eqz v13, :cond_9

    .line 43
    invoke-virtual {v1, v13}, Ln3/g0/m;->v(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_9

    const/4 v14, 0x0

    .line 44
    invoke-virtual {v7, v12, v14}, Ln3/g/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 45
    check-cast v15, Ln3/g0/u;

    .line 46
    invoke-virtual {v9, v13, v14}, Ln3/g/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 47
    move-object/from16 v14, v17

    check-cast v14, Ln3/g0/u;

    if-eqz v15, :cond_9

    if-eqz v14, :cond_9

    .line 48
    iget-object v0, v1, Ln3/g0/m;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, v1, Ln3/g0/m;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {v7, v12}, Ln3/g/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {v9, v13}, Ln3/g/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    goto :goto_7

    :cond_a
    move-object v2, v3

    .line 52
    iget-object v0, v2, Ln3/g0/v;->d:Ln3/g/a;

    iget-object v3, v5, Ln3/g0/v;->d:Ln3/g/a;

    .line 53
    iget v4, v0, Ln3/g/h;->c:I

    const/4 v6, 0x0

    :goto_8
    if-ge v6, v4, :cond_e

    .line 54
    invoke-virtual {v0, v6}, Ln3/g/h;->p(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    if-eqz v11, :cond_b

    .line 55
    invoke-virtual {v1, v11}, Ln3/g0/m;->v(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 56
    invoke-virtual {v0, v6}, Ln3/g/h;->l(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v3, v12}, Ln3/g/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    if-eqz v12, :cond_b

    .line 57
    invoke-virtual {v1, v12}, Ln3/g0/m;->v(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_b

    const/4 v13, 0x0

    .line 58
    invoke-virtual {v7, v11, v13}, Ln3/g/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 59
    check-cast v14, Ln3/g0/u;

    .line 60
    invoke-virtual {v9, v12, v13}, Ln3/g/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 61
    check-cast v15, Ln3/g0/u;

    if-eqz v14, :cond_b

    if-eqz v15, :cond_b

    .line 62
    iget-object v13, v1, Ln3/g0/m;->k:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v13, v1, Ln3/g0/m;->l:Ljava/util/ArrayList;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {v7, v11}, Ln3/g/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-virtual {v9, v12}, Ln3/g/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_c
    move-object v2, v3

    .line 66
    iget v0, v7, Ln3/g/h;->c:I

    :cond_d
    :goto_9
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_e

    .line 67
    invoke-virtual {v7, v0}, Ln3/g/h;->l(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_d

    .line 68
    invoke-virtual {v1, v3}, Ln3/g0/m;->v(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 69
    invoke-virtual {v9, v3}, Ln3/g/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/g0/u;

    if-eqz v3, :cond_d

    .line 70
    iget-object v4, v3, Ln3/g0/u;->b:Landroid/view/View;

    invoke-virtual {v1, v4}, Ln3/g0/m;->v(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 71
    invoke-virtual {v7, v0}, Ln3/g/h;->n(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/g0/u;

    .line 72
    iget-object v6, v1, Ln3/g0/m;->k:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v4, v1, Ln3/g0/m;->l:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_e
    :goto_a
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object v3, v2

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_f
    const/4 v0, 0x0

    .line 74
    :goto_b
    iget v2, v7, Ln3/g/h;->c:I

    if-ge v0, v2, :cond_11

    .line 75
    invoke-virtual {v7, v0}, Ln3/g/h;->p(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/g0/u;

    .line 76
    iget-object v3, v2, Ln3/g0/u;->b:Landroid/view/View;

    invoke-virtual {v1, v3}, Ln3/g0/m;->v(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 77
    iget-object v3, v1, Ln3/g0/m;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v2, v1, Ln3/g0/m;->l:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_11
    const/4 v0, 0x0

    .line 79
    :goto_c
    iget v2, v9, Ln3/g/h;->c:I

    if-ge v0, v2, :cond_13

    .line 80
    invoke-virtual {v9, v0}, Ln3/g/h;->p(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/g0/u;

    .line 81
    iget-object v3, v2, Ln3/g0/u;->b:Landroid/view/View;

    invoke-virtual {v1, v3}, Ln3/g0/m;->v(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 82
    iget-object v3, v1, Ln3/g0/m;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v2, v1, Ln3/g0/m;->k:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 84
    :cond_13
    invoke-static {}, Ln3/g0/m;->r()Ln3/g/a;

    move-result-object v0

    .line 85
    iget v2, v0, Ln3/g/h;->c:I

    .line 86
    sget-object v3, Ln3/g0/z;->a:Ln3/g0/f0;

    .line 87
    new-instance v3, Ln3/g0/j0;

    invoke-direct {v3, v8}, Ln3/g0/j0;-><init>(Landroid/view/View;)V

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    :goto_d
    if-ltz v2, :cond_1a

    .line 88
    invoke-virtual {v0, v2}, Ln3/g/h;->l(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    const/4 v5, 0x0

    if-eqz v4, :cond_19

    .line 89
    invoke-virtual {v0, v4, v5}, Ln3/g/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 90
    check-cast v6, Ln3/g0/m$b;

    if-eqz v6, :cond_19

    .line 91
    iget-object v7, v6, Ln3/g0/m$b;->a:Landroid/view/View;

    if-eqz v7, :cond_19

    iget-object v7, v6, Ln3/g0/m$b;->d:Ln3/g0/k0;

    .line 92
    invoke-virtual {v3, v7}, Ln3/g0/j0;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 93
    iget-object v7, v6, Ln3/g0/m$b;->c:Ln3/g0/u;

    .line 94
    iget-object v9, v6, Ln3/g0/m$b;->a:Landroid/view/View;

    const/4 v10, 0x1

    .line 95
    invoke-virtual {v1, v9, v10}, Ln3/g0/m;->t(Landroid/view/View;Z)Ln3/g0/u;

    move-result-object v11

    .line 96
    invoke-virtual {v1, v9, v10}, Ln3/g0/m;->q(Landroid/view/View;Z)Ln3/g0/u;

    move-result-object v12

    if-nez v11, :cond_14

    if-nez v12, :cond_14

    .line 97
    iget-object v10, v1, Ln3/g0/m;->h:Ln3/g0/v;

    iget-object v10, v10, Ln3/g0/v;->a:Ln3/g/a;

    invoke-virtual {v10, v9}, Ln3/g/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Ln3/g0/u;

    :cond_14
    if-nez v11, :cond_15

    if-eqz v12, :cond_16

    .line 98
    :cond_15
    iget-object v6, v6, Ln3/g0/m$b;->e:Ln3/g0/m;

    .line 99
    invoke-virtual {v6, v7, v12}, Ln3/g0/m;->u(Ln3/g0/u;Ln3/g0/u;)Z

    move-result v6

    if-eqz v6, :cond_16

    const/4 v6, 0x1

    goto :goto_e

    :cond_16
    const/4 v6, 0x0

    :goto_e
    if-eqz v6, :cond_19

    .line 100
    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v6

    if-nez v6, :cond_18

    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v6

    if-eqz v6, :cond_17

    goto :goto_f

    .line 101
    :cond_17
    invoke-virtual {v0, v4}, Ln3/g/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 102
    :cond_18
    :goto_f
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    :cond_19
    :goto_10
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 103
    :cond_1a
    iget-object v9, v1, Ln3/g0/m;->g:Ln3/g0/v;

    iget-object v10, v1, Ln3/g0/m;->h:Ln3/g0/v;

    iget-object v11, v1, Ln3/g0/m;->k:Ljava/util/ArrayList;

    iget-object v12, v1, Ln3/g0/m;->l:Ljava/util/ArrayList;

    move-object v7, v1

    invoke-virtual/range {v7 .. v12}, Ln3/g0/m;->n(Landroid/view/ViewGroup;Ln3/g0/v;Ln3/g0/v;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 104
    invoke-virtual {v1}, Ln3/g0/m;->B()V

    const/4 v0, 0x1

    return v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ln3/g0/q$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2
    iget-object p1, p0, Ln3/g0/q$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 3
    sget-object p1, Ln3/g0/q;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Ln3/g0/q$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    invoke-static {}, Ln3/g0/q;->b()Ln3/g/a;

    move-result-object p1

    iget-object v0, p0, Ln3/g0/q$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Ln3/g/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/g0/m;

    .line 7
    iget-object v1, p0, Ln3/g0/q$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ln3/g0/m;->A(Landroid/view/View;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Ln3/g0/q$a;->a:Ln3/g0/m;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ln3/g0/m;->k(Z)V

    return-void
.end method
