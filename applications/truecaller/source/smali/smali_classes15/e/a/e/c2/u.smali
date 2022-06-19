.class public Le/a/e/c2/u;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Lcom/truecaller/common/tag/TagView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    iput v1, p0, Le/a/e/c2/u;->a:I

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Le/a/e/c2/u;->getLayout()I

    move-result v2

    invoke-static {p2, v2, p0}, Landroid/widget/RelativeLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 4
    :cond_0
    new-instance p2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f130363

    invoke-direct {p2, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p0}, Le/a/e/c2/u;->getLayout()I

    move-result v2

    invoke-virtual {p2, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :goto_0
    const/4 p2, 0x1

    .line 5
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    const v2, 0x7f0a1141

    .line 6
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/truecaller/common/tag/TagView;

    iput-object v2, p0, Le/a/e/c2/u;->b:Lcom/truecaller/common/tag/TagView;

    .line 7
    sget-object v2, Lcom/truecaller/R$styleable;->CallerButtonBase:[I

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    move v2, v1

    move v3, v2

    .line 8
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    if-ge v2, v4, :cond_f

    .line 9
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_1

    .line 10
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Le/a/e/c2/u;->setHeadingText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_1
    const/16 v5, 0x9

    if-ne v4, v5, :cond_2

    .line 11
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Le/a/e/c2/u;->setDetailsText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_2
    const/16 v5, 0xb

    if-ne v4, v5, :cond_3

    .line 12
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Le/a/e/c2/u;->setFooterText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_3
    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 13
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {p0, v4}, Le/a/e/c2/u;->setLeftImage(I)V

    goto/16 :goto_2

    :cond_4
    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 14
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {p0, v4}, Le/a/e/c2/u;->setRightImage(I)V

    goto/16 :goto_2

    :cond_5
    const/4 v5, 0x5

    if-ne v4, v5, :cond_6

    .line 15
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {p0, v4}, Le/a/e/c2/u;->setRightImageSecondary(I)V

    goto/16 :goto_2

    :cond_6
    const/16 v5, 0xd

    if-ne v4, v5, :cond_7

    const v5, 0x7f1302ef

    .line 16
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {p0, v4}, Le/a/e/c2/u;->setHeadingTextStyle(I)V

    goto :goto_2

    :cond_7
    const/16 v5, 0xa

    if-ne v4, v5, :cond_8

    const v5, 0x7f1302ed

    .line 17
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {p0, v4}, Le/a/e/c2/u;->setDetailsTextStyle(I)V

    goto :goto_2

    :cond_8
    const/16 v5, 0x8

    if-ne v4, v5, :cond_9

    .line 18
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Le/a/e/c2/u;->setSingleLine(Z)V

    goto :goto_2

    :cond_9
    const/4 v5, 0x6

    if-ne v4, v5, :cond_a

    .line 19
    invoke-virtual {v0, v4, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Le/a/e/c2/u;->setShowFullDivider(Z)V

    goto :goto_2

    :cond_a
    const/4 v5, 0x7

    if-ne v4, v5, :cond_b

    .line 20
    invoke-virtual {v0, v4, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Le/a/e/c2/u;->setShowPartialDivider(Z)V

    goto :goto_2

    :cond_b
    const/4 v5, 0x2

    if-ne v4, v5, :cond_c

    .line 21
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700f2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {p0, v4}, Le/a/e/c2/u;->setButtonHeight(I)V

    goto :goto_2

    :cond_c
    if-ne v4, p2, :cond_d

    .line 22
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Le/a/e/c2/u;->a:I

    .line 23
    invoke-virtual {p0, v4}, Le/a/e/c2/u;->setImageTint(I)V

    goto :goto_2

    :cond_d
    if-nez v4, :cond_e

    .line 24
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 25
    sget v4, Le/a/o5/j0;->b:I

    .line 26
    invoke-virtual {p0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move v3, p2

    :cond_e
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 27
    :cond_f
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v3, :cond_10

    new-array p2, p2, [I

    const v0, 0x7f0404d3

    aput v0, p2, v1

    .line 28
    invoke-virtual {p1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 29
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 30
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 31
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    :cond_10
    new-instance p1, Le/a/e/c2/b;

    invoke-direct {p1, p0}, Le/a/e/c2/b;-><init>(Le/a/e/c2/u;)V

    .line 33
    invoke-virtual {p0}, Le/a/e/c2/u;->getRightImage()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    invoke-virtual {p0}, Le/a/e/c2/u;->getRightImageSecondary()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget v0, p0, Le/a/e/c2/u;->a:I

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 3
    :cond_0
    sget v0, Le/a/o5/j0;->b:I

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 5
    check-cast p1, Landroid/widget/ImageView;

    if-nez p1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    move p2, v0

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 7
    :goto_0
    invoke-static {p1, p2, v0}, Le/a/o5/j0;->v(Landroid/view/View;ZZ)Landroid/view/View;

    :goto_1
    return-void
.end method

.method public final b(Landroid/widget/ImageView;I)V
    .locals 0

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getDetailsTextView()Landroid/widget/TextView;
    .locals 1

    const v0, 0x7f0a02d7

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public getExtraRightButton()Landroid/widget/ImageView;
    .locals 1

    const v0, 0x7f0a02c5

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public getFooterTextView()Landroid/widget/TextView;
    .locals 1

    const v0, 0x7f0a02d8

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public getHeadingTextView()Landroid/widget/TextView;
    .locals 1

    const v0, 0x7f0a02d9

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public getLayout()I
    .locals 1

    const v0, 0x7f0d00c3

    return v0
.end method

.method public getLeftImage()Landroid/widget/ImageView;
    .locals 1

    const v0, 0x7f0a02c3

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public getRightImage()Landroid/widget/ImageView;
    .locals 1

    const v0, 0x7f0a02c4

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public getRightImageSecondary()Landroid/widget/ImageView;
    .locals 1

    const v0, 0x7f0a02c6

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public setButtonHeight(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v0, 0x7f0a1187

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public setDetailsText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/e/c2/u;->getDetailsTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, p1}, Le/a/o5/j0;->t(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDetailsTextStyle(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/e/c2/u;->getDetailsTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    return-void
.end method

.method public setFooterText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/e/c2/u;->getFooterTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, p1}, Le/a/o5/j0;->t(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHeadingMaxLines(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/e/c2/u;->getHeadingTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void
.end method

.method public setHeadingText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/e/c2/u;->getHeadingTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, p1}, Le/a/o5/j0;->t(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHeadingTextStyle(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/e/c2/u;->getHeadingTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    return-void
.end method

.method public setImageTint(I)V
    .locals 1

    .line 1
    iput p1, p0, Le/a/e/c2/u;->a:I

    .line 2
    invoke-virtual {p0}, Le/a/e/c2/u;->getRightImage()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Le/a/e/c2/u;->b(Landroid/widget/ImageView;I)V

    .line 3
    invoke-virtual {p0}, Le/a/e/c2/u;->getRightImageSecondary()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Le/a/e/c2/u;->b(Landroid/widget/ImageView;I)V

    .line 4
    invoke-virtual {p0}, Le/a/e/c2/u;->getLeftImage()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Le/a/e/c2/u;->b(Landroid/widget/ImageView;I)V

    .line 5
    invoke-virtual {p0}, Le/a/e/c2/u;->getExtraRightButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Le/a/e/c2/u;->b(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public setLeftImage(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    sget-object v1, Ln3/k/b/d/h;->a:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const v0, 0x7f0a02c3

    .line 4
    invoke-virtual {p0, v0, p1}, Le/a/e/c2/u;->a(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLeftImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const v0, 0x7f0a02c3

    .line 5
    invoke-virtual {p0, v0, p1}, Le/a/e/c2/u;->a(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setMaxLines(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/e/c2/u;->getHeadingTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void
.end method

.method public setRightImage(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    sget-object v1, Ln3/k/b/d/h;->a:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x7f0a02c4

    .line 4
    invoke-virtual {p0, v1, v0}, Le/a/e/c2/u;->a(ILandroid/graphics/drawable/Drawable;)V

    .line 5
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setRightImageSecondary(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    sget-object v1, Ln3/k/b/d/h;->a:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x7f0a02c6

    .line 4
    invoke-virtual {p0, v1, v0}, Le/a/e/c2/u;->a(ILandroid/graphics/drawable/Drawable;)V

    .line 5
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setRightImageTint(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/e/c2/u;->getRightImage()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Le/a/e/c2/u;->b(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public setShowButtonDividers(Z)V
    .locals 1

    const v0, 0x7f0a0e71

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    return-void
.end method

.method public setShowFullDivider(Z)V
    .locals 2

    const v0, 0x7f0a0624

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    .line 3
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setShowPartialDivider(Z)V
    .locals 3

    const v0, 0x7f0a0624

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070306

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Le/a/e/c2/u;->getDetailsTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Le/a/e/c2/u;->getFooterTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Le/a/e/c2/u;->getHeadingTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void
.end method

.method public setTag(Le/a/b0/p/c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/e/c2/u;->b:Lcom/truecaller/common/tag/TagView;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-static {v0, v2, v1}, Le/a/o5/j0;->v(Landroid/view/View;ZZ)Landroid/view/View;

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Le/a/e/c2/u;->b:Lcom/truecaller/common/tag/TagView;

    invoke-virtual {v0, p1}, Lcom/truecaller/common/tag/TagView;->setTag(Le/a/b0/p/c;)V

    :cond_1
    return-void
.end method
