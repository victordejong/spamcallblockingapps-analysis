.class public Lcom/freshchat/consumer/sdk/l/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic pD:Lcom/freshchat/consumer/sdk/l/c$b;

.field public final synthetic pz:Lcom/freshchat/consumer/sdk/l/c;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/l/c;Lcom/freshchat/consumer/sdk/l/c$b;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/l/i;->pz:Lcom/freshchat/consumer/sdk/l/c;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/l/i;->pD:Lcom/freshchat/consumer/sdk/l/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/l/i;->pD:Lcom/freshchat/consumer/sdk/l/c$b;

    invoke-interface {v0}, Lcom/freshchat/consumer/sdk/l/c$b;->hu()V

    return-void
.end method
