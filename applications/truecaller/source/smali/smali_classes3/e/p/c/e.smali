.class public Le/p/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/p/c/e$d;,
        Le/p/c/e$b;,
        Le/p/c/e$c;
    }
.end annotation


# static fields
.field public static final g:Ljava/util/logging/Logger;

.field public static final h:[B


# instance fields
.field public final a:Ljava/io/RandomAccessFile;

.field public b:I

.field public c:I

.field public d:Le/p/c/e$b;

.field public e:Le/p/c/e$b;

.field public final f:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Le/p/c/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Le/p/c/e;->g:Ljava/util/logging/Logger;

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 2
    sput-object v0, Le/p/c/e;->h:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 2
    iput-object v1, p0, Le/p/c/e;->f:[B

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-string v6, "rwd"

    if-nez v1, :cond_2

    .line 4
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v7, Ljava/io/RandomAccessFile;

    invoke-direct {v7, v1, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v8, 0x1000

    .line 6
    :try_start_0
    invoke-virtual {v7, v8, v9}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 7
    invoke-virtual {v7, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    new-array v0, v0, [B

    new-array v8, v2, [I

    const/16 v9, 0x1000

    aput v9, v8, v3

    const/4 v9, 0x1

    aput v3, v8, v9

    const/4 v9, 0x2

    aput v3, v8, v9

    const/4 v9, 0x3

    aput v3, v8, v9

    move v9, v3

    move v10, v9

    :goto_0
    if-ge v9, v2, :cond_0

    .line 8
    aget v11, v8, v9

    .line 9
    invoke-static {v0, v10, v11}, Le/p/c/e;->o([BII)V

    add-int/lit8 v10, v10, 0x4

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v7, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 12
    invoke-virtual {v1, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Rename failed!"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 13
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    throw p1

    .line 14
    :cond_2
    :goto_1
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, p1, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    iput-object v0, p0, Le/p/c/e;->a:Ljava/io/RandomAccessFile;

    .line 16
    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 17
    iget-object p1, p0, Le/p/c/e;->f:[B

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 18
    iget-object p1, p0, Le/p/c/e;->f:[B

    invoke-static {p1, v3}, Le/p/c/e;->h([BI)I

    move-result p1

    iput p1, p0, Le/p/c/e;->b:I

    int-to-long v3, p1

    .line 19
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-gtz p1, :cond_4

    .line 20
    iget p1, p0, Le/p/c/e;->b:I

    if-eqz p1, :cond_3

    .line 21
    iget-object p1, p0, Le/p/c/e;->f:[B

    invoke-static {p1, v2}, Le/p/c/e;->h([BI)I

    move-result p1

    iput p1, p0, Le/p/c/e;->c:I

    .line 22
    iget-object p1, p0, Le/p/c/e;->f:[B

    const/16 v0, 0x8

    invoke-static {p1, v0}, Le/p/c/e;->h([BI)I

    move-result p1

    .line 23
    iget-object v0, p0, Le/p/c/e;->f:[B

    const/16 v1, 0xc

    invoke-static {v0, v1}, Le/p/c/e;->h([BI)I

    move-result v0

    .line 24
    invoke-virtual {p0, p1}, Le/p/c/e;->g(I)Le/p/c/e$b;

    move-result-object p1

    iput-object p1, p0, Le/p/c/e;->d:Le/p/c/e$b;

    .line 25
    invoke-virtual {p0, v0}, Le/p/c/e;->g(I)Le/p/c/e$b;

    move-result-object p1

    iput-object p1, p0, Le/p/c/e;->e:Le/p/c/e$b;

    return-void

    .line 26
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "File is corrupt; length stored in header is 0."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v1, "File is truncated. Expected length: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Le/p/c/e;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Actual length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Le/p/c/e;I)I
    .locals 0

    .line 1
    iget p0, p0, Le/p/c/e;->b:I

    if-ge p1, p0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x10

    sub-int/2addr p1, p0

    :goto_0
    return p1
.end method

.method public static h([BI)I
    .locals 2

    .line 1
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method public static o([BII)V
    .locals 2

    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    .line 1
    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    .line 2
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 3
    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x3

    int-to-byte p2, p2

    .line 4
    aput-byte p2, p0, p1

    return-void
.end method

.method private usedBytes()I
    .locals 4

    .line 1
    iget v0, p0, Le/p/c/e;->c:I

    const/16 v1, 0x10

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Le/p/c/e;->e:Le/p/c/e$b;

    iget v2, v0, Le/p/c/e$b;->a:I

    iget-object v3, p0, Le/p/c/e;->d:Le/p/c/e$b;

    iget v3, v3, Le/p/c/e$b;->a:I

    if-lt v2, v3, :cond_1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x4

    .line 3
    iget v0, v0, Le/p/c/e$b;->b:I

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x4

    .line 4
    iget v0, v0, Le/p/c/e$b;->b:I

    add-int/2addr v2, v0

    iget v0, p0, Le/p/c/e;->b:I

    add-int/2addr v2, v0

    sub-int/2addr v2, v3

    return v2
.end method


# virtual methods
.method public declared-synchronized b([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "buffer"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    or-int v0, p2, p3

    if-ltz v0, :cond_3

    .line 2
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_3

    .line 3
    invoke-virtual {p0, p3}, Le/p/c/e;->d(I)V

    .line 4
    invoke-virtual {p0}, Le/p/c/e;->f()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    const/16 v2, 0x10

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, p0, Le/p/c/e;->e:Le/p/c/e$b;

    iget v3, v2, Le/p/c/e$b;->a:I

    add-int/2addr v3, v1

    iget v2, v2, Le/p/c/e$b;->b:I

    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Le/p/c/e;->m(I)I

    move-result v2

    .line 6
    :goto_0
    new-instance v3, Le/p/c/e$b;

    invoke-direct {v3, v2, p3}, Le/p/c/e$b;-><init>(II)V

    .line 7
    iget-object v2, p0, Le/p/c/e;->f:[B

    const/4 v4, 0x0

    invoke-static {v2, v4, p3}, Le/p/c/e;->o([BII)V

    .line 8
    iget v2, v3, Le/p/c/e$b;->a:I

    iget-object v5, p0, Le/p/c/e;->f:[B

    invoke-virtual {p0, v2, v5, v4, v1}, Le/p/c/e;->l(I[BII)V

    .line 9
    iget v2, v3, Le/p/c/e$b;->a:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2, p1, p2, p3}, Le/p/c/e;->l(I[BII)V

    if-eqz v0, :cond_1

    .line 10
    iget p1, v3, Le/p/c/e$b;->a:I

    goto :goto_1

    :cond_1
    iget-object p1, p0, Le/p/c/e;->d:Le/p/c/e$b;

    iget p1, p1, Le/p/c/e$b;->a:I

    .line 11
    :goto_1
    iget p2, p0, Le/p/c/e;->b:I

    iget p3, p0, Le/p/c/e;->c:I

    add-int/lit8 p3, p3, 0x1

    iget v1, v3, Le/p/c/e$b;->a:I

    invoke-virtual {p0, p2, p3, p1, v1}, Le/p/c/e;->n(IIII)V

    .line 12
    iput-object v3, p0, Le/p/c/e;->e:Le/p/c/e$b;

    .line 13
    iget p1, p0, Le/p/c/e;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Le/p/c/e;->c:I

    if-eqz v0, :cond_2

    .line 14
    iput-object v3, p0, Le/p/c/e;->d:Le/p/c/e$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :cond_2
    monitor-exit p0

    return-void

    .line 16
    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/p/c/e;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2
    iget-object v0, p0, Le/p/c/e;->a:Ljava/io/RandomAccessFile;

    sget-object v1, Le/p/c/e;->h:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    const/4 v0, 0x0

    const/16 v1, 0x1000

    .line 3
    invoke-virtual {p0, v1, v0, v0, v0}, Le/p/c/e;->n(IIII)V

    .line 4
    iput v0, p0, Le/p/c/e;->c:I

    .line 5
    sget-object v0, Le/p/c/e$b;->c:Le/p/c/e$b;

    iput-object v0, p0, Le/p/c/e;->d:Le/p/c/e$b;

    .line 6
    iput-object v0, p0, Le/p/c/e;->e:Le/p/c/e$b;

    .line 7
    iget v0, p0, Le/p/c/e;->b:I

    if-le v0, v1, :cond_0

    .line 8
    iget-object v0, p0, Le/p/c/e;->a:Ljava/io/RandomAccessFile;

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 9
    iget-object v0, p0, Le/p/c/e;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 10
    :cond_0
    iput v1, p0, Le/p/c/e;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x4

    .line 1
    iget v0, p0, Le/p/c/e;->b:I

    invoke-direct {p0}, Le/p/c/e;->usedBytes()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Le/p/c/e;->b:I

    :cond_1
    add-int/2addr v0, v1

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    if-lt v0, p1, :cond_1

    .line 3
    iget-object p1, p0, Le/p/c/e;->a:Ljava/io/RandomAccessFile;

    int-to-long v3, v1

    invoke-virtual {p1, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 4
    iget-object p1, p0, Le/p/c/e;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 5
    iget-object p1, p0, Le/p/c/e;->e:Le/p/c/e$b;

    iget v0, p1, Le/p/c/e$b;->a:I

    add-int/lit8 v0, v0, 0x4

    iget p1, p1, Le/p/c/e$b;->b:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Le/p/c/e;->m(I)I

    move-result p1

    .line 6
    iget-object v0, p0, Le/p/c/e;->d:Le/p/c/e$b;

    iget v0, v0, Le/p/c/e$b;->a:I

    const/16 v2, 0x10

    if-gt p1, v0, :cond_3

    .line 7
    iget-object v0, p0, Le/p/c/e;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    .line 8
    iget v0, p0, Le/p/c/e;->b:I

    int-to-long v3, v0

    invoke-virtual {v8, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    sub-int/2addr p1, v2

    const-wide/16 v4, 0x10

    int-to-long v9, p1

    move-object v3, v8

    move-wide v6, v9

    .line 9
    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v3

    cmp-long v0, v3, v9

    if-nez v0, :cond_2

    .line 10
    invoke-virtual {p0, v2, p1}, Le/p/c/e;->j(II)V

    goto :goto_0

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Copied insufficient number of bytes!"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 12
    :cond_3
    :goto_0
    iget-object p1, p0, Le/p/c/e;->e:Le/p/c/e$b;

    iget p1, p1, Le/p/c/e$b;->a:I

    iget-object v0, p0, Le/p/c/e;->d:Le/p/c/e$b;

    iget v0, v0, Le/p/c/e$b;->a:I

    if-ge p1, v0, :cond_4

    .line 13
    iget v3, p0, Le/p/c/e;->b:I

    add-int/2addr v3, p1

    sub-int/2addr v3, v2

    .line 14
    iget p1, p0, Le/p/c/e;->c:I

    invoke-virtual {p0, v1, p1, v0, v3}, Le/p/c/e;->n(IIII)V

    .line 15
    new-instance p1, Le/p/c/e$b;

    iget-object v0, p0, Le/p/c/e;->e:Le/p/c/e$b;

    iget v0, v0, Le/p/c/e$b;->b:I

    invoke-direct {p1, v3, v0}, Le/p/c/e$b;-><init>(II)V

    iput-object p1, p0, Le/p/c/e;->e:Le/p/c/e$b;

    goto :goto_1

    .line 16
    :cond_4
    iget v2, p0, Le/p/c/e;->c:I

    invoke-virtual {p0, v1, v2, v0, p1}, Le/p/c/e;->n(IIII)V

    .line 17
    :goto_1
    iput v1, p0, Le/p/c/e;->b:I

    return-void
.end method

.method public declared-synchronized e(Le/p/c/e$d;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/p/c/e;->d:Le/p/c/e$b;

    iget v0, v0, Le/p/c/e$b;->a:I

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    iget v3, p0, Le/p/c/e;->c:I

    if-ge v2, v3, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Le/p/c/e;->g(I)Le/p/c/e$b;

    move-result-object v0

    .line 4
    new-instance v3, Le/p/c/e$c;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v4}, Le/p/c/e$c;-><init>(Le/p/c/e;Le/p/c/e$b;Le/p/c/e$a;)V

    iget v3, v0, Le/p/c/e$b;->b:I

    move-object v4, p1

    check-cast v4, Le/p/c/e$a;

    .line 5
    iget-boolean v5, v4, Le/p/c/e$a;->a:Z

    if-eqz v5, :cond_0

    .line 6
    iput-boolean v1, v4, Le/p/c/e$a;->a:Z

    goto :goto_1

    .line 7
    :cond_0
    iget-object v5, v4, Le/p/c/e$a;->b:Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :goto_1
    iget-object v4, v4, Le/p/c/e$a;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    iget v3, v0, Le/p/c/e$b;->a:I

    add-int/lit8 v3, v3, 0x4

    iget v0, v0, Le/p/c/e$b;->b:I

    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Le/p/c/e;->m(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized f()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Le/p/c/e;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g(I)Le/p/c/e$b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Le/p/c/e$b;->c:Le/p/c/e$b;

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Le/p/c/e;->f:[B

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v1}, Le/p/c/e;->k(I[BII)V

    .line 3
    iget-object v0, p0, Le/p/c/e;->f:[B

    invoke-static {v0, v2}, Le/p/c/e;->h([BI)I

    move-result v0

    .line 4
    new-instance v1, Le/p/c/e$b;

    invoke-direct {v1, p1, v0}, Le/p/c/e$b;-><init>(II)V

    return-object v1
.end method

.method public declared-synchronized i()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le/p/c/e;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Le/p/c/e;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Le/p/c/e;->c()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le/p/c/e;->d:Le/p/c/e$b;

    iget v2, v0, Le/p/c/e$b;->b:I

    const/4 v3, 0x4

    add-int/2addr v2, v3

    .line 5
    iget v0, v0, Le/p/c/e$b;->a:I

    invoke-virtual {p0, v0, v2}, Le/p/c/e;->j(II)V

    .line 6
    iget-object v0, p0, Le/p/c/e;->d:Le/p/c/e$b;

    iget v0, v0, Le/p/c/e$b;->a:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Le/p/c/e;->m(I)I

    move-result v0

    .line 7
    iget-object v2, p0, Le/p/c/e;->f:[B

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v4, v3}, Le/p/c/e;->k(I[BII)V

    .line 8
    iget-object v2, p0, Le/p/c/e;->f:[B

    invoke-static {v2, v4}, Le/p/c/e;->h([BI)I

    move-result v2

    .line 9
    iget v3, p0, Le/p/c/e;->b:I

    iget v4, p0, Le/p/c/e;->c:I

    sub-int/2addr v4, v1

    iget-object v5, p0, Le/p/c/e;->e:Le/p/c/e$b;

    iget v5, v5, Le/p/c/e$b;->a:I

    invoke-virtual {p0, v3, v4, v0, v5}, Le/p/c/e;->n(IIII)V

    .line 10
    iget v3, p0, Le/p/c/e;->c:I

    sub-int/2addr v3, v1

    iput v3, p0, Le/p/c/e;->c:I

    .line 11
    new-instance v1, Le/p/c/e$b;

    invoke-direct {v1, v0, v2}, Le/p/c/e$b;-><init>(II)V

    iput-object v1, p0, Le/p/c/e;->d:Le/p/c/e$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :goto_0
    monitor-exit p0

    return-void

    .line 13
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p2, :cond_0

    .line 1
    sget-object v0, Le/p/c/e;->h:[B

    array-length v1, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v2, v1}, Le/p/c/e;->l(I[BII)V

    sub-int/2addr p2, v1

    add-int/2addr p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final k(I[BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/p/c/e;->b:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x10

    sub-int/2addr p1, v0

    :goto_0
    add-int v1, p1, p4

    if-gt v1, v0, :cond_1

    .line 2
    iget-object v0, p0, Le/p/c/e;->a:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 3
    iget-object p1, p0, Le/p/c/e;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p2, p3, p4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    goto :goto_1

    :cond_1
    sub-int/2addr v0, p1

    .line 4
    iget-object v1, p0, Le/p/c/e;->a:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 5
    iget-object p1, p0, Le/p/c/e;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p2, p3, v0}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 6
    iget-object p1, p0, Le/p/c/e;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x10

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 7
    iget-object p1, p0, Le/p/c/e;->a:Ljava/io/RandomAccessFile;

    add-int/2addr p3, v0

    sub-int/2addr p4, v0

    invoke-virtual {p1, p2, p3, p4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    :goto_1
    return-void
.end method

.method public final l(I[BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/p/c/e;->b:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x10

    sub-int/2addr p1, v0

    :goto_0
    add-int v1, p1, p4

    if-gt v1, v0, :cond_1

    .line 2
    iget-object v0, p0, Le/p/c/e;->a:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 3
    iget-object p1, p0, Le/p/c/e;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p2, p3, p4}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_1

    :cond_1
    sub-int/2addr v0, p1

    .line 4
    iget-object v1, p0, Le/p/c/e;->a:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 5
    iget-object p1, p0, Le/p/c/e;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p2, p3, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 6
    iget-object p1, p0, Le/p/c/e;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x10

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 7
    iget-object p1, p0, Le/p/c/e;->a:Ljava/io/RandomAccessFile;

    add-int/2addr p3, v0

    sub-int/2addr p4, v0

    invoke-virtual {p1, p2, p3, p4}, Ljava/io/RandomAccessFile;->write([BII)V

    :goto_1
    return-void
.end method

.method public final m(I)I
    .locals 1

    .line 1
    iget v0, p0, Le/p/c/e;->b:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x10

    sub-int/2addr p1, v0

    :goto_0
    return p1
.end method

.method public final n(IIII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/p/c/e;->f:[B

    const/4 v1, 0x4

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 p1, 0x1

    aput p2, v2, p1

    const/4 p1, 0x2

    aput p3, v2, p1

    const/4 p1, 0x3

    aput p4, v2, p1

    move p1, v3

    :goto_0
    if-ge v3, v1, :cond_0

    .line 2
    aget p2, v2, v3

    .line 3
    invoke-static {v0, p1, p2}, Le/p/c/e;->o([BII)V

    add-int/2addr p1, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Le/p/c/e;->a:Ljava/io/RandomAccessFile;

    const-wide/16 p2, 0x0

    invoke-virtual {p1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 5
    iget-object p1, p0, Le/p/c/e;->a:Ljava/io/RandomAccessFile;

    iget-object p2, p0, Le/p/c/e;->f:[B

    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->write([B)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "fileLength="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/p/c/e;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/p/c/e;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", first="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/p/c/e;->d:Le/p/c/e$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", last="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/p/c/e;->e:Le/p/c/e$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", element lengths=["

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :try_start_0
    new-instance v1, Le/p/c/e$a;

    invoke-direct {v1, p0, v0}, Le/p/c/e$a;-><init>(Le/p/c/e;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v1}, Le/p/c/e;->e(Le/p/c/e$d;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    sget-object v2, Le/p/c/e;->g:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "read error"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string v1, "]]"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
