.class public Ln3/b0/a/k$e;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/b0/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Ln3/b0/a/k;


# direct methods
.method public constructor <init>(Ln3/b0/a/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b0/a/k$e;->b:Ln3/b0/a/k;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Ln3/b0/a/k$e;->a:Z

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Ln3/b0/a/k$e;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/b0/a/k$e;->b:Ln3/b0/a/k;

    invoke-virtual {v0, p1}, Ln3/b0/a/k;->h(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    iget-object v1, p0, Ln3/b0/a/k$e;->b:Ln3/b0/a/k;

    iget-object v1, v1, Ln3/b0/a/k;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$c0;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4
    iget-object v1, p0, Ln3/b0/a/k$e;->b:Ln3/b0/a/k;

    iget-object v2, v1, Ln3/b0/a/k;->m:Ln3/b0/a/k$d;

    iget-object v1, v1, Ln3/b0/a/k;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    invoke-virtual {v2, v1, v0}, Ln3/b0/a/k$d;->d(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$c0;)I

    move-result v1

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-nez v1, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 7
    iget-object v2, p0, Ln3/b0/a/k$e;->b:Ln3/b0/a/k;

    iget v2, v2, Ln3/b0/a/k;->l:I

    if-ne v1, v2, :cond_3

    .line 8
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 11
    iget-object v1, p0, Ln3/b0/a/k$e;->b:Ln3/b0/a/k;

    iput v2, v1, Ln3/b0/a/k;->d:F

    .line 12
    iput p1, v1, Ln3/b0/a/k;->e:F

    const/4 p1, 0x0

    .line 13
    iput p1, v1, Ln3/b0/a/k;->i:F

    iput p1, v1, Ln3/b0/a/k;->h:F

    .line 14
    iget-object p1, v1, Ln3/b0/a/k;->m:Ln3/b0/a/k$d;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p1, p0, Ln3/b0/a/k$e;->b:Ln3/b0/a/k;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ln3/b0/a/k;->m(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    :cond_3
    return-void
.end method
