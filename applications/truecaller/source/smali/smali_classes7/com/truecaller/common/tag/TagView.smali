.class public Lcom/truecaller/common/tag/TagView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/common/tag/TagView$b;
    }
.end annotation


# static fields
.field public static final A:I


# instance fields
.field public final f:I

.field public final g:Landroid/graphics/Paint;

.field public final h:Landroid/graphics/Paint;

.field public final i:Landroid/graphics/Paint;

.field public final j:Landroid/graphics/Paint;

.field public k:I

.field public final l:Landroid/graphics/RectF;

.field public final m:Landroid/graphics/RectF;

.field public final n:Landroid/graphics/RectF;

.field public final o:Landroid/graphics/RectF;

.field public p:F

.field public q:Landroid/graphics/Bitmap;

.field public r:Landroid/animation/ValueAnimator;

.field public s:Z

.field public final t:Z

.field public u:Z

.field public final v:Z

.field public final w:Lcom/truecaller/common/tag/TagView$b;

.field public x:Le/a/b0/p/c;

.field public y:I

.field public z:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/truecaller/common/R$attr;->tagStyle:I

    sput v0, Lcom/truecaller/common/tag/TagView;->A:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 2
    sget v3, Lcom/truecaller/common/tag/TagView;->A:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/truecaller/common/tag/TagView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZZ)V
    .locals 7

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/truecaller/common/tag/TagView;->l:Landroid/graphics/RectF;

    .line 6
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/truecaller/common/tag/TagView;->m:Landroid/graphics/RectF;

    .line 7
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/truecaller/common/tag/TagView;->n:Landroid/graphics/RectF;

    .line 8
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/truecaller/common/tag/TagView;->o:Landroid/graphics/RectF;

    const/4 p3, 0x0

    .line 9
    iput p3, p0, Lcom/truecaller/common/tag/TagView;->p:F

    const/4 p3, 0x1

    .line 10
    iput-boolean p3, p0, Lcom/truecaller/common/tag/TagView;->u:Z

    .line 11
    new-instance v0, Lcom/truecaller/common/tag/TagView$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/truecaller/common/tag/TagView$b;-><init>(Lcom/truecaller/common/tag/TagView;Lcom/truecaller/common/tag/TagView$a;)V

    iput-object v0, p0, Lcom/truecaller/common/tag/TagView;->w:Lcom/truecaller/common/tag/TagView$b;

    .line 12
    iput-object v1, p0, Lcom/truecaller/common/tag/TagView;->z:Ljava/lang/Integer;

    .line 13
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/truecaller/common/R$attr;->tcx_tagBackgroundColor:I

    invoke-static {v0, v2}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v0

    .line 14
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/truecaller/common/R$attr;->tcx_tagIconBackgroundColor:I

    invoke-static {v2, v3}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v2

    .line 15
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/truecaller/common/R$attr;->tcx_tagIconTintColor:I

    invoke-static {v3, v4}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/truecaller/common/tag/TagView;->f:I

    .line 16
    iput-boolean p4, p0, Lcom/truecaller/common/tag/TagView;->t:Z

    .line 17
    iput-boolean p5, p0, Lcom/truecaller/common/tag/TagView;->v:Z

    .line 18
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget v4, Lcom/truecaller/common/R$dimen;->tag_view_stroke_width:I

    invoke-virtual {p5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    iput p5, p0, Lcom/truecaller/common/tag/TagView;->k:I

    .line 19
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget v4, Lcom/truecaller/common/R$dimen;->tag_view_close_btn_margin:I

    invoke-virtual {p5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    iput p5, p0, Lcom/truecaller/common/tag/TagView;->y:I

    .line 20
    new-instance p5, Landroid/graphics/Paint;

    invoke-direct {p5}, Landroid/graphics/Paint;-><init>()V

    iput-object p5, p0, Lcom/truecaller/common/tag/TagView;->i:Landroid/graphics/Paint;

    .line 21
    invoke-virtual {p5, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 22
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/truecaller/common/tag/TagView;->j:Landroid/graphics/Paint;

    .line 23
    invoke-virtual {v4, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v3, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 25
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/truecaller/common/tag/TagView;->h:Landroid/graphics/Paint;

    .line 26
    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 27
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 28
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz p4, :cond_0

    .line 29
    iput-object p5, p0, Lcom/truecaller/common/tag/TagView;->g:Landroid/graphics/Paint;

    .line 30
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p5, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p3, -0x1

    .line 31
    invoke-virtual {p5, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    iget p4, p0, Lcom/truecaller/common/tag/TagView;->k:I

    int-to-float p4, p4

    invoke-virtual {p5, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 33
    iget-boolean p4, p0, Lcom/truecaller/common/tag/TagView;->u:Z

    if-eqz p4, :cond_1

    .line 34
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 35
    :cond_0
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    iput-object p4, p0, Lcom/truecaller/common/tag/TagView;->g:Landroid/graphics/Paint;

    .line 36
    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 37
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p5, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    :cond_1
    :goto_0
    sget-object p3, Lcom/truecaller/common/R$styleable;->TagView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 41
    sget p2, Lcom/truecaller/common/R$styleable;->TagView_closeButtonVisible:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 42
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-nez p2, :cond_2

    goto :goto_1

    .line 43
    :cond_2
    invoke-virtual {p5}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/truecaller/common/tag/TagView;->f(I)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/truecaller/common/tag/TagView;->q:Landroid/graphics/Bitmap;

    const/16 p1, 0x10

    .line 44
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 6

    .line 1
    sget v3, Lcom/truecaller/common/tag/TagView;->A:I

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/truecaller/common/tag/TagView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZZ)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/tag/TagView;->m:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/truecaller/common/tag/TagView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2
    iget v0, p0, Lcom/truecaller/common/tag/TagView;->p:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/truecaller/common/tag/TagView;->n:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/truecaller/common/tag/TagView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/truecaller/common/tag/TagView;->v:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 5
    iget-boolean v0, p0, Lcom/truecaller/common/tag/TagView;->t:Z

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/truecaller/common/tag/TagView;->n:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/truecaller/common/tag/TagView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 7
    :cond_1
    iget v0, p0, Lcom/truecaller/common/tag/TagView;->p:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/truecaller/common/tag/TagView;->n:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/truecaller/common/tag/TagView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/truecaller/common/tag/TagView;->w:Lcom/truecaller/common/tag/TagView$b;

    iget-object v3, v0, Lcom/truecaller/common/tag/TagView$b;->a:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 10
    iget-object v0, v0, Lcom/truecaller/common/tag/TagView$b;->b:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/truecaller/common/tag/TagView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 11
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 13
    :goto_1
    iget-object v3, p0, Lcom/truecaller/common/tag/TagView;->q:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_5

    .line 14
    iget-object v4, p0, Lcom/truecaller/common/tag/TagView;->o:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/truecaller/common/tag/TagView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_5
    int-to-float v0, v0

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 16
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 17
    iget v2, p0, Lcom/truecaller/common/tag/TagView;->p:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-static {v1}, Ln3/k/c/a;->d(I)D

    move-result-wide v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, v1, v3

    if-gez v1, :cond_6

    .line 18
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    const/4 v2, -0x1

    .line 19
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    iget-object v2, p0, Lcom/truecaller/common/tag/TagView;->n:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v0

    iget v4, v2, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v0

    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v3, v4, v5, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 21
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 22
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_6
    return-void
.end method

.method public final f(I)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget v1, Lcom/truecaller/common/R$drawable;->ic_cancel_black_16dp:I

    invoke-static {v0, v1, p1}, Le/a/b0/q/o;->g(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Le/a/b0/q/o;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/tag/TagView;->n:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/truecaller/common/tag/TagView;->l:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 2
    iget v2, v1, Landroid/graphics/RectF;->top:F

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 3
    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 4
    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/truecaller/common/tag/TagView;->p:F

    iget-object v3, p0, Lcom/truecaller/common/tag/TagView;->m:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v3, v1, v2, v1}, Le/d/c/a/a;->a(FFFF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    return-void
.end method

.method public getAvailableTag()Le/a/b0/p/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/tag/TagView;->x:Le/a/b0/p/c;

    return-object v0
.end method

.method public getParentTagId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/tag/TagView;->x:Le/a/b0/p/c;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v0, v0, Le/a/b0/p/c;->c:J

    :goto_0
    return-wide v0
.end method

.method public getTagId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/tag/TagView;->x:Le/a/b0/p/c;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v0, v0, Le/a/b0/p/c;->a:J

    :goto_0
    return-wide v0
.end method

.method public h(ZZ)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/common/tag/TagView;->s:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/truecaller/common/tag/TagView;->s:Z

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 3
    iget-object p1, p0, Lcom/truecaller/common/tag/TagView;->r:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 p2, 0x0

    .line 5
    iget v2, p0, Lcom/truecaller/common/tag/TagView;->p:F

    aput v2, p1, p2

    const/4 p2, 0x1

    iget-boolean v2, p0, Lcom/truecaller/common/tag/TagView;->s:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    aput v0, p1, p2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/common/tag/TagView;->r:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    iget-object p1, p0, Lcom/truecaller/common/tag/TagView;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8
    iget-object p1, p0, Lcom/truecaller/common/tag/TagView;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    .line 9
    :goto_1
    invoke-virtual {p0, v0}, Lcom/truecaller/common/tag/TagView;->i(F)V

    .line 10
    invoke-virtual {p0}, Lcom/truecaller/common/tag/TagView;->g()V

    .line 11
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :goto_2
    return-void
.end method

.method public final i(F)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/truecaller/common/tag/TagView;->p:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/truecaller/common/tag/TagView;->j:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, -0x1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/truecaller/common/tag/TagView;->j:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/truecaller/common/tag/TagView;->f:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :goto_0
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/truecaller/common/tag/TagView;->i(F)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/common/tag/TagView;->g()V

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/truecaller/common/tag/TagView;->q:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v3, p0, Lcom/truecaller/common/tag/TagView;->y:I

    add-int/2addr v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    .line 6
    iget-boolean v3, p0, Lcom/truecaller/common/tag/TagView;->v:Z

    if-eqz v3, :cond_1

    add-int/2addr v0, v1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 8
    :goto_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_3

    .line 9
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 10
    iget-object v3, p0, Lcom/truecaller/common/tag/TagView;->q:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 11
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/truecaller/common/tag/TagView;->y:I

    add-int/2addr v2, v3

    :cond_2
    add-int/2addr p1, v2

    .line 12
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 13
    :cond_3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    if-ne p1, v4, :cond_4

    .line 14
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 15
    :cond_4
    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 2
    iget-object p3, p0, Lcom/truecaller/common/tag/TagView;->m:Landroid/graphics/RectF;

    iget p4, p0, Lcom/truecaller/common/tag/TagView;->k:I

    div-int/lit8 v0, p4, 0x2

    int-to-float v0, v0

    iput v0, p3, Landroid/graphics/RectF;->left:F

    .line 3
    div-int/lit8 v1, p4, 0x2

    int-to-float v1, v1

    iput v1, p3, Landroid/graphics/RectF;->top:F

    sub-int/2addr p2, p4

    int-to-float p2, p2

    .line 4
    iput p2, p3, Landroid/graphics/RectF;->bottom:F

    sub-int/2addr p1, p4

    int-to-float p1, p1

    .line 5
    iput p1, p3, Landroid/graphics/RectF;->right:F

    .line 6
    iget-object p1, p0, Lcom/truecaller/common/tag/TagView;->l:Landroid/graphics/RectF;

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 7
    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 8
    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 9
    iget p2, p3, Landroid/graphics/RectF;->bottom:F

    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 10
    iget-object p1, p0, Lcom/truecaller/common/tag/TagView;->w:Lcom/truecaller/common/tag/TagView$b;

    invoke-virtual {p1}, Lcom/truecaller/common/tag/TagView$b;->a()V

    .line 11
    invoke-virtual {p0}, Lcom/truecaller/common/tag/TagView;->g()V

    .line 12
    iget-object p1, p0, Lcom/truecaller/common/tag/TagView;->q:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 13
    iget-object p2, p0, Lcom/truecaller/common/tag/TagView;->o:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/truecaller/common/tag/TagView;->m:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->right:F

    iget p4, p0, Lcom/truecaller/common/tag/TagView;->y:I

    int-to-float p4, p4

    sub-float/2addr p3, p4

    iput p3, p2, Landroid/graphics/RectF;->right:F

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p3, p1

    iput p3, p2, Landroid/graphics/RectF;->left:F

    .line 15
    iget-object p1, p0, Lcom/truecaller/common/tag/TagView;->o:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result p2

    iget-object p3, p0, Lcom/truecaller/common/tag/TagView;->q:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 16
    iget-object p1, p0, Lcom/truecaller/common/tag/TagView;->o:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->top:F

    iget-object p3, p0, Lcom/truecaller/common/tag/TagView;->q:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/tag/TagView;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setIconBackgroundColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/tag/TagView;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setIconSize(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/common/tag/TagView;->z:Ljava/lang/Integer;

    return-void
.end method

.method public setRedesignBackground(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/truecaller/common/tag/TagView;->u:Z

    .line 2
    invoke-virtual {p0, p1}, Lcom/truecaller/common/tag/TagView;->setBackgroundColor(I)V

    return-void
.end method

.method public setTag(Le/a/b0/p/c;)V
    .locals 2

    .line 1
    iget-object v0, p1, Le/a/b0/p/c;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iput-object p1, p0, Lcom/truecaller/common/tag/TagView;->x:Le/a/b0/p/c;

    .line 4
    iget-boolean v0, p0, Lcom/truecaller/common/tag/TagView;->t:Z

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/truecaller/common/tag/TagView;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/truecaller/common/tag/TagView;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/truecaller/common/tag/TagView;->v:Z

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object v0

    invoke-virtual {v0}, Le/a/z3/e;->x()Le/a/z3/d;

    move-result-object v0

    .line 8
    iget-object p1, p1, Le/a/b0/p/c;->e:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, p1}, Le/a/z3/d;->l0(Ljava/lang/String;)Le/a/z3/d;

    iget-object p1, p0, Lcom/truecaller/common/tag/TagView;->w:Lcom/truecaller/common/tag/TagView$b;

    invoke-virtual {v0, p1}, Le/f/a/h;->M(Le/f/a/r/k/k;)Le/f/a/r/k/k;

    .line 10
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method public setTint(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/common/tag/TagView;->t:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/truecaller/common/tag/TagView;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/common/tag/TagView;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/common/tag/TagView;->j:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 5
    iget-object v0, p0, Lcom/truecaller/common/tag/TagView;->q:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/truecaller/common/tag/TagView;->f(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/common/tag/TagView;->q:Landroid/graphics/Bitmap;

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_1
    return-void
.end method
