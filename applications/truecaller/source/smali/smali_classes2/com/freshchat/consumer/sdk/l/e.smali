.class public Lcom/freshchat/consumer/sdk/l/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic pA:Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;

.field public final synthetic pB:Lcom/freshchat/consumer/sdk/l/d;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/l/d;Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/l/e;->pB:Lcom/freshchat/consumer/sdk/l/d;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/l/e;->pA:Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/l/e;->pB:Lcom/freshchat/consumer/sdk/l/d;

    iget-object v0, v0, Lcom/freshchat/consumer/sdk/l/d;->py:Lcom/freshchat/consumer/sdk/l/c$a;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/l/e;->pA:Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;

    invoke-interface {v0, v1}, Lcom/freshchat/consumer/sdk/l/c$a;->a(Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;)V

    return-void
.end method
