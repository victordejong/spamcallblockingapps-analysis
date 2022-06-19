.class public Lcom/freshchat/consumer/sdk/l/a;
.super Lcom/freshchat/consumer/sdk/l/b;
.source "SourceFile"


# static fields
.field private static volatile mV:Lcom/freshchat/consumer/sdk/l/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/l/b;-><init>()V

    return-void
.end method

.method public static declared-synchronized gR()Lcom/freshchat/consumer/sdk/l/a;
    .locals 2

    const-class v0, Lcom/freshchat/consumer/sdk/l/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/freshchat/consumer/sdk/l/a;->mV:Lcom/freshchat/consumer/sdk/l/a;

    if-nez v1, :cond_1

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lcom/freshchat/consumer/sdk/l/a;->mV:Lcom/freshchat/consumer/sdk/l/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/freshchat/consumer/sdk/l/a;

    invoke-direct {v1}, Lcom/freshchat/consumer/sdk/l/a;-><init>()V

    sput-object v1, Lcom/freshchat/consumer/sdk/l/a;->mV:Lcom/freshchat/consumer/sdk/l/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :cond_1
    :goto_0
    sget-object v1, Lcom/freshchat/consumer/sdk/l/a;->mV:Lcom/freshchat/consumer/sdk/l/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public bW(Landroid/content/Context;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/f/c;->a(Landroid/app/Application;)Lcom/freshchat/consumer/sdk/f/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/f/c;->cE()Z

    move-result p1

    return p1
.end method

.method public bX(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/f/c;->a(Landroid/app/Application;)Lcom/freshchat/consumer/sdk/f/c;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/freshchat/consumer/sdk/f/c;->m(Z)V

    return-void
.end method
