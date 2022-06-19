.class public final Le/a/a/c/e8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Le/a/a/c/d8;

.field public final synthetic b:Landroidx/recyclerview/widget/RecyclerView$c0;


# direct methods
.method public constructor <init>(Le/a/a/c/d8;Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/e8;->a:Le/a/a/c/d8;

    iput-object p2, p0, Le/a/a/c/e8;->b:Landroidx/recyclerview/widget/RecyclerView$c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object p1, p0, Le/a/a/c/e8;->a:Le/a/a/c/d8;

    const-string v0, "event"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 2
    :cond_1
    :goto_0
    iput-boolean v1, p1, Le/a/a/c/d8;->j:Z

    .line 3
    iget-object p1, p0, Le/a/a/c/e8;->a:Le/a/a/c/d8;

    .line 4
    iget-boolean p2, p1, Le/a/a/c/d8;->j:Z

    if-eqz p2, :cond_4

    .line 5
    iget-object p1, p1, Le/a/a/c/d8;->k:Landroid/view/View;

    const-string p2, "view"

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    int-to-float v1, v2

    cmpl-float p1, p1, v1

    if-lez p1, :cond_4

    iget-object p1, p0, Le/a/a/c/e8;->a:Le/a/a/c/d8;

    .line 7
    iget-object p1, p1, Le/a/a/c/d8;->k:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Le/a/a/c/e8;->a:Le/a/a/c/d8;

    .line 9
    iget p2, p2, Le/a/a/c/d8;->g:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_4

    .line 10
    iget-object p1, p0, Le/a/a/c/e8;->b:Landroidx/recyclerview/widget/RecyclerView$c0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_4

    .line 11
    iget-object p1, p0, Le/a/a/c/e8;->a:Le/a/a/c/d8;

    .line 12
    iget-object p1, p1, Le/a/a/c/d8;->l:Le/a/a/c/d8$a;

    .line 13
    iget-object p2, p0, Le/a/a/c/e8;->b:Landroidx/recyclerview/widget/RecyclerView$c0;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result p2

    check-cast p1, Le/a/a/c/v1;

    .line 14
    iget-object p1, p1, Le/a/a/c/v1;->a:Le/a/a/c/y3;

    .line 15
    iget-object p1, p1, Le/a/a/c/y3;->c:Le/a/a/c/s4;

    invoke-interface {p1, p2}, Le/a/a/c/s4;->N6(I)V

    goto :goto_1

    .line 16
    :cond_2
    invoke-static {p2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {p2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    return v2
.end method
