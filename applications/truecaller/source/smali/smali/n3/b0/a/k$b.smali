.class public Ln3/b0/a/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/b0/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/b0/a/k;


# direct methods
.method public constructor <init>(Ln3/b0/a/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b0/a/k$b;->a:Ln3/b0/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 7

    .line 1
    iget-object p1, p0, Ln3/b0/a/k$b;->a:Ln3/b0/a/k;

    iget-object p1, p1, Ln3/b0/a/k;->y:Ln3/k/i/e;

    .line 2
    iget-object p1, p1, Ln3/k/i/e;->a:Ln3/k/i/e$a;

    check-cast p1, Ln3/k/i/e$b;

    .line 3
    iget-object p1, p1, Ln3/k/i/e$b;->a:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    iget-object p1, p0, Ln3/b0/a/k$b;->a:Ln3/b0/a/k;

    iget-object p1, p1, Ln3/b0/a/k;->t:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 6
    :cond_0
    iget-object p1, p0, Ln3/b0/a/k$b;->a:Ln3/b0/a/k;

    iget p1, p1, Ln3/b0/a/k;->l:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 8
    iget-object v1, p0, Ln3/b0/a/k$b;->a:Ln3/b0/a/k;

    iget v1, v1, Ln3/b0/a/k;->l:I

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 9
    iget-object v2, p0, Ln3/b0/a/k$b;->a:Ln3/b0/a/k;

    invoke-virtual {v2, p1, p2, v1}, Ln3/b0/a/k;->e(ILandroid/view/MotionEvent;I)V

    .line 10
    :cond_2
    iget-object v2, p0, Ln3/b0/a/k$b;->a:Ln3/b0/a/k;

    iget-object v3, v2, Ln3/b0/a/k;->c:Landroidx/recyclerview/widget/RecyclerView$c0;

    if-nez v3, :cond_3

    return-void

    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p1, v5, :cond_8

    const/4 v6, 0x2

    if-eq p1, v6, :cond_7

    const/4 v1, 0x3

    if-eq p1, v1, :cond_6

    const/4 v0, 0x6

    if-eq p1, v0, :cond_4

    goto :goto_1

    .line 11
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    .line 12
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 13
    iget-object v1, p0, Ln3/b0/a/k$b;->a:Ln3/b0/a/k;

    iget v2, v1, Ln3/b0/a/k;->l:I

    if-ne v0, v2, :cond_9

    if-nez p1, :cond_5

    move v4, v5

    .line 14
    :cond_5
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v1, Ln3/b0/a/k;->l:I

    .line 15
    iget-object v0, p0, Ln3/b0/a/k$b;->a:Ln3/b0/a/k;

    iget v1, v0, Ln3/b0/a/k;->o:I

    invoke-virtual {v0, p2, v1, p1}, Ln3/b0/a/k;->n(Landroid/view/MotionEvent;II)V

    goto :goto_1

    .line 16
    :cond_6
    iget-object p1, v2, Ln3/b0/a/k;->t:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_8

    .line 17
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0

    :cond_7
    if-ltz v1, :cond_9

    .line 18
    iget p1, v2, Ln3/b0/a/k;->o:I

    invoke-virtual {v2, p2, p1, v1}, Ln3/b0/a/k;->n(Landroid/view/MotionEvent;II)V

    .line 19
    iget-object p1, p0, Ln3/b0/a/k$b;->a:Ln3/b0/a/k;

    invoke-virtual {p1, v3}, Ln3/b0/a/k;->k(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    .line 20
    iget-object p1, p0, Ln3/b0/a/k$b;->a:Ln3/b0/a/k;

    iget-object p2, p1, Ln3/b0/a/k;->r:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Ln3/b0/a/k;->s:Ljava/lang/Runnable;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 21
    iget-object p1, p0, Ln3/b0/a/k$b;->a:Ln3/b0/a/k;

    iget-object p1, p1, Ln3/b0/a/k;->s:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 22
    iget-object p1, p0, Ln3/b0/a/k$b;->a:Ln3/b0/a/k;

    iget-object p1, p1, Ln3/b0/a/k;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_1

    .line 23
    :cond_8
    :goto_0
    iget-object p1, p0, Ln3/b0/a/k$b;->a:Ln3/b0/a/k;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v4}, Ln3/b0/a/k;->m(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    .line 24
    iget-object p1, p0, Ln3/b0/a/k$b;->a:Ln3/b0/a/k;

    iput v0, p1, Ln3/b0/a/k;->l:I

    :cond_9
    :goto_1
    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-object p1, p0, Ln3/b0/a/k$b;->a:Ln3/b0/a/k;

    iget-object p1, p1, Ln3/b0/a/k;->y:Ln3/k/i/e;

    .line 2
    iget-object p1, p1, Ln3/k/i/e;->a:Ln3/k/i/e$a;

    check-cast p1, Ln3/k/i/e$b;

    .line 3
    iget-object p1, p1, Ln3/k/i/e$b;->a:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_5

    .line 5
    iget-object p1, p0, Ln3/b0/a/k$b;->a:Ln3/b0/a/k;

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p1, Ln3/b0/a/k;->l:I

    .line 6
    iget-object p1, p0, Ln3/b0/a/k$b;->a:Ln3/b0/a/k;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p1, Ln3/b0/a/k;->d:F

    .line 7
    iget-object p1, p0, Ln3/b0/a/k$b;->a:Ln3/b0/a/k;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p1, Ln3/b0/a/k;->e:F

    .line 8
    iget-object p1, p0, Ln3/b0/a/k$b;->a:Ln3/b0/a/k;

    .line 9
    iget-object v4, p1, Ln3/b0/a/k;->t:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_0

    .line 10
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->recycle()V

    .line 11
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p1, Ln3/b0/a/k;->t:Landroid/view/VelocityTracker;

    .line 12
    iget-object p1, p0, Ln3/b0/a/k$b;->a:Ln3/b0/a/k;

    iget-object v4, p1, Ln3/b0/a/k;->c:Landroidx/recyclerview/widget/RecyclerView$c0;

    if-nez v4, :cond_8

    .line 13
    iget-object v4, p1, Ln3/b0/a/k;->p:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {p1, p2}, Ln3/b0/a/k;->h(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v4

    .line 15
    iget-object v5, p1, Ln3/b0/a/k;->p:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v0

    :goto_0
    if-ltz v5, :cond_3

    .line 16
    iget-object v0, p1, Ln3/b0/a/k;->p:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/b0/a/k$f;

    .line 17
    iget-object v6, v0, Ln3/b0/a/k$f;->e:Landroidx/recyclerview/widget/RecyclerView$c0;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    if-ne v6, v4, :cond_2

    move-object v1, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v1, :cond_8

    .line 18
    iget-object p1, p0, Ln3/b0/a/k$b;->a:Ln3/b0/a/k;

    iget v0, p1, Ln3/b0/a/k;->d:F

    iget v4, v1, Ln3/b0/a/k$f;->i:F

    sub-float/2addr v0, v4

    iput v0, p1, Ln3/b0/a/k;->d:F

    .line 19
    iget v0, p1, Ln3/b0/a/k;->e:F

    iget v4, v1, Ln3/b0/a/k$f;->j:F

    sub-float/2addr v0, v4

    iput v0, p1, Ln3/b0/a/k;->e:F

    .line 20
    iget-object v0, v1, Ln3/b0/a/k$f;->e:Landroidx/recyclerview/widget/RecyclerView$c0;

    invoke-virtual {p1, v0, v2}, Ln3/b0/a/k;->g(Landroidx/recyclerview/widget/RecyclerView$c0;Z)V

    .line 21
    iget-object p1, p0, Ln3/b0/a/k$b;->a:Ln3/b0/a/k;

    iget-object p1, p1, Ln3/b0/a/k;->a:Ljava/util/List;

    iget-object v0, v1, Ln3/b0/a/k$f;->e:Landroidx/recyclerview/widget/RecyclerView$c0;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 22
    iget-object p1, p0, Ln3/b0/a/k$b;->a:Ln3/b0/a/k;

    iget-object p1, p1, Ln3/b0/a/k;->m:Ln3/b0/a/k$d;

    iget-object v0, v1, Ln3/b0/a/k$f;->e:Landroidx/recyclerview/widget/RecyclerView$c0;

    invoke-virtual {p1, v0}, Ln3/b0/a/k$d;->a(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    .line 23
    :cond_4
    iget-object p1, p0, Ln3/b0/a/k$b;->a:Ln3/b0/a/k;

    iget-object v0, v1, Ln3/b0/a/k$f;->e:Landroidx/recyclerview/widget/RecyclerView$c0;

    iget v1, v1, Ln3/b0/a/k$f;->f:I

    invoke-virtual {p1, v0, v1}, Ln3/b0/a/k;->m(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    .line 24
    iget-object p1, p0, Ln3/b0/a/k$b;->a:Ln3/b0/a/k;

    iget v0, p1, Ln3/b0/a/k;->o:I

    invoke-virtual {p1, p2, v0, v3}, Ln3/b0/a/k;->n(Landroid/view/MotionEvent;II)V

    goto :goto_3

    :cond_5
    const/4 v4, 0x3

    if-eq p1, v4, :cond_7

    if-ne p1, v2, :cond_6

    goto :goto_2

    .line 25
    :cond_6
    iget-object v1, p0, Ln3/b0/a/k$b;->a:Ln3/b0/a/k;

    iget v1, v1, Ln3/b0/a/k;->l:I

    if-eq v1, v0, :cond_8

    .line 26
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ltz v0, :cond_8

    .line 27
    iget-object v1, p0, Ln3/b0/a/k$b;->a:Ln3/b0/a/k;

    invoke-virtual {v1, p1, p2, v0}, Ln3/b0/a/k;->e(ILandroid/view/MotionEvent;I)V

    goto :goto_3

    .line 28
    :cond_7
    :goto_2
    iget-object p1, p0, Ln3/b0/a/k$b;->a:Ln3/b0/a/k;

    iput v0, p1, Ln3/b0/a/k;->l:I

    .line 29
    invoke-virtual {p1, v1, v3}, Ln3/b0/a/k;->m(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    .line 30
    :cond_8
    :goto_3
    iget-object p1, p0, Ln3/b0/a/k$b;->a:Ln3/b0/a/k;

    iget-object p1, p1, Ln3/b0/a/k;->t:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_9

    .line 31
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 32
    :cond_9
    iget-object p1, p0, Ln3/b0/a/k$b;->a:Ln3/b0/a/k;

    iget-object p1, p1, Ln3/b0/a/k;->c:Landroidx/recyclerview/widget/RecyclerView$c0;

    if-eqz p1, :cond_a

    goto :goto_4

    :cond_a
    move v2, v3

    :goto_4
    return v2
.end method

.method public c(Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Ln3/b0/a/k$b;->a:Ln3/b0/a/k;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ln3/b0/a/k;->m(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    return-void
.end method
