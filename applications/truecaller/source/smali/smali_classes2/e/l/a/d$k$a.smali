.class public Le/l/a/d$k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/l/a/d$k;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/l/a/d$k;


# direct methods
.method public constructor <init>(Le/l/a/d$k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/l/a/d$k$a;->a:Le/l/a/d$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 1
    iget-object v2, p0, Le/l/a/d$k$a;->a:Le/l/a/d$k;

    iget-object v3, v2, Le/l/a/d$k;->g:Le/l/a/d;

    iget-object v3, v3, Le/l/a/d;->r:Landroid/graphics/Rect;

    iget-object v2, v2, Le/l/a/d$k;->a:Le/l/a/c;

    .line 2
    iget-object v2, v2, Le/l/a/c;->e:Landroid/graphics/Rect;

    if-eqz v2, :cond_8

    .line 3
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    iget-object v2, p0, Le/l/a/d$k$a;->a:Le/l/a/d$k;

    iget-object v2, v2, Le/l/a/d$k;->g:Le/l/a/d;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 5
    iget-object v2, p0, Le/l/a/d$k$a;->a:Le/l/a/d$k;

    iget-object v2, v2, Le/l/a/d$k;->g:Le/l/a/d;

    iget-object v2, v2, Le/l/a/d;->r:Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget v4, v1, v3

    neg-int v4, v4

    const/4 v5, 0x1

    aget v1, v1, v5

    neg-int v1, v1

    invoke-virtual {v2, v4, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 6
    iget-object v1, p0, Le/l/a/d$k$a;->a:Le/l/a/d$k;

    iget-object v2, v1, Le/l/a/d$k;->b:Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 7
    iget-object v1, v1, Le/l/a/d$k;->c:Landroid/content/Context;

    const-string v2, "window"

    .line 8
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 9
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 10
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 11
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 12
    iget-object v4, p0, Le/l/a/d$k$a;->a:Le/l/a/d$k;

    iget-object v4, v4, Le/l/a/d$k;->b:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    new-array v0, v0, [I

    .line 13
    iget-object v4, p0, Le/l/a/d$k$a;->a:Le/l/a/d$k;

    iget-object v4, v4, Le/l/a/d$k;->b:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 14
    iget-object v4, p0, Le/l/a/d$k$a;->a:Le/l/a/d$k;

    iget-boolean v6, v4, Le/l/a/d$k;->d:Z

    if-eqz v6, :cond_0

    .line 15
    aget v6, v0, v5

    iput v6, v1, Landroid/graphics/Rect;->top:I

    .line 16
    :cond_0
    iget-boolean v6, v4, Le/l/a/d$k;->e:Z

    if-eqz v6, :cond_1

    .line 17
    aget v0, v0, v5

    iget-object v4, v4, Le/l/a/d$k;->b:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    add-int/2addr v4, v0

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 18
    :cond_1
    iget-object v0, p0, Le/l/a/d$k$a;->a:Le/l/a/d$k;

    iget-boolean v4, v0, Le/l/a/d$k;->f:Z

    if-eqz v4, :cond_2

    .line 19
    iget-object v0, v0, Le/l/a/d$k;->g:Le/l/a/d;

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v0, Le/l/a/d;->o0:I

    .line 20
    iget-object v0, p0, Le/l/a/d$k$a;->a:Le/l/a/d$k;

    iget-object v0, v0, Le/l/a/d$k;->g:Le/l/a/d;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Le/l/a/d;->p0:I

    goto :goto_0

    .line 21
    :cond_2
    iget-object v0, v0, Le/l/a/d$k;->g:Le/l/a/d;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Le/l/a/d;->o0:I

    .line 22
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Le/l/a/d;->p0:I

    .line 23
    :cond_3
    :goto_0
    iget-object v0, p0, Le/l/a/d$k$a;->a:Le/l/a/d$k;

    iget-object v0, v0, Le/l/a/d$k;->g:Le/l/a/d;

    .line 24
    iget-object v1, v0, Le/l/a/d;->q:Le/l/a/c;

    iget-object v1, v1, Le/l/a/c;->f:Landroid/graphics/drawable/Drawable;

    .line 25
    iget-boolean v2, v0, Le/l/a/d;->E:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    if-nez v1, :cond_4

    goto :goto_1

    .line 26
    :cond_4
    iget-object v2, v0, Le/l/a/d;->q0:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    goto :goto_2

    .line 27
    :cond_5
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Le/l/a/d;->q0:Landroid/graphics/Bitmap;

    .line 28
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v6, v0, Le/l/a/d;->q0:Landroid/graphics/Bitmap;

    invoke-direct {v2, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 29
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    iget-object v0, v0, Le/l/a/d;->u:Landroid/graphics/Paint;

    .line 30
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v0, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 31
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 32
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 33
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_2

    .line 34
    :cond_6
    :goto_1
    iput-object v4, v0, Le/l/a/d;->q0:Landroid/graphics/Bitmap;

    .line 35
    :goto_2
    iget-object v0, p0, Le/l/a/d$k$a;->a:Le/l/a/d$k;

    iget-object v0, v0, Le/l/a/d$k;->g:Le/l/a/d;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 36
    iget-object v0, p0, Le/l/a/d$k$a;->a:Le/l/a/d$k;

    iget-object v0, v0, Le/l/a/d$k;->g:Le/l/a/d;

    .line 37
    invoke-virtual {v0}, Le/l/a/d;->getTextBounds()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, v0, Le/l/a/d;->R:Landroid/graphics/Rect;

    .line 38
    invoke-virtual {v0}, Le/l/a/d;->getOuterCircleCenterPoint()[I

    move-result-object v1

    iput-object v1, v0, Le/l/a/d;->V:[I

    .line 39
    aget v2, v1, v3

    aget v1, v1, v5

    iget-object v4, v0, Le/l/a/d;->R:Landroid/graphics/Rect;

    iget-object v6, v0, Le/l/a/d;->r:Landroid/graphics/Rect;

    .line 40
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    .line 41
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    .line 42
    iget v8, v0, Le/l/a/d;->e:I

    int-to-float v8, v8

    const v9, 0x3f8ccccd    # 1.1f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    .line 43
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v7, v6, v7, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    neg-int v6, v8

    .line 44
    invoke-virtual {v9, v6, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 45
    invoke-virtual {v0, v2, v1, v4}, Le/l/a/d;->f(IILandroid/graphics/Rect;)I

    move-result v4

    .line 46
    invoke-virtual {v0, v2, v1, v9}, Le/l/a/d;->f(IILandroid/graphics/Rect;)I

    move-result v1

    .line 47
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, v0, Le/l/a/d;->k:I

    add-int/2addr v1, v2

    .line 48
    iput v1, v0, Le/l/a/d;->U:I

    .line 49
    iget-object v0, p0, Le/l/a/d$k$a;->a:Le/l/a/d$k;

    iget-object v0, v0, Le/l/a/d$k;->g:Le/l/a/d;

    .line 50
    iget-boolean v1, v0, Le/l/a/d;->L:Z

    if-nez v1, :cond_7

    .line 51
    iput-boolean v3, v0, Le/l/a/d;->c:Z

    .line 52
    iget-object v1, v0, Le/l/a/d;->u0:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 53
    iput-boolean v5, v0, Le/l/a/d;->L:Z

    :cond_7
    return-void

    .line 54
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Requesting bounds that are not set! Make sure your target is ready"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
