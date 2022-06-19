.class public Lcom/freshchat/consumer/sdk/a/g;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/a/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lcom/freshchat/consumer/sdk/a/g$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final lR:Lcom/freshchat/consumer/sdk/ui/CarouselCardView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/freshchat/consumer/sdk/ui/CarouselCardView$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;",
            ">;",
            "Lcom/freshchat/consumer/sdk/ui/CarouselCardView$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/g;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/g;->fragments:Ljava/util/List;

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/a/g;->lR:Lcom/freshchat/consumer/sdk/ui/CarouselCardView$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/a/g$a;I)V
    .locals 1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/a/g$a;->a(Lcom/freshchat/consumer/sdk/a/g$a;)Lcom/freshchat/consumer/sdk/ui/CarouselCardView;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/g;->fragments:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;

    invoke-virtual {p1, p2}, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->setData(Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;)V

    return-void
.end method

.method public c(Landroid/view/ViewGroup;I)Lcom/freshchat/consumer/sdk/a/g$a;
    .locals 1

    new-instance p1, Lcom/freshchat/consumer/sdk/a/g$a;

    new-instance p2, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/g;->context:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, p0, p2}, Lcom/freshchat/consumer/sdk/a/g$a;-><init>(Lcom/freshchat/consumer/sdk/a/g;Lcom/freshchat/consumer/sdk/ui/CarouselCardView;)V

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/a/g$a;->a(Lcom/freshchat/consumer/sdk/a/g$a;)Lcom/freshchat/consumer/sdk/ui/CarouselCardView;

    move-result-object p2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/g;->lR:Lcom/freshchat/consumer/sdk/ui/CarouselCardView$a;

    invoke-virtual {p2, v0}, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->setListener(Lcom/freshchat/consumer/sdk/ui/CarouselCardView$a;)V

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/g;->fragments:Ljava/util/List;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/a/g$a;

    invoke-virtual {p0, p1, p2}, Lcom/freshchat/consumer/sdk/a/g;->a(Lcom/freshchat/consumer/sdk/a/g$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/freshchat/consumer/sdk/a/g;->c(Landroid/view/ViewGroup;I)Lcom/freshchat/consumer/sdk/a/g$a;

    move-result-object p1

    return-object p1
.end method
