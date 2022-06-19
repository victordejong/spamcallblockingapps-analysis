.class public Lcom/google/android/material/textview/MaterialTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v0, 0x0

    const v1, 0x1010084

    .line 1
    invoke-static {p1, p2, v1, v0}, Le/m/a/g/z/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    sget v2, Lcom/google/android/material/R$attr;->textAppearanceLineHeightEnabled:I

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Ln3/g0/y;->M1(Landroid/content/Context;IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 5
    sget-object v4, Lcom/google/android/material/R$styleable;->MaterialTextView:[I

    .line 6
    invoke-virtual {v2, p2, v4, v1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [I

    .line 7
    sget v7, Lcom/google/android/material/R$styleable;->MaterialTextView_android_lineHeight:I

    aput v7, v6, v0

    sget v7, Lcom/google/android/material/R$styleable;->MaterialTextView_lineHeight:I

    aput v7, v6, v3

    .line 8
    invoke-static {p1, v5, v6}, Lcom/google/android/material/textview/MaterialTextView;->g(Landroid/content/Context;Landroid/content/res/TypedArray;[I)I

    move-result p1

    .line 9
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v5, -0x1

    if-eq p1, v5, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    if-nez v3, :cond_1

    .line 10
    invoke-virtual {v2, p2, v4, v1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 11
    sget p2, Lcom/google/android/material/R$styleable;->MaterialTextView_android_textAppearance:I

    .line 12
    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eq p2, v5, :cond_1

    .line 14
    invoke-virtual {p0, v2, p2}, Lcom/google/android/material/textview/MaterialTextView;->f(Landroid/content/res/Resources$Theme;I)V

    :cond_1
    return-void
.end method

.method public static varargs g(Landroid/content/Context;Landroid/content/res/TypedArray;[I)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    .line 1
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_0

    if-gez v2, :cond_0

    .line 2
    aget v2, p2, v1

    invoke-static {p0, p1, v2, v0}, Ln3/g0/y;->j0(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method


# virtual methods
.method public final f(Landroid/content/res/Resources$Theme;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/material/R$styleable;->MaterialTextAppearance:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [I

    sget v1, Lcom/google/android/material/R$styleable;->MaterialTextAppearance_android_lineHeight:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/google/android/material/R$styleable;->MaterialTextAppearance_lineHeight:I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 3
    invoke-static {p2, p1, v0}, Lcom/google/android/material/textview/MaterialTextView;->g(Landroid/content/Context;Landroid/content/res/TypedArray;[I)I

    move-result p2

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-ltz p2, :cond_0

    .line 5
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setLineHeight(I)V

    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2
    sget v0, Lcom/google/android/material/R$attr;->textAppearanceLineHeightEnabled:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Ln3/g0/y;->M1(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->f(Landroid/content/res/Resources$Theme;I)V

    :cond_0
    return-void
.end method
