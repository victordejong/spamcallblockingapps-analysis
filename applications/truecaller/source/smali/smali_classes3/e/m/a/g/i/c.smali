.class public Le/m/a/g/i/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/g/i/c$a;
    }
.end annotation


# instance fields
.field public final a:Le/m/a/g/i/c$a;

.field public final b:Landroid/view/View;

.field public final c:Landroid/graphics/Path;

.field public final d:Landroid/graphics/Paint;

.field public final e:Landroid/graphics/Paint;

.field public f:Le/m/a/g/i/d$e;

.field public g:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Le/m/a/g/i/c$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/g/i/c;->a:Le/m/a/g/i/c$a;

    .line 3
    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Le/m/a/g/i/c;->b:Landroid/view/View;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 5
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Le/m/a/g/i/c;->c:Landroid/graphics/Path;

    .line 6
    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Le/m/a/g/i/c;->d:Landroid/graphics/Paint;

    .line 7
    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Le/m/a/g/i/c;->e:Landroid/graphics/Paint;

    .line 8
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Le/m/a/g/i/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/m/a/g/i/c;->a:Le/m/a/g/i/c$a;

    invoke-interface {v0, p1}, Le/m/a/g/i/c$a;->b(Landroid/graphics/Canvas;)V

    .line 3
    invoke-virtual {p0}, Le/m/a/g/i/c;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    iget-object v0, p0, Le/m/a/g/i/c;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Le/m/a/g/i/c;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Le/m/a/g/i/c;->e:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Le/m/a/g/i/c;->a:Le/m/a/g/i/c$a;

    invoke-interface {v0, p1}, Le/m/a/g/i/c$a;->b(Landroid/graphics/Canvas;)V

    .line 6
    invoke-virtual {p0}, Le/m/a/g/i/c;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 7
    iget-object v0, p0, Le/m/a/g/i/c;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Le/m/a/g/i/c;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Le/m/a/g/i/c;->e:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Le/m/a/g/i/c;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v1, p0, Le/m/a/g/i/c;->f:Le/m/a/g/i/d$e;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 10
    iget-object v1, p0, Le/m/a/g/i/c;->f:Le/m/a/g/i/d$e;

    iget v1, v1, Le/m/a/g/i/d$e;->a:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 11
    iget-object v2, p0, Le/m/a/g/i/c;->f:Le/m/a/g/i/d$e;

    iget v2, v2, Le/m/a/g/i/d$e;->b:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    sub-float/2addr v2, v0

    .line 12
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13
    iget-object v0, p0, Le/m/a/g/i/c;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v0, v1

    neg-float v1, v2

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    return-void
.end method

.method public final b(Le/m/a/g/i/d$e;)F
    .locals 6

    .line 1
    iget v0, p1, Le/m/a/g/i/d$e;->a:F

    iget v1, p1, Le/m/a/g/i/d$e;->b:F

    iget-object p1, p0, Le/m/a/g/i/c;->b:Landroid/view/View;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float v4, p1

    iget-object p1, p0, Le/m/a/g/i/c;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float v5, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    invoke-static/range {v0 .. v5}, Ln3/g0/y;->N(FFFFFF)F

    move-result p1

    return p1
.end method

.method public c()Le/m/a/g/i/d$e;
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/g/i/c;->f:Le/m/a/g/i/d$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v1, Le/m/a/g/i/d$e;

    .line 3
    iget v2, v0, Le/m/a/g/i/d$e;->a:F

    iget v3, v0, Le/m/a/g/i/d$e;->b:F

    iget v0, v0, Le/m/a/g/i/d$e;->c:F

    invoke-direct {v1, v2, v3, v0}, Le/m/a/g/i/d$e;-><init>(FFF)V

    .line 4
    iget v0, v1, Le/m/a/g/i/d$e;->c:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0, v1}, Le/m/a/g/i/c;->b(Le/m/a/g/i/d$e;)F

    move-result v0

    iput v0, v1, Le/m/a/g/i/d$e;->c:F

    :cond_2
    return-object v1
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/i/c;->a:Le/m/a/g/i/c$a;

    invoke-interface {v0}, Le/m/a/g/i/c$a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/m/a/g/i/c;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(Le/m/a/g/i/d$e;)V
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Le/m/a/g/i/c;->f:Le/m/a/g/i/d$e;

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Le/m/a/g/i/c;->f:Le/m/a/g/i/d$e;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Le/m/a/g/i/d$e;

    .line 4
    iget v1, p1, Le/m/a/g/i/d$e;->a:F

    iget v2, p1, Le/m/a/g/i/d$e;->b:F

    iget v3, p1, Le/m/a/g/i/d$e;->c:F

    invoke-direct {v0, v1, v2, v3}, Le/m/a/g/i/d$e;-><init>(FFF)V

    .line 5
    iput-object v0, p0, Le/m/a/g/i/c;->f:Le/m/a/g/i/d$e;

    goto :goto_0

    .line 6
    :cond_1
    iget v1, p1, Le/m/a/g/i/d$e;->a:F

    iget v2, p1, Le/m/a/g/i/d$e;->b:F

    iget v3, p1, Le/m/a/g/i/d$e;->c:F

    .line 7
    iput v1, v0, Le/m/a/g/i/d$e;->a:F

    .line 8
    iput v2, v0, Le/m/a/g/i/d$e;->b:F

    .line 9
    iput v3, v0, Le/m/a/g/i/d$e;->c:F

    .line 10
    :goto_0
    iget v0, p1, Le/m/a/g/i/d$e;->c:F

    .line 11
    invoke-virtual {p0, p1}, Le/m/a/g/i/c;->b(Le/m/a/g/i/d$e;)F

    move-result p1

    const v1, 0x38d1b717    # 1.0E-4f

    add-float/2addr v0, v1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 12
    iget-object p1, p0, Le/m/a/g/i/c;->f:Le/m/a/g/i/d$e;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p1, Le/m/a/g/i/d$e;->c:F

    .line 13
    :cond_3
    :goto_2
    iget-object p1, p0, Le/m/a/g/i/c;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final f()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/g/i/c;->f:Le/m/a/g/i/d$e;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget v0, v0, Le/m/a/g/i/d$e;->c:F

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    xor-int/lit8 v0, v2, 0x1

    return v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/i/c;->e:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
