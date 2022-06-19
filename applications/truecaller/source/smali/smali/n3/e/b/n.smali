.class public final synthetic Ln3/e/b/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/j1/r0$a;


# instance fields
.field public final synthetic a:Ln3/e/b/z0;


# direct methods
.method public synthetic constructor <init>(Ln3/e/b/z0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/b/n;->a:Ln3/e/b/z0;

    return-void
.end method


# virtual methods
.method public final a(Ln3/e/b/j1/r0;)V
    .locals 7

    iget-object v0, p0, Ln3/e/b/n;->a:Ln3/e/b/z0;

    .line 1
    iget-object v1, v0, Ln3/e/b/z0;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2
    :try_start_0
    iget-boolean v2, v0, Ln3/e/b/z0;->d:Z

    if-eqz v2, :cond_0

    .line 3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :cond_1
    const/4 v3, 0x0

    .line 4
    :try_start_1
    invoke-interface {p1}, Ln3/e/b/j1/r0;->b()Ln3/e/b/v0;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 5
    :try_start_2
    iget-object v4, v0, Ln3/e/b/z0;->i:Landroid/util/LongSparseArray;

    invoke-interface {v3}, Ln3/e/b/v0;->x0()Ln3/e/b/u0;

    move-result-object v5

    invoke-interface {v5}, Ln3/e/b/u0;->e()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 6
    invoke-virtual {v0}, Ln3/e/b/z0;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_3
    const-string v5, "MetadataImageReader"

    const-string v6, "Failed to acquire next image."

    .line 7
    invoke-static {v5, v6, v4}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    .line 8
    :try_start_4
    invoke-interface {p1}, Ln3/e/b/j1/r0;->a()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 9
    :cond_3
    monitor-exit v1

    :goto_1
    return-void

    .line 10
    :goto_2
    throw p1

    :catchall_1
    move-exception p1

    .line 11
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method
