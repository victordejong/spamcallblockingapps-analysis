.class public final Lu3/p0/j/o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu3/p0/j/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:Lv3/f;

.field public final b:Lv3/f;

.field public c:Z

.field public final d:J

.field public e:Z

.field public final synthetic f:Lu3/p0/j/o;


# direct methods
.method public constructor <init>(Lu3/p0/j/o;JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lu3/p0/j/o$b;->f:Lu3/p0/j/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lu3/p0/j/o$b;->d:J

    iput-boolean p4, p0, Lu3/p0/j/o$b;->e:Z

    .line 2
    new-instance p1, Lv3/f;

    invoke-direct {p1}, Lv3/f;-><init>()V

    iput-object p1, p0, Lu3/p0/j/o$b;->a:Lv3/f;

    .line 3
    new-instance p1, Lv3/f;

    invoke-direct {p1}, Lv3/f;-><init>()V

    iput-object p1, p0, Lu3/p0/j/o$b;->b:Lv3/f;

    return-void
.end method


# virtual methods
.method public final b(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lu3/p0/j/o$b;->f:Lu3/p0/j/o;

    .line 2
    sget-object v1, Lu3/p0/c;->a:[B

    .line 3
    iget-object v0, v0, Lu3/p0/j/o;->n:Lu3/p0/j/f;

    .line 4
    invoke-virtual {v0, p1, p2}, Lu3/p0/j/f;->q(J)V

    return-void
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu3/p0/j/o$b;->f:Lu3/p0/j/o;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lu3/p0/j/o$b;->c:Z

    .line 3
    iget-object v1, p0, Lu3/p0/j/o$b;->b:Lv3/f;

    .line 4
    iget-wide v2, v1, Lv3/f;->b:J

    .line 5
    invoke-virtual {v1, v2, v3}, Lv3/f;->skip(J)V

    .line 6
    iget-object v1, p0, Lu3/p0/j/o$b;->f:Lu3/p0/j/o;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 9
    invoke-virtual {p0, v2, v3}, Lu3/p0/j/o$b;->b(J)V

    .line 10
    :cond_0
    iget-object v0, p0, Lu3/p0/j/o$b;->f:Lu3/p0/j/o;

    invoke-virtual {v0}, Lu3/p0/j/o;->a()V

    return-void

    .line 11
    :cond_1
    :try_start_1
    new-instance v1, Ls1/p;

    const-string v2, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v1, v2}, Ls1/p;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0

    throw v1
.end method

.method public d2(Lv3/f;J)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_b

    .line 1
    :goto_1
    iget-object v2, p0, Lu3/p0/j/o$b;->f:Lu3/p0/j/o;

    monitor-enter v2

    .line 2
    :try_start_0
    iget-object v3, p0, Lu3/p0/j/o$b;->f:Lu3/p0/j/o;

    .line 3
    iget-object v3, v3, Lu3/p0/j/o;->i:Lu3/p0/j/o$c;

    .line 4
    invoke-virtual {v3}, Lv3/b;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-object v3, p0, Lu3/p0/j/o$b;->f:Lu3/p0/j/o;

    invoke-virtual {v3}, Lu3/p0/j/o;->f()Lu3/p0/j/b;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 6
    iget-object v3, p0, Lu3/p0/j/o$b;->f:Lu3/p0/j/o;

    .line 7
    iget-object v3, v3, Lu3/p0/j/o;->l:Ljava/io/IOException;

    if-eqz v3, :cond_1

    :goto_2
    move-object v4, v3

    goto :goto_3

    .line 8
    :cond_1
    new-instance v3, Lu3/p0/j/u;

    iget-object v5, p0, Lu3/p0/j/o$b;->f:Lu3/p0/j/o;

    invoke-virtual {v5}, Lu3/p0/j/o;->f()Lu3/p0/j/b;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-direct {v3, v5}, Lu3/p0/j/u;-><init>(Lu3/p0/j/b;)V

    goto :goto_2

    :cond_2
    invoke-static {}, Ls1/z/c/l;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 9
    :cond_3
    :goto_3
    :try_start_2
    iget-boolean v3, p0, Lu3/p0/j/o$b;->c:Z

    if-nez v3, :cond_a

    .line 10
    iget-object v3, p0, Lu3/p0/j/o$b;->b:Lv3/f;

    .line 11
    iget-wide v5, v3, Lv3/f;->b:J

    cmp-long v0, v5, v0

    const-wide/16 v7, -0x1

    if-lez v0, :cond_4

    .line 12
    invoke-static {p2, p3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {v3, p1, v0, v1}, Lv3/f;->d2(Lv3/f;J)J

    move-result-wide v0

    .line 13
    iget-object v3, p0, Lu3/p0/j/o$b;->f:Lu3/p0/j/o;

    .line 14
    iget-wide v5, v3, Lu3/p0/j/o;->a:J

    add-long/2addr v5, v0

    .line 15
    iput-wide v5, v3, Lu3/p0/j/o;->a:J

    .line 16
    iget-wide v9, v3, Lu3/p0/j/o;->b:J

    sub-long/2addr v5, v9

    if-nez v4, :cond_6

    .line 17
    iget-object v3, v3, Lu3/p0/j/o;->n:Lu3/p0/j/f;

    .line 18
    iget-object v3, v3, Lu3/p0/j/f;->s:Lu3/p0/j/t;

    .line 19
    invoke-virtual {v3}, Lu3/p0/j/t;->a()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-long v9, v3

    cmp-long v3, v5, v9

    if-ltz v3, :cond_6

    .line 20
    iget-object v3, p0, Lu3/p0/j/o$b;->f:Lu3/p0/j/o;

    .line 21
    iget-object v9, v3, Lu3/p0/j/o;->n:Lu3/p0/j/f;

    .line 22
    iget v3, v3, Lu3/p0/j/o;->m:I

    .line 23
    invoke-virtual {v9, v3, v5, v6}, Lu3/p0/j/f;->J(IJ)V

    .line 24
    iget-object v3, p0, Lu3/p0/j/o$b;->f:Lu3/p0/j/o;

    .line 25
    iget-wide v5, v3, Lu3/p0/j/o;->a:J

    .line 26
    iput-wide v5, v3, Lu3/p0/j/o;->b:J

    goto :goto_4

    .line 27
    :cond_4
    iget-boolean v0, p0, Lu3/p0/j/o$b;->e:Z

    if-nez v0, :cond_5

    if-nez v4, :cond_5

    .line 28
    iget-object v0, p0, Lu3/p0/j/o$b;->f:Lu3/p0/j/o;

    invoke-virtual {v0}, Lu3/p0/j/o;->l()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    move-wide v5, v7

    goto :goto_5

    :cond_5
    move-wide v0, v7

    :cond_6
    :goto_4
    const/4 v3, 0x0

    move-wide v5, v0

    move v0, v3

    .line 29
    :goto_5
    :try_start_3
    iget-object v1, p0, Lu3/p0/j/o$b;->f:Lu3/p0/j/o;

    .line 30
    iget-object v1, v1, Lu3/p0/j/o;->i:Lu3/p0/j/o$c;

    .line 31
    invoke-virtual {v1}, Lu3/p0/j/o$c;->l()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 32
    monitor-exit v2

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x0

    goto/16 :goto_1

    :cond_7
    cmp-long p1, v5, v7

    if-eqz p1, :cond_8

    .line 33
    invoke-virtual {p0, v5, v6}, Lu3/p0/j/o$b;->b(J)V

    return-wide v5

    :cond_8
    if-nez v4, :cond_9

    return-wide v7

    .line 34
    :cond_9
    throw v4

    .line 35
    :cond_a
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    .line 36
    :try_start_5
    iget-object p2, p0, Lu3/p0/j/o$b;->f:Lu3/p0/j/o;

    .line 37
    iget-object p2, p2, Lu3/p0/j/o;->i:Lu3/p0/j/o$c;

    .line 38
    invoke-virtual {p2}, Lu3/p0/j/o$c;->l()V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    .line 39
    monitor-exit v2

    throw p1

    :cond_b
    const-string p1, "byteCount < 0: "

    .line 40
    invoke-static {p1, p2, p3}, Le/d/c/a/a;->p2(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public i()Lv3/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lu3/p0/j/o$b;->f:Lu3/p0/j/o;

    .line 2
    iget-object v0, v0, Lu3/p0/j/o;->i:Lu3/p0/j/o$c;

    return-object v0
.end method
