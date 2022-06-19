.class public Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

.field public final synthetic nu:Lcom/freshchat/consumer/sdk/k/e;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Lcom/freshchat/consumer/sdk/k/e;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$8;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$8;->nu:Lcom/freshchat/consumer/sdk/k/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$8;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$8;->nu:Lcom/freshchat/consumer/sdk/k/e;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/k/e;->hb()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->a(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Ljava/lang/String;)V

    return-void
.end method
