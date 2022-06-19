.class public final Le/m/a/c/p1/h;
.super Le/m/a/c/p1/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/p1/h$a;
    }
.end annotation


# instance fields
.field public final e:Landroid/content/ContentResolver;

.field public f:Landroid/net/Uri;

.field public g:Landroid/content/res/AssetFileDescriptor;

.field public h:Ljava/io/FileInputStream;

.field public i:J

.field public j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/m/a/c/p1/g;-><init>(Z)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Le/m/a/c/p1/h;->e:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public b(Le/m/a/c/p1/n;)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/p1/h$a;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p1, Le/m/a/c/p1/n;->a:Landroid/net/Uri;

    .line 2
    iput-object v0, p0, Le/m/a/c/p1/h;->f:Landroid/net/Uri;

    .line 3
    invoke-virtual {p0, p1}, Le/m/a/c/p1/g;->f(Le/m/a/c/p1/n;)V

    .line 4
    iget-object v1, p0, Le/m/a/c/p1/h;->e:Landroid/content/ContentResolver;

    const-string v2, "r"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 5
    iput-object v1, p0, Le/m/a/c/p1/h;->g:Landroid/content/res/AssetFileDescriptor;

    if-eqz v1, :cond_4

    .line 6
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 7
    iput-object v0, p0, Le/m/a/c/p1/h;->h:Ljava/io/FileInputStream;

    .line 8
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    .line 9
    iget-wide v4, p1, Le/m/a/c/p1/n;->f:J

    add-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 10
    iget-wide v2, p1, Le/m/a/c/p1/n;->f:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_3

    .line 11
    iget-wide v2, p1, Le/m/a/c/p1/n;->g:J

    const-wide/16 v6, -0x1

    cmp-long v8, v2, v6

    if-eqz v8, :cond_0

    .line 12
    iput-wide v2, p0, Le/m/a/c/p1/h;->i:J

    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v1

    cmp-long v3, v1, v6

    if-nez v3, :cond_2

    .line 14
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v3

    sub-long v6, v1, v3

    :goto_0
    iput-wide v6, p0, Le/m/a/c/p1/h;->i:J

    goto :goto_1

    :cond_2
    sub-long/2addr v1, v4

    .line 17
    iput-wide v1, p0, Le/m/a/c/p1/h;->i:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Le/m/a/c/p1/h;->j:Z

    .line 19
    invoke-virtual {p0, p1}, Le/m/a/c/p1/g;->g(Le/m/a/c/p1/n;)V

    .line 20
    iget-wide v0, p0, Le/m/a/c/p1/h;->i:J

    return-wide v0

    .line 21
    :cond_3
    :try_start_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 22
    :cond_4
    new-instance p1, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not open file descriptor for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 23
    new-instance v0, Le/m/a/c/p1/h$a;

    invoke-direct {v0, p1}, Le/m/a/c/p1/h$a;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/p1/h$a;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/m/a/c/p1/h;->f:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Le/m/a/c/p1/h;->h:Ljava/io/FileInputStream;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :cond_0
    iput-object v0, p0, Le/m/a/c/p1/h;->h:Ljava/io/FileInputStream;

    .line 5
    :try_start_1
    iget-object v2, p0, Le/m/a/c/p1/h;->g:Landroid/content/res/AssetFileDescriptor;

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :cond_1
    iput-object v0, p0, Le/m/a/c/p1/h;->g:Landroid/content/res/AssetFileDescriptor;

    .line 8
    iget-boolean v0, p0, Le/m/a/c/p1/h;->j:Z

    if-eqz v0, :cond_2

    .line 9
    iput-boolean v1, p0, Le/m/a/c/p1/h;->j:Z

    .line 10
    invoke-virtual {p0}, Le/m/a/c/p1/g;->e()V

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 11
    :try_start_2
    new-instance v3, Le/m/a/c/p1/h$a;

    invoke-direct {v3, v2}, Le/m/a/c/p1/h$a;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    :goto_0
    iput-object v0, p0, Le/m/a/c/p1/h;->g:Landroid/content/res/AssetFileDescriptor;

    .line 13
    iget-boolean v0, p0, Le/m/a/c/p1/h;->j:Z

    if-eqz v0, :cond_3

    .line 14
    iput-boolean v1, p0, Le/m/a/c/p1/h;->j:Z

    .line 15
    invoke-virtual {p0}, Le/m/a/c/p1/g;->e()V

    .line 16
    :cond_3
    throw v2

    :catchall_1
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    .line 17
    :try_start_3
    new-instance v3, Le/m/a/c/p1/h$a;

    invoke-direct {v3, v2}, Le/m/a/c/p1/h$a;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 18
    :goto_1
    iput-object v0, p0, Le/m/a/c/p1/h;->h:Ljava/io/FileInputStream;

    .line 19
    :try_start_4
    iget-object v3, p0, Le/m/a/c/p1/h;->g:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_4

    .line 20
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 21
    :cond_4
    iput-object v0, p0, Le/m/a/c/p1/h;->g:Landroid/content/res/AssetFileDescriptor;

    .line 22
    iget-boolean v0, p0, Le/m/a/c/p1/h;->j:Z

    if-eqz v0, :cond_5

    .line 23
    iput-boolean v1, p0, Le/m/a/c/p1/h;->j:Z

    .line 24
    invoke-virtual {p0}, Le/m/a/c/p1/g;->e()V

    .line 25
    :cond_5
    throw v2

    :catchall_2
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 26
    :try_start_5
    new-instance v3, Le/m/a/c/p1/h$a;

    invoke-direct {v3, v2}, Le/m/a/c/p1/h$a;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 27
    :goto_2
    iput-object v0, p0, Le/m/a/c/p1/h;->g:Landroid/content/res/AssetFileDescriptor;

    .line 28
    iget-boolean v0, p0, Le/m/a/c/p1/h;->j:Z

    if-eqz v0, :cond_6

    .line 29
    iput-boolean v1, p0, Le/m/a/c/p1/h;->j:Z

    .line 30
    invoke-virtual {p0}, Le/m/a/c/p1/g;->e()V

    .line 31
    :cond_6
    throw v2
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/p1/h;->f:Landroid/net/Uri;

    return-object v0
