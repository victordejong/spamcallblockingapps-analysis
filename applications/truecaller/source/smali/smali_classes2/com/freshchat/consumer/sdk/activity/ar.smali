.class public Lcom/freshchat/consumer/sdk/activity/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic pI:Lcom/freshchat/consumer/sdk/activity/FAQDetailsActivity;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/FAQDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ar;->pI:Lcom/freshchat/consumer/sdk/activity/FAQDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ar;->pI:Lcom/freshchat/consumer/sdk/activity/FAQDetailsActivity;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/activity/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/al;->aS(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ar;->pI:Lcom/freshchat/consumer/sdk/activity/FAQDetailsActivity;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/a;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/freshchat/consumer/sdk/R$string;->freshchat_error_message_not_connected_to_internet:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_upvote:I

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/freshchat/consumer/sdk/service/e/am$a;->rl:Lcom/freshchat/consumer/sdk/service/e/am$a;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/freshchat/consumer/sdk/service/e/am$a;->rm:Lcom/freshchat/consumer/sdk/service/e/am$a;

    :goto_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ar;->pI:Lcom/freshchat/consumer/sdk/activity/FAQDetailsActivity;

    iget-object v0, v0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast v0, Lcom/freshchat/consumer/sdk/k/u;

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/k/u;->a(Lcom/freshchat/consumer/sdk/service/e/am$a;)V

    sget-object v0, Lcom/freshchat/consumer/sdk/service/e/am$a;->rl:Lcom/freshchat/consumer/sdk/service/e/am$a;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ar;->pI:Lcom/freshchat/consumer/sdk/activity/FAQDetailsActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/FAQDetailsActivity;->a(Lcom/freshchat/consumer/sdk/activity/FAQDetailsActivity;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ar;->pI:Lcom/freshchat/consumer/sdk/activity/FAQDetailsActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/FAQDetailsActivity;->b(Lcom/freshchat/consumer/sdk/activity/FAQDetailsActivity;)V

    :goto_1
    return-void
.end method
