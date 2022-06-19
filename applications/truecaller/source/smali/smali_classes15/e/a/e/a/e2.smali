.class public Le/a/e/a/e2;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/e/a/e2$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Landroid/net/Uri;

.field public final c:Landroid/widget/ImageView;

.field public final d:Le/f/a/r/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/r/g<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Z

.field public f:Lcom/truecaller/data/entity/Contact$PremiumLevel;

.field public g:Landroid/animation/Animator;

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/ImageView;ILe/f/a/r/g;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Landroid/widget/ImageView;",
            "I",
            "Le/f/a/r/g<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)V"
        }
    .end annotation

    const v0, 0x7f130023

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p2, p0, Le/a/e/a/e2;->b:Landroid/net/Uri;

    .line 3
    iput-object p3, p0, Le/a/e/a/e2;->c:Landroid/widget/ImageView;

    .line 4
    iput p4, p0, Le/a/e/a/e2;->a:I

    .line 5
    iput-object p5, p0, Le/a/e/a/e2;->d:Le/f/a/r/g;

    .line 6
    iput-boolean p6, p0, Le/a/e/a/e2;->e:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/ImageView;ILe/f/a/r/g;ZLcom/truecaller/data/entity/Contact$PremiumLevel;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Landroid/widget/ImageView;",
            "I",
            "Le/f/a/r/g<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z",
            "Lcom/truecaller/data/entity/Contact$PremiumLevel;",
            "Z)V"
        }
    .end annotation

    const p5, 0x7f130023

    .line 7
    invoke-direct {p0, p1, p5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 8
    iput-object p2, p0, Le/a/e/a/e2;->b:Landroid/net/Uri;

    .line 9
    iput-object p3, p0, Le/a/e/a/e2;->c:Landroid/widget/ImageView;

    .line 10
    iput p4, p0, Le/a/e/a/e2;->a:I

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Le/a/e/a/e2;->d:Le/f/a/r/g;

    .line 12
    iput-boolean p6, p0, Le/a/e/a/e2;->e:Z

    .line 13
    iput-object p7, p0, Le/a/e/a/e2;->f:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    .line 14
    iput-boolean p8, p0, Le/a/e/a/e2;->h:Z

    return-void
.end method

.method public static synthetic a(Le/a/e/a/e2;)V
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
    new-instance v7, Le/a/e/a/e2$a;

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Le/a/e/a/e2$a;-><init>(Landroid/view/View;IIII)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

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
    iget-object v3, v6, Le/a/e/a/e2;->c:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    .line 5
    iget-object v4, v6, Le/a/e/a/e2;->c:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    new-array v5, v9, [I

    .line 6
    iget-object v10, v6, Le/a/e/a/e2;->c:Landroid/widget/ImageView;

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
    invoke-virtual/range {v0 .. v5}, Le/a/e/a/e2;->b(Landroid/view/View;IIII)Landroid/animation/Animator;

    move-result-object v0

    .line 13
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-float v1, v13

    .line 14
    invoke-static {v7, v14, v15, v1, v10}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v1

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
    invoke-virtual/range {v0 .. v5}, Le/a/e/a/e2;->b(Landroid/view/View;IIII)Landroid/animation/Animator;

    move-result-object v0

    .line 19
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-float v1, v13

    .line 20
    invoke-static {v7, v14, v15, v10, v1}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v1

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
    iput-object v2, v6, Le/a/e/a/e2;->g:Landroid/animation/Animator;

    return-void

    nop

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
    iget-object v0, p0, Le/a/e/a/e2;->g:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a01ca

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Le/a/e/a/d2;

    invoke-direct {v1, p0}, Le/a/e/a/d2;-><init>(Le/a/e/a/e2;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Le/a/e/a/e2;->c(Landroid/view/View;ZLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0987

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/e/a/e2;->dismiss()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f0a01e3

    if-ne p1, v1, :cond_2

    .line 5
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object p1

    invoke-interface {p1}, Le/a/j2;->C3()Le/a/l/a2;

    move-result-object p1

    .line 6
    iget v1, p0, Le/a/e/a/e2;->a:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    .line 7
    sget-object v1, Lcom/truecaller/premium/PremiumLaunchContext;->GOLD_BADGE:Lcom/truecaller/premium/PremiumLaunchContext;

    const-string v2, "gold"

    invoke-interface {p1, v0, v1, v2}, Le/a/l/a2;->a(Landroid/content/Context;Lcom/truecaller/premium/PremiumLaunchContext;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 8
    sget-object v1, Lcom/truecaller/premium/PremiumLaunchContext;->PREMIUM_BADGE:Lcom/truecaller/premium/PremiumLaunchContext;

    invoke-interface {p1, v0, v1}, Le/a/l/a2;->b(Landroid/content/Context;Lcom/truecaller/premium/PremiumLaunchContext;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Le/a/e/a/d;

    invoke-direct {v3, v0}, Le/a/e/a/d;-><init>(Le/a/e/a/e2;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v2, 0x7f0d0104

    .line 6
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    const v2, 0x7f0a0987

    .line 7
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0a01e0

    .line 8
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f0a01e3

    .line 9
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 10
    iget-object v6, v0, Le/a/e/a/e2;->c:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 11
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 13
    iget-boolean v7, v0, Le/a/e/a/e2;->e:Z

    if-eqz v7, :cond_1

    const v7, 0x7f080387

    goto :goto_0

    :cond_1
    const v7, 0x7f080385

    .line 14
    :goto_0
    sget-object v8, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 15
    invoke-static {v6, v7}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 16
    iget-object v8, v0, Le/a/e/a/e2;->b:Landroid/net/Uri;

    if-eqz v8, :cond_3

    .line 17
    invoke-static {v2}, Le/a/m0/a1$k;->L1(Landroid/view/View;)Le/a/z3/e;

    move-result-object v8

    iget-object v9, v0, Le/a/e/a/e2;->b:Landroid/net/Uri;

    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, v10}, Le/a/m0/a1$k;->O0(Le/f/a/i;Landroid/net/Uri;Ljava/lang/Integer;)Le/f/a/h;

    move-result-object v8

    .line 18
    invoke-virtual {v8, v7}, Le/f/a/r/a;->v(Landroid/graphics/drawable/Drawable;)Le/f/a/r/a;

    move-result-object v8

    check-cast v8, Le/f/a/h;

    .line 19
    invoke-virtual {v8, v7}, Le/f/a/r/a;->l(Landroid/graphics/drawable/Drawable;)Le/f/a/r/a;

    move-result-object v7

    check-cast v7, Le/f/a/h;

    new-instance v8, Le/f/a/n/q/d/y;

    .line 20
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0704a1

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {v8, v6}, Le/f/a/n/q/d/y;-><init>(I)V

    invoke-virtual {v7, v8}, Le/f/a/r/a;->B(Le/f/a/n/m;)Le/f/a/r/a;

    move-result-object v6

    check-cast v6, Le/f/a/h;

    .line 21
    iget-object v7, v0, Le/a/e/a/e2;->d:Le/f/a/r/g;

    if-eqz v7, :cond_2

    .line 22
    invoke-virtual {v6, v7}, Le/f/a/h;->H(Le/f/a/r/g;)Le/f/a/h;

    move-result-object v6

    .line 23
    :cond_2
    invoke-virtual {v6, v2}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    goto :goto_1

    .line 24
    :cond_3
    iget-object v6, v0, Le/a/e/a/e2;->d:Le/f/a/r/g;

    if-eqz v6, :cond_4

    .line 25
    new-instance v8, Le/f/a/n/o/r;

    const-string v9, "no image uri provided"

    invoke-direct {v8, v9}, Le/f/a/n/o/r;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    new-instance v10, Le/f/a/r/k/e;

    invoke-direct {v10, v2}, Le/f/a/r/k/e;-><init>(Landroid/widget/ImageView;)V

    invoke-interface {v6, v8, v9, v10, v4}, Le/f/a/r/g;->onLoadFailed(Le/f/a/n/o/r;Ljava/lang/Object;Le/f/a/r/k/k;Z)Z

    .line 26
    :cond_4
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    :goto_1
    iget-boolean v6, v0, Le/a/e/a/e2;->h:Z

    const/16 v13, 0x100

    const/16 v14, 0x10

    const/16 v15, 0x80

    const/16 v7, 0x40

    const/16 v8, 0x20

    const/4 v9, 0x4

    const/16 v10, 0x8

    if-eqz v6, :cond_e

    .line 28
    iget v6, v0, Le/a/e/a/e2;->a:I

    iget-object v11, v0, Le/a/e/a/e2;->f:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    .line 29
    invoke-static {v6, v11}, Le/a/o5/t;->f(ILcom/truecaller/data/entity/Contact$PremiumLevel;)I

    move-result v11

    .line 30
    invoke-static {v6, v13}, Le/a/m0/a1$k;->o(II)Z

    move-result v18

    if-eqz v18, :cond_5

    :goto_2
    const v6, 0x7f08024c

    goto/16 :goto_8

    :cond_5
    if-ne v11, v8, :cond_6

    const v6, 0x7f0806c8

    goto/16 :goto_8

    .line 31
    :cond_6
    invoke-static {v6, v14}, Le/a/m0/a1$k;->o(II)Z

    move-result v17

    if-eqz v17, :cond_7

    :goto_3
    const v6, 0x7f080717

    goto/16 :goto_8

    .line 32
    :cond_7
    invoke-static {v6, v15}, Le/a/m0/a1$k;->o(II)Z

    move-result v16

    if-eqz v16, :cond_8

    :goto_4
    const v6, 0x7f080821

    goto/16 :goto_8

    :cond_8
    if-ne v11, v9, :cond_9

    const v6, 0x7f08077e

    goto/16 :goto_8

    :cond_9
    if-ne v11, v7, :cond_a

    :goto_5
    const v6, 0x7f0803ae

    goto/16 :goto_8

    :cond_a
    if-ne v11, v10, :cond_b

    :goto_6
    const v6, 0x7f08036c

    goto :goto_8

    :cond_b
    const/4 v12, 0x2

    .line 33
    invoke-static {v6, v12}, Le/a/m0/a1$k;->o(II)Z

    move-result v6

    if-eqz v6, :cond_c

    const v6, 0x7f0807c1

    goto :goto_8

    :cond_c
    if-ne v11, v1, :cond_d

    :goto_7
    const v6, 0x7f0806d0

    goto :goto_8

    :cond_d
    move v6, v4

    goto :goto_8

    .line 34
    :cond_e
    iget v6, v0, Le/a/e/a/e2;->a:I

    .line 35
    invoke-static {v6, v13}, Le/a/m0/a1$k;->o(II)Z

    move-result v11

    if-eqz v11, :cond_f

    goto :goto_2

    .line 36
    :cond_f
    invoke-static {v6, v8}, Le/a/m0/a1$k;->o(II)Z

    move-result v11

    if-eqz v11, :cond_10

    const v6, 0x7f0804c4

    goto :goto_8

    .line 37
    :cond_10
    invoke-static {v6, v14}, Le/a/m0/a1$k;->o(II)Z

    move-result v11

    if-eqz v11, :cond_11

    goto :goto_3

    .line 38
    :cond_11
    invoke-static {v6, v15}, Le/a/m0/a1$k;->o(II)Z

    move-result v11

    if-eqz v11, :cond_12

    goto :goto_4

    .line 39
    :cond_12
    invoke-static {v6, v9}, Le/a/m0/a1$k;->o(II)Z

    move-result v11

    if-eqz v11, :cond_13

    const v6, 0x7f0805bb

    goto :goto_8

    .line 40
    :cond_13
    invoke-static {v6, v7}, Le/a/m0/a1$k;->o(II)Z

    move-result v11

    if-eqz v11, :cond_14

    goto :goto_5

    .line 41
    :cond_14
    invoke-static {v6, v10}, Le/a/m0/a1$k;->o(II)Z

    move-result v11

    if-eqz v11, :cond_15

    goto :goto_6

    .line 42
    :cond_15
    invoke-static {v6, v1}, Le/a/m0/a1$k;->o(II)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_7

    :goto_8
    if-eqz v6, :cond_21

    .line 43
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 44
    iget v11, v0, Le/a/e/a/e2;->a:I

    if-eq v11, v1, :cond_1d

    if-eq v11, v9, :cond_1c

    if-eq v11, v10, :cond_1b

    if-eq v11, v14, :cond_1a

    if-eq v11, v8, :cond_19

    if-eq v11, v7, :cond_18

    if-eq v11, v15, :cond_17

    if-eq v11, v13, :cond_16

    move v1, v4

    goto :goto_9

    :cond_16
    const v1, 0x7f12023b

    goto :goto_9

    :cond_17
    const v1, 0x7f12011f

    goto :goto_9

    :cond_18
    const v1, 0x7f120145

    goto :goto_9

    :cond_19
    const v1, 0x7f120148

    goto :goto_9

    :cond_1a
    const v1, 0x7f120572

    goto :goto_9

    :cond_1b
    const v1, 0x7f120144

    goto :goto_9

    :cond_1c
    const v1, 0x7f120149

    goto :goto_9

    :cond_1d
    const v1, 0x7f12014a

    :goto_9
    if-eqz v1, :cond_1e

    .line 45
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 46
    :cond_1e
    iget v1, v0, Le/a/e/a/e2;->a:I

    if-eq v1, v9, :cond_20

    if-ne v1, v8, :cond_1f

    goto :goto_a

    :cond_1f
    move v1, v4

    goto :goto_b

    :cond_20
    :goto_a
    const v1, 0x7f0805e4

    .line 47
    :goto_b
    invoke-virtual {v3, v6, v4, v1, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_c

    .line 48
    :cond_21
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 49
    :goto_c
    invoke-virtual {v0, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 50
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    const p1, 0x7f0a01ca

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Le/a/e/a/e2;->c(Landroid/view/View;ZLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
