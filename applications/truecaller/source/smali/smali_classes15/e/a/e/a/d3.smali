.class public final Le/a/e/a/d3;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/e/a/d3$a;
    }
.end annotation


# instance fields
.field public a:Landroid/animation/Animator;

.field public final b:Landroid/net/Uri;

.field public final c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchor"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Le/a/e/a/d3;->b:Landroid/net/Uri;

    iput-object p3, p0, Le/a/e/a/d3;->c:Landroid/widget/ImageView;

    return-void
.end method

.method public static final synthetic a(Le/a/e/a/d3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;IIII)Landroid/animation/Animator;
    .locals 8

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 1
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2
    new-instance v7, Le/a/e/a/d3$a;

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Le/a/e/a/d3$a;-><init>(Landroid/view/View;IIII)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string p1, "animator"

    .line 3
    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c(Landroid/view/View;ZLandroid/animation/Animator$AnimatorListener;)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v9, 0x2

    new-array v2, v9, [I

    .line 3
    invoke-virtual {v7, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4
    iget-object v3, v6, Le/a/e/a/d3;->c:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    .line 5
    iget-object v4, v6, Le/a/e/a/d3;->c:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    new-array v5, v9, [I

    .line 6
    iget-object v10, v6, Le/a/e/a/d3;->c:Landroid/widget/ImageView;

    invoke-virtual {v10, v5}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    mul-int v10, v0, v0

    .line 7
    div-int/lit8 v10, v10, 0x4

    const/4 v11, 0x4

    invoke-static {v1, v1, v11, v10}, Le/d/c/a/a;->J1(IIII)I

    move-result v10

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    const/4 v11, 0x0

    .line 8
    aget v12, v5, v11

    div-int/lit8 v13, v3, 0x2

    add-int/2addr v12, v13

    aget v3, v2, v11

    div-int/lit8 v14, v0, 0x2

    add-int/2addr v3, v14

    sub-int/2addr v12, v3

    const/4 v0, 0x1

    .line 9
    aget v3, v5, v0

    div-int/2addr v4, v9

    add-int/2addr v4, v3

    aget v0, v2, v0

    div-int/lit8 v15, v1, 0x2

    add-int/2addr v0, v15

    sub-int v5, v4, v0

    const-string v0, "alpha"

    if-eqz p2, :cond_0

    new-array v1, v9, [F

    .line 10
    fill-array-data v1, :array_0

    invoke-static {v7, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-string v0, "ObjectAnimator.ofFloat(view, \"alpha\", 0.2f, 1.0f)"

    invoke-static {v4, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v5

    move-object v12, v4

    move/from16 v4, v16

    move/from16 v5, v17

    .line 12
    invoke-virtual/range {v0 .. v5}, Le/a/e/a/d3;->b(Landroid/view/View;IIII)Landroid/animation/Animator;

    move-result-object v0

    .line 13
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-float v1, v13

    .line 14
    invoke-static {v7, v14, v15, v1, v10}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v1

    const-string v2, "ViewAnimationUtils.creat\u2026 2).toFloat(), maxRadius)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object v4, v12

    goto :goto_0

    :cond_0
    new-array v1, v9, [F

    .line 16
    fill-array-data v1, :array_1

    invoke-static {v7, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-string v0, "ObjectAnimator.ofFloat(view, \"alpha\", 1.0f, 0.2f)"

    invoke-static {v4, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v16, v4

    move v4, v12

    .line 18
    invoke-virtual/range {v0 .. v5}, Le/a/e/a/d3;->b(Landroid/view/View;IIII)Landroid/animation/Animator;

    move-result-object v0

    .line 19
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-float v1, v13

    .line 20
    invoke-static {v7, v14, v15, v10, v1}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v1

    const-string v2, "ViewAnimationUtils.creat\u2026dius, (aw / 2).toFloat())"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v4, v16

    .line 22
    :goto_0
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v0, v3, v11

    const/4 v0, 0x1

    aput-object v4, v3, v0

    aput-object v1, v3, v9

    .line 23
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 24
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_1

    .line 25
    invoke-virtual {v2, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 26
    :cond_1
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 27
    iput-object v2, v6, Le/a/e/a/d3;->a:Landroid/animation/Animator;

    return-void

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method public dismiss()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/e/a/d3;->a:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a0987

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.image)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Le/a/e/a/e3;

    invoke-direct {v1, p0}, Le/a/e/a/e3;-><init>(Le/a/e/a/d3;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Le/a/e/a/d3;->c(Landroid/view/View;ZLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0987

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/e/a/d3;->dismiss()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Le/a/e/a/d3$b;

    invoke-direct {v2, p0}, Le/a/e/a/d3$b;-><init>(Le/a/e/a/d3;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    const v0, 0x7f0d0126

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f0a0987

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 8
    iget-object v2, p0, Le/a/e/a/d3;->c:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object v2

    .line 11
    iget-object v3, p0, Le/a/e/a/d3;->b:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Le/a/z3/e;->z(Landroid/net/Uri;)Le/a/z3/d;

    move-result-object v2

    const v3, 0x7f0801cc

    .line 12
    invoke-virtual {v2, v3}, Le/a/z3/d;->o0(I)Le/a/z3/d;

    move-result-object v2

    .line 13
    invoke-virtual {v2, v3}, Le/a/z3/d;->h0(I)Le/a/z3/d;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Le/f/a/n/m;

    .line 14
    new-instance v4, Le/f/a/n/q/d/i;

    invoke-direct {v4}, Le/f/a/n/q/d/i;-><init>()V

    aput-object v4, v3, v1

    new-instance v1, Le/f/a/n/q/d/y;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "context"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0704a1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-direct {v1, v4}, Le/f/a/n/q/d/y;-><init>(I)V

    aput-object v1, v3, p1

    invoke-virtual {v2, v3}, Le/a/z3/d;->r0([Le/f/a/n/m;)Le/a/z3/d;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v0}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    .line 16
    invoke-virtual {p0, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 17
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    const-string v0, "dialog"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x7f0a0987

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.image)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Le/a/e/a/d3;->c(Landroid/view/View;ZLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
