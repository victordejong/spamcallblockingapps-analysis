.class public final Le/a/a/h1/o/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/h1/o/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/h1/o/n$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/a/h1/o/g;

.field public final b:Le/a/a/h1/o/f;

.field public final c:Landroid/widget/ImageView;

.field public final d:Le/a/a/h1/o/d;

.field public final e:Landroid/view/View;

.field public final f:Landroid/view/WindowManager;

.field public g:F

.field public h:F

.field public i:Z

.field public final j:F

.field public final k:F

.field public final l:I

.field public m:Landroid/animation/ValueAnimator;

.field public final n:Landroid/content/Context;

.field public final o:Le/a/a/h1/o/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/a/h1/o/i;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "presenter"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/h1/o/n;->n:Landroid/content/Context;

    iput-object p2, p0, Le/a/a/h1/o/n;->o:Le/a/a/h1/o/i;

    .line 2
    new-instance p2, Le/a/a/h1/o/g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-direct {p2, p1, v1, v2, v3}, Le/a/a/h1/o/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p2, p0, Le/a/a/h1/o/n;->a:Le/a/a/h1/o/g;

    .line 3
    new-instance v4, Le/a/a/h1/o/f;

    invoke-direct {v4, p1, v1, v2, v3}, Le/a/a/h1/o/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v4, p0, Le/a/a/h1/o/n;->b:Le/a/a/h1/o/f;

    .line 4
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Le/a/a/h1/o/n;->c:Landroid/widget/ImageView;

    .line 5
    new-instance v5, Le/a/a/h1/o/d;

    invoke-direct {v5, p1, v1, v2, v3}, Le/a/a/h1/o/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v5, p0, Le/a/a/h1/o/n;->d:Le/a/a/h1/o/d;

    .line 6
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Le/a/a/h1/o/n;->e:Landroid/view/View;

    const-string v2, "window"

    .line 7
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Le/a/a/h1/o/n;->f:Landroid/view/WindowManager;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070566

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Le/a/a/h1/o/n;->j:F

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07056d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Le/a/a/h1/o/n;->k:F

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f070565

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Le/a/a/h1/o/n;->l:I

    .line 11
    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f07056c

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 12
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 13
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 14
    new-instance p1, Le/a/a/h1/o/a;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v2}, Le/a/a/h1/o/a;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    invoke-virtual {p1}, Le/a/a/h1/o/a;->start()V

    .line 17
    new-instance p1, Le/a/a/h1/o/n$b;

    invoke-direct {p1, p0}, Le/a/a/h1/o/n$b;-><init>(Le/a/a/h1/o/n;)V

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 18
    new-instance p1, Le/a/a/h1/o/n$a;

    invoke-direct {p1, p0}, Le/a/a/h1/o/n$a;-><init>(Le/a/a/h1/o/n;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public static final i(Le/a/a/h1/o/n;F)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/a/h1/o/n;->l()Landroid/graphics/RectF;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/a/h1/o/n;->a:Le/a/a/h1/o/g;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 4
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v1, p1, v0}, Le/a/a/h1/o/n;->m(FFZ)V

    return-void
.end method

.method public static synthetic k(Le/a/a/h1/o/n;Landroid/view/View;IIIZI)V
    .locals 8

    and-int/lit8 v0, p6, 0x4

    const/4 v1, -0x2

    if-eqz v0, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, p4

    :goto_1
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    const/4 p5, 0x0

    :cond_2
    move v7, p5

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    .line 1
    invoke-virtual/range {v2 .. v7}, Le/a/a/h1/o/n;->j(Landroid/view/View;IIIZ)V

    return-void
.end method

.method public static synthetic n(Le/a/a/h1/o/n;FFZI)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Le/a/a/h1/o/n;->m(FFZ)V

    return-void
.end method


