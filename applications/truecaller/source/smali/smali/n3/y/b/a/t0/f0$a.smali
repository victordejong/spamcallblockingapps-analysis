.class public final Ln3/y/b/a/t0/f0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/w0/a0$e;
.implements Ln3/y/b/a/t0/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/t0/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Ln3/y/b/a/w0/d0;

.field public final c:Ln3/y/b/a/t0/f0$b;

.field public final d:Ln3/y/b/a/q0/h;

.field public final e:Ln3/y/b/a/x0/c;

.field public final f:Ln3/y/b/a/q0/m;

.field public volatile g:Z

.field public h:Z

.field public i:J

.field public j:Ln3/y/b/a/w0/k;

.field public k:J

.field public l:Ln3/y/b/a/q0/p;

.field public m:Z

.field public final synthetic n:Ln3/y/b/a/t0/f0;


# direct methods
.method public constructor <init>(Ln3/y/b/a/t0/f0;Landroid/net/Uri;Ln3/y/b/a/w0/h;Ln3/y/b/a/t0/f0$b;Ln3/y/b/a/q0/h;Ln3/y/b/a/x0/c;)V
    .locals 8

    .line 1
    iput-object p1, p0, Ln3/y/b/a/t0/f0$a;->n:Ln3/y/b/a/t0/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ln3/y/b/a/t0/f0$a;->a:Landroid/net/Uri;

    .line 3
    new-instance v0, Ln3/y/b/a/w0/d0;

    invoke-direct {v0, p3}, Ln3/y/b/a/w0/d0;-><init>(Ln3/y/b/a/w0/h;)V

    iput-object v0, p0, Ln3/y/b/a/t0/f0$a;->b:Ln3/y/b/a/w0/d0;

    .line 4
    iput-object p4, p0, Ln3/y/b/a/t0/f0$a;->c:Ln3/y/b/a/t0/f0$b;

    .line 5
    iput-object p5, p0, Ln3/y/b/a/t0/f0$a;->d:Ln3/y/b/a/q0/h;

    .line 6
    iput-object p6, p0, Ln3/y/b/a/t0/f0$a;->e:Ln3/y/b/a/x0/c;

    .line 7
    new-instance p3, Ln3/y/b/a/q0/m;

    invoke-direct {p3}, Ln3/y/b/a/q0/m;-><init>()V

    iput-object p3, p0, Ln3/y/b/a/t0/f0$a;->f:Ln3/y/b/a/q0/m;

    const/4 p3, 0x1

    .line 8
    iput-boolean p3, p0, Ln3/y/b/a/t0/f0$a;->h:Z

    const-wide/16 p3, -0x1

    .line 9
    iput-wide p3, p0, Ln3/y/b/a/t0/f0$a;->k:J

    .line 10
    new-instance p3, Ln3/y/b/a/w0/k;

    .line 11
    iget-object v6, p1, Ln3/y/b/a/t0/f0;->h:Ljava/lang/String;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/16 v7, 0x16

    move-object v0, p3

    move-object v1, p2

    .line 12
    invoke-direct/range {v0 .. v7}, Ln3/y/b/a/w0/k;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 13
    iput-object p3, p0, Ln3/y/b/a/t0/f0$a;->j:Ln3/y/b/a/w0/k;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :catch_0
    :cond_0
    :goto_0
    if-nez v1, :cond_a

    .line 1
    iget-boolean v2, p0, Ln3/y/b/a/t0/f0$a;->g:Z

    if-nez v2, :cond_a

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2
    :try_start_0
    iget-object v4, p0, Ln3/y/b/a/t0/f0$a;->f:Ln3/y/b/a/q0/m;

    iget-wide v13, v4, Ln3/y/b/a/q0/m;->a:J

    .line 3
    new-instance v4, Ln3/y/b/a/w0/k;

    iget-object v6, p0, Ln3/y/b/a/t0/f0$a;->a:Landroid/net/Uri;

    iget-object v5, p0, Ln3/y/b/a/t0/f0$a;->n:Ln3/y/b/a/t0/f0;

    .line 4
    iget-object v11, v5, Ln3/y/b/a/t0/f0;->h:Ljava/lang/String;

    const/16 v12, 0x16

    const-wide/16 v9, -0x1

    move-object v5, v4

    move-wide v7, v13

    .line 5
    invoke-direct/range {v5 .. v12}, Ln3/y/b/a/w0/k;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 6
    iput-object v4, p0, Ln3/y/b/a/t0/f0$a;->j:Ln3/y/b/a/w0/k;

    .line 7
    iget-object v5, p0, Ln3/y/b/a/t0/f0$a;->b:Ln3/y/b/a/w0/d0;

    invoke-virtual {v5, v4}, Ln3/y/b/a/w0/d0;->b(Ln3/y/b/a/w0/k;)J

    move-result-wide v4

    iput-wide v4, p0, Ln3/y/b/a/t0/f0$a;->k:J

    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_1

    add-long/2addr v4, v13

    .line 8
    iput-wide v4, p0, Ln3/y/b/a/t0/f0$a;->k:J

    .line 9
    :cond_1
    iget-object v4, p0, Ln3/y/b/a/t0/f0$a;->b:Ln3/y/b/a/w0/d0;

    invoke-virtual {v4}, Ln3/y/b/a/w0/d0;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 10
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v5, p0, Ln3/y/b/a/t0/f0$a;->n:Ln3/y/b/a/t0/f0;

    iget-object v6, p0, Ln3/y/b/a/t0/f0$a;->b:Ln3/y/b/a/w0/d0;

    invoke-virtual {v6}, Ln3/y/b/a/w0/d0;->a()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->a(Ljava/util/Map;)Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    move-result-object v6

    .line 12
    iput-object v6, v5, Ln3/y/b/a/t0/f0;->r:Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    .line 13
    iget-object v5, p0, Ln3/y/b/a/t0/f0$a;->b:Ln3/y/b/a/w0/d0;

    .line 14
    iget-object v6, p0, Ln3/y/b/a/t0/f0$a;->n:Ln3/y/b/a/t0/f0;

    .line 15
    iget-object v6, v6, Ln3/y/b/a/t0/f0;->r:Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    if-eqz v6, :cond_2

    .line 16
    iget v6, v6, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->f:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 17
    new-instance v7, Ln3/y/b/a/t0/p;

    invoke-direct {v7, v5, v6, p0}, Ln3/y/b/a/t0/p;-><init>(Ln3/y/b/a/w0/h;ILn3/y/b/a/t0/p$a;)V

    .line 18
    iget-object v5, p0, Ln3/y/b/a/t0/f0$a;->n:Ln3/y/b/a/t0/f0;

    .line 19
    new-instance v6, Ln3/y/b/a/t0/f0$f;

    invoke-direct {v6, v0, v3}, Ln3/y/b/a/t0/f0$f;-><init>(IZ)V

    invoke-virtual {v5, v6}, Ln3/y/b/a/t0/f0;->z(Ln3/y/b/a/t0/f0$f;)Ln3/y/b/a/q0/p;

    move-result-object v5

    .line 20
    iput-object v5, p0, Ln3/y/b/a/t0/f0$a;->l:Ln3/y/b/a/q0/p;

    .line 21
    sget-object v6, Ln3/y/b/a/t0/f0;->Q:Landroidx/media2/exoplayer/external/Format;

    .line 22
    invoke-interface {v5, v6}, Ln3/y/b/a/q0/p;->c(Landroidx/media2/exoplayer/external/Format;)V

    move-object v6, v7

    goto :goto_1

    :cond_2
    move-object v6, v5

    .line 23
    :goto_1
    new-instance v11, Ln3/y/b/a/q0/d;

    iget-wide v9, p0, Ln3/y/b/a/t0/f0$a;->k:J

    move-object v5, v11

    move-wide v7, v13

    invoke-direct/range {v5 .. v10}, Ln3/y/b/a/q0/d;-><init>(Ln3/y/b/a/w0/h;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 24
    :try_start_1
    iget-object v2, p0, Ln3/y/b/a/t0/f0$a;->c:Ln3/y/b/a/t0/f0$b;

    iget-object v5, p0, Ln3/y/b/a/t0/f0$a;->d:Ln3/y/b/a/q0/h;

    invoke-virtual {v2, v11, v5, v4}, Ln3/y/b/a/t0/f0$b;->a(Ln3/y/b/a/q0/d;Ln3/y/b/a/q0/h;Landroid/net/Uri;)Ln3/y/b/a/q0/g;

    move-result-object v2

    .line 25
    iget-boolean v4, p0, Ln3/y/b/a/t0/f0$a;->h:Z

    if-eqz v4, :cond_3

    .line 26
    iget-wide v4, p0, Ln3/y/b/a/t0/f0$a;->i:J

    invoke-interface {v2, v13, v14, v4, v5}, Ln3/y/b/a/q0/g;->a(JJ)V

    .line 27
    iput-boolean v0, p0, Ln3/y/b/a/t0/f0$a;->h:Z

    :cond_3
    :goto_2
    if-nez v1, :cond_5

    .line 28
    iget-boolean v4, p0, Ln3/y/b/a/t0/f0$a;->g:Z

    if-nez v4, :cond_5

    .line 29
    iget-object v4, p0, Ln3/y/b/a/t0/f0$a;->e:Ln3/y/b/a/x0/c;

    .line 30
    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 31
    :goto_3
    :try_start_2
    iget-boolean v5, v4, Ln3/y/b/a/x0/c;->a:Z

    if-nez v5, :cond_4

    .line 32
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 33
    :cond_4
    :try_start_3
    monitor-exit v4

    .line 34
    iget-object v4, p0, Ln3/y/b/a/t0/f0$a;->f:Ln3/y/b/a/q0/m;

    invoke-interface {v2, v11, v4}, Ln3/y/b/a/q0/g;->i(Ln3/y/b/a/q0/d;Ln3/y/b/a/q0/m;)I

    move-result v1

    .line 35
    iget-wide v4, v11, Ln3/y/b/a/q0/d;->d:J

    .line 36
    iget-object v6, p0, Ln3/y/b/a/t0/f0$a;->n:Ln3/y/b/a/t0/f0;

    .line 37
    iget-wide v6, v6, Ln3/y/b/a/t0/f0;->i:J

    add-long/2addr v6, v13

    cmp-long v6, v4, v6

    if-lez v6, :cond_3

    .line 38
    iget-object v6, p0, Ln3/y/b/a/t0/f0$a;->e:Ln3/y/b/a/x0/c;

    .line 39
    monitor-enter v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 40
    :try_start_4
    iput-boolean v0, v6, Ln3/y/b/a/x0/c;->a:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 41
    :try_start_5
    monitor-exit v6

    .line 42
    iget-object v6, p0, Ln3/y/b/a/t0/f0$a;->n:Ln3/y/b/a/t0/f0;

    .line 43
    iget-object v7, v6, Ln3/y/b/a/t0/f0;->o:Landroid/os/Handler;

    .line 44
    iget-object v6, v6, Ln3/y/b/a/t0/f0;->n:Ljava/lang/Runnable;

    .line 45
    invoke-virtual {v7, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-wide v13, v4

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 46
    monitor-exit v6

    throw v0

    :catchall_1
    move-exception v0

    .line 47
    monitor-exit v4

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_5
    if-ne v1, v3, :cond_6

    move v1, v0

    goto :goto_4

    .line 48
    :cond_6
    iget-object v2, p0, Ln3/y/b/a/t0/f0$a;->f:Ln3/y/b/a/q0/m;

    .line 49
    iget-wide v3, v11, Ln3/y/b/a/q0/d;->d:J

    .line 50
    iput-wide v3, v2, Ln3/y/b/a/q0/m;->a:J

    .line 51
    :goto_4
    iget-object v2, p0, Ln3/y/b/a/t0/f0$a;->b:Ln3/y/b/a/w0/d0;

    if-eqz v2, :cond_0

    .line 52
    :try_start_6
    iget-object v2, v2, Ln3/y/b/a/w0/d0;->a:Ln3/y/b/a/w0/h;

    invoke-interface {v2}, Ln3/y/b/a/w0/h;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move-object v2, v11

    goto :goto_5

    :catchall_3
    move-exception v0

    :goto_5
    if-ne v1, v3, :cond_7

    goto :goto_6

    :cond_7
    if-eqz v2, :cond_8

    .line 53
    iget-object v1, p0, Ln3/y/b/a/t0/f0$a;->f:Ln3/y/b/a/q0/m;

    .line 54
    iget-wide v2, v2, Ln3/y/b/a/q0/d;->d:J

    .line 55
    iput-wide v2, v1, Ln3/y/b/a/q0/m;->a:J

    .line 56
    :cond_8
    :goto_6
    iget-object v1, p0, Ln3/y/b/a/t0/f0$a;->b:Ln3/y/b/a/w0/d0;

    .line 57
    sget v2, Ln3/y/b/a/x0/x;->a:I

    if-eqz v1, :cond_9

    .line 58
    :try_start_7
    iget-object v1, v1, Ln3/y/b/a/w0/d0;->a:Ln3/y/b/a/w0/h;

    invoke-interface {v1}, Ln3/y/b/a/w0/h;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 59
    :catch_1
    :cond_9
    throw v0

    :cond_a
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ln3/y/b/a/t0/f0$a;->g:Z

    return-void
.end method
