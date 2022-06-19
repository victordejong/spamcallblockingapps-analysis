.class public abstract Le/a/a/h1/o/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public a:Z

.field public b:F

.field public c:F

.field public final d:Le/a/a/h1/o/b$a;

.field public final e:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/a/a/h1/o/b$a;

    invoke-direct {v0, p0}, Le/a/a/h1/o/b$a;-><init>(Le/a/a/h1/o/b;)V

    iput-object v0, p0, Le/a/a/h1/o/b;->d:Le/a/a/h1/o/b$a;

    .line 3
    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Le/a/a/h1/o/b;->e:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    const-string v0, "v"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 2
    iget-object p1, p0, Le/a/a/h1/o/b;->e:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    iget-boolean p2, p0, Le/a/a/h1/o/b;->a:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Le/a/a/h1/o/b;->a:Z

    .line 5
    iget p2, p0, Le/a/a/h1/o/b;->c:F

    move-object v1, p0

    check-cast v1, Le/a/a/h1/o/n$b;

    .line 6
    iget-object v2, v1, Le/a/a/h1/o/n$b;->f:Le/a/a/h1/o/n;

    .line 7
    iget-boolean v3, v2, Le/a/a/h1/o/n;->i:Z

    if-eqz v3, :cond_0

    .line 8
    iget-object p2, v2, Le/a/a/h1/o/n;->d:Le/a/a/h1/o/d;

    .line 9
    new-instance v0, Le/a/a/h1/o/o;

    invoke-direct {v0, v1}, Le/a/a/h1/o/o;-><init>(Le/a/a/h1/o/n$b;)V

    .line 10
    new-instance v2, Le/a/a/h1/o/p;

    invoke-direct {v2, v1}, Le/a/a/h1/o/p;-><init>(Le/a/a/h1/o/n$b;)V

    .line 11
    invoke-virtual {p2, v0, v2}, Le/a/a/h1/o/d;->a(Ls1/z/b/p;Ls1/z/b/a;)V

    goto :goto_1

    .line 12
    :cond_0
    iget-object v2, v2, Le/a/a/h1/o/n;->d:Le/a/a/h1/o/d;

    .line 13
    sget v3, Le/a/a/h1/o/d;->c:I

    const/4 v3, 0x0

    .line 14
    invoke-virtual {v2, v3, v3}, Le/a/a/h1/o/d;->a(Ls1/z/b/p;Ls1/z/b/a;)V

    .line 15
    iget-object v2, v1, Le/a/a/h1/o/n$b;->f:Le/a/a/h1/o/n;

    .line 16
    iget-object v3, v2, Le/a/a/h1/o/n;->o:Le/a/a/h1/o/i;

    .line 17
    iget v2, v2, Le/a/a/h1/o/n;->h:F

    .line 18
    invoke-interface {v3, v2}, Le/a/a/h1/o/i;->e3(F)V

    .line 19
    iget-object v1, v1, Le/a/a/h1/o/n$b;->f:Le/a/a/h1/o/n;

    .line 20
    invoke-virtual {v1}, Le/a/a/h1/o/n;->l()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 21
    iget-object v3, v1, Le/a/a/h1/o/n;->a:Le/a/a/h1/o/g;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v3

    if-eq v3, v0, :cond_1

    const/4 v0, 0x0

    move v7, v0

    goto :goto_0

    :cond_1
    move v7, v2

    .line 22
    :goto_0
    iget v8, v1, Le/a/a/h1/o/n;->h:F

    const/high16 v0, 0x3e800000    # 0.25f

    mul-float/2addr p2, v0

    add-float v9, p2, v8

    .line 23
    iget v6, v1, Le/a/a/h1/o/n;->g:F

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 24
    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 25
    new-instance v0, Le/a/a/h1/o/q;

    move-object v4, v0

    move-object v5, v1

    invoke-direct/range {v4 .. v9}, Le/a/a/h1/o/q;-><init>(Le/a/a/h1/o/n;FFFF)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0x320

    .line 26
    invoke-virtual {p2, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 27
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 28
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 29
    iput-object p2, v1, Le/a/a/h1/o/n;->m:Landroid/animation/ValueAnimator;

    :cond_2
    :goto_1
    return p1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
