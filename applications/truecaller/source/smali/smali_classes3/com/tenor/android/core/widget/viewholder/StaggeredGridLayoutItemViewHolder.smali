.class public Lcom/tenor/android/core/widget/viewholder/StaggeredGridLayoutItemViewHolder;
.super Lcom/tenor/android/core/measurable/MeasurableViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tenor/android/core/widget/viewholder/StaggeredGridLayoutItemViewHolder$OnClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CTX::",
        "Lcom/tenor/android/core/view/IBaseView;",
        ">",
        "Lcom/tenor/android/core/measurable/MeasurableViewHolder<",
        "TCTX;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/tenor/android/core/view/IBaseView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TCTX;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tenor/android/core/measurable/MeasurableViewHolder;-><init>(Landroid/view/View;Lcom/tenor/android/core/view/IBaseView;)V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tenor/android/core/widget/viewholder/WeakRefViewHolder;->hasRef()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tenor/android/core/widget/viewholder/WeakRefViewHolder;->getWeakRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tenor/android/core/view/IBaseView;

    invoke-interface {v0}, Lcom/tenor/android/core/view/IBaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hasContext()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tenor/android/core/widget/viewholder/WeakRefViewHolder;->hasRef()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tenor/android/core/widget/viewholder/StaggeredGridLayoutItemViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setFullHeightWithWidth()V
    .locals 1

    const/4 v0, -0x2

    .line 1
    invoke-virtual {p0, v0}, Lcom/tenor/android/core/widget/viewholder/StaggeredGridLayoutItemViewHolder;->setFullHeightWithWidth(I)V

    return-void
.end method

.method public setFullHeightWithWidth(I)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/tenor/android/core/widget/viewholder/StaggeredGridLayoutItemViewHolder;->hasContext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/tenor/android/core/widget/viewholder/StaggeredGridLayoutItemViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/tenor/android/core/util/AbstractUIUtils;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    .line 4
    :cond_1
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;-><init>(II)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f:Z

    .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setFullSpan(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    .line 2
    iput-boolean p1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f:Z

    .line 3
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setFullWidthWithHeight()V
    .locals 1

    const/4 v0, -0x2

    .line 1
    invoke-virtual {p0, v0}, Lcom/tenor/android/core/widget/viewholder/StaggeredGridLayoutItemViewHolder;->setFullWidthWithHeight(I)V

    return-void
.end method

.method public setFullWidthWithHeight(I)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/tenor/android/core/widget/viewholder/StaggeredGridLayoutItemViewHolder;->hasContext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/tenor/android/core/widget/viewholder/StaggeredGridLayoutItemViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/tenor/android/core/util/AbstractUIUtils;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tenor/android/core/widget/viewholder/StaggeredGridLayoutItemViewHolder;->setFullWidthWithHeightInPixel(I)V

    return-void
.end method

.method public setFullWidthWithHeightInPixel(I)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;-><init>(II)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f:Z

    .line 3
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setHeight(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tenor/android/core/widget/viewholder/StaggeredGridLayoutItemViewHolder;->hasContext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tenor/android/core/widget/viewholder/StaggeredGridLayoutItemViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/tenor/android/core/util/AbstractUIUtils;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tenor/android/core/widget/viewholder/StaggeredGridLayoutItemViewHolder;->setHeightInPixel(I)V

    return-void
.end method

.method public setHeightInPixel(I)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;-><init>(II)V

    .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setParams(II)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    invoke-direct {v0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;-><init>(II)V

    .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setWidthInPixel(I)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;-><init>(II)V

    .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
