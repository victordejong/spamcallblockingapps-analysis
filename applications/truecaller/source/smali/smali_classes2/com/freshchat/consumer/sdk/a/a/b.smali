.class public Lcom/freshchat/consumer/sdk/a/a/b;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# instance fields
.field private final qV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/a/b;->qV:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/service/Status;Lcom/freshchat/consumer/sdk/f/e;)V
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/service/Status;->NO_INTERNET:Lcom/freshchat/consumer/sdk/service/Status;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/a/a/b;->qV:Landroid/widget/TextView;

    sget v0, Lcom/freshchat/consumer/sdk/R$string;->freshchat_pagination_no_internet_with_retry:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/a/a/b;->qV:Landroid/widget/TextView;

    sget v0, Lcom/freshchat/consumer/sdk/R$string;->freshchat_pagination_error_with_retry:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/a/a/b;->qV:Landroid/widget/TextView;

    new-instance v0, Lcom/freshchat/consumer/sdk/a/a/c;

    invoke-direct {v0, p0, p2}, Lcom/freshchat/consumer/sdk/a/a/c;-><init>(Lcom/freshchat/consumer/sdk/a/a/b;Lcom/freshchat/consumer/sdk/f/e;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
