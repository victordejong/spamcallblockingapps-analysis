.class public Le/a/e/m0;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/e/m0$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:Landroid/graphics/Paint;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/e/m0$b;Le/a/e/m0$a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    iget-boolean p3, p2, Le/a/e/m0$b;->b:Z

    if-eqz p3, :cond_0

    const p3, 0x7f040056

    goto :goto_0

    :cond_0
    const p3, 0x7f040057

    .line 3
    :goto_0
    invoke-static {p1, p3}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p3

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Le/a/e/m0;->a:Landroid/graphics/Paint;

    .line 5
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Le/a/e/m0;->b:Landroid/graphics/Paint;

    const/4 v0, -0x1

    .line 7
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget p3, p2, Le/a/e/m0$b;->e:I

    int-to-float p3, p3

    .line 9
    invoke-static {p1, p3}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result p3

    iput p3, p0, Le/a/e/m0;->c:I

    .line 10
    iget-boolean p3, p2, Le/a/e/m0$b;->d:Z

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    .line 11
    iget p3, p2, Le/a/e/m0$b;->e:I

    add-int/2addr p3, v1

    int-to-float p3, p3

    .line 12
    invoke-static {p1, p3}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result p3

    iput p3, p0, Le/a/e/m0;->d:I

    goto :goto_1

    .line 13
    :cond_1
    iput v2, p0, Le/a/e/m0;->d:I

    .line 14
    :goto_1
    iget p3, p2, Le/a/e/m0$b;->f:I

    if-lez p3, :cond_2

    int-to-float p3, p3

    .line 15
    invoke-static {p1, p3}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result v0

    :cond_2
    iput v0, p0, Le/a/e/m0;->e:I

    .line 16
    iget-boolean p2, p2, Le/a/e/m0$b;->c:Z

    if-eqz p2, :cond_3

    const/4 p2, 0x6

    int-to-float p2, p2

    .line 17
    invoke-static {p1, p2}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Le/a/e/m0;->f:I

    goto :goto_2

    .line 18
    :cond_3
    iput v2, p0, Le/a/e/m0;->f:I

    :goto_2
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    iget v2, p0, Le/a/e/m0;->f:I

    sub-int/2addr v1, v2

    .line 3
    iget v2, p0, Le/a/e/m0;->c:I

    div-int/lit8 v2, v2, 0x2

    .line 4
    iget v3, p0, Le/a/e/m0;->d:I

    if-lez v3, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    iget v5, p0, Le/a/e/m0;->d:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Le/a/e/m0;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float v2, v2

    iget-object v3, p0, Le/a/e/m0;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 1
    iget v0, p0, Le/a/e/m0;->e:I

    if-lez v0, :cond_0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Le/a/e/m0;->c:I

    iget v1, p0, Le/a/e/m0;->f:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    return v1
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/e/m0;->e:I

    if-lez v0, :cond_0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Le/a/e/m0;->c:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/m0;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/m0;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
