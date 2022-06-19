.class public Lg/e/a/a/i/f;
.super Lg/e/a/a/i/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/e/a/a/i/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/e/a/a/i/b<",
        "Lg/e/a/a/c/g<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private k:Lg/e/a/a/l/e;

.field private l:F

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lg/e/a/a/i/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private n:J

.field private o:F


# direct methods
.method public constructor <init>(Lg/e/a/a/c/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/e/a/a/c/g<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lg/e/a/a/i/b;-><init>(Lg/e/a/a/c/c;)V

    const/4 p1, 0x0

    .line 2
    invoke-static {p1, p1}, Lg/e/a/a/l/e;->c(FF)Lg/e/a/a/l/e;

    move-result-object v0

    iput-object v0, p0, Lg/e/a/a/i/f;->k:Lg/e/a/a/l/e;

    .line 3
    iput p1, p0, Lg/e/a/a/i/f;->l:F

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/e/a/a/i/f;->m:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lg/e/a/a/i/f;->n:J

    .line 6
    iput p1, p0, Lg/e/a/a/i/f;->o:F

    return-void
.end method

.method private f()F
    .locals 13

    .line 1
    iget-object v0, p0, Lg/e/a/a/i/f;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lg/e/a/a/i/f;->m:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/e/a/a/i/f$a;

    .line 3
    iget-object v3, p0, Lg/e/a/a/i/f;->m:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/e/a/a/i/f$a;

    .line 4
    iget-object v4, p0, Lg/e/a/a/i/f;->m:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    move-object v6, v0

    :goto_0
    if-ltz v4, :cond_2

    .line 5
    iget-object v6, p0, Lg/e/a/a/i/f;->m:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/e/a/a/i/f$a;

    .line 6
    iget v7, v6, Lg/e/a/a/i/f$a;->b:F

    iget v8, v3, Lg/e/a/a/i/f$a;->b:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 7
    :cond_2
    :goto_1
    iget-wide v7, v3, Lg/e/a/a/i/f$a;->a:J

    iget-wide v9, v0, Lg/e/a/a/i/f$a;->a:J

    sub-long/2addr v7, v9

    long-to-float v4, v7

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v4, v7

    cmpl-float v1, v4, v1

    if-nez v1, :cond_3

    const v4, 0x3dcccccd    # 0.1f

    .line 8
    :cond_3
    iget v1, v3, Lg/e/a/a/i/f$a;->b:F

    iget v6, v6, Lg/e/a/a/i/f$a;->b:F

    cmpl-float v7, v1, v6

    if-ltz v7, :cond_4

    const/4 v2, 0x1

    :cond_4
    sub-float/2addr v1, v6

    .line 9
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v5, v1

    const-wide v7, 0x4070e00000000000L    # 270.0

    cmpl-double v1, v5, v7

    if-lez v1, :cond_5

    xor-int/lit8 v2, v2, 0x1

    .line 10
    :cond_5
    iget v1, v3, Lg/e/a/a/i/f$a;->b:F

    iget v5, v0, Lg/e/a/a/i/f$a;->b:F

    sub-float v6, v1, v5

    float-to-double v6, v6

    const-wide v8, 0x4076800000000000L    # 360.0

    const-wide v10, 0x4066800000000000L    # 180.0

    cmpl-double v12, v6, v10

    if-lez v12, :cond_6

    float-to-double v5, v5

    add-double/2addr v5, v8

    double-to-float v1, v5

    .line 11
    iput v1, v0, Lg/e/a/a/i/f$a;->b:F

    goto :goto_2

    :cond_6
    sub-float/2addr v5, v1

    float-to-double v5, v5

    cmpl-double v7, v5, v10

    if-lez v7, :cond_7

    float-to-double v5, v1

    add-double/2addr v5, v8

    double-to-float v1, v5

    .line 12
    iput v1, v3, Lg/e/a/a/i/f$a;->b:F

    .line 13
    :cond_7
    :goto_2
    iget v1, v3, Lg/e/a/a/i/f$a;->b:F

    iget v0, v0, Lg/e/a/a/i/f$a;->b:F

    sub-float/2addr v1, v0

    div-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    if-nez v2, :cond_8

    neg-float v0, v0

    :cond_8
    return v0
.end method

.method private h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/i/f;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private i(FF)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lg/e/a/a/i/f;->m:Ljava/util/ArrayList;

    new-instance v3, Lg/e/a/a/i/f$a;

    iget-object v4, p0, Lg/e/a/a/i/b;->j:Lg/e/a/a/c/c;

    check-cast v4, Lg/e/a/a/c/g;

    invoke-virtual {v4, p1, p2}, Lg/e/a/a/c/g;->z(FF)F

    move-result p1

    invoke-direct {v3, p0, v0, v1, p1}, Lg/e/a/a/i/f$a;-><init>(Lg/e/a/a/i/f;JF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lg/e/a/a/i/f;->m:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p2, p1, -0x2

    if-lez p2, :cond_0

    .line 4
    iget-object p2, p0, Lg/e/a/a/i/f;->m:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/e/a/a/i/f$a;

    iget-wide v3, p2, Lg/e/a/a/i/f$a;->a:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x3e8

    cmp-long p2, v3, v5

    if-lez p2, :cond_0

    .line 5
    iget-object p2, p0, Lg/e/a/a/i/f;->m:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public g()V
    .locals 6

    .line 1
    iget v0, p0, Lg/e/a/a/i/f;->o:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 3
    iget v2, p0, Lg/e/a/a/i/f;->o:F

    iget-object v3, p0, Lg/e/a/a/i/b;->j:Lg/e/a/a/c/c;

    check-cast v3, Lg/e/a/a/c/g;

    invoke-virtual {v3}, Lg/e/a/a/c/c;->getDragDecelerationFrictionCoef()F

    move-result v3

    mul-float v2, v2, v3

    iput v2, p0, Lg/e/a/a/i/f;->o:F

    .line 4
    iget-wide v2, p0, Lg/e/a/a/i/f;->n:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    .line 5
    iget-object v3, p0, Lg/e/a/a/i/b;->j:Lg/e/a/a/c/c;

    move-object v4, v3

    check-cast v4, Lg/e/a/a/c/g;

    check-cast v3, Lg/e/a/a/c/g;

    invoke-virtual {v3}, Lg/e/a/a/c/g;->getRotationAngle()F

    move-result v3

    iget v5, p0, Lg/e/a/a/i/f;->o:F

    mul-float v5, v5, v2

    add-float/2addr v3, v5

    invoke-virtual {v4, v3}, Lg/e/a/a/c/g;->setRotationAngle(F)V

    .line 6
    iput-wide v0, p0, Lg/e/a/a/i/f;->n:J

    .line 7
    iget v0, p0, Lg/e/a/a/i/f;->o:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_1

    .line 8
    iget-object v0, p0, Lg/e/a/a/i/b;->j:Lg/e/a/a/c/c;

    invoke-static {v0}, Lg/e/a/a/l/i;->x(Landroid/view/View;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lg/e/a/a/i/f;->k()V

    :goto_0
    return-void
.end method

.method public j(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/i/b;->j:Lg/e/a/a/c/c;

    check-cast v0, Lg/e/a/a/c/g;

    invoke-virtual {v0, p1, p2}, Lg/e/a/a/c/g;->z(FF)F

    move-result p1

    iget-object p2, p0, Lg/e/a/a/i/b;->j:Lg/e/a/a/c/c;

    check-cast p2, Lg/e/a/a/c/g;

    invoke-virtual {p2}, Lg/e/a/a/c/g;->getRawRotationAngle()F

    move-result p2

    sub-float/2addr p1, p2

    iput p1, p0, Lg/e/a/a/i/f;->l:F

    return-void
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lg/e/a/a/i/f;->o:F

    return-void
.end method

.method public l(FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/e/a/a/i/b;->j:Lg/e/a/a/c/c;

    move-object v1, v0

    check-cast v1, Lg/e/a/a/c/g;

    check-cast v0, Lg/e/a/a/c/g;

    invoke-virtual {v0, p1, p2}, Lg/e/a/a/c/g;->z(FF)F

    move-result p1

    iget p2, p0, Lg/e/a/a/i/f;->l:F

    sub-float/2addr p1, p2

    invoke-virtual {v1, p1}, Lg/e/a/a/c/g;->setRotationAngle(F)V

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    sget-object v0, Lg/e/a/a/i/b$a;->LONG_PRESS:Lg/e/a/a/i/b$a;

    iput-object v0, p0, Lg/e/a/a/i/b;->f:Lg/e/a/a/i/b$a;

    .line 2
    iget-object v0, p0, Lg/e/a/a/i/b;->j:Lg/e/a/a/c/c;

    check-cast v0, Lg/e/a/a/c/g;

    invoke-virtual {v0}, Lg/e/a/a/c/c;->getOnChartGestureListener()Lg/e/a/a/i/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lg/e/a/a/i/c;->e(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    sget-object v0, Lg/e/a/a/i/b$a;->SINGLE_TAP:Lg/e/a/a/i/b$a;

    iput-object v0, p0, Lg/e/a/a/i/b;->f:Lg/e/a/a/i/b$a;

    .line 2
    iget-object v0, p0, Lg/e/a/a/i/b;->j:Lg/e/a/a/c/c;

    check-cast v0, Lg/e/a/a/c/g;

    invoke-virtual {v0}, Lg/e/a/a/c/c;->getOnChartGestureListener()Lg/e/a/a/i/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lg/e/a/a/i/c;->d(Landroid/view/MotionEvent;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lg/e/a/a/i/b;->j:Lg/e/a/a/c/c;

    check-cast v0, Lg/e/a/a/c/g;

    invoke-virtual {v0}, Lg/e/a/a/c/c;->r()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_1
    iget-object v0, p0, Lg/e/a/a/i/b;->j:Lg/e/a/a/c/c;

    check-cast v0, Lg/e/a/a/c/g;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/e/a/a/c/c;->l(FF)Lg/e/a/a/g/c;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v0, p1}, Lg/e/a/a/i/b;->c(Lg/e/a/a/g/c;Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-object p1, p0, Lg/e/a/a/i/b;->i:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p1, p0, Lg/e/a/a/i/b;->j:Lg/e/a/a/c/c;

    check-cast p1, Lg/e/a/a/c/g;

    invoke-virtual {p1}, Lg/e/a/a/c/g;->D()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_7

    if-eq v2, v0, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 6
    :cond_1
    iget-object v2, p0, Lg/e/a/a/i/b;->j:Lg/e/a/a/c/c;

    check-cast v2, Lg/e/a/a/c/g;

    invoke-virtual {v2}, Lg/e/a/a/c/c;->p()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-direct {p0, p1, v1}, Lg/e/a/a/i/f;->i(FF)V

    .line 8
    :cond_2
    iget v2, p0, Lg/e/a/a/i/b;->g:I

    const/4 v3, 0x6

    if-nez v2, :cond_3

    iget-object v2, p0, Lg/e/a/a/i/f;->k:Lg/e/a/a/l/e;

    iget v4, v2, Lg/e/a/a/l/e;->c:F

    iget v2, v2, Lg/e/a/a/l/e;->d:F

    .line 9
    invoke-static {p1, v4, v1, v2}, Lg/e/a/a/i/b;->a(FFFF)F

    move-result v2

    const/high16 v4, 0x41000000    # 8.0f

    .line 10
    invoke-static {v4}, Lg/e/a/a/l/i;->e(F)F

    move-result v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    .line 11
    sget-object p1, Lg/e/a/a/i/b$a;->ROTATE:Lg/e/a/a/i/b$a;

    iput-object p1, p0, Lg/e/a/a/i/b;->f:Lg/e/a/a/i/b$a;

    .line 12
    iput v3, p0, Lg/e/a/a/i/b;->g:I

    .line 13
    iget-object p1, p0, Lg/e/a/a/i/b;->j:Lg/e/a/a/c/c;

    check-cast p1, Lg/e/a/a/c/g;

    invoke-virtual {p1}, Lg/e/a/a/c/c;->h()V

    goto :goto_0

    .line 14
    :cond_3
    iget v2, p0, Lg/e/a/a/i/b;->g:I

    if-ne v2, v3, :cond_4

    .line 15
    invoke-virtual {p0, p1, v1}, Lg/e/a/a/i/f;->l(FF)V

    .line 16
    iget-object p1, p0, Lg/e/a/a/i/b;->j:Lg/e/a/a/c/c;

    check-cast p1, Lg/e/a/a/c/g;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 17
    :cond_4
    :goto_0
    invoke-virtual {p0, p2}, Lg/e/a/a/i/b;->b(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 18
    :cond_5
    iget-object v2, p0, Lg/e/a/a/i/b;->j:Lg/e/a/a/c/c;

    check-cast v2, Lg/e/a/a/c/g;

    invoke-virtual {v2}, Lg/e/a/a/c/c;->p()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 19
    invoke-virtual {p0}, Lg/e/a/a/i/f;->k()V

    .line 20
    invoke-direct {p0, p1, v1}, Lg/e/a/a/i/f;->i(FF)V

    .line 21
    invoke-direct {p0}, Lg/e/a/a/i/f;->f()F

    move-result p1

    iput p1, p0, Lg/e/a/a/i/f;->o:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_6

    .line 22
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lg/e/a/a/i/f;->n:J

    .line 23
    iget-object p1, p0, Lg/e/a/a/i/b;->j:Lg/e/a/a/c/c;

    invoke-static {p1}, Lg/e/a/a/l/i;->x(Landroid/view/View;)V

    .line 24
    :cond_6
    iget-object p1, p0, Lg/e/a/a/i/b;->j:Lg/e/a/a/c/c;

    check-cast p1, Lg/e/a/a/c/g;

    invoke-virtual {p1}, Lg/e/a/a/c/c;->k()V

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lg/e/a/a/i/b;->g:I

    .line 26
    invoke-virtual {p0, p2}, Lg/e/a/a/i/b;->b(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 27
    :cond_7
    invoke-virtual {p0, p2}, Lg/e/a/a/i/b;->e(Landroid/view/MotionEvent;)V

    .line 28
    invoke-virtual {p0}, Lg/e/a/a/i/f;->k()V

    .line 29
    invoke-direct {p0}, Lg/e/a/a/i/f;->h()V

    .line 30
    iget-object p2, p0, Lg/e/a/a/i/b;->j:Lg/e/a/a/c/c;

    check-cast p2, Lg/e/a/a/c/g;

    invoke-virtual {p2}, Lg/e/a/a/c/c;->p()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 31
    invoke-direct {p0, p1, v1}, Lg/e/a/a/i/f;->i(FF)V

    .line 32
    :cond_8
    invoke-virtual {p0, p1, v1}, Lg/e/a/a/i/f;->j(FF)V

    .line 33
    iget-object p2, p0, Lg/e/a/a/i/f;->k:Lg/e/a/a/l/e;

    iput p1, p2, Lg/e/a/a/l/e;->c:F

    .line 34
    iput v1, p2, Lg/e/a/a/l/e;->d:F

    :cond_9
    :goto_1
    return v0
.end method
