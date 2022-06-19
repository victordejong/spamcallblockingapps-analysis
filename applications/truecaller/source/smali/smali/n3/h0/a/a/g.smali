.class public Ln3/h0/a/a/g;
.super Ln3/h0/a/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/h0/a/a/g$c;,
        Ln3/h0/a/a/g$b;,
        Ln3/h0/a/a/g$f;,
        Ln3/h0/a/a/g$d;,
        Ln3/h0/a/a/g$e;,
        Ln3/h0/a/a/g$g;,
        Ln3/h0/a/a/g$h;,
        Ln3/h0/a/a/g$i;
    }
.end annotation


# static fields
.field public static final j:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field public b:Ln3/h0/a/a/g$h;

.field public c:Landroid/graphics/PorterDuffColorFilter;

.field public d:Landroid/graphics/ColorFilter;

.field public e:Z

.field public f:Z

.field public final g:[F

.field public final h:Landroid/graphics/Matrix;

.field public final i:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Ln3/h0/a/a/g;->j:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/h0/a/a/f;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ln3/h0/a/a/g;->f:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 3
    iput-object v0, p0, Ln3/h0/a/a/g;->g:[F

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ln3/h0/a/a/g;->h:Landroid/graphics/Matrix;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ln3/h0/a/a/g;->i:Landroid/graphics/Rect;

    .line 6
    new-instance v0, Ln3/h0/a/a/g$h;

    invoke-direct {v0}, Ln3/h0/a/a/g$h;-><init>()V

    iput-object v0, p0, Ln3/h0/a/a/g;->b:Ln3/h0/a/a/g$h;

    return-void
.end method

.method public constructor <init>(Ln3/h0/a/a/g$h;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ln3/h0/a/a/f;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Ln3/h0/a/a/g;->f:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 9
    iput-object v0, p0, Ln3/h0/a/a/g;->g:[F

    .line 10
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ln3/h0/a/a/g;->h:Landroid/graphics/Matrix;

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ln3/h0/a/a/g;->i:Landroid/graphics/Rect;

    .line 12
    iput-object p1, p0, Ln3/h0/a/a/g;->b:Ln3/h0/a/a/g$h;

    .line 13
    iget-object v0, p1, Ln3/h0/a/a/g$h;->c:Landroid/content/res/ColorStateList;

    iget-object p1, p1, Ln3/h0/a/a/g$h;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, p1}, Ln3/h0/a/a/g;->b(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Ln3/h0/a/a/g;->c:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method public static a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Ln3/h0/a/a/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ln3/h0/a/a/g;

    invoke-direct {v0}, Ln3/h0/a/a/g;-><init>()V

    .line 2
    invoke-virtual {v0, p0, p1, p2, p3}, Ln3/h0/a/a/g;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method


# virtual methods
.method public b(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ln3/h0/a/a/f;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 2
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public canApplyTheme()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/h0/a/a/g;->i:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 4
    iget-object v0, p0, Ln3/h0/a/a/g;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_11

    iget-object v0, p0, Ln3/h0/a/a/g;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_1

    goto/16 :goto_5

    .line 5
    :cond_1
    iget-object v0, p0, Ln3/h0/a/a/g;->d:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_2

    iget-object v0, p0, Ln3/h0/a/a/g;->c:Landroid/graphics/PorterDuffColorFilter;

    .line 6
    :cond_2
    iget-object v1, p0, Ln3/h0/a/a/g;->h:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 7
    iget-object v1, p0, Ln3/h0/a/a/g;->h:Landroid/graphics/Matrix;

    iget-object v2, p0, Ln3/h0/a/a/g;->g:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 8
    iget-object v1, p0, Ln3/h0/a/a/g;->g:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 9
    iget-object v3, p0, Ln3/h0/a/a/g;->g:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 10
    iget-object v4, p0, Ln3/h0/a/a/g;->g:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 11
    iget-object v6, p0, Ln3/h0/a/a/g;->g:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    const/high16 v8, 0x3f800000    # 1.0f

    if-nez v4, :cond_3

    cmpl-float v4, v6, v7

    if-eqz v4, :cond_4

    :cond_3
    move v1, v8

    move v3, v1

    .line 12
    :cond_4
    iget-object v4, p0, Ln3/h0/a/a/g;->i:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v1, v4

    .line 13
    iget-object v4, p0, Ln3/h0/a/a/g;->i:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    const/16 v4, 0x800

    .line 14
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 15
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lez v1, :cond_11

    if-gtz v3, :cond_5

    goto/16 :goto_5

    .line 16
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 17
    iget-object v6, p0, Ln3/h0/a/a/g;->i:Landroid/graphics/Rect;

    iget v9, v6, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {p1, v9, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 18
    invoke-virtual {p0}, Ln3/h0/a/a/g;->isAutoMirrored()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 19
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v6

    if-ne v6, v5, :cond_6

    move v6, v5

    goto :goto_0

    :cond_6
    move v6, v2

    :goto_0
    if-eqz v6, :cond_7

    .line 20
    iget-object v6, p0, Ln3/h0/a/a/g;->i:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v6, -0x40800000    # -1.0f

    .line 21
    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 22
    :cond_7
    iget-object v6, p0, Ln3/h0/a/a/g;->i:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 23
    iget-object v6, p0, Ln3/h0/a/a/g;->b:Ln3/h0/a/a/g$h;

    .line 24
    iget-object v7, v6, Ln3/h0/a/a/g$h;->f:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_9

    .line 25
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ne v1, v7, :cond_8

    iget-object v7, v6, Ln3/h0/a/a/g$h;->f:Landroid/graphics/Bitmap;

    .line 26
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ne v3, v7, :cond_8

    move v7, v5

    goto :goto_1

    :cond_8
    move v7, v2

    :goto_1
    if-nez v7, :cond_a

    .line 27
    :cond_9
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v6, Ln3/h0/a/a/g$h;->f:Landroid/graphics/Bitmap;

    .line 28
    iput-boolean v5, v6, Ln3/h0/a/a/g$h;->k:Z

    .line 29
    :cond_a
    iget-boolean v6, p0, Ln3/h0/a/a/g;->f:Z

    if-nez v6, :cond_b

    .line 30
    iget-object v6, p0, Ln3/h0/a/a/g;->b:Ln3/h0/a/a/g$h;

    invoke-virtual {v6, v1, v3}, Ln3/h0/a/a/g$h;->b(II)V

    goto :goto_3

    .line 31
    :cond_b
    iget-object v6, p0, Ln3/h0/a/a/g;->b:Ln3/h0/a/a/g$h;

    .line 32
    iget-boolean v7, v6, Ln3/h0/a/a/g$h;->k:Z

    if-nez v7, :cond_c

    iget-object v7, v6, Ln3/h0/a/a/g$h;->g:Landroid/content/res/ColorStateList;

    iget-object v8, v6, Ln3/h0/a/a/g$h;->c:Landroid/content/res/ColorStateList;

    if-ne v7, v8, :cond_c

    iget-object v7, v6, Ln3/h0/a/a/g$h;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v8, v6, Ln3/h0/a/a/g$h;->d:Landroid/graphics/PorterDuff$Mode;

    if-ne v7, v8, :cond_c

    iget-boolean v7, v6, Ln3/h0/a/a/g$h;->j:Z

    iget-boolean v8, v6, Ln3/h0/a/a/g$h;->e:Z

    if-ne v7, v8, :cond_c

    iget v7, v6, Ln3/h0/a/a/g$h;->i:I

    iget-object v6, v6, Ln3/h0/a/a/g$h;->b:Ln3/h0/a/a/g$g;

    .line 33
    invoke-virtual {v6}, Ln3/h0/a/a/g$g;->getRootAlpha()I

    move-result v6

    if-ne v7, v6, :cond_c

    move v6, v5

    goto :goto_2

    :cond_c
    move v6, v2

    :goto_2
    if-nez v6, :cond_d

    .line 34
    iget-object v6, p0, Ln3/h0/a/a/g;->b:Ln3/h0/a/a/g$h;

    invoke-virtual {v6, v1, v3}, Ln3/h0/a/a/g$h;->b(II)V

    .line 35
    iget-object v1, p0, Ln3/h0/a/a/g;->b:Ln3/h0/a/a/g$h;

    .line 36
    iget-object v3, v1, Ln3/h0/a/a/g$h;->c:Landroid/content/res/ColorStateList;

    iput-object v3, v1, Ln3/h0/a/a/g$h;->g:Landroid/content/res/ColorStateList;

    .line 37
    iget-object v3, v1, Ln3/h0/a/a/g$h;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v3, v1, Ln3/h0/a/a/g$h;->h:Landroid/graphics/PorterDuff$Mode;

    .line 38
    iget-object v3, v1, Ln3/h0/a/a/g$h;->b:Ln3/h0/a/a/g$g;

    invoke-virtual {v3}, Ln3/h0/a/a/g$g;->getRootAlpha()I

    move-result v3

    iput v3, v1, Ln3/h0/a/a/g$h;->i:I

    .line 39
    iget-boolean v3, v1, Ln3/h0/a/a/g$h;->e:Z

    iput-boolean v3, v1, Ln3/h0/a/a/g$h;->j:Z

    .line 40
    iput-boolean v2, v1, Ln3/h0/a/a/g$h;->k:Z

    .line 41
    :cond_d
    :goto_3
    iget-object v1, p0, Ln3/h0/a/a/g;->b:Ln3/h0/a/a/g$h;

    iget-object v3, p0, Ln3/h0/a/a/g;->i:Landroid/graphics/Rect;

    .line 42
    iget-object v6, v1, Ln3/h0/a/a/g$h;->b:Ln3/h0/a/a/g$g;

    invoke-virtual {v6}, Ln3/h0/a/a/g$g;->getRootAlpha()I

    move-result v6

    const/16 v7, 0xff

    if-ge v6, v7, :cond_e

    move v2, v5

    :cond_e
    const/4 v6, 0x0

    if-nez v2, :cond_f

    if-nez v0, :cond_f

    move-object v0, v6

    goto :goto_4

    .line 43
    :cond_f
    iget-object v2, v1, Ln3/h0/a/a/g$h;->l:Landroid/graphics/Paint;

    if-nez v2, :cond_10

    .line 44
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v1, Ln3/h0/a/a/g$h;->l:Landroid/graphics/Paint;

    .line 45
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 46
    :cond_10
    iget-object v2, v1, Ln3/h0/a/a/g$h;->l:Landroid/graphics/Paint;

    iget-object v5, v1, Ln3/h0/a/a/g$h;->b:Ln3/h0/a/a/g$g;

    invoke-virtual {v5}, Ln3/h0/a/a/g$g;->getRootAlpha()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 47
    iget-object v2, v1, Ln3/h0/a/a/g$h;->l:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 48
    iget-object v0, v1, Ln3/h0/a/a/g$h;->l:Landroid/graphics/Paint;

    .line 49
    :goto_4
    iget-object v1, v1, Ln3/h0/a/a/g$h;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v6, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 50
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_11
    :goto_5
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/h0/a/a/g;->b:Ln3/h0/a/a/g$h;

    iget-object v0, v0, Ln3/h0/a/a/g$h;->b:Ln3/h0/a/a/g$g;

    invoke-virtual {v0}, Ln3/h0/a/a/g$g;->getRootAlpha()I

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Ln3/h0/a/a/g;->b:Ln3/h0/a/a/g$h;

    invoke-virtual {v1}, Ln3/h0/a/a/g$h;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/h0/a/a/g;->d:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Ln3/h0/a/a/g$i;

    iget-object v1, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/h0/a/a/g$i;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/h0/a/a/g;->b:Ln3/h0/a/a/g$h;

    invoke-virtual {p0}, Ln3/h0/a/a/g;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Ln3/h0/a/a/g$h;->a:I

    .line 4
    iget-object v0, p0, Ln3/h0/a/a/g;->b:Ln3/h0/a/a/g$h;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/h0/a/a/g;->b:Ln3/h0/a/a/g$h;

    iget-object v0, v0, Ln3/h0/a/a/g$h;->b:Ln3/h0/a/a/g$g;

    iget v0, v0, Ln3/h0/a/a/g$g;->j:F

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/h0/a/a/g;->b:Ln3/h0/a/a/g$h;

    iget-object v0, v0, Ln3/h0/a/a/g$h;->b:Ln3/h0/a/a/g$g;

    iget v0, v0, Ln3/h0/a/a/g$g;->i:F

    float-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x3

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Ln3/h0/a/a/g;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 4
    iget-object v2, v0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v2, v1, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void

    .line 6
    :cond_0
    iget-object v11, v0, Ln3/h0/a/a/g;->b:Ln3/h0/a/a/g$h;

    .line 7
    new-instance v2, Ln3/h0/a/a/g$g;

    invoke-direct {v2}, Ln3/h0/a/a/g$g;-><init>()V

    .line 8
    iput-object v2, v11, Ln3/h0/a/a/g$h;->b:Ln3/h0/a/a/g$g;

    .line 9
    sget-object v2, Ln3/h0/a/a/a;->a:[I

    invoke-static {v1, v10, v9, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->W0(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 10
    iget-object v3, v0, Ln3/h0/a/a/g;->b:Ln3/h0/a/a/g$h;

    .line 11
    iget-object v4, v3, Ln3/h0/a/a/g$h;->b:Ln3/h0/a/a/g$g;

    const-string v5, "tintMode"

    .line 12
    invoke-static {v8, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    const/4 v12, 0x6

    const/4 v13, -0x1

    if-nez v5, :cond_1

    move v5, v13

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v2, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 14
    :goto_0
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/16 v14, 0x9

    const/4 v15, 0x5

    const/4 v7, 0x3

    if-eq v5, v7, :cond_3

    if-eq v5, v15, :cond_4

    if-eq v5, v14, :cond_2

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 15
    :pswitch_0
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    .line 16
    :pswitch_1
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    .line 17
    :pswitch_2
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    .line 18
    :cond_2
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    .line 19
    :cond_3
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 20
    :cond_4
    :goto_1
    iput-object v6, v3, Ln3/h0/a/a/g$h;->d:Landroid/graphics/PorterDuff$Mode;

    const-string v5, "tint"

    .line 21
    invoke-static {v8, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v13, 0x2

    if-eqz v5, :cond_7

    .line 22
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 23
    invoke-virtual {v2, v12, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 24
    iget v6, v5, Landroid/util/TypedValue;->type:I

    if-eq v6, v13, :cond_6

    const/16 v13, 0x1c

    if-lt v6, v13, :cond_5

    const/16 v13, 0x1f

    if-gt v6, v13, :cond_5

    .line 25
    iget v5, v5, Landroid/util/TypedValue;->data:I

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    goto :goto_2

    .line 26
    :cond_5
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 27
    invoke-virtual {v2, v12, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 28
    sget-object v13, Ln3/k/b/d/a;->a:Ljava/lang/ThreadLocal;

    .line 29
    :try_start_0
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 30
    invoke-static {v5, v6, v10}, Ln3/k/b/d/a;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 31
    :cond_6
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve attribute at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    :cond_7
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_8

    .line 32
    iput-object v5, v3, Ln3/h0/a/a/g$h;->c:Landroid/content/res/ColorStateList;

    .line 33
    :cond_8
    iget-boolean v5, v3, Ln3/h0/a/a/g$h;->e:Z

    const-string v6, "autoMirrored"

    .line 34
    invoke-static {v8, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_3

    .line 35
    :cond_9
    invoke-virtual {v2, v15, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 36
    :goto_3
    iput-boolean v5, v3, Ln3/h0/a/a/g$h;->e:Z

    .line 37
    iget v3, v4, Ln3/h0/a/a/g$g;->k:F

    const-string v5, "viewportWidth"

    .line 38
    invoke-static {v8, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    const/4 v13, 0x7

    if-nez v5, :cond_a

    goto :goto_4

    .line 39
    :cond_a
    invoke-virtual {v2, v13, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 40
    :goto_4
    iput v3, v4, Ln3/h0/a/a/g$g;->k:F

    .line 41
    iget v3, v4, Ln3/h0/a/a/g$g;->l:F

    const-string v5, "viewportHeight"

    .line 42
    invoke-static {v8, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    const/16 v6, 0x8

    if-nez v5, :cond_b

    goto :goto_5

    .line 43
    :cond_b
    invoke-virtual {v2, v6, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 44
    :goto_5
    iput v3, v4, Ln3/h0/a/a/g$g;->l:F

    .line 45
    iget v5, v4, Ln3/h0/a/a/g$g;->k:F

    const/16 v19, 0x0

    cmpg-float v5, v5, v19

    if-lez v5, :cond_39

    cmpg-float v3, v3, v19

    if-lez v3, :cond_38

    .line 46
    iget v3, v4, Ln3/h0/a/a/g$g;->i:F

    invoke-virtual {v2, v7, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, v4, Ln3/h0/a/a/g$g;->i:F

    .line 47
    iget v3, v4, Ln3/h0/a/a/g$g;->j:F

    const/4 v5, 0x2

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, v4, Ln3/h0/a/a/g$g;->j:F

    .line 48
    iget v5, v4, Ln3/h0/a/a/g$g;->i:F

    cmpg-float v5, v5, v19

    if-lez v5, :cond_37

    cmpg-float v3, v3, v19

    if-lez v3, :cond_36

    .line 49
    invoke-virtual {v4}, Ln3/h0/a/a/g$g;->getAlpha()F

    move-result v3

    const-string v5, "alpha"

    .line 50
    invoke-static {v8, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    const/4 v15, 0x4

    if-nez v5, :cond_c

    goto :goto_6

    .line 51
    :cond_c
    invoke-virtual {v2, v15, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 52
    :goto_6
    invoke-virtual {v4, v3}, Ln3/h0/a/a/g$g;->setAlpha(F)V

    .line 53
    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 54
    iput-object v3, v4, Ln3/h0/a/a/g$g;->n:Ljava/lang/String;

    .line 55
    iget-object v5, v4, Ln3/h0/a/a/g$g;->p:Ln3/g/a;

    invoke-virtual {v5, v3, v4}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_d
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    invoke-virtual/range {p0 .. p0}, Ln3/h0/a/a/g;->getChangingConfigurations()I

    move-result v2

    iput v2, v11, Ln3/h0/a/a/g$h;->a:I

    .line 58
    iput-boolean v12, v11, Ln3/h0/a/a/g$h;->k:Z

    .line 59
    iget-object v5, v0, Ln3/h0/a/a/g;->b:Ln3/h0/a/a/g$h;

    .line 60
    iget-object v4, v5, Ln3/h0/a/a/g$h;->b:Ln3/h0/a/a/g$g;

    .line 61
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    .line 62
    iget-object v2, v4, Ln3/h0/a/a/g$g;->h:Ln3/h0/a/a/g$d;

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 63
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 64
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v20

    add-int/lit8 v13, v20, 0x1

    move/from16 v20, v12

    :goto_7
    if-eq v2, v12, :cond_34

    .line 65
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-ge v6, v13, :cond_e

    if-eq v2, v7, :cond_34

    :cond_e
    const-string v6, "group"

    const/4 v7, 0x2

    if-ne v2, v7, :cond_32

    .line 66
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ln3/h0/a/a/g$d;

    const-string v15, "path"

    .line 68
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    const-string v12, "fillType"

    const-string v14, "pathData"

    if-eqz v15, :cond_23

    .line 69
    new-instance v15, Ln3/h0/a/a/g$c;

    invoke-direct {v15}, Ln3/h0/a/a/g$c;-><init>()V

    .line 70
    sget-object v2, Ln3/h0/a/a/a;->c:[I

    invoke-static {v1, v10, v9, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->W0(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    const/4 v2, 0x0

    .line 71
    iput-object v2, v15, Ln3/h0/a/a/g$c;->e:[I

    .line 72
    invoke-static {v8, v14}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_f

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object v14, v7

    move/from16 v21, v13

    const/16 v0, 0x8

    const/16 v16, 0x9

    const/16 v18, -0x1

    move-object v13, v6

    goto/16 :goto_14

    :cond_f
    const/4 v14, 0x0

    .line 73
    invoke-virtual {v6, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 74
    iput-object v2, v15, Ln3/h0/a/a/g$f;->b:Ljava/lang/String;

    :cond_10
    const/4 v2, 0x2

    .line 75
    invoke-virtual {v6, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_11

    .line 76
    invoke-static {v14}, Landroid/support/v4/media/session/MediaSessionCompat;->M(Ljava/lang/String;)[Ln3/k/c/c;

    move-result-object v2

    iput-object v2, v15, Ln3/h0/a/a/g$f;->a:[Ln3/k/c/c;

    :cond_11
    const/4 v14, 0x1

    const/16 v20, 0x0

    const-string v21, "fillColor"

    const/16 v18, 0x0

    move-object v2, v6

    move-object/from16 v22, v3

    move-object/from16 v3, p2

    move-object/from16 v23, v4

    move-object/from16 v4, p4

    move-object/from16 v24, v5

    move-object/from16 v5, v21

    move/from16 v21, v13

    const/16 v0, 0x8

    move-object v13, v6

    move v6, v14

    move-object v14, v7

    move/from16 v7, v20

    .line 77
    invoke-static/range {v2 .. v7}, Landroid/support/v4/media/session/MediaSessionCompat;->o0(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Ln3/k/b/d/b;

    move-result-object v2

    iput-object v2, v15, Ln3/h0/a/a/g$c;->h:Ln3/k/b/d/b;

    const/16 v2, 0xc

    .line 78
    iget v3, v15, Ln3/h0/a/a/g$c;->j:F

    const-string v4, "fillAlpha"

    .line 79
    invoke-static {v8, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    goto :goto_8

    .line 80
    :cond_12
    invoke-virtual {v13, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 81
    :goto_8
    iput v3, v15, Ln3/h0/a/a/g$c;->j:F

    const-string v2, "strokeLineCap"

    .line 82
    invoke-static {v8, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    const/4 v2, -0x1

    goto :goto_9

    :cond_13
    const/4 v2, -0x1

    .line 83
    invoke-virtual {v13, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    move v2, v3

    .line 84
    :goto_9
    iget-object v3, v15, Ln3/h0/a/a/g$c;->n:Landroid/graphics/Paint$Cap;

    if-eqz v2, :cond_16

    const/4 v4, 0x1

    if-eq v2, v4, :cond_15

    const/4 v4, 0x2

    if-eq v2, v4, :cond_14

    goto :goto_a

    .line 85
    :cond_14
    sget-object v3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_a

    .line 86
    :cond_15
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_a

    .line 87
    :cond_16
    sget-object v3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 88
    :goto_a
    iput-object v3, v15, Ln3/h0/a/a/g$c;->n:Landroid/graphics/Paint$Cap;

    const-string v2, "strokeLineJoin"

    .line 89
    invoke-static {v8, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    const/4 v2, -0x1

    const/4 v6, -0x1

    const/16 v7, 0x9

    goto :goto_b

    :cond_17
    const/4 v6, -0x1

    const/16 v7, 0x9

    .line 90
    invoke-virtual {v13, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 91
    :goto_b
    iget-object v3, v15, Ln3/h0/a/a/g$c;->o:Landroid/graphics/Paint$Join;

    if-eqz v2, :cond_1a

    const/4 v4, 0x1

    if-eq v2, v4, :cond_19

    const/4 v4, 0x2

    if-eq v2, v4, :cond_18

    goto :goto_c

    .line 92
    :cond_18
    sget-object v3, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_c

    .line 93
    :cond_19
    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_c

    .line 94
    :cond_1a
    sget-object v3, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    .line 95
    :goto_c
    iput-object v3, v15, Ln3/h0/a/a/g$c;->o:Landroid/graphics/Paint$Join;

    const/16 v2, 0xa

    .line 96
    iget v3, v15, Ln3/h0/a/a/g$c;->p:F

    const-string v4, "strokeMiterLimit"

    .line 97
    invoke-static {v8, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_d

    .line 98
    :cond_1b
    invoke-virtual {v13, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 99
    :goto_d
    iput v3, v15, Ln3/h0/a/a/g$c;->p:F

    const/16 v16, 0x3

    const/16 v17, 0x0

    const-string v5, "strokeColor"

    move-object v2, v13

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move/from16 v18, v6

    move/from16 v6, v16

    move/from16 v16, v7

    move/from16 v7, v17

    .line 100
    invoke-static/range {v2 .. v7}, Landroid/support/v4/media/session/MediaSessionCompat;->o0(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Ln3/k/b/d/b;

    move-result-object v2

    iput-object v2, v15, Ln3/h0/a/a/g$c;->f:Ln3/k/b/d/b;

    const/16 v2, 0xb

    .line 101
    iget v3, v15, Ln3/h0/a/a/g$c;->i:F

    const-string v4, "strokeAlpha"

    .line 102
    invoke-static {v8, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    goto :goto_e

    .line 103
    :cond_1c
    invoke-virtual {v13, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 104
    :goto_e
    iput v3, v15, Ln3/h0/a/a/g$c;->i:F

    .line 105
    iget v2, v15, Ln3/h0/a/a/g$c;->g:F

    const-string v3, "strokeWidth"

    .line 106
    invoke-static {v8, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_f

    :cond_1d
    const/4 v3, 0x4

    .line 107
    invoke-virtual {v13, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 108
    :goto_f
    iput v2, v15, Ln3/h0/a/a/g$c;->g:F

    .line 109
    iget v2, v15, Ln3/h0/a/a/g$c;->l:F

    const-string v3, "trimPathEnd"

    .line 110
    invoke-static {v8, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1e

    goto :goto_10

    :cond_1e
    const/4 v3, 0x6

    .line 111
    invoke-virtual {v13, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 112
    :goto_10
    iput v2, v15, Ln3/h0/a/a/g$c;->l:F

    .line 113
    iget v2, v15, Ln3/h0/a/a/g$c;->m:F

    const-string v3, "trimPathOffset"

    .line 114
    invoke-static {v8, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_11

    :cond_1f
    const/4 v3, 0x7

    .line 115
    invoke-virtual {v13, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 116
    :goto_11
    iput v2, v15, Ln3/h0/a/a/g$c;->m:F

    .line 117
    iget v2, v15, Ln3/h0/a/a/g$c;->k:F

    const-string v3, "trimPathStart"

    .line 118
    invoke-static {v8, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_20

    goto :goto_12

    :cond_20
    const/4 v3, 0x5

    .line 119
    invoke-virtual {v13, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 120
    :goto_12
    iput v2, v15, Ln3/h0/a/a/g$c;->k:F

    const/16 v2, 0xd

    .line 121
    iget v3, v15, Ln3/h0/a/a/g$f;->c:I

    .line 122
    invoke-static {v8, v12}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_21

    goto :goto_13

    .line 123
    :cond_21
    invoke-virtual {v13, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 124
    :goto_13
    iput v3, v15, Ln3/h0/a/a/g$f;->c:I

    .line 125
    :goto_14
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
    iget-object v2, v14, Ln3/h0/a/a/g$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {v15}, Ln3/h0/a/a/g$f;->getPathName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v23

    if-eqz v2, :cond_22

    .line 128
    iget-object v2, v3, Ln3/h0/a/a/g$g;->p:Ln3/g/a;

    invoke-virtual {v15}, Ln3/h0/a/a/g$f;->getPathName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v15}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    move-object/from16 v4, v24

    .line 129
    iget v2, v4, Ln3/h0/a/a/g$h;->a:I

    iget v5, v15, Ln3/h0/a/a/g$f;->d:I

    or-int/2addr v2, v5

    iput v2, v4, Ln3/h0/a/a/g$h;->a:I

    move-object/from16 v5, v22

    const/4 v0, 0x3

    const/4 v6, 0x0

    const/4 v13, 0x5

    const/4 v14, 0x1

    const/4 v15, 0x2

    const/16 v20, 0x0

    goto/16 :goto_1d

    :cond_23
    move-object/from16 v22, v3

    move-object v3, v4

    move-object v4, v5

    move/from16 v21, v13

    const/16 v0, 0x8

    const/16 v16, 0x9

    const/16 v18, -0x1

    const-string v5, "clip-path"

    .line 130
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 131
    new-instance v2, Ln3/h0/a/a/g$b;

    invoke-direct {v2}, Ln3/h0/a/a/g$b;-><init>()V

    .line 132
    invoke-static {v8, v14}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_24

    goto :goto_16

    .line 133
    :cond_24
    sget-object v5, Ln3/h0/a/a/a;->d:[I

    invoke-static {v1, v10, v9, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->W0(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    const/4 v6, 0x0

    .line 134
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_25

    .line 135
    iput-object v13, v2, Ln3/h0/a/a/g$f;->b:Ljava/lang/String;

    :cond_25
    const/4 v6, 0x1

    .line 136
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_26

    .line 137
    invoke-static {v13}, Landroid/support/v4/media/session/MediaSessionCompat;->M(Ljava/lang/String;)[Ln3/k/c/c;

    move-result-object v6

    iput-object v6, v2, Ln3/h0/a/a/g$f;->a:[Ln3/k/c/c;

    .line 138
    :cond_26
    invoke-static {v8, v12}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_27

    const/4 v14, 0x0

    goto :goto_15

    :cond_27
    const/4 v6, 0x0

    const/4 v12, 0x2

    .line 139
    invoke-virtual {v5, v12, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    .line 140
    :goto_15
    iput v14, v2, Ln3/h0/a/a/g$f;->c:I

    .line 141
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    :goto_16
    iget-object v5, v7, Ln3/h0/a/a/g$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {v2}, Ln3/h0/a/a/g$f;->getPathName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_28

    .line 144
    iget-object v5, v3, Ln3/h0/a/a/g$g;->p:Ln3/g/a;

    invoke-virtual {v2}, Ln3/h0/a/a/g$f;->getPathName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_28
    iget v5, v4, Ln3/h0/a/a/g$h;->a:I

    iget v2, v2, Ln3/h0/a/a/g$f;->d:I

    or-int/2addr v2, v5

    iput v2, v4, Ln3/h0/a/a/g$h;->a:I

    goto/16 :goto_1c

    .line 146
    :cond_29
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 147
    new-instance v2, Ln3/h0/a/a/g$d;

    invoke-direct {v2}, Ln3/h0/a/a/g$d;-><init>()V

    .line 148
    sget-object v5, Ln3/h0/a/a/a;->b:[I

    invoke-static {v1, v10, v9, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->W0(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    const/4 v12, 0x0

    .line 149
    iput-object v12, v2, Ln3/h0/a/a/g$d;->l:[I

    .line 150
    iget v6, v2, Ln3/h0/a/a/g$d;->c:F

    const-string v13, "rotation"

    .line 151
    invoke-static {v8, v13}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2a

    const/4 v13, 0x5

    goto :goto_17

    :cond_2a
    const/4 v13, 0x5

    .line 152
    invoke-virtual {v5, v13, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 153
    :goto_17
    iput v6, v2, Ln3/h0/a/a/g$d;->c:F

    .line 154
    iget v6, v2, Ln3/h0/a/a/g$d;->d:F

    const/4 v14, 0x1

    invoke-virtual {v5, v14, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v2, Ln3/h0/a/a/g$d;->d:F

    .line 155
    iget v6, v2, Ln3/h0/a/a/g$d;->e:F

    const/4 v15, 0x2

    invoke-virtual {v5, v15, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v2, Ln3/h0/a/a/g$d;->e:F

    .line 156
    iget v6, v2, Ln3/h0/a/a/g$d;->f:F

    const-string v0, "scaleX"

    .line 157
    invoke-static {v8, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    const/4 v0, 0x3

    goto :goto_18

    :cond_2b
    const/4 v0, 0x3

    .line 158
    invoke-virtual {v5, v0, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 159
    :goto_18
    iput v6, v2, Ln3/h0/a/a/g$d;->f:F

    .line 160
    iget v6, v2, Ln3/h0/a/a/g$d;->g:F

    const-string v12, "scaleY"

    .line 161
    invoke-static {v8, v12}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2c

    const/4 v12, 0x4

    goto :goto_19

    :cond_2c
    const/4 v12, 0x4

    .line 162
    invoke-virtual {v5, v12, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 163
    :goto_19
    iput v6, v2, Ln3/h0/a/a/g$d;->g:F

    .line 164
    iget v6, v2, Ln3/h0/a/a/g$d;->h:F

    const-string v12, "translateX"

    .line 165
    invoke-static {v8, v12}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2d

    const/4 v12, 0x6

    goto :goto_1a

    :cond_2d
    const/4 v12, 0x6

    .line 166
    invoke-virtual {v5, v12, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 167
    :goto_1a
    iput v6, v2, Ln3/h0/a/a/g$d;->h:F

    .line 168
    iget v6, v2, Ln3/h0/a/a/g$d;->i:F

    const-string v12, "translateY"

    .line 169
    invoke-static {v8, v12}, Landroid/support/v4/media/session/MediaSessionCompat;->D0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2e

    const/4 v12, 0x7

    goto :goto_1b

    :cond_2e
    const/4 v12, 0x7

    .line 170
    invoke-virtual {v5, v12, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 171
    :goto_1b
    iput v6, v2, Ln3/h0/a/a/g$d;->i:F

    const/4 v6, 0x0

    .line 172
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2f

    .line 173
    iput-object v12, v2, Ln3/h0/a/a/g$d;->m:Ljava/lang/String;

    .line 174
    :cond_2f
    invoke-virtual {v2}, Ln3/h0/a/a/g$d;->c()V

    .line 175
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 176
    iget-object v5, v7, Ln3/h0/a/a/g$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, v22

    .line 177
    invoke-virtual {v5, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 178
    invoke-virtual {v2}, Ln3/h0/a/a/g$d;->getGroupName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_30

    .line 179
    iget-object v7, v3, Ln3/h0/a/a/g$g;->p:Ln3/g/a;

    invoke-virtual {v2}, Ln3/h0/a/a/g$d;->getGroupName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12, v2}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_30
    iget v7, v4, Ln3/h0/a/a/g$h;->a:I

    iget v2, v2, Ln3/h0/a/a/g$d;->k:I

    or-int/2addr v2, v7

    iput v2, v4, Ln3/h0/a/a/g$h;->a:I

    goto :goto_1d

    :cond_31
    :goto_1c
    move-object/from16 v5, v22

    const/4 v0, 0x3

    const/4 v6, 0x0

    const/4 v13, 0x5

    const/4 v14, 0x1

    const/4 v15, 0x2

    :goto_1d
    move v7, v6

    goto :goto_1e

    :cond_32
    move v15, v7

    move/from16 v21, v13

    move v7, v14

    const/4 v0, 0x3

    const/4 v13, 0x5

    const/16 v16, 0x9

    const/16 v18, -0x1

    move v14, v12

    move-object/from16 v25, v5

    move-object v5, v3

    move-object v3, v4

    move-object/from16 v4, v25

    if-ne v2, v0, :cond_33

    .line 181
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 183
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 184
    :cond_33
    :goto_1e
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v12, v14

    move/from16 v13, v21

    const/16 v6, 0x8

    const/4 v15, 0x4

    move v14, v7

    move v7, v0

    move-object/from16 v0, p0

    move-object/from16 v25, v4

    move-object v4, v3

    move-object v3, v5

    move-object/from16 v5, v25

    goto/16 :goto_7

    :cond_34
    if-nez v20, :cond_35

    .line 185
    iget-object v0, v11, Ln3/h0/a/a/g$h;->c:Landroid/content/res/ColorStateList;

    iget-object v1, v11, Ln3/h0/a/a/g$h;->d:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v3, p0

    invoke-virtual {v3, v0, v1}, Ln3/h0/a/a/g;->b(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, v3, Ln3/h0/a/a/g;->c:Landroid/graphics/PorterDuffColorFilter;

    return-void

    :cond_35
    move-object/from16 v3, p0

    .line 186
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "no path defined"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    move-object v3, v0

    .line 187
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<vector> tag requires height > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    move-object v3, v0

    .line 188
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<vector> tag requires width > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    move-object v3, v0

    .line 189
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    move-object v3, v0

    .line 190
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public invalidateSelf()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/h0/a/a/g;->b:Ln3/h0/a/a/g$h;

    iget-boolean v0, v0, Ln3/h0/a/a/g$h;->e:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ln3/h0/a/a/g;->b:Ln3/h0/a/a/g$h;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ln3/h0/a/a/g$h;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ln3/h0/a/a/g;->b:Ln3/h0/a/a/g$h;

    iget-object v0, v0, Ln3/h0/a/a/g$h;->c:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 3
    :cond_0
    iget-boolean v0, p0, Ln3/h0/a/a/g;->e:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 4
    new-instance v0, Ln3/h0/a/a/g$h;

    iget-object v1, p0, Ln3/h0/a/a/g;->b:Ln3/h0/a/a/g$h;

    invoke-direct {v0, v1}, Ln3/h0/a/a/g$h;-><init>(Ln3/h0/a/a/g$h;)V

    iput-object v0, p0, Ln3/h0/a/a/g;->b:Ln3/h0/a/a/g$h;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Ln3/h0/a/a/g;->e:Z

    :cond_1
    return-object p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public onStateChange([I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Ln3/h0/a/a/g;->b:Ln3/h0/a/a/g$h;

    .line 4
    iget-object v2, v1, Ln3/h0/a/a/g$h;->c:Landroid/content/res/ColorStateList;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v4, v1, Ln3/h0/a/a/g$h;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {p0, v2, v4}, Ln3/h0/a/a/g;->b(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Ln3/h0/a/a/g;->c:Landroid/graphics/PorterDuffColorFilter;

    .line 6
    invoke-virtual {p0}, Ln3/h0/a/a/g;->invalidateSelf()V

    move v0, v3

    .line 7
    :cond_1
    invoke-virtual {v1}, Ln3/h0/a/a/g$h;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    iget-object v2, v1, Ln3/h0/a/a/g$h;->b:Ln3/h0/a/a/g$g;

    .line 9
    iget-object v2, v2, Ln3/h0/a/a/g$g;->h:Ln3/h0/a/a/g$d;

    invoke-virtual {v2, p1}, Ln3/h0/a/a/g$d;->b([I)Z

    move-result p1

    .line 10
    iget-boolean v2, v1, Ln3/h0/a/a/g$h;->k:Z

    or-int/2addr v2, p1

    iput-boolean v2, v1, Ln3/h0/a/a/g$h;->k:Z

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p0}, Ln3/h0/a/a/g;->invalidateSelf()V

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    return v3
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/h0/a/a/g;->b:Ln3/h0/a/a/g$h;

    iget-object v0, v0, Ln3/h0/a/a/g$h;->b:Ln3/h0/a/a/g$g;

    invoke-virtual {v0}, Ln3/h0/a/a/g$g;->getRootAlpha()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 4
    iget-object v0, p0, Ln3/h0/a/a/g;->b:Ln3/h0/a/a/g$h;

    iget-object v0, v0, Ln3/h0/a/a/g$h;->b:Ln3/h0/a/a/g$g;

    invoke-virtual {v0, p1}, Ln3/h0/a/a/g$g;->setRootAlpha(I)V

    .line 5
    invoke-virtual {p0}, Ln3/h0/a/a/g;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/h0/a/a/g;->b:Ln3/h0/a/a/g$h;

    iput-boolean p1, v0, Ln3/h0/a/a/g$h;->e:Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Ln3/h0/a/a/g;->d:Landroid/graphics/ColorFilter;

    .line 4
    invoke-virtual {p0}, Ln3/h0/a/a/g;->invalidateSelf()V

    return-void
.end method

.method public setTint(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->w1(Landroid/graphics/drawable/Drawable;I)V

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln3/h0/a/a/g;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->x1(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/h0/a/a/g;->b:Ln3/h0/a/a/g$h;

    .line 4
    iget-object v1, v0, Ln3/h0/a/a/g$h;->c:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_1

    .line 5
    iput-object p1, v0, Ln3/h0/a/a/g$h;->c:Landroid/content/res/ColorStateList;

    .line 6
    iget-object v0, v0, Ln3/h0/a/a/g$h;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Ln3/h0/a/a/g;->b(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Ln3/h0/a/a/g;->c:Landroid/graphics/PorterDuffColorFilter;

    .line 7
    invoke-virtual {p0}, Ln3/h0/a/a/g;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->y1(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/h0/a/a/g;->b:Ln3/h0/a/a/g$h;

    .line 4
    iget-object v1, v0, Ln3/h0/a/a/g$h;->d:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_1

    .line 5
    iput-object p1, v0, Ln3/h0/a/a/g$h;->d:Landroid/graphics/PorterDuff$Mode;

    .line 6
    iget-object v0, v0, Ln3/h0/a/a/g$h;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0, p1}, Ln3/h0/a/a/g;->b(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Ln3/h0/a/a/g;->c:Landroid/graphics/PorterDuffColorFilter;

    .line 7
    invoke-virtual {p0}, Ln3/h0/a/a/g;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h0/a/a/f;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
