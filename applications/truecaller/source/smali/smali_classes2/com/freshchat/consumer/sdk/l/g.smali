.class public Lcom/freshchat/consumer/sdk/l/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic fk:J

.field public final synthetic pC:Ljava/lang/ref/WeakReference;

.field public final synthetic pD:Lcom/freshchat/consumer/sdk/l/c$b;

.field public final synthetic pz:Lcom/freshchat/consumer/sdk/l/c;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/l/c;Ljava/lang/ref/WeakReference;Lcom/freshchat/consumer/sdk/l/c$b;J)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/l/g;->pz:Lcom/freshchat/consumer/sdk/l/c;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/l/g;->pC:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/l/g;->pD:Lcom/freshchat/consumer/sdk/l/c$b;

    iput-wide p4, p0, Lcom/freshchat/consumer/sdk/l/g;->fk:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/l/g;->pC:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/l/g;->pz:Lcom/freshchat/consumer/sdk/l/c;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/l/g;->pD:Lcom/freshchat/consumer/sdk/l/c$b;

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/l/c;->a(Lcom/freshchat/consumer/sdk/l/c;Lcom/freshchat/consumer/sdk/l/c$b;)V

    return-void

    :cond_0
    new-instance v1, Lcom/freshchat/consumer/sdk/c/g;

    invoke-direct {v1, v0}, Lcom/freshchat/consumer/sdk/c/g;-><init>(Landroid/content/Context;)V

    iget-wide v2, p0, Lcom/freshchat/consumer/sdk/l/g;->fk:J

    invoke-virtual {v1, v2, v3}, Lcom/freshchat/consumer/sdk/c/g;->B(J)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/l/g;->pz:Lcom/freshchat/consumer/sdk/l/c;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/l/g;->pD:Lcom/freshchat/consumer/sdk/l/c$b;

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/l/c;->a(Lcom/freshchat/consumer/sdk/l/c;Lcom/freshchat/consumer/sdk/l/c$b;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/l/g;->pz:Lcom/freshchat/consumer/sdk/l/c;

    new-instance v2, Lcom/freshchat/consumer/sdk/l/h;

    invoke-direct {v2, p0, v0}, Lcom/freshchat/consumer/sdk/l/h;-><init>(Lcom/freshchat/consumer/sdk/l/g;Lcom/freshchat/consumer/sdk/beans/Message;)V

    invoke-virtual {v1, v2}, Lcom/freshchat/consumer/sdk/l/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method