# virtual methods
.method public J()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/h1/o/n;->a:Le/a/a/h1/o/g;

    .line 2
    iget-object v1, v0, Le/a/a/h1/o/g;->c:Le/a/a/h1/d;

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, v1, Le/a/a/h1/d;->c:J

    .line 4
    iget-object v2, v1, Le/a/a/h1/d;->a:Landroid/os/Handler;

    new-instance v3, Le/a/a/h1/e;

    invoke-direct {v3, v1}, Le/a/a/h1/e;-><init>(Le/a/a/h1/d;)V

    new-instance v1, Le/a/a/h1/f;

    invoke-direct {v1, v3}, Le/a/a/h1/f;-><init>(Ls1/z/b/a;)V

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, v0, Le/a/a/h1/o/g;->b:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public a(F)V
    .locals 14

    .line 1
    iget-object v1, p0, Le/a/a/h1/o/n;->d:Le/a/a/h1/o/d;

    const/16 v2, 0x10

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object v0, p0

    .line 2
    invoke-static/range {v0 .. v6}, Le/a/a/h1/o/n;->k(Le/a/a/h1/o/n;Landroid/view/View;IIIZI)V

    .line 3
    iget-object v8, p0, Le/a/a/h1/o/n;->c:Landroid/widget/ImageView;

    const/16 v9, 0x10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x1c

    move-object v7, p0

    invoke-static/range {v7 .. v13}, Le/a/a/h1/o/n;->k(Le/a/a/h1/o/n;Landroid/view/View;IIIZI)V

    .line 4
    iget-object v1, p0, Le/a/a/h1/o/n;->b:Le/a/a/h1/o/f;

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    const/high16 v0, 0x280000

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    move-object v0, p0

    .line 6
    invoke-static/range {v0 .. v6}, Le/a/a/h1/o/n;->k(Le/a/a/h1/o/n;Landroid/view/View;IIIZI)V

    .line 7
    iget-object v8, p0, Le/a/a/h1/o/n;->a:Le/a/a/h1/o/g;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x1c

    move-object v7, p0

    invoke-static/range {v7 .. v13}, Le/a/a/h1/o/n;->k(Le/a/a/h1/o/n;Landroid/view/View;IIIZI)V

    .line 8
    iget-object v1, p0, Le/a/a/h1/o/n;->e:Landroid/view/View;

    const/16 v2, 0x10

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 9
    invoke-virtual/range {v0 .. v5}, Le/a/a/h1/o/n;->j(Landroid/view/View;IIIZ)V

    .line 10
    iget-object v0, p0, Le/a/a/h1/o/n;->a:Le/a/a/h1/o/g;

    new-instance v1, Le/a/a/h1/o/n$c;

    invoke-direct {v1, p0, p1}, Le/a/a/h1/o/n$c;-><init>(Le/a/a/h1/o/n;F)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/h1/o/n;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "context.resources"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public c(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/h1/o/n;->a:Le/a/a/h1/o/g;

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/h1/o/n;->b:Le/a/a/h1/o/f;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Le/a/a/h1/o/n;->b:Le/a/a/h1/o/f;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "title"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subtitle"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/h1/o/n;->b:Le/a/a/h1/o/f;

    new-instance v1, Le/a/a/h1/o/n$d;

    invoke-direct {v1, p0, p1, p2}, Le/a/a/h1/o/n$d;-><init>(Le/a/a/h1/o/n;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/h1/o/n;->f:Landroid/view/WindowManager;

    iget-object v1, p0, Le/a/a/h1/o/n;->d:Le/a/a/h1/o/d;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Le/a/a/h1/o/n;->f:Landroid/view/WindowManager;

    iget-object v1, p0, Le/a/a/h1/o/n;->c:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Le/a/a/h1/o/n;->f:Landroid/view/WindowManager;

    iget-object v1, p0, Le/a/a/h1/o/n;->b:Le/a/a/h1/o/f;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Le/a/a/h1/o/n;->f:Landroid/view/WindowManager;

    iget-object v1, p0, Le/a/a/h1/o/n;->a:Le/a/a/h1/o/g;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Le/a/a/h1/o/n;->f:Landroid/view/WindowManager;

    iget-object v1, p0, Le/a/a/h1/o/n;->e:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public g(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/h1/o/n;->c:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public h(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/h1/o/n;->a:Le/a/a/h1/o/g;

    invoke-virtual {v0, p1}, Le/a/a/h1/o/g;->setBadgeCount(I)V

    return-void
.end method

.method public final j(Landroid/view/View;IIIZ)V
    .locals 6

    if-nez p5, :cond_0

    const/4 p5, 0x4

    .line 1
    invoke-virtual {p1, p5}, Landroid/view/View;->setVisibility(I)V

    .line 2
    :cond_0
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p5, v0, :cond_1

    const/16 p5, 0x7f6

    goto :goto_0

    :cond_1
    const/16 p5, 0x7da

    :goto_0
    move v3, p5

    .line 3
    new-instance p5, Landroid/view/WindowManager$LayoutParams;

    const v0, 0x80208

    or-int v4, p2, v0

    const/4 v5, -0x3

    move-object v0, p5

    move v1, p3

    move v2, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 4
    iget-object p2, p0, Le/a/a/h1/o/n;->f:Landroid/view/WindowManager;

    invoke-interface {p2, p1, p5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final l()Landroid/graphics/RectF;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Le/a/a/h1/o/n;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Le/a/a/h1/o/n;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2
    iget-object v1, p0, Le/a/a/h1/o/n;->e:Landroid/view/View;

    invoke-static {v1}, Ln3/k/i/s;->i(Landroid/view/View;)Ln3/k/i/d0;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x7

    .line 3
    invoke-virtual {v1, v2}, Ln3/k/i/d0;->b(I)Ln3/k/c/b;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 4
    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v1, Ln3/k/c/b;->a:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 5
    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, v1, Ln3/k/c/b;->b:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 6
    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget v3, v1, Ln3/k/c/b;->c:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 7
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, v1, Ln3/k/c/b;->d:I

    int-to-float v1, v1

    sub-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-object v0
.end method

.method public final m(FFZ)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Le/a/a/h1/o/n;->l()Landroid/graphics/RectF;

    move-result-object v0

    .line 2
    iget v1, p0, Le/a/a/h1/o/n;->j:F

    iget v2, p0, Le/a/a/h1/o/n;->k:F

    .line 3
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 4
    invoke-virtual {v3, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    if-nez p3, :cond_0

    .line 5
    iget p3, v3, Landroid/graphics/RectF;->left:F

    iget v0, v3, Landroid/graphics/RectF;->right:F

    invoke-static {p1, p3, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->z(FFF)F

    move-result p1

    .line 6
    iget p3, v3, Landroid/graphics/RectF;->top:F

    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    invoke-static {p2, p3, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->z(FFF)F

    move-result p2

    .line 7
    :cond_0
    iget-object p3, p0, Le/a/a/h1/o/n;->d:Le/a/a/h1/o/d;

    invoke-virtual {p3}, Le/a/a/h1/o/d;->getDismissButtonX()F

    move-result p3

    .line 8
    iget-object v0, p0, Le/a/a/h1/o/n;->d:Le/a/a/h1/o/d;

    invoke-virtual {v0}, Le/a/a/h1/o/d;->getDismissButtonY()F

    move-result v0

    sub-float v1, p1, p3

    const/4 v2, 0x2

    float-to-double v3, v1

    int-to-double v1, v2

    .line 9
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    sub-float v4, p2, v0

    float-to-double v4, v4

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v3, v1

    float-to-double v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, p0, Le/a/a/h1/o/n;->l:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    if-gez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Le/a/a/h1/o/n;->i:Z

    if-eqz v1, :cond_2

    move p1, p3

    move p2, v0

    .line 10
    :cond_2
    iget-object p3, p0, Le/a/a/h1/o/n;->a:Le/a/a/h1/o/g;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    iget-object v3, p0, Le/a/a/h1/o/n;->a:Le/a/a/h1/o/g;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    sub-float v3, p2, v3

    invoke-virtual {p0, p3, v0, v3}, Le/a/a/h1/o/n;->o(Landroid/view/View;FF)V

    .line 11
    iget-object p3, p0, Le/a/a/h1/o/n;->c:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    iget-object v3, p0, Le/a/a/h1/o/n;->c:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    sub-float v3, p2, v3

    invoke-virtual {p0, p3, v0, v3}, Le/a/a/h1/o/n;->o(Landroid/view/View;FF)V

    .line 12
    iget-object p3, p0, Le/a/a/h1/o/n;->b:Le/a/a/h1/o/f;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Le/a/a/h1/o/n;->b:Le/a/a/h1/o/f;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    goto :goto_1

    :cond_3
    move v0, p1

    :goto_1
    iget-object v2, p0, Le/a/a/h1/o/n;->b:Le/a/a/h1/o/f;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    sub-float v1, p2, v2

    invoke-virtual {p0, p3, v0, v1}, Le/a/a/h1/o/n;->o(Landroid/view/View;FF)V

    .line 13
    iput p1, p0, Le/a/a/h1/o/n;->g:F

    .line 14
    iput p2, p0, Le/a/a/h1/o/n;->h:F

    return-void
.end method

.method public final o(Landroid/view/View;FF)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager.LayoutParams"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    const v1, 0x800033

    .line 2
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 3
    invoke-virtual {p0}, Le/a/a/h1/o/n;->l()Landroid/graphics/RectF;

    move-result-object v1

    .line 4
    iget v2, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v3, p2, v2

    const/4 v4, 0x0

    if-gez v3, :cond_0

    float-to-int v3, v2

    .line 5
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-float/2addr p2, v2

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 7
    :cond_0
    iget v2, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    .line 8
    iget v2, v1, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 9
    iget v2, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sub-float/2addr p2, v2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_1
    float-to-int p2, p2

    .line 10
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 11
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 12
    :goto_0
    iget p2, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v2, p3, p2

    if-gez v2, :cond_2

    float-to-int v1, p2

    .line 13
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-float/2addr p3, p2

    .line 14
    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 15
    :cond_2
    iget p2, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr p2, v2

    cmpl-float p2, p3, p2

    if-lez p2, :cond_3

    .line 16
    iget p2, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr p2, v2

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 17
    iget p2, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p2, v1

    sub-float/2addr p3, p2

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_3
    float-to-int p2, p3

    .line 18
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 19
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 20
    :goto_1
    iget-object p2, p0, Le/a/a/h1/o/n;->f:Landroid/view/WindowManager;

    invoke-interface {p2, p1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public t(JJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/h1/o/n;->a:Le/a/a/h1/o/g;

    .line 2
    iget-object v1, v0, Le/a/a/h1/o/g;->b:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    iget-object v0, v0, Le/a/a/h1/o/g;->c:Le/a/a/h1/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Le/a/a/h1/d;->a(JJ)V

    return-void
.end method
