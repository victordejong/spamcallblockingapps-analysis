.class public Lcom/freshchat/consumer/sdk/activity/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/freshchat/consumer/sdk/a/s$b;


# instance fields
.field public final synthetic qL:Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ba;->qL:Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;I)V
    .locals 1

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ba;->qL:Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;

    iget-object p1, p1, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast p1, Lcom/freshchat/consumer/sdk/k/w;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/freshchat/consumer/sdk/k/w;->C(Z)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ba;->qL:Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;

    invoke-virtual {p1, p2}, Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;->V(I)V

    return-void
.end method
