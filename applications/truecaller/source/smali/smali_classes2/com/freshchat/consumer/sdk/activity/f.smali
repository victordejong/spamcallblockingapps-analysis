.class public Lcom/freshchat/consumer/sdk/activity/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/f;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_chat_resolution_positive_btn:I

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/f;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->c(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_chat_resolution_negative_btn:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/f;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
