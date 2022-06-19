.class public Lcom/freshchat/consumer/sdk/a/e;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/a/e$a;,
        Lcom/freshchat/consumer/sdk/a/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lcom/freshchat/consumer/sdk/a/e$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final cr:Landroid/view/LayoutInflater;

.field private final mX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final mY:Lcom/freshchat/consumer/sdk/a/e$a;

.field private final originalMessageId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/freshchat/consumer/sdk/a/e$a;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;",
            ">;",
            "Lcom/freshchat/consumer/sdk/a/e$a;",
            "J)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/e;->mX:Ljava/util/List;

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/a/e;->mY:Lcom/freshchat/consumer/sdk/a/e$a;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/e;->cr:Landroid/view/LayoutInflater;

    iput-wide p4, p0, Lcom/freshchat/consumer/sdk/a/e;->originalMessageId:J

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/e;->context:Landroid/content/Context;

    return-void
.end method

.method private F(I)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/e;->mX:Ljava/util/List;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/e;->mX:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    return-object p1
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/a/e;)J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/a/e;->originalMessageId:J

    return-wide v0
.end method

.method public static synthetic b(Lcom/freshchat/consumer/sdk/a/e;)Lcom/freshchat/consumer/sdk/a/e$a;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/a/e;->mY:Lcom/freshchat/consumer/sdk/a/e$a;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/a/e$b;I)V
    .locals 4

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/a/e$b;->a(Lcom/freshchat/consumer/sdk/a/e$b;)Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/freshchat/consumer/sdk/a/e;->F(I)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    move-result-object p2

    instance-of v1, p2, Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;

    new-instance v2, Lcom/freshchat/consumer/sdk/k/e;

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/a/e;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/freshchat/consumer/sdk/k/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/freshchat/consumer/sdk/k/e;->b(Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;)V

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/k/e;->jL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/a/e$b;->a(Lcom/freshchat/consumer/sdk/a/e$b;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Lcom/freshchat/consumer/sdk/a/f;

    invoke-direct {v0, p0, p2}, Lcom/freshchat/consumer/sdk/a/f;-><init>(Lcom/freshchat/consumer/sdk/a/e;Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/ViewGroup;I)Lcom/freshchat/consumer/sdk/a/e$b;
    .locals 2

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/a/e;->cr:Landroid/view/LayoutInflater;

    sget v0, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_listitem_dropdown:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/freshchat/consumer/sdk/a/e$b;

    invoke-direct {p2, p0, p1}, Lcom/freshchat/consumer/sdk/a/e$b;-><init>(Lcom/freshchat/consumer/sdk/a/e;Landroid/view/View;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/e;->mX:Ljava/util/List;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/a/e$b;

    invoke-virtual {p0, p1, p2}, Lcom/freshchat/consumer/sdk/a/e;->a(Lcom/freshchat/consumer/sdk/a/e$b;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/freshchat/consumer/sdk/a/e;->b(Landroid/view/ViewGroup;I)Lcom/freshchat/consumer/sdk/a/e$b;

    move-result-object p1

    return-object p1
.end method
