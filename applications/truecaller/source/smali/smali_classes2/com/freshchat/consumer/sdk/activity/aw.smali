.class public Lcom/freshchat/consumer/sdk/activity/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic qn:Lcom/freshchat/consumer/sdk/activity/FAQListActivity;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/FAQListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/aw;->qn:Lcom/freshchat/consumer/sdk/activity/FAQListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/aw;->qn:Lcom/freshchat/consumer/sdk/activity/FAQListActivity;

    iget-object p1, p1, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast p1, Lcom/freshchat/consumer/sdk/k/v;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/k/n;->jg()V

    return-void
.end method
