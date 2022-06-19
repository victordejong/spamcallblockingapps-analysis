.class public Ls3/b/a/f/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls3/b/a/f/i$b;,
        Ls3/b/a/f/i$c;,
        Ls3/b/a/f/i$d;
    }
.end annotation


# instance fields
.field public final a:Landroid/media/MediaMuxer;

.field public final b:Ls3/b/a/f/i$b;

.field public c:Landroid/media/MediaFormat;

.field public d:Landroid/media/MediaFormat;

.field public e:I

.field public f:I

.field public g:Ljava/nio/ByteBuffer;

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls3/b/a/f/i$c;",
            ">;"
        }
    .end annotation
.end field

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/media/MediaMuxer;Ls3/b/a/f/i$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ls3/b/a/f/i;->a:Landroid/media/MediaMuxer;

    .line 3
    iput-object p2, p0, Ls3/b/a/f/i;->b:Ls3/b/a/f/i$b;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ls3/b/a/f/i;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ls3/b/a/f/i$d;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget p1, p0, Ls3/b/a/f/i;->f:I

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    iget p1, p0, Ls3/b/a/f/i;->e:I

    return p1
.end method

.method public b(Ls3/b/a/f/i$d;Landroid/media/MediaFormat;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v1, :cond_0

    .line 2
    iput-object p2, p0, Ls3/b/a/f/i;->d:Landroid/media/MediaFormat;

    if-nez p2, :cond_2

    .line 3
    iput v0, p0, Ls3/b/a/f/i;->f:I

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_1
    iput-object p2, p0, Ls3/b/a/f/i;->c:Landroid/media/MediaFormat;

    .line 6
    :cond_2
    :goto_0
    iget-object p1, p0, Ls3/b/a/f/i;->c:Landroid/media/MediaFormat;

    if-eqz p1, :cond_f

    iget-object p1, p0, Ls3/b/a/f/i;->d:Landroid/media/MediaFormat;

    if-nez p1, :cond_3

    iget p1, p0, Ls3/b/a/f/i;->f:I

    if-eq p1, v0, :cond_3

    goto/16 :goto_5

    .line 7
    :cond_3
    iget-object p1, p0, Ls3/b/a/f/i;->b:Ls3/b/a/f/i$b;

    check-cast p1, Ls3/b/a/f/f$a;

    .line 8
    iget-object p2, p1, Ls3/b/a/f/f$a;->a:Ls3/b/a/f/f;

    .line 9
    iget-object p2, p2, Ls3/b/a/f/f;->b:Ls3/b/a/f/k;

    .line 10
    invoke-interface {p2}, Ls3/b/a/f/k;->e()Landroid/media/MediaFormat;

    move-result-object p2

    const-string v0, "mime"

    .line 11
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "video/avc"

    .line 12
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v2, "csd-0"

    .line 13
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 14
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 15
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const/4 p2, 0x3

    new-array v3, p2, [B

    .line 17
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 18
    sget-object v4, Ls3/b/a/h/a;->a:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x4

    .line 19
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 20
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    aput-byte v4, v3, p2

    .line 21
    sget-object p2, Ls3/b/a/h/a;->b:[B

    invoke-static {v3, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 22
    :goto_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    const/16 v3, 0x67

    if-eq p2, v3, :cond_6

    const/16 v3, 0x27

    if-eq p2, v3, :cond_6

    const/16 v3, 0x47

    if-ne p2, v3, :cond_5

    goto :goto_2

    .line 23
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Got non SPS NAL data."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_6
    :goto_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p2

    const/4 v2, 0x0

    .line 25
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p2

    const/16 v3, 0x42

    if-ne p2, v3, :cond_c

    .line 26
    iget-object p1, p1, Ls3/b/a/f/f$a;->a:Ls3/b/a/f/f;

    .line 27
    iget-object p1, p1, Ls3/b/a/f/f;->c:Ls3/b/a/f/k;

    .line 28
    invoke-interface {p1}, Ls3/b/a/f/k;->e()Landroid/media/MediaFormat;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 29
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "audio/mp4a-latm"

    .line 30
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_3

    .line 31
    :cond_7
    new-instance p2, Ls3/b/a/f/e;

    const-string v0, "Audio codecs other than AAC is not supported, actual mime type: "

    invoke-static {v0, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ls3/b/a/f/e;-><init>(Ljava/lang/String;)V

    throw p2

    .line 32
    :cond_8
    :goto_3
    iget-object p1, p0, Ls3/b/a/f/i;->a:Landroid/media/MediaMuxer;

    iget-object p2, p0, Ls3/b/a/f/i;->c:Landroid/media/MediaFormat;

    invoke-virtual {p1, p2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1

    iput p1, p0, Ls3/b/a/f/i;->e:I

    .line 33
    iget-object p1, p0, Ls3/b/a/f/i;->c:Landroid/media/MediaFormat;

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    iget-object p1, p0, Ls3/b/a/f/i;->d:Landroid/media/MediaFormat;

    if-eqz p1, :cond_9

    .line 35
    iget-object p2, p0, Ls3/b/a/f/i;->a:Landroid/media/MediaMuxer;

    invoke-virtual {p2, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1

    iput p1, p0, Ls3/b/a/f/i;->f:I

    .line 36
    iget-object p1, p0, Ls3/b/a/f/i;->d:Landroid/media/MediaFormat;

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    :cond_9
    iget-object p1, p0, Ls3/b/a/f/i;->a:Landroid/media/MediaMuxer;

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->start()V

    .line 38
    iput-boolean v1, p0, Ls3/b/a/f/i;->i:Z

    .line 39
    iget-object p1, p0, Ls3/b/a/f/i;->g:Ljava/nio/ByteBuffer;

    if-nez p1, :cond_a

    .line 40
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Ls3/b/a/f/i;->g:Ljava/nio/ByteBuffer;

    .line 41
    :cond_a
    iget-object p1, p0, Ls3/b/a/f/i;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 42
    iget-object p1, p0, Ls3/b/a/f/i;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    iget-object p1, p0, Ls3/b/a/f/i;->g:Ljava/nio/ByteBuffer;

    .line 43
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    .line 44
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 45
    iget-object p2, p0, Ls3/b/a/f/i;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls3/b/a/f/i$c;

    .line 46
    iget v5, v0, Ls3/b/a/f/i$c;->b:I

    iget-wide v6, v0, Ls3/b/a/f/i$c;->c:J

    iget v8, v0, Ls3/b/a/f/i$c;->d:I

    move-object v3, p1

    move v4, v2

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 47
    iget-object v1, p0, Ls3/b/a/f/i;->a:Landroid/media/MediaMuxer;

    .line 48
    iget-object v3, v0, Ls3/b/a/f/i$c;->a:Ls3/b/a/f/i$d;

    .line 49
    invoke-virtual {p0, v3}, Ls3/b/a/f/i;->a(Ls3/b/a/f/i$d;)I

    move-result v3

    iget-object v4, p0, Ls3/b/a/f/i;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3, v4, p1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 50
    iget v0, v0, Ls3/b/a/f/i$c;->b:I

    add-int/2addr v2, v0

    goto :goto_4

    .line 51
    :cond_b
    iget-object p1, p0, Ls3/b/a/f/i;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Ls3/b/a/f/i;->g:Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 53
    :cond_c
    new-instance p1, Ls3/b/a/f/e;

    const-string v0, "Non-baseline AVC video profile is not supported by Android OS, actual profile_idc: "

    invoke-static {v0, p2}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ls3/b/a/f/e;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AVC NAL start code does not found in csd."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_e
    new-instance p1, Ls3/b/a/f/e;

    const-string p2, "Video codecs other than AVC is not supported, actual mime type: "

    invoke-static {p2, v2}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ls3/b/a/f/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    :goto_5
    return-void
.end method

.method public c(Ls3/b/a/f/i$d;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Ls3/b/a/f/i;->i:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ls3/b/a/f/i;->a:Landroid/media/MediaMuxer;

    invoke-virtual {p0, p1}, Ls3/b/a/f/i;->a(Ls3/b/a/f/i$d;)I

    move-result p1

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void

    .line 3
    :cond_0
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 4
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    iget-object v0, p0, Ls3/b/a/f/i;->g:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    const/high16 v0, 0x10000

    .line 6
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ls3/b/a/f/i;->g:Ljava/nio/ByteBuffer;

    .line 7
    :cond_1
    iget-object v0, p0, Ls3/b/a/f/i;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 8
    iget-object p2, p0, Ls3/b/a/f/i;->h:Ljava/util/List;

    new-instance v0, Ls3/b/a/f/i$c;

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p3, v2}, Ls3/b/a/f/i$c;-><init>(Ls3/b/a/f/i$d;ILandroid/media/MediaCodec$BufferInfo;Ls3/b/a/f/i$a;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
