.class public abstract Lcom/freshchat/consumer/sdk/a/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final po:Lcom/freshchat/consumer/sdk/f/e;

.field private final qU:Landroidx/recyclerview/widget/RecyclerView$g;

.field private status:Lcom/freshchat/consumer/sdk/service/Status;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$g;Lcom/freshchat/consumer/sdk/f/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/freshchat/consumer/sdk/service/Status;->INIT_LOADING:Lcom/freshchat/consumer/sdk/service/Status;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/a/v;->status:Lcom/freshchat/consumer/sdk/service/Status;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/v;->qU:Landroidx/recyclerview/widget/RecyclerView$g;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/v;->po:Lcom/freshchat/consumer/sdk/f/e;

    return-void
.end method

.method private iJ()Z
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/v;->status:Lcom/freshchat/consumer/sdk/service/Status;

    sget-object v1, Lcom/freshchat/consumer/sdk/service/Status;->ERROR:Lcom/freshchat/consumer/sdk/service/Status;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/freshchat/consumer/sdk/service/Status;->NO_INTERNET:Lcom/freshchat/consumer/sdk/service/Status;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/freshchat/consumer/sdk/service/Status;->LOADING_MORE:Lcom/freshchat/consumer/sdk/service/Status;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/freshchat/consumer/sdk/service/Status;->SUCCESS:Lcom/freshchat/consumer/sdk/service/Status;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/a/v;->iH()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/a/v;->iJ()Z

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/a/v;->iH()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/a/v;->status:Lcom/freshchat/consumer/sdk/service/Status;

    sget-object v0, Lcom/freshchat/consumer/sdk/service/Status;->ERROR:Lcom/freshchat/consumer/sdk/service/Status;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/freshchat/consumer/sdk/service/Status;->NO_INTERNET:Lcom/freshchat/consumer/sdk/service/Status;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x2

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public abstract iH()I
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 1

    instance-of p2, p1, Lcom/freshchat/consumer/sdk/a/a/a;

    if-eqz p2, :cond_0

    sget-object p1, Lcom/freshchat/consumer/sdk/service/Status;->LOADING_MORE:Lcom/freshchat/consumer/sdk/service/Status;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/v;->status:Lcom/freshchat/consumer/sdk/service/Status;

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lcom/freshchat/consumer/sdk/a/a/b;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/freshchat/consumer/sdk/a/a/b;

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/a/v;->status:Lcom/freshchat/consumer/sdk/service/Status;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/v;->po:Lcom/freshchat/consumer/sdk/f/e;

    invoke-virtual {p1, p2, v0}, Lcom/freshchat/consumer/sdk/a/a/b;->a(Lcom/freshchat/consumer/sdk/service/Status;Lcom/freshchat/consumer/sdk/f/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/a/v;->status:Lcom/freshchat/consumer/sdk/service/Status;

    sget-object v1, Lcom/freshchat/consumer/sdk/service/Status;->NO_INTERNET:Lcom/freshchat/consumer/sdk/service/Status;

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_faq_load_more:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/freshchat/consumer/sdk/a/a/a;

    invoke-direct {p2, p1}, Lcom/freshchat/consumer/sdk/a/a/a;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_li_pagination_error_with_retry:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/freshchat/consumer/sdk/a/a/b;

    invoke-direct {p2, p1}, Lcom/freshchat/consumer/sdk/a/a/b;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setStatus(Lcom/freshchat/consumer/sdk/service/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/v;->status:Lcom/freshchat/consumer/sdk/service/Status;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/v;->status:Lcom/freshchat/consumer/sdk/service/Status;

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/a/v;->qU:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
