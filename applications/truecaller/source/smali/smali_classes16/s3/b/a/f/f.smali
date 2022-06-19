.class public Ls3/b/a/f/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls3/b/a/f/f$b;
    }
.end annotation


# instance fields
.field public a:Ljava/io/FileDescriptor;

.field public b:Ls3/b/a/f/k;

.field public c:Ls3/b/a/f/k;

.field public d:Landroid/media/MediaExtractor;

.field public e:Landroid/media/MediaMuxer;

.field public f:Ls3/b/a/f/f$b;

.field public g:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-wide v1, v0, Ls3/b/a/f/f;->g:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 2
    iget-object v5, v0, Ls3/b/a/f/f;->f:Ls3/b/a/f/f$b;

    if-eqz v5, :cond_0

    .line 3
    check-cast v5, Ls3/b/a/c;

    .line 4
    iget-object v6, v5, Ls3/b/a/c;->a:Ls3/b/a/a$b;

    iget-object v6, v6, Ls3/b/a/a$b;->a:Landroid/os/Handler;

    new-instance v7, Ls3/b/a/b;

    invoke-direct {v7, v5, v1, v2}, Ls3/b/a/b;-><init>(Ls3/b/a/c;D)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    move-wide v1, v3

    .line 5
    :goto_0
    iget-object v5, v0, Ls3/b/a/f/f;->b:Ls3/b/a/f/k;

    invoke-interface {v5}, Ls3/b/a/f/k;->d()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v0, Ls3/b/a/f/f;->c:Ls3/b/a/f/k;

    invoke-interface {v5}, Ls3/b/a/f/k;->d()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    return-void

    .line 6
    :cond_2
    :goto_1
    iget-object v5, v0, Ls3/b/a/f/f;->b:Ls3/b/a/f/k;

    invoke-interface {v5}, Ls3/b/a/f/k;->a()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, v0, Ls3/b/a/f/f;->c:Ls3/b/a/f/k;

    .line 7
    invoke-interface {v5}, Ls3/b/a/f/k;->a()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v5, 0x1

    :goto_3
    const-wide/16 v6, 0x1

    add-long/2addr v1, v6

    .line 8
    iget-wide v6, v0, Ls3/b/a/f/f;->g:J

    cmp-long v6, v6, v3

    const-wide/16 v7, 0xa

    if-lez v6, :cond_7

    rem-long v9, v1, v7

    cmp-long v6, v9, v3

    if-nez v6, :cond_7

    .line 9
    iget-object v6, v0, Ls3/b/a/f/f;->b:Ls3/b/a/f/k;

    invoke-interface {v6}, Ls3/b/a/f/k;->d()Z

    move-result v6

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    if-eqz v6, :cond_5

    move-wide v11, v9

    goto :goto_4

    :cond_5
    iget-object v6, v0, Ls3/b/a/f/f;->b:Ls3/b/a/f/k;

    invoke-interface {v6}, Ls3/b/a/f/k;->c()J

    move-result-wide v11

    long-to-double v11, v11

    iget-wide v13, v0, Ls3/b/a/f/f;->g:J

    long-to-double v13, v13

    div-double/2addr v11, v13

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    .line 10
    :goto_4
    iget-object v6, v0, Ls3/b/a/f/f;->c:Ls3/b/a/f/k;

    invoke-interface {v6}, Ls3/b/a/f/k;->d()Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_5

    :cond_6
    iget-object v6, v0, Ls3/b/a/f/f;->c:Ls3/b/a/f/k;

    invoke-interface {v6}, Ls3/b/a/f/k;->c()J

    move-result-wide v13

    long-to-double v13, v13

    iget-wide v3, v0, Ls3/b/a/f/f;->g:J

    long-to-double v3, v3

    div-double/2addr v13, v3

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v9

    :goto_5
    add-double/2addr v11, v9

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v11, v3

    .line 11
    iget-object v3, v0, Ls3/b/a/f/f;->f:Ls3/b/a/f/f$b;

    if-eqz v3, :cond_7

    .line 12
    check-cast v3, Ls3/b/a/c;

    .line 13
    iget-object v4, v3, Ls3/b/a/c;->a:Ls3/b/a/a$b;

    iget-object v4, v4, Ls3/b/a/a$b;->a:Landroid/os/Handler;

    new-instance v6, Ls3/b/a/b;

    invoke-direct {v6, v3, v11, v12}, Ls3/b/a/b;-><init>(Ls3/b/a/c;D)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    if-nez v5, :cond_8

    .line 14
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    :cond_8
    const-wide/16 v3, 0x0

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 2
    iget-object v1, p0, Ls3/b/a/f/f;->a:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    const/16 v1, 0x18

    .line 3
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    :try_start_0
    iget-object v2, p0, Ls3/b/a/f/f;->e:Landroid/media/MediaMuxer;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/16 v1, 0x17

    .line 5
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "([+\\-][0-9.]+)([+\\-][0-9.]+)"

    .line 6
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_0

    .line 9
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 11
    :try_start_1
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 12
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    new-array v6, v6, [F

    aput v2, v6, v4

    aput v1, v6, v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v6

    :catch_1
    :cond_0
    if-eqz v3, :cond_1

    .line 13
    iget-object v1, p0, Ls3/b/a/f/f;->e:Landroid/media/MediaMuxer;

    aget v2, v3, v4

    aget v3, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMuxer;->setLocation(FF)V

    :cond_1
    const/16 v1, 0x9

    .line 14
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Ls3/b/a/f/f;->g:J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    const-wide/16 v0, -0x1

    .line 15
    iput-wide v0, p0, Ls3/b/a/f/f;->g:J

    :goto_0
    return-void
.end method

.method public final c(Ls3/b/a/g/a;)V
    .locals 10

    .line 1
    iget-object v0, p0, Ls3/b/a/f/f;->d:Landroid/media/MediaExtractor;

    const/4 v1, -0x1

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    move v4, v3

    move v3, v1

    :goto_0
    if-ge v4, v2, :cond_3

    .line 3
    invoke-virtual {v0, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v7

    const-string v8, "mime"

    .line 4
    invoke-virtual {v7, v8}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-gez v1, :cond_0

    const-string v9, "video/"

    .line 5
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v1, v4

    move-object v5, v7

    goto :goto_1

    :cond_0
    if-gez v3, :cond_1

    const-string v9, "audio/"

    .line 6
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v3, v4

    move-object v6, v7

    :cond_1
    :goto_1
    if-ltz v1, :cond_2

    if-ltz v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-ltz v1, :cond_9

    .line 7
    invoke-interface {p1, v5}, Ls3/b/a/g/a;->b(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

    move-result-object v0

    .line 8
    invoke-interface {p1, v6}, Ls3/b/a/g/a;->a(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

    move-result-object p1

    if-nez v0, :cond_5

    if-eqz p1, :cond_4

    goto :goto_3

    .line 9
    :cond_4
    new-instance p1, Ls3/b/a/f/e;

    const-string v0, "MediaFormatStrategy returned pass-through for both video and audio. No transcoding is necessary."

    invoke-direct {p1, v0}, Ls3/b/a/f/e;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_5
    :goto_3
    new-instance v2, Ls3/b/a/f/i;

    iget-object v4, p0, Ls3/b/a/f/f;->e:Landroid/media/MediaMuxer;

    new-instance v5, Ls3/b/a/f/f$a;

    invoke-direct {v5, p0}, Ls3/b/a/f/f$a;-><init>(Ls3/b/a/f/f;)V

    invoke-direct {v2, v4, v5}, Ls3/b/a/f/i;-><init>(Landroid/media/MediaMuxer;Ls3/b/a/f/i$b;)V

    if-nez v0, :cond_6

    .line 11
    new-instance v0, Ls3/b/a/f/h;

    iget-object v4, p0, Ls3/b/a/f/f;->d:Landroid/media/MediaExtractor;

    sget-object v5, Ls3/b/a/f/i$d;->a:Ls3/b/a/f/i$d;

    invoke-direct {v0, v4, v1, v2, v5}, Ls3/b/a/f/h;-><init>(Landroid/media/MediaExtractor;ILs3/b/a/f/i;Ls3/b/a/f/i$d;)V

    iput-object v0, p0, Ls3/b/a/f/f;->b:Ls3/b/a/f/k;

    goto :goto_4

    .line 12
    :cond_6
    new-instance v4, Ls3/b/a/f/l;

    iget-object v5, p0, Ls3/b/a/f/f;->d:Landroid/media/MediaExtractor;

    invoke-direct {v4, v5, v1, v0, v2}, Ls3/b/a/f/l;-><init>(Landroid/media/MediaExtractor;ILandroid/media/MediaFormat;Ls3/b/a/f/i;)V

    iput-object v4, p0, Ls3/b/a/f/f;->b:Ls3/b/a/f/k;

    .line 13
    :goto_4
    iget-object v0, p0, Ls3/b/a/f/f;->b:Ls3/b/a/f/k;

    invoke-interface {v0}, Ls3/b/a/f/k;->b()V

    if-nez p1, :cond_7

    .line 14
    new-instance p1, Ls3/b/a/f/h;

    iget-object v0, p0, Ls3/b/a/f/f;->d:Landroid/media/MediaExtractor;

    sget-object v4, Ls3/b/a/f/i$d;->b:Ls3/b/a/f/i$d;

    invoke-direct {p1, v0, v3, v2, v4}, Ls3/b/a/f/h;-><init>(Landroid/media/MediaExtractor;ILs3/b/a/f/i;Ls3/b/a/f/i$d;)V

    iput-object p1, p0, Ls3/b/a/f/f;->c:Ls3/b/a/f/k;

    goto :goto_5

    .line 15
    :cond_7
    new-instance v0, Ls3/b/a/f/c;

    iget-object v4, p0, Ls3/b/a/f/f;->d:Landroid/media/MediaExtractor;

    invoke-direct {v0, v4, v3, p1, v2}, Ls3/b/a/f/c;-><init>(Landroid/media/MediaExtractor;ILandroid/media/MediaFormat;Ls3/b/a/f/i;)V

    iput-object v0, p0, Ls3/b/a/f/f;->c:Ls3/b/a/f/k;

    .line 16
    :goto_5
    iget-object p1, p0, Ls3/b/a/f/f;->c:Ls3/b/a/f/k;

    invoke-interface {p1}, Ls3/b/a/f/k;->b()V

    .line 17
    iget-object p1, p0, Ls3/b/a/f/f;->d:Landroid/media/MediaExtractor;

    invoke-virtual {p1, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    if-ltz v3, :cond_8

    .line 18
    iget-object p1, p0, Ls3/b/a/f/f;->d:Landroid/media/MediaExtractor;

    invoke-virtual {p1, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    :cond_8
    return-void

    .line 19
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "extractor does not contain video track."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Ljava/lang/String;Ls3/b/a/g/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "Could not shutdown extractor, codecs and muxer pipeline."

    const-string v1, "Output path cannot be null."

    .line 1
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v1, p0, Ls3/b/a/f/f;->a:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v2, p0, Ls3/b/a/f/f;->d:Landroid/media/MediaExtractor;

    .line 4
    iget-object v3, p0, Ls3/b/a/f/f;->a:Ljava/io/FileDescriptor;

    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 5
    new-instance v2, Landroid/media/MediaMuxer;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Ls3/b/a/f/f;->e:Landroid/media/MediaMuxer;

    .line 6
    invoke-virtual {p0}, Ls3/b/a/f/f;->b()V

    .line 7
    invoke-virtual {p0, p2}, Ls3/b/a/f/f;->c(Ls3/b/a/g/a;)V

    .line 8
    invoke-virtual {p0}, Ls3/b/a/f/f;->a()V

    .line 9
    iget-object p1, p0, Ls3/b/a/f/f;->e:Landroid/media/MediaMuxer;

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    iget-object p1, p0, Ls3/b/a/f/f;->b:Ls3/b/a/f/k;

    if-eqz p1, :cond_0

    .line 11
    invoke-interface {p1}, Ls3/b/a/f/k;->release()V

    .line 12
    iput-object v1, p0, Ls3/b/a/f/f;->b:Ls3/b/a/f/k;

    .line 13
    :cond_0
    iget-object p1, p0, Ls3/b/a/f/f;->c:Ls3/b/a/f/k;

    if-eqz p1, :cond_1

    .line 14
    invoke-interface {p1}, Ls3/b/a/f/k;->release()V

    .line 15
    iput-object v1, p0, Ls3/b/a/f/f;->c:Ls3/b/a/f/k;

    .line 16
    :cond_1
    iget-object p1, p0, Ls3/b/a/f/f;->d:Landroid/media/MediaExtractor;

    if-eqz p1, :cond_2

    .line 17
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->release()V

    .line 18
    iput-object v1, p0, Ls3/b/a/f/f;->d:Landroid/media/MediaExtractor;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 19
    :cond_2
    :try_start_2
    iget-object p1, p0, Ls3/b/a/f/f;->e:Landroid/media/MediaMuxer;

    if-eqz p1, :cond_3

    .line 20
    invoke-virtual {p1}, Landroid/media/MediaMuxer;->release()V

    .line 21
    iput-object v1, p0, Ls3/b/a/f/f;->e:Landroid/media/MediaMuxer;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_3
    return-void

    :catch_1
    move-exception p1

    .line 22
    new-instance p2, Ljava/lang/Error;

    invoke-direct {p2, v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catchall_0
    move-exception p1

    .line 23
    :try_start_3
    iget-object p2, p0, Ls3/b/a/f/f;->b:Ls3/b/a/f/k;

    if-eqz p2, :cond_4

    .line 24
    invoke-interface {p2}, Ls3/b/a/f/k;->release()V

    .line 25
    iput-object v1, p0, Ls3/b/a/f/f;->b:Ls3/b/a/f/k;

    .line 26
    :cond_4
    iget-object p2, p0, Ls3/b/a/f/f;->c:Ls3/b/a/f/k;

    if-eqz p2, :cond_5

    .line 27
    invoke-interface {p2}, Ls3/b/a/f/k;->release()V

    .line 28
    iput-object v1, p0, Ls3/b/a/f/f;->c:Ls3/b/a/f/k;

    .line 29
    :cond_5
    iget-object p2, p0, Ls3/b/a/f/f;->d:Landroid/media/MediaExtractor;

    if-eqz p2, :cond_6

    .line 30
    invoke-virtual {p2}, Landroid/media/MediaExtractor;->release()V

    .line 31
    iput-object v1, p0, Ls3/b/a/f/f;->d:Landroid/media/MediaExtractor;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 32
    :cond_6
    :try_start_4
    iget-object p2, p0, Ls3/b/a/f/f;->e:Landroid/media/MediaMuxer;

    if-eqz p2, :cond_7

    .line 33
    invoke-virtual {p2}, Landroid/media/MediaMuxer;->release()V

    .line 34
    iput-object v1, p0, Ls3/b/a/f/f;->e:Landroid/media/MediaMuxer;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 35
    :catch_2
    :cond_7
    throw p1

    :catch_3
    move-exception p1

    .line 36
    new-instance p2, Ljava/lang/Error;

    invoke-direct {p2, v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 37
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Data source is not set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
