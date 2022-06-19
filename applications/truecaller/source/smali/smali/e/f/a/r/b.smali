.class public final Le/f/a/r/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/r/e;
.implements Le/f/a/r/d;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Le/f/a/r/e;

.field public volatile c:Le/f/a/r/d;

.field public volatile d:Le/f/a/r/d;

.field public e:Le/f/a/r/e$a;

.field public f:Le/f/a/r/e$a;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Le/f/a/r/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Le/f/a/r/e$a;->d:Le/f/a/r/e$a;

    iput-object v0, p0, Le/f/a/r/b;->e:Le/f/a/r/e$a;

    .line 3
    iput-object v0, p0, Le/f/a/r/b;->f:Le/f/a/r/e$a;

    .line 4
    iput-object p1, p0, Le/f/a/r/b;->a:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Le/f/a/r/b;->b:Le/f/a/r/e;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/f/a/r/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/f/a/r/b;->b:Le/f/a/r/e;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Le/f/a/r/e;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_2

    .line 3
    invoke-virtual {p0}, Le/f/a/r/b;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :cond_2
    :goto_1
    monitor-exit v0

    return v2

    .line 4
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :catchall_0
    move-exception v1

    goto :goto_2
.end method

.method public b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/f/a/r/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/f/a/r/b;->e:Le/f/a/r/e$a;

    sget-object v2, Le/f/a/r/e$a;->d:Le/f/a/r/e$a;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Le/f/a/r/b;->f:Le/f/a/r/e$a;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c(Le/f/a/r/d;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Le/f/a/r/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Le/f/a/r/b;

    .line 3
    iget-object v0, p0, Le/f/a/r/b;->c:Le/f/a/r/d;

    iget-object v2, p1, Le/f/a/r/b;->c:Le/f/a/r/d;

    invoke-interface {v0, v2}, Le/f/a/r/d;->c(Le/f/a/r/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/f/a/r/b;->d:Le/f/a/r/d;

    iget-object p1, p1, Le/f/a/r/b;->d:Le/f/a/r/d;

    invoke-interface {v0, p1}, Le/f/a/r/d;->c(Le/f/a/r/d;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public clear()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/f/a/r/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Le/f/a/r/e$a;->d:Le/f/a/r/e$a;

    iput-object v1, p0, Le/f/a/r/b;->e:Le/f/a/r/e$a;

    .line 3
    iget-object v2, p0, Le/f/a/r/b;->c:Le/f/a/r/d;

    invoke-interface {v2}, Le/f/a/r/d;->clear()V

    .line 4
    iget-object v2, p0, Le/f/a/r/b;->f:Le/f/a/r/e$a;

    if-eq v2, v1, :cond_0

    .line 5
    iput-object v1, p0, Le/f/a/r/b;->f:Le/f/a/r/e$a;

    .line 6
    iget-object v1, p0, Le/f/a/r/b;->d:Le/f/a/r/d;

    invoke-interface {v1}, Le/f/a/r/d;->clear()V

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d(Le/f/a/r/d;)V
    .locals 3

    .line 1
    sget-object v0, Le/f/a/r/e$a;->e:Le/f/a/r/e$a;

    iget-object v1, p0, Le/f/a/r/b;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2
    :try_start_0
    iget-object v2, p0, Le/f/a/r/b;->c:Le/f/a/r/d;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iput-object v0, p0, Le/f/a/r/b;->e:Le/f/a/r/e$a;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Le/f/a/r/b;->d:Le/f/a/r/d;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iput-object v0, p0, Le/f/a/r/b;->f:Le/f/a/r/e$a;

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Le/f/a/r/b;->b:Le/f/a/r/e;

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1, p0}, Le/f/a/r/e;->d(Le/f/a/r/d;)V

    .line 8
    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(Le/f/a/r/d;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/f/a/r/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/f/a/r/b;->b:Le/f/a/r/e;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1, p0}, Le/f/a/r/e;->e(Le/f/a/r/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p0, p1}, Le/f/a/r/b;->j(Le/f/a/r/d;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v2, v3

    :cond_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f(Le/f/a/r/d;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/f/a/r/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/f/a/r/b;->b:Le/f/a/r/e;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1, p0}, Le/f/a/r/e;->f(Le/f/a/r/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p0, p1}, Le/f/a/r/b;->j(Le/f/a/r/d;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v2, v3

    :cond_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public g(Le/f/a/r/d;)V
    .locals 3

    .line 1
    sget-object v0, Le/f/a/r/e$a;->f:Le/f/a/r/e$a;

    iget-object v1, p0, Le/f/a/r/b;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2
    :try_start_0
    iget-object v2, p0, Le/f/a/r/b;->d:Le/f/a/r/d;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iput-object v0, p0, Le/f/a/r/b;->e:Le/f/a/r/e$a;

    .line 4
    iget-object p1, p0, Le/f/a/r/b;->f:Le/f/a/r/e$a;

    sget-object v0, Le/f/a/r/e$a;->b:Le/f/a/r/e$a;

    if-eq p1, v0, :cond_0

    .line 5
    iput-object v0, p0, Le/f/a/r/b;->f:Le/f/a/r/e$a;

    .line 6
    iget-object p1, p0, Le/f/a/r/b;->d:Le/f/a/r/d;

    invoke-interface {p1}, Le/f/a/r/d;->h()V

    .line 7
    :cond_0
    monitor-exit v1

    return-void

    .line 8
    :cond_1
    iput-object v0, p0, Le/f/a/r/b;->f:Le/f/a/r/e$a;

    .line 9
    iget-object p1, p0, Le/f/a/r/b;->b:Le/f/a/r/e;

    if-eqz p1, :cond_2

    .line 10
    invoke-interface {p1, p0}, Le/f/a/r/e;->g(Le/f/a/r/d;)V

    .line 11
    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public h()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/f/a/r/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/f/a/r/b;->e:Le/f/a/r/e$a;

    sget-object v2, Le/f/a/r/e$a;->b:Le/f/a/r/e$a;

    if-eq v1, v2, :cond_0

    .line 3
    iput-object v2, p0, Le/f/a/r/b;->e:Le/f/a/r/e$a;

    .line 4
    iget-object v1, p0, Le/f/a/r/b;->c:Le/f/a/r/d;

    invoke-interface {v1}, Le/f/a/r/d;->h()V

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public i(Le/f/a/r/d;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/f/a/r/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/f/a/r/b;->b:Le/f/a/r/e;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1, p0}, Le/f/a/r/e;->i(Le/f/a/r/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p0, p1}, Le/f/a/r/b;->j(Le/f/a/r/d;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v2, v3

    :cond_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isComplete()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/f/a/r/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/f/a/r/b;->e:Le/f/a/r/e$a;

    sget-object v2, Le/f/a/r/e$a;->e:Le/f/a/r/e$a;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Le/f/a/r/b;->f:Le/f/a/r/e$a;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isRunning()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/f/a/r/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/f/a/r/b;->e:Le/f/a/r/e$a;

    sget-object v2, Le/f/a/r/e$a;->b:Le/f/a/r/e$a;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Le/f/a/r/b;->f:Le/f/a/r/e$a;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final j(Le/f/a/r/d;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/f/a/r/b;->c:Le/f/a/r/d;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/f/a/r/b;->e:Le/f/a/r/e$a;

    sget-object v1, Le/f/a/r/e$a;->f:Le/f/a/r/e$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/f/a/r/b;->d:Le/f/a/r/d;

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public pause()V
    .locals 4

    .line 1
    sget-object v0, Le/f/a/r/e$a;->c:Le/f/a/r/e$a;

    iget-object v1, p0, Le/f/a/r/b;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2
    :try_start_0
    iget-object v2, p0, Le/f/a/r/b;->e:Le/f/a/r/e$a;

    sget-object v3, Le/f/a/r/e$a;->b:Le/f/a/r/e$a;

    if-ne v2, v3, :cond_0

    .line 3
    iput-object v0, p0, Le/f/a/r/b;->e:Le/f/a/r/e$a;

    .line 4
    iget-object v2, p0, Le/f/a/r/b;->c:Le/f/a/r/d;

    invoke-interface {v2}, Le/f/a/r/d;->pause()V

    .line 5
    :cond_0
    iget-object v2, p0, Le/f/a/r/b;->f:Le/f/a/r/e$a;

    if-ne v2, v3, :cond_1

    .line 6
    iput-object v0, p0, Le/f/a/r/b;->f:Le/f/a/r/e$a;

    .line 7
    iget-object v0, p0, Le/f/a/r/b;->d:Le/f/a/r/d;

    invoke-interface {v0}, Le/f/a/r/d;->pause()V

    .line 8
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
