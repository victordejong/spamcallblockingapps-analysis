.class public Le/a/q2/b1/f/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/q2/b1/f/b$b;,
        Le/a/q2/b1/f/b$d;,
        Le/a/q2/b1/f/b$c;
    }
.end annotation


# instance fields
.field public final a:Ljava/io/RandomAccessFile;

.field public b:I

.field public c:I

.field public d:Le/a/q2/b1/f/b$c;

.field public e:Le/a/q2/b1/f/b$c;

.field public final f:[B

.field public final g:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/a/q2/b1/f/b$b;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v3, v0, [B

    .line 2
    iput-object v3, v1, Le/a/q2/b1/f/b;->f:[B

    .line 3
    new-instance v4, Ljava/util/zip/CRC32;

    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v4, v1, Le/a/q2/b1/f/b;->g:Ljava/util/zip/CRC32;

    .line 4
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v4

    const/16 v5, 0x1000

    const-wide/16 v6, 0x0

    const-string v8, ".tmp"

    const-string v9, "rwd"

    const/4 v10, 0x0

    if-nez v4, :cond_1

    .line 5
    new-instance v4, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v11, Ljava/io/RandomAccessFile;

    invoke-direct {v11, v4, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v12, 0x1000

    .line 7
    :try_start_0
    invoke-virtual {v11, v12, v13}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 8
    invoke-virtual {v11, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    new-array v12, v0, [B

    .line 9
    invoke-static {v12, v10, v5}, Le/a/q2/b1/f/b;->k([BII)V

    .line 10
    invoke-virtual {v11, v12}, Ljava/io/RandomAccessFile;->write([B)V

    .line 11
    invoke-virtual {v11, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    .line 13
    invoke-virtual {v4, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Rename failed!"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 15
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    .line 16
    throw v0

    .line 17
    :cond_1
    :goto_0
    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-direct {v4, v2, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    :try_start_1
    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 19
    invoke-virtual {v4, v3}, Ljava/io/RandomAccessFile;->readFully([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 20
    invoke-static {v3, v10}, Le/a/q2/b1/f/b;->d([BI)I

    move-result v5

    const/4 v6, 0x4

    .line 21
    invoke-static {v3, v6}, Le/a/q2/b1/f/b;->d([BI)I

    move-result v6

    const/16 v7, 0x8

    .line 22
    invoke-static {v3, v7}, Le/a/q2/b1/f/b;->d([BI)I

    move-result v11

    const/16 v12, 0xc

    .line 23
    invoke-static {v3, v12}, Le/a/q2/b1/f/b;->d([BI)I

    move-result v12

    if-gt v11, v12, :cond_8

    add-int/lit8 v13, v12, 0x8

    if-gt v13, v5, :cond_8

    if-eqz v11, :cond_8

    if-eq v11, v0, :cond_8

    if-ge v5, v11, :cond_2

    goto/16 :goto_6

    :cond_2
    int-to-long v14, v12

    .line 24
    :try_start_2
    invoke-virtual {v4, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 25
    invoke-virtual {v4, v3, v10, v7}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 26
    invoke-static {v3, v10}, Le/a/q2/b1/f/b;->d([BI)I

    move-result v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    add-int/2addr v13, v3

    if-le v13, v5, :cond_3

    goto/16 :goto_6

    .line 27
    :cond_3
    new-instance v5, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    .line 28
    :try_start_3
    new-instance v14, Ljava/io/RandomAccessFile;

    invoke-direct {v14, v5, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    add-int/lit8 v8, v11, -0x10

    sub-int v15, v12, v11

    add-int/2addr v15, v0

    add-int/2addr v15, v7

    add-int/2addr v15, v3

    const/16 v3, 0x1000

    :goto_1
    if-ge v3, v15, :cond_4

    shl-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move/from16 v16, v8

    int-to-long v7, v3

    .line 29
    :try_start_4
    invoke-virtual {v14, v7, v8}, Ljava/io/RandomAccessFile;->setLength(J)V

    const-wide/16 v7, 0x10

    .line 30
    invoke-virtual {v14, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    int-to-long v7, v11

    .line 31
    invoke-virtual {v4, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 32
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v17

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v18

    const-wide/16 v19, 0x10

    sub-int/2addr v13, v11

    int-to-long v7, v13

    move-wide/from16 v21, v7

    invoke-virtual/range {v17 .. v22}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 33
    iget-object v7, v1, Le/a/q2/b1/f/b;->f:[B

    invoke-static {v7, v10, v3}, Le/a/q2/b1/f/b;->k([BII)V

    .line 34
    iget-object v3, v1, Le/a/q2/b1/f/b;->f:[B

    const/4 v7, 0x4

    invoke-static {v3, v7, v6}, Le/a/q2/b1/f/b;->k([BII)V

    .line 35
    iget-object v3, v1, Le/a/q2/b1/f/b;->f:[B

    const/16 v6, 0x8

    invoke-static {v3, v6, v0}, Le/a/q2/b1/f/b;->k([BII)V

    .line 36
    iget-object v0, v1, Le/a/q2/b1/f/b;->f:[B

    sub-int v12, v12, v16

    const/16 v3, 0xc

    invoke-static {v0, v3, v12}, Le/a/q2/b1/f/b;->k([BII)V

    const-wide/16 v6, 0x0

    .line 37
    invoke-virtual {v14, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 38
    iget-object v0, v1, Le/a/q2/b1/f/b;->f:[B

    invoke-virtual {v14, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v8, v14

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 39
    :goto_2
    :try_start_5
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v8, :cond_5

    move-object v14, v8

    .line 40
    :goto_3
    :try_start_6
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-object v8, v14

    .line 41
    :cond_5
    :try_start_7
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    if-eqz v8, :cond_6

    .line 42
    invoke-virtual {v5, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 43
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 44
    :cond_6
    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-direct {v4, v2, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_6

    :goto_4
    move-object v14, v8

    :goto_5
    if-eqz v14, :cond_7

    .line 45
    :try_start_8
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 46
    :catch_4
    :cond_7
    :try_start_9
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 47
    :catch_5
    throw v0

    .line 48
    :catch_6
    new-instance v0, Le/a/q2/b1/f/b$b;

    const-string v2, "Can\'t read last item"

    invoke-direct {v0, v2}, Le/a/q2/b1/f/b$b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_8
    :goto_6
    iput-object v4, v1, Le/a/q2/b1/f/b;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    .line 50
    invoke-virtual {v4, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 51
    iget-object v0, v1, Le/a/q2/b1/f/b;->f:[B

    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 52
    iget-object v0, v1, Le/a/q2/b1/f/b;->f:[B

    invoke-static {v0, v10}, Le/a/q2/b1/f/b;->d([BI)I

    move-result v0

    iput v0, v1, Le/a/q2/b1/f/b;->b:I

    int-to-long v2, v0

    .line 53
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    cmp-long v0, v2, v5

    if-nez v0, :cond_a

    .line 54
    iget v0, v1, Le/a/q2/b1/f/b;->b:I

    if-lez v0, :cond_9

    .line 55
    iget-object v0, v1, Le/a/q2/b1/f/b;->f:[B

    const/4 v2, 0x4

    invoke-static {v0, v2}, Le/a/q2/b1/f/b;->d([BI)I

    move-result v0

    iput v0, v1, Le/a/q2/b1/f/b;->c:I

    .line 56
    iget-object v0, v1, Le/a/q2/b1/f/b;->f:[B

    const/16 v2, 0x8

    invoke-static {v0, v2}, Le/a/q2/b1/f/b;->d([BI)I

    move-result v0

    .line 57
    iget-object v2, v1, Le/a/q2/b1/f/b;->f:[B

    const/16 v3, 0xc

    invoke-static {v2, v3}, Le/a/q2/b1/f/b;->d([BI)I

    move-result v2

    .line 58
    invoke-virtual {v1, v0}, Le/a/q2/b1/f/b;->b(I)Le/a/q2/b1/f/b$c;

    move-result-object v0

    iput-object v0, v1, Le/a/q2/b1/f/b;->d:Le/a/q2/b1/f/b$c;

    .line 59
    invoke-virtual {v1, v2}, Le/a/q2/b1/f/b;->b(I)Le/a/q2/b1/f/b$c;

    move-result-object v0

    iput-object v0, v1, Le/a/q2/b1/f/b;->e:Le/a/q2/b1/f/b$c;

    return-void

    .line 60
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v2, "File is corrupt; length stored in header ("

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Le/a/q2/b1/f/b;->b:I

    const-string v4, ") is invalid."

    invoke-static {v2, v3, v4}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v2, "File is truncated. Expected length: "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Le/a/q2/b1/f/b;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Actual length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :catch_7
    new-instance v0, Le/a/q2/b1/f/b$b;

    const-string v2, "Can\'t read header"

    invoke-direct {v0, v2}, Le/a/q2/b1/f/b$b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d([BI)I
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

.method public static k([BII)V
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


# virtual methods
.method public final b(I)Le/a/q2/b1/f/b$c;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/a/q2/b1/f/b$b;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Le/a/q2/b1/f/b$c;->d:Le/a/q2/b1/f/b$c;

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/q2/b1/f/b;->f:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, p1, v0, v1, v2}, Le/a/q2/b1/f/b;->j(I[BII)V

    .line 3
    iget-object v0, p0, Le/a/q2/b1/f/b;->f:[B

    invoke-static {v0, v1}, Le/a/q2/b1/f/b;->d([BI)I

    move-result v0

    .line 4
    iget-object v1, p0, Le/a/q2/b1/f/b;->f:[B

    const/4 v3, 0x4

    .line 5
    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    const/16 v5, 0x18

    shl-long/2addr v3, v5

    const/4 v5, 0x5

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    int-to-long v5, v5

    add-long/2addr v3, v5

    const/4 v5, 0x6

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v2, v5, 0x8

    int-to-long v5, v2

    add-long/2addr v3, v5

    const/4 v2, 0x7

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-long v1, v1

    add-long/2addr v3, v1

    .line 6
    new-instance v1, Le/a/q2/b1/f/b$c;

    invoke-direct {v1, p1, v0, v3, v4}, Le/a/q2/b1/f/b$c;-><init>(IIJ)V

    return-object v1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/q2/b1/f/b;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public final j(I[BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/a/q2/b1/f/b$b;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/a/q2/b1/f/b;->b:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x10

    sub-int/2addr p1, v0

    :goto_0
    add-int v1, p1, p4

    if-gt v1, v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/q2/b1/f/b;->a:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 3
    iget-object p1, p0, Le/a/q2/b1/f/b;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p2, p3, p4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    goto :goto_1

    :cond_1
    if-gt p1, v0, :cond_2

    sub-int/2addr v0, p1

    .line 4
    iget-object v1, p0, Le/a/q2/b1/f/b;->a:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 5
    iget-object p1, p0, Le/a/q2/b1/f/b;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p2, p3, v0}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 6
    iget-object p1, p0, Le/a/q2/b1/f/b;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x10

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 7
    iget-object p1, p0, Le/a/q2/b1/f/b;->a:Ljava/io/RandomAccessFile;

    add-int/2addr p3, v0

    sub-int/2addr p4, v0

    invoke-virtual {p1, p2, p3, p4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    :goto_1
    return-void

    .line 8
    :cond_2
    new-instance p1, Le/a/q2/b1/f/b$b;

    const-string p2, "Position is after file end. Queue is broken"

    invoke-direct {p1, p2}, Le/a/q2/b1/f/b$b;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Le/a/q2/b1/f/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "mFileLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/q2/b1/f/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/q2/b1/f/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFirst="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/q2/b1/f/b;->d:Le/a/q2/b1/f/b$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/q2/b1/f/b;->e:Le/a/q2/b1/f/b$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
