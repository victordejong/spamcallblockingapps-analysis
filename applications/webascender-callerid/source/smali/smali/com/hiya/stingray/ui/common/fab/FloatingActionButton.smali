.class public Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;
.super Landroidx/appcompat/widget/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/common/fab/FloatingActionButton$b;
    }
.end annotation


# instance fields
.field h:I

.field i:I

.field j:I

.field k:Ljava/lang/String;

.field private l:I

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:I

.field private o:F

.field private p:F

.field private q:F

.field private r:I

.field s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->j(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(IF)I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 1
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x2

    .line 2
    aget v2, v0, v1

    mul-float v2, v2, p2

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    aput p2, v0, v1

    .line 3
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    invoke-static {p1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    return p1
.end method

.method private b(IF)Landroid/graphics/drawable/Drawable;
    .locals 9

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 2
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->m(I)I

    move-result p1

    .line 3
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 4
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->d(IF)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aput-object p1, v2, v3

    const/16 p1, 0xff

    if-eq v0, p1, :cond_1

    .line 8
    iget-boolean p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->s:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton$b;

    invoke-direct {p1, v0, v2}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton$b;-><init>(I[Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :goto_1
    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    float-to-int v8, p2

    const/4 v4, 0x1

    move-object v3, p1

    move v5, v8

    move v6, v8

    move v7, v8

    .line 9
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    return-object p1
.end method

.method private c(F)Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, -0x101009e

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 2
    iget v3, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->j:I

    invoke-direct {p0, v3, p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->b(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v1, [I

    const v2, 0x10100a7

    aput v2, v1, v4

    .line 3
    iget v2, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->i:I

    invoke-direct {p0, v2, p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->b(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v4, [I

    .line 4
    iget v2, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->h:I

    invoke-direct {p0, v2, p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->b(IF)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private d(IF)Landroid/graphics/drawable/Drawable;
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->s:Z

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->f(I)I

    move-result v8

    .line 5
    invoke-direct {p0, v8}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->i(I)I

    move-result v7

    .line 6
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->k(I)I

    move-result v4

    .line 7
    invoke-direct {p0, v4}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->i(I)I

    move-result v5

    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/4 v2, 0x1

    .line 9
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 11
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    new-instance p2, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton$a;

    move-object v2, p2

    move-object v3, p0

    move v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton$a;-><init>(Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;IIIII)V

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/ShapeDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    return-object v0
.end method

.method private e(F)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p1, -0x1000000

    .line 6
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    const p1, 0x3ca3d70a    # 0.02f

    .line 7
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->l(F)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-object v0
.end method

.method private f(I)I
    .locals 1

    const v0, 0x3f666666    # 0.9f

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->a(IF)I

    move-result p1

    return p1
.end method

.method private i(I)I
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 2
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 3
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 4
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 5
    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private k(I)I
    .locals 1

    const v0, 0x3f8ccccd    # 1.1f

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->a(IF)I

    move-result p1

    return p1
.end method

.method private l(F)I
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private m(I)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 3
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 4
    invoke-static {v0, v1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    return p1
.end method

.method private o()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->n:I

    if-nez v0, :cond_0

    const v0, 0x7f0700bd

    goto :goto_0

    :cond_0
    const v0, 0x7f0700bc

    :goto_0
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->h(I)F

    move-result v0

    iput v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->o:F

    return-void
.end method

.method private p()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->o:F

    iget v1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->p:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->r:I

    return-void
.end method

.method private setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/l;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method g(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method public getColorDisabled()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->j:I

    return v0
.end method

.method public getColorNormal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->h:I

    return v0
.end method

.method public getColorPressed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->i:I

    return v0
.end method

.method getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->l:I

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->l:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method getLabelView()Landroid/widget/TextView;
    .locals 1

    const v0, 0x7f0901af

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->n:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->k:Ljava/lang/String;

    return-object v0
.end method

.method h(I)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    return p1
.end method

.method j(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/hiya/stingray/p;->b:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const p2, 0x1060013

    .line 2
    invoke-virtual {p0, p2}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->g(I)I

    move-result p2

    const/16 v0, 0x9

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->h:I

    const p2, 0x1060012

    .line 3
    invoke-virtual {p0, p2}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->g(I)I

    move-result p2

    const/16 v0, 0xa

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->i:I

    const/high16 p2, 0x1060000

    .line 4
    invoke-virtual {p0, p2}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->g(I)I

    move-result p2

    const/16 v0, 0x8

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->j:I

    const/16 p2, 0xc

    .line 5
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->n:I

    const/16 p2, 0xb

    .line 6
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->l:I

    const/16 p2, 0xe

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->k:Ljava/lang/String;

    const/16 p2, 0xd

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->s:Z

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 10
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->o()V

    const p1, 0x7f0700bb

    .line 11
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->h(I)F

    move-result p1

    iput p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->p:F

    const p1, 0x7f0700ba

    .line 12
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->h(I)F

    move-result p1

    iput p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->q:F

    .line 13
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->p()V

    .line 14
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->n()V

    return-void
.end method

.method n()V
    .locals 12

    const v0, 0x7f0700be

    .line 1
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->h(I)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    .line 2
    new-instance v8, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->n:I

    if-nez v4, :cond_0

    const v4, 0x7f0800ef

    goto :goto_0

    :cond_0
    const v4, 0x7f0800ee

    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    .line 4
    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->c(F)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    aput-object v4, v2, v3

    .line 5
    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->e(F)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-direct {v8, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->o:F

    const v2, 0x7f0700b6

    invoke-virtual {p0, v2}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->h(I)F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    div-int/2addr v0, v3

    .line 8
    iget v2, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->p:F

    float-to-int v9, v2

    .line 9
    iget v3, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->q:F

    sub-float v4, v2, v3

    float-to-int v10, v4

    add-float/2addr v2, v3

    float-to-int v11, v2

    const/4 v3, 0x1

    move-object v2, v8

    move v4, v9

    move v5, v10

    move v6, v9

    move v7, v11

    .line 10
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    const/4 v3, 0x2

    int-to-float v2, v9

    sub-float/2addr v2, v1

    float-to-int v6, v2

    int-to-float v2, v10

    sub-float/2addr v2, v1

    float-to-int v5, v2

    int-to-float v2, v11

    sub-float/2addr v2, v1

    float-to-int v7, v2

    move-object v2, v8

    move v4, v6

    .line 11
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    const/4 v3, 0x3

    add-int v6, v9, v0

    add-int v5, v10, v0

    add-int v7, v11, v0

    move v4, v6

    .line 12
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 13
    invoke-direct {p0, v8}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onMeasure(II)V

    .line 2
    iget p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->r:I

    invoke-virtual {p0, p1, p1}, Landroid/widget/ImageButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public setColorDisabled(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->j:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->j:I

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->n()V

    :cond_0
    return-void
.end method

.method public setColorDisabledResId(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->g(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->setColorDisabled(I)V

    return-void
.end method

.method public setColorNormal(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->h:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->h:I

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->n()V

    :cond_0
    return-void
.end method

.method public setColorNormalResId(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->g(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->setColorNormal(I)V

    return-void
.end method

.method public setColorPressed(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->i:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->i:I

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->n()V

    :cond_0
    return-void
.end method

.method public setColorPressedResId(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->g(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->setColorPressed(I)V

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->l:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->l:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->m:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->n()V

    :cond_0
    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->m:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->l:I

    .line 3
    iput-object p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->m:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->n()V

    :cond_0
    return-void
.end method

.method public setSize(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Use @FAB_SIZE constants only!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->n:I

    if-eq v0, p1, :cond_2

    .line 3
    iput p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->n:I

    .line 4
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->o()V

    .line 5
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->p()V

    .line 6
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->n()V

    :cond_2
    return-void
.end method

.method public setStrokeVisible(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->s:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->s:Z

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->n()V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->k:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->getLabelView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->getLabelView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method
