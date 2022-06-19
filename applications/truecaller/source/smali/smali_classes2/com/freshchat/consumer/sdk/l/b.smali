.class public abstract Lcom/freshchat/consumer/sdk/l/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/be;->eC()Lcom/freshchat/consumer/sdk/j/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/be;->gF()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
