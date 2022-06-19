.class public Lcom/truecaller/ui/components/CircularImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# instance fields
.field public c:Z

.field public d:I

.field public e:Ljava/lang/String;

.field public f:I

.field public g:F

.field public h:Landroid/graphics/Typeface;

.field public i:Landroid/graphics/BitmapShader;

.field public j:Landroid/graphics/Bitmap;

.field public k:Landroid/graphics/Paint;

.field public l:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040101

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/truecaller/ui/components/CircularImageView;->k:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x106000b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/truecaller/ui/components/CircularImageView;->f:I

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700f3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/truecaller/ui/components/CircularImageView;->g:F

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/truecaller/ui/components/CircularImageView;->c:Z

    const-string p2, "sans-serif-light"

    .line 7
    invoke-static {p2, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/ui/components/CircularImageView;->h:Landroid/graphics/Typeface;

    if-nez p2, :cond_0

    const-string p2, "sans-serif"

    .line 8
    invoke-static {p2, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/ui/components/CircularImageView;->h:Landroid/graphics/Typeface;

    :cond_0
    return-void
.end method


# virtual methods
.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/components/CircularImageView;->j:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/truecaller/ui/components/CircularImageView;->i:Landroid/graphics/BitmapShader;

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-eq v0, v1, :cond_1

    .line 4
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/truecaller/ui/components/CircularImageView;->j:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/truecaller/ui/components/CircularImageView;->d:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/truecaller/ui/components/CircularImageView;->i:Landroid/graphics/BitmapShader;

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/truecaller/ui/components/CircularImageView;->j:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/truecaller/ui/components/CircularImageView;->i:Landroid/graphics/BitmapShader;

    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/ui/components/CircularImageView;->invalidate()V

    .line 5
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final e()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/ui/components/CircularImageView;->d:I

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/ui/components/CircularImageView;->d()V

    :cond_0
    return-void
.end method

.method public invalidate()V
    .locals 0

    .line 5
    invoke-super {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 6
    invoke-virtual {p0}, Lcom/truecaller/ui/components/CircularImageView;->e()V

    return-void
.end method

.method public invalidate(IIII)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->invalidate(IIII)V

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/ui/components/CircularImageView;->e()V

    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidate(Landroid/graphics/Rect;)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/ui/components/CircularImageView;->e()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/components/CircularImageView;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/truecaller/ui/components/CircularImageView;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/ui/components/CircularImageView;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    .line 2
    :cond_1
    iget v0, p0, Lcom/truecaller/ui/components/CircularImageView;->d:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/truecaller/ui/components/CircularImageView;->d:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/truecaller/ui/components/CircularImageView;->d:I

    if-ge v1, v2, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/truecaller/ui/components/CircularImageView;->d:I

    .line 6
    :cond_2
    iget v1, p0, Lcom/truecaller/ui/components/CircularImageView;->d:I

    if-eq v0, v1, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/truecaller/ui/components/CircularImageView;->d()V

    :cond_3
    const/4 v0, 0x0

    .line 8
    iget v1, p0, Lcom/truecaller/ui/components/CircularImageView;->d:I

    div-int/lit8 v1, v1, 0x2

    .line 9
    iget-boolean v2, p0, Lcom/truecaller/ui/components/CircularImageView;->c:Z

    if-eqz v2, :cond_4

    .line 10
    iget-object v0, p0, Lcom/truecaller/ui/components/CircularImageView;->l:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    float-to-int v0, v0

    int-to-float v2, v1

    .line 11
    iget v3, p0, Lcom/truecaller/ui/components/CircularImageView;->d:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v0

    int-to-float v3, v3

    iget-object v4, p0, Lcom/truecaller/ui/components/CircularImageView;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 12
    :cond_4
    iget-object v2, p0, Lcom/truecaller/ui/components/CircularImageView;->j:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 13
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-eq v2, v4, :cond_5

    .line 14
    iget-object v2, p0, Lcom/truecaller/ui/components/CircularImageView;->k:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/truecaller/ui/components/CircularImageView;->i:Landroid/graphics/BitmapShader;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    int-to-float v2, v1

    .line 15
    iget v4, p0, Lcom/truecaller/ui/components/CircularImageView;->d:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/truecaller/ui/components/CircularImageView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 16
    :cond_5
    iget-object v2, p0, Lcom/truecaller/ui/components/CircularImageView;->k:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    add-int v2, v1, v0

    .line 17
    iget-object v4, p0, Lcom/truecaller/ui/components/CircularImageView;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 18
    iget-object v5, p0, Lcom/truecaller/ui/components/CircularImageView;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v4, v2, v4

    sub-int/2addr v2, v5

    .line 19
    iget-object v5, p0, Lcom/truecaller/ui/components/CircularImageView;->j:Landroid/graphics/Bitmap;

    int-to-float v4, v4

    int-to-float v2, v2

    iget-object v6, p0, Lcom/truecaller/ui/components/CircularImageView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v4, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 20
    :cond_6
    :goto_0
    iget-object v2, p0, Lcom/truecaller/ui/components/CircularImageView;->e:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 21
    iget-object v2, p0, Lcom/truecaller/ui/components/CircularImageView;->k:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 22
    iget-object v2, p0, Lcom/truecaller/ui/components/CircularImageView;->k:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/truecaller/ui/components/CircularImageView;->h:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    add-int/2addr v1, v0

    .line 23
    iget-object v0, p0, Lcom/truecaller/ui/components/CircularImageView;->k:Landroid/graphics/Paint;

    iget v2, p0, Lcom/truecaller/ui/components/CircularImageView;->g:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 24
    iget-object v0, p0, Lcom/truecaller/ui/components/CircularImageView;->k:Landroid/graphics/Paint;

    iget v2, p0, Lcom/truecaller/ui/components/CircularImageView;->f:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    iget-object v0, p0, Lcom/truecaller/ui/components/CircularImageView;->k:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/truecaller/ui/components/CircularImageView;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 26
    iget-object v2, p0, Lcom/truecaller/ui/components/CircularImageView;->k:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 27
    iget-object v3, p0, Lcom/truecaller/ui/components/CircularImageView;->e:Ljava/lang/String;

    int-to-float v1, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    sub-float v0, v1, v0

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/truecaller/ui/components/CircularImageView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_7
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/components/CircularImageView;->l:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/components/CircularImageView;->l:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    int-to-float p1, p1

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method public setHasBorder(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/truecaller/ui/components/CircularImageView;->c:Z

    .line 2
    iget-object p1, p0, Lcom/truecaller/ui/components/CircularImageView;->l:Landroid/graphics/Paint;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/truecaller/ui/components/CircularImageView;->l:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5
    iget-object p1, p0, Lcom/truecaller/ui/components/CircularImageView;->l:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Lcom/truecaller/ui/components/CircularImageView;->setText(Ljava/lang/String;)V

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/truecaller/ui/components/CircularImageView;->j:Landroid/graphics/Bitmap;

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/ui/components/CircularImageView;->invalidate()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-static {p1}, Le/a/b0/q/o;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/truecaller/ui/components/CircularImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    sget-object v1, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 3
    invoke-static {v0, p1}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 4
    invoke-static {p1}, Le/a/b0/q/o;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/truecaller/ui/components/CircularImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/ui/components/CircularImageView;->e:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/ui/components/CircularImageView;->invalidate()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/ui/components/CircularImageView;->f:I

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/ui/components/CircularImageView;->h:Landroid/graphics/Typeface;

    return-void
.end method
