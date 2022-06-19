.class public Lg/f/a/e/p/a;
.super Landroidx/cardview/widget/CardView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lg/f/a/e/c0/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/f/a/e/p/a$a;
    }
.end annotation


# static fields
.field private static final t:[I

.field private static final u:[I

.field private static final v:[I


# instance fields
.field private final o:Lg/f/a/e/p/b;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Lg/f/a/e/p/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x101009f

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 1
    sput-object v1, Lg/f/a/e/p/a;->t:[I

    new-array v1, v0, [I

    const v2, 0x10100a0

    aput v2, v1, v3

    .line 2
    sput-object v1, Lg/f/a/e/p/a;->u:[I

    new-array v0, v0, [I

    .line 3
    sget v1, Lg/f/a/e/b;->G:I

    aput v1, v0, v3

    sput-object v0, Lg/f/a/e/p/a;->v:[I

    return-void
.end method

.method static synthetic f(Lg/f/a/e/p/a;)F
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getRadius()F

    move-result p0

    return p0
.end method

.method private g()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-le v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {v0}, Lg/f/a/e/p/b;->a()V

    :cond_0
    return-void
.end method

.method private getBoundsAsRectF()Landroid/graphics/RectF;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 2
    iget-object v1, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {v1}, Lg/f/a/e/p/b;->b()Lg/f/a/e/c0/g;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    return-object v0
.end method


# virtual methods
.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {v0}, Lg/f/a/e/p/b;->c()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getCardForegroundColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {v0}, Lg/f/a/e/p/b;->d()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method getCardViewRadius()F
    .locals 1

    .line 1
    invoke-static {p0}, Lg/f/a/e/p/a;->f(Lg/f/a/e/p/a;)F

    move-result v0

    return v0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {v0}, Lg/f/a/e/p/b;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCheckedIconMargin()I
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {v0}, Lg/f/a/e/p/b;->f()I

    move-result v0

    return v0
.end method

.method public getCheckedIconSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {v0}, Lg/f/a/e/p/b;->g()I

    move-result v0

    return v0
.end method

.method public getCheckedIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {v0}, Lg/f/a/e/p/b;->h()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getContentPaddingBottom()I
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {v0}, Lg/f/a/e/p/b;->p()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {v0}, Lg/f/a/e/p/b;->p()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getContentPaddingRight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {v0}, Lg/f/a/e/p/b;->p()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {v0}, Lg/f/a/e/p/b;->p()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getProgress()F
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {v0}, Lg/f/a/e/p/b;->j()F

    move-result v0

    return v0
.end method

.method public getRadius()F
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {v0}, Lg/f/a/e/p/b;->i()F

    move-result v0

    return v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {v0}, Lg/f/a/e/p/b;->k()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getShapeAppearanceModel()Lg/f/a/e/c0/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {v0}, Lg/f/a/e/p/b;->l()Lg/f/a/e/c0/k;

    move-result-object v0

    return-object v0
.end method

.method public getStrokeColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {v0}, Lg/f/a/e/p/b;->m()I

    move-result v0

    return v0
.end method

.method public getStrokeColorStateList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {v0}, Lg/f/a/e/p/b;->n()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getStrokeWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {v0}, Lg/f/a/e/p/b;->o()I

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/f/a/e/p/b;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/f/a/e/p/a;->r:Z

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/f/a/e/p/a;->q:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {v0}, Lg/f/a/e/p/b;->b()Lg/f/a/e/c0/g;

    const/4 v0, 0x0

    throw v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lg/f/a/e/p/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lg/f/a/e/p/a;->t:[I

    invoke-static {p1, v0}, Landroid/widget/FrameLayout;->mergeDrawableStates([I[I)[I

    .line 4
    :cond_0
    invoke-virtual {p0}, Lg/f/a/e/p/a;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lg/f/a/e/p/a;->u:[I

    invoke-static {p1, v0}, Landroid/widget/FrameLayout;->mergeDrawableStates([I[I)[I

    .line 6
    :cond_1
    invoke-virtual {p0}, Lg/f/a/e/p/a;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    sget-object v0, Lg/f/a/e/p/a;->v:[I

    invoke-static {p1, v0}, Landroid/widget/FrameLayout;->mergeDrawableStates([I[I)[I

    :cond_2
    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-string v0, "androidx.cardview.widget.CardView"

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lg/f/a/e/p/a;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "androidx.cardview.widget.CardView"

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lg/f/a/e/p/a;->h()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 5
    invoke-virtual {p0}, Lg/f/a/e/p/a;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/cardview/widget/CardView;->onMeasure(II)V

    .line 2
    iget-object p1, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lg/f/a/e/p/b;->s(II)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lg/f/a/e/p/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lg/f/a/e/p/a;->p:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {v0}, Lg/f/a/e/p/b;->q()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MaterialCardView"

    const-string v1, "Setting a custom background is not supported."

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lg/f/a/e/p/b;->t(Z)V

    .line 5
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCardBackgroundColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/f/a/e/p/b;->u(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {v0, p1}, Lg/f/a/e/p/b;->u(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardElevation(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    .line 2
    iget-object p1, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {p1}, Lg/f/a/e/p/b;->J()V

    return-void
.end method

.method public setCardForegroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {v0, p1}, Lg/f/a/e/p/b;->v(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCheckable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {v0, p1}, Lg/f/a/e/p/b;->w(Z)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/f/a/e/p/a;->q:Z

    if-eq v0, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lg/f/a/e/p/a;->toggle()V

    :cond_0
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {v0, p1}, Lg/f/a/e/p/b;->x(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCheckedIconMargin(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {v0, p1}, Lg/f/a/e/p/b;->y(I)V

    return-void
.end method

.method public setCheckedIconMarginResource(I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 3
    invoke-virtual {v0, p1}, Lg/f/a/e/p/b;->y(I)V

    :cond_0
    return-void
.end method

.method public setCheckedIconResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lf/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/f/a/e/p/b;->x(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setCheckedIconSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {v0, p1}, Lg/f/a/e/p/b;->z(I)V

    return-void
.end method

.method public setCheckedIconSizeResource(I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lg/f/a/e/p/b;->z(I)V

    :cond_0
    return-void
.end method

.method public setCheckedIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {v0, p1}, Lg/f/a/e/p/b;->A(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 2
    iget-object p1, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lg/f/a/e/p/b;->H()V

    :cond_0
    return-void
.end method

.method public setDragged(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/f/a/e/p/a;->r:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lg/f/a/e/p/a;->r:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->refreshDrawableState()V

    .line 4
    invoke-direct {p0}, Lg/f/a/e/p/a;->g()V

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setMaxCardElevation(F)V

    .line 2
    iget-object p1, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {p1}, Lg/f/a/e/p/b;->K()V

    return-void
.end method

.method public setOnCheckedChangeListener(Lg/f/a/e/p/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/f/a/e/p/a;->s:Lg/f/a/e/p/a$a;

    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setPreventCornerOverlap(Z)V

    .line 2
    iget-object p1, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {p1}, Lg/f/a/e/p/b;->K()V

    .line 3
    iget-object p1, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {p1}, Lg/f/a/e/p/b;->I()V

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {v0, p1}, Lg/f/a/e/p/b;->C(F)V

    return-void
.end method

.method public setRadius(F)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    .line 2
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {v0, p1}, Lg/f/a/e/p/b;->B(F)V

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {v0, p1}, Lg/f/a/e/p/b;->D(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lf/a/k/a/a;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Lg/f/a/e/p/b;->D(Landroid/content/res/ColorStateList;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setShapeAppearanceModel(Lg/f/a/e/c0/k;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lg/f/a/e/p/a;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/f/a/e/c0/k;->u(Landroid/graphics/RectF;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {v0, p1}, Lg/f/a/e/p/b;->E(Lg/f/a/e/c0/k;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setStrokeColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/f/a/e/p/b;->F(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {v0, p1}, Lg/f/a/e/p/b;->F(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {v0, p1}, Lg/f/a/e/p/b;->G(I)V

    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setUseCompatPadding(Z)V

    .line 2
    iget-object p1, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {p1}, Lg/f/a/e/p/b;->K()V

    .line 3
    iget-object p1, p0, Lg/f/a/e/p/a;->o:Lg/f/a/e/p/b;

    invoke-virtual {p1}, Lg/f/a/e/p/b;->I()V

    return-void
.end method

.method public toggle()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lg/f/a/e/p/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lg/f/a/e/p/a;->q:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lg/f/a/e/p/a;->q:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->refreshDrawableState()V

    .line 4
    invoke-direct {p0}, Lg/f/a/e/p/a;->g()V

    .line 5
    iget-object v0, p0, Lg/f/a/e/p/a;->s:Lg/f/a/e/p/a$a;

    if-eqz v0, :cond_0

    .line 6
    iget-boolean v1, p0, Lg/f/a/e/p/a;->q:Z

    invoke-interface {v0, p0, v1}, Lg/f/a/e/p/a$a;->a(Lg/f/a/e/p/a;Z)V

    :cond_0
    return-void
.end method
