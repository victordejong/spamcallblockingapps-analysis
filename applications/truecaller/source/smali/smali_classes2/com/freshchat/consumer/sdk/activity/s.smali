.class public Lcom/freshchat/consumer/sdk/activity/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic cZ:Landroid/net/Uri;

.field public final synthetic hl:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$7;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$7;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/s;->hl:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$7;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/activity/s;->cZ:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/s;->hl:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$7;

    iget-object p1, p1, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$7;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/a;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/s;->cZ:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/util/DeepLinkUtils;->b(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
