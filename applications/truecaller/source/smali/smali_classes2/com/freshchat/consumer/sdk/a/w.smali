.class public Lcom/freshchat/consumer/sdk/a/w;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/a/w$b;,
        Lcom/freshchat/consumer/sdk/a/w$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lcom/freshchat/consumer/sdk/a/w$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/fragment/StaticTemplateFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final jA:Lcom/freshchat/consumer/sdk/a/w$b;

.field private final jB:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/freshchat/consumer/sdk/a/w$b;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/fragment/StaticTemplateFragment;",
            ">;",
            "Lcom/freshchat/consumer/sdk/a/w$b;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/w;->fragments:Ljava/util/List;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/w;->jA:Lcom/freshchat/consumer/sdk/a/w$b;

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/a/w;->jB:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/a/w;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/a/w;->jB:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/freshchat/consumer/sdk/a/w;)Lcom/freshchat/consumer/sdk/a/w$b;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/a/w;->jA:Lcom/freshchat/consumer/sdk/a/w$b;

    return-object p0
.end method

.method private w(I)Lcom/freshchat/consumer/sdk/beans/fragment/StaticTemplateFragment;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/w;->fragments:Ljava/util/List;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/w;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/fragment/StaticTemplateFragment;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/freshchat/consumer/sdk/a/w$a;
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_list_item_bot_faq:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/freshchat/consumer/sdk/a/w$a;

    invoke-direct {p2, p1}, Lcom/freshchat/consumer/sdk/a/w$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public a(Lcom/freshchat/consumer/sdk/a/w$a;I)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/freshchat/consumer/sdk/a/w;->w(I)Lcom/freshchat/consumer/sdk/beans/fragment/StaticTemplateFragment;

    move-result-object v0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/w$a;->fg()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/fragment/StaticTemplateFragment;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v2, Lcom/freshchat/consumer/sdk/a/x;

    invoke-direct {v2, p0, v0}, Lcom/freshchat/consumer/sdk/a/x;-><init>(Lcom/freshchat/consumer/sdk/a/w;Lcom/freshchat/consumer/sdk/beans/fragment/StaticTemplateFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/w;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/w$a;->fh()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/w;->fragments:Ljava/util/List;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/a/w$a;

    invoke-virtual {p0, p1, p2}, Lcom/freshchat/consumer/sdk/a/w;->a(Lcom/freshchat/consumer/sdk/a/w$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/freshchat/consumer/sdk/a/w;->a(Landroid/view/ViewGroup;I)Lcom/freshchat/consumer/sdk/a/w$a;

    move-result-object p1

    return-object p1
.end method
