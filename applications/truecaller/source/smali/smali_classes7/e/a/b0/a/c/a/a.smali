.class public final Le/a/b0/a/c/a/a;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public final c:Ls1/g;

.field public final d:Ls1/g;

.field public final e:F

.field public f:Landroid/graphics/RectF;

.field public final g:I

.field public final h:I

.field public final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(FLandroid/graphics/RectF;IILjava/lang/String;)V
    .locals 1

    const-string v0, "margin"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "letter"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput p1, p0, Le/a/b0/a/c/a/a;->e:F

    iput-object p2, p0, Le/a/b0/a/c/a/a;->f:Landroid/graphics/RectF;

    iput p3, p0, Le/a/b0/a/c/a/a;->g:I

    iput p4, p0, Le/a/b0/a/c/a/a;->h:I

    iput-object p5, p0, Le/a/b0/a/c/a/a;->i:Ljava/lang/String;

    .line 2
    new-instance p1, Le/a/b0/a/c/a/a$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Le/a/b0/a/c/a/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/b0/a/c/a/a;->c:Ls1/g;

    .line 3
    new-instance p1, Le/a/b0/a/c/a/a$a;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Le/a/b0/a/c/a/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/b0/a/c/a/a;->d:Ls1/g;

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Le/a/b0/a/c/a/a;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/b0/a/c/a/a;->c:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Paint;

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 4
    iget-object v0, p0, Le/a/b0/a/c/a/a;->i:Ljava/lang/String;

    iget v1, p0, Le/a/b0/a/c/a/a;->a:F

    iget v2, p0, Le/a/b0/a/c/a/a;->b:F

    invoke-virtual {p0}, Le/a/b0/a/c/a/a;->a()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/a/b0/a/c/a/a;->a()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Le/a/b0/a/c/a/a;->e:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/16 v2, 0x16

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    iget-object v0, p0, Le/a/b0/a/c/a/a;->f:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v3

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v0

    iput v1, p0, Le/a/b0/a/c/a/a;->a:F

    .line 4
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    add-float/2addr p1, v0

    invoke-virtual {p0}, Le/a/b0/a/c/a/a;->a()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    invoke-virtual {p0}, Le/a/b0/a/c/a/a;->a()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    add-float/2addr v1, v0

    div-float/2addr v1, v2

    sub-float/2addr p1, v1

    iget-object v0, p0, Le/a/b0/a/c/a/a;->f:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, v1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, v0

    iput p1, p0, Le/a/b0/a/c/a/a;->b:F

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
