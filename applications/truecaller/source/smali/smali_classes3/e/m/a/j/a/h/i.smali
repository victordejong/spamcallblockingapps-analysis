.class public final Le/m/a/j/a/h/i;
.super Le/m/a/j/a/h/k;
.source "SourceFile"

# interfaces
.implements Le/m/a/j/a/h/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/a/j/a/h/k<",
        "Le/m/a/j/a/h/g;",
        ">;",
        "Le/m/a/j/a/h/c;"
    }
.end annotation


# instance fields
.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/m/a/j/a/h/m$a;Le/m/a/j/a/h/m$b;)V
    .locals 0

    invoke-direct {p0, p1, p5, p6}, Le/m/a/j/a/h/k;-><init>(Landroid/content/Context;Le/m/a/j/a/h/m$a;Le/m/a/j/a/h/m$b;)V

    const-string p1, "null reference"

    .line 1
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p2, p0, Le/m/a/j/a/h/i;->k:Ljava/lang/String;

    const-string p1, "callingPackage cannot be null or empty"

    invoke-static {p3, p1}, Ln3/g0/y;->i(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iput-object p3, p0, Le/m/a/j/a/h/i;->l:Ljava/lang/String;

    const-string p1, "callingAppVersion cannot be null or empty"

    invoke-static {p4, p1}, Ln3/g0/y;->i(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iput-object p4, p0, Le/m/a/j/a/h/i;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/IBinder;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/m/a/j/a/h/k;->f()Z

    move-result v0

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v0, p0, Le/m/a/j/a/h/i;->n:Z

    if-nez v0, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {p0}, Le/m/a/j/a/h/k;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Le/m/a/j/a/h/k;->c:Landroid/os/IInterface;

    .line 5
    check-cast v0, Le/m/a/j/a/h/g;

    invoke-interface {v0}, Le/m/a/j/a/h/g;->a()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection client has been released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Z)V
    .locals 1

    invoke-virtual {p0}, Le/m/a/j/a/h/k;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    :try_start_0
    invoke-virtual {p0}, Le/m/a/j/a/h/k;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Le/m/a/j/a/h/k;->c:Landroid/os/IInterface;

    .line 12
    check-cast v0, Le/m/a/j/a/h/g;

    invoke-interface {v0, p1}, Le/m/a/j/a/h/g;->a(Z)V

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Le/m/a/j/a/h/i;->n:Z

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 5

    iget-boolean v0, p0, Le/m/a/j/a/h/i;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Le/m/a/j/a/h/i;->a(Z)V

    .line 1
    :cond_0
    invoke-virtual {p0}, Le/m/a/j/a/h/k;->h()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/m/a/j/a/h/k;->j:Z

    iget-object v1, p0, Le/m/a/j/a/h/k;->h:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Le/m/a/j/a/h/k;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Le/m/a/j/a/h/k;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/a/j/a/h/k$c;

    .line 2
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    :try_start_1
    iput-object v4, v3, Le/m/a/j/a/h/k$c;->a:Ljava/lang/Object;

    monitor-exit v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 3
    :cond_1
    iget-object v0, p0, Le/m/a/j/a/h/k;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p0}, Le/m/a/j/a/h/k;->b()V

    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
