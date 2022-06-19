.class public Lcom/mopub/nativeads/MoPubRecyclerAdapter$c;
.super Landroidx/recyclerview/widget/RecyclerView$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/MoPubRecyclerAdapter;-><init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;Landroidx/recyclerview/widget/RecyclerView$g;Lcom/mopub/common/VisibilityTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;


# direct methods
.method public constructor <init>(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$c;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$c;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    .line 2
    iget-object v1, v0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    .line 3
    iget-object v0, v0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->d:Landroidx/recyclerview/widget/RecyclerView$g;

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->getItemCount()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->setItemCount(I)V

    .line 5
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$c;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$c;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    .line 2
    iget-object v0, v0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    .line 3
    invoke-virtual {v0, p2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdjustedPosition(I)I

    move-result p2

    .line 4
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$c;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    .line 5
    iget-object v0, v0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    .line 6
    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdjustedPosition(I)I

    move-result p1

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    .line 7
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$c;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$c;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    .line 2
    iget-object v0, v0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    .line 3
    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdjustedPosition(I)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$c;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    .line 5
    iget-object v1, v1, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->d:Landroidx/recyclerview/widget/RecyclerView$g;

    .line 6
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$g;->getItemCount()I

    move-result v1

    .line 7
    iget-object v2, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$c;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    .line 8
    iget-object v2, v2, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    .line 9
    invoke-virtual {v2, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->setItemCount(I)V

    add-int v2, p1, p2

    const/4 v3, 0x0

    if-lt v2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 10
    :goto_0
    sget-object v2, Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;->KEEP_ADS_FIXED:Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    iget-object v4, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$c;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    .line 11
    iget-object v5, v4, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->g:Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    if-eq v2, v5, :cond_3

    .line 12
    sget-object v2, Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;->INSERT_AT_END:Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    if-ne v2, v5, :cond_1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    if-ge v3, p2, :cond_2

    .line 13
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$c;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    .line 14
    iget-object v1, v1, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    .line 15
    invoke-virtual {v1, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->insertItem(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$c;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemRangeInserted(II)V

    goto :goto_3

    .line 17
    :cond_3
    :goto_2
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :goto_3
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$c;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$c;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    .line 2
    iget-object v0, v0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    .line 3
    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdjustedPosition(I)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$c;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    .line 5
    iget-object v1, v1, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->d:Landroidx/recyclerview/widget/RecyclerView$g;

    .line 6
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$g;->getItemCount()I

    move-result v1

    .line 7
    iget-object v2, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$c;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    .line 8
    iget-object v2, v2, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    .line 9
    invoke-virtual {v2, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->setItemCount(I)V

    add-int v2, p1, p2

    const/4 v3, 0x0

    if-lt v2, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 10
    :goto_0
    sget-object v4, Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;->KEEP_ADS_FIXED:Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    iget-object v5, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$c;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    .line 11
    iget-object v6, v5, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->g:Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    if-eq v4, v6, :cond_3

    .line 12
    sget-object v4, Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;->INSERT_AT_END:Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    if-ne v4, v6, :cond_1

    if-eqz v2, :cond_1

    goto :goto_2

    .line 13
    :cond_1
    iget-object v2, v5, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    add-int v4, v1, p2

    .line 14
    invoke-virtual {v2, v4}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdjustedCount(I)I

    move-result v2

    :goto_1
    if-ge v3, p2, :cond_2

    .line 15
    iget-object v4, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$c;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    .line 16
    iget-object v4, v4, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    .line 17
    invoke-virtual {v4, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->removeItem(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$c;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    .line 19
    iget-object p1, p1, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    .line 20
    invoke-virtual {p1, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdjustedCount(I)I

    move-result p1

    sub-int/2addr v2, p1

    sub-int p1, v2, p2

    sub-int/2addr v0, p1

    .line 21
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$c;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-virtual {p1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemRangeRemoved(II)V

    goto :goto_3

    .line 22
    :cond_3
    :goto_2
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :goto_3
    return-void
.end method
