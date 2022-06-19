.class public Lcom/freshchat/consumer/sdk/activity/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$l;


# instance fields
.field public final synthetic qL:Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/bd;->qL:Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/bd;->qL:Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/activity/a;->dH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/bd;->qL:Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/activity/a;->onUserInteraction()V

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/bd;->qL:Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;

    iget-object v0, v0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast v0, Lcom/freshchat/consumer/sdk/k/w;

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/k/w;->bC(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/bd;->qL:Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->a(Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
