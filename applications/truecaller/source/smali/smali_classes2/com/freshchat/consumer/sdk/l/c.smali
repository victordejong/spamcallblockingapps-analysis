.class public Lcom/freshchat/consumer/sdk/l/c;
.super Lcom/freshchat/consumer/sdk/l/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/l/c$a;,
        Lcom/freshchat/consumer/sdk/l/c$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/l/b;-><init>()V

    return-void
.end method

.method private a(Lcom/freshchat/consumer/sdk/l/c$b;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/freshchat/consumer/sdk/l/i;

    invoke-direct {v0, p0, p1}, Lcom/freshchat/consumer/sdk/l/i;-><init>(Lcom/freshchat/consumer/sdk/l/c;Lcom/freshchat/consumer/sdk/l/c$b;)V

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/l/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/l/c;Lcom/freshchat/consumer/sdk/l/c$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/l/c;->a(Lcom/freshchat/consumer/sdk/l/c$b;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;JLcom/freshchat/consumer/sdk/l/c$b;)V
    .locals 7

    if-nez p4, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    invoke-direct {p0, p4}, Lcom/freshchat/consumer/sdk/l/c;->a(Lcom/freshchat/consumer/sdk/l/c$b;)V

    return-void

    :cond_1
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/be;->eC()Lcom/freshchat/consumer/sdk/j/be;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/j/be;->gx()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/freshchat/consumer/sdk/l/g;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p4

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/freshchat/consumer/sdk/l/g;-><init>(Lcom/freshchat/consumer/sdk/l/c;Ljava/lang/ref/WeakReference;Lcom/freshchat/consumer/sdk/l/c$b;J)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/freshchat/consumer/sdk/l/c$a;)V
    .locals 2

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/w;->ay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/al;->aS(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/freshchat/consumer/sdk/j/be;->eC()Lcom/freshchat/consumer/sdk/j/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/be;->gZ()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/freshchat/consumer/sdk/l/d;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/freshchat/consumer/sdk/l/d;-><init>(Lcom/freshchat/consumer/sdk/l/c;Landroid/content/Context;Ljava/lang/String;Lcom/freshchat/consumer/sdk/l/c$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    invoke-interface {p3}, Lcom/freshchat/consumer/sdk/l/c$a;->hU()V

    return-void
.end method
