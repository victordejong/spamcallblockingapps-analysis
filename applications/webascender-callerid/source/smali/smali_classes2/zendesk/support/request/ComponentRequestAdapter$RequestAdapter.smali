.class Lzendesk/support/request/ComponentRequestAdapter$RequestAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/ComponentRequestAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RequestAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final dataSource:Lzendesk/support/request/ComponentRequestAdapter;

.field private lastPosition:I


# direct methods
.method constructor <init>(Lzendesk/support/request/ComponentRequestAdapter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lzendesk/support/request/ComponentRequestAdapter$RequestAdapter;->lastPosition:I

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->setHasStableIds(Z)V

    .line 4
    iput-object p1, p0, Lzendesk/support/request/ComponentRequestAdapter$RequestAdapter;->dataSource:Lzendesk/support/request/ComponentRequestAdapter;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ComponentRequestAdapter$RequestAdapter;->dataSource:Lzendesk/support/request/ComponentRequestAdapter;

    invoke-virtual {v0}, Lzendesk/support/request/ComponentRequestAdapter;->getMessageCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ComponentRequestAdapter$RequestAdapter;->dataSource:Lzendesk/support/request/ComponentRequestAdapter;

    invoke-virtual {v0, p1}, Lzendesk/support/request/ComponentRequestAdapter;->getMessageForPos(I)Lzendesk/support/request/CellType$Base;

    move-result-object p1

    invoke-interface {p1}, Lzendesk/support/request/CellType$Base;->getUniqueId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ComponentRequestAdapter$RequestAdapter;->dataSource:Lzendesk/support/request/ComponentRequestAdapter;

    invoke-virtual {v0, p1}, Lzendesk/support/request/ComponentRequestAdapter;->getMessageForPos(I)Lzendesk/support/request/CellType$Base;

    move-result-object p1

    invoke-interface {p1}, Lzendesk/support/request/CellType$Base;->getLayoutId()I

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 0

    .line 1
    check-cast p1, Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;

    invoke-virtual {p0, p1, p2}, Lzendesk/support/request/ComponentRequestAdapter$RequestAdapter;->onBindViewHolder(Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lzendesk/support/request/ComponentRequestAdapter$RequestAdapter;->dataSource:Lzendesk/support/request/ComponentRequestAdapter;

    invoke-virtual {v0, p2}, Lzendesk/support/request/ComponentRequestAdapter;->getMessageForPos(I)Lzendesk/support/request/CellType$Base;

    move-result-object v0

    invoke-interface {v0, p1}, Lzendesk/support/request/CellType$Base;->bind(Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;)V

    .line 3
    iget v0, p0, Lzendesk/support/request/ComponentRequestAdapter$RequestAdapter;->lastPosition:I

    const/4 v1, -0x1

    if-le p2, v0, :cond_0

    if-eq v0, v1, :cond_0

    .line 4
    iput p2, p0, Lzendesk/support/request/ComponentRequestAdapter$RequestAdapter;->lastPosition:I

    .line 5
    invoke-virtual {p1}, Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;->startAnimation()V

    .line 6
    :cond_0
    iget p1, p0, Lzendesk/support/request/ComponentRequestAdapter$RequestAdapter;->lastPosition:I

    if-ne p1, v1, :cond_1

    .line 7
    iput p2, p0, Lzendesk/support/request/ComponentRequestAdapter$RequestAdapter;->lastPosition:I

    :cond_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lzendesk/support/request/ComponentRequestAdapter$RequestAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;

    invoke-direct {p2, p1}, Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$d0;)V
    .locals 0

    .line 1
    check-cast p1, Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;

    invoke-virtual {p0, p1}, Lzendesk/support/request/ComponentRequestAdapter$RequestAdapter;->onViewDetachedFromWindow(Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$d0;)V

    .line 3
    invoke-virtual {p1}, Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;->clearAnimation()V

    return-void
.end method
