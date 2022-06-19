.class public Lcom/freshchat/consumer/sdk/m/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic pp:Lcom/freshchat/consumer/sdk/m/t;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/m/t;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/m/u;->pp:Lcom/freshchat/consumer/sdk/m/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/m/u;->pp:Lcom/freshchat/consumer/sdk/m/t;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/m/a;->hB()Lcom/freshchat/consumer/sdk/m/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/m/y;->hS()V

    :cond_0
    return-void
.end method
