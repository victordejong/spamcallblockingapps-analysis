.class public final Le/a/o5/g2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o5/g2/b;


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Long;",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/Context;

.field public final c:Le/a/o5/s0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/o5/s0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaInfoFetcher"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o5/g2/c;->b:Landroid/content/Context;

    iput-object p2, p0, Le/a/o5/g2/c;->c:Le/a/o5/s0;

    .line 2
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Le/a/o5/g2/c;->a:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/messaging/data/types/BinaryEntity;)Lcom/truecaller/messaging/data/types/VideoEntity;
    .locals 8

    const-string v0, "binaryEntity"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    .line 2
    iget-object v1, p0, Le/a/o5/g2/c;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "Video"

    const-string v3, ".mp4"

    invoke-static {v2, v3, v1}, Ls1/y/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    :try_start_0
    iget-object v3, p0, Le/a/o5/g2/c;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 5
    :goto_0
    new-instance v4, Le/a/o5/g2/c$a;

    invoke-direct {v4}, Le/a/o5/g2/c$a;-><init>()V

    .line 6
    :try_start_1
    invoke-static {}, Ls3/b/a/a;->a()Ls3/b/a/a;

    move-result-object v5

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 8
    new-instance v7, Le/a/o5/g2/a;

    invoke-direct {v7}, Le/a/o5/g2/a;-><init>()V

    .line 9
    invoke-virtual {v5, v3, v6, v7, v4}, Ls3/b/a/a;->b(Ljava/io/FileDescriptor;Ljava/lang/String;Ls3/b/a/g/a;Ls3/b/a/a$c;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 10
    iget-object v4, p0, Le/a/o5/g2/c;->a:Ljava/util/concurrent/ConcurrentMap;

    iget-wide v5, p1, Lcom/truecaller/messaging/data/types/Entity;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 12
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "outputFile.path"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v4, p1, Lcom/truecaller/messaging/data/types/Entity;->a:J

    invoke-virtual {p0, v3, v4, v5}, Le/a/o5/g2/c;->c(Ljava/lang/String;J)Lcom/truecaller/messaging/data/types/VideoEntity;

    move-result-object v0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 13
    :catch_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 14
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 15
    :catch_1
    iget-object v1, p0, Le/a/o5/g2/c;->b:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Le/a/p5/s0/f;->c(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tempFile.path"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v1, p1, Lcom/truecaller/messaging/data/types/Entity;->a:J

    invoke-virtual {p0, v0, v1, v2}, Le/a/o5/g2/c;->c(Ljava/lang/String;J)Lcom/truecaller/messaging/data/types/VideoEntity;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :goto_1
    iget-object v1, p0, Le/a/o5/g2/c;->a:Ljava/util/concurrent/ConcurrentMap;

    iget-wide v2, p1, Lcom/truecaller/messaging/data/types/Entity;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_1
    iget-object v0, p0, Le/a/o5/g2/c;->a:Ljava/util/concurrent/ConcurrentMap;

    iget-wide v3, p1, Lcom/truecaller/messaging/data/types/Entity;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :goto_2
    iget-object v1, p0, Le/a/o5/g2/c;->a:Ljava/util/concurrent/ConcurrentMap;

    iget-wide v2, p1, Lcom/truecaller/messaging/data/types/Entity;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0

    :catch_2
    move-exception p1

    .line 18
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public b(Lcom/truecaller/messaging/data/types/BinaryEntity;)V
    .locals 3

    const-string v0, "binaryEntity"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/o5/g2/c;->a:Ljava/util/concurrent/ConcurrentMap;

    iget-wide v1, p1, Lcom/truecaller/messaging/data/types/Entity;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Future;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;J)Lcom/truecaller/messaging/data/types/VideoEntity;
    .locals 27

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/io/File;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    const-string v1, "uri"

    .line 2
    invoke-static {v7, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, v0, Le/a/o5/g2/c;->c:Le/a/o5/s0;

    invoke-interface {v1, v7}, Le/a/o5/s0;->d(Landroid/net/Uri;)Le/a/o5/z1;

    move-result-object v1

    .line 4
    iget-object v2, v0, Le/a/o5/g2/c;->b:Landroid/content/Context;

    invoke-static {v7, v2}, Le/a/p5/s0/f;->G(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, -0x1

    :goto_0
    move-wide v11, v2

    const/16 v26, 0x0

    if-eqz v1, :cond_2

    .line 5
    iget-object v5, v1, Le/a/o5/z1;->d:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 6
    sget-object v2, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    const/4 v6, 0x0

    .line 7
    iget v8, v1, Le/a/o5/z1;->a:I

    .line 8
    iget v9, v1, Le/a/o5/z1;->b:I

    .line 9
    iget v10, v1, Le/a/o5/z1;->c:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const v25, 0x3ff04

    move-wide/from16 v3, p2

    .line 10
    invoke-static/range {v2 .. v25}, Lcom/truecaller/messaging/data/types/Entity$a;->b(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILandroid/net/Uri;IIIJZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v1

    instance-of v2, v1, Lcom/truecaller/messaging/data/types/VideoEntity;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v26, v1

    :goto_1
    check-cast v26, Lcom/truecaller/messaging/data/types/VideoEntity;

    :cond_2
    return-object v26
.end method
