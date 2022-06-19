.class public Ln3/y/b/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ln3/y/b/a/w0/l;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:I

.field public final h:Z

.field public final i:J

.field public j:I

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 12

    .line 1
    new-instance v0, Ln3/y/b/a/w0/l;

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Ln3/y/b/a/w0/l;-><init>(ZI)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x9c4

    const/4 v3, 0x0

    const-string v4, "bufferForPlaybackMs"

    const-string v5, "0"

    .line 3
    invoke-static {v2, v3, v4, v5}, Ln3/y/b/a/d;->a(IILjava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x1388

    const-string v7, "bufferForPlaybackAfterRebufferMs"

    .line 4
    invoke-static {v6, v3, v7, v5}, Ln3/y/b/a/d;->a(IILjava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x3a98

    const-string v9, "minBufferAudioMs"

    .line 5
    invoke-static {v8, v2, v9, v4}, Ln3/y/b/a/d;->a(IILjava/lang/String;Ljava/lang/String;)V

    const v10, 0xc350

    const-string v11, "minBufferVideoMs"

    .line 6
    invoke-static {v10, v2, v11, v4}, Ln3/y/b/a/d;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {v8, v6, v9, v7}, Ln3/y/b/a/d;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {v10, v6, v11, v7}, Ln3/y/b/a/d;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v4, "maxBufferMs"

    .line 9
    invoke-static {v10, v8, v4, v9}, Ln3/y/b/a/d;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {v10, v10, v4, v11}, Ln3/y/b/a/d;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v4, "backBufferDurationMs"

    .line 11
    invoke-static {v3, v3, v4, v5}, Ln3/y/b/a/d;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 12
    iput-object v0, p0, Ln3/y/b/a/d;->a:Ln3/y/b/a/w0/l;

    int-to-long v4, v8

    .line 13
    invoke-static {v4, v5}, Ln3/y/b/a/c;->a(J)J

    move-result-wide v4

    iput-wide v4, p0, Ln3/y/b/a/d;->b:J

    int-to-long v4, v10

    .line 14
    invoke-static {v4, v5}, Ln3/y/b/a/c;->a(J)J

    move-result-wide v7

    iput-wide v7, p0, Ln3/y/b/a/d;->c:J

    .line 15
    invoke-static {v4, v5}, Ln3/y/b/a/c;->a(J)J

    move-result-wide v4

    iput-wide v4, p0, Ln3/y/b/a/d;->d:J

    int-to-long v4, v2

    .line 16
    invoke-static {v4, v5}, Ln3/y/b/a/c;->a(J)J

    move-result-wide v4

    iput-wide v4, p0, Ln3/y/b/a/d;->e:J

    int-to-long v4, v6

    .line 17
    invoke-static {v4, v5}, Ln3/y/b/a/c;->a(J)J

    move-result-wide v4

    iput-wide v4, p0, Ln3/y/b/a/d;->f:J

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Ln3/y/b/a/d;->g:I

    .line 19
    iput-boolean v1, p0, Ln3/y/b/a/d;->h:Z

    int-to-long v0, v3

    .line 20
    invoke-static {v0, v1}, Ln3/y/b/a/c;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Ln3/y/b/a/d;->i:J

    return-void
.end method

.method public static a(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x15

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be less than "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->q(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Ln3/y/b/a/d;->j:I

    .line 2
    iput-boolean v0, p0, Ln3/y/b/a/d;->k:Z

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Ln3/y/b/a/d;->a:Ln3/y/b/a/w0/l;

    .line 4
    monitor-enter p1

    .line 5
    :try_start_0
    iget-boolean v1, p1, Ln3/y/b/a/w0/l;->a:Z

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p1, v0}, Ln3/y/b/a/w0/l;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
