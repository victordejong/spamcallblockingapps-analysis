.class public Le/a/b/a/b/e;
.super Ln3/v/y0;
.source "SourceFile"

# interfaces
.implements Ln3/n/i;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u000eJ\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0014"
    }
    d2 = {
        "Le/a/b/a/b/e;",
        "Ln3/v/y0;",
        "Ln3/n/i;",
        "Ln3/n/i$a;",
        "callback",
        "Ls1/s;",
        "addOnPropertyChangedCallback",
        "(Ln3/n/i$a;)V",
        "removeOnPropertyChangedCallback",
        "",
        "fieldId",
        "c",
        "(I)V",
        "onCleared",
        "()V",
        "Ln3/n/n;",
        "a",
        "Ln3/n/n;",
        "mCallbacks",
        "<init>",
        "bizmon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public transient a:Ln3/n/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/v/y0;-><init>()V

    return-void
.end method


# virtual methods
.method public addOnPropertyChangedCallback(Ln3/n/i$a;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Le/a/b/a/b/e;->a:Ln3/n/n;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ln3/n/n;

    invoke-direct {v0}, Ln3/n/n;-><init>()V

    iput-object v0, p0, Le/a/b/a/b/e;->a:Ln3/n/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    .line 5
    iget-object v0, p0, Le/a/b/a/b/e;->a:Ln3/n/n;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ln3/n/c;->a(Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit p0

    throw p1
.end method

.method public final c(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Le/a/b/a/b/e;->a:Ln3/n/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    monitor-exit p0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, p0, p1, v1}, Ln3/n/c;->c(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit p0

    throw p1
.end method

.method public onCleared()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln3/v/y0;->onCleared()V

    .line 2
    iget-object v0, p0, Le/a/b/a/b/e;->a:Ln3/n/n;

    if-eqz v0, :cond_2

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, v0, Ln3/n/c;->d:I

    if-nez v1, :cond_0

    .line 5
    iget-object v1, v0, Ln3/n/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 6
    :cond_0
    iget-object v1, v0, Ln3/n/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    iget-object v1, v0, Ln3/n/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 8
    invoke-virtual {v0, v1}, Ln3/n/c;->i(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 9
    :cond_1
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_2
    :goto_2
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Le/a/b/a/b/e;->a:Ln3/n/n;

    return-void
.end method

.method public removeOnPropertyChangedCallback(Ln3/n/i$a;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Le/a/b/a/b/e;->a:Ln3/n/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    monitor-exit p0

    .line 5
    invoke-virtual {v0, p1}, Ln3/n/c;->g(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit p0

    throw p1
.end method
