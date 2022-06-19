.class public Lcom/hiya/stingray/ui/common/fab/a;
.super Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;
.source "SourceFile"


# instance fields
.field t:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/hiya/stingray/ui/common/fab/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    const v0, 0x7f0700b6

    .line 1
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->h(I)F

    move-result v6

    const/high16 v0, 0x40000000    # 2.0f

    div-float v4, v6, v0

    const v1, 0x7f0700b8

    .line 2
    invoke-virtual {p0, v1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->h(I)F

    move-result v1

    const v2, 0x7f0700b9

    .line 3
    invoke-virtual {p0, v2}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->h(I)F

    move-result v2

    div-float v5, v2, v0

    sub-float v1, v6, v1

    div-float v3, v1, v0

    .line 4
    new-instance v0, Lcom/hiya/stingray/ui/common/fab/a$a;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/hiya/stingray/ui/common/fab/a$a;-><init>(Lcom/hiya/stingray/ui/common/fab/a;FFFF)V

    .line 5
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 6
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 7
    iget v2, p0, Lcom/hiya/stingray/ui/common/fab/a;->t:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-object v1
.end method

.method public getPlusColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hiya/stingray/ui/common/fab/a;->t:I

    return v0
.end method

.method j(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/hiya/stingray/p;->d:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const v2, 0x106000b

    .line 2
    invoke-virtual {p0, v2}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->g(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/hiya/stingray/ui/common/fab/a;->t:I

    .line 3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 4
    invoke-super {p0, p1, p2}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->j(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Use FloatingActionButton if you want to use custom icon"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPlusColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/hiya/stingray/ui/common/fab/a;->t:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/hiya/stingray/ui/common/fab/a;->t:I

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->n()V

    :cond_0
    return-void
.end method

.method public setPlusColorResId(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->g(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/common/fab/a;->setPlusColor(I)V

    return-void
.end method
