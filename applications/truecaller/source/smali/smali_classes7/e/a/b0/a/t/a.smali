.class public Le/a/b0/a/t/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public final c:Landroid/graphics/Paint;

.field public final d:I

.field public final e:I

.field public final f:I

.field public g:Landroid/graphics/Paint;

.field public final h:Landroid/graphics/Paint;

.field public final i:Landroid/graphics/Rect;

.field public j:I

.field public final k:Landroid/graphics/RectF;

.field public final l:Landroid/graphics/RectF;

.field public final m:I


# direct methods
.method public constructor <init>(IIIIIFIII)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Le/a/b0/a/t/a;->i:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Le/a/b0/a/t/a;->j:I

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Le/a/b0/a/t/a;->c:Landroid/graphics/Paint;

    .line 5
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p4, 0x1

    .line 6
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-lez p7, :cond_0

    .line 8
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Le/a/b0/a/t/a;->g:Landroid/graphics/Paint;

    .line 9
    invoke-virtual {v0, p8}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    iget-object p8, p0, Le/a/b0/a/t/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p8, p4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 11
    iget-object p8, p0, Le/a/b0/a/t/a;->g:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    iget-object p8, p0, Le/a/b0/a/t/a;->g:Landroid/graphics/Paint;

    int-to-float p7, p7

    invoke-virtual {p8, p7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 13
    :cond_0
    new-instance p7, Landroid/graphics/Paint;

    invoke-direct {p7}, Landroid/graphics/Paint;-><init>()V

    iput-object p7, p0, Le/a/b0/a/t/a;->h:Landroid/graphics/Paint;

    .line 14
    invoke-virtual {p7, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    sget-object p5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p7, p5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 16
    invoke-virtual {p7, p6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 17
    invoke-virtual {p7, p4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 18
    sget-object p4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p7, p4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 19
    iput p1, p0, Le/a/b0/a/t/a;->d:I

    .line 20
    iput p2, p0, Le/a/b0/a/t/a;->e:I

    .line 21
    iput p3, p0, Le/a/b0/a/t/a;->f:I

    .line 22
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Le/a/b0/a/t/a;->k:Landroid/graphics/RectF;

    .line 23
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Le/a/b0/a/t/a;->l:Landroid/graphics/RectF;

    .line 24
    iput p9, p0, Le/a/b0/a/t/a;->m:I

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/b0/a/t/a;->l:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 2
    iget-object p2, p0, Le/a/b0/a/t/a;->l:Landroid/graphics/RectF;

    .line 3
    iget-boolean v0, p0, Le/a/b0/a/t/a;->a:Z

    if-nez v0, :cond_0

    iget v1, p0, Le/a/b0/a/t/a;->j:I

    if-gtz v1, :cond_0

    iget-boolean v1, p0, Le/a/b0/a/t/a;->b:Z

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz v0, :cond_1

    const-string v0, "!"

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p0, Le/a/b0/a/t/a;->j:I

    const/16 v1, 0x63

    if-gt v0, v1, :cond_2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "99+"

    .line 5
    :goto_0
    iget-boolean v1, p0, Le/a/b0/a/t/a;->a:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    iget v1, p0, Le/a/b0/a/t/a;->j:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_4

    :goto_1
    iget v1, p0, Le/a/b0/a/t/a;->e:I

    goto :goto_2

    :cond_4
    iget v1, p0, Le/a/b0/a/t/a;->f:I

    .line 6
    :goto_2
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 7
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 8
    iget v4, p0, Le/a/b0/a/t/a;->m:I

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v4, :cond_6

    const/4 v6, 0x1

    if-eq v4, v6, :cond_5

    goto/16 :goto_4

    .line 9
    :cond_5
    iget-object v4, p0, Le/a/b0/a/t/a;->k:Landroid/graphics/RectF;

    iget v6, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v2

    int-to-float v1, v1

    sub-float/2addr v6, v1

    const/high16 v1, 0x41200000    # 10.0f

    add-float/2addr v6, v1

    iget v2, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v1

    iget v7, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v7, v1

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p2, v3

    iget v3, p0, Le/a/b0/a/t/a;->d:I

    int-to-float v3, v3

    add-float/2addr p2, v3

    sub-float/2addr p2, v1

    invoke-virtual {v4, v6, v2, v7, p2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_3

    .line 10
    :cond_6
    iget-object v4, p0, Le/a/b0/a/t/a;->k:Landroid/graphics/RectF;

    iget v6, p2, Landroid/graphics/RectF;->left:F

    int-to-float v1, v1

    sub-float/2addr v2, v1

    div-float/2addr v2, v5

    add-float/2addr v6, v2

    iget v1, p2, Landroid/graphics/RectF;->top:F

    iget v7, p0, Le/a/b0/a/t/a;->d:I

    int-to-float v7, v7

    sub-float/2addr v3, v7

    div-float/2addr v3, v5

    add-float/2addr v1, v3

    iget v7, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v7, v2

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p2, v3

    invoke-virtual {v4, v6, v1, v7, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 11
    :goto_3
    iget-object p2, p0, Le/a/b0/a/t/a;->k:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    iget-object v1, p0, Le/a/b0/a/t/a;->k:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 12
    iget-object v1, p0, Le/a/b0/a/t/a;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Le/a/b0/a/t/a;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p2, p2, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 13
    iget-object v1, p0, Le/a/b0/a/t/a;->g:Landroid/graphics/Paint;

    if-eqz v1, :cond_7

    .line 14
    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    div-float/2addr v1, v5

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v1, v2

    .line 15
    iget-object v2, p0, Le/a/b0/a/t/a;->k:Landroid/graphics/RectF;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 16
    iget-object v2, p0, Le/a/b0/a/t/a;->k:Landroid/graphics/RectF;

    sub-float/2addr p2, v1

    iget-object v1, p0, Le/a/b0/a/t/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, p2, p2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 17
    :cond_7
    iget-boolean p2, p0, Le/a/b0/a/t/a;->b:Z

    if-eqz p2, :cond_8

    goto :goto_4

    .line 18
    :cond_8
    iget-object p2, p0, Le/a/b0/a/t/a;->h:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Le/a/b0/a/t/a;->i:Landroid/graphics/Rect;

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 19
    iget-object p2, p0, Le/a/b0/a/t/a;->k:Landroid/graphics/RectF;

    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    div-float/2addr v1, v5

    .line 20
    iget v2, p2, Landroid/graphics/RectF;->top:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, p2

    div-float/2addr v2, v5

    iget-object p2, p0, Le/a/b0/a/t/a;->i:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    add-float/2addr v2, p2

    .line 21
    iget-object p2, p0, Le/a/b0/a/t/a;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_4
    return-void
.end method
