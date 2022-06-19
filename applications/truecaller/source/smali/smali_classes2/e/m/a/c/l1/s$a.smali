.class public final Le/m/a/c/l1/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/p1/c0$e;
.implements Le/m/a/c/l1/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/l1/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Le/m/a/c/p1/d0;

.field public final c:Le/m/a/c/l1/s$b;

.field public final d:Le/m/a/c/g1/i;

.field public final e:Le/m/a/c/q1/i;

.field public final f:Le/m/a/c/g1/p;

.field public volatile g:Z

.field public h:Z

.field public i:J

.field public j:Le/m/a/c/p1/n;

.field public k:J

.field public l:Le/m/a/c/g1/s;

.field public m:Z

.field public final synthetic n:Le/m/a/c/l1/s;


# direct methods
.method public constructor <init>(Le/m/a/c/l1/s;Landroid/net/Uri;Le/m/a/c/p1/l;Le/m/a/c/l1/s$b;Le/m/a/c/g1/i;Le/m/a/c/q1/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/c/l1/s$a;->n:Le/m/a/c/l1/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/m/a/c/l1/s$a;->a:Landroid/net/Uri;

    .line 3
    new-instance p1, Le/m/a/c/p1/d0;

    invoke-direct {p1, p3}, Le/m/a/c/p1/d0;-><init>(Le/m/a/c/p1/l;)V

    iput-object p1, p0, Le/m/a/c/l1/s$a;->b:Le/m/a/c/p1/d0;

    .line 4
    iput-object p4, p0, Le/m/a/c/l1/s$a;->c:Le/m/a/c/l1/s$b;

    .line 5
    iput-object p5, p0, Le/m/a/c/l1/s$a;->d:Le/m/a/c/g1/i;

    .line 6
    iput-object p6, p0, Le/m/a/c/l1/s$a;->e:Le/m/a/c/q1/i;

    .line 7
    new-instance p1, Le/m/a/c/g1/p;

    invoke-direct {p1}, Le/m/a/c/g1/p;-><init>()V

    iput-object p1, p0, Le/m/a/c/l1/s$a;->f:Le/m/a/c/g1/p;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Le/m/a/c/l1/s$a;->h:Z

    const-wide/16 p1, -0x1

    .line 9
    iput-wide p1, p0, Le/m/a/c/l1/s$a;->k:J

    const-wide/16 p1, 0x0

    .line 10
    invoke-virtual {p0, p1, p2}, Le/m/a/c/l1/s$a;->a(J)Le/m/a/c/p1/n;

    move-result-object p1

    iput-object p1, p0, Le/m/a/c/l1/s$a;->j:Le/m/a/c/p1/n;

    return-void
.end method


# virtual methods
.method public final a(J)Le/m/a/c/p1/n;
    .locals 15

    move-object v0, p0

    .line 1
    new-instance v14, Le/m/a/c/p1/n;

    iget-object v2, v0, Le/m/a/c/l1/s$a;->a:Landroid/net/Uri;

    iget-object v1, v0, Le/m/a/c/l1/s$a;->n:Le/m/a/c/l1/s;

    .line 2
    iget-object v11, v1, Le/m/a/c/l1/s;->h:Ljava/lang/String;

    const/4 v12, 0x6

    .line 3
    sget-object v13, Le/m/a/c/l1/s;->Q:Ljava/util/Map;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v9, -0x1

    move-object v1, v14

    move-wide/from16 v5, p1

    move-wide/from16 v7, p1

    .line 4
    invoke-direct/range {v1 .. v13}, Le/m/a/c/p1/n;-><init>(Landroid/net/Uri;I[BJJJLjava/lang/String;ILjava/util/Map;)V

    return-object v14
.end method

.method public b()V
    .locals 14
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
    if-nez v1, :cond_b

    .line 1
    iget-boolean v2, p0, Le/m/a/c/l1/s$a;->g:Z

    if-nez v2, :cond_b

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2
    :try_start_0
    iget-object v4, p0, Le/m/a/c/l1/s$a;->f:Le/m/a/c/g1/p;

    iget-wide v11, v4, Le/m/a/c/g1/p;->a:J

    .line 3
    invoke-virtual {p0, v11, v12}, Le/m/a/c/l1/s$a;->a(J)Le/m/a/c/p1/n;

    move-result-object v4

    iput-object v4, p0, Le/m/a/c/l1/s$a;->j:Le/m/a/c/p1/n;

    .line 4
    iget-object v5, p0, Le/m/a/c/l1/s$a;->b:Le/m/a/c/p1/d0;

    invoke-virtual {v5, v4}, Le/m/a/c/p1/d0;->b(Le/m/a/c/p1/n;)J

    move-result-wide v4

    iput-wide v4, p0, Le/m/a/c/l1/s$a;->k:J

    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_1

    add-long/2addr v4, v11

    .line 5
    iput-wide v4, p0, Le/m/a/c/l1/s$a;->k:J

    .line 6
    :cond_1
    iget-object v4, p0, Le/m/a/c/l1/s$a;->b:Le/m/a/c/p1/d0;

    invoke-virtual {v4}, Le/m/a/c/p1/d0;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 7
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v5, p0, Le/m/a/c/l1/s$a;->n:Le/m/a/c/l1/s;

    iget-object v6, p0, Le/m/a/c/l1/s$a;->b:Le/m/a/c/p1/d0;

    invoke-virtual {v6}, Le/m/a/c/p1/d0;->a()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->a(Ljava/util/Map;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v6

    .line 9
    iput-object v6, v5, Le/m/a/c/l1/s;->r:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    .line 10
    iget-object v5, p0, Le/m/a/c/l1/s$a;->b:Le/m/a/c/p1/d0;

    .line 11
    iget-object v6, p0, Le/m/a/c/l1/s$a;->n:Le/m/a/c/l1/s;

    .line 12
    iget-object v6, v6, Le/m/a/c/l1/s;->r:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    if-eqz v6, :cond_2

    .line 13
    iget v6, v6, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->f:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 14
    new-instance v7, Le/m/a/c/l1/n;

    invoke-direct {v7, v5, v6, p0}, Le/m/a/c/l1/n;-><init>(Le/m/a/c/p1/l;ILe/m/a/c/l1/n$a;)V

    .line 15
    iget-object v5, p0, Le/m/a/c/l1/s$a;->n:Le/m/a/c/l1/s;

    .line 16
    new-instance v6, Le/m/a/c/l1/s$f;

    invoke-direct {v6, v0, v3}, Le/m/a/c/l1/s$f;-><init>(IZ)V

    invoke-virtual {v5, v6}, Le/m/a/c/l1/s;->z(Le/m/a/c/l1/s$f;)Le/m/a/c/g1/s;

    move-result-object v5

    .line 17
    iput-object v5, p0, Le/m/a/c/l1/s$a;->l:Le/m/a/c/g1/s;

    .line 18
    sget-object v6, Le/m/a/c/l1/s;->R:Lcom/google/android/exoplayer2/Format;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 19
    check-cast v5, Le/m/a/c/l1/v;

    :try_start_1
    invoke-virtual {v5, v6}, Le/m/a/c/l1/v;->b(Lcom/google/android/exoplayer2/Format;)V

    move-object v6, v7

    goto :goto_1

    :cond_2
    move-object v6, v5

    .line 20
    :goto_1
    new-instance v13, Le/m/a/c/g1/e;

    iget-wide v9, p0, Le/m/a/c/l1/s$a;->k:J

    move-object v5, v13

    move-wide v7, v11

    invoke-direct/range {v5 .. v10}, Le/m/a/c/g1/e;-><init>(Le/m/a/c/p1/l;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 21
    :try_start_2
    iget-object v2, p0, Le/m/a/c/l1/s$a;->c:Le/m/a/c/l1/s$b;

    iget-object v5, p0, Le/m/a/c/l1/s$a;->d:Le/m/a/c/g1/i;

    invoke-virtual {v2, v13, v5, v4}, Le/m/a/c/l1/s$b;->a(Le/m/a/c/g1/e;Le/m/a/c/g1/i;Landroid/net/Uri;)Le/m/a/c/g1/h;

    move-result-object v2

    .line 22
    iget-object v4, p0, Le/m/a/c/l1/s$a;->n:Le/m/a/c/l1/s;

    .line 23
    iget-object v4, v4, Le/m/a/c/l1/s;->r:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    if-eqz v4, :cond_3

    .line 24
    instance-of v4, v2, Le/m/a/c/g1/b0/d;

    if-eqz v4, :cond_3

    .line 25
    move-object v4, v2

    check-cast v4, Le/m/a/c/g1/b0/d;

    .line 26
    iput-boolean v3, v4, Le/m/a/c/g1/b0/d;->l:Z

    .line 27
    :cond_3
    iget-boolean v4, p0, Le/m/a/c/l1/s$a;->h:Z

    if-eqz v4, :cond_4

    .line 28
    iget-wide v4, p0, Le/m/a/c/l1/s$a;->i:J

    invoke-interface {v2, v11, v12, v4, v5}, Le/m/a/c/g1/h;->a(JJ)V

    .line 29
    iput-boolean v0, p0, Le/m/a/c/l1/s$a;->h:Z

    :cond_4
    :goto_2
    if-nez v1, :cond_6

    .line 30
    iget-boolean v4, p0, Le/m/a/c/l1/s$a;->g:Z

    if-nez v4, :cond_6

    .line 31
    iget-object v4, p0, Le/m/a/c/l1/s$a;->e:Le/m/a/c/q1/i;

    .line 32
    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 33
    :goto_3
    :try_start_3
    iget-boolean v5, v4, Le/m/a/c/q1/i;->a:Z

    if-nez v5, :cond_5

    .line 34
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 35
    :cond_5
    :try_start_4
    monitor-exit v4

    .line 36
    iget-object v4, p0, Le/m/a/c/l1/s$a;->f:Le/m/a/c/g1/p;

    invoke-interface {v2, v13, v4}, Le/m/a/c/g1/h;->d(Le/m/a/c/g1/e;Le/m/a/c/g1/p;)I

    move-result v1

    .line 37
    iget-wide v4, v13, Le/m/a/c/g1/e;->d:J

    .line 38
    iget-object v6, p0, Le/m/a/c/l1/s$a;->n:Le/m/a/c/l1/s;

    .line 39
    iget-wide v6, v6, Le/m/a/c/l1/s;->i:J

    add-long/2addr v6, v11

    cmp-long v6, v4, v6

    if-lez v6, :cond_4

    .line 40
    iget-object v6, p0, Le/m/a/c/l1/s$a;->e:Le/m/a/c/q1/i;

    .line 41
    monitor-enter v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 42
    :try_start_5
    iput-boolean v0, v6, Le/m/a/c/q1/i;->a:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 43
    :try_start_6
    monitor-exit v6

    .line 44
    iget-object v6, p0, Le/m/a/c/l1/s$a;->n:Le/m/a/c/l1/s;

    .line 45
    iget-object v7, v6, Le/m/a/c/l1/s;->o:Landroid/os/Handler;

    .line 46
    iget-object v6, v6, Le/m/a/c/l1/s;->n:Ljava/lang/Runnable;

    .line 47
    invoke-virtual {v7, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-wide v11, v4

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 48
    monitor-exit v6

    throw v0

    :catchall_1
    move-exception v0

    .line 49
    monitor-exit v4

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_6
    if-ne v1, v3, :cond_7

    move v1, v0

    goto :goto_4

    .line 50
    :cond_7
    iget-object v2, p0, Le/m/a/c/l1/s$a;->f:Le/m/a/c/g1/p;

    .line 51
    iget-wide v3, v13, Le/m/a/c/g1/e;->d:J

    .line 52
    iput-wide v3, v2, Le/m/a/c/g1/p;->a:J

    .line 53
    :goto_4
    iget-object v2, p0, Le/m/a/c/l1/s$a;->b:Le/m/a/c/p1/d0;

    if-eqz v2, :cond_0

    .line 54
    :try_start_7
    iget-object v2, v2, Le/m/a/c/p1/d0;->a:Le/m/a/c/p1/l;

    invoke-interface {v2}, Le/m/a/c/p1/l;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move-object v2, v13

    goto :goto_5

    :catchall_3
    move-exception v0

    :goto_5
    if-ne v1, v3, :cond_8

    goto :goto_6

    :cond_8
    if-eqz v2, :cond_9

    .line 55
    iget-object v1, p0, Le/m/a/c/l1/s$a;->f:Le/m/a/c/g1/p;

    .line 56
    iget-wide v2, v2, Le/m/a/c/g1/e;->d:J

    .line 57
    iput-wide v2, v1, Le/m/a/c/g1/p;->a:J

    .line 58
    :cond_9
    :goto_6
    iget-object v1, p0, Le/m/a/c/l1/s$a;->b:Le/m/a/c/p1/d0;

    .line 59
    sget v2, Le/m/a/c/q1/d0;->a:I

    if-eqz v1, :cond_a

    .line 60
    :try_start_8
    iget-object v1, v1, Le/m/a/c/p1/d0;->a:Le/m/a/c/p1/l;

    invoke-interface {v1}, Le/m/a/c/p1/l;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 61
    :catch_1
    :cond_a
    throw v0

    :cond_b
    return-void
.end method
