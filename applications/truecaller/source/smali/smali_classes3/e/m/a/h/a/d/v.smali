.class public final Le/m/a/h/a/d/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Le/m/a/h/a/g/d0;

.field public final synthetic c:Le/m/a/h/a/d/w;


# direct methods
.method public constructor <init>(Le/m/a/h/a/d/w;Ljava/util/List;Le/m/a/h/a/g/d0;)V
    .locals 0

    iput-object p1, p0, Le/m/a/h/a/d/v;->c:Le/m/a/h/a/d/w;

    iput-object p2, p0, Le/m/a/h/a/d/v;->a:Ljava/util/List;

    iput-object p3, p0, Le/m/a/h/a/d/v;->b:Le/m/a/h/a/g/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v1, p0

    const/16 v0, -0xb

    :try_start_0
    iget-object v2, v1, Le/m/a/h/a/d/v;->c:Le/m/a/h/a/d/w;

    .line 1
    iget-object v2, v2, Le/m/a/h/a/d/w;->c:Le/m/a/h/a/d/y;

    .line 2
    iget-object v3, v1, Le/m/a/h/a/d/v;->a:Ljava/util/List;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    const/4 v5, 0x0

    const-string v6, "split_id"

    const/4 v7, 0x1

    if-eqz v4, :cond_1

    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 5
    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v8, v2, Le/m/a/h/a/d/y;->a:Le/m/a/h/a/f/e;

    .line 6
    invoke-virtual {v8, v4}, Le/m/a/h/a/f/e;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    if-nez v4, :cond_0

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v7

    :goto_0
    if-eqz v2, :cond_3

    .line 7
    iget-object v0, v1, Le/m/a/h/a/d/v;->c:Le/m/a/h/a/d/w;

    iget-object v2, v1, Le/m/a/h/a/d/v;->b:Le/m/a/h/a/g/d0;

    const/16 v3, -0xc

    .line 8
    :try_start_2
    iget-object v0, v0, Le/m/a/h/a/d/w;->a:Landroid/content/Context;

    .line 9
    invoke-static {v0}, Ln3/g0/y;->j2(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 10
    invoke-static {v0, v7}, Le/m/a/h/a/f/a;->d(Landroid/content/Context;Z)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v0, :cond_2

    .line 11
    invoke-interface {v2, v3}, Le/m/a/h/a/g/d0;->zzb(I)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-interface {v2}, Le/m/a/h/a/g/d0;->zza()V

    goto :goto_1

    .line 13
    :catch_0
    invoke-interface {v2, v3}, Le/m/a/h/a/g/d0;->zzb(I)V

    :goto_1
    return-void

    .line 14
    :cond_3
    iget-object v2, v1, Le/m/a/h/a/d/v;->c:Le/m/a/h/a/d/w;

    iget-object v3, v1, Le/m/a/h/a/d/v;->a:Ljava/util/List;

    iget-object v4, v1, Le/m/a/h/a/d/v;->b:Le/m/a/h/a/g/d0;

    .line 15
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v8, -0xd

    :try_start_3
    new-instance v9, Ljava/io/RandomAccessFile;

    iget-object v10, v2, Le/m/a/h/a/d/w;->b:Le/m/a/h/a/f/e;

    .line 16
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Ljava/io/File;

    .line 17
    invoke-virtual {v10}, Le/m/a/h/a/f/e;->k()Ljava/io/File;

    move-result-object v10

    const-string v12, "lock.tmp"

    invoke-direct {v11, v10, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v10, "rw"

    .line 18
    invoke-direct {v9, v11, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    const/4 v10, 0x0

    .line 19
    :try_start_4
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v11
    :try_end_4
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_1
    move-object v11, v10

    :goto_2
    if-eqz v11, :cond_b

    .line 20
    :try_start_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Intent;

    .line 21
    invoke-virtual {v10, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v2, Le/m/a/h/a/d/w;->a:Landroid/content/Context;

    .line 22
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    const-string v14, "r"

    invoke-virtual {v13, v10, v14}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v10

    iget-object v13, v2, Le/m/a/h/a/d/w;->b:Le/m/a/h/a/f/e;

    .line 23
    invoke-virtual {v13}, Le/m/a/h/a/f/e;->a()Ljava/io/File;

    move-result-object v13

    .line 24
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const-string v15, ".apk"

    invoke-virtual {v14, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 25
    invoke-static {v13, v14}, Le/m/a/h/a/f/e;->f(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    .line 26
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-eqz v14, :cond_5

    goto :goto_4

    .line 27
    :cond_5
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_4

    .line 28
    :goto_4
    iget-object v14, v2, Le/m/a/h/a/d/w;->b:Le/m/a/h/a/f/e;

    .line 29
    invoke-virtual {v14, v12}, Le/m/a/h/a/f/e;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_4

    new-instance v12, Ljava/io/BufferedInputStream;

    .line 30
    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v10

    invoke-direct {v12, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    new-instance v10, Ljava/io/FileOutputStream;

    .line 31
    invoke-direct {v10, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/16 v13, 0x1000

    :try_start_7
    new-array v13, v13, [B

    .line 32
    :goto_5
    invoke-virtual {v12, v13}, Ljava/io/InputStream;->read([B)I

    move-result v14

    if-lez v14, :cond_6

    .line 33
    invoke-virtual {v10, v13, v5, v14}, Ljava/io/OutputStream;->write([BII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    .line 34
    :cond_6
    :try_start_8
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 35
    :try_start_a
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_c
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    :try_start_d
    throw v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 36
    :cond_7
    :try_start_e
    iget-object v3, v2, Le/m/a/h/a/d/w;->b:Le/m/a/h/a/f/e;

    .line 37
    invoke-virtual {v3}, Le/m/a/h/a/f/e;->a()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    iget-object v6, v2, Le/m/a/h/a/d/w;->c:Le/m/a/h/a/d/y;

    .line 38
    invoke-virtual {v6, v3}, Le/m/a/h/a/d/y;->b([Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, v2, Le/m/a/h/a/d/w;->c:Le/m/a/h/a/d/y;

    .line 39
    invoke-virtual {v6, v3}, Le/m/a/h/a/d/y;->a([Ljava/io/File;)Z

    move-result v3
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v3, :cond_9

    :try_start_10
    iget-object v0, v2, Le/m/a/h/a/d/w;->b:Le/m/a/h/a/f/e;

    .line 40
    invoke-virtual {v0}, Le/m/a/h/a/f/e;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 41
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 42
    array-length v3, v0

    :goto_6
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_8

    .line 43
    aget-object v6, v0, v3

    .line 44
    invoke-virtual {v6, v5, v7}, Ljava/io/File;->setWritable(ZZ)Z

    .line 45
    invoke-virtual {v6, v5, v5}, Ljava/io/File;->setWritable(ZZ)Z

    .line 46
    aget-object v6, v0, v3

    iget-object v10, v2, Le/m/a/h/a/d/w;->b:Le/m/a/h/a/f/e;

    .line 47
    invoke-virtual {v10}, Le/m/a/h/a/f/e;->h()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Le/m/a/h/a/f/e;->f(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 48
    invoke-virtual {v6, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_6

    :cond_8
    move v0, v5

    goto :goto_7

    :catch_2
    move v0, v8

    .line 49
    :catch_3
    :cond_9
    :goto_7
    :try_start_11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 50
    invoke-virtual {v11}, Ljava/nio/channels/FileLock;->release()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_9

    :goto_8
    if-eqz v9, :cond_a

    .line 51
    :try_start_12
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :catchall_5
    :cond_a
    :try_start_13
    throw v0

    :cond_b
    :goto_9
    if-eqz v9, :cond_c

    .line 52
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4

    goto :goto_a

    .line 53
    :catch_4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    :cond_c
    :goto_a
    if-nez v10, :cond_d

    goto :goto_b

    .line 54
    :cond_d
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_e

    .line 55
    invoke-interface {v4}, Le/m/a/h/a/g/d0;->zzc()V

    goto :goto_b

    .line 56
    :cond_e
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v4, v0}, Le/m/a/h/a/g/d0;->zzb(I)V

    :goto_b
    return-void

    .line 57
    :catch_5
    iget-object v2, v1, Le/m/a/h/a/d/v;->b:Le/m/a/h/a/g/d0;

    .line 58
    invoke-interface {v2, v0}, Le/m/a/h/a/g/d0;->zzb(I)V

    return-void
.end method
