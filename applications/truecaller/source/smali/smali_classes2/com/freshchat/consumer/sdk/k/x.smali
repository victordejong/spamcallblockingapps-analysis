.class public Lcom/freshchat/consumer/sdk/k/x;
.super Lcom/freshchat/consumer/sdk/i/d;
.source "SourceFile"


# instance fields
.field public final synthetic rD:Lcom/freshchat/consumer/sdk/k/w;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/k/w;J)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/x;->rD:Lcom/freshchat/consumer/sdk/k/w;

    invoke-direct {p0, p2, p3}, Lcom/freshchat/consumer/sdk/i/d;-><init>(J)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/x;->rD:Lcom/freshchat/consumer/sdk/k/w;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/k/w;->a(Lcom/freshchat/consumer/sdk/k/w;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/k/w;->bz(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/x;->rD:Lcom/freshchat/consumer/sdk/k/w;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/k/o;->jd()Lcom/freshchat/consumer/sdk/service/Status;

    return-void
.end method
