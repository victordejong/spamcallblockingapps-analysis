.class public Lcom/freshchat/consumer/sdk/a/s;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/a/s$b;,
        Lcom/freshchat/consumer/sdk/a/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;"
    }
.end annotation


# instance fields
.field private final qO:Lcom/freshchat/consumer/sdk/a/v;

.field private final qQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/FAQ;",
            ">;"
        }
    .end annotation
.end field

.field private final qR:Lcom/freshchat/consumer/sdk/a/s$b;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/freshchat/consumer/sdk/a/s$b;Lcom/freshchat/consumer/sdk/f/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/FAQ;",
            ">;",
            "Lcom/freshchat/consumer/sdk/a/s$b;",
            "Lcom/freshchat/consumer/sdk/f/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/s;->qQ:Ljava/util/List;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/s;->qR:Lcom/freshchat/consumer/sdk/a/s$b;

    new-instance p2, Lcom/freshchat/consumer/sdk/a/t;

    invoke-direct {p2, p0, p0, p3, p1}, Lcom/freshchat/consumer/sdk/a/t;-><init>(Lcom/freshchat/consumer/sdk/a/s;Landroidx/recyclerview/widget/RecyclerView$g;Lcom/freshchat/consumer/sdk/f/e;Ljava/util/List;)V

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/s;->qO:Lcom/freshchat/consumer/sdk/a/v;

    return-void
.end method

.method private W(I)Lcom/freshchat/consumer/sdk/beans/FAQ;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/s;->qQ:Ljava/util/List;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/s;->qQ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/FAQ;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/a/s;)Lcom/freshchat/consumer/sdk/a/s$b;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/a/s;->qR:Lcom/freshchat/consumer/sdk/a/s$b;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/s;->qO:Lcom/freshchat/consumer/sdk/a/v;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/a/v;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/s;->qO:Lcom/freshchat/consumer/sdk/a/v;

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/a/v;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 2

    instance-of v0, p1, Lcom/freshchat/consumer/sdk/a/s$a;

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/freshchat/consumer/sdk/a/s;->W(I)Lcom/freshchat/consumer/sdk/beans/FAQ;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/FAQ;->getTitle()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/freshchat/consumer/sdk/a/s$a;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/s$a;->iI()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/s$a;->iI()Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Lcom/freshchat/consumer/sdk/a/u;

    invoke-direct {v0, p0, p2}, Lcom/freshchat/consumer/sdk/a/u;-><init>(Lcom/freshchat/consumer/sdk/a/s;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/s;->qO:Lcom/freshchat/consumer/sdk/a/v;

    invoke-virtual {v0, p1, p2}, Lcom/freshchat/consumer/sdk/a/v;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_listitem_article:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/freshchat/consumer/sdk/a/s$a;

    invoke-direct {p2, p1}, Lcom/freshchat/consumer/sdk/a/s$a;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/s;->qO:Lcom/freshchat/consumer/sdk/a/v;

    invoke-virtual {v0, p1, p2}, Lcom/freshchat/consumer/sdk/a/v;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;

    move-result-object p1

    return-object p1
.end method

.method public setStatus(Lcom/freshchat/consumer/sdk/service/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/s;->qO:Lcom/freshchat/consumer/sdk/a/v;

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/a/v;->setStatus(Lcom/freshchat/consumer/sdk/service/Status;)V

    return-void
.end method
