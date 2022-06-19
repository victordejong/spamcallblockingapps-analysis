.class public Ln3/b/f/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public b:Ln3/b/f/p0;

.field public c:Ln3/b/f/p0;

.field public d:Ln3/b/f/p0;

.field public e:Ln3/b/f/p0;

.field public f:Ln3/b/f/p0;

.field public g:Ln3/b/f/p0;

.field public h:Ln3/b/f/p0;

.field public final i:Ln3/b/f/s;

.field public j:I

.field public k:I

.field public l:Landroid/graphics/Typeface;

.field public m:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ln3/b/f/q;->j:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Ln3/b/f/q;->k:I

    .line 4
    iput-object p1, p0, Ln3/b/f/q;->a:Landroid/widget/TextView;

    .line 5
    new-instance v0, Ln3/b/f/s;

    invoke-direct {v0, p1}, Ln3/b/f/s;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Ln3/b/f/q;->i:Ln3/b/f/s;

    return-void
.end method

.method public static c(Landroid/content/Context;Ln3/b/f/e;I)Ln3/b/f/p0;
    .locals 0

    .line 1
    invoke-virtual {p1, p0, p2}, Ln3/b/f/e;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    new-instance p1, Ln3/b/f/p0;

    invoke-direct {p1}, Ln3/b/f/p0;-><init>()V

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p1, Ln3/b/f/p0;->d:Z

    .line 4
    iput-object p0, p1, Ln3/b/f/p0;->a:Landroid/content/res/ColorStateList;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;Ln3/b/f/p0;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Ln3/b/f/q;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Ln3/b/f/e;->f(Landroid/graphics/drawable/Drawable;Ln3/b/f/p0;[I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/b/f/q;->b:Ln3/b/f/p0;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Ln3/b/f/q;->c:Ln3/b/f/p0;

    if-nez v0, :cond_0

    iget-object v0, p0, Ln3/b/f/q;->d:Ln3/b/f/p0;

    if-nez v0, :cond_0

    iget-object v0, p0, Ln3/b/f/q;->e:Ln3/b/f/p0;

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/b/f/q;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    aget-object v3, v0, v2

    iget-object v4, p0, Ln3/b/f/q;->b:Ln3/b/f/p0;

    invoke-virtual {p0, v3, v4}, Ln3/b/f/q;->a(Landroid/graphics/drawable/Drawable;Ln3/b/f/p0;)V

    const/4 v3, 0x1

    .line 4
    aget-object v3, v0, v3

    iget-object v4, p0, Ln3/b/f/q;->c:Ln3/b/f/p0;

    invoke-virtual {p0, v3, v4}, Ln3/b/f/q;->a(Landroid/graphics/drawable/Drawable;Ln3/b/f/p0;)V

    .line 5
    aget-object v3, v0, v1

    iget-object v4, p0, Ln3/b/f/q;->d:Ln3/b/f/p0;

    invoke-virtual {p0, v3, v4}, Ln3/b/f/q;->a(Landroid/graphics/drawable/Drawable;Ln3/b/f/p0;)V

    const/4 v3, 0x3

    .line 6
    aget-object v0, v0, v3

    iget-object v3, p0, Ln3/b/f/q;->e:Ln3/b/f/p0;

    invoke-virtual {p0, v0, v3}, Ln3/b/f/q;->a(Landroid/graphics/drawable/Drawable;Ln3/b/f/p0;)V

    .line 7
    :cond_1
    iget-object v0, p0, Ln3/b/f/q;->f:Ln3/b/f/p0;

    if-nez v0, :cond_2

    iget-object v0, p0, Ln3/b/f/q;->g:Ln3/b/f/p0;

    if-eqz v0, :cond_3

    .line 8
    :cond_2
    iget-object v0, p0, Ln3/b/f/q;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 9
    aget-object v2, v0, v2

    iget-object v3, p0, Ln3/b/f/q;->f:Ln3/b/f/p0;

    invoke-virtual {p0, v2, v3}, Ln3/b/f/q;->a(Landroid/graphics/drawable/Drawable;Ln3/b/f/p0;)V

    .line 10
    aget-object v0, v0, v1

    iget-object v1, p0, Ln3/b/f/q;->g:Ln3/b/f/p0;

    invoke-virtual {p0, v0, v1}, Ln3/b/f/q;->a(Landroid/graphics/drawable/Drawable;Ln3/b/f/p0;)V

    :cond_3
    return-void
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/f/q;->i:Ln3/b/f/s;

    .line 2
    invoke-virtual {v0}, Ln3/b/f/s;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Ln3/b/f/s;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(Landroid/util/AttributeSet;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    .line 1
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, v0, Ln3/b/f/q;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 2
    invoke-static {}, Ln3/b/f/e;->a()Ln3/b/f/e;

    move-result-object v12

    .line 3
    sget-object v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper:[I

    const/4 v13, 0x0

    invoke-static {v11, v8, v3, v9, v13}, Ln3/b/f/r0;->q(Landroid/content/Context;Landroid/util/AttributeSet;[III)Ln3/b/f/r0;

    move-result-object v14

    .line 4
    iget-object v1, v0, Ln3/b/f/q;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 5
    iget-object v5, v14, Ln3/b/f/r0;->b:Landroid/content/res/TypedArray;

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move/from16 v6, p2

    .line 6
    invoke-static/range {v1 .. v7}, Ln3/k/i/s;->p(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 7
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_textAppearance:I

    const/4 v15, -0x1

    invoke-virtual {v14, v1, v15}, Ln3/b/f/r0;->l(II)I

    move-result v1

    .line 8
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v14, v2}, Ln3/b/f/r0;->o(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {v14, v2, v13}, Ln3/b/f/r0;->l(II)I

    move-result v2

    .line 10
    invoke-static {v11, v12, v2}, Ln3/b/f/q;->c(Landroid/content/Context;Ln3/b/f/e;I)Ln3/b/f/p0;

    move-result-object v2

    iput-object v2, v0, Ln3/b/f/q;->b:Ln3/b/f/p0;

    .line 11
    :cond_0
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v14, v2}, Ln3/b/f/r0;->o(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12
    invoke-virtual {v14, v2, v13}, Ln3/b/f/r0;->l(II)I

    move-result v2

    .line 13
    invoke-static {v11, v12, v2}, Ln3/b/f/q;->c(Landroid/content/Context;Ln3/b/f/e;I)Ln3/b/f/p0;

    move-result-object v2

    iput-object v2, v0, Ln3/b/f/q;->c:Ln3/b/f/p0;

    .line 14
    :cond_1
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v14, v2}, Ln3/b/f/r0;->o(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 15
    invoke-virtual {v14, v2, v13}, Ln3/b/f/r0;->l(II)I

    move-result v2

    .line 16
    invoke-static {v11, v12, v2}, Ln3/b/f/q;->c(Landroid/content/Context;Ln3/b/f/e;I)Ln3/b/f/p0;

    move-result-object v2

    iput-object v2, v0, Ln3/b/f/q;->d:Ln3/b/f/p0;

    .line 17
    :cond_2
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v14, v2}, Ln3/b/f/r0;->o(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 18
    invoke-virtual {v14, v2, v13}, Ln3/b/f/r0;->l(II)I

    move-result v2

    .line 19
    invoke-static {v11, v12, v2}, Ln3/b/f/q;->c(Landroid/content/Context;Ln3/b/f/e;I)Ln3/b/f/p0;

    move-result-object v2

    iput-object v2, v0, Ln3/b/f/q;->e:Ln3/b/f/p0;

    .line 20
    :cond_3
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    invoke-virtual {v14, v2}, Ln3/b/f/r0;->o(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 21
    invoke-virtual {v14, v2, v13}, Ln3/b/f/r0;->l(II)I

    move-result v2

    .line 22
    invoke-static {v11, v12, v2}, Ln3/b/f/q;->c(Landroid/content/Context;Ln3/b/f/e;I)Ln3/b/f/p0;

    move-result-object v2

    iput-object v2, v0, Ln3/b/f/q;->f:Ln3/b/f/p0;

    .line 23
    :cond_4
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    invoke-virtual {v14, v2}, Ln3/b/f/r0;->o(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 24
    invoke-virtual {v14, v2, v13}, Ln3/b/f/r0;->l(II)I

    move-result v2

    .line 25
    invoke-static {v11, v12, v2}, Ln3/b/f/q;->c(Landroid/content/Context;Ln3/b/f/e;I)Ln3/b/f/p0;

    move-result-object v2

    iput-object v2, v0, Ln3/b/f/q;->g:Ln3/b/f/p0;

    .line 26
    :cond_5
    iget-object v2, v14, Ln3/b/f/r0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 27
    iget-object v2, v0, Ln3/b/f/q;->a:Landroid/widget/TextView;

    .line 28
    invoke-virtual {v2}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    instance-of v2, v2, Landroid/text/method/PasswordTransformationMethod;

    const/16 v3, 0x1a

    if-eq v1, v15, :cond_9

    .line 29
    sget-object v4, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    .line 30
    new-instance v5, Ln3/b/f/r0;

    invoke-virtual {v11, v1, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {v5, v11, v1}, Ln3/b/f/r0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    if-nez v2, :cond_6

    .line 31
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v5, v1}, Ln3/b/f/r0;->o(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 32
    invoke-virtual {v5, v1, v13}, Ln3/b/f/r0;->a(IZ)Z

    move-result v1

    const/4 v4, 0x1

    goto :goto_0

    :cond_6
    move v1, v13

    move v4, v1

    .line 33
    :goto_0
    invoke-virtual {v0, v11, v5}, Ln3/b/f/q;->m(Landroid/content/Context;Ln3/b/f/r0;)V

    .line 34
    sget v6, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v5, v6}, Ln3/b/f/r0;->o(I)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 35
    invoke-virtual {v5, v6}, Ln3/b/f/r0;->m(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    :goto_1
    if-lt v10, v3, :cond_8

    .line 36
    sget v7, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 37
    invoke-virtual {v5, v7}, Ln3/b/f/r0;->o(I)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 38
    invoke-virtual {v5, v7}, Ln3/b/f/r0;->m(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_8
    const/4 v7, 0x0

    .line 39
    :goto_2
    iget-object v5, v5, Ln3/b/f/r0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    :cond_9
    move v1, v13

    move v4, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 40
    :goto_3
    sget-object v5, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    .line 41
    new-instance v14, Ln3/b/f/r0;

    .line 42
    invoke-virtual {v11, v8, v5, v9, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-direct {v14, v11, v5}, Ln3/b/f/r0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    if-nez v2, :cond_a

    .line 43
    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v14, v5}, Ln3/b/f/r0;->o(I)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 44
    invoke-virtual {v14, v5, v13}, Ln3/b/f/r0;->a(IZ)Z

    move-result v1

    const/4 v4, 0x1

    .line 45
    :cond_a
    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v14, v5}, Ln3/b/f/r0;->o(I)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 46
    invoke-virtual {v14, v5}, Ln3/b/f/r0;->m(I)Ljava/lang/String;

    move-result-object v6

    :cond_b
    if-lt v10, v3, :cond_c

    .line 47
    sget v3, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 48
    invoke-virtual {v14, v3}, Ln3/b/f/r0;->o(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 49
    invoke-virtual {v14, v3}, Ln3/b/f/r0;->m(I)Ljava/lang/String;

    move-result-object v7

    :cond_c
    const/16 v3, 0x1c

    if-lt v10, v3, :cond_d

    .line 50
    sget v3, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    .line 51
    invoke-virtual {v14, v3}, Ln3/b/f/r0;->o(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 52
    invoke-virtual {v14, v3, v15}, Ln3/b/f/r0;->f(II)I

    move-result v3

    if-nez v3, :cond_d

    .line 53
    iget-object v3, v0, Ln3/b/f/q;->a:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v13, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 54
    :cond_d
    invoke-virtual {v0, v11, v14}, Ln3/b/f/q;->m(Landroid/content/Context;Ln3/b/f/r0;)V

    .line 55
    iget-object v3, v14, Ln3/b/f/r0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v2, :cond_e

    if-eqz v4, :cond_e

    .line 56
    iget-object v2, v0, Ln3/b/f/q;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 57
    :cond_e
    iget-object v1, v0, Ln3/b/f/q;->l:Landroid/graphics/Typeface;

    if-eqz v1, :cond_10

    .line 58
    iget v2, v0, Ln3/b/f/q;->k:I

    if-ne v2, v15, :cond_f

    .line 59
    iget-object v2, v0, Ln3/b/f/q;->a:Landroid/widget/TextView;

    iget v3, v0, Ln3/b/f/q;->j:I

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_4

    .line 60
    :cond_f
    iget-object v2, v0, Ln3/b/f/q;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_10
    :goto_4
    if-eqz v7, :cond_11

    .line 61
    iget-object v1, v0, Ln3/b/f/q;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    :cond_11
    const/16 v14, 0x18

    if-eqz v6, :cond_13

    if-lt v10, v14, :cond_12

    .line 62
    iget-object v1, v0, Ln3/b/f/q;->a:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextLocales(Landroid/os/LocaleList;)V

    goto :goto_5

    :cond_12
    const/16 v1, 0x2c

    .line 63
    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v6, v13, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 64
    iget-object v2, v0, Ln3/b/f/q;->a:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 65
    :cond_13
    :goto_5
    iget-object v7, v0, Ln3/b/f/q;->i:Ln3/b/f/s;

    .line 66
    iget-object v1, v7, Ln3/b/f/s;->j:Landroid/content/Context;

    sget-object v3, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    invoke-virtual {v1, v8, v3, v9, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 67
    iget-object v1, v7, Ln3/b/f/s;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v18, 0x0

    move-object/from16 v4, p1

    move-object v5, v6

    move-object v14, v6

    move/from16 v6, p2

    move-object v9, v7

    move/from16 v7, v18

    invoke-static/range {v1 .. v7}, Ln3/k/i/s;->p(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 68
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeTextType:I

    invoke-virtual {v14, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 69
    invoke-virtual {v14, v1, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v9, Ln3/b/f/s;->a:I

    .line 70
    :cond_14
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeStepGranularity:I

    invoke-virtual {v14, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz v2, :cond_15

    .line 71
    invoke-virtual {v14, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    goto :goto_6

    :cond_15
    move v1, v3

    .line 72
    :goto_6
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeMinTextSize:I

    invoke-virtual {v14, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 73
    invoke-virtual {v14, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    goto :goto_7

    :cond_16
    move v2, v3

    .line 74
    :goto_7
    sget v4, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeMaxTextSize:I

    invoke-virtual {v14, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 75
    invoke-virtual {v14, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    goto :goto_8

    :cond_17
    move v4, v3

    .line 76
    :goto_8
    sget v5, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizePresetSizes:I

    invoke-virtual {v14, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 77
    invoke-virtual {v14, v5, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-lez v5, :cond_1a

    .line 78
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 79
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 80
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    .line 81
    new-array v7, v6, [I

    if-lez v6, :cond_19

    :goto_9
    if-ge v13, v6, :cond_18

    .line 82
    invoke-virtual {v5, v13, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    aput v19, v7, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 83
    :cond_18
    invoke-virtual {v9, v7}, Ln3/b/f/s;->b([I)[I

    move-result-object v6

    iput-object v6, v9, Ln3/b/f/s;->f:[I

    .line 84
    invoke-virtual {v9}, Ln3/b/f/s;->h()Z

    .line 85
    :cond_19
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    :cond_1a
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    invoke-virtual {v9}, Ln3/b/f/s;->i()Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_1f

    .line 88
    iget v5, v9, Ln3/b/f/s;->a:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_20

    .line 89
    iget-boolean v5, v9, Ln3/b/f/s;->g:Z

    if-nez v5, :cond_1e

    .line 90
    iget-object v5, v9, Ln3/b/f/s;->j:Landroid/content/Context;

    .line 91
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    cmpl-float v7, v2, v3

    if-nez v7, :cond_1b

    const/high16 v2, 0x41400000    # 12.0f

    .line 92
    invoke-static {v6, v2, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    :cond_1b
    cmpl-float v7, v4, v3

    if-nez v7, :cond_1c

    const/high16 v4, 0x42e00000    # 112.0f

    .line 93
    invoke-static {v6, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    :cond_1c
    cmpl-float v5, v1, v3

    if-nez v5, :cond_1d

    const/high16 v1, 0x3f800000    # 1.0f

    .line 94
    :cond_1d
    invoke-virtual {v9, v2, v4, v1}, Ln3/b/f/s;->j(FFF)V

    .line 95
    :cond_1e
    invoke-virtual {v9}, Ln3/b/f/s;->g()Z

    goto :goto_a

    :cond_1f
    const/4 v1, 0x0

    .line 96
    iput v1, v9, Ln3/b/f/s;->a:I

    .line 97
    :cond_20
    :goto_a
    sget-boolean v1, Ln3/k/j/f;->F:Z

    if-eqz v1, :cond_22

    .line 98
    iget-object v1, v0, Ln3/b/f/q;->i:Ln3/b/f/s;

    .line 99
    iget v2, v1, Ln3/b/f/s;->a:I

    if-eqz v2, :cond_22

    .line 100
    iget-object v1, v1, Ln3/b/f/s;->f:[I

    .line 101
    array-length v2, v1

    if-lez v2, :cond_22

    .line 102
    iget-object v2, v0, Ln3/b/f/q;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_21

    .line 103
    iget-object v1, v0, Ln3/b/f/q;->a:Landroid/widget/TextView;

    iget-object v2, v0, Ln3/b/f/q;->i:Ln3/b/f/s;

    .line 104
    iget v2, v2, Ln3/b/f/s;->d:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 105
    iget-object v3, v0, Ln3/b/f/q;->i:Ln3/b/f/s;

    .line 106
    iget v3, v3, Ln3/b/f/s;->e:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 107
    iget-object v4, v0, Ln3/b/f/q;->i:Ln3/b/f/s;

    .line 108
    iget v4, v4, Ln3/b/f/s;->c:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/4 v5, 0x0

    .line 109
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_b

    :cond_21
    const/4 v5, 0x0

    .line 110
    iget-object v2, v0, Ln3/b/f/q;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v5}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 111
    :cond_22
    :goto_b
    sget-object v1, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    .line 112
    invoke-virtual {v11, v8, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 113
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableLeftCompat:I

    .line 114
    invoke-virtual {v1, v2, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eq v2, v15, :cond_23

    .line 115
    invoke-virtual {v12, v11, v2}, Ln3/b/f/e;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_c

    :cond_23
    const/4 v7, 0x0

    .line 116
    :goto_c
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTopCompat:I

    .line 117
    invoke-virtual {v1, v2, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eq v2, v15, :cond_24

    .line 118
    invoke-virtual {v12, v11, v2}, Ln3/b/f/e;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_d

    :cond_24
    const/4 v2, 0x0

    .line 119
    :goto_d
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableRightCompat:I

    .line 120
    invoke-virtual {v1, v3, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eq v3, v15, :cond_25

    .line 121
    invoke-virtual {v12, v11, v3}, Ln3/b/f/e;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_e

    :cond_25
    const/4 v3, 0x0

    .line 122
    :goto_e
    sget v4, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableBottomCompat:I

    .line 123
    invoke-virtual {v1, v4, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eq v4, v15, :cond_26

    .line 124
    invoke-virtual {v12, v11, v4}, Ln3/b/f/e;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_f

    :cond_26
    const/4 v4, 0x0

    .line 125
    :goto_f
    sget v5, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableStartCompat:I

    .line 126
    invoke-virtual {v1, v5, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-eq v5, v15, :cond_27

    .line 127
    invoke-virtual {v12, v11, v5}, Ln3/b/f/e;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_10

    :cond_27
    const/4 v5, 0x0

    .line 128
    :goto_10
    sget v8, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableEndCompat:I

    .line 129
    invoke-virtual {v1, v8, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    if-eq v8, v15, :cond_28

    .line 130
    invoke-virtual {v12, v11, v8}, Ln3/b/f/e;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto :goto_11

    :cond_28
    const/4 v8, 0x0

    :goto_11
    const/4 v9, 0x3

    if-nez v5, :cond_33

    if-eqz v8, :cond_29

    goto :goto_19

    :cond_29
    if-nez v7, :cond_2a

    if-nez v2, :cond_2a

    if-nez v3, :cond_2a

    if-eqz v4, :cond_38

    .line 131
    :cond_2a
    iget-object v5, v0, Ln3/b/f/q;->a:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v8, 0x0

    .line 132
    aget-object v12, v5, v8

    if-nez v12, :cond_30

    aget-object v12, v5, v6

    if-eqz v12, :cond_2b

    goto :goto_16

    .line 133
    :cond_2b
    iget-object v5, v0, Ln3/b/f/q;->a:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 134
    iget-object v12, v0, Ln3/b/f/q;->a:Landroid/widget/TextView;

    if-eqz v7, :cond_2c

    goto :goto_12

    .line 135
    :cond_2c
    aget-object v7, v5, v8

    :goto_12
    if-eqz v2, :cond_2d

    goto :goto_13

    :cond_2d
    const/4 v2, 0x1

    .line 136
    aget-object v2, v5, v2

    :goto_13
    if-eqz v3, :cond_2e

    goto :goto_14

    .line 137
    :cond_2e
    aget-object v3, v5, v6

    :goto_14
    if-eqz v4, :cond_2f

    goto :goto_15

    .line 138
    :cond_2f
    aget-object v4, v5, v9

    .line 139
    :goto_15
    invoke-virtual {v12, v7, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1e

    .line 140
    :cond_30
    :goto_16
    iget-object v3, v0, Ln3/b/f/q;->a:Landroid/widget/TextView;

    const/4 v7, 0x0

    aget-object v8, v5, v7

    if-eqz v2, :cond_31

    goto :goto_17

    :cond_31
    const/4 v2, 0x1

    .line 141
    aget-object v2, v5, v2

    :goto_17
    aget-object v6, v5, v6

    if-eqz v4, :cond_32

    goto :goto_18

    .line 142
    :cond_32
    aget-object v4, v5, v9

    .line 143
    :goto_18
    invoke-virtual {v3, v8, v2, v6, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1e

    .line 144
    :cond_33
    :goto_19
    iget-object v3, v0, Ln3/b/f/q;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 145
    iget-object v7, v0, Ln3/b/f/q;->a:Landroid/widget/TextView;

    if-eqz v5, :cond_34

    goto :goto_1a

    :cond_34
    const/4 v5, 0x0

    .line 146
    aget-object v12, v3, v5

    move-object v5, v12

    :goto_1a
    if-eqz v2, :cond_35

    goto :goto_1b

    :cond_35
    const/4 v2, 0x1

    .line 147
    aget-object v2, v3, v2

    :goto_1b
    if-eqz v8, :cond_36

    goto :goto_1c

    .line 148
    :cond_36
    aget-object v8, v3, v6

    :goto_1c
    if-eqz v4, :cond_37

    goto :goto_1d

    .line 149
    :cond_37
    aget-object v4, v3, v9

    .line 150
    :goto_1d
    invoke-virtual {v7, v5, v2, v8, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 151
    :cond_38
    :goto_1e
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTint:I

    .line 152
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 153
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_39

    const/4 v3, 0x0

    .line 154
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_39

    .line 155
    sget-object v4, Ln3/b/b/a/a;->a:Ljava/lang/ThreadLocal;

    .line 156
    invoke-virtual {v11, v3}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-eqz v3, :cond_39

    goto :goto_1f

    .line 157
    :cond_39
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 158
    :goto_1f
    iget-object v2, v0, Ln3/b/f/q;->a:Landroid/widget/TextView;

    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->o1(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 159
    :cond_3a
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTintMode:I

    .line 160
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 161
    invoke-virtual {v1, v2, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/4 v3, 0x0

    .line 162
    invoke-static {v2, v3}, Ln3/b/f/w;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    .line 163
    iget-object v3, v0, Ln3/b/f/q;->a:Landroid/widget/TextView;

    .line 164
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x18

    if-lt v10, v4, :cond_3b

    .line 165
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_20

    .line 166
    :cond_3b
    instance-of v4, v3, Ln3/k/j/j;

    if-eqz v4, :cond_3c

    .line 167
    check-cast v3, Ln3/k/j/j;

    invoke-interface {v3, v2}, Ln3/k/j/j;->setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 168
    :cond_3c
    :goto_20
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextView_firstBaselineToTopHeight:I

    .line 169
    invoke-virtual {v1, v2, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 170
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_lastBaselineToBottomHeight:I

    .line 171
    invoke-virtual {v1, v3, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 172
    sget v4, Landroidx/appcompat/R$styleable;->AppCompatTextView_lineHeight:I

    .line 173
    invoke-virtual {v1, v4, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 174
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v2, v15, :cond_3d

    .line 175
    iget-object v1, v0, Ln3/b/f/q;->a:Landroid/widget/TextView;

    invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->q1(Landroid/widget/TextView;I)V

    :cond_3d
    if-eq v3, v15, :cond_3e

    .line 176
    iget-object v1, v0, Ln3/b/f/q;->a:Landroid/widget/TextView;

    invoke-static {v1, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->s1(Landroid/widget/TextView;I)V

    :cond_3e
    if-eq v4, v15, :cond_3f

    .line 177
    iget-object v1, v0, Ln3/b/f/q;->a:Landroid/widget/TextView;

    invoke-static {v1, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->t1(Landroid/widget/TextView;I)V

    :cond_3f
    return-void
.end method

.method public f(Landroid/content/Context;I)V
    .locals 4

    .line 1
    sget-object v0, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    .line 2
    new-instance v1, Ln3/b/f/r0;

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Ln3/b/f/r0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 3
    sget p2, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v1, p2}, Ln3/b/f/r0;->o(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v1, p2, v2}, Ln3/b/f/r0;->a(IZ)Z

    move-result p2

    .line 5
    iget-object v0, p0, Ln3/b/f/q;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 6
    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v1, v0}, Ln3/b/f/r0;->o(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    .line 8
    invoke-virtual {v1, v0, v3}, Ln3/b/f/r0;->f(II)I

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Ln3/b/f/q;->a:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 10
    :cond_1
    invoke-virtual {p0, p1, v1}, Ln3/b/f/q;->m(Landroid/content/Context;Ln3/b/f/r0;)V

    const/16 p1, 0x1a

    if-lt p2, p1, :cond_2

    .line 11
    sget p1, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 12
    invoke-virtual {v1, p1}, Ln3/b/f/r0;->o(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 13
    invoke-virtual {v1, p1}, Ln3/b/f/r0;->m(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 14
    iget-object p2, p0, Ln3/b/f/q;->a:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 15
    :cond_2
    iget-object p1, v1, Ln3/b/f/r0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 16
    iget-object p1, p0, Ln3/b/f/q;->l:Landroid/graphics/Typeface;

    if-eqz p1, :cond_3

    .line 17
    iget-object p2, p0, Ln3/b/f/q;->a:Landroid/widget/TextView;

    iget v0, p0, Ln3/b/f/q;->j:I

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_3
    return-void
.end method

.method public g(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .locals 11

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_e

    if-eqz p2, :cond_e

    .line 2
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const/4 p2, 0x0

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p3, p1, p2}, Landroid/view/inputmethod/EditorInfo;->setInitialSurroundingSubText(Ljava/lang/CharSequence;I)V

    goto/16 :goto_7

    .line 4
    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-lt v0, v1, :cond_1

    .line 5
    invoke-virtual {p3, p1, p2}, Landroid/view/inputmethod/EditorInfo;->setInitialSurroundingSubText(Ljava/lang/CharSequence;I)V

    goto/16 :goto_7

    .line 6
    :cond_1
    iget v0, p3, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget v1, p3, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-le v0, v1, :cond_2

    add-int/lit8 v2, v1, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v0, 0x0

    :goto_0
    if-le v0, v1, :cond_3

    sub-int/2addr v0, p2

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v1, 0x0

    .line 7
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v3, 0x0

    if-ltz v2, :cond_d

    if-le v0, v1, :cond_4

    goto/16 :goto_6

    .line 8
    :cond_4
    iget v4, p3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v4, v4, 0xfff

    const/16 v5, 0x81

    const/4 v6, 0x1

    if-eq v4, v5, :cond_6

    const/16 v5, 0xe1

    if-eq v4, v5, :cond_6

    const/16 v5, 0x12

    if-ne v4, v5, :cond_5

    goto :goto_2

    :cond_5
    move v4, p2

    goto :goto_3

    :cond_6
    :goto_2
    move v4, v6

    :goto_3
    if-eqz v4, :cond_7

    .line 9
    invoke-static {p3, v3, p2, p2}, Ln3/k/i/g0/a;->c(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    goto/16 :goto_7

    :cond_7
    const/16 v3, 0x800

    if-gt v1, v3, :cond_8

    .line 10
    invoke-static {p3, p1, v2, v0}, Ln3/k/i/g0/a;->c(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    goto :goto_7

    :cond_8
    sub-int v1, v0, v2

    const/16 v3, 0x400

    if-le v1, v3, :cond_9

    move v3, p2

    goto :goto_4

    :cond_9
    move v3, v1

    .line 11
    :goto_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, v0

    rsub-int v5, v3, 0x800

    const-wide v7, 0x3fe999999999999aL    # 0.8

    int-to-double v9, v5

    mul-double/2addr v9, v7

    double-to-int v7, v9

    .line 12
    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int v7, v5, v7

    .line 13
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v5, v4

    .line 14
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int/2addr v2, v5

    .line 15
    invoke-static {p1, v2, p2}, Ln3/k/i/g0/a;->a(Ljava/lang/CharSequence;II)Z

    move-result v7

    if-eqz v7, :cond_a

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, -0x1

    :cond_a
    add-int v7, v0, v4

    sub-int/2addr v7, v6

    .line 16
    invoke-static {p1, v7, v6}, Ln3/k/i/g0/a;->a(Ljava/lang/CharSequence;II)Z

    move-result v7

    if-eqz v7, :cond_b

    add-int/lit8 v4, v4, -0x1

    :cond_b
    add-int v7, v5, v3

    add-int/2addr v7, v4

    if-eq v3, v1, :cond_c

    add-int v1, v2, v5

    .line 17
    invoke-interface {p1, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    add-int/2addr v4, v0

    .line 18
    invoke-interface {p1, v0, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    aput-object v1, v0, p2

    aput-object p1, v0, v6

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_5

    :cond_c
    add-int/2addr v7, v2

    .line 20
    invoke-interface {p1, v2, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_5
    add-int/2addr v5, p2

    add-int/2addr v3, v5

    .line 21
    invoke-static {p3, p1, v5, v3}, Ln3/k/i/g0/a;->c(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    goto :goto_7

    .line 22
    :cond_d
    :goto_6
    invoke-static {p3, v3, p2, p2}, Ln3/k/i/g0/a;->c(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    :cond_e
    :goto_7
    return-void
.end method

.method public h(IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/b/f/q;->i:Ln3/b/f/s;

    .line 2
    invoke-virtual {v0}, Ln3/b/f/s;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v0, Ln3/b/f/s;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    int-to-float p1, p1

    .line 4
    invoke-static {p4, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    int-to-float p2, p2

    .line 5
    invoke-static {p4, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    int-to-float p3, p3

    .line 6
    invoke-static {p4, p3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    .line 7
    invoke-virtual {v0, p1, p2, p3}, Ln3/b/f/s;->j(FFF)V

    .line 8
    invoke-virtual {v0}, Ln3/b/f/s;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {v0}, Ln3/b/f/s;->a()V

    :cond_0
    return-void
.end method

.method public i([II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/b/f/q;->i:Ln3/b/f/s;

    .line 2
    invoke-virtual {v0}, Ln3/b/f/s;->i()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    if-lez v1, :cond_3

    .line 4
    new-array v3, v1, [I

    if-nez p2, :cond_0

    .line 5
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    goto :goto_1

    .line 6
    :cond_0
    iget-object v4, v0, Ln3/b/f/s;->j:Landroid/content/Context;

    .line 7
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    aget v5, p1, v2

    int-to-float v5, v5

    invoke-static {p2, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    :goto_1
    invoke-virtual {v0, v3}, Ln3/b/f/s;->b([I)[I

    move-result-object p2

    iput-object p2, v0, Ln3/b/f/s;->f:[I

    .line 10
    invoke-virtual {v0}, Ln3/b/f/s;->h()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    .line 11
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "None of the preset sizes is valid: "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 12
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 13
    :cond_3
    iput-boolean v2, v0, Ln3/b/f/s;->g:Z

    .line 14
    :goto_2
    invoke-virtual {v0}, Ln3/b/f/s;->g()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {v0}, Ln3/b/f/s;->a()V

    :cond_4
    return-void
.end method

.method public j(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/b/f/q;->i:Ln3/b/f/s;

    .line 2
    invoke-virtual {v0}, Ln3/b/f/s;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 3
    iget-object p1, v0, Ln3/b/f/s;->j:Landroid/content/Context;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v1, 0x41400000    # 12.0f

    const/4 v2, 0x2

    .line 5
    invoke-static {v2, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/high16 v3, 0x42e00000    # 112.0f

    .line 6
    invoke-static {v2, v3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    invoke-virtual {v0, v1, p1, v2}, Ln3/b/f/s;->j(FFF)V

    .line 8
    invoke-virtual {v0}, Ln3/b/f/s;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {v0}, Ln3/b/f/s;->a()V

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown auto-size text type: "

    invoke-static {v1, p1}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 p1, 0x0

    .line 11
    iput p1, v0, Ln3/b/f/s;->a:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 12
    iput v1, v0, Ln3/b/f/s;->d:F

    .line 13
    iput v1, v0, Ln3/b/f/s;->e:F

    .line 14
    iput v1, v0, Ln3/b/f/s;->c:F

    new-array v1, p1, [I

    .line 15
    iput-object v1, v0, Ln3/b/f/s;->f:[I

    .line 16
    iput-boolean p1, v0, Ln3/b/f/s;->b:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public k(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/f/q;->h:Ln3/b/f/p0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ln3/b/f/p0;

    invoke-direct {v0}, Ln3/b/f/p0;-><init>()V

    iput-object v0, p0, Ln3/b/f/q;->h:Ln3/b/f/p0;

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/b/f/q;->h:Ln3/b/f/p0;

    iput-object p1, v0, Ln3/b/f/p0;->a:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4
    :goto_0
    iput-boolean p1, v0, Ln3/b/f/p0;->d:Z

    .line 5
    iput-object v0, p0, Ln3/b/f/q;->b:Ln3/b/f/p0;

    .line 6
    iput-object v0, p0, Ln3/b/f/q;->c:Ln3/b/f/p0;

    .line 7
    iput-object v0, p0, Ln3/b/f/q;->d:Ln3/b/f/p0;

    .line 8
    iput-object v0, p0, Ln3/b/f/q;->e:Ln3/b/f/p0;

    .line 9
    iput-object v0, p0, Ln3/b/f/q;->f:Ln3/b/f/p0;

    .line 10
    iput-object v0, p0, Ln3/b/f/q;->g:Ln3/b/f/p0;

    return-void
.end method

.method public l(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/f/q;->h:Ln3/b/f/p0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ln3/b/f/p0;

    invoke-direct {v0}, Ln3/b/f/p0;-><init>()V

    iput-object v0, p0, Ln3/b/f/q;->h:Ln3/b/f/p0;

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/b/f/q;->h:Ln3/b/f/p0;

    iput-object p1, v0, Ln3/b/f/p0;->b:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4
    :goto_0
    iput-boolean p1, v0, Ln3/b/f/p0;->c:Z

    .line 5
    iput-object v0, p0, Ln3/b/f/q;->b:Ln3/b/f/p0;

    .line 6
    iput-object v0, p0, Ln3/b/f/q;->c:Ln3/b/f/p0;

    .line 7
    iput-object v0, p0, Ln3/b/f/q;->d:Ln3/b/f/p0;

    .line 8
    iput-object v0, p0, Ln3/b/f/q;->e:Ln3/b/f/p0;

    .line 9
    iput-object v0, p0, Ln3/b/f/q;->f:Ln3/b/f/p0;

    .line 10
    iput-object v0, p0, Ln3/b/f/q;->g:Ln3/b/f/p0;

    return-void
.end method

.method public final m(Landroid/content/Context;Ln3/b/f/r0;)V
    .locals 10

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textStyle:I

    iget v2, p0, Ln3/b/f/q;->j:I

    invoke-virtual {p2, v1, v2}, Ln3/b/f/r0;->j(II)I

    move-result v1

    iput v1, p0, Ln3/b/f/q;->j:I

    const/16 v1, 0x1c

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-lt v0, v1, :cond_0

    .line 2
    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_android_textFontWeight:I

    invoke-virtual {p2, v5, v3}, Ln3/b/f/r0;->j(II)I

    move-result v5

    iput v5, p0, Ln3/b/f/q;->k:I

    if-eq v5, v3, :cond_0

    .line 3
    iget v5, p0, Ln3/b/f/q;->j:I

    and-int/2addr v5, v2

    or-int/2addr v5, v4

    iput v5, p0, Ln3/b/f/q;->j:I

    .line 4
    :cond_0
    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    invoke-virtual {p2, v5}, Ln3/b/f/r0;->o(I)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_6

    sget v6, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    .line 5
    invoke-virtual {p2, v6}, Ln3/b/f/r0;->o(I)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    sget p1, Landroidx/appcompat/R$styleable;->TextAppearance_android_typeface:I

    invoke-virtual {p2, p1}, Ln3/b/f/r0;->o(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7
    iput-boolean v4, p0, Ln3/b/f/q;->m:Z

    .line 8
    invoke-virtual {p2, p1, v7}, Ln3/b/f/r0;->j(II)I

    move-result p1

    if-eq p1, v7, :cond_4

    if-eq p1, v2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object p1, p0, Ln3/b/f/q;->l:Landroid/graphics/Typeface;

    goto :goto_0

    .line 10
    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Ln3/b/f/q;->l:Landroid/graphics/Typeface;

    goto :goto_0

    .line 11
    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Ln3/b/f/q;->l:Landroid/graphics/Typeface;

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    const/4 v6, 0x0

    .line 12
    iput-object v6, p0, Ln3/b/f/q;->l:Landroid/graphics/Typeface;

    .line 13
    sget v6, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v6}, Ln3/b/f/r0;->o(I)Z

    move-result v8

    if-eqz v8, :cond_7

    move v5, v6

    .line 14
    :cond_7
    iget v6, p0, Ln3/b/f/q;->k:I

    .line 15
    iget v8, p0, Ln3/b/f/q;->j:I

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result p1

    if-nez p1, :cond_c

    .line 17
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v9, p0, Ln3/b/f/q;->a:Landroid/widget/TextView;

    invoke-direct {p1, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 18
    new-instance v9, Ln3/b/f/q$a;

    invoke-direct {v9, p0, v6, v8, p1}, Ln3/b/f/q$a;-><init>(Ln3/b/f/q;IILjava/lang/ref/WeakReference;)V

    .line 19
    :try_start_0
    iget p1, p0, Ln3/b/f/q;->j:I

    invoke-virtual {p2, v5, p1, v9}, Ln3/b/f/r0;->i(IILn3/k/b/d/h$a;)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_a

    if-lt v0, v1, :cond_9

    .line 20
    iget v6, p0, Ln3/b/f/q;->k:I

    if-eq v6, v3, :cond_9

    .line 21
    invoke-static {p1, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget v6, p0, Ln3/b/f/q;->k:I

    iget v8, p0, Ln3/b/f/q;->j:I

    and-int/2addr v8, v2

    if-eqz v8, :cond_8

    move v8, v7

    goto :goto_2

    :cond_8
    move v8, v4

    .line 22
    :goto_2
    invoke-static {p1, v6, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Ln3/b/f/q;->l:Landroid/graphics/Typeface;

    goto :goto_3

    .line 23
    :cond_9
    iput-object p1, p0, Ln3/b/f/q;->l:Landroid/graphics/Typeface;

    .line 24
    :cond_a
    :goto_3
    iget-object p1, p0, Ln3/b/f/q;->l:Landroid/graphics/Typeface;

    if-nez p1, :cond_b

    move p1, v7

    goto :goto_4

    :cond_b
    move p1, v4

    :goto_4
    iput-boolean p1, p0, Ln3/b/f/q;->m:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :catch_0
    :cond_c
    iget-object p1, p0, Ln3/b/f/q;->l:Landroid/graphics/Typeface;

    if-nez p1, :cond_f

    .line 26
    invoke-virtual {p2, v5}, Ln3/b/f/r0;->m(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    if-lt v0, v1, :cond_e

    .line 27
    iget p2, p0, Ln3/b/f/q;->k:I

    if-eq p2, v3, :cond_e

    .line 28
    invoke-static {p1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget p2, p0, Ln3/b/f/q;->k:I

    iget v0, p0, Ln3/b/f/q;->j:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_d

    move v4, v7

    .line 29
    :cond_d
    invoke-static {p1, p2, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Ln3/b/f/q;->l:Landroid/graphics/Typeface;

    goto :goto_5

    .line 30
    :cond_e
    iget p2, p0, Ln3/b/f/q;->j:I

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Ln3/b/f/q;->l:Landroid/graphics/Typeface;

    :cond_f
    :goto_5
    return-void
.end method
