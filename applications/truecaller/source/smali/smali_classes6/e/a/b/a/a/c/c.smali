.class public final Le/a/b/a/a/c/c;
.super Ln3/b0/a/o;
.source "SourceFile"


# instance fields
.field public f:Ln3/b0/a/u;

.field public g:Ln3/b0/a/u;

.field public final h:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0}, Ln3/b0/a/o;-><init>()V

    iput v0, p0, Le/a/b/a/a/c/c;->h:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ln3/b0/a/o;-><init>()V

    iput p1, p0, Le/a/b/a/a/c/c;->h:F

    return-void
.end method

.method private final h(Landroidx/recyclerview/widget/RecyclerView$o;Ln3/b0/a/u;)Landroid/view/View;
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p2}, Ln3/b0/a/u;->k()I

    move-result v2

    invoke-virtual {p2}, Ln3/b0/a/u;->l()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    iget v2, p0, Le/a/b/a/a/c/c;->h:F

    float-to-int v2, v2

    add-int/2addr v3, v2

    const v2, 0x7fffffff

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 3
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4
    invoke-virtual {p2, v5}, Ln3/b0/a/u;->e(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p2, v5}, Ln3/b0/a/u;->c(Landroid/view/View;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    sub-int/2addr v7, v3

    .line 5
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v2, :cond_1

    move-object v1, v5

    move v2, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private final j(Landroidx/recyclerview/widget/RecyclerView$o;)Ln3/b0/a/u;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/a/a/c/c;->g:Ln3/b0/a/u;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ln3/b0/a/s;

    invoke-direct {v0, p1}, Ln3/b0/a/s;-><init>(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 3
    iput-object v0, p0, Le/a/b/a/a/c/c;->g:Ln3/b0/a/u;

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/b/a/a/c/c;->g:Ln3/b0/a/u;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Ln3/b0/a/s;

    invoke-direct {v0, p1}, Ln3/b0/a/s;-><init>(Landroidx/recyclerview/widget/RecyclerView$o;)V

    const-string p1, "OrientationHelper.create\u2026ntalHelper(layoutManager)"

    .line 6
    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private final k(Landroidx/recyclerview/widget/RecyclerView$o;)Ln3/b0/a/u;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/a/a/c/c;->f:Ln3/b0/a/u;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ln3/b0/a/t;

    invoke-direct {v0, p1}, Ln3/b0/a/t;-><init>(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 3
    iput-object v0, p0, Le/a/b/a/a/c/c;->f:Ln3/b0/a/u;

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/b/a/a/c/c;->f:Ln3/b0/a/u;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Ln3/b0/a/t;

    invoke-direct {v0, p1}, Ln3/b0/a/t;-><init>(Landroidx/recyclerview/widget/RecyclerView$o;)V

    const-string p1, "OrientationHelper.create\u2026icalHelper(layoutManager)"

    .line 6
    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public b(Landroidx/recyclerview/widget/RecyclerView$o;Landroid/view/View;)[I
    .locals 4

    const-string v0, "layoutManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetView"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->canScrollHorizontally()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Le/a/b/a/a/c/c;->j(Landroidx/recyclerview/widget/RecyclerView$o;)Ln3/b0/a/u;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Le/a/b/a/a/c/c;->i(Landroid/view/View;Ln3/b0/a/u;)I

    move-result v1

    aput v1, v0, v2

    goto :goto_0

    :cond_0
    aput v2, v0, v2

    .line 3
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->canScrollVertically()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 4
    invoke-direct {p0, p1}, Le/a/b/a/a/c/c;->k(Landroidx/recyclerview/widget/RecyclerView$o;)Ln3/b0/a/u;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Le/a/b/a/a/c/c;->i(Landroid/view/View;Ln3/b0/a/u;)I

    move-result p1

    aput p1, v0, v3

    goto :goto_1

    :cond_1
    aput v2, v0, v3

    :goto_1
    return-object v0
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$o;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-static {p1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Le/a/b/a/a/c/c;->k(Landroidx/recyclerview/widget/RecyclerView$o;)Ln3/b0/a/u;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Le/a/b/a/a/c/c;->h(Landroidx/recyclerview/widget/RecyclerView$o;Ln3/b0/a/u;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, p1}, Le/a/b/a/a/c/c;->j(Landroidx/recyclerview/widget/RecyclerView$o;)Ln3/b0/a/u;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Le/a/b/a/a/c/c;->h(Landroidx/recyclerview/widget/RecyclerView$o;Ln3/b0/a/u;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    iget-object v0, p0, Ln3/b0/a/o;->d:Ln3/b0/a/u;

    if-eqz v0, :cond_2

    iget-object v0, v0, Ln3/b0/a/u;->a:Landroidx/recyclerview/widget/RecyclerView$o;

    if-eq v0, p1, :cond_3

    .line 7
    :cond_2
    new-instance v0, Ln3/b0/a/t;

    invoke-direct {v0, p1}, Ln3/b0/a/t;-><init>(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 8
    iput-object v0, p0, Ln3/b0/a/o;->d:Ln3/b0/a/u;

    .line 9
    :cond_3
    iget-object v0, p0, Ln3/b0/a/o;->d:Ln3/b0/a/u;

    .line 10
    invoke-virtual {p0, p1, v0}, Ln3/b0/a/o;->h(Landroidx/recyclerview/widget/RecyclerView$o;Ln3/b0/a/u;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 12
    iget-object v0, p0, Ln3/b0/a/o;->e:Ln3/b0/a/u;

    if-eqz v0, :cond_5

    iget-object v0, v0, Ln3/b0/a/u;->a:Landroidx/recyclerview/widget/RecyclerView$o;

    if-eq v0, p1, :cond_6

    .line 13
    :cond_5
    new-instance v0, Ln3/b0/a/s;

    invoke-direct {v0, p1}, Ln3/b0/a/s;-><init>(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 14
    iput-object v0, p0, Ln3/b0/a/o;->e:Ln3/b0/a/u;

    .line 15
    :cond_6
    iget-object v0, p0, Ln3/b0/a/o;->e:Ln3/b0/a/u;

    .line 16
    invoke-virtual {p0, p1, v0}, Ln3/b0/a/o;->h(Landroidx/recyclerview/widget/RecyclerView$o;Ln3/b0/a/u;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final i(Landroid/view/View;Ln3/b0/a/u;)I
    .locals 1

    .line 1
    invoke-virtual {p2, p1}, Ln3/b0/a/u;->e(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p2, p1}, Ln3/b0/a/u;->c(Landroid/view/View;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    .line 2
    invoke-virtual {p2}, Ln3/b0/a/u;->k()I

    move-result v0

    invoke-virtual {p2}, Ln3/b0/a/u;->l()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v0

    iget v0, p0, Le/a/b/a/a/c/c;->h:F

    float-to-int v0, v0

    add-int/2addr p2, v0

    sub-int/2addr p1, p2

    return p1
.end method
