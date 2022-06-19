.class public final Le/m/a/h/a/g/t0;
.super Le/m/a/h/a/e/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/a/h/a/e/c<",
        "Le/m/a/h/a/g/d;",
        ">;"
    }
.end annotation


# static fields
.field public static j:Le/m/a/h/a/g/t0;


# instance fields
.field public final g:Landroid/os/Handler;

.field public final h:Le/m/a/h/a/g/e0;

.field public final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/m/a/h/a/g/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/m/a/h/a/g/e0;)V
    .locals 3

    new-instance v0, Le/m/a/h/a/d/g;

    const-string v1, "SplitInstallListenerRegistry"

    .line 1
    invoke-direct {v0, v1}, Le/m/a/h/a/d/g;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.google.android.play.core.splitinstall.receiver.SplitInstallUpdateIntentService"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, p1}, Le/m/a/h/a/e/c;-><init>(Le/m/a/h/a/d/g;Landroid/content/IntentFilter;Landroid/content/Context;)V

    new-instance p1, Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Le/m/a/h/a/g/t0;->g:Landroid/os/Handler;

    new-instance p1, Ljava/util/LinkedHashSet;

    .line 3
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/g/t0;->i:Ljava/util/Set;

    iput-object p2, p0, Le/m/a/h/a/g/t0;->h:Le/m/a/h/a/g/e0;

    return-void
.end method

.method public static declared-synchronized d(Landroid/content/Context;)Le/m/a/h/a/g/t0;
    .locals 3

    const-class v0, Le/m/a/h/a/g/t0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Le/m/a/h/a/g/t0;->j:Le/m/a/h/a/g/t0;

    if-nez v1, :cond_0

    new-instance v1, Le/m/a/h/a/g/t0;

    .line 1
    sget-object v2, Le/m/a/h/a/g/l0;->a:Le/m/a/h/a/g/l0;

    invoke-direct {v1, p0, v2}, Le/m/a/h/a/g/t0;-><init>(Landroid/content/Context;Le/m/a/h/a/g/e0;)V

    sput-object v1, Le/m/a/h/a/g/t0;->j:Le/m/a/h/a/g/t0;

    :cond_0
    sget-object p0, Le/m/a/h/a/g/t0;->j:Le/m/a/h/a/g/t0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "session_state"

    .line 1
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0}, Le/m/a/h/a/g/d;->m(Landroid/os/Bundle;)Le/m/a/h/a/g/d;

    move-result-object v0

    iget-object v1, p0, Le/m/a/h/a/e/c;->a:Le/m/a/h/a/d/g;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "ListenerRegistryBroadcastReceiver.onReceive: %s"

    .line 3
    invoke-virtual {v1, v3, v2}, Le/m/a/h/a/d/g;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Le/m/a/h/a/g/t0;->h:Le/m/a/h/a/g/e0;

    .line 4
    check-cast v1, Le/m/a/h/a/g/l0;

    invoke-virtual {v1}, Le/m/a/h/a/g/l0;->a()Le/m/a/h/a/g/f0;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Le/m/a/h/a/g/h;

    .line 5
    iget v3, v2, Le/m/a/h/a/g/h;->b:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    if-eqz v1, :cond_1

    .line 6
    iget-object v2, v2, Le/m/a/h/a/g/h;->i:Ljava/util/List;

    .line 7
    new-instance v3, Le/m/a/h/a/g/r0;

    .line 8
    invoke-direct {v3, p0, v0, p2, p1}, Le/m/a/h/a/g/r0;-><init>(Le/m/a/h/a/g/t0;Le/m/a/h/a/g/d;Landroid/content/Intent;Landroid/content/Context;)V

    .line 9
    invoke-interface {v1, v2, v3}, Le/m/a/h/a/g/f0;->a(Ljava/util/List;Le/m/a/h/a/g/d0;)V

    return-void

    .line 10
    :cond_1
    invoke-virtual {p0, v0}, Le/m/a/h/a/g/t0;->e(Le/m/a/h/a/g/d;)V

    return-void
.end method

.method public final declared-synchronized e(Le/m/a/h/a/g/d;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Le/m/a/h/a/g/t0;->i:Ljava/util/Set;

    .line 1
    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/h/a/g/e;

    .line 2
    invoke-interface {v1, p1}, Le/m/a/h/a/e/a;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Le/m/a/h/a/e/c;->c(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
