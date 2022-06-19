.class public final Ln3/e/b/e1;
.super Ln3/e/b/t0;
.source "SourceFile"


# instance fields
.field public final c:Ln3/e/b/u0;

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(Ln3/e/b/v0;Ln3/e/b/u0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ln3/e/b/t0;-><init>(Ln3/e/b/v0;)V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object p1, p0, Ln3/e/b/t0;->a:Ln3/e/b/v0;

    invoke-interface {p1}, Ln3/e/b/v0;->getWidth()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    .line 4
    iput p1, p0, Ln3/e/b/e1;->d:I

    .line 5
    monitor-enter p0

    .line 6
    :try_start_1
    iget-object p1, p0, Ln3/e/b/t0;->a:Ln3/e/b/v0;

    invoke-interface {p1}, Ln3/e/b/v0;->getHeight()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 7
    iput p1, p0, Ln3/e/b/e1;->e:I

    .line 8
    iput-object p2, p0, Ln3/e/b/e1;->c:Ln3/e/b/u0;

    return-void

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0

    throw p1

    :catchall_1
    move-exception p1

    .line 10
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized getHeight()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Ln3/e/b/e1;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWidth()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Ln3/e/b/e1;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public x0()Ln3/e/b/u0;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/b/e1;->c:Ln3/e/b/u0;

    return-object v0
.end method
