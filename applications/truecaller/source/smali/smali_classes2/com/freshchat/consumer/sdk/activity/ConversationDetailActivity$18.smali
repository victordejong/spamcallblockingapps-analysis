.class public Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/freshchat/consumer/sdk/service/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/freshchat/consumer/sdk/service/a<",
        "Lcom/freshchat/consumer/sdk/service/e/r;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$18;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/freshchat/consumer/sdk/service/e/k;)V
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/service/e/r;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$18;->a(Lcom/freshchat/consumer/sdk/service/e/r;)V

    return-void
.end method

.method public a(Lcom/freshchat/consumer/sdk/service/e/r;)V
    .locals 0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/r;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$18;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->g(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V

    :cond_0
    return-void
.end method
