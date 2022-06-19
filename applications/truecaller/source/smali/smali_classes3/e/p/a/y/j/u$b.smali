.class public final Le/p/a/y/j/u$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/p/a/y/j/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/p/a/y/j/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lv3/g;

.field public final b:Lv3/f;

.field public final c:Lv3/g;

.field public final d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Lv3/g;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

    .line 3
    iput-boolean p2, p0, Le/p/a/y/j/u$b;->d:Z

    .line 4
    new-instance p1, Ljava/util/zip/Deflater;

    invoke-direct {p1}, Ljava/util/zip/Deflater;-><init>()V

    .line 5
    sget-object p2, Le/p/a/y/j/u;->a:[B

    invoke-virtual {p1, p2}, Ljava/util/zip/Deflater;->setDictionary([B)V

    .line 6
    new-instance p2, Lv3/f;

    invoke-direct {p2}, Lv3/f;-><init>()V

    iput-object p2, p0, Le/p/a/y/j/u$b;->b:Lv3/f;

    .line 7
    new-instance v0, Lv3/j;

    invoke-direct {v0, p2, p1}, Lv3/j;-><init>(Lv3/z;Ljava/util/zip/Deflater;)V

    const-string p1, "$this$buffer"

    .line 8
    invoke-static {v0, p1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance p1, Lv3/u;

    invoke-direct {p1, v0}, Lv3/u;-><init>(Lv3/z;)V

    .line 10
    iput-object p1, p0, Le/p/a/y/j/u$b;->c:Lv3/g;

    return-void
.end method


# virtual methods
.method public declared-synchronized C(ILe/p/a/y/j/a;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean p3, p0, Le/p/a/y/j/u$b;->e:Z

    if-nez p3, :cond_1

    .line 2
    iget p3, p2, Le/p/a/y/j/a;->c:I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 3
    iget-object p3, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

    const v0, -0x7ffcfff9

    invoke-interface {p3, v0}, Lv3/g;->B(I)Lv3/g;

    .line 4
    iget-object p3, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

    const/16 v0, 0x8

    invoke-interface {p3, v0}, Lv3/g;->B(I)Lv3/g;

    .line 5
    iget-object p3, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

    invoke-interface {p3, p1}, Lv3/g;->B(I)Lv3/g;

    .line 6
    iget-object p1, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

    iget p2, p2, Le/p/a/y/j/a;->c:I

    invoke-interface {p1, p2}, Lv3/g;->B(I)Lv3/g;

    .line 7
    iget-object p1, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

    invoke-interface {p1}, Lv3/g;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "errorCode.spdyGoAwayCode == -1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
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

.method public declared-synchronized M0(Le/p/a/y/j/t;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Le/p/a/y/j/u$b;->e:Z

    if-nez v0, :cond_2

    .line 2
    iget v0, p1, Le/p/a/y/j/t;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x4

    .line 3
    iget-object v2, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

    const v3, -0x7ffcfffc

    invoke-interface {v2, v3}, Lv3/g;->B(I)Lv3/g;

    .line 4
    iget-object v2, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

    const v3, 0xffffff

    and-int/2addr v1, v3

    const/4 v4, 0x0

    or-int/2addr v1, v4

    invoke-interface {v2, v1}, Lv3/g;->B(I)Lv3/g;

    .line 5
    iget-object v1, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

    invoke-interface {v1, v0}, Lv3/g;->B(I)Lv3/g;

    :goto_0
    const/16 v0, 0xa

    if-gt v4, v0, :cond_1

    .line 6
    invoke-virtual {p1, v4}, Le/p/a/y/j/t;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {p1, v4}, Le/p/a/y/j/t;->a(I)I

    move-result v0

    .line 8
    iget-object v1, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int v2, v4, v3

    or-int/2addr v0, v2

    invoke-interface {v1, v0}, Lv3/g;->B(I)Lv3/g;

    .line 9
    iget-object v0, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

    .line 10
    iget-object v1, p1, Le/p/a/y/j/t;->d:[I

    aget v1, v1, v4

    .line 11
    invoke-interface {v0, v1}, Lv3/g;->B(I)Lv3/g;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

    invoke-interface {p1}, Lv3/g;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    .line 14
    :cond_2
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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Le/p/a/y/j/u$b;->e:Z

    if-nez v0, :cond_1

    .line 2
    iget v0, p2, Le/p/a/y/j/a;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

    const v1, -0x7ffcfffd

    invoke-interface {v0, v1}, Lv3/g;->B(I)Lv3/g;

    .line 4
    iget-object v0, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lv3/g;->B(I)Lv3/g;

    .line 5
    iget-object v0, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

    const v1, 0x7fffffff

    and-int/2addr p1, v1

    invoke-interface {v0, p1}, Lv3/g;->B(I)Lv3/g;

    .line 6
    iget-object p1, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

    iget p2, p2, Le/p/a/y/j/a;->b:I

    invoke-interface {p1, p2}, Lv3/g;->B(I)Lv3/g;

    .line 7
    iget-object p1, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

    invoke-interface {p1}, Lv3/g;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 10
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
    iget-boolean p3, p0, Le/p/a/y/j/u$b;->e:Z

    if-nez p3, :cond_3

    .line 2
    iget-boolean p3, p0, Le/p/a/y/j/u$b;->d:Z

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eq p3, v0, :cond_1

    move v1, v2

    :cond_1
    if-ne p1, v1, :cond_2

    .line 3
    iget-object p1, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

    const p3, -0x7ffcfffa

    invoke-interface {p1, p3}, Lv3/g;->B(I)Lv3/g;

    .line 4
    iget-object p1, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

    const/4 p3, 0x4

    invoke-interface {p1, p3}, Lv3/g;->B(I)Lv3/g;

    .line 5
    iget-object p1, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

    invoke-interface {p1, p2}, Lv3/g;->B(I)Lv3/g;

    .line 6
    iget-object p1, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

    invoke-interface {p1}, Lv3/g;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "payload != reply"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_3
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

.method public b(IILv3/f;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/p/a/y/j/u$b;->e:Z

    if-nez v0, :cond_2

    int-to-long v0, p4

    const-wide/32 v2, 0xffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 2
    iget-object v2, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

    const v3, 0x7fffffff

    and-int/2addr p1, v3

    invoke-interface {v2, p1}, Lv3/g;->B(I)Lv3/g;

    .line 3
    iget-object p1, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x18

    const v2, 0xffffff

    and-int/2addr v2, p4

    or-int/2addr p2, v2

    invoke-interface {p1, p2}, Lv3/g;->B(I)Lv3/g;

    if-lez p4, :cond_0

    .line 4
    iget-object p1, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

    invoke-interface {p1, p3, v0, v1}, Lv3/z;->h1(Lv3/f;J)V

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FRAME_TOO_LARGE max size is 16Mib: "

    invoke-static {p2, p4}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized c(IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Le/p/a/y/j/u$b;->e:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

    const v1, -0x7ffcfff7

    invoke-interface {v0, v1}, Lv3/g;->B(I)Lv3/g;

    .line 3
    iget-object v0, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lv3/g;->B(I)Lv3/g;

    .line 4
    iget-object v0, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

    invoke-interface {v0, p1}, Lv3/g;->B(I)Lv3/g;

    .line 5
    iget-object p1, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

    long-to-int p2, p2

    invoke-interface {p1, p2}, Lv3/g;->B(I)Lv3/g;

    .line 6
    iget-object p1, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

    invoke-interface {p1}, Lv3/g;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "windowSizeIncrement must be between 1 and 0x7fffffff: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
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

.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Le/p/a/y/j/u$b;->e:Z

    .line 2
    iget-object v0, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

    iget-object v1, p0, Le/p/a/y/j/u$b;->c:Lv3/g;

    invoke-static {v0, v1}, Le/p/a/y/i;->b(Ljava/io/Closeable;Ljava/io/Closeable;)V
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

.method public final d(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    iget-object v0, p0, Le/p/a/y/j/u$b;->c:Lv3/g;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lv3/g;->B(I)Lv3/g;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/p/a/y/j/l;

    iget-object v2, v2, Le/p/a/y/j/l;->a:Lv3/i;

    .line 4
    iget-object v3, p0, Le/p/a/y/j/u$b;->c:Lv3/g;

    .line 5
    invoke-virtual {v2}, Lv3/i;->f()I

    move-result v4

    .line 6
    invoke-interface {v3, v4}, Lv3/g;->B(I)Lv3/g;

    .line 7
    iget-object v3, p0, Le/p/a/y/j/u$b;->c:Lv3/g;

    invoke-interface {v3, v2}, Lv3/g;->E0(Lv3/i;)Lv3/g;

    .line 8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/p/a/y/j/l;

    iget-object v2, v2, Le/p/a/y/j/l;->b:Lv3/i;

    .line 9
    iget-object v3, p0, Le/p/a/y/j/u$b;->c:Lv3/g;

    .line 10
    invoke-virtual {v2}, Lv3/i;->f()I

    move-result v4

    .line 11
    invoke-interface {v3, v4}, Lv3/g;->B(I)Lv3/g;

    .line 12
    iget-object v3, p0, Le/p/a/y/j/u$b;->c:Lv3/g;

    invoke-interface {v3, v2}, Lv3/g;->E0(Lv3/i;)Lv3/g;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Le/p/a/y/j/u$b;->c:Lv3/g;

    invoke-interface {p1}, Lv3/g;->flush()V

    return-void
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
    iget-boolean v0, p0, Le/p/a/y/j/u$b;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

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
    .locals 0

    monitor-enter p0

    .line 1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized r(ZILv3/f;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    :try_start_0
    invoke-virtual {p0, p2, p1, p3, p4}, Le/p/a/y/j/u$b;->b(IILv3/f;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public t()I
    .locals 1

    const/16 v0, 0x3fff

    return v0
.end method

.method public declared-synchronized v(ZZIILjava/util/List;)V
    .locals 4
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

    .line 1
    :try_start_0
    iget-boolean v0, p0, Le/p/a/y/j/u$b;->e:Z

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0, p5}, Le/p/a/y/j/u$b;->d(Ljava/util/List;)V

    const-wide/16 v0, 0xa

    .line 3
    iget-object p5, p0, Le/p/a/y/j/u$b;->b:Lv3/f;

    .line 4
    iget-wide v2, p5, Lv3/f;->b:J

    add-long/2addr v2, v0

    long-to-int p5, v2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    or-int/2addr p1, p2

    .line 5
    iget-object p2, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

    const v1, -0x7ffcffff

    invoke-interface {p2, v1}, Lv3/g;->B(I)Lv3/g;

    .line 6
    iget-object p2, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    const v1, 0xffffff

    and-int/2addr p5, v1

    or-int/2addr p1, p5

    invoke-interface {p2, p1}, Lv3/g;->B(I)Lv3/g;

    .line 7
    iget-object p1, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

    const p2, 0x7fffffff

    and-int/2addr p3, p2

    invoke-interface {p1, p3}, Lv3/g;->B(I)Lv3/g;

    .line 8
    iget-object p1, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

    and-int/2addr p2, p4

    invoke-interface {p1, p2}, Lv3/g;->B(I)Lv3/g;

    .line 9
    iget-object p1, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

    invoke-interface {p1, v0}, Lv3/g;->H1(I)Lv3/g;

    .line 10
    iget-object p1, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

    iget-object p2, p0, Le/p/a/y/j/u$b;->b:Lv3/f;

    invoke-interface {p1, p2}, Lv3/g;->k1(Lv3/b0;)J

    .line 11
    iget-object p1, p0, Le/p/a/y/j/u$b;->a:Lv3/g;

    invoke-interface {p1}, Lv3/g;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    .line 13
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

.method public v0(Le/p/a/y/j/t;)V
    .locals 0

    return-void
.end method
