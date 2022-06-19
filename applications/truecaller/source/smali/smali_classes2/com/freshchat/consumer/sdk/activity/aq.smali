.class public Lcom/freshchat/consumer/sdk/activity/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic pI:Lcom/freshchat/consumer/sdk/activity/FAQDetailsActivity;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/FAQDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/aq;->pI:Lcom/freshchat/consumer/sdk/activity/FAQDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/aq;->pI:Lcom/freshchat/consumer/sdk/activity/FAQDetailsActivity;

    iget-object p1, p1, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast p1, Lcom/freshchat/consumer/sdk/k/u;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/k/u;->jD()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/aq;->pI:Lcom/freshchat/consumer/sdk/activity/FAQDetailsActivity;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/b;->finish()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/aq;->pI:Lcom/freshchat/consumer/sdk/activity/FAQDetailsActivity;

    iget-object p1, p1, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast p1, Lcom/freshchat/consumer/sdk/k/u;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/k/n;->jg()V

    :goto_0
    return-void
.end method
