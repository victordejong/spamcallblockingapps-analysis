.class public final Lcom/freshchat/consumer/sdk/j/cn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic fk:J

.field public final synthetic iI:Landroid/content/Context;

.field public final synthetic os:Lcom/freshchat/consumer/sdk/beans/Message;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/beans/Message;Landroid/content/Context;J)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/cn;->os:Lcom/freshchat/consumer/sdk/beans/Message;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/j/cn;->iI:Landroid/content/Context;

    iput-wide p3, p0, Lcom/freshchat/consumer/sdk/j/cn;->fk:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/cn;->os:Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/cn;->iI:Landroid/content/Context;

    iget-wide v2, p0, Lcom/freshchat/consumer/sdk/j/cn;->fk:J

    invoke-static {v1, v0, v2, v3}, Lcom/freshchat/consumer/sdk/j/cm;->a(Landroid/content/Context;Ljava/util/List;J)V

    return-void
.end method
