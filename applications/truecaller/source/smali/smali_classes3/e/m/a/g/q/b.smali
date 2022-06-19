.class public abstract Le/m/a/g/q/b;
.super Landroid/widget/ProgressBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Le/m/a/g/q/c;",
        ">",
        "Landroid/widget/ProgressBar;"
    }
.end annotation


# static fields
.field public static final m:I


# instance fields
.field public a:Le/m/a/g/q/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Z

.field public d:Z

.field public final e:I

.field public f:Le/m/a/g/q/a;

.field public g:Z

.field public h:I

.field public final i:Ljava/lang/Runnable;

.field public final j:Ljava/lang/Runnable;

.field public final k:Ln3/h0/a/a/b;

.field public final l:Ln3/h0/a/a/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_ProgressIndicator:I

    sput v0, Le/m/a/g/q/b;->m:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    .line 1
    sget v0, Le/m/a/g/q/b;->m:I

    invoke-static {p1, p2, p3, v0}, Le/m/a/g/z/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Le/m/a/g/q/b;->g:Z

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Le/m/a/g/q/b;->h:I

    .line 4
    new-instance v0, Le/m/a/g/q/b$a;

    invoke-direct {v0, p0}, Le/m/a/g/q/b$a;-><init>(Le/m/a/g/q/b;)V

    iput-object v0, p0, Le/m/a/g/q/b;->i:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Le/m/a/g/q/b$b;

    invoke-direct {v0, p0}, Le/m/a/g/q/b$b;-><init>(Le/m/a/g/q/b;)V

    iput-object v0, p0, Le/m/a/g/q/b;->j:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Le/m/a/g/q/b$c;

    invoke-direct {v0, p0}, Le/m/a/g/q/b$c;-><init>(Le/m/a/g/q/b;)V

    iput-object v0, p0, Le/m/a/g/q/b;->k:Ln3/h0/a/a/b;

    .line 7
    new-instance v0, Le/m/a/g/q/b$d;

    invoke-direct {v0, p0}, Le/m/a/g/q/b$d;-><init>(Le/m/a/g/q/b;)V

    iput-object v0, p0, Le/m/a/g/q/b;->l:Ln3/h0/a/a/b;

    .line 8
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 9
    new-instance v1, Le/m/a/g/q/h;

    invoke-direct {v1, v0, p2}, Le/m/a/g/q/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    iput-object v1, p0, Le/m/a/g/q/b;->a:Le/m/a/g/q/c;

    .line 11
    sget-object v7, Lcom/google/android/material/R$styleable;->BaseProgressIndicator:[I

    new-array v6, p1, [I

    .line 12
    invoke-static {v0, p2, p3, p4}, Le/m/a/g/o/n;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move-object v1, v0

    move-object v2, p2

    move-object v3, v7

    move v4, p3

    move v5, p4

    .line 13
    invoke-static/range {v1 .. v6}, Le/m/a/g/o/n;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 14
    invoke-virtual {v0, p2, v7, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 15
    sget p2, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_showDelay:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 16
    sget p2, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_minHideDelay:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/16 p3, 0x3e8

    .line 17
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Le/m/a/g/q/b;->e:I

    .line 18
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    new-instance p1, Le/m/a/g/q/a;

    invoke-direct {p1}, Le/m/a/g/q/a;-><init>()V

    iput-object p1, p0, Le/m/a/g/q/b;->f:Le/m/a/g/q/a;

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Le/m/a/g/q/b;->d:Z

    return-void
.end method

.method private getCurrentDrawingDelegate()Le/m/a/g/q/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/m/a/g/q/m<",
            "TS;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Le/m/a/g/q/b;->getIndeterminateDrawable()Le/m/a/g/q/o;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Le/m/a/g/q/b;->getIndeterminateDrawable()Le/m/a/g/q/o;

    move-result-object v0

    .line 4
    iget-object v1, v0, Le/m/a/g/q/o;->l:Le/m/a/g/q/m;

    :goto_0
    return-object v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Le/m/a/g/q/b;->getProgressDrawable()Le/m/a/g/q/i;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Le/m/a/g/q/b;->getProgressDrawable()Le/m/a/g/q/i;

    move-result-object v0

    .line 6
    iget-object v1, v0, Le/m/a/g/q/i;->l:Le/m/a/g/q/m;

    :goto_1
    return-object v1
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Le/m/a/g/q/b;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/m/a/g/q/b;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Le/m/a/g/q/l;

    .line 3
    invoke-virtual {p0}, Le/m/a/g/q/b;->c()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Le/m/a/g/q/l;->h(ZZZ)Z

    return-void
.end method

.method public b(IZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p0}, Le/m/a/g/q/b;->getProgressDrawable()Le/m/a/g/q/i;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3
    iput p1, p0, Le/m/a/g/q/b;->b:I

    .line 4
    iput-boolean p2, p0, Le/m/a/g/q/b;->c:Z

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Le/m/a/g/q/b;->g:Z

    .line 6
    invoke-virtual {p0}, Le/m/a/g/q/b;->getIndeterminateDrawable()Le/m/a/g/q/o;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Le/m/a/g/q/b;->f:Le/m/a/g/q/a;

    .line 7
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 8
    invoke-virtual {p1, p2}, Le/m/a/g/q/a;->a(Landroid/content/ContentResolver;)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Le/m/a/g/q/b;->getIndeterminateDrawable()Le/m/a/g/q/o;

    move-result-object p1

    .line 10
    iget-object p1, p1, Le/m/a/g/q/o;->m:Le/m/a/g/q/n;

    .line 11
    check-cast p1, Le/m/a/g/q/g;

    .line 12
    iget-object p2, p1, Le/m/a/g/q/g;->e:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    iget-object p2, p1, Le/m/a/g/q/n;->a:Le/m/a/g/q/o;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 14
    iget-object p1, p1, Le/m/a/g/q/g;->e:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {p1}, Le/m/a/g/q/g;->a()V

    goto :goto_1

    .line 16
    :cond_3
    :goto_0
    iget-object p1, p0, Le/m/a/g/q/b;->k:Ln3/h0/a/a/b;

    invoke-virtual {p0}, Le/m/a/g/q/b;->getIndeterminateDrawable()Le/m/a/g/q/o;

    move-result-object p2

    invoke-virtual {p1, p2}, Ln3/h0/a/a/b;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 17
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 18
    invoke-virtual {p0}, Le/m/a/g/q/b;->getProgressDrawable()Le/m/a/g/q/i;

    move-result-object p1

    if-eqz p1, :cond_5

    if-nez p2, :cond_5

    .line 19
    invoke-virtual {p0}, Le/m/a/g/q/b;->getProgressDrawable()Le/m/a/g/q/i;

    move-result-object p1

    invoke-virtual {p1}, Le/m/a/g/q/i;->jumpToCurrentState()V

    :cond_5
    :goto_1
    return-void
.end method

.method public c()Z
    .locals 4

    .line 1
    sget-object v0, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_4

    move-object v0, p0

    .line 4
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    move v0, v1

    goto :goto_3

    :cond_1
    :goto_2
    move v0, v2

    goto :goto_3

    .line 7
    :cond_2
    instance-of v3, v0, Landroid/view/View;

    if-nez v3, :cond_3

    goto :goto_1

    :goto_3
    if-eqz v0, :cond_4

    goto :goto_4

    .line 8
    :cond_3
    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_4
    return v1
.end method

.method public getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/m/a/g/q/b;->getIndeterminateDrawable()Le/m/a/g/q/o;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Le/m/a/g/q/b;->getProgressDrawable()Le/m/a/g/q/i;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getHideAnimationBehavior()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/q/b;->a:Le/m/a/g/q/c;

    iget v0, v0, Le/m/a/g/q/c;->f:I

    return v0
.end method

.method public bridge synthetic getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/a/g/q/b;->getIndeterminateDrawable()Le/m/a/g/q/o;

    move-result-object v0

    return-object v0
.end method

.method public getIndeterminateDrawable()Le/m/a/g/q/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/m/a/g/q/o<",
            "TS;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Le/m/a/g/q/o;

    return-object v0
.end method

.method public getIndicatorColor()[I
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/q/b;->a:Le/m/a/g/q/c;

    iget-object v0, v0, Le/m/a/g/q/c;->c:[I

    return-object v0
.end method

.method public bridge synthetic getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/a/g/q/b;->getProgressDrawable()Le/m/a/g/q/i;

    move-result-object v0

    return-object v0
.end method

.method public getProgressDrawable()Le/m/a/g/q/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/m/a/g/q/i<",
            "TS;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Le/m/a/g/q/i;

    return-object v0
.end method

.method public getShowAnimationBehavior()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/q/b;->a:Le/m/a/g/q/c;

    iget v0, v0, Le/m/a/g/q/c;->e:I

    return v0
.end method

.method public getTrackColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/q/b;->a:Le/m/a/g/q/c;

    iget v0, v0, Le/m/a/g/q/c;->d:I

    return v0
.end method

.method public getTrackCornerRadius()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/q/b;->a:Le/m/a/g/q/c;

    iget v0, v0, Le/m/a/g/q/c;->b:I

    return v0
.end method

.method public getTrackThickness()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/q/b;->a:Le/m/a/g/q/c;

    iget v0, v0, Le/m/a/g/q/c;->a:I

    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ProgressBar;->invalidate()V

    .line 2
    invoke-virtual {p0}, Le/m/a/g/q/b;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Le/m/a/g/q/b;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/ProgressBar;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Le/m/a/g/q/b;->getProgressDrawable()Le/m/a/g/q/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/m/a/g/q/b;->getIndeterminateDrawable()Le/m/a/g/q/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Le/m/a/g/q/b;->getIndeterminateDrawable()Le/m/a/g/q/o;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/m/a/g/q/o;->m:Le/m/a/g/q/n;

    .line 5
    iget-object v1, p0, Le/m/a/g/q/b;->k:Ln3/h0/a/a/b;

    .line 6
    check-cast v0, Le/m/a/g/q/g;

    .line 7
    iput-object v1, v0, Le/m/a/g/q/g;->k:Ln3/h0/a/a/b;

    .line 8
    :cond_0
    invoke-virtual {p0}, Le/m/a/g/q/b;->getProgressDrawable()Le/m/a/g/q/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p0}, Le/m/a/g/q/b;->getProgressDrawable()Le/m/a/g/q/i;

    move-result-object v0

    iget-object v1, p0, Le/m/a/g/q/b;->l:Ln3/h0/a/a/b;

    invoke-virtual {v0, v1}, Le/m/a/g/q/l;->g(Ln3/h0/a/a/b;)V

    .line 10
    :cond_1
    invoke-virtual {p0}, Le/m/a/g/q/b;->getIndeterminateDrawable()Le/m/a/g/q/o;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p0}, Le/m/a/g/q/b;->getIndeterminateDrawable()Le/m/a/g/q/o;

    move-result-object v0

    iget-object v1, p0, Le/m/a/g/q/b;->l:Ln3/h0/a/a/b;

    invoke-virtual {v0, v1}, Le/m/a/g/q/l;->g(Ln3/h0/a/a/b;)V

    .line 12
    :cond_2
    invoke-virtual {p0}, Le/m/a/g/q/b;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    iget v0, p0, Le/m/a/g/q/b;->e:I

    if-lez v0, :cond_3

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    :cond_3
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/g/q/b;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Le/m/a/g/q/b;->i:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    invoke-virtual {p0}, Le/m/a/g/q/b;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Le/m/a/g/q/l;

    invoke-virtual {v0}, Le/m/a/g/q/l;->d()Z

    .line 4
    invoke-virtual {p0}, Le/m/a/g/q/b;->getIndeterminateDrawable()Le/m/a/g/q/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Le/m/a/g/q/b;->getIndeterminateDrawable()Le/m/a/g/q/o;

    move-result-object v0

    iget-object v1, p0, Le/m/a/g/q/b;->l:Ln3/h0/a/a/b;

    invoke-virtual {v0, v1}, Le/m/a/g/q/l;->j(Ln3/h0/a/a/b;)Z

    .line 6
    invoke-virtual {p0}, Le/m/a/g/q/b;->getIndeterminateDrawable()Le/m/a/g/q/o;

    move-result-object v0

    .line 7
    iget-object v0, v0, Le/m/a/g/q/o;->m:Le/m/a/g/q/n;

    .line 8
    check-cast v0, Le/m/a/g/q/g;

    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Le/m/a/g/q/g;->k:Ln3/h0/a/a/b;

    .line 10
    :cond_0
    invoke-virtual {p0}, Le/m/a/g/q/b;->getProgressDrawable()Le/m/a/g/q/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p0}, Le/m/a/g/q/b;->getProgressDrawable()Le/m/a/g/q/i;

    move-result-object v0

    iget-object v1, p0, Le/m/a/g/q/b;->l:Ln3/h0/a/a/b;

    invoke-virtual {v0, v1}, Le/m/a/g/q/l;->j(Ln3/h0/a/a/b;)Z

    .line 12
    :cond_1
    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    return-void
.end method

.method public declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingLeft()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingTop()I

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingRight()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingBottom()I

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 6
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    .line 7
    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 8
    :cond_3
    invoke-virtual {p0}, Le/m/a/g/q/b;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 9
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onMeasure(II)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onMeasure(II)V

    .line 2
    invoke-direct {p0}, Le/m/a/g/q/b;->getCurrentDrawingDelegate()Le/m/a/g/q/m;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Le/m/a/g/q/m;->d()I

    move-result p2

    .line 5
    invoke-virtual {p1}, Le/m/a/g/q/m;->c()I

    move-result p1

    if-gez p2, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result p2

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingLeft()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingRight()I

    move-result v0

    add-int/2addr p2, v0

    :goto_0
    if-gez p1, :cond_2

    .line 8
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result p1

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingTop()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingBottom()I

    move-result v0

    add-int/2addr p1, v0

    .line 10
    :goto_1
    invoke-virtual {p0, p2, p1}, Landroid/widget/ProgressBar;->setMeasuredDimension(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Le/m/a/g/q/b;->a(Z)V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onWindowVisibilityChanged(I)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Le/m/a/g/q/b;->a(Z)V

    return-void
.end method

.method public setAnimatorDurationScaleProvider(Le/m/a/g/q/a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Le/m/a/g/q/b;->f:Le/m/a/g/q/a;

    .line 2
    invoke-virtual {p0}, Le/m/a/g/q/b;->getProgressDrawable()Le/m/a/g/q/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Le/m/a/g/q/b;->getProgressDrawable()Le/m/a/g/q/i;

    move-result-object v0

    iput-object p1, v0, Le/m/a/g/q/l;->c:Le/m/a/g/q/a;

    .line 4
    :cond_0
    invoke-virtual {p0}, Le/m/a/g/q/b;->getIndeterminateDrawable()Le/m/a/g/q/o;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Le/m/a/g/q/b;->getIndeterminateDrawable()Le/m/a/g/q/o;

    move-result-object v0

    iput-object p1, v0, Le/m/a/g/q/l;->c:Le/m/a/g/q/a;

    :cond_1
    return-void
.end method

.method public setHideAnimationBehavior(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/q/b;->a:Le/m/a/g/q/c;

    iput p1, v0, Le/m/a/g/q/c;->f:I

    .line 2
    invoke-virtual {p0}, Le/m/a/g/q/b;->invalidate()V

    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Le/m/a/g/q/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot switch to indeterminate mode while the progress indicator is visible."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_2
    :goto_0
    invoke-virtual {p0}, Le/m/a/g/q/b;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Le/m/a/g/q/l;

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0}, Le/m/a/g/q/l;->d()Z

    .line 7
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 8
    invoke-virtual {p0}, Le/m/a/g/q/b;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Le/m/a/g/q/l;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 9
    invoke-virtual {p0}, Le/m/a/g/q/b;->c()Z

    move-result v1

    invoke-virtual {p1, v1, v0, v0}, Le/m/a/g/q/l;->h(ZZZ)Z

    .line 10
    :cond_4
    iput-boolean v0, p0, Le/m/a/g/q/b;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 2
    :cond_0
    instance-of v0, p1, Le/m/a/g/q/o;

    if-eqz v0, :cond_1

    .line 3
    move-object v0, p1

    check-cast v0, Le/m/a/g/q/l;

    invoke-virtual {v0}, Le/m/a/g/q/l;->d()Z

    .line 4
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set framework drawable as indeterminate drawable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs setIndicatorColor([I)V
    .locals 4

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$attr;->colorPrimary:I

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Ln3/g0/y;->b0(Landroid/content/Context;II)I

    move-result v1

    aput v1, p1, v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Le/m/a/g/q/b;->getIndicatorColor()[I

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Le/m/a/g/q/b;->a:Le/m/a/g/q/c;

    iput-object p1, v0, Le/m/a/g/q/c;->c:[I

    .line 5
    invoke-virtual {p0}, Le/m/a/g/q/b;->getIndeterminateDrawable()Le/m/a/g/q/o;

    move-result-object p1

    .line 6
    iget-object p1, p1, Le/m/a/g/q/o;->m:Le/m/a/g/q/n;

    .line 7
    check-cast p1, Le/m/a/g/q/g;

    .line 8
    invoke-virtual {p1}, Le/m/a/g/q/g;->c()V

    .line 9
    invoke-virtual {p0}, Le/m/a/g/q/b;->invalidate()V

    :cond_1
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_1
    invoke-virtual {p0, p1, v0}, Le/m/a/g/q/b;->b(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 2
    :cond_0
    instance-of v0, p1, Le/m/a/g/q/i;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Le/m/a/g/q/i;

    .line 4
    invoke-virtual {p1}, Le/m/a/g/q/l;->d()Z

    .line 5
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x461c4000    # 10000.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    return-void

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set framework drawable as progress drawable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShowAnimationBehavior(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/q/b;->a:Le/m/a/g/q/c;

    iput p1, v0, Le/m/a/g/q/c;->e:I

    .line 2
    invoke-virtual {p0}, Le/m/a/g/q/b;->invalidate()V

    return-void
.end method

.method public setTrackColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/g/q/b;->a:Le/m/a/g/q/c;

    iget v1, v0, Le/m/a/g/q/c;->d:I

    if-eq v1, p1, :cond_0

    .line 2
    iput p1, v0, Le/m/a/g/q/c;->d:I

    .line 3
    invoke-virtual {p0}, Le/m/a/g/q/b;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTrackCornerRadius(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/g/q/b;->a:Le/m/a/g/q/c;

    iget v1, v0, Le/m/a/g/q/c;->b:I

    if-eq v1, p1, :cond_0

    .line 2
    iget v1, v0, Le/m/a/g/q/c;->a:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v0, Le/m/a/g/q/c;->b:I

    :cond_0
    return-void
.end method

.method public setTrackThickness(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/g/q/b;->a:Le/m/a/g/q/c;

    iget v1, v0, Le/m/a/g/q/c;->a:I

    if-eq v1, p1, :cond_0

    .line 2
    iput p1, v0, Le/m/a/g/q/c;->a:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setVisibilityAfterHide(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The component\'s visibility must be one of VISIBLE, INVISIBLE, and GONE defined in View."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iput p1, p0, Le/m/a/g/q/b;->h:I

    return-void
.end method
