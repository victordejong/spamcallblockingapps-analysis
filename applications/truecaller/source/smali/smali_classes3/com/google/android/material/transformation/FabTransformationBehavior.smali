.class public abstract Lcom/google/android/material/transformation/FabTransformationBehavior;
.super Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transformation/FabTransformationBehavior$b;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final c:Landroid/graphics/Rect;

.field public final d:Landroid/graphics/RectF;

.field public final e:Landroid/graphics/RectF;

.field public final f:[I

.field public g:F

.field public h:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 5
    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->f:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/Rect;

    .line 8
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    .line 9
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 10
    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->f:[I

    return-void
.end method


# virtual methods
.method public D(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .locals 25

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v8, v0, v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->N(Landroid/content/Context;Z)Lcom/google/android/material/transformation/FabTransformationBehavior$b;

    move-result-object v12

    if-eqz v11, :cond_0

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->g:F

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->h:F

    .line 4
    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v12

    move-object v6, v13

    .line 6
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/material/transformation/FabTransformationBehavior;->L(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$b;Ljava/util/List;)V

    .line 7
    iget-object v15, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v12

    move-object v6, v13

    move-object v7, v15

    .line 8
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->M(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$b;Ljava/util/List;Landroid/graphics/RectF;)V

    .line 9
    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v4

    .line 10
    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v5

    .line 11
    iget-object v0, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->b:Le/m/a/g/a/i;

    invoke-virtual {v8, v9, v10, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->F(Landroid/view/View;Landroid/view/View;Le/m/a/g/a/i;)F

    move-result v0

    .line 12
    iget-object v1, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->b:Le/m/a/g/a/i;

    invoke-virtual {v8, v9, v10, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->G(Landroid/view/View;Landroid/view/View;Le/m/a/g/a/i;)F

    move-result v1

    .line 13
    invoke-virtual {v8, v0, v1, v11, v12}, Lcom/google/android/material/transformation/FabTransformationBehavior;->E(FFZLcom/google/android/material/transformation/FabTransformationBehavior$b;)Landroid/util/Pair;

    move-result-object v2

    .line 14
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Le/m/a/g/a/h;

    .line 15
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Le/m/a/g/a/h;

    .line 16
    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v7, 0x1

    new-array v15, v7, [F

    if-eqz v11, :cond_1

    goto :goto_0

    :cond_1
    iget v0, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->g:F

    :goto_0
    const/16 v16, 0x0

    aput v0, v15, v16

    .line 17
    invoke-static {v9, v6, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 18
    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v15, v7, [F

    if-eqz v11, :cond_2

    goto :goto_1

    :cond_2
    iget v1, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->h:F

    :goto_1
    aput v1, v15, v16

    .line 19
    invoke-static {v9, v6, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 20
    invoke-virtual {v3, v0}, Le/m/a/g/a/h;->a(Landroid/animation/Animator;)V

    .line 21
    invoke-virtual {v2, v1}, Le/m/a/g/a/h;->a(Landroid/animation/Animator;)V

    .line 22
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    instance-of v0, v10, Le/m/a/g/i/d;

    if-eqz v0, :cond_7

    instance-of v1, v9, Landroid/widget/ImageView;

    if-nez v1, :cond_3

    goto :goto_3

    .line 25
    :cond_3
    move-object v1, v10

    check-cast v1, Le/m/a/g/i/d;

    .line 26
    move-object v2, v9

    check-cast v2, Landroid/widget/ImageView;

    .line 27
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_3

    .line 28
    :cond_4
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/16 v3, 0xff

    if-eqz v11, :cond_6

    if-nez p4, :cond_5

    .line 29
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 30
    :cond_5
    sget-object v3, Le/m/a/g/a/d;->b:Landroid/util/Property;

    new-array v6, v7, [I

    aput v16, v6, v16

    invoke-static {v2, v3, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    goto :goto_2

    .line 31
    :cond_6
    sget-object v6, Le/m/a/g/a/d;->b:Landroid/util/Property;

    new-array v7, v7, [I

    aput v3, v7, v16

    invoke-static {v2, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 32
    :goto_2
    new-instance v6, Le/m/a/g/c0/a;

    invoke-direct {v6, v8, v10}, Le/m/a/g/c0/a;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Landroid/view/View;)V

    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 33
    iget-object v6, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Le/m/a/g/a/g;

    const-string v7, "iconFade"

    invoke-virtual {v6, v7}, Le/m/a/g/a/g;->f(Ljava/lang/String;)Le/m/a/g/a/h;

    move-result-object v6

    .line 34
    invoke-virtual {v6, v3}, Le/m/a/g/a/h;->a(Landroid/animation/Animator;)V

    .line 35
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v3, Le/m/a/g/c0/b;

    invoke-direct {v3, v8, v1, v2}, Le/m/a/g/c0/b;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Le/m/a/g/i/d;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_3
    if-nez v0, :cond_8

    move-object/from16 v19, v12

    move-object v7, v14

    goto/16 :goto_6

    .line 37
    :cond_8
    move-object v6, v10

    check-cast v6, Le/m/a/g/i/d;

    .line 38
    iget-object v0, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->b:Le/m/a/g/a/i;

    .line 39
    iget-object v1, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    .line 40
    iget-object v2, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    .line 41
    invoke-virtual {v8, v9, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->I(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 42
    iget v3, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->g:F

    iget v7, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->h:F

    invoke-virtual {v1, v3, v7}, Landroid/graphics/RectF;->offset(FF)V

    .line 43
    invoke-virtual {v8, v10, v2}, Lcom/google/android/material/transformation/FabTransformationBehavior;->I(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 44
    invoke-virtual {v8, v9, v10, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->F(Landroid/view/View;Landroid/view/View;Le/m/a/g/a/i;)F

    move-result v0

    neg-float v0, v0

    const/4 v3, 0x0

    .line 45
    invoke-virtual {v2, v0, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 46
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, v2, Landroid/graphics/RectF;->left:F

    sub-float v7, v0, v1

    .line 47
    iget-object v0, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->b:Le/m/a/g/a/i;

    .line 48
    iget-object v1, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    .line 49
    iget-object v2, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    .line 50
    invoke-virtual {v8, v9, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->I(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 51
    iget v15, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->g:F

    iget v3, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->h:F

    invoke-virtual {v1, v15, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 52
    invoke-virtual {v8, v10, v2}, Lcom/google/android/material/transformation/FabTransformationBehavior;->I(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 53
    invoke-virtual {v8, v9, v10, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->G(Landroid/view/View;Landroid/view/View;Le/m/a/g/a/i;)F

    move-result v0

    neg-float v0, v0

    const/4 v3, 0x0

    .line 54
    invoke-virtual {v2, v3, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 55
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget v1, v2, Landroid/graphics/RectF;->top:F

    sub-float v15, v0, v1

    .line 56
    move-object v0, v9

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v1, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g(Landroid/graphics/Rect;)Z

    .line 57
    iget-object v0, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 58
    iget-object v1, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Le/m/a/g/a/g;

    const-string v2, "expansion"

    invoke-virtual {v1, v2}, Le/m/a/g/a/g;->f(Ljava/lang/String;)Le/m/a/g/a/h;

    move-result-object v3

    if-eqz v11, :cond_c

    if-nez p4, :cond_9

    .line 59
    new-instance v1, Le/m/a/g/i/d$e;

    invoke-direct {v1, v7, v15, v0}, Le/m/a/g/i/d$e;-><init>(FFF)V

    invoke-interface {v6, v1}, Le/m/a/g/i/d;->setRevealInfo(Le/m/a/g/i/d$e;)V

    :cond_9
    if-eqz p4, :cond_a

    .line 60
    invoke-interface {v6}, Le/m/a/g/i/d;->getRevealInfo()Le/m/a/g/i/d$e;

    move-result-object v0

    iget v0, v0, Le/m/a/g/i/d$e;->c:F

    :cond_a
    move v2, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move v0, v7

    move v1, v15

    move v9, v2

    move/from16 v2, v19

    move-object/from16 v23, v3

    move/from16 v3, v20

    .line 61
    invoke-static/range {v0 .. v5}, Ln3/g0/y;->N(FFFFFF)F

    move-result v0

    .line 62
    invoke-static {v6, v7, v15, v0}, Ln3/g0/y;->I(Le/m/a/g/i/d;FFF)Landroid/animation/Animator;

    move-result-object v0

    .line 63
    new-instance v1, Le/m/a/g/c0/c;

    invoke-direct {v1, v8, v6}, Le/m/a/g/c0/c;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Le/m/a/g/i/d;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v1, v23

    .line 64
    iget-wide v2, v1, Le/m/a/g/a/h;->a:J

    float-to-int v4, v7

    float-to-int v5, v15

    move-object/from16 v17, v12

    const-wide/16 v11, 0x0

    cmp-long v7, v2, v11

    if-lez v7, :cond_b

    .line 65
    invoke-static {v10, v4, v5, v9, v9}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v4

    .line 66
    invoke-virtual {v4, v11, v12}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 67
    invoke-virtual {v4, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 68
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    move-object/from16 v22, v6

    move-object/from16 v18, v14

    move-object/from16 v19, v17

    goto/16 :goto_5

    :cond_c
    move-object v1, v3

    move-object/from16 v17, v12

    const-wide/16 v11, 0x0

    .line 69
    invoke-interface {v6}, Le/m/a/g/i/d;->getRevealInfo()Le/m/a/g/i/d$e;

    move-result-object v2

    iget v2, v2, Le/m/a/g/i/d$e;->c:F

    .line 70
    invoke-static {v6, v7, v15, v0}, Ln3/g0/y;->I(Le/m/a/g/i/d;FFF)Landroid/animation/Animator;

    move-result-object v3

    .line 71
    iget-wide v4, v1, Le/m/a/g/a/h;->a:J

    float-to-int v7, v7

    float-to-int v9, v15

    cmp-long v15, v4, v11

    if-lez v15, :cond_d

    .line 72
    invoke-static {v10, v7, v9, v2, v2}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v2

    .line 73
    invoke-virtual {v2, v11, v12}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 74
    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 75
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_d
    iget-wide v4, v1, Le/m/a/g/a/h;->a:J

    .line 77
    iget-wide v11, v1, Le/m/a/g/a/h;->b:J

    move-object/from16 v15, v17

    .line 78
    iget-object v2, v15, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Le/m/a/g/a/g;

    move-object/from16 v17, v3

    .line 79
    iget-object v3, v2, Le/m/a/g/a/g;->a:Ln3/g/h;

    .line 80
    iget v3, v3, Ln3/g/h;->c:I

    move-object/from16 v18, v14

    move-object/from16 v19, v15

    move/from16 v8, v16

    const-wide/16 v14, 0x0

    :goto_4
    if-ge v8, v3, :cond_e

    move/from16 v20, v3

    .line 81
    iget-object v3, v2, Le/m/a/g/a/g;->a:Ln3/g/h;

    invoke-virtual {v3, v8}, Ln3/g/h;->p(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/a/g/a/h;

    move-object/from16 v23, v1

    move-object/from16 v21, v2

    .line 82
    iget-wide v1, v3, Le/m/a/g/a/h;->a:J

    move-object/from16 v22, v6

    move/from16 v24, v7

    .line 83
    iget-wide v6, v3, Le/m/a/g/a/h;->b:J

    add-long/2addr v1, v6

    .line 84
    invoke-static {v14, v15, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    add-int/lit8 v8, v8, 0x1

    move/from16 v3, v20

    move-object/from16 v2, v21

    move-object/from16 v6, v22

    move-object/from16 v1, v23

    move/from16 v7, v24

    goto :goto_4

    :cond_e
    move-object/from16 v23, v1

    move-object/from16 v22, v6

    move/from16 v24, v7

    add-long/2addr v4, v11

    cmp-long v1, v4, v14

    if-gez v1, :cond_f

    move/from16 v1, v24

    .line 85
    invoke-static {v10, v1, v9, v0, v0}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 86
    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    sub-long/2addr v14, v4

    .line 87
    invoke-virtual {v0, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 88
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    .line 89
    :goto_5
    invoke-virtual {v1, v0}, Le/m/a/g/a/h;->a(Landroid/animation/Animator;)V

    .line 90
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v0, Le/m/a/g/i/a;

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Le/m/a/g/i/a;-><init>(Le/m/a/g/i/d;)V

    move-object/from16 v7, v18

    .line 92
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, v19

    move-object v6, v13

    .line 93
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/material/transformation/FabTransformationBehavior;->K(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$b;Ljava/util/List;)V

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, v19

    move-object v5, v13

    .line 94
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/transformation/FabTransformationBehavior;->J(Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$b;Ljava/util/List;)V

    .line 95
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 96
    invoke-static {v0, v13}, Ln3/g0/y;->D1(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 97
    new-instance v1, Lcom/google/android/material/transformation/FabTransformationBehavior$a;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p3

    invoke-direct {v1, v2, v4, v10, v3}, Lcom/google/android/material/transformation/FabTransformationBehavior$a;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;ZLandroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 98
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v3, v16

    :goto_7
    if-ge v3, v1, :cond_10

    .line 99
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_10
    return-object v0
.end method

.method public final E(FFZLcom/google/android/material/transformation/FabTransformationBehavior$b;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$b;",
            ")",
            "Landroid/util/Pair<",
            "Le/m/a/g/a/h;",
            "Le/m/a/g/a/h;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_4

    cmpl-float p1, p2, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    cmpg-float p2, p2, v0

    if-ltz p2, :cond_2

    :cond_1
    if-nez p3, :cond_3

    if-lez p1, :cond_3

    .line 1
    :cond_2
    iget-object p1, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Le/m/a/g/a/g;

    const-string p2, "translationXCurveUpwards"

    invoke-virtual {p1, p2}, Le/m/a/g/a/g;->f(Ljava/lang/String;)Le/m/a/g/a/h;

    move-result-object p1

    .line 2
    iget-object p2, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Le/m/a/g/a/g;

    const-string p3, "translationYCurveUpwards"

    invoke-virtual {p2, p3}, Le/m/a/g/a/g;->f(Ljava/lang/String;)Le/m/a/g/a/h;

    move-result-object p2

    goto :goto_1

    .line 3
    :cond_3
    iget-object p1, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Le/m/a/g/a/g;

    const-string p2, "translationXCurveDownwards"

    invoke-virtual {p1, p2}, Le/m/a/g/a/g;->f(Ljava/lang/String;)Le/m/a/g/a/h;

    move-result-object p1

    .line 4
    iget-object p2, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Le/m/a/g/a/g;

    const-string p3, "translationYCurveDownwards"

    invoke-virtual {p2, p3}, Le/m/a/g/a/g;->f(Ljava/lang/String;)Le/m/a/g/a/h;

    move-result-object p2

    goto :goto_1

    .line 5
    :cond_4
    :goto_0
    iget-object p1, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Le/m/a/g/a/g;

    const-string p2, "translationXLinear"

    invoke-virtual {p1, p2}, Le/m/a/g/a/g;->f(Ljava/lang/String;)Le/m/a/g/a/h;

    move-result-object p1

    .line 6
    iget-object p2, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Le/m/a/g/a/g;

    const-string p3, "translationYLinear"

    invoke-virtual {p2, p3}, Le/m/a/g/a/g;->f(Ljava/lang/String;)Le/m/a/g/a/h;

    move-result-object p2

    .line 7
    :goto_1
    new-instance p3, Landroid/util/Pair;

    invoke-direct {p3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3
.end method

.method public final F(Landroid/view/View;Landroid/view/View;Le/m/a/g/a/i;)F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    .line 2
    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->I(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 4
    iget p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->g:F

    iget v2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->h:F

    invoke-virtual {v0, p1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 5
    invoke-virtual {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->I(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 6
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    add-float/2addr p1, p2

    return p1
.end method

.method public final G(Landroid/view/View;Landroid/view/View;Le/m/a/g/a/i;)F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    .line 2
    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->I(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 4
    iget p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->g:F

    iget v2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->h:F

    invoke-virtual {v0, p1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 5
    invoke-virtual {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->I(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 6
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    add-float/2addr p1, p2

    return p1
.end method

.method public final H(Lcom/google/android/material/transformation/FabTransformationBehavior$b;Le/m/a/g/a/h;FF)F
    .locals 8

    .line 1
    iget-wide v0, p2, Le/m/a/g/a/h;->a:J

    .line 2
    iget-wide v2, p2, Le/m/a/g/a/h;->b:J

    .line 3
    iget-object p1, p1, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Le/m/a/g/a/g;

    const-string v4, "expansion"

    invoke-virtual {p1, v4}, Le/m/a/g/a/g;->f(Ljava/lang/String;)Le/m/a/g/a/h;

    move-result-object p1

    .line 4
    iget-wide v4, p1, Le/m/a/g/a/h;->a:J

    .line 5
    iget-wide v6, p1, Le/m/a/g/a/h;->b:J

    add-long/2addr v4, v6

    const-wide/16 v6, 0x11

    add-long/2addr v4, v6

    sub-long/2addr v4, v0

    long-to-float p1, v4

    long-to-float v0, v2

    div-float/2addr p1, v0

    .line 6
    invoke-virtual {p2}, Le/m/a/g/a/h;->b()Landroid/animation/TimeInterpolator;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 7
    invoke-static {p3, p4, p1}, Le/m/a/g/a/a;->a(FFF)F

    move-result p1

    return p1
.end method

.method public final I(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->f:[I

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    .line 4
    aget v1, v0, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    neg-float v0, v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    neg-float p1, p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method public final J(Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$b;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$b;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v0, p1, Le/m/a/g/i/d;

    .line 3
    sget v0, Lcom/google/android/material/R$id;->mtrl_child_content_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->O(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p1

    goto :goto_1

    .line 5
    :cond_1
    instance-of v0, p1, Le/m/a/g/c0/e;

    if-nez v0, :cond_3

    instance-of v0, p1, Le/m/a/g/c0/d;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->O(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p1

    goto :goto_1

    .line 7
    :cond_3
    :goto_0
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->O(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_6

    if-nez p3, :cond_5

    .line 9
    sget-object p2, Le/m/a/g/a/c;->a:Landroid/util/Property;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    :cond_5
    sget-object p2, Le/m/a/g/a/c;->a:Landroid/util/Property;

    new-array p3, v2, [F

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, p3, v1

    .line 11
    invoke-static {p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_2

    .line 12
    :cond_6
    sget-object p2, Le/m/a/g/a/c;->a:Landroid/util/Property;

    new-array p3, v2, [F

    aput v0, p3, v1

    .line 13
    invoke-static {p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 14
    :goto_2
    iget-object p2, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Le/m/a/g/a/g;

    const-string p3, "contentFade"

    invoke-virtual {p2, p3}, Le/m/a/g/a/g;->f(Ljava/lang/String;)Le/m/a/g/a/h;

    move-result-object p2

    .line 15
    invoke-virtual {p2, p1}, Le/m/a/g/a/h;->a(Landroid/animation/Animator;)V

    .line 16
    invoke-interface {p5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final K(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$b;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$b;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Le/m/a/g/i/d;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast p2, Le/m/a/g/i/d;

    .line 3
    sget-object v0, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object p1

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    const v0, 0xffffff

    and-int/2addr v0, p1

    const/4 v2, 0x1

    if-eqz p3, :cond_3

    if-nez p4, :cond_2

    .line 6
    invoke-interface {p2, p1}, Le/m/a/g/i/d;->setCircularRevealScrimColor(I)V

    .line 7
    :cond_2
    sget-object p1, Le/m/a/g/i/d$d;->a:Landroid/util/Property;

    new-array p3, v2, [I

    aput v0, p3, v1

    .line 8
    invoke-static {p2, p1, p3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_1

    .line 9
    :cond_3
    sget-object p3, Le/m/a/g/i/d$d;->a:Landroid/util/Property;

    new-array p4, v2, [I

    aput p1, p4, v1

    .line 10
    invoke-static {p2, p3, p4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 11
    :goto_1
    sget-object p2, Le/m/a/g/a/b;->a:Le/m/a/g/a/b;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 12
    iget-object p2, p5, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Le/m/a/g/a/g;

    const-string p3, "color"

    invoke-virtual {p2, p3}, Le/m/a/g/a/g;->f(Ljava/lang/String;)Le/m/a/g/a/h;

    move-result-object p2

    .line 13
    invoke-virtual {p2, p1}, Le/m/a/g/a/h;->a(Landroid/animation/Animator;)V

    .line 14
    invoke-interface {p6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final L(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$b;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$b;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getElevation()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result p1

    sub-float/2addr v0, p1

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    neg-float p3, v0

    .line 3
    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationZ(F)V

    .line 4
    :cond_0
    sget-object p3, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array p4, v1, [F

    const/4 v0, 0x0

    aput v0, p4, p1

    invoke-static {p2, p3, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_1
    sget-object p3, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array p4, v1, [F

    neg-float v0, v0

    aput v0, p4, p1

    invoke-static {p2, p3, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 6
    :goto_0
    iget-object p2, p5, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Le/m/a/g/a/g;

    const-string p3, "elevation"

    invoke-virtual {p2, p3}, Le/m/a/g/a/g;->f(Ljava/lang/String;)Le/m/a/g/a/h;

    move-result-object p2

    .line 7
    invoke-virtual {p2, p1}, Le/m/a/g/a/h;->a(Landroid/animation/Animator;)V

    .line 8
    invoke-interface {p6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final M(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$b;Ljava/util/List;Landroid/graphics/RectF;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$b;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;",
            "Landroid/graphics/RectF;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p5, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->b:Le/m/a/g/a/i;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->F(Landroid/view/View;Landroid/view/View;Le/m/a/g/a/i;)F

    move-result v0

    .line 2
    iget-object v1, p5, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->b:Le/m/a/g/a/i;

    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->G(Landroid/view/View;Landroid/view/View;Le/m/a/g/a/i;)F

    move-result p1

    .line 3
    invoke-virtual {p0, v0, p1, p3, p5}, Lcom/google/android/material/transformation/FabTransformationBehavior;->E(FFZLcom/google/android/material/transformation/FabTransformationBehavior$b;)Landroid/util/Pair;

    move-result-object v1

    .line 4
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Le/m/a/g/a/h;

    .line 5
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Le/m/a/g/a/h;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    neg-float p3, v0

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationX(F)V

    neg-float p3, p1

    .line 7
    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 8
    :cond_0
    sget-object p3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array p4, v4, [F

    const/4 v5, 0x0

    aput v5, p4, v3

    invoke-static {p2, p3, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 9
    sget-object p4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v4, [F

    aput v5, v4, v3

    invoke-static {p2, p4, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    neg-float v0, v0

    neg-float p1, p1

    .line 10
    invoke-virtual {p0, p5, v2, v0, v5}, Lcom/google/android/material/transformation/FabTransformationBehavior;->H(Lcom/google/android/material/transformation/FabTransformationBehavior$b;Le/m/a/g/a/h;FF)F

    move-result v0

    .line 11
    invoke-virtual {p0, p5, v1, p1, v5}, Lcom/google/android/material/transformation/FabTransformationBehavior;->H(Lcom/google/android/material/transformation/FabTransformationBehavior$b;Le/m/a/g/a/h;FF)F

    move-result p1

    .line 12
    iget-object p5, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/Rect;

    .line 13
    invoke-virtual {p2, p5}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 14
    iget-object v3, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    .line 15
    invoke-virtual {v3, p5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 16
    iget-object p5, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    .line 17
    invoke-virtual {p0, p2, p5}, Lcom/google/android/material/transformation/FabTransformationBehavior;->I(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 18
    invoke-virtual {p5, v0, p1}, Landroid/graphics/RectF;->offset(FF)V

    .line 19
    invoke-virtual {p5, v3}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 20
    invoke-virtual {p7, p5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 21
    :cond_1
    sget-object p3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array p4, v4, [F

    neg-float p5, v0

    aput p5, p4, v3

    invoke-static {p2, p3, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 22
    sget-object p4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array p5, v4, [F

    neg-float p1, p1

    aput p1, p5, v3

    invoke-static {p2, p4, p5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    .line 23
    :goto_0
    invoke-virtual {v2, p3}, Le/m/a/g/a/h;->a(Landroid/animation/Animator;)V

    .line 24
    invoke-virtual {v1, p4}, Le/m/a/g/a/h;->a(Landroid/animation/Animator;)V

    .line 25
    invoke-interface {p6, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-interface {p6, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract N(Landroid/content/Context;Z)Lcom/google/android/material/transformation/FabTransformationBehavior$b;
.end method

.method public final O(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    .line 2
    instance-of p1, p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    check-cast p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 4
    invoke-virtual {p3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getExpandedComponentIdHint()I

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    if-ne p1, p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;)V
    .locals 1

    .line 1
    iget v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->h:I

    if-nez v0, :cond_0

    const/16 v0, 0x50

    .line 2
    iput v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->h:I

    :cond_0
    return-void
.end method
