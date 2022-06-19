.class public Lio/agora/rtc/gl/JavaI420Buffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtc/gl/VideoFrame$I420Buffer;


# instance fields
.field private final dataU:Ljava/nio/ByteBuffer;

.field private final dataV:Ljava/nio/ByteBuffer;

.field private final dataY:Ljava/nio/ByteBuffer;

.field private final height:I

.field private refCount:I

.field private final refCountLock:Ljava/lang/Object;

.field private final releaseCallback:Ljava/lang/Runnable;

.field private final strideU:I

.field private final strideV:I

.field private final strideY:I

.field private final width:I


# direct methods
.method private constructor <init>(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/gl/JavaI420Buffer;->refCountLock:Ljava/lang/Object;

    .line 3
    iput p1, p0, Lio/agora/rtc/gl/JavaI420Buffer;->width:I

    .line 4
    iput p2, p0, Lio/agora/rtc/gl/JavaI420Buffer;->height:I

    .line 5
    iput-object p3, p0, Lio/agora/rtc/gl/JavaI420Buffer;->dataY:Ljava/nio/ByteBuffer;

    .line 6
    iput-object p5, p0, Lio/agora/rtc/gl/JavaI420Buffer;->dataU:Ljava/nio/ByteBuffer;

    .line 7
    iput-object p7, p0, Lio/agora/rtc/gl/JavaI420Buffer;->dataV:Ljava/nio/ByteBuffer;

    .line 8
    iput p4, p0, Lio/agora/rtc/gl/JavaI420Buffer;->strideY:I

    .line 9
    iput p6, p0, Lio/agora/rtc/gl/JavaI420Buffer;->strideU:I

    .line 10
    iput p8, p0, Lio/agora/rtc/gl/JavaI420Buffer;->strideV:I

    .line 11
    iput-object p9, p0, Lio/agora/rtc/gl/JavaI420Buffer;->releaseCallback:Ljava/lang/Runnable;

    const/4 p1, 0x1

    .line 12
    iput p1, p0, Lio/agora/rtc/gl/JavaI420Buffer;->refCount:I

    return-void
.end method

.method public static allocate(II)Lio/agora/rtc/gl/JavaI420Buffer;
    .locals 12

    add-int/lit8 v0, p1, 0x1

    .line 1
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, p0, 0x1

    .line 2
    div-int/lit8 v10, v1, 0x2

    mul-int v1, p0, p1

    add-int/lit8 v2, v1, 0x0

    mul-int v3, v10, v0

    add-int v4, v2, v3

    mul-int/lit8 v5, v10, 0x2

    mul-int/2addr v5, v0

    add-int/2addr v5, v1

    .line 3
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 7
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 8
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 10
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr v4, v3

    .line 11
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 12
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 13
    new-instance v0, Lio/agora/rtc/gl/JavaI420Buffer;

    const/4 v11, 0x0

    move-object v2, v0

    move v3, p0

    move v4, p1

    move v6, p0

    move v8, v10

    invoke-direct/range {v2 .. v11}, Lio/agora/rtc/gl/JavaI420Buffer;-><init>(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/lang/Runnable;)V

    return-object v0
.end method

.method public static createYUV([BII)Lio/agora/rtc/gl/JavaI420Buffer;
    .locals 6

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1, p2}, Lio/agora/rtc/gl/JavaI420Buffer;->allocate(II)Lio/agora/rtc/gl/JavaI420Buffer;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lio/agora/rtc/gl/JavaI420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lio/agora/rtc/gl/JavaI420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lio/agora/rtc/gl/JavaI420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    .line 6
    div-int/lit8 v3, v3, 0x2

    .line 7
    invoke-virtual {p1}, Lio/agora/rtc/gl/JavaI420Buffer;->getStrideY()I

    move-result v4

    mul-int/2addr v4, p2

    .line 8
    invoke-virtual {p1}, Lio/agora/rtc/gl/JavaI420Buffer;->getStrideU()I

    move-result p2

    mul-int/2addr p2, v3

    .line 9
    invoke-virtual {p1}, Lio/agora/rtc/gl/JavaI420Buffer;->getStrideV()I

    move-result v5

    mul-int/2addr v5, v3

    const/4 v3, 0x0

    .line 10
    invoke-virtual {v0, p0, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {v1, p0, v4, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v4, p2

    .line 12
    invoke-virtual {v2, p0, v4, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static wrap(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/lang/Runnable;)Lio/agora/rtc/gl/JavaI420Buffer;
    .locals 11

    if-eqz p2, :cond_4

    if-eqz p4, :cond_4

    if-eqz p6, :cond_4

    .line 1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 3
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 4
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v7

    add-int/lit8 v0, p1, 0x1

    .line 5
    div-int/lit8 v0, v0, 0x2

    mul-int v1, p3, p1

    mul-int v2, p5, v0

    mul-int v0, v0, p7

    .line 6
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    const-string v6, " bytes."

    if-lt v4, v1, :cond_2

    .line 7
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-lt v1, v2, :cond_1

    .line 8
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 9
    new-instance v10, Lio/agora/rtc/gl/JavaI420Buffer;

    move-object v0, v10

    move v1, p0

    move v2, p1

    move v4, p3

    move/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lio/agora/rtc/gl/JavaI420Buffer;-><init>(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/lang/Runnable;)V

    return-object v10

    .line 10
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "V-buffer must be at least "

    invoke-static {v2, v0, v6}, Le/d/c/a/a;->l2(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "U-buffer must be at least "

    invoke-static {v1, v2, v6}, Le/d/c/a/a;->l2(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Y-buffer must be at least "

    invoke-static {v2, v1, v6}, Le/d/c/a/a;->l2(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Data buffers must be direct byte buffers."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Data buffers cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cropAndScale(IIIIII)Lio/agora/rtc/gl/VideoFrame$Buffer;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lio/agora/rtc/gl/VideoFrame;->cropAndScaleI420(Lio/agora/rtc/gl/VideoFrame$I420Buffer;IIIIII)Lio/agora/rtc/gl/VideoFrame$Buffer;

    move-result-object p1

    return-object p1
.end method

.method public getDataU()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/JavaI420Buffer;->dataU:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getDataV()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/JavaI420Buffer;->dataV:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getDataY()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/JavaI420Buffer;->dataY:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lio/agora/rtc/gl/JavaI420Buffer;->height:I

    return v0
.end method

.method public getStrideU()I
    .locals 1

    .line 1
    iget v0, p0, Lio/agora/rtc/gl/JavaI420Buffer;->strideU:I

    return v0
.end method

.method public getStrideV()I
    .locals 1

    .line 1
    iget v0, p0, Lio/agora/rtc/gl/JavaI420Buffer;->strideV:I

    return v0
.end method

.method public getStrideY()I
    .locals 1

    .line 1
    iget v0, p0, Lio/agora/rtc/gl/JavaI420Buffer;->strideY:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lio/agora/rtc/gl/JavaI420Buffer;->width:I

    return v0
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/JavaI420Buffer;->refCountLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lio/agora/rtc/gl/JavaI420Buffer;->refCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/agora/rtc/gl/JavaI420Buffer;->refCount:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/agora/rtc/gl/JavaI420Buffer;->releaseCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public retain()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/JavaI420Buffer;->refCountLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lio/agora/rtc/gl/JavaI420Buffer;->refCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/agora/rtc/gl/JavaI420Buffer;->refCount:I

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toI420()Lio/agora/rtc/gl/VideoFrame$I420Buffer;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/agora/rtc/gl/JavaI420Buffer;->retain()V

    return-object p0
.end method
