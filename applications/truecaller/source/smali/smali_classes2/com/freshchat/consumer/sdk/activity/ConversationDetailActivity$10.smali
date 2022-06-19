.class public Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

.field public final synthetic jq:F


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;F)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$10;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    iput p2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$10;->jq:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$10;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_message_container:I

    invoke-virtual {v0, v1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$10;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->B(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$10;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->B(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    div-float/2addr v1, v0

    iget v3, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$10;->jq:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    :goto_0
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$10;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->B(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$10;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->C(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V

    return-void
.end method
