.class public Lcom/freshchat/consumer/sdk/l/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic pE:Lcom/freshchat/consumer/sdk/beans/Message;

.field public final synthetic pF:Lcom/freshchat/consumer/sdk/l/g;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/l/g;Lcom/freshchat/consumer/sdk/beans/Message;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/l/h;->pF:Lcom/freshchat/consumer/sdk/l/g;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/l/h;->pE:Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/l/h;->pF:Lcom/freshchat/consumer/sdk/l/g;

    iget-object v0, v0, Lcom/freshchat/consumer/sdk/l/g;->pD:Lcom/freshchat/consumer/sdk/l/c$b;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/l/h;->pE:Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-interface {v0, v1}, Lcom/freshchat/consumer/sdk/l/c$b;->o(Lcom/freshchat/consumer/sdk/beans/Message;)V

    return-void
.end method
