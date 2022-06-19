.class public Lcom/freshchat/consumer/sdk/activity/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/freshchat/consumer/sdk/j/cj$a;


# instance fields
.field public final synthetic be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/u;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public p(Lcom/freshchat/consumer/sdk/beans/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/u;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->e(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Lcom/freshchat/consumer/sdk/k/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/k/c;->A(Lcom/freshchat/consumer/sdk/beans/Message;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/u;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->b(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Lcom/freshchat/consumer/sdk/beans/Message;)V

    return-void
.end method

.method public q(Lcom/freshchat/consumer/sdk/beans/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/u;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->e(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Lcom/freshchat/consumer/sdk/k/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/k/c;->x(Lcom/freshchat/consumer/sdk/beans/Message;)Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/u;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->a(Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;)V

    return-void
.end method
