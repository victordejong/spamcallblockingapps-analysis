.class public Lcom/freshchat/consumer/sdk/activity/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

.field public final synthetic ju:I


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/h;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    iput p2, p0, Lcom/freshchat/consumer/sdk/activity/h;->ju:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/h;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->I(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/h;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->I(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/h;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->I(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/freshchat/consumer/sdk/activity/h;->ju:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_0
    return-void
.end method
