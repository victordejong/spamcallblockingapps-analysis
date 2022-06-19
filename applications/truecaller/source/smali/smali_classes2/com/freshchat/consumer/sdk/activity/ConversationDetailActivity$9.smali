.class public Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

.field public final synthetic jp:Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$9;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$9;->jp:Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$9;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->e(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Lcom/freshchat/consumer/sdk/k/c;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$9;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->d(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$9;->jp:Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    check-cast v1, Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;

    invoke-virtual {p1, v0, v1}, Lcom/freshchat/consumer/sdk/k/c;->a(Ljava/util/List;Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$9;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$9;->jp:Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    check-cast v0, Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->a(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$9;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->a(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Lcom/freshchat/consumer/sdk/beans/Message;)V

    return-void
.end method
