.class public Lcom/freshchat/consumer/sdk/k/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/freshchat/consumer/sdk/l/c$a;


# instance fields
.field public final synthetic rw:Lcom/freshchat/consumer/sdk/service/c;

.field public final synthetic rx:Lcom/freshchat/consumer/sdk/k/r;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/k/r;Lcom/freshchat/consumer/sdk/service/c;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/s;->rx:Lcom/freshchat/consumer/sdk/k/r;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/k/s;->rw:Lcom/freshchat/consumer/sdk/service/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/s;->rx:Lcom/freshchat/consumer/sdk/k/r;

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/k/r;->a(Lcom/freshchat/consumer/sdk/k/r;Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;)Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/k/s;->rx:Lcom/freshchat/consumer/sdk/k/r;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/k/r;->a(Lcom/freshchat/consumer/sdk/k/r;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/k/r;->a(Lcom/freshchat/consumer/sdk/k/r;Ljava/util/List;)Ljava/util/List;

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/k/s;->rx:Lcom/freshchat/consumer/sdk/k/r;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/s;->rw:Lcom/freshchat/consumer/sdk/service/c;

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/k/r;->a(Lcom/freshchat/consumer/sdk/k/r;Lcom/freshchat/consumer/sdk/service/c;)V

    return-void
.end method

.method public hU()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/s;->rx:Lcom/freshchat/consumer/sdk/k/r;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/s;->rw:Lcom/freshchat/consumer/sdk/service/c;

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/k/r;->b(Lcom/freshchat/consumer/sdk/k/r;Lcom/freshchat/consumer/sdk/service/c;)V

    return-void
.end method
