.class public Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/freshchat/consumer/sdk/ui/CarouselCardView$a;


# instance fields
.field public final synthetic be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$12;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;)V
    .locals 10

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$12;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ao()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$12;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->e(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Lcom/freshchat/consumer/sdk/k/c;

    move-result-object v1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$12;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->a(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bj()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$12;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->b(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$12;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->c(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)J

    move-result-wide v6

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$12;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->e(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Lcom/freshchat/consumer/sdk/k/c;

    move-result-object v0

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$12;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->d(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/freshchat/consumer/sdk/k/h;->E(Ljava/util/List;)J

    move-result-wide v8

    move-object v3, p1

    invoke-virtual/range {v1 .. v9}, Lcom/freshchat/consumer/sdk/k/c;->a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;JJJ)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$12;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->a(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Lcom/freshchat/consumer/sdk/beans/Message;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$12;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/activity/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/bg;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;)V

    :cond_0
    return-void
.end method
