.class public Lcom/freshchat/consumer/sdk/activity/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

.field public final synthetic bm:Z


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/p;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    iput-boolean p2, p0, Lcom/freshchat/consumer/sdk/activity/p;->bm:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    check-cast p1, Ln3/b/a/g;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ln3/b/a/g;->d(I)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/p;->bm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method
