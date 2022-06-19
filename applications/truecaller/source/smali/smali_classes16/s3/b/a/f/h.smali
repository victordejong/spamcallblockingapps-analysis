.class public Ls3/b/a/f/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls3/b/a/f/k;


# instance fields
.field public final a:Landroid/media/MediaExtractor;

.field public final b:I

.field public final c:Ls3/b/a/f/i;

.field public final d:Ls3/b/a/f/i$d;

.field public final e:Landroid/media/MediaCodec$BufferInfo;

.field public f:I

.field public g:Ljava/nio/ByteBuffer;

.field public h:Z

.field public i:Landroid/media/MediaFormat;

.field public j:J


# direct methods
.method public constructor <init>(Landroid/media/MediaExtractor;ILs3/b/a/f/i;Ls3/b/a/f/i$d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Ls3/b/a/f/h;->e:Landroid/media/MediaCodec$BufferInfo;

    .line 3
    iput-object p1, p0, Ls3/b/a/f/h;->a:Landroid/media/MediaExtractor;

    .line 4
    iput p2, p0, Ls3/b/a/f/h;->b:I

    .line 5
    iput-object p3, p0, Ls3/b/a/f/h;->c:Ls3/b/a/f/i;

    .line 6
    iput-object p4, p0, Ls3/b/a/f/h;->d:Ls3/b/a/f/i$d;

    if-ltz p2, :cond_0

    .line 7
    invoke-virtual {p1, p2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Ls3/b/a/f/h;->i:Landroid/media/MediaFormat;

    .line 8
    invoke-virtual {p3, p4, p1}, Ls3/b/a/f/i;->b(Ls3/b/a/f/i$d;Landroid/media/MediaFormat;)V

    .line 9
    iget-object p1, p0, Ls3/b/a/f/h;->i:Landroid/media/MediaFormat;

    const-string p2, "max-input-size"

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ls3/b/a/f/h;->f:I

    .line 10
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Ls3/b/a/f/h;->g:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 11
    :cond_0
    sget-object p1, Ls3/b/a/f/i$d;->b:Ls3/b/a/f/i$d;

    if-ne p4, p1, :cond_1

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p3, p4, p1}, Ls3/b/a/f/i;->b(Ls3/b/a/f/i$d;Landroid/media/MediaFormat;)V

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Ls3/b/a/f/h;->h:Z

    const-wide/16 p1, 0x0

    .line 14
    iput-wide p1, p0, Ls3/b/a/f/h;->j:J

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 10

    .line 1
    iget-boolean v0, p0, Ls3/b/a/f/h;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Ls3/b/a/f/h;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v0

    const/4 v2, 0x1

    if-gez v0, :cond_1

    .line 3
    iget-object v0, p0, Ls3/b/a/f/h;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 4
    iget-object v3, p0, Ls3/b/a/f/h;->e:Landroid/media/MediaCodec$BufferInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 5
    iget-object v0, p0, Ls3/b/a/f/h;->c:Ls3/b/a/f/i;

    iget-object v1, p0, Ls3/b/a/f/h;->d:Ls3/b/a/f/i$d;

    iget-object v3, p0, Ls3/b/a/f/h;->g:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Ls3/b/a/f/h;->e:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v1, v3, v4}, Ls3/b/a/f/i;->c(Ls3/b/a/f/i$d;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 6
    iput-boolean v2, p0, Ls3/b/a/f/h;->h:Z

    return v2

    .line 7
    :cond_1
    iget v3, p0, Ls3/b/a/f/h;->b:I

    if-eq v0, v3, :cond_2

    return v1

    .line 8
    :cond_2
    iget-object v0, p0, Ls3/b/a/f/h;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 9
    iget-object v0, p0, Ls3/b/a/f/h;->a:Landroid/media/MediaExtractor;

    iget-object v3, p0, Ls3/b/a/f/h;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3, v1}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v6

    .line 10
    iget-object v0, p0, Ls3/b/a/f/h;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v0

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    move v9, v2

    goto :goto_0

    :cond_3
    move v9, v1

    .line 11
    :goto_0
    iget-object v4, p0, Ls3/b/a/f/h;->e:Landroid/media/MediaCodec$BufferInfo;

    const/4 v5, 0x0

    iget-object v0, p0, Ls3/b/a/f/h;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v7

    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 12
    iget-object v0, p0, Ls3/b/a/f/h;->c:Ls3/b/a/f/i;

    iget-object v1, p0, Ls3/b/a/f/h;->d:Ls3/b/a/f/i$d;

    iget-object v3, p0, Ls3/b/a/f/h;->g:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Ls3/b/a/f/h;->e:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v1, v3, v4}, Ls3/b/a/f/i;->c(Ls3/b/a/f/i$d;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 13
    iget-object v0, p0, Ls3/b/a/f/h;->e:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, p0, Ls3/b/a/f/h;->j:J

    .line 14
    iget-object v0, p0, Ls3/b/a/f/h;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    return v2
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ls3/b/a/f/h;->j:J

    return-wide v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls3/b/a/f/h;->h:Z

    return v0
.end method

.method public e()Landroid/media/MediaFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Ls3/b/a/f/h;->i:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public release()V
    .locals 0

    return-void
.end method
