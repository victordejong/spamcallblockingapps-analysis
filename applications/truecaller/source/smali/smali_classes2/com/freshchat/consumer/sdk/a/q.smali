.class public Lcom/freshchat/consumer/sdk/a/q;
.super Lcom/freshchat/consumer/sdk/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/freshchat/consumer/sdk/beans/ICategory;",
        ">",
        "Lcom/freshchat/consumer/sdk/a/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final qO:Lcom/freshchat/consumer/sdk/a/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ZLcom/freshchat/consumer/sdk/a/b$a;Lcom/freshchat/consumer/sdk/f/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;Z",
            "Lcom/freshchat/consumer/sdk/a/b$a;",
            "Lcom/freshchat/consumer/sdk/f/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/freshchat/consumer/sdk/a/b;-><init>(Landroid/content/Context;Ljava/util/List;ZLcom/freshchat/consumer/sdk/a/b$a;)V

    new-instance p1, Lcom/freshchat/consumer/sdk/a/r;

    invoke-direct {p1, p0, p0, p5}, Lcom/freshchat/consumer/sdk/a/r;-><init>(Lcom/freshchat/consumer/sdk/a/q;Landroidx/recyclerview/widget/RecyclerView$g;Lcom/freshchat/consumer/sdk/f/e;)V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/q;->qO:Lcom/freshchat/consumer/sdk/a/v;

    return-void
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/a/q;)I
    .locals 0

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/a/b;->getItemCount()I

    move-result p0

    return p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/q;->qO:Lcom/freshchat/consumer/sdk/a/v;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/a/v;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/q;->qO:Lcom/freshchat/consumer/sdk/a/v;

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/a/v;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 1

    instance-of v0, p1, Lcom/freshchat/consumer/sdk/a/b$b;

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/freshchat/consumer/sdk/a/b;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/q;->qO:Lcom/freshchat/consumer/sdk/a/v;

    invoke-virtual {v0, p1, p2}, Lcom/freshchat/consumer/sdk/a/v;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 1

    if-nez p2, :cond_0

    invoke-super {p0, p1, p2}, Lcom/freshchat/consumer/sdk/a/b;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/q;->qO:Lcom/freshchat/consumer/sdk/a/v;

    invoke-virtual {v0, p1, p2}, Lcom/freshchat/consumer/sdk/a/v;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;

    move-result-object p1

    return-object p1
.end method

.method public setStatus(Lcom/freshchat/consumer/sdk/service/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/q;->qO:Lcom/freshchat/consumer/sdk/a/v;

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/a/v;->setStatus(Lcom/freshchat/consumer/sdk/service/Status;)V

    return-void
.end method
