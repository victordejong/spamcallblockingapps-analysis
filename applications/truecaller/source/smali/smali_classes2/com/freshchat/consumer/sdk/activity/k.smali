.class public Lcom/freshchat/consumer/sdk/activity/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic mu:Ljava/util/ArrayList;

.field public final synthetic mv:Lcom/freshchat/consumer/sdk/activity/j;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/j;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/k;->mv:Lcom/freshchat/consumer/sdk/activity/j;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/activity/k;->mu:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/k;->mv:Lcom/freshchat/consumer/sdk/activity/j;

    iget-object v0, v0, Lcom/freshchat/consumer/sdk/activity/j;->al:Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->c(Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;)Lcom/freshchat/consumer/sdk/j/v;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/k;->mu:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/j/v;->b(Ljava/util/ArrayList;)V

    return-void
.end method
