.class public Lzendesk/support/ZendeskAvatarView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final AVATAR_COLORS:[I


# instance fields
.field private enableOutline:Z

.field private imageView:Landroid/widget/ImageView;

.field private strokeColor:I

.field private strokeWidth:I

.field private textView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x13

    new-array v0, v0, [I

    .line 1
    sget v1, Lg/k/c/c;->b:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lg/k/c/c;->c:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lg/k/c/c;->d:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lg/k/c/c;->e:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lg/k/c/c;->f:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lg/k/c/c;->g:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sget v1, Lg/k/c/c;->h:I

    const/4 v2, 0x6

    aput v1, v0, v2

    sget v1, Lg/k/c/c;->i:I

    const/4 v2, 0x7

    aput v1, v0, v2

    sget v1, Lg/k/c/c;->j:I

    const/16 v2, 0x8

    aput v1, v0, v2

    sget v1, Lg/k/c/c;->k:I

    const/16 v2, 0x9

    aput v1, v0, v2

    sget v1, Lg/k/c/c;->l:I

    const/16 v2, 0xa

    aput v1, v0, v2

    sget v1, Lg/k/c/c;->m:I

    const/16 v2, 0xb

    aput v1, v0, v2

    sget v1, Lg/k/c/c;->n:I

    const/16 v2, 0xc

    aput v1, v0, v2

    sget v1, Lg/k/c/c;->o:I

    const/16 v2, 0xd

    aput v1, v0, v2

    sget v1, Lg/k/c/c;->p:I

    const/16 v2, 0xe

    aput v1, v0, v2

    sget v1, Lg/k/c/c;->q:I

    const/16 v2, 0xf

    aput v1, v0, v2

    sget v1, Lg/k/c/c;->r:I

    const/16 v2, 0x10

    aput v1, v0, v2

    sget v1, Lg/k/c/c;->s:I

    const/16 v2, 0x11

    aput v1, v0, v2

    sget v1, Lg/k/c/c;->t:I

    const/16 v2, 0x12

    aput v1, v0, v2

    sput-object v0, Lzendesk/support/ZendeskAvatarView;->AVATAR_COLORS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lzendesk/support/ZendeskAvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lzendesk/support/ZendeskAvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lzendesk/support/ZendeskAvatarView;->enableOutline:Z

    .line 5
    iput p1, p0, Lzendesk/support/ZendeskAvatarView;->strokeColor:I

    .line 6
    iput p1, p0, Lzendesk/support/ZendeskAvatarView;->strokeWidth:I

    .line 7
    invoke-direct {p0}, Lzendesk/support/ZendeskAvatarView;->initViews()V

    return-void
.end method

.method private getBackgroundShape(I)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result p1

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-boolean p1, p0, Lzendesk/support/ZendeskAvatarView;->enableOutline:Z

    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {p1, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 6
    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 7
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v2, 0x1

    .line 8
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    iget v3, p0, Lzendesk/support/ZendeskAvatarView;->strokeColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    iget v3, p0, Lzendesk/support/ZendeskAvatarView;->strokeWidth:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v1, 0x2

    new-array v3, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 11
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget v4, p0, Lzendesk/support/ZendeskAvatarView;->strokeWidth:I

    div-int/2addr v4, v1

    invoke-direct {v0, p1, v4}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    aput-object v0, v3, v2

    .line 12
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p1, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object p1

    :cond_0
    return-object v0
.end method

.method private getColorId(Ljava/lang/Object;)I
    .locals 2

    .line 1
    sget-object v0, Lzendesk/support/ZendeskAvatarView;->AVATAR_COLORS:[I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    array-length v1, v0

    rem-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    aget p1, v0, p1

    return p1
.end method

.method private initViews()V
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzendesk/support/ZendeskAvatarView;->textView:Landroid/widget/TextView;

    .line 2
    sget v1, Lg/k/c/f;->k1:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 3
    iget-object v0, p0, Lzendesk/support/ZendeskAvatarView;->textView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lg/k/c/c;->a:I

    invoke-static {v1, v2}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    iget-object v0, p0, Lzendesk/support/ZendeskAvatarView;->textView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 5
    iget-object v0, p0, Lzendesk/support/ZendeskAvatarView;->textView:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 6
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzendesk/support/ZendeskAvatarView;->imageView:Landroid/widget/ImageView;

    .line 7
    sget v1, Lg/k/c/f;->j1:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 8
    iget-object v0, p0, Lzendesk/support/ZendeskAvatarView;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 9
    iget-object v0, p0, Lzendesk/support/ZendeskAvatarView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setTextView(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lzendesk/support/ZendeskAvatarView;->getColorId(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lzendesk/support/ZendeskAvatarView;->getBackgroundShape(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v0, p0, Lzendesk/support/ZendeskAvatarView;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public setStroke(II)V
    .locals 0

    .line 1
    iput p1, p0, Lzendesk/support/ZendeskAvatarView;->strokeColor:I

    .line 2
    iput p2, p0, Lzendesk/support/ZendeskAvatarView;->strokeWidth:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lzendesk/support/ZendeskAvatarView;->enableOutline:Z

    return-void
.end method

.method public showUserWithAvatarImage(Lg/i/a/d;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lzendesk/support/ZendeskAvatarView;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lzendesk/support/ZendeskAvatarView;->imageView:Landroid/widget/ImageView;

    sget v2, Lg/k/c/c;->v:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    invoke-static {p3}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lzendesk/support/ZendeskAvatarView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    invoke-direct {p0, p3}, Lzendesk/support/ZendeskAvatarView;->setTextView(Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object p3, p0, Lzendesk/support/ZendeskAvatarView;->imageView:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 7
    invoke-interface {p1, p2}, Lg/i/a/d;->e(Ljava/lang/String;)Lg/i/a/g;

    move-result-object p1

    mul-int/lit8 p2, p4, 0x2

    .line 8
    invoke-interface {p1, p2, p2}, Lg/i/a/g;->c(II)Lg/i/a/g;

    move-result-object p1

    .line 9
    invoke-interface {p1}, Lg/i/a/g;->g()Lg/i/a/g;

    move-result-object p1

    .line 10
    invoke-interface {p1}, Lg/i/a/g;->f()Lg/i/a/g;

    move-result-object p1

    iget p2, p0, Lzendesk/support/ZendeskAvatarView;->strokeColor:I

    iget p3, p0, Lzendesk/support/ZendeskAvatarView;->strokeWidth:I

    .line 11
    invoke-static {p4, p2, p3}, Lzendesk/support/PicassoTransformations;->getRoundWithBorderTransformation(III)Lg/i/a/i;

    move-result-object p2

    invoke-interface {p1, p2}, Lg/i/a/g;->e(Lg/i/a/i;)Lg/i/a/g;

    move-result-object p1

    iget-object p2, p0, Lzendesk/support/ZendeskAvatarView;->imageView:Landroid/widget/ImageView;

    .line 12
    invoke-interface {p1, p2}, Lg/i/a/g;->i(Landroid/widget/ImageView;)V

    return-void
.end method

.method public showUserWithIdentifier(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0, p1}, Lzendesk/support/ZendeskAvatarView;->getColorId(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {p0, p1}, Lzendesk/support/ZendeskAvatarView;->getBackgroundShape(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lzendesk/support/ZendeskAvatarView;->imageView:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3
    iget-object p1, p0, Lzendesk/support/ZendeskAvatarView;->imageView:Landroid/widget/ImageView;

    sget v0, Lg/k/c/e;->f:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object p1, p0, Lzendesk/support/ZendeskAvatarView;->textView:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lzendesk/support/ZendeskAvatarView;->imageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showUserWithName(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lzendesk/support/ZendeskAvatarView;->setTextView(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lzendesk/support/ZendeskAvatarView;->textView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lzendesk/support/ZendeskAvatarView;->imageView:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
