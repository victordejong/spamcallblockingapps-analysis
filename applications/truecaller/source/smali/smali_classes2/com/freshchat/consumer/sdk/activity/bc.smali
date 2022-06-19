.class public Lcom/freshchat/consumer/sdk/activity/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic qL:Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/bc;->qL:Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/bc;->qL:Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->b(Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;Z)Z

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/bc;->qL:Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;

    iget-object p1, p1, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast p1, Lcom/freshchat/consumer/sdk/k/w;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/k/w;->jK()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/bc;->qL:Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->hV()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->bv(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
