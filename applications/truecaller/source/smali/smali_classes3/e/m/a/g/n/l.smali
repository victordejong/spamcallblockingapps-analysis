.class public Le/m/a/g/n/l;
.super Le/m/a/g/n/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/g/n/l$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Le/m/a/g/t/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Le/m/a/g/n/i;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Le/m/a/g/t/b;)V

    return-void
.end method


# virtual methods
.method public d()F
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/n/i;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getElevation()F

    move-result v0

    return v0
.end method

.method public e(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/g/n/i;->z:Le/m/a/g/t/b;

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;

    .line 2
    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-boolean v0, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->l:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-super {p0, p1}, Le/m/a/g/n/i;->e(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Le/m/a/g/n/i;->u()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget v0, p0, Le/m/a/g/n/i;->k:I

    iget-object v1, p0, Le/m/a/g/n/i;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 6
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method public f(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/content/res/ColorStateList;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/m/a/g/n/i;->a:Le/m/a/g/u/l;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Le/m/a/g/n/l$a;

    invoke-direct {v1, v0}, Le/m/a/g/n/l$a;-><init>(Le/m/a/g/u/l;)V

    .line 4
    iput-object v1, p0, Le/m/a/g/n/i;->b:Le/m/a/g/u/h;

    .line 5
    invoke-virtual {v1, p1}, Le/m/a/g/u/h;->setTintList(Landroid/content/res/ColorStateList;)V

    if-eqz p2, :cond_0

    .line 6
    iget-object v0, p0, Le/m/a/g/n/i;->b:Le/m/a/g/u/h;

    invoke-virtual {v0, p2}, Le/m/a/g/u/h;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 7
    :cond_0
    iget-object p2, p0, Le/m/a/g/n/i;->b:Le/m/a/g/u/h;

    iget-object v0, p0, Le/m/a/g/n/i;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Le/m/a/g/u/h;->n(Landroid/content/Context;)V

    const/4 p2, 0x0

    if-lez p4, :cond_2

    .line 8
    iget-object v0, p0, Le/m/a/g/n/i;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 9
    new-instance v1, Le/m/a/g/n/c;

    iget-object v2, p0, Le/m/a/g/n/i;->a:Le/m/a/g/u/l;

    .line 10
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-direct {v1, v2}, Le/m/a/g/n/c;-><init>(Le/m/a/g/u/l;)V

    .line 12
    sget v2, Lcom/google/android/material/R$color;->design_fab_stroke_top_outer_color:I

    .line 13
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 14
    invoke-static {v0, v2}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v2

    .line 15
    sget v3, Lcom/google/android/material/R$color;->design_fab_stroke_top_inner_color:I

    .line 16
    invoke-static {v0, v3}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v3

    .line 17
    sget v4, Lcom/google/android/material/R$color;->design_fab_stroke_end_inner_color:I

    .line 18
    invoke-static {v0, v4}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v4

    .line 19
    sget v5, Lcom/google/android/material/R$color;->design_fab_stroke_end_outer_color:I

    .line 20
    invoke-static {v0, v5}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v0

    .line 21
    iput v2, v1, Le/m/a/g/n/c;->i:I

    .line 22
    iput v3, v1, Le/m/a/g/n/c;->j:I

    .line 23
    iput v4, v1, Le/m/a/g/n/c;->k:I

    .line 24
    iput v0, v1, Le/m/a/g/n/c;->l:I

    int-to-float p4, p4

    .line 25
    iget v0, v1, Le/m/a/g/n/c;->h:F

    cmpl-float v0, v0, p4

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 26
    iput p4, v1, Le/m/a/g/n/c;->h:F

    .line 27
    iget-object v0, v1, Le/m/a/g/n/c;->b:Landroid/graphics/Paint;

    const v3, 0x3faaa993    # 1.3333f

    mul-float/2addr p4, v3

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 28
    iput-boolean v2, v1, Le/m/a/g/n/c;->n:Z

    .line 29
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 30
    :cond_1
    invoke-virtual {v1, p1}, Le/m/a/g/n/c;->b(Landroid/content/res/ColorStateList;)V

    .line 31
    iput-object v1, p0, Le/m/a/g/n/i;->d:Le/m/a/g/n/c;

    .line 32
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 p4, 0x2

    new-array p4, p4, [Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iget-object v1, p0, Le/m/a/g/n/i;->d:Le/m/a/g/n/c;

    .line 33
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aput-object v1, p4, v0

    .line 34
    iget-object v0, p0, Le/m/a/g/n/i;->b:Le/m/a/g/u/h;

    .line 35
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aput-object v0, p4, v2

    .line 36
    invoke-direct {p1, p4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 37
    :cond_2
    iput-object p2, p0, Le/m/a/g/n/i;->d:Le/m/a/g/n/c;

    .line 38
    iget-object p1, p0, Le/m/a/g/n/i;->b:Le/m/a/g/u/h;

    .line 39
    :goto_0
    new-instance p4, Landroid/graphics/drawable/RippleDrawable;

    .line 40
    invoke-static {p3}, Le/m/a/g/s/a;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-direct {p4, p3, p1, p2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object p4, p0, Le/m/a/g/n/i;->c:Landroid/graphics/drawable/Drawable;

    .line 41
    iput-object p4, p0, Le/m/a/g/n/i;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/m/a/g/n/i;->w()V

    return-void
.end method

.method public k([I)V
    .locals 0

    return-void
.end method

.method public l(FFF)V
    .locals 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    new-instance v1, Landroid/animation/StateListAnimator;

    invoke-direct {v1}, Landroid/animation/StateListAnimator;-><init>()V

    .line 3
    sget-object v2, Le/m/a/g/n/i;->G:[I

    .line 4
    invoke-virtual {p0, p1, p3}, Le/m/a/g/n/l;->y(FF)Landroid/animation/Animator;

    move-result-object p3

    .line 5
    invoke-virtual {v1, v2, p3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 6
    sget-object p3, Le/m/a/g/n/i;->H:[I

    .line 7
    invoke-virtual {p0, p1, p2}, Le/m/a/g/n/l;->y(FF)Landroid/animation/Animator;

    move-result-object v2

    .line 8
    invoke-virtual {v1, p3, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 9
    sget-object p3, Le/m/a/g/n/i;->I:[I

    .line 10
    invoke-virtual {p0, p1, p2}, Le/m/a/g/n/l;->y(FF)Landroid/animation/Animator;

    move-result-object v2

    .line 11
    invoke-virtual {v1, p3, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 12
    sget-object p3, Le/m/a/g/n/i;->J:[I

    .line 13
    invoke-virtual {p0, p1, p2}, Le/m/a/g/n/l;->y(FF)Landroid/animation/Animator;

    move-result-object p2

    .line 14
    invoke-virtual {v1, p3, p2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 15
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 16
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iget-object v2, p0, Le/m/a/g/n/i;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput p1, v4, v5

    const-string p1, "elevation"

    invoke-static {v2, p1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v6, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p1, 0x18

    const-wide/16 v6, 0x64

    if-gt v0, p1, :cond_0

    .line 18
    iget-object p1, p0, Le/m/a/g/n/i;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v0, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v2, v3, [F

    .line 19
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getTranslationZ()F

    move-result v4

    aput v4, v2, v5

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 20
    invoke-virtual {p1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 21
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_0
    iget-object p1, p0, Le/m/a/g/n/i;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v0, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v2, v3, [F

    const/4 v3, 0x0

    aput v3, v2, v5

    .line 23
    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 24
    invoke-virtual {p1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 25
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p1, v5, [Landroid/animation/Animator;

    .line 26
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/animation/Animator;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 27
    sget-object p1, Le/m/a/g/n/i;->F:Landroid/animation/TimeInterpolator;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 28
    sget-object p1, Le/m/a/g/n/i;->K:[I

    invoke-virtual {v1, p1, p2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 29
    sget-object p1, Le/m/a/g/n/i;->L:[I

    invoke-virtual {p0, v3, v3}, Le/m/a/g/n/l;->y(FF)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 30
    iget-object p1, p0, Le/m/a/g/n/i;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 31
    invoke-virtual {p0}, Le/m/a/g/n/l;->s()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 32
    invoke-virtual {p0}, Le/m/a/g/n/i;->w()V

    :cond_1
    return-void
.end method

.method public o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public q(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/g/n/i;->c:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 3
    invoke-static {p1}, Le/m/a/g/s/a;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    invoke-static {p1}, Le/m/a/g/s/a;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/n/i;->z:Le/m/a/g/t/b;

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;

    .line 2
    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-boolean v0, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->l:Z

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Le/m/a/g/n/i;->u()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public v()V
    .locals 0

    return-void
.end method

.method public final y(FF)Landroid/animation/Animator;
    .locals 7

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2
    iget-object v1, p0, Le/m/a/g/n/i;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    const-string p1, "elevation"

    invoke-static {v1, p1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iget-object v1, p0, Le/m/a/g/n/i;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v3, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v2, v2, [F

    aput p2, v2, v4

    .line 3
    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 v1, 0x64

    .line 4
    invoke-virtual {p2, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 6
    sget-object p1, Le/m/a/g/n/i;->F:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method
