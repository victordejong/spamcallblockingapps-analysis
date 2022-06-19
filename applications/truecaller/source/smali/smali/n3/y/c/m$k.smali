.class public abstract Ln3/y/c/m$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/c/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "k"
.end annotation


# instance fields
.field public final a:I

.field public final b:Z

.field public c:Landroidx/media2/common/MediaItem;

.field public d:Z

.field public final synthetic e:Ln3/y/c/m;


# direct methods
.method public constructor <init>(Ln3/y/c/m;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/c/m$k;->e:Ln3/y/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Ln3/y/c/m$k;->a:I

    .line 3
    iput-boolean p3, p0, Ln3/y/c/m$k;->b:Z

    return-void
.end method


# virtual methods
.method public abstract a()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ln3/y/c/x0$c;
        }
    .end annotation
.end method

.method public b(I)V
    .locals 2

    .line 1
    iget v0, p0, Ln3/y/c/m$k;->a:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/y/c/m$k;->e:Ln3/y/c/m;

    new-instance v1, Ln3/y/c/m$k$a;

    invoke-direct {v1, p0, p1}, Ln3/y/c/m$k$a;-><init>(Ln3/y/c/m$k;I)V

    invoke-virtual {v0, v1}, Ln3/y/c/m;->h(Ln3/y/c/m$j;)V

    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    iget v0, p0, Ln3/y/c/m$k;->a:I

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Ln3/y/c/m$k;->e:Ln3/y/c/m;

    iget-object v0, v0, Ln3/y/c/m;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v4, p0, Ln3/y/c/m$k;->e:Ln3/y/c/m;

    iget-object v4, v4, Ln3/y/c/m;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/y/c/m$k;

    if-eqz v4, :cond_0

    .line 4
    iget v4, v4, Ln3/y/c/m$k;->a:I

    if-ne v4, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 5
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    move v1, v2

    :goto_1
    if-nez v1, :cond_3

    .line 6
    :try_start_1
    iget v0, p0, Ln3/y/c/m$k;->a:I

    const/16 v4, 0x3e8

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Ln3/y/c/m$k;->e:Ln3/y/c/m;

    iget-object v0, v0, Ln3/y/c/m;->a:Ln3/y/c/j0;

    .line 7
    invoke-virtual {v0}, Ln3/y/c/j0;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {p0}, Ln3/y/c/m$k;->a()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    const/high16 v2, -0x80000000

    goto :goto_3

    :catch_1
    const/4 v2, 0x4

    goto :goto_3

    :catch_2
    const/4 v2, 0x3

    goto :goto_3

    :catch_3
    const/4 v2, 0x2

    goto :goto_3

    :catch_4
    :goto_2
    move v2, v3

    goto :goto_3

    :cond_3
    const/4 v2, 0x5

    .line 9
    :goto_3
    iget-object v0, p0, Ln3/y/c/m$k;->e:Ln3/y/c/m;

    iget-object v0, v0, Ln3/y/c/m;->a:Ln3/y/c/j0;

    invoke-virtual {v0}, Ln3/y/c/j0;->a()Landroidx/media2/common/MediaItem;

    move-result-object v0

    iput-object v0, p0, Ln3/y/c/m$k;->c:Landroidx/media2/common/MediaItem;

    .line 10
    iget-boolean v0, p0, Ln3/y/c/m$k;->b:Z

    if-eqz v0, :cond_4

    if-nez v2, :cond_4

    if-eqz v1, :cond_5

    .line 11
    :cond_4
    invoke-virtual {p0, v2}, Ln3/y/c/m$k;->b(I)V

    .line 12
    iget-object v0, p0, Ln3/y/c/m$k;->e:Ln3/y/c/m;

    iget-object v0, v0, Ln3/y/c/m;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 13
    :try_start_2
    iget-object v1, p0, Ln3/y/c/m$k;->e:Ln3/y/c/m;

    const/4 v2, 0x0

    iput-object v2, v1, Ln3/y/c/m;->e:Ln3/y/c/m$k;

    .line 14
    invoke-virtual {v1}, Ln3/y/c/m;->l()V

    .line 15
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 16
    :cond_5
    monitor-enter p0

    .line 17
    :try_start_3
    iput-boolean v3, p0, Ln3/y/c/m$k;->d:Z

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 19
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    .line 20
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method
