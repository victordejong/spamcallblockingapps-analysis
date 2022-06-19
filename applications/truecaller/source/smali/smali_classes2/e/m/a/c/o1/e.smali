.class public final Le/m/a/c/o1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:F

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:Landroid/text/StaticLayout;

.field public G:I

.field public H:I

.field public I:I

.field public J:Landroid/graphics/Rect;

.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:Landroid/text/TextPaint;

.field public final g:Landroid/graphics/Paint;

.field public h:Ljava/lang/CharSequence;

.field public i:Landroid/text/Layout$Alignment;

.field public j:Landroid/graphics/Bitmap;

.field public k:F

.field public l:I

.field public m:I

.field public n:F

.field public o:I

.field public p:F

.field public q:F

.field public r:Z

.field public s:Z

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v1, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Le/m/a/c/o1/e;->e:F

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Le/m/a/c/o1/e;->d:F

    .line 6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 9
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    .line 10
    iput p1, p0, Le/m/a/c/o1/e;->a:F

    .line 11
    iput p1, p0, Le/m/a/c/o1/e;->b:F

    .line 12
    iput p1, p0, Le/m/a/c/o1/e;->c:F

    .line 13
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Le/m/a/c/o1/e;->f:Landroid/text/TextPaint;

    .line 14
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 15
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    .line 16
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Le/m/a/c/o1/e;->g:Landroid/graphics/Paint;

    .line 17
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 18
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1010217
        0x1010218
    .end array-data
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Z)V
    .locals 8

    if-eqz p2, :cond_9

    .line 1
    iget-object p2, p0, Le/m/a/c/o1/e;->F:Landroid/text/StaticLayout;

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 3
    iget v1, p0, Le/m/a/c/o1/e;->G:I

    int-to-float v1, v1

    iget v2, p0, Le/m/a/c/o1/e;->H:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4
    iget v1, p0, Le/m/a/c/o1/e;->v:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-lez v1, :cond_1

    .line 5
    iget-object v1, p0, Le/m/a/c/o1/e;->g:Landroid/graphics/Paint;

    iget v2, p0, Le/m/a/c/o1/e;->v:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget v1, p0, Le/m/a/c/o1/e;->I:I

    neg-int v1, v1

    int-to-float v3, v1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    iget v2, p0, Le/m/a/c/o1/e;->I:I

    add-int/2addr v1, v2

    int-to-float v5, v1

    invoke-virtual {p2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    int-to-float v6, v1

    iget-object v7, p0, Le/m/a/c/o1/e;->g:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 7
    :cond_1
    iget v1, p0, Le/m/a/c/o1/e;->x:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 8
    iget-object v1, p0, Le/m/a/c/o1/e;->f:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 9
    iget-object v1, p0, Le/m/a/c/o1/e;->f:Landroid/text/TextPaint;

    iget v3, p0, Le/m/a/c/o1/e;->a:F

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 10
    iget-object v1, p0, Le/m/a/c/o1/e;->f:Landroid/text/TextPaint;

    iget v3, p0, Le/m/a/c/o1/e;->w:I

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 11
    iget-object v1, p0, Le/m/a/c/o1/e;->f:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    invoke-virtual {p2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_2
    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    .line 13
    iget-object v1, p0, Le/m/a/c/o1/e;->f:Landroid/text/TextPaint;

    iget v3, p0, Le/m/a/c/o1/e;->b:F

    iget v4, p0, Le/m/a/c/o1/e;->c:F

    iget v5, p0, Le/m/a/c/o1/e;->w:I

    invoke-virtual {v1, v3, v4, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_2

    :cond_3
    const/4 v4, 0x3

    if-eq v1, v4, :cond_4

    const/4 v5, 0x4

    if-ne v1, v5, :cond_8

    :cond_4
    if-ne v1, v4, :cond_5

    goto :goto_0

    :cond_5
    move v3, v2

    :goto_0
    const/4 v1, -0x1

    if-eqz v3, :cond_6

    move v4, v1

    goto :goto_1

    .line 14
    :cond_6
    iget v4, p0, Le/m/a/c/o1/e;->w:I

    :goto_1
    if-eqz v3, :cond_7

    .line 15
    iget v1, p0, Le/m/a/c/o1/e;->w:I

    .line 16
    :cond_7
    iget v3, p0, Le/m/a/c/o1/e;->b:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    .line 17
    iget-object v5, p0, Le/m/a/c/o1/e;->f:Landroid/text/TextPaint;

    iget v6, p0, Le/m/a/c/o1/e;->t:I

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 18
    iget-object v5, p0, Le/m/a/c/o1/e;->f:Landroid/text/TextPaint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 19
    iget-object v5, p0, Le/m/a/c/o1/e;->f:Landroid/text/TextPaint;

    iget v6, p0, Le/m/a/c/o1/e;->b:F

    neg-float v7, v3

    invoke-virtual {v5, v6, v7, v7, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 20
    invoke-virtual {p2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 21
    iget-object v4, p0, Le/m/a/c/o1/e;->f:Landroid/text/TextPaint;

    iget v5, p0, Le/m/a/c/o1/e;->b:F

    invoke-virtual {v4, v5, v3, v3, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 22
    :cond_8
    :goto_2
    iget-object v1, p0, Le/m/a/c/o1/e;->f:Landroid/text/TextPaint;

    iget v3, p0, Le/m/a/c/o1/e;->t:I

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 23
    iget-object v1, p0, Le/m/a/c/o1/e;->f:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24
    invoke-virtual {p2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 25
    iget-object p2, p0, Le/m/a/c/o1/e;->f:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1, v1, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 26
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_3

    .line 27
    :cond_9
    iget-object p2, p0, Le/m/a/c/o1/e;->J:Landroid/graphics/Rect;

    .line 28
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object p2, p0, Le/m/a/c/o1/e;->j:Landroid/graphics/Bitmap;

    .line 30
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object p2, p0, Le/m/a/c/o1/e;->j:Landroid/graphics/Bitmap;

    iget-object v0, p0, Le/m/a/c/o1/e;->J:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_3
    return-void
.end method
