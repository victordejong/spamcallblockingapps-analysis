.class public final Lcom/freshchat/consumer/sdk/j/da;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic iI:Landroid/content/Context;

.field public final synthetic ny:Lcom/freshchat/consumer/sdk/j/bg$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/j/bg$b;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/da;->iI:Landroid/content/Context;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/j/da;->ny:Lcom/freshchat/consumer/sdk/j/bg$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/da;->iI:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "FRESHCHAT_WARNING"

    const-string v1, "context cannot be null while broadcasting event."

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/ai;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/da;->ny:Lcom/freshchat/consumer/sdk/j/bg$b;

    invoke-interface {v0}, Lcom/freshchat/consumer/sdk/j/bg$b;->gy()Lcom/freshchat/consumer/sdk/Event;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/da;->iI:Landroid/content/Context;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/bg;->a(Lcom/freshchat/consumer/sdk/Event;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/b/a;->a(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
