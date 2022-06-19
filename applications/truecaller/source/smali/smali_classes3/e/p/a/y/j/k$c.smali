.class public final Le/p/a/y/j/k$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/p/a/y/j/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Lv3/f;

.field public final b:Lv3/f;

.field public final c:J

.field public d:Z

.field public e:Z

.field public final synthetic f:Le/p/a/y/j/k;


# direct methods
.method public constructor <init>(Le/p/a/y/j/k;JLe/p/a/y/j/k$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/p/a/y/j/k$c;->f:Le/p/a/y/j/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lv3/f;

    invoke-direct {p1}, Lv3/f;-><init>()V

    iput-object p1, p0, Le/p/a/y/j/k$c;->a:Lv3/f;

    .line 3
    new-instance p1, Lv3/f;

    invoke-direct {p1}, Lv3/f;-><init>()V

    iput-object p1, p0, Le/p/a/y/j/k$c;->b:Lv3/f;

    .line 4
    iput-wide p2, p0, Le/p/a/y/j/k$c;->c:J

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/p/a/y/j/k$c;->d:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Le/p/a/y/j/k$c;->f:Le/p/a/y/j/k;

    .line 3
    iget-object v0, v0, Le/p/a/y/j/k;->k:Le/p/a/y/j/a;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream was reset: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Le/p/a/y/j/k$c;->f:Le/p/a/y/j/k;

    .line 5
    iget-object v2, v2, Le/p/a/y/j/k;->k:Le/p/a/y/j/a;

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/p/a/y/j/k$c;->f:Le/p/a/y/j/k;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Le/p/a/y/j/k$c;->d:Z

    .line 3
    iget-object v1, p0, Le/p/a/y/j/k$c;->b:Lv3/f;

    .line 4
    iget-wide v2, v1, Lv3/f;->b:J

    .line 5
    invoke-virtual {v1, v2, v3}, Lv3/f;->skip(J)V

    .line 6
    iget-object v1, p0, Le/p/a/y/j/k$c;->f:Le/p/a/y/j/k;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v0, p0, Le/p/a/y/j/k$c;->f:Le/p/a/y/j/k;

    invoke-static {v0}, Le/p/a/y/j/k;->a(Le/p/a/y/j/k;)V

    return-void

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final d()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/p/a/y/j/k$c;->f:Le/p/a/y/j/k;

    .line 2
    iget-object v0, v0, Le/p/a/y/j/k;->i:Le/p/a/y/j/k$d;

    .line 3
    invoke-virtual {v0}, Lv3/b;->h()V

    .line 4
    :goto_0
    :try_start_0
    iget-object v0, p0, Le/p/a/y/j/k$c;->b:Lv3/f;

    .line 5
    iget-wide v0, v0, Lv3/f;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 6
    iget-boolean v0, p0, Le/p/a/y/j/k$c;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Le/p/a/y/j/k$c;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Le/p/a/y/j/k$c;->f:Le/p/a/y/j/k;

    .line 7
    iget-object v1, v0, Le/p/a/y/j/k;->k:Le/p/a/y/j/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 8
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 9
    :catch_0
    :try_start_2
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :cond_0
    iget-object v0, p0, Le/p/a/y/j/k$c;->f:Le/p/a/y/j/k;

    .line 11
    iget-object v0, v0, Le/p/a/y/j/k;->i:Le/p/a/y/j/k$d;

    .line 12
    invoke-virtual {v0}, Le/p/a/y/j/k$d;->l()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Le/p/a/y/j/k$c;->f:Le/p/a/y/j/k;

    .line 13
    iget-object v1, v1, Le/p/a/y/j/k;->i:Le/p/a/y/j/k$d;

    .line 14
    invoke-virtual {v1}, Le/p/a/y/j/k$d;->l()V

    throw v0
.end method

.method public d2(Lv3/f;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3

    .line 1
    iget-object v2, p0, Le/p/a/y/j/k$c;->f:Le/p/a/y/j/k;

    monitor-enter v2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Le/p/a/y/j/k$c;->d()V

    .line 3
    invoke-virtual {p0}, Le/p/a/y/j/k$c;->b()V

    .line 4
    iget-object v3, p0, Le/p/a/y/j/k$c;->b:Lv3/f;

    .line 5
    iget-wide v4, v3, Lv3/f;->b:J

    cmp-long v6, v4, v0

    if-nez v6, :cond_0

    const-wide/16 p1, -0x1

    .line 6
    monitor-exit v2

    return-wide p1

    .line 7
    :cond_0
    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-virtual {v3, p1, p2, p3}, Lv3/f;->d2(Lv3/f;J)J

    move-result-wide p1

    .line 8
    iget-object p3, p0, Le/p/a/y/j/k$c;->f:Le/p/a/y/j/k;

    iget-wide v3, p3, Le/p/a/y/j/k;->a:J

    add-long/2addr v3, p1

    iput-wide v3, p3, Le/p/a/y/j/k;->a:J

    .line 9
    iget-object p3, p3, Le/p/a/y/j/k;->d:Le/p/a/y/j/d;

    .line 10
    iget-object p3, p3, Le/p/a/y/j/d;->m:Le/p/a/y/j/t;

    const/high16 v5, 0x10000

    invoke-virtual {p3, v5}, Le/p/a/y/j/t;->b(I)I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-long v6, p3

    cmp-long p3, v3, v6

    if-ltz p3, :cond_1

    .line 11
    iget-object p3, p0, Le/p/a/y/j/k$c;->f:Le/p/a/y/j/k;

    .line 12
    iget-object v3, p3, Le/p/a/y/j/k;->d:Le/p/a/y/j/d;

    .line 13
    iget v4, p3, Le/p/a/y/j/k;->c:I

    .line 14
    iget-wide v6, p3, Le/p/a/y/j/k;->a:J

    invoke-virtual {v3, v4, v6, v7}, Le/p/a/y/j/d;->I(IJ)V

    .line 15
    iget-object p3, p0, Le/p/a/y/j/k$c;->f:Le/p/a/y/j/k;

    iput-wide v0, p3, Le/p/a/y/j/k;->a:J

    .line 16
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    iget-object p3, p0, Le/p/a/y/j/k$c;->f:Le/p/a/y/j/k;

    .line 18
    iget-object p3, p3, Le/p/a/y/j/k;->d:Le/p/a/y/j/d;

    .line 19
    monitor-enter p3

    .line 20
    :try_start_1
    iget-object v2, p0, Le/p/a/y/j/k$c;->f:Le/p/a/y/j/k;

    .line 21
    iget-object v2, v2, Le/p/a/y/j/k;->d:Le/p/a/y/j/d;

    .line 22
    iget-wide v3, v2, Le/p/a/y/j/d;->k:J

    add-long/2addr v3, p1

    iput-wide v3, v2, Le/p/a/y/j/d;->k:J

    .line 23
    iget-object v2, v2, Le/p/a/y/j/d;->m:Le/p/a/y/j/t;

    invoke-virtual {v2, v5}, Le/p/a/y/j/t;->b(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-long v5, v2

    cmp-long v2, v3, v5

    if-ltz v2, :cond_2

    .line 24
    iget-object v2, p0, Le/p/a/y/j/k$c;->f:Le/p/a/y/j/k;

    .line 25
    iget-object v2, v2, Le/p/a/y/j/k;->d:Le/p/a/y/j/d;

    const/4 v3, 0x0

    .line 26
    iget-wide v4, v2, Le/p/a/y/j/d;->k:J

    invoke-virtual {v2, v3, v4, v5}, Le/p/a/y/j/d;->I(IJ)V

    .line 27
    iget-object v2, p0, Le/p/a/y/j/k$c;->f:Le/p/a/y/j/k;

    .line 28
    iget-object v2, v2, Le/p/a/y/j/k;->d:Le/p/a/y/j/d;

    .line 29
    iput-wide v0, v2, Le/p/a/y/j/d;->k:J

    .line 30
    :cond_2
    monitor-exit p3

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 31
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 32
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteCount < 0: "

    invoke-static {v0, p2, p3}, Le/d/c/a/a;->p2(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i()Lv3/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Le/p/a/y/j/k$c;->f:Le/p/a/y/j/k;

    .line 2
    iget-object v0, v0, Le/p/a/y/j/k;->i:Le/p/a/y/j/k$d;

    return-object v0
.end method
