.class public abstract Le/a/b0/a/w/g;
.super Landroidx/recyclerview/widget/RecyclerView$t;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$t;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract d(Z)V
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$t;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-boolean p1, p0, Le/a/b0/a/w/g;->a:Z

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$t;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p2

    instance-of p3, p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    goto :goto_0

    :cond_1
    move p2, p3

    .line 3
    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    goto :goto_1

    :cond_2
    move p1, p3

    .line 4
    :goto_1
    iget v0, p0, Le/a/b0/a/w/g;->b:I

    const/4 v1, 0x1

    if-le p2, v0, :cond_3

    move v2, v1

    goto :goto_2

    :cond_3
    move v2, p3

    :goto_2
    if-ne v0, p2, :cond_6

    .line 5
    iget v0, p0, Le/a/b0/a/w/g;->c:I

    sub-int v2, v0, p1

    if-ge p1, v0, :cond_4

    move v0, v1

    goto :goto_3

    :cond_4
    move v0, p3

    .line 6
    :goto_3
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v1, :cond_5

    move p3, v1

    :cond_5
    move v1, p3

    move v2, v0

    :cond_6
    if-eqz v1, :cond_7

    .line 7
    iget-boolean p3, p0, Le/a/b0/a/w/g;->a:Z

    if-eqz p3, :cond_7

    .line 8
    invoke-virtual {p0, v2}, Le/a/b0/a/w/g;->d(Z)V

    .line 9
    :cond_7
    iput p2, p0, Le/a/b0/a/w/g;->b:I

    .line 10
    iput p1, p0, Le/a/b0/a/w/g;->c:I

    return-void
.end method
