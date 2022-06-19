.class public Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/freshchat/consumer/sdk/a/e$a;


# instance fields
.field public final synthetic be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$5;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;J)V
    .locals 10

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$5;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ao()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$5;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->e(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Lcom/freshchat/consumer/sdk/k/c;

    move-result-object v1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$5;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->a(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bj()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$5;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->b(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$5;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->c(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)J

    move-result-wide v6

    move-object v3, p1

    move-wide v8, p2

    invoke-virtual/range {v1 .. v9}, Lcom/freshchat/consumer/sdk/k/c;->a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;JJJ)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p3, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$5;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p3, p2}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->a(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Lcom/freshchat/consumer/sdk/beans/Message;)V

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$5;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/activity/a;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/freshchat/consumer/sdk/j/bg;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;)V

    :cond_0
    return-void
.end method
