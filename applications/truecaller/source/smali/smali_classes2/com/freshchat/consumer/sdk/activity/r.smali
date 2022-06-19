.class public Lcom/freshchat/consumer/sdk/activity/r;
.super Lcom/freshchat/consumer/sdk/j/cq;
.source "SourceFile"


# instance fields
.field public final synthetic cY:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;Landroidx/recyclerview/widget/RecyclerView$g;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/r;->cY:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;

    invoke-direct {p0, p2}, Lcom/freshchat/consumer/sdk/j/cq;-><init>(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void
.end method


# virtual methods
.method public ht()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/r;->cY:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;

    iget-object v0, v0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->q(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/r;->cY:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;

    iget-object v1, v1, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->d(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method
