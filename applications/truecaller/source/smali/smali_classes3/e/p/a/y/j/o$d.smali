.class public final Le/p/a/y/j/o$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/p/a/y/j/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/p/a/y/j/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Lv3/g;

.field public final b:Z

.field public final c:Lv3/f;

.field public final d:Le/p/a/y/j/n$b;

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>(Lv3/g;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/p/a/y/j/o$d;->a:Lv3/g;

    .line 3
    iput-boolean p2, p0, Le/p/a/y/j/o$d;->b:Z

    .line 4
    new-instance p1, Lv3/f;

    invoke-direct {p1}, Lv3/f;-><init>()V

    iput-object p1, p0, Le/p/a/y/j/o$d;->c:Lv3/f;

    .line 5
    new-instance p2, Le/p/a/y/j/n$b;

    invoke-direct {p2, p1}, Le/p/a/y/j/n$b;-><init>(Lv3/f;)V

    iput-object p2, p0, Le/p/a/y/j/o$d;->d:Le/p/a/y/j/n$b;

    const/16 p1, 0x4000

    .line 6
    iput p1, p0, Le/p/a/y/j/o$d;->e:I

    return-void
.end method


# virtual methods
.method public declared-synchronized C(ILe/p/a/y/j/a;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Le/p/a/y/j/o$d;->f:Z

    if-nez v0, :cond_2

    .line 2
    iget v0, p2, Le/p/a/y/j/a;->a:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 3
    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x7

    .line 4
    invoke-virtual {p0, v2, v0, v1, v2}, Le/p/a/y/j/o$d;->b(IIBB)V

    .line 5
    iget-object v0, p0, Le/p/a/y/j/o$d;->a:Lv3/g;

    invoke-interface {v0, p1}, Lv3/g;->B(I)Lv3/g;

    .line 6
    iget-object p1, p0, Le/p/a/y/j/o$d;->a:Lv3/g;

    iget p2, p2, Le/p/a/y/j/a;->a:I

    invoke-interface {p1, p2}, Lv3/g;->B(I)Lv3/g;

    .line 7
    array-length p1, p3

    if-lez p1, :cond_0

    .line 8
    iget-object p1, p0, Le/p/a/y/j/o$d;->a:Lv3/g;

    invoke-interface {p1, p3}, Lv3/g;->write([B)Lv3/g;

    .line 9
    :cond_0
    iget-object p1, p0, Le/p/a/y/j/o$d;->a:Lv3/g;

    invoke-interface {p1}, Lv3/g;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string p1, "errorCode.httpCode == -1"

    new-array p2, v2, [Ljava/lang/Object;

    .line 11
    invoke-static {p1, p2}, Le/p/a/y/j/o;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    throw p1

    .line 12
    :cond_2
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized M0(Le/p/a/y/j/t;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Le/p/a/y/j/o$d;->f:Z

    if-nez v0, :cond_4

    .line 2
    iget v0, p1, Le/p/a/y/j/t;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 3
    invoke-virtual {p0, v1, v0, v2, v1}, Le/p/a/y/j/o$d;->b(IIBB)V

    :goto_0
    const/16 v0, 0xa

    if-ge v1, v0, :cond_3

    .line 4
    invoke-virtual {p1, v1}, Le/p/a/y/j/t;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-ne v1, v2, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :cond_1
    const/4 v0, 0x7

    if-ne v1, v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 5
    :goto_1
    iget-object v3, p0, Le/p/a/y/j/o$d;->a:Lv3/g;

    invoke-interface {v3, v0}, Lv3/g;->H1(I)Lv3/g;

    .line 6
    iget-object v0, p0, Le/p/a/y/j/o$d;->a:Lv3/g;

    .line 7
    iget-object v3, p1, Le/p/a/y/j/t;->d:[I

    aget v3, v3, v1

    .line 8
    invoke-interface {v0, v3}, Lv3/g;->B(I)Lv3/g;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Le/p/a/y/j/o$d;->a:Lv3/g;

    invoke-interface {p1}, Lv3/g;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    .line 11
    :cond_4
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized T(ILe/p/a/y/j/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Le/p/a/y/j/o$d;->f:Z

    if-nez v0, :cond_1

    .line 2
    iget v0, p2, Le/p/a/y/j/a;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, v1, v2}, Le/p/a/y/j/o$d;->b(IIBB)V

    .line 4
    iget-object p1, p0, Le/p/a/y/j/o$d;->a:Lv3/g;

    iget p2, p2, Le/p/a/y/j/a;->a:I

    invoke-interface {p1, p2}, Lv3/g;->B(I)Lv3/g;

    .line 5
    iget-object p1, p0, Le/p/a/y/j/o$d;->a:Lv3/g;

    invoke-interface {p1}, Lv3/g;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(ZII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Le/p/a/y/j/o$d;->f:Z

    if-nez v0, :cond_1

    const/16 v0, 0x8

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 2
    :goto_0
    invoke-virtual {p0, v2, v0, v1, p1}, Le/p/a/y/j/o$d;->b(IIBB)V

    .line 3
    iget-object p1, p0, Le/p/a/y/j/o$d;->a:Lv3/g;

    invoke-interface {p1, p2}, Lv3/g;->B(I)Lv3/g;

    .line 4
    iget-object p1, p0, Le/p/a/y/j/o$d;->a:Lv3/g;

    invoke-interface {p1, p3}, Lv3/g;->B(I)Lv3/g;

    .line 5
    iget-object p1, p0, Le/p/a/y/j/o$d;->a:Lv3/g;

    invoke-interface {p1}, Lv3/g;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(IIBB)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/p/a/y/j/o;->a:Ljava/util/logging/Logger;

    .line 2
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v2, p1, p2, p3, p4}, Le/p/a/y/j/o$b;->a(ZIIBB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget v0, p0, Le/p/a/y/j/o$d;->e:I

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-gt p2, v0, :cond_2

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Le/p/a/y/j/o$d;->a:Lv3/g;

    ushr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 5
    invoke-interface {v0, v1}, Lv3/g;->j0(I)Lv3/g;

    ushr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 6
    invoke-interface {v0, v1}, Lv3/g;->j0(I)Lv3/g;

    and-int/lit16 p2, p2, 0xff

    .line 7
    invoke-interface {v0, p2}, Lv3/g;->j0(I)Lv3/g;

    .line 8
    iget-object p2, p0, Le/p/a/y/j/o$d;->a:Lv3/g;

    and-int/lit16 p3, p3, 0xff

    invoke-interface {p2, p3}, Lv3/g;->j0(I)Lv3/g;

    .line 9
    iget-object p2, p0, Le/p/a/y/j/o$d;->a:Lv3/g;

    and-int/lit16 p3, p4, 0xff

    invoke-interface {p2, p3}, Lv3/g;->j0(I)Lv3/g;

    .line 10
    iget-object p2, p0, Le/p/a/y/j/o$d;->a:Lv3/g;

    const p3, 0x7fffffff

    and-int/2addr p1, p3

    invoke-interface {p2, p1}, Lv3/g;->B(I)Lv3/g;

    return-void

    :cond_1
    new-array p2, v3, [Ljava/lang/Object;

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v2

    const-string p1, "reserved bit set: %s"

    invoke-static {p1, p2}, Le/p/a/y/j/o;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    throw v1

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "FRAME_SIZE_ERROR length > %d: %d"

    invoke-static {p2, p1}, Le/p/a/y/j/o;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    throw v1
.end method

.method public declared-synchronized c(IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Le/p/a/y/j/o$d;->f:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, p2, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x4

    const/16 v2, 0x8

    .line 2
    invoke-virtual {p0, p1, v0, v2, v1}, Le/p/a/y/j/o$d;->b(IIBB)V

    .line 3
    iget-object p1, p0, Le/p/a/y/j/o$d;->a:Lv3/g;

    long-to-int p2, p2

    invoke-interface {p1, p2}, Lv3/g;->B(I)Lv3/g;

    .line 4
    iget-object p1, p0, Le/p/a/y/j/o$d;->a:Lv3/g;

    invoke-interface {p1}, Lv3/g;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Le/p/a/y/j/o;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    throw p1

    .line 7
    :cond_1
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Le/p/a/y/j/o$d;->f:Z

    .line 2
    iget-object v0, p0, Le/p/a/y/j/o$d;->a:Lv3/g;

    invoke-interface {v0}, Lv3/z;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d(ZILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Le/p/a/y/j/l;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/p/a/y/j/o$d;->f:Z

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Le/p/a/y/j/o$d;->d:Le/p/a/y/j/n$b;

    invoke-virtual {v0, p3}, Le/p/a/y/j/n$b;->b(Ljava/util/List;)V

    .line 3
    iget-object p3, p0, Le/p/a/y/j/o$d;->c:Lv3/f;

    .line 4
    iget-wide v0, p3, Lv3/f;->b:J

    .line 5
    iget p3, p0, Le/p/a/y/j/o$d;->e:I

    int-to-long v2, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    int-to-long v2, p3

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz p1, :cond_1

    or-int/lit8 p1, v5, 0x1

    int-to-byte v5, p1

    :cond_1
    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p2, p3, p1, v5}, Le/p/a/y/j/o$d;->b(IIBB)V

    .line 7
    iget-object p1, p0, Le/p/a/y/j/o$d;->a:Lv3/g;

    iget-object p3, p0, Le/p/a/y/j/o$d;->c:Lv3/f;

    invoke-interface {p1, p3, v2, v3}, Lv3/z;->h1(Lv3/f;J)V

    if-lez v4, :cond_2

    sub-long/2addr v0, v2

    .line 8
    invoke-virtual {p0, p2, v0, v1}, Le/p/a/y/j/o$d;->j(IJ)V

    :cond_2
    return-void

    .line 9
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Le/p/a/y/j/o$d;->f:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/p/a/y/j/o$d;->a:Lv3/g;

    invoke-interface {v0}, Lv3/g;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Le/p/a/y/j/o$d;->f:Z

    if-nez v0, :cond_2

    .line 2
    iget-boolean v0, p0, Le/p/a/y/j/o$d;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    sget-object v0, Le/p/a/y/j/o;->a:Ljava/util/logging/Logger;

    .line 4
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ">> CONNECTION %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 5
    sget-object v4, Le/p/a/y/j/o;->b:Lv3/i;

    .line 6
    invoke-virtual {v4}, Lv3/i;->g()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v0, p0, Le/p/a/y/j/o$d;->a:Lv3/g;

    .line 8
    sget-object v1, Le/p/a/y/j/o;->b:Lv3/i;

    .line 9
    invoke-virtual {v1}, Lv3/i;->q()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lv3/g;->write([B)Lv3/g;

    .line 10
    iget-object v0, p0, Le/p/a/y/j/o$d;->a:Lv3/g;

    invoke-interface {v0}, Lv3/g;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    .line 12
    :cond_2
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j(IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 1
    iget v2, p0, Le/p/a/y/j/o$d;->e:I

    int-to-long v2, v2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v3, v2

    sub-long/2addr p2, v3

    const/16 v5, 0x9

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_1
    invoke-virtual {p0, p1, v2, v5, v0}, Le/p/a/y/j/o$d;->b(IIBB)V

    .line 3
    iget-object v0, p0, Le/p/a/y/j/o$d;->a:Lv3/g;

    iget-object v1, p0, Le/p/a/y/j/o$d;->c:Lv3/f;

    invoke-interface {v0, v1, v3, v4}, Lv3/z;->h1(Lv3/f;J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized r(ZILv3/f;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Le/p/a/y/j/o$d;->f:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    int-to-byte p1, p1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 2
    :goto_0
    invoke-virtual {p0, p2, p4, v0, p1}, Le/p/a/y/j/o$d;->b(IIBB)V

    if-lez p4, :cond_1

    .line 3
    iget-object p1, p0, Le/p/a/y/j/o$d;->a:Lv3/g;

    int-to-long v0, p4

    invoke-interface {p1, p3, v0, v1}, Lv3/z;->h1(Lv3/f;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_1
    monitor-exit p0

    return-void

    .line 5
    :cond_2
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public t()I
    .locals 1

    .line 1
    iget v0, p0, Le/p/a/y/j/o$d;->e:I

    return v0
.end method

.method public declared-synchronized v(ZZIILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Le/p/a/y/j/l;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_1

    .line 1
    :try_start_0
    iget-boolean p2, p0, Le/p/a/y/j/o$d;->f:Z

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0, p1, p3, p5}, Le/p/a/y/j/o$d;->d(ZILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized v0(Le/p/a/y/j/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Le/p/a/y/j/o$d;->f:Z

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Le/p/a/y/j/o$d;->e:I

    .line 3
    iget v1, p1, Le/p/a/y/j/t;->a:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    iget-object p1, p1, Le/p/a/y/j/t;->d:[I

    const/4 v0, 0x5

    aget v0, p1, v0

    .line 4
    :cond_0
    iput v0, p0, Le/p/a/y/j/o$d;->e:I

    const/4 p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v1, v1, p1, v0}, Le/p/a/y/j/o$d;->b(IIBB)V

    .line 6
    iget-object p1, p0, Le/p/a/y/j/o$d;->a:Lv3/g;

    invoke-interface {p1}, Lv3/g;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
