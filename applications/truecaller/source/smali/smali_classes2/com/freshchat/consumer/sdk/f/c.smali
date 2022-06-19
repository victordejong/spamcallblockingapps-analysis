.class public Lcom/freshchat/consumer/sdk/f/c;
.super Lcom/freshchat/consumer/sdk/j/cc;
.source "SourceFile"


# static fields
.field private static mR:Lcom/freshchat/consumer/sdk/f/c;


# instance fields
.field private mS:Z

.field private mT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mU:Z


# direct methods
.method private constructor <init>(Landroid/app/Application;)V
    .locals 1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/cc;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/f/c;->mT:Ljava/util/Set;

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/app/Application;)Lcom/freshchat/consumer/sdk/f/c;
    .locals 3

    const-class v0, Lcom/freshchat/consumer/sdk/f/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/freshchat/consumer/sdk/f/c;->mR:Lcom/freshchat/consumer/sdk/f/c;

    if-nez v1, :cond_0

    const-class v1, Lcom/freshchat/consumer/sdk/f/c;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Lcom/freshchat/consumer/sdk/f/c;

    invoke-direct {v2, p0}, Lcom/freshchat/consumer/sdk/f/c;-><init>(Landroid/app/Application;)V

    sput-object v2, Lcom/freshchat/consumer/sdk/f/c;->mR:Lcom/freshchat/consumer/sdk/f/c;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_0
    :goto_0
    sget-object p0, Lcom/freshchat/consumer/sdk/f/c;->mR:Lcom/freshchat/consumer/sdk/f/c;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private c(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/f/c;->mT:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/f/c;->mS:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/f/c;->mU:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/e/f;->bV(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/freshchat/consumer/sdk/f/c;->mU:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public cE()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/f/c;->mS:Z

    return v0
.end method

.method public m(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " FreshchatInitApiDeferred called - is init Deferred : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStateListener"

    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/f/c;->mU:Z

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/f/c;->mT:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/f/c;->c(Landroid/app/Activity;)V

    const-string v0, "onActivityStarted for activity : "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isForegound : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/f/c;->cE()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppStateListener"

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/f/c;->mT:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/f/c;->c(Landroid/app/Activity;)V

    const-string v0, "onActivityStopped for activity : "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isForegound : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/f/c;->cE()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppStateListener"

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
