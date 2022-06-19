.class public abstract Le/m/a/g/q/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:[I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 2
    iput-object v1, p0, Le/m/a/g/q/c;->c:[I

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$dimen;->mtrl_progress_track_thickness:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 4
    sget-object v8, Lcom/google/android/material/R$styleable;->BaseProgressIndicator:[I

    new-array v7, v0, [I

    .line 5
    invoke-static {p1, p2, p3, p4}, Le/m/a/g/o/n;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, v8

    move v5, p3

    move v6, p4

    .line 6
    invoke-static/range {v2 .. v7}, Le/m/a/g/o/n;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 7
    invoke-virtual {p1, p2, v8, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 8
    sget p3, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_trackThickness:I

    .line 9
    invoke-static {p1, p2, p3, v1}, Ln3/g0/y;->j0(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    move-result p3

    iput p3, p0, Le/m/a/g/q/c;->a:I

    .line 10
    sget p3, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_trackCornerRadius:I

    .line 11
    invoke-static {p1, p2, p3, v0}, Ln3/g0/y;->j0(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    move-result p3

    iget p4, p0, Le/m/a/g/q/c;->a:I

    div-int/lit8 p4, p4, 0x2

    .line 12
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    iput p3, p0, Le/m/a/g/q/c;->b:I

    .line 13
    sget p3, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_showAnimationBehavior:I

    .line 14
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Le/m/a/g/q/c;->e:I

    .line 15
    sget p3, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_hideAnimationBehavior:I

    .line 16
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Le/m/a/g/q/c;->f:I

    .line 17
    sget p3, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_indicatorColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-nez p4, :cond_0

    new-array p3, v1, [I

    .line 18
    sget p4, Lcom/google/android/material/R$attr;->colorPrimary:I

    invoke-static {p1, p4, v2}, Ln3/g0/y;->b0(Landroid/content/Context;II)I

    move-result p4

    aput p4, p3, v0

    iput-object p3, p0, Le/m/a/g/q/c;->c:[I

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p4

    .line 20
    iget p4, p4, Landroid/util/TypedValue;->type:I

    if-eq p4, v1, :cond_1

    new-array p4, v1, [I

    .line 21
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    aput p3, p4, v0

    iput-object p4, p0, Le/m/a/g/q/c;->c:[I

    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    .line 23
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 24
    invoke-virtual {p4, p3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p3

    iput-object p3, p0, Le/m/a/g/q/c;->c:[I

    .line 25
    array-length p3, p3

    if-eqz p3, :cond_3

    .line 26
    :goto_0
    sget p3, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_trackColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 27
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Le/m/a/g/q/c;->d:I

    goto :goto_1

    .line 28
    :cond_2
    iget-object p3, p0, Le/m/a/g/q/c;->c:[I

    aget p3, p3, v0

    iput p3, p0, Le/m/a/g/q/c;->d:I

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    new-array p3, v1, [I

    const p4, 0x1010033

    aput p4, p3, v0

    invoke-virtual {p1, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const p3, 0x3e4ccccd    # 0.2f

    .line 30
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    .line 31
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float/2addr p3, p1

    float-to-int p1, p3

    .line 32
    iget p3, p0, Le/m/a/g/q/c;->d:I

    invoke-static {p3, p1}, Ln3/g0/y;->C(II)I

    move-result p1

    iput p1, p0, Le/m/a/g/q/c;->d:I

    .line 33
    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 34
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "indicatorColors cannot be empty when indicatorColor is not used."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
