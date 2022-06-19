.class public Lcom/truecaller/ui/view/ThemeSelectorView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/RectF;

.field public d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/truecaller/ui/view/ThemeSelectorView;->a:Landroid/graphics/Paint;

    .line 3
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/truecaller/ui/view/ThemeSelectorView;->b:Landroid/graphics/Paint;

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/truecaller/ui/view/ThemeSelectorView;->c:Landroid/graphics/RectF;

    const/high16 v0, -0x10000

    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result v1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result v3

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result v2

    .line 10
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v4, v1

    iput v4, p0, Lcom/truecaller/ui/view/ThemeSelectorView;->d:I

    int-to-float v1, v1

    int-to-float v3, v3

    int-to-float v2, v2

    const/high16 v4, 0x30000000

    .line 11
    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 12
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const p1, -0xffff01

    .line 13
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    add-int/2addr v3, v2

    sub-int/2addr v0, v3

    add-int/2addr v5, v4

    sub-int/2addr v1, v5

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v5, p0, Lcom/truecaller/ui/view/ThemeSelectorView;->d:I

    sub-int/2addr v3, v5

    .line 9
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    .line 10
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v4

    int-to-float v2, v0

    int-to-float v4, v1

    int-to-float v5, v3

    .line 11
    iget-object v6, p0, Lcom/truecaller/ui/view/ThemeSelectorView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 12
    iget-object v2, p0, Lcom/truecaller/ui/view/ThemeSelectorView;->c:Landroid/graphics/RectF;

    sub-int v4, v0, v3

    int-to-float v4, v4

    sub-int v5, v1, v3

    int-to-float v5, v5

    add-int/2addr v0, v3

    int-to-float v0, v0

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v2, v4, v5, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 13
    iget-object v7, p0, Lcom/truecaller/ui/view/ThemeSelectorView;->c:Landroid/graphics/RectF;

    iget-object v11, p0, Lcom/truecaller/ui/view/ThemeSelectorView;->b:Landroid/graphics/Paint;

    const/high16 v8, -0x3d4c0000    # -90.0f

    const/high16 v9, 0x43340000    # 180.0f

    const/4 v10, 0x1

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public setLeftColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/view/ThemeSelectorView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setRightColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/view/ThemeSelectorView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
