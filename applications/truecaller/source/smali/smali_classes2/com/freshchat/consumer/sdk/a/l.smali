.class public Lcom/freshchat/consumer/sdk/a/l;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"

# interfaces
.implements Lcom/freshchat/consumer/sdk/ui/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/a/l$e;,
        Lcom/freshchat/consumer/sdk/a/l$d;,
        Lcom/freshchat/consumer/sdk/a/l$c;,
        Lcom/freshchat/consumer/sdk/a/l$a;,
        Lcom/freshchat/consumer/sdk/a/l$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;",
        "Lcom/freshchat/consumer/sdk/ui/f;"
    }
.end annotation


# instance fields
.field private final oC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/a/l$b;",
            ">;"
        }
    .end annotation
.end field

.field private final oD:I

.field private oE:I

.field private final ox:Lcom/freshchat/consumer/sdk/a/i$a;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/freshchat/consumer/sdk/a/i$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/a/l$b;",
            ">;",
            "Lcom/freshchat/consumer/sdk/a/i$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    sget v0, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_calendar_day_header:I

    iput v0, p0, Lcom/freshchat/consumer/sdk/a/l;->oD:I

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/l;->ox:Lcom/freshchat/consumer/sdk/a/i$a;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/l;->oC:Ljava/util/List;

    return-void
.end method

.method private L(I)Lcom/freshchat/consumer/sdk/a/l$b;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/l;->oC:Ljava/util/List;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/l;->oC:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/a/l$b;

    return-object p1
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/a/l;)I
    .locals 0

    iget p0, p0, Lcom/freshchat/consumer/sdk/a/l;->oE:I

    return p0
.end method

.method public static synthetic b(Lcom/freshchat/consumer/sdk/a/l;)Lcom/freshchat/consumer/sdk/a/i$a;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/a/l;->ox:Lcom/freshchat/consumer/sdk/a/i$a;

    return-object p0
.end method


# virtual methods
.method public K(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/a/l;->oE:I

    return-void
.end method

.method public M(I)I
    .locals 1

    :goto_0
    if-lez p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/a/l;->O(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public N(I)I
    .locals 0

    iget p1, p0, Lcom/freshchat/consumer/sdk/a/l;->oD:I

    return p1
.end method

.method public O(I)Z
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/l;->oC:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/a/l$b;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/l$b;->hx()I

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public c(Landroid/view/View;I)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/freshchat/consumer/sdk/a/l;->L(I)Lcom/freshchat/consumer/sdk/a/l$b;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/freshchat/consumer/sdk/k/m;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freshchat/consumer/sdk/k/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/freshchat/consumer/sdk/k/m;->a(Lcom/freshchat/consumer/sdk/a/l$b;)V

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/k/m;->ib()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/l;->oC:Ljava/util/List;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/l;->oC:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/a/l$b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/l$b;->hx()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 2

    :try_start_0
    invoke-direct {p0, p2}, Lcom/freshchat/consumer/sdk/a/l;->L(I)Lcom/freshchat/consumer/sdk/a/l$b;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/freshchat/consumer/sdk/k/m;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freshchat/consumer/sdk/k/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/freshchat/consumer/sdk/k/m;->a(Lcom/freshchat/consumer/sdk/a/l$b;)V

    instance-of p2, p1, Lcom/freshchat/consumer/sdk/a/l$d;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/freshchat/consumer/sdk/a/l$d;

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/a/l$d;->a(Lcom/freshchat/consumer/sdk/a/l$d;Lcom/freshchat/consumer/sdk/k/m;)V

    goto :goto_0

    :cond_1
    instance-of p2, p1, Lcom/freshchat/consumer/sdk/a/l$e;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/freshchat/consumer/sdk/a/l$e;

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/a/l$e;->a(Lcom/freshchat/consumer/sdk/a/l$e;Lcom/freshchat/consumer/sdk/k/m;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v2, p0, Lcom/freshchat/consumer/sdk/a/l;->oD:I

    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/freshchat/consumer/sdk/a/l$d;

    invoke-direct {p2, p0, p1, v0}, Lcom/freshchat/consumer/sdk/a/l$d;-><init>(Lcom/freshchat/consumer/sdk/a/l;Landroid/view/View;Lcom/freshchat/consumer/sdk/a/m;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v2, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_calendar_part_of_day_item:I

    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/freshchat/consumer/sdk/a/l$e;

    invoke-direct {p2, p0, p1, v0}, Lcom/freshchat/consumer/sdk/a/l$e;-><init>(Lcom/freshchat/consumer/sdk/a/l;Landroid/view/View;Lcom/freshchat/consumer/sdk/a/m;)V

    :goto_0
    return-object p2
.end method
