.class public Lcom/freshchat/consumer/sdk/l/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic pB:Lcom/freshchat/consumer/sdk/l/d;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/l/d;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/l/f;->pB:Lcom/freshchat/consumer/sdk/l/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/l/f;->pB:Lcom/freshchat/consumer/sdk/l/d;

    iget-object v0, v0, Lcom/freshchat/consumer/sdk/l/d;->py:Lcom/freshchat/consumer/sdk/l/c$a;

    invoke-interface {v0}, Lcom/freshchat/consumer/sdk/l/c$a;->hU()V

    return-void
.end method
