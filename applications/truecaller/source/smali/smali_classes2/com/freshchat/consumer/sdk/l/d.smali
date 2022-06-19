.class public Lcom/freshchat/consumer/sdk/l/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic iI:Landroid/content/Context;

.field public final synthetic px:Ljava/lang/String;

.field public final synthetic py:Lcom/freshchat/consumer/sdk/l/c$a;

.field public final synthetic pz:Lcom/freshchat/consumer/sdk/l/c;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/l/c;Landroid/content/Context;Ljava/lang/String;Lcom/freshchat/consumer/sdk/l/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/l/d;->pz:Lcom/freshchat/consumer/sdk/l/c;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/l/d;->iI:Landroid/content/Context;

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/l/d;->px:Ljava/lang/String;

    iput-object p4, p0, Lcom/freshchat/consumer/sdk/l/d;->py:Lcom/freshchat/consumer/sdk/l/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/freshchat/consumer/sdk/e/a;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/l/d;->iI:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/freshchat/consumer/sdk/e/a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/l/d;->px:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/e/a;->bp(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;

    move-result-object v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/j/ch;->a(Ljava/util/TimeZone;Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;->setProcessedCalendarDataMap(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/l/d;->pz:Lcom/freshchat/consumer/sdk/l/c;

    new-instance v2, Lcom/freshchat/consumer/sdk/l/e;

    invoke-direct {v2, p0, v0}, Lcom/freshchat/consumer/sdk/l/e;-><init>(Lcom/freshchat/consumer/sdk/l/d;Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;)V

    invoke-virtual {v1, v2}, Lcom/freshchat/consumer/sdk/l/b;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/l/d;->pz:Lcom/freshchat/consumer/sdk/l/c;

    new-instance v1, Lcom/freshchat/consumer/sdk/l/f;

    invoke-direct {v1, p0}, Lcom/freshchat/consumer/sdk/l/f;-><init>(Lcom/freshchat/consumer/sdk/l/d;)V

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/l/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method