.end method

.method public read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/p1/h$a;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-wide v0, p0, Le/m/a/c/p1/h;->i:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    if-nez v2, :cond_1

    return v3

    :cond_1
    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    int-to-long v6, p3

    .line 2
    :try_start_0
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 3
    :goto_0
    iget-object v0, p0, Le/m/a/c/p1/h;->h:Ljava/io/FileInputStream;

    .line 4
    sget v1, Le/m/a/c/q1/d0;->a:I

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v3, :cond_4

    .line 6
    iget-wide p1, p0, Le/m/a/c/p1/h;->i:J

    cmp-long p1, p1, v4

    if-nez p1, :cond_3

    return v3

    .line 7
    :cond_3
    new-instance p1, Le/m/a/c/p1/h$a;

    new-instance p2, Ljava/io/EOFException;

    invoke-direct {p2}, Ljava/io/EOFException;-><init>()V

    invoke-direct {p1, p2}, Le/m/a/c/p1/h$a;-><init>(Ljava/io/IOException;)V

    throw p1

    .line 8
    :cond_4
    iget-wide p2, p0, Le/m/a/c/p1/h;->i:J

    cmp-long v0, p2, v4

    if-eqz v0, :cond_5

    int-to-long v0, p1

    sub-long/2addr p2, v0

    .line 9
    iput-wide p2, p0, Le/m/a/c/p1/h;->i:J

    .line 10
    :cond_5
    invoke-virtual {p0, p1}, Le/m/a/c/p1/g;->d(I)V

    return p1

    :catch_0
    move-exception p1

    .line 11
    new-instance p2, Le/m/a/c/p1/h$a;

    invoke-direct {p2, p1}, Le/m/a/c/p1/h$a;-><init>(Ljava/io/IOException;)V

    throw p2
.end method
