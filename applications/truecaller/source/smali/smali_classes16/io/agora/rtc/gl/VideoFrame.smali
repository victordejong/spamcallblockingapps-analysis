.class public Lio/agora/rtc/gl/VideoFrame;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/gl/VideoFrame$TextureBuffer;,
        Lio/agora/rtc/gl/VideoFrame$I420Buffer;,
        Lio/agora/rtc/gl/VideoFrame$Buffer;
    }
.end annotation


# instance fields
.field private final buffer:Lio/agora/rtc/gl/VideoFrame$Buffer;

.field private final rotation:I

.field private final timestampNs:J


# direct methods
.method public constructor <init>(Lio/agora/rtc/gl/VideoFrame$Buffer;IJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 2
    rem-int/lit8 v0, p2, 0x5a

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lio/agora/rtc/gl/VideoFrame;->buffer:Lio/agora/rtc/gl/VideoFrame$Buffer;

    .line 4
    iput p2, p0, Lio/agora/rtc/gl/VideoFrame;->rotation:I

    .line 5
    iput-wide p3, p0, Lio/agora/rtc/gl/VideoFrame;->timestampNs:J

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rotation must be a multiple of 90"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "buffer not allowed to be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static cropAndScaleI420(Lio/agora/rtc/gl/VideoFrame$I420Buffer;IIIIII)Lio/agora/rtc/gl/VideoFrame$Buffer;
    .locals 19

    move/from16 v8, p3

    move/from16 v9, p5

    if-ne v8, v9, :cond_1

    move/from16 v7, p4

    move/from16 v6, p6

    if-ne v7, v6, :cond_0

    .line 1
    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 3
    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 4
    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getStrideY()I

    move-result v3

    mul-int v3, v3, p2

    add-int v3, v3, p1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    div-int/lit8 v3, p1, 0x2

    div-int/lit8 v4, p2, 0x2

    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getStrideU()I

    move-result v5

    mul-int/2addr v5, v4

    add-int/2addr v5, v3

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 6
    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getStrideV()I

    move-result v5

    mul-int/2addr v5, v4

    add-int/2addr v5, v3

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 7
    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$Buffer;->retain()V

    .line 8
    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$Buffer;->getWidth()I

    move-result v6

    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$Buffer;->getHeight()I

    move-result v7

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 9
    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getStrideY()I

    move-result v9

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getStrideU()I

    move-result v11

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 10
    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getStrideV()I

    move-result v13

    new-instance v14, Lio/agora/rtc/gl/VideoFrame$1;

    move-object/from16 v5, p0

    invoke-direct {v14, v5}, Lio/agora/rtc/gl/VideoFrame$1;-><init>(Lio/agora/rtc/gl/VideoFrame$I420Buffer;)V

    .line 11
    invoke-static/range {v6 .. v14}, Lio/agora/rtc/gl/JavaI420Buffer;->wrap(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/lang/Runnable;)Lio/agora/rtc/gl/JavaI420Buffer;

    move-result-object v0

    return-object v0

    :cond_0
    move-object/from16 v5, p0

    goto :goto_0

    :cond_1
    move-object/from16 v5, p0

    move/from16 v7, p4

    move/from16 v6, p6

    .line 12
    :goto_0
    invoke-static/range {p5 .. p6}, Lio/agora/rtc/gl/JavaI420Buffer;->allocate(II)Lio/agora/rtc/gl/JavaI420Buffer;

    move-result-object v18

    .line 13
    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getStrideY()I

    move-result v1

    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 14
    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getStrideU()I

    move-result v3

    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getStrideV()I

    move-result v5

    .line 15
    invoke-virtual/range {v18 .. v18}, Lio/agora/rtc/gl/JavaI420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual/range {v18 .. v18}, Lio/agora/rtc/gl/JavaI420Buffer;->getStrideY()I

    move-result v11

    invoke-virtual/range {v18 .. v18}, Lio/agora/rtc/gl/JavaI420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 16
    invoke-virtual/range {v18 .. v18}, Lio/agora/rtc/gl/JavaI420Buffer;->getStrideU()I

    move-result v13

    invoke-virtual/range {v18 .. v18}, Lio/agora/rtc/gl/JavaI420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual/range {v18 .. v18}, Lio/agora/rtc/gl/JavaI420Buffer;->getStrideV()I

    move-result v15

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v16, p5

    move/from16 v17, p6

    .line 17
    invoke-static/range {v0 .. v17}, Lio/agora/rtc/gl/VideoFrame;->nativeCropAndScaleI420(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIIIILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    return-object v18
.end method

.method public static final getAgoraFormat(Lio/agora/rtc/gl/VideoFrame$TextureBuffer;)I
    .locals 1

    .line 1
    invoke-interface {p0}, Lio/agora/rtc/gl/VideoFrame$TextureBuffer;->getType()Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    move-result-object p0

    sget-object v0, Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;->OES:Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    if-ne p0, v0, :cond_0

    const/16 p0, 0xb

    goto :goto_0

    :cond_0
    const/16 p0, 0xa

    :goto_0
    return p0
.end method

.method private static native nativeCropAndScaleI420(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIIIILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V
.end method


# virtual methods
.method public getBuffer()Lio/agora/rtc/gl/VideoFrame$Buffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/VideoFrame;->buffer:Lio/agora/rtc/gl/VideoFrame$Buffer;

    return-object v0
.end method

.method public getRotatedHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lio/agora/rtc/gl/VideoFrame;->rotation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/VideoFrame;->buffer:Lio/agora/rtc/gl/VideoFrame$Buffer;

    invoke-interface {v0}, Lio/agora/rtc/gl/VideoFrame$Buffer;->getHeight()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/gl/VideoFrame;->buffer:Lio/agora/rtc/gl/VideoFrame$Buffer;

    invoke-interface {v0}, Lio/agora/rtc/gl/VideoFrame$Buffer;->getWidth()I

    move-result v0

    return v0
.end method

.method public getRotatedWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lio/agora/rtc/gl/VideoFrame;->rotation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/VideoFrame;->buffer:Lio/agora/rtc/gl/VideoFrame$Buffer;

    invoke-interface {v0}, Lio/agora/rtc/gl/VideoFrame$Buffer;->getWidth()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/gl/VideoFrame;->buffer:Lio/agora/rtc/gl/VideoFrame$Buffer;

    invoke-interface {v0}, Lio/agora/rtc/gl/VideoFrame$Buffer;->getHeight()I

    move-result v0

    return v0
.end method

.method public getRotation()I
    .locals 1

    .line 1
    iget v0, p0, Lio/agora/rtc/gl/VideoFrame;->rotation:I

    return v0
.end method

.method public getTimestampNs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtc/gl/VideoFrame;->timestampNs:J

    return-wide v0
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/VideoFrame;->buffer:Lio/agora/rtc/gl/VideoFrame$Buffer;

    invoke-interface {v0}, Lio/agora/rtc/gl/VideoFrame$Buffer;->release()V

    return-void
.end method

.method public retain()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/VideoFrame;->buffer:Lio/agora/rtc/gl/VideoFrame$Buffer;

    invoke-interface {v0}, Lio/agora/rtc/gl/VideoFrame$Buffer;->retain()V

    return-void
.end method
