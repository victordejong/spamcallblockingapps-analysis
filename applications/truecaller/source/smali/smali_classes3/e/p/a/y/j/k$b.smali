.class public final Le/p/a/y/j/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/p/a/y/j/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:Lv3/f;

.field public b:Z

.field public c:Z

.field public final synthetic d:Le/p/a/y/j/k;


# direct methods
.method public constructor <init>(Le/p/a/y/j/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/p/a/y/j/k$b;->d:Le/p/a/y/j/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lv3/f;

    invoke-direct {p1}, Lv3/f;-><init>()V

    iput-object p1, p0, Le/p/a/y/j/k$b;->a:Lv3/f;

    return-void
.end method


# virtual methods
.method public final b(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/p/a/y/j/k$b;->d:Le/p/a/y/j/k;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/p/a/y/j/k$b;->d:Le/p/a/y/j/k;

    .line 3
    iget-object v1, v1, Le/p/a/y/j/k;->j:Le/p/a/y/j/k$d;

    .line 4
    invoke-virtual {v1}, Lv3/b;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    :goto_0
    :try_start_1
    iget-object v1, p0, Le/p/a/y/j/k$b;->d:Le/p/a/y/j/k;

    iget-wide v2, v1, Le/p/a/y/j/k;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    iget-boolean v2, p0, Le/p/a/y/j/k$b;->c:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Le/p/a/y/j/k$b;->b:Z

    if-nez v2, :cond_0

    .line 6
    iget-object v2, v1, Le/p/a/y/j/k;->k:Le/p/a/y/j/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_0

    .line 7
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 8
    :catch_0
    :try_start_3
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 9
    :cond_0
    :try_start_4
    iget-object v1, v1, Le/p/a/y/j/k;->j:Le/p/a/y/j/k$d;

    .line 10
    invoke-virtual {v1}, Le/p/a/y/j/k$d;->l()V

    .line 11
    iget-object v1, p0, Le/p/a/y/j/k$b;->d:Le/p/a/y/j/k;

    invoke-static {v1}, Le/p/a/y/j/k;->b(Le/p/a/y/j/k;)V

    .line 12
    iget-object v1, p0, Le/p/a/y/j/k$b;->d:Le/p/a/y/j/k;

    iget-wide v1, v1, Le/p/a/y/j/k;->b:J

    iget-object v3, p0, Le/p/a/y/j/k$b;->a:Lv3/f;

    .line 13
    iget-wide v3, v3, Lv3/f;->b:J

    .line 14
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 15
    iget-object v1, p0, Le/p/a/y/j/k$b;->d:Le/p/a/y/j/k;

    iget-wide v2, v1, Le/p/a/y/j/k;->b:J

    sub-long/2addr v2, v9

    iput-wide v2, v1, Le/p/a/y/j/k;->b:J

    .line 16
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 17
    iget-object v0, v1, Le/p/a/y/j/k;->j:Le/p/a/y/j/k$d;

    .line 18
    invoke-virtual {v0}, Lv3/b;->h()V

    .line 19
    :try_start_5
    iget-object v0, p0, Le/p/a/y/j/k$b;->d:Le/p/a/y/j/k;

    .line 20
    iget-object v5, v0, Le/p/a/y/j/k;->d:Le/p/a/y/j/d;

    .line 21
    iget v6, v0, Le/p/a/y/j/k;->c:I

    if-eqz p1, :cond_1

    .line 22
    iget-object p1, p0, Le/p/a/y/j/k$b;->a:Lv3/f;

    .line 23
    iget-wide v0, p1, Lv3/f;->b:J

    cmp-long p1, v9, v0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    move v7, p1

    .line 24
    iget-object v8, p0, Le/p/a/y/j/k$b;->a:Lv3/f;

    invoke-virtual/range {v5 .. v10}, Le/p/a/y/j/d;->s(IZLv3/f;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 25
    iget-object p1, p0, Le/p/a/y/j/k$b;->d:Le/p/a/y/j/k;

    .line 26
    iget-object p1, p1, Le/p/a/y/j/k;->j:Le/p/a/y/j/k$d;

    .line 27
    invoke-virtual {p1}, Le/p/a/y/j/k$d;->l()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Le/p/a/y/j/k$b;->d:Le/p/a/y/j/k;

    .line 28
    iget-object v0, v0, Le/p/a/y/j/k;->j:Le/p/a/y/j/k$d;

    .line 29
    invoke-virtual {v0}, Le/p/a/y/j/k$d;->l()V

    throw p1

    :catchall_1
    move-exception p1

    .line 30
    :try_start_6
    iget-object v1, p0, Le/p/a/y/j/k$b;->d:Le/p/a/y/j/k;

    .line 31
    iget-object v1, v1, Le/p/a/y/j/k;->j:Le/p/a/y/j/k$d;

    .line 32
    invoke-virtual {v1}, Le/p/a/y/j/k$d;->l()V

    throw p1

    :catchall_2
    move-exception p1

    .line 33
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1
.end method

.method public close()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/p/a/y/j/k$b;->d:Le/p/a/y/j/k;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Le/p/a/y/j/k$b;->b:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 3
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    iget-object v0, p0, Le/p/a/y/j/k$b;->d:Le/p/a/y/j/k;

    iget-object v1, v0, Le/p/a/y/j/k;->h:Le/p/a/y/j/k$b;

    iget-boolean v1, v1, Le/p/a/y/j/k$b;->c:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 5
    iget-object v1, p0, Le/p/a/y/j/k$b;->a:Lv3/f;

    .line 6
    iget-wide v3, v1, Lv3/f;->b:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    .line 7
    :goto_0
    iget-object v0, p0, Le/p/a/y/j/k$b;->a:Lv3/f;

    .line 8
    iget-wide v0, v0, Lv3/f;->b:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_2

    .line 9
    invoke-virtual {p0, v2}, Le/p/a/y/j/k$b;->b(Z)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v7, v0, Le/p/a/y/j/k;->d:Le/p/a/y/j/d;

    .line 11
    iget v8, v0, Le/p/a/y/j/k;->c:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    .line 12
    invoke-virtual/range {v7 .. v12}, Le/p/a/y/j/d;->s(IZLv3/f;J)V

    .line 13
    :cond_2
    iget-object v1, p0, Le/p/a/y/j/k$b;->d:Le/p/a/y/j/k;

    monitor-enter v1

    .line 14
    :try_start_1
    iput-boolean v2, p0, Le/p/a/y/j/k$b;->b:Z

    .line 15
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    iget-object v0, p0, Le/p/a/y/j/k$b;->d:Le/p/a/y/j/k;

    .line 17
    iget-object v0, v0, Le/p/a/y/j/k;->d:Le/p/a/y/j/d;

    .line 18
    iget-object v0, v0, Le/p/a/y/j/d;->r:Le/p/a/y/j/c;

    invoke-interface {v0}, Le/p/a/y/j/c;->flush()V

    .line 19
    iget-object v0, p0, Le/p/a/y/j/k$b;->d:Le/p/a/y/j/k;

    invoke-static {v0}, Le/p/a/y/j/k;->a(Le/p/a/y/j/k;)V

    return-void

    :catchall_0
    move-exception v0

    .line 20
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 21
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/p/a/y/j/k$b;->d:Le/p/a/y/j/k;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/p/a/y/j/k$b;->d:Le/p/a/y/j/k;

    invoke-static {v1}, Le/p/a/y/j/k;->b(Le/p/a/y/j/k;)V

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    iget-object v0, p0, Le/p/a/y/j/k$b;->a:Lv3/f;

    .line 5
    iget-wide v0, v0, Lv3/f;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Le/p/a/y/j/k$b;->b(Z)V

    .line 7
    iget-object v0, p0, Le/p/a/y/j/k$b;->d:Le/p/a/y/j/k;

    .line 8
    iget-object v0, v0, Le/p/a/y/j/k;->d:Le/p/a/y/j/d;

    .line 9
    invoke-virtual {v0}, Le/p/a/y/j/d;->flush()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public h1(Lv3/f;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/p/a/y/j/k$b;->a:Lv3/f;

    invoke-virtual {v0, p1, p2, p3}, Lv3/f;->h1(Lv3/f;J)V

    .line 2
    :goto_0
    iget-object p1, p0, Le/p/a/y/j/k$b;->a:Lv3/f;

    .line 3
    iget-wide p1, p1, Lv3/f;->b:J

    const-wide/16 v0, 0x4000

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Le/p/a/y/j/k$b;->b(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public i()Lv3/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Le/p/a/y/j/k$b;->d:Le/p/a/y/j/k;

    .line 2
    iget-object v0, v0, Le/p/a/y/j/k;->j:Le/p/a/y/j/k$d;

    return-object v0
.end method
