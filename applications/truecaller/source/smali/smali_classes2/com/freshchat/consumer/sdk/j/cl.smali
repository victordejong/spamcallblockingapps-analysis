.class public final Lcom/freshchat/consumer/sdk/j/cl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic os:Lcom/freshchat/consumer/sdk/beans/Message;

.field public final synthetic pQ:Lcom/freshchat/consumer/sdk/j/cj$a;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/j/cj$a;Lcom/freshchat/consumer/sdk/beans/Message;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/cl;->pQ:Lcom/freshchat/consumer/sdk/j/cj$a;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/j/cl;->os:Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/j/cl;->pQ:Lcom/freshchat/consumer/sdk/j/cj$a;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/cl;->os:Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-interface {p1, v0}, Lcom/freshchat/consumer/sdk/j/cj$a;->q(Lcom/freshchat/consumer/sdk/beans/Message;)V

    :cond_0
    return-void
.end method
