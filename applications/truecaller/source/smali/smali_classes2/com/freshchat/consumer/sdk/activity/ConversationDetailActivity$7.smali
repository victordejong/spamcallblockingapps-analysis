.class public Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/freshchat/consumer/sdk/l/c$b;


# instance fields
.field public final synthetic be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$7;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hu()V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$7;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->A(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    return-void
.end method

.method public o(Lcom/freshchat/consumer/sdk/beans/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$7;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->e(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Lcom/freshchat/consumer/sdk/k/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/k/c;->z(Lcom/freshchat/consumer/sdk/beans/Message;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$7;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->e(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Lcom/freshchat/consumer/sdk/k/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/freshchat/consumer/sdk/k/c;->w(Lcom/freshchat/consumer/sdk/beans/Message;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$7;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->z(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$7;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->A(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/freshchat/consumer/sdk/activity/s;

    invoke-direct {v1, p0, p1}, Lcom/freshchat/consumer/sdk/activity/s;-><init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$7;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$7;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->A(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/i;->b(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$7;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->A(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    :goto_0
    return-void
.end method
