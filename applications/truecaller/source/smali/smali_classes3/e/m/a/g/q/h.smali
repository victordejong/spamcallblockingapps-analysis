.class public final Le/m/a/g/q/h;
.super Le/m/a/g/q/c;
.source "SourceFile"


# instance fields
.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    .line 1
    sget v6, Lcom/google/android/material/R$attr;->circularProgressIndicatorStyle:I

    .line 2
    sget v7, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->n:I

    .line 3
    invoke-direct {p0, p1, p2, v6, v7}, Le/m/a/g/q/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->mtrl_progress_circular_size_medium:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->mtrl_progress_circular_inset_medium:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 6
    sget-object v10, Lcom/google/android/material/R$styleable;->CircularProgressIndicator:[I

    const/4 v11, 0x0

    new-array v5, v11, [I

    .line 7
    invoke-static {p1, p2, v6, v7}, Le/m/a/g/o/n;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move-object v0, p1

    move-object v1, p2

    move-object v2, v10

    move v3, v6

    move v4, v7

    .line 8
    invoke-static/range {v0 .. v5}, Le/m/a/g/o/n;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 9
    invoke-virtual {p1, p2, v10, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 10
    sget v0, Lcom/google/android/material/R$styleable;->CircularProgressIndicator_indicatorSize:I

    .line 11
    invoke-static {p1, p2, v0, v8}, Ln3/g0/y;->j0(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    move-result v0

    iget v1, p0, Le/m/a/g/q/c;->a:I

    mul-int/lit8 v1, v1, 0x2

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Le/m/a/g/q/h;->g:I

    .line 13
    sget v0, Lcom/google/android/material/R$styleable;->CircularProgressIndicator_indicatorInset:I

    .line 14
    invoke-static {p1, p2, v0, v9}, Ln3/g0/y;->j0(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    move-result p1

    iput p1, p0, Le/m/a/g/q/h;->h:I

    .line 15
    sget p1, Lcom/google/android/material/R$styleable;->CircularProgressIndicator_indicatorDirectionCircular:I

    .line 16
    invoke-virtual {p2, p1, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Le/m/a/g/q/h;->i:I

    .line 17
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
