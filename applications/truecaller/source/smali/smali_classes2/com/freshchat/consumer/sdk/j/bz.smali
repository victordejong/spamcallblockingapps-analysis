.class public Lcom/freshchat/consumer/sdk/j/bz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic iI:Landroid/content/Context;

.field public final synthetic mM:Ljava/lang/String;

.field public final synthetic mN:Ljava/util/Map;

.field public final synthetic mO:Lcom/freshchat/consumer/sdk/j/by;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/j/by;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/bz;->mO:Lcom/freshchat/consumer/sdk/j/by;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/j/bz;->iI:Landroid/content/Context;

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/j/bz;->mM:Ljava/lang/String;

    iput-object p4, p0, Lcom/freshchat/consumer/sdk/j/bz;->mN:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/bz;->mO:Lcom/freshchat/consumer/sdk/j/by;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/bz;->iI:Landroid/content/Context;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/bz;->mM:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/by;->a(Lcom/freshchat/consumer/sdk/j/by;Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/bz;->mO:Lcom/freshchat/consumer/sdk/j/by;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/bz;->iI:Landroid/content/Context;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/bz;->mN:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/by;->a(Lcom/freshchat/consumer/sdk/j/by;Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/n;->fP()J

    move-result-wide v1

    new-instance v3, Lcom/freshchat/consumer/sdk/beans/UserEvent;

    iget-object v4, p0, Lcom/freshchat/consumer/sdk/j/bz;->mM:Ljava/lang/String;

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/freshchat/consumer/sdk/beans/UserEvent;-><init>(Ljava/lang/String;Ljava/util/Map;J)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/bz;->mO:Lcom/freshchat/consumer/sdk/j/by;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/by;->a(Lcom/freshchat/consumer/sdk/j/by;)Lcom/freshchat/consumer/sdk/j/by$a;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/bz;->iI:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/freshchat/consumer/sdk/j/by$a;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/UserEvent;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/bz;->mO:Lcom/freshchat/consumer/sdk/j/by;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/bz;->iI:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/j/by;->bQ(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/bz;->mO:Lcom/freshchat/consumer/sdk/j/by;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/bz;->iI:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/by;->a(Lcom/freshchat/consumer/sdk/j/by;Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
