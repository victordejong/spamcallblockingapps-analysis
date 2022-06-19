.class public abstract Lg/e/a/a/c/c;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lg/e/a/a/h/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lg/e/a/a/e/g<",
        "+",
        "Lg/e/a/a/h/b/d<",
        "+",
        "Lg/e/a/a/e/i;",
        ">;>;>",
        "Landroid/view/ViewGroup;",
        "Lg/e/a/a/h/a/c;"
    }
.end annotation


# instance fields
.field private A:F

.field private B:F

.field private C:F

.field private D:F

.field private E:Z

.field protected F:[Lg/e/a/a/g/c;

.field protected G:F

.field protected H:Z

.field protected I:Lg/e/a/a/d/d;

.field protected J:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private K:Z

.field protected f:Z

.field protected g:Lg/e/a/a/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected h:Z

.field private i:Z

.field private j:F

.field protected k:Lg/e/a/a/f/c;

.field protected l:Landroid/graphics/Paint;

.field protected m:Landroid/graphics/Paint;

.field protected n:Lg/e/a/a/d/h;

.field protected o:Z

.field protected p:Lg/e/a/a/d/c;

.field protected q:Lg/e/a/a/d/e;

.field protected r:Lg/e/a/a/i/d;

.field protected s:Lg/e/a/a/i/b;

.field private t:Ljava/lang/String;

.field private u:Lg/e/a/a/i/c;

.field protected v:Lg/e/a/a/k/f;

.field protected w:Lg/e/a/a/k/d;

.field protected x:Lg/e/a/a/g/e;

.field protected y:Lg/e/a/a/l/j;

.field protected z:Lg/e/a/a/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lg/e/a/a/c/c;->f:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lg/e/a/a/c/c;->h:Z

    .line 5
    iput-boolean v0, p0, Lg/e/a/a/c/c;->i:Z

    const v1, 0x3f666666    # 0.9f

    .line 6
    iput v1, p0, Lg/e/a/a/c/c;->j:F

    .line 7
    new-instance v1, Lg/e/a/a/f/c;

    invoke-direct {v1, p1}, Lg/e/a/a/f/c;-><init>(I)V

    iput-object v1, p0, Lg/e/a/a/c/c;->k:Lg/e/a/a/f/c;

    .line 8
    iput-boolean v0, p0, Lg/e/a/a/c/c;->o:Z

    const-string v1, "No chart data available."

    .line 9
    iput-object v1, p0, Lg/e/a/a/c/c;->t:Ljava/lang/String;

    .line 10
    new-instance v1, Lg/e/a/a/l/j;

    invoke-direct {v1}, Lg/e/a/a/l/j;-><init>()V

    iput-object v1, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lg/e/a/a/c/c;->A:F

    iput v1, p0, Lg/e/a/a/c/c;->B:F

    iput v1, p0, Lg/e/a/a/c/c;->C:F

    iput v1, p0, Lg/e/a/a/c/c;->D:F

    .line 12
    iput-boolean p1, p0, Lg/e/a/a/c/c;->E:Z

    .line 13
    iput v1, p0, Lg/e/a/a/c/c;->G:F

    .line 14
    iput-boolean v0, p0, Lg/e/a/a/c/c;->H:Z

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/e/a/a/c/c;->J:Ljava/util/ArrayList;

    .line 16
    iput-boolean p1, p0, Lg/e/a/a/c/c;->K:Z

    .line 17
    invoke-virtual {p0}, Lg/e/a/a/c/c;->o()V

    return-void
.end method

.method private v(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 4
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 5
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lg/e/a/a/c/c;->v(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_2
    return-void
.end method


# virtual methods
.method public f(ILg/e/a/a/a/b$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->z:Lg/e/a/a/a/a;

    invoke-virtual {v0, p1, p2}, Lg/e/a/a/a/a;->a(ILg/e/a/a/a/b$d;)V

    return-void
.end method

.method protected abstract g()V
.end method

.method public getAnimator()Lg/e/a/a/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->z:Lg/e/a/a/a/a;

    return-object v0
.end method

.method public getCenter()Lg/e/a/a/l/e;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Lg/e/a/a/l/e;->c(FF)Lg/e/a/a/l/e;

    move-result-object v0

    return-object v0
.end method

.method public getCenterOfView()Lg/e/a/a/l/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/e/a/a/c/c;->getCenter()Lg/e/a/a/l/e;

    move-result-object v0

    return-object v0
.end method

.method public getCenterOffsets()Lg/e/a/a/l/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-virtual {v0}, Lg/e/a/a/l/j;->n()Lg/e/a/a/l/e;

    move-result-object v0

    return-object v0
.end method

.method public getChartBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 5
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 6
    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public getContentRect()Landroid/graphics/RectF;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-virtual {v0}, Lg/e/a/a/l/j;->o()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lg/e/a/a/e/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    return-object v0
.end method

.method public getDefaultValueFormatter()Lg/e/a/a/f/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->k:Lg/e/a/a/f/c;

    return-object v0
.end method

.method public getDescription()Lg/e/a/a/d/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->p:Lg/e/a/a/d/c;

    return-object v0
.end method

.method public getDragDecelerationFrictionCoef()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/c/c;->j:F

    return v0
.end method

.method public getExtraBottomOffset()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/c/c;->C:F

    return v0
.end method

.method public getExtraLeftOffset()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/c/c;->D:F

    return v0
.end method

.method public getExtraRightOffset()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/c/c;->B:F

    return v0
.end method

.method public getExtraTopOffset()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/c/c;->A:F

    return v0
.end method

.method public getHighlighted()[Lg/e/a/a/g/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->F:[Lg/e/a/a/g/c;

    return-object v0
.end method

.method public getHighlighter()Lg/e/a/a/g/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->x:Lg/e/a/a/g/e;

    return-object v0
.end method

.method public getJobs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->J:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLegend()Lg/e/a/a/d/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    return-object v0
.end method

.method public getLegendRenderer()Lg/e/a/a/k/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->v:Lg/e/a/a/k/f;

    return-object v0
.end method

.method public getMarker()Lg/e/a/a/d/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->I:Lg/e/a/a/d/d;

    return-object v0
.end method

.method public getMarkerView()Lg/e/a/a/d/d;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lg/e/a/a/c/c;->getMarker()Lg/e/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public getMaxHighlightDistance()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/c/c;->G:F

    return v0
.end method

.method public abstract synthetic getMaxVisibleCount()I
.end method

.method public getOnChartGestureListener()Lg/e/a/a/i/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->u:Lg/e/a/a/i/c;

    return-object v0
.end method

.method public getOnTouchListener()Lg/e/a/a/i/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->s:Lg/e/a/a/i/b;

    return-object v0
.end method

.method public getRenderer()Lg/e/a/a/k/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->w:Lg/e/a/a/k/d;

    return-object v0
.end method

.method public getViewPortHandler()Lg/e/a/a/l/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    return-object v0
.end method

.method public getXAxis()Lg/e/a/a/d/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    return-object v0
.end method

.method public getXChartMax()F
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    iget v0, v0, Lg/e/a/a/d/a;->G:F

    return v0
.end method

.method public getXChartMin()F
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    iget v0, v0, Lg/e/a/a/d/a;->H:F

    return v0
.end method

.method public getXRange()F
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    iget v0, v0, Lg/e/a/a/d/a;->I:F

    return v0
.end method

.method public abstract synthetic getYChartMax()F
.end method

.method public abstract synthetic getYChartMin()F
.end method

.method public getYMax()F
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    invoke-virtual {v0}, Lg/e/a/a/e/g;->o()F

    move-result v0

    return v0
.end method

.method public getYMin()F
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    invoke-virtual {v0}, Lg/e/a/a/e/g;->q()F

    move-result v0

    return v0
.end method

.method public h()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method protected i(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->p:Lg/e/a/a/d/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg/e/a/a/d/b;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lg/e/a/a/c/c;->p:Lg/e/a/a/d/c;

    invoke-virtual {v0}, Lg/e/a/a/d/c;->i()Lg/e/a/a/l/e;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lg/e/a/a/c/c;->l:Landroid/graphics/Paint;

    iget-object v2, p0, Lg/e/a/a/c/c;->p:Lg/e/a/a/d/c;

    invoke-virtual {v2}, Lg/e/a/a/d/b;->c()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 4
    iget-object v1, p0, Lg/e/a/a/c/c;->l:Landroid/graphics/Paint;

    iget-object v2, p0, Lg/e/a/a/c/c;->p:Lg/e/a/a/d/c;

    invoke-virtual {v2}, Lg/e/a/a/d/b;->b()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 5
    iget-object v1, p0, Lg/e/a/a/c/c;->l:Landroid/graphics/Paint;

    iget-object v2, p0, Lg/e/a/a/c/c;->p:Lg/e/a/a/d/c;

    invoke-virtual {v2}, Lg/e/a/a/d/b;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object v1, p0, Lg/e/a/a/c/c;->l:Landroid/graphics/Paint;

    iget-object v2, p0, Lg/e/a/a/c/c;->p:Lg/e/a/a/d/c;

    invoke-virtual {v2}, Lg/e/a/a/d/c;->k()Landroid/graphics/Paint$Align;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-virtual {v1}, Lg/e/a/a/l/j;->H()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lg/e/a/a/c/c;->p:Lg/e/a/a/d/c;

    invoke-virtual {v1}, Lg/e/a/a/d/b;->d()F

    move-result v1

    sub-float/2addr v0, v1

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-virtual {v2}, Lg/e/a/a/l/j;->F()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lg/e/a/a/c/c;->p:Lg/e/a/a/d/c;

    invoke-virtual {v2}, Lg/e/a/a/d/b;->e()F

    move-result v2

    sub-float/2addr v1, v2

    goto :goto_0

    .line 9
    :cond_0
    iget v1, v0, Lg/e/a/a/l/e;->c:F

    .line 10
    iget v0, v0, Lg/e/a/a/l/e;->d:F

    move v4, v1

    move v1, v0

    move v0, v4

    .line 11
    :goto_0
    iget-object v2, p0, Lg/e/a/a/c/c;->p:Lg/e/a/a/d/c;

    invoke-virtual {v2}, Lg/e/a/a/d/c;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lg/e/a/a/c/c;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected j(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->I:Lg/e/a/a/d/d;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lg/e/a/a/c/c;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lg/e/a/a/c/c;->w()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lg/e/a/a/c/c;->F:[Lg/e/a/a/g/c;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 3
    aget-object v2, v2, v1

    .line 4
    iget-object v3, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    invoke-virtual {v2}, Lg/e/a/a/g/c;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Lg/e/a/a/e/g;->e(I)Lg/e/a/a/h/b/d;

    move-result-object v3

    .line 5
    iget-object v4, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    iget-object v5, p0, Lg/e/a/a/c/c;->F:[Lg/e/a/a/g/c;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lg/e/a/a/e/g;->i(Lg/e/a/a/g/c;)Lg/e/a/a/e/i;

    move-result-object v4

    .line 6
    invoke-interface {v3, v4}, Lg/e/a/a/h/b/d;->l(Lg/e/a/a/e/i;)I

    move-result v5

    if-eqz v4, :cond_3

    int-to-float v5, v5

    .line 7
    invoke-interface {v3}, Lg/e/a/a/h/b/d;->v0()I

    move-result v3

    int-to-float v3, v3

    iget-object v6, p0, Lg/e/a/a/c/c;->z:Lg/e/a/a/a/a;

    invoke-virtual {v6}, Lg/e/a/a/a/a;->b()F

    move-result v6

    mul-float v3, v3, v6

    cmpl-float v3, v5, v3

    if-lez v3, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p0, v2}, Lg/e/a/a/c/c;->m(Lg/e/a/a/g/c;)[F

    move-result-object v3

    .line 9
    iget-object v5, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    aget v6, v3, v0

    const/4 v7, 0x1

    aget v8, v3, v7

    invoke-virtual {v5, v6, v8}, Lg/e/a/a/l/j;->x(FF)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    iget-object v5, p0, Lg/e/a/a/c/c;->I:Lg/e/a/a/d/d;

    invoke-interface {v5, v4, v2}, Lg/e/a/a/d/d;->a(Lg/e/a/a/e/i;Lg/e/a/a/g/c;)V

    .line 11
    iget-object v2, p0, Lg/e/a/a/c/c;->I:Lg/e/a/a/d/d;

    aget v4, v3, v0

    aget v3, v3, v7

    invoke-interface {v2, p1, v4, v3}, Lg/e/a/a/d/d;->b(Landroid/graphics/Canvas;FF)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method public l(FF)Lg/e/a/a/g/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    if-nez v0, :cond_0

    const-string p1, "MPAndroidChart"

    const-string p2, "Can\'t select by touch. No data set."

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lg/e/a/a/c/c;->getHighlighter()Lg/e/a/a/g/e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lg/e/a/a/g/e;->a(FF)Lg/e/a/a/g/c;

    move-result-object p1

    return-object p1
.end method

.method protected m(Lg/e/a/a/g/c;)[F
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    invoke-virtual {p1}, Lg/e/a/a/g/c;->d()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p1}, Lg/e/a/a/g/c;->e()F

    move-result p1

    const/4 v1, 0x1

    aput p1, v0, v1

    return-object v0
.end method

.method public n(Lg/e/a/a/g/c;Z)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    iput-object v0, p0, Lg/e/a/a/c/c;->F:[Lg/e/a/a/g/c;

    goto :goto_1

    .line 2
    :cond_0
    iget-boolean v1, p0, Lg/e/a/a/c/c;->f:Z

    if-eqz v1, :cond_1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Highlighted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lg/e/a/a/g/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MPAndroidChart"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_1
    iget-object v1, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    invoke-virtual {v1, p1}, Lg/e/a/a/e/g;->i(Lg/e/a/a/g/c;)Lg/e/a/a/e/i;

    move-result-object v1

    if-nez v1, :cond_2

    .line 5
    iput-object v0, p0, Lg/e/a/a/c/c;->F:[Lg/e/a/a/g/c;

    move-object p1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Lg/e/a/a/g/c;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 6
    iput-object v0, p0, Lg/e/a/a/c/c;->F:[Lg/e/a/a/g/c;

    :goto_0
    move-object v0, v1

    .line 7
    :goto_1
    iget-object v1, p0, Lg/e/a/a/c/c;->F:[Lg/e/a/a/g/c;

    invoke-virtual {p0, v1}, Lg/e/a/a/c/c;->setLastHighlighted([Lg/e/a/a/g/c;)V

    if-eqz p2, :cond_4

    .line 8
    iget-object p2, p0, Lg/e/a/a/c/c;->r:Lg/e/a/a/i/d;

    if-eqz p2, :cond_4

    .line 9
    invoke-virtual {p0}, Lg/e/a/a/c/c;->w()Z

    move-result p2

    if-nez p2, :cond_3

    .line 10
    iget-object p1, p0, Lg/e/a/a/c/c;->r:Lg/e/a/a/i/d;

    invoke-interface {p1}, Lg/e/a/a/i/d;->b()V

    goto :goto_2

    .line 11
    :cond_3
    iget-object p2, p0, Lg/e/a/a/c/c;->r:Lg/e/a/a/i/d;

    invoke-interface {p2, v0, p1}, Lg/e/a/a/i/d;->a(Lg/e/a/a/e/i;Lg/e/a/a/g/c;)V

    .line 12
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method protected o()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 2
    new-instance v0, Lg/e/a/a/a/a;

    new-instance v1, Lg/e/a/a/c/c$a;

    invoke-direct {v1, p0}, Lg/e/a/a/c/c$a;-><init>(Lg/e/a/a/c/c;)V

    invoke-direct {v0, v1}, Lg/e/a/a/a/a;-><init>(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v0, p0, Lg/e/a/a/c/c;->z:Lg/e/a/a/a/a;

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lg/e/a/a/l/i;->v(Landroid/content/Context;)V

    const/high16 v0, 0x43fa0000    # 500.0f

    .line 4
    invoke-static {v0}, Lg/e/a/a/l/i;->e(F)F

    move-result v0

    iput v0, p0, Lg/e/a/a/c/c;->G:F

    .line 5
    new-instance v0, Lg/e/a/a/d/c;

    invoke-direct {v0}, Lg/e/a/a/d/c;-><init>()V

    iput-object v0, p0, Lg/e/a/a/c/c;->p:Lg/e/a/a/d/c;

    .line 6
    new-instance v0, Lg/e/a/a/d/e;

    invoke-direct {v0}, Lg/e/a/a/d/e;-><init>()V

    iput-object v0, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    .line 7
    new-instance v1, Lg/e/a/a/k/f;

    iget-object v2, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-direct {v1, v2, v0}, Lg/e/a/a/k/f;-><init>(Lg/e/a/a/l/j;Lg/e/a/a/d/e;)V

    iput-object v1, p0, Lg/e/a/a/c/c;->v:Lg/e/a/a/k/f;

    .line 8
    new-instance v0, Lg/e/a/a/d/h;

    invoke-direct {v0}, Lg/e/a/a/d/h;-><init>()V

    iput-object v0, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    .line 9
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lg/e/a/a/c/c;->l:Landroid/graphics/Paint;

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lg/e/a/a/c/c;->m:Landroid/graphics/Paint;

    const/16 v1, 0xf7

    const/16 v2, 0xbd

    const/16 v3, 0x33

    .line 11
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    iget-object v0, p0, Lg/e/a/a/c/c;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 13
    iget-object v0, p0, Lg/e/a/a/c/c;->m:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lg/e/a/a/l/i;->e(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 14
    iget-boolean v0, p0, Lg/e/a/a/c/c;->f:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    const-string v1, "Chart.init()"

    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget-boolean v0, p0, Lg/e/a/a/c/c;->K:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p0}, Lg/e/a/a/c/c;->v(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lg/e/a/a/c/c;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lg/e/a/a/c/c;->getCenter()Lg/e/a/a/l/e;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lg/e/a/a/c/c;->t:Ljava/lang/String;

    iget v2, v0, Lg/e/a/a/l/e;->c:F

    iget v0, v0, Lg/e/a/a/l/e;->d:F

    iget-object v3, p0, Lg/e/a/a/c/c;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void

    .line 5
    :cond_1
    iget-boolean p1, p0, Lg/e/a/a/c/c;->E:Z

    if-nez p1, :cond_2

    .line 6
    invoke-virtual {p0}, Lg/e/a/a/c/c;->g()V

    .line 7
    iput-boolean v1, p0, Lg/e/a/a/c/c;->E:Z

    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    const/high16 v0, 0x42480000    # 50.0f

    .line 2
    invoke-static {v0}, Lg/e/a/a/l/i;->e(F)F

    move-result v0

    float-to-int v0, v0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v1

    .line 4
    invoke-static {v0, p1}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result p1

    .line 5
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v1

    .line 7
    invoke-static {v0, p2}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result p2

    .line 8
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 9
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/c/c;->f:Z

    const-string v1, "MPAndroidChart"

    if-eqz v0, :cond_0

    const-string v0, "OnSizeChanged()"

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, ", height: "

    if-lez p1, :cond_2

    if-lez p2, :cond_2

    const/16 v2, 0x2710

    if-ge p1, v2, :cond_2

    if-ge p2, v2, :cond_2

    .line 3
    iget-boolean v2, p0, Lg/e/a/a/c/c;->f:Z

    if-eqz v2, :cond_1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting chart dimens, width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_1
    iget-object v0, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lg/e/a/a/l/j;->L(FF)V

    goto :goto_0

    .line 6
    :cond_2
    iget-boolean v2, p0, Lg/e/a/a/c/c;->f:Z

    if-eqz v2, :cond_3

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*Avoiding* setting chart dimens! width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lg/e/a/a/c/c;->t()V

    .line 9
    iget-object v0, p0, Lg/e/a/a/c/c;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 10
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 11
    :cond_4
    iget-object v0, p0, Lg/e/a/a/c/c;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 12
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    return-void
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/c/c;->i:Z

    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/c/c;->H:Z

    return v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/c/c;->h:Z

    return v0
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/c/c;->f:Z

    return v0
.end method

.method public setData(Lg/e/a/a/e/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lg/e/a/a/c/c;->E:Z

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lg/e/a/a/e/g;->q()F

    move-result v0

    invoke-virtual {p1}, Lg/e/a/a/e/g;->o()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lg/e/a/a/c/c;->u(FF)V

    .line 4
    iget-object p1, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    invoke-virtual {p1}, Lg/e/a/a/e/g;->g()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/e/a/a/h/b/d;

    .line 5
    invoke-interface {v0}, Lg/e/a/a/h/b/d;->V()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Lg/e/a/a/h/b/d;->G()Lg/e/a/a/f/e;

    move-result-object v1

    iget-object v2, p0, Lg/e/a/a/c/c;->k:Lg/e/a/a/f/c;

    if-ne v1, v2, :cond_1

    .line 6
    :cond_2
    iget-object v1, p0, Lg/e/a/a/c/c;->k:Lg/e/a/a/f/c;

    invoke-interface {v0, v1}, Lg/e/a/a/h/b/d;->W(Lg/e/a/a/f/e;)V

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lg/e/a/a/c/c;->t()V

    .line 8
    iget-boolean p1, p0, Lg/e/a/a/c/c;->f:Z

    if-eqz p1, :cond_4

    const-string p1, "MPAndroidChart"

    const-string v0, "Data is set."

    .line 9
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public setDescription(Lg/e/a/a/d/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/e/a/a/c/c;->p:Lg/e/a/a/d/c;

    return-void
.end method

.method public setDragDecelerationEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/e/a/a/c/c;->i:Z

    return-void
.end method

.method public setDragDecelerationFrictionCoef(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    const p1, 0x3f7fbe77    # 0.999f

    .line 1
    :cond_1
    iput p1, p0, Lg/e/a/a/c/c;->j:F

    return-void
.end method

.method public setDrawMarkerViews(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lg/e/a/a/c/c;->setDrawMarkers(Z)V

    return-void
.end method

.method public setDrawMarkers(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/e/a/a/c/c;->H:Z

    return-void
.end method

.method public setExtraBottomOffset(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Lg/e/a/a/l/i;->e(F)F

    move-result p1

    iput p1, p0, Lg/e/a/a/c/c;->C:F

    return-void
.end method

.method public setExtraLeftOffset(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Lg/e/a/a/l/i;->e(F)F

    move-result p1

    iput p1, p0, Lg/e/a/a/c/c;->D:F

    return-void
.end method

.method public setExtraRightOffset(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Lg/e/a/a/l/i;->e(F)F

    move-result p1

    iput p1, p0, Lg/e/a/a/c/c;->B:F

    return-void
.end method

.method public setExtraTopOffset(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Lg/e/a/a/l/i;->e(F)F

    move-result p1

    iput p1, p0, Lg/e/a/a/c/c;->A:F

    return-void
.end method

.method public setHardwareAccelerationEnabled(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public setHighlightPerTapEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/e/a/a/c/c;->h:Z

    return-void
.end method

.method public setHighlighter(Lg/e/a/a/g/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/e/a/a/c/c;->x:Lg/e/a/a/g/e;

    return-void
.end method

.method protected setLastHighlighted([Lg/e/a/a/g/c;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget-object v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lg/e/a/a/c/c;->s:Lg/e/a/a/i/b;

    aget-object p1, p1, v0

    invoke-virtual {v1, p1}, Lg/e/a/a/i/b;->d(Lg/e/a/a/g/c;)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object p1, p0, Lg/e/a/a/c/c;->s:Lg/e/a/a/i/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lg/e/a/a/i/b;->d(Lg/e/a/a/g/c;)V

    :goto_1
    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/e/a/a/c/c;->f:Z

    return-void
.end method

.method public setMarker(Lg/e/a/a/d/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/e/a/a/c/c;->I:Lg/e/a/a/d/d;

    return-void
.end method

.method public setMarkerView(Lg/e/a/a/d/d;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lg/e/a/a/c/c;->setMarker(Lg/e/a/a/d/d;)V

    return-void
.end method

.method public setMaxHighlightDistance(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Lg/e/a/a/l/i;->e(F)F

    move-result p1

    iput p1, p0, Lg/e/a/a/c/c;->G:F

    return-void
.end method

.method public setNoDataText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/e/a/a/c/c;->t:Ljava/lang/String;

    return-void
.end method

.method public setNoDataTextColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setNoDataTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public setOnChartGestureListener(Lg/e/a/a/i/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/e/a/a/c/c;->u:Lg/e/a/a/i/c;

    return-void
.end method

.method public setOnChartValueSelectedListener(Lg/e/a/a/i/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/e/a/a/c/c;->r:Lg/e/a/a/i/d;

    return-void
.end method

.method public setOnTouchListener(Lg/e/a/a/i/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/e/a/a/c/c;->s:Lg/e/a/a/i/b;

    return-void
.end method

.method public setRenderer(Lg/e/a/a/k/d;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lg/e/a/a/c/c;->w:Lg/e/a/a/k/d;

    :cond_0
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/e/a/a/c/c;->o:Z

    return-void
.end method

.method public setUnbindEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/e/a/a/c/c;->K:Z

    return-void
.end method

.method public abstract t()V
.end method

.method protected u(FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg/e/a/a/e/g;->h()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr p2, p1

    .line 2
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 4
    :goto_1
    invoke-static {p1}, Lg/e/a/a/l/i;->i(F)I

    move-result p1

    .line 5
    iget-object p2, p0, Lg/e/a/a/c/c;->k:Lg/e/a/a/f/c;

    invoke-virtual {p2, p1}, Lg/e/a/a/f/c;->h(I)V

    return-void
.end method

.method public w()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->F:[Lg/e/a/a/g/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method
