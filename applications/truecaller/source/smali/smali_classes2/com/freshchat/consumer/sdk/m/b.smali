.class public abstract Lcom/freshchat/consumer/sdk/m/b;
.super Lcom/freshchat/consumer/sdk/m/a;
.source "SourceFile"


# instance fields
.field private dR:Landroidx/recyclerview/widget/RecyclerView;

.field private oU:Lcom/freshchat/consumer/sdk/a/l;

.field private orientation:I

.field private ox:Lcom/freshchat/consumer/sdk/a/i$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/m/a;-><init>()V

    new-instance v0, Lcom/freshchat/consumer/sdk/m/c;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/m/c;-><init>(Lcom/freshchat/consumer/sdk/m/b;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/m/b;->ox:Lcom/freshchat/consumer/sdk/a/i$a;

    return-void
.end method

.method private hF()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/m/b;->oU:Lcom/freshchat/consumer/sdk/a/l;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/m/b;->hG()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/a/l;->K(I)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/m/b;->oU:Lcom/freshchat/consumer/sdk/a/l;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private hG()I
    .locals 2

    iget v0, p0, Lcom/freshchat/consumer/sdk/m/b;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/freshchat/consumer/sdk/R$integer;->freshchat_calendar_timeslot_items_portrait:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/freshchat/consumer/sdk/R$integer;->freshchat_calendar_timeslot_items_landscape:I

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public G(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/a/l$b;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/freshchat/consumer/sdk/a/l;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/m/b;->ox:Lcom/freshchat/consumer/sdk/a/i$a;

    invoke-direct {v0, p1, v1}, Lcom/freshchat/consumer/sdk/a/l;-><init>(Ljava/util/List;Lcom/freshchat/consumer/sdk/a/i$a;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/m/b;->oU:Lcom/freshchat/consumer/sdk/a/l;

    new-instance p1, Lcom/freshchat/consumer/sdk/ui/e;

    invoke-direct {p1, v0}, Lcom/freshchat/consumer/sdk/ui/e;-><init>(Lcom/freshchat/consumer/sdk/ui/f;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/m/b;->oU:Lcom/freshchat/consumer/sdk/a/l;

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/m/b;->hG()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/a/l;->K(I)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/m/b;->dR:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/m/b;->dR:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/m/b;->dR:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/m/b;->oU:Lcom/freshchat/consumer/sdk/a/l;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void
.end method

.method public abstract getCalendarType()I
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/freshchat/consumer/sdk/m/b;->orientation:I

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/m/b;->hF()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/m/a;->hD()I

    move-result p1

    iput p1, p0, Lcom/freshchat/consumer/sdk/m/b;->orientation:I

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget p2, Lcom/freshchat/consumer/sdk/R$id;->freshchat_all_timeslots_recycler_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/m/b;->dR:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
