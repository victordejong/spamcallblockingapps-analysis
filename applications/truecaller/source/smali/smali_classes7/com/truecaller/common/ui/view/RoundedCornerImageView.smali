.class public Lcom/truecaller/common/ui/view/RoundedCornerImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# instance fields
.field public final c:Landroid/graphics/Path;

.field public d:Landroid/graphics/RectF;

.field public e:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/truecaller/common/ui/view/RoundedCornerImageView;->c:Landroid/graphics/Path;

    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 3
    iput-object p1, p0, Lcom/truecaller/common/ui/view/RoundedCornerImageView;->e:[F

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/truecaller/common/R$styleable;->RoundedCornerImageView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/truecaller/common/ui/view/RoundedCornerImageView;->e:[F

    sget v1, Lcom/truecaller/common/R$styleable;->RoundedCornerImageView_topLeftRadius:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v2

    .line 6
    iget-object v0, p0, Lcom/truecaller/common/ui/view/RoundedCornerImageView;->e:[F

    aget v1, v0, v2

    aput v1, v0, p1

    .line 7
    sget v1, Lcom/truecaller/common/R$styleable;->RoundedCornerImageView_topRightRadius:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x2

    aput v1, v0, v3

    .line 8
    iget-object v0, p0, Lcom/truecaller/common/ui/view/RoundedCornerImageView;->e:[F

    const/4 v1, 0x3

    aget v3, v0, v3

    aput v3, v0, v1

    .line 9
    sget v1, Lcom/truecaller/common/R$styleable;->RoundedCornerImageView_bottomRightRadius:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x4

    aput v1, v0, v3

    .line 10
    iget-object v0, p0, Lcom/truecaller/common/ui/view/RoundedCornerImageView;->e:[F

    const/4 v1, 0x5

    aget v3, v0, v3

    aput v3, v0, v1

    .line 11
    sget v1, Lcom/truecaller/common/R$styleable;->RoundedCornerImageView_bottomLeftRadius:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 12
    iget-object v0, p0, Lcom/truecaller/common/ui/view/RoundedCornerImageView;->e:[F

    const/4 v1, 0x7

    aget v2, v0, v2

    aput v2, v0, v1

    .line 13
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    const/4 p2, 0x0

    .line 14
    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/ui/view/RoundedCornerImageView;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/truecaller/common/ui/view/RoundedCornerImageView;->d:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/truecaller/common/ui/view/RoundedCornerImageView;->e:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/common/ui/view/RoundedCornerImageView;->c:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    iget-object p1, p0, Lcom/truecaller/common/ui/view/RoundedCornerImageView;->c:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->rewind()V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 2
    new-instance p3, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-direct {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/truecaller/common/ui/view/RoundedCornerImageView;->d:Landroid/graphics/RectF;

    return-void
.end method
