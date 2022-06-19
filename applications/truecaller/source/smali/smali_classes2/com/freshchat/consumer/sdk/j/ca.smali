.class public Lcom/freshchat/consumer/sdk/j/ca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic iI:Landroid/content/Context;

.field public final synthetic mO:Lcom/freshchat/consumer/sdk/j/by;

.field public final synthetic mP:Z


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/j/by;ZLandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/ca;->mO:Lcom/freshchat/consumer/sdk/j/by;

    iput-boolean p2, p0, Lcom/freshchat/consumer/sdk/j/ca;->mP:Z

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/j/ca;->iI:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/j/ca;->mP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/ca;->mO:Lcom/freshchat/consumer/sdk/j/by;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/ca;->iI:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/by;->a(Lcom/freshchat/consumer/sdk/j/by;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/ca;->iI:Landroid/content/Context;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/b/e;->bj()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/ca;->mO:Lcom/freshchat/consumer/sdk/j/by;

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/j/ca;->iI:Landroid/content/Context;

    invoke-static {v2, v3, v1, v0}, Lcom/freshchat/consumer/sdk/j/by;->a(Lcom/freshchat/consumer/sdk/j/by;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/ca;->mO:Lcom/freshchat/consumer/sdk/j/by;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/ca;->iI:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/by;->a(Lcom/freshchat/consumer/sdk/j/by;Landroid/content/Context;Z)V

    return-void
.end method
