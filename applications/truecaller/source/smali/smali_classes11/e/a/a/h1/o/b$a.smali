.class public final Le/a/a/h1/o/b$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/h1/o/b;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/h1/o/b;


# direct methods
.method public constructor <init>(Le/a/a/h1/o/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/h1/o/b$a;->a:Le/a/a/h1/o/b;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/a/h1/o/b$a;->a:Le/a/a/h1/o/b;

    const/4 v0, 0x0

    .line 2
    iput v0, p1, Le/a/a/h1/o/b;->b:F

    .line 3
    iput v0, p1, Le/a/a/h1/o/b;->c:F

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const-string v0, "e1"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e2"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/a/h1/o/b$a;->a:Le/a/a/h1/o/b;

    .line 2
    iput p3, p1, Le/a/a/h1/o/b;->b:F

    .line 3
    iput p4, p1, Le/a/a/h1/o/b;->c:F

    const/4 p1, 0x1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    const-string p3, "e1"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "e2"

    invoke-static {p2, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/h1/o/b$a;->a:Le/a/a/h1/o/b;

    .line 2
    iget-boolean v1, v0, Le/a/a/h1/o/b;->a:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 3
    check-cast v0, Le/a/a/h1/o/n$b;

    .line 4
    iget-object v1, v0, Le/a/a/h1/o/n$b;->f:Le/a/a/h1/o/n;

    .line 5
    iget-object v1, v1, Le/a/a/h1/o/n;->m:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 7
    :cond_0
    iget-object v0, v0, Le/a/a/h1/o/n$b;->f:Le/a/a/h1/o/n;

    const/4 v1, 0x0

    .line 8
    iput-object v1, v0, Le/a/a/h1/o/n;->m:Landroid/animation/ValueAnimator;

    .line 9
    iget-object v0, v0, Le/a/a/h1/o/n;->d:Le/a/a/h1/o/d;

    .line 10
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 11
    iget-object v4, v0, Le/a/a/h1/o/d;->b:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    .line 12
    iget-object v4, v0, Le/a/a/h1/o/d;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    iget-object v6, v0, Le/a/a/h1/o/d;->a:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 13
    iget-object v4, v0, Le/a/a/h1/o/d;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    .line 14
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 15
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 16
    iget-object v0, v0, Le/a/a/h1/o/d;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 17
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 20
    :cond_1
    iget-object v0, p0, Le/a/a/h1/o/b$a;->a:Le/a/a/h1/o/b;

    const/4 v1, 0x1

    .line 21
    iput-boolean v1, v0, Le/a/a/h1/o/b;->a:Z

    .line 22
    check-cast v0, Le/a/a/h1/o/n$b;

    .line 23
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object p1, v0, Le/a/a/h1/o/n$b;->f:Le/a/a/h1/o/n;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    sub-float/2addr p3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p2, v3

    const/4 p4, 0x4

    invoke-static {p1, p3, p2, v2, p4}, Le/a/a/h1/o/n;->n(Le/a/a/h1/o/n;FFZI)V

    return v1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/a/h1/o/b$a;->a:Le/a/a/h1/o/b;

    check-cast p1, Le/a/a/h1/o/n$b;

    .line 2
    iget-object p1, p1, Le/a/a/h1/o/n$b;->f:Le/a/a/h1/o/n;

    .line 3
    iget-object p1, p1, Le/a/a/h1/o/n;->o:Le/a/a/h1/o/i;

    .line 4
    invoke-interface {p1}, Le/a/a/h1/o/i;->Rc()V

    const/4 p1, 0x1

    return p1
.end method
