.class public Lcom/freshchat/consumer/sdk/activity/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic al:Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/j;->al:Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/j;->al:Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->a(Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->a(Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/be;->eC()Lcom/freshchat/consumer/sdk/j/be;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/j/be;->gF()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/freshchat/consumer/sdk/activity/k;

    invoke-direct {v2, p0, v0}, Lcom/freshchat/consumer/sdk/activity/k;-><init>(Lcom/freshchat/consumer/sdk/activity/j;Ljava/util/ArrayList;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
