.class public final Le/a/b0/a/c/a/c;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Ls1/g;

.field public final d:F

.field public e:Landroid/graphics/RectF;

.field public final f:Le/a/p5/h0;


# direct methods
.method public constructor <init>(FLandroid/graphics/RectF;Le/a/p5/h0;)V
    .locals 1

    const-string v0, "margin"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput p1, p0, Le/a/b0/a/c/a/c;->d:F

    iput-object p2, p0, Le/a/b0/a/c/a/c;->e:Landroid/graphics/RectF;

    iput-object p3, p0, Le/a/b0/a/c/a/c;->f:Le/a/p5/h0;

    .line 2
    new-instance p1, Le/a/b0/a/c/a/c$c;

    invoke-direct {p1, p0}, Le/a/b0/a/c/a/c$c;-><init>(Le/a/b0/a/c/a/c;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/b0/a/c/a/c;->a:Ls1/g;

    .line 3
    new-instance p1, Le/a/b0/a/c/a/c$a;

    invoke-direct {p1, p0}, Le/a/b0/a/c/a/c$a;-><init>(Le/a/b0/a/c/a/c;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/b0/a/c/a/c;->b:Ls1/g;

    .line 4
    new-instance p1, Le/a/b0/a/c/a/c$b;

    invoke-direct {p1, p0}, Le/a/b0/a/c/a/c$b;-><init>(Le/a/b0/a/c/a/c;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/b0/a/c/a/c;->c:Ls1/g;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/b0/a/c/a/c;->c:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Paint;

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 4
    iget-object v0, p0, Le/a/b0/a/c/a/c;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 4
    iget v2, p0, Le/a/b0/a/c/a/c;->d:F

    int-to-float v0, v0

    mul-float/2addr v2, v0

    const/16 v3, 0x16

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    float-to-int v0, v0

    int-to-float v1, v1

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    float-to-int v1, v1

    .line 5
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 7
    iget-object p1, p0, Le/a/b0/a/c/a/c;->e:Landroid/graphics/RectF;

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 9
    iget p1, v2, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    add-int/2addr v1, p1

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 10
    iget p1, v2, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v4

    add-int/2addr v1, p1

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 11
    iget p1, v2, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v1

    sub-int/2addr p1, v3

    iput p1, v2, Landroid/graphics/Rect;->right:I

    .line 12
    iget p1, v2, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v0

    sub-int/2addr p1, v4

    iput p1, v2, Landroid/graphics/Rect;->bottom:I

    .line 13
    iget-object p1, p0, Le/a/b0/a/c/a/c;->a:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    const-string v0, "icon"

    .line 14
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

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
