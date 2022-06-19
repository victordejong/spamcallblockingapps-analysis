.class public Le/m/a/g/e/d$f;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/g/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Ln3/k/i/d0;


# direct methods
.method public constructor <init>(Landroid/view/View;Ln3/k/i/d0;Le/m/a/g/e/d$a;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;-><init>()V

    .line 2
    iput-object p2, p0, Le/m/a/g/e/d$f;->c:Ln3/k/i/d0;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p2

    and-int/lit16 p2, p2, 0x2000

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Le/m/a/g/e/d$f;->b:Z

    .line 4
    invoke-static {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    .line 5
    iget-object v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Le/m/a/g/u/h;

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, v1, Le/m/a/g/u/h;->a:Le/m/a/g/u/h$b;

    iget-object v1, v1, Le/m/a/g/u/h$b;->d:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 7
    :cond_1
    sget-object v1, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_1
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    invoke-static {p1}, Ln3/k/c/a;->d(I)D

    move-result-wide p1

    cmpl-double p1, p1, v2

    if-lez p1, :cond_2

    goto :goto_2

    :cond_2
    move p3, v0

    .line 11
    :goto_2
    iput-boolean p3, p0, Le/m/a/g/e/d$f;->a:Z

    goto :goto_4

    .line 12
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_5

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p1

    if-eqz p1, :cond_4

    .line 14
    invoke-static {p1}, Ln3/k/c/a;->d(I)D

    move-result-wide p1

    cmpl-double p1, p1, v2

    if-lez p1, :cond_4

    goto :goto_3

    :cond_4
    move p3, v0

    .line 15
    :goto_3
    iput-boolean p3, p0, Le/m/a/g/e/d$f;->a:Z

    goto :goto_4

    .line 16
    :cond_5
    iput-boolean p2, p0, Le/m/a/g/e/d$f;->a:Z

    :goto_4
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/m/a/g/e/d$f;->c(Landroid/view/View;)V

    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/m/a/g/e/d$f;->c(Landroid/view/View;)V

    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Le/m/a/g/e/d$f;->c:Ln3/k/i/d0;

    invoke-virtual {v1}, Ln3/k/i/d0;->f()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-boolean v0, p0, Le/m/a/g/e/d$f;->a:Z

    .line 3
    sget v1, Le/m/a/g/e/d;->n:I

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    if-eqz v0, :cond_0

    or-int/lit16 v0, v1, 0x2000

    goto :goto_0

    :cond_0
    and-int/lit16 v0, v1, -0x2001

    .line 5
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Le/m/a/g/e/d$f;->c:Ln3/k/i/d0;

    .line 7
    invoke-virtual {v1}, Ln3/k/i/d0;->f()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 10
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    .line 11
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    iget-boolean v0, p0, Le/m/a/g/e/d$f;->b:Z

    .line 13
    sget v1, Le/m/a/g/e/d;->n:I

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    if-eqz v0, :cond_2

    or-int/lit16 v0, v1, 0x2000

    goto :goto_1

    :cond_2
    and-int/lit16 v0, v1, -0x2001

    .line 15
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 19
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    :goto_2
    return-void
.end method
