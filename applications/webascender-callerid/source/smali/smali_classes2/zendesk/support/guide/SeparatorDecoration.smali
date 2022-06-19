.class Lzendesk/support/guide/SeparatorDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "SourceFile"


# instance fields
.field private divider:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/guide/SeparatorDecoration;->divider:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private isItemACategory(Landroidx/recyclerview/widget/RecyclerView$d0;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder;

    return p1
.end method

.method private isItemAnExpandedCategory(Landroidx/recyclerview/widget/RecyclerView$d0;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder;

    if-eqz v0, :cond_0

    check-cast p1, Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder;

    .line 2
    invoke-virtual {p1}, Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder;->isExpanded()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isItemAnUnexpandedCategory(Landroidx/recyclerview/widget/RecyclerView$d0;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder;

    if-eqz v0, :cond_0

    check-cast p1, Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder;

    .line 2
    invoke-virtual {p1}, Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder;->isExpanded()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$a0;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$n;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$a0;)V

    .line 2
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$l;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$l;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$l;->isRunning()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5
    invoke-virtual {p0, p2, v0}, Lzendesk/support/guide/SeparatorDecoration;->shouldShowTopSeparator(Landroidx/recyclerview/widget/RecyclerView;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    .line 7
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$p;

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v4

    .line 10
    iget-object v4, p0, Lzendesk/support/guide/SeparatorDecoration;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v1

    .line 11
    iget-object v5, p0, Lzendesk/support/guide/SeparatorDecoration;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v2, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 12
    iget-object v1, p0, Lzendesk/support/guide/SeparatorDecoration;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method shouldShowTopSeparator(Landroidx/recyclerview/widget/RecyclerView;I)Z
    .locals 4

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->g0(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$d0;

    move-result-object v0

    invoke-direct {p0, v0}, Lzendesk/support/guide/SeparatorDecoration;->isItemACategory(Landroidx/recyclerview/widget/RecyclerView$d0;)Z

    move-result v0

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->g0(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$d0;

    move-result-object v1

    invoke-direct {p0, v1}, Lzendesk/support/guide/SeparatorDecoration;->isItemAnExpandedCategory(Landroidx/recyclerview/widget/RecyclerView$d0;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez p2, :cond_0

    sub-int/2addr p2, v3

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->g0(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$d0;

    move-result-object p1

    invoke-direct {p0, p1}, Lzendesk/support/guide/SeparatorDecoration;->isItemAnUnexpandedCategory(Landroidx/recyclerview/widget/RecyclerView$d0;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method
