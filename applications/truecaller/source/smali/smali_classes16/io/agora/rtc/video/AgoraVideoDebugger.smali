.class public Lio/agora/rtc/video/AgoraVideoDebugger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder;
    }
.end annotation


# static fields
.field public static final DIRECT_OES:Z = false

.field public static final ENABLE_DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "AgoraVideoDebugger"

.field public static final VERBOSE:Z = false

.field public static final VERBOSE_DETAIL:Z = false

.field public static capturePreviewHolder:Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder; = null

.field public static droppedTextureFrameCnt:I = 0x0

.field public static i420BufferPreviewHolder:Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder; = null

.field public static observerPreviewHolder:Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder; = null

.field public static textureBufferPreviewHolder:Lio/agora/rtc/video/AgoraVideoDebugger$DebugViewHolder; = null

.field public static textureFrameCnt:I = 0x0

.field public static yuvRender:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertI420ToCompactByteBuffer(Lio/agora/rtc/gl/VideoFrame$I420Buffer;)Ljava/nio/ByteBuffer;
    .locals 13

    .line 1
    invoke-interface {p0}, Lio/agora/rtc/gl/VideoFrame$Buffer;->getWidth()I

    move-result v0

    .line 2
    invoke-interface {p0}, Lio/agora/rtc/gl/VideoFrame$Buffer;->getHeight()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 3
    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v0, 0x1

    .line 4
    div-int/lit8 v3, v3, 0x2

    mul-int v4, v0, v1

    add-int/lit8 v5, v4, 0x0

    mul-int v6, v3, v2

    add-int v7, v5, v6

    mul-int/lit8 v8, v3, 0x2

    mul-int/2addr v8, v2

    add-int/2addr v8, v4

    .line 5
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v8, 0x0

    .line 6
    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 7
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 8
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 9
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 10
    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 11
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 12
    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr v7, v6

    .line 13
    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 14
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 15
    invoke-interface {p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v7

    move v10, v8

    :goto_0
    if-ge v10, v1, :cond_0

    .line 16
    invoke-interface {p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getStrideY()I

    move-result v11

    mul-int/2addr v11, v10

    add-int v12, v11, v0

    .line 17
    invoke-virtual {v7, v12}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 18
    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 19
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 20
    :cond_0
    invoke-interface {p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v0

    move v1, v8

    :goto_1
    if-ge v1, v2, :cond_1

    .line 21
    invoke-interface {p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getStrideU()I

    move-result v7

    mul-int/2addr v7, v1

    add-int v9, v7, v3

    .line 22
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 23
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 24
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 25
    :cond_1
    invoke-interface {p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v0

    move v1, v8

    :goto_2
    if-ge v1, v2, :cond_2

    .line 26
    invoke-interface {p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getStrideV()I

    move-result v5

    mul-int/2addr v5, v1

    add-int v7, v5, v3

    .line 27
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 28
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 29
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 30
    :cond_2
    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object v4
.end method

.method public static convertNv21ToCompactI420([BII)[B
    .locals 12

    mul-int v0, p1, p2

    add-int/lit8 v1, v0, 0x1

    .line 1
    div-int/lit8 v2, p1, 0x2

    .line 2
    div-int/lit8 v3, p2, 0x2

    mul-int/lit8 v4, v0, 0x5

    .line 3
    div-int/lit8 v4, v4, 0x4

    mul-int/lit8 v5, v0, 0x3

    const/4 v6, 0x2

    .line 4
    div-int/2addr v5, v6

    new-array v5, v5, [B

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, p2, :cond_0

    mul-int v9, p1, v8

    .line 5
    invoke-static {p0, v9, v5, v9, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    move p2, v7

    :goto_1
    if-ge p2, v3, :cond_2

    move v8, v7

    :goto_2
    if-ge v8, v2, :cond_1

    mul-int v9, v2, p2

    add-int/2addr v9, v0

    add-int/2addr v9, v8

    mul-int v10, p1, p2

    add-int/2addr v10, v1

    mul-int v11, v6, v8

    add-int/2addr v11, v10

    .line 6
    aget-byte v10, p0, v11

    aput-byte v10, v5, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    move p2, v7

    :goto_3
    if-ge p2, v3, :cond_4

    move v1, v7

    :goto_4
    if-ge v1, v2, :cond_3

    mul-int v8, v2, p2

    add-int/2addr v8, v4

    add-int/2addr v8, v1

    mul-int v9, p1, p2

    add-int/2addr v9, v0

    mul-int v10, v6, v1

    add-int/2addr v10, v9

    .line 7
    aget-byte v9, p0, v10

    aput-byte v9, v5, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_4
    return-object v5
.end method

.method public static convertYv12ToCompactI420([BII)[B
    .locals 13

    add-int/lit8 v0, p1, 0xf

    shr-int/lit8 v0, v0, 0x4

    shl-int/lit8 v0, v0, 0x4

    mul-int v1, v0, p2

    shr-int/lit8 v2, v0, 0x1

    shr-int/lit8 v2, v2, 0x4

    shl-int/lit8 v2, v2, 0x4

    mul-int v3, v2, p2

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v1

    mul-int v4, p1, p2

    .line 1
    div-int/lit8 v5, p1, 0x2

    .line 2
    div-int/lit8 v6, p2, 0x2

    mul-int/lit8 v7, v4, 0x5

    .line 3
    div-int/lit8 v7, v7, 0x4

    mul-int/lit8 v8, v4, 0x3

    .line 4
    div-int/lit8 v8, v8, 0x2

    new-array v8, v8, [B

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, p2, :cond_0

    mul-int v11, v0, v10

    mul-int v12, p1, v10

    .line 5
    invoke-static {p0, v11, v8, v12, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    move p1, v9

    :goto_1
    if-ge p1, v6, :cond_1

    mul-int p2, v2, p1

    add-int/2addr p2, v3

    mul-int v0, v5, p1

    add-int/2addr v0, v4

    .line 6
    invoke-static {p0, p2, v8, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v9, v6, :cond_2

    mul-int p1, v2, v9

    add-int/2addr p1, v1

    mul-int p2, v5, v9

    add-int/2addr p2, v7

    .line 7
    invoke-static {p0, p1, v8, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    return-object v8
.end method

.method public static exampleUsage(Landroid/app/Activity;)Lio/agora/rtc/mediaio/AgoraSurfaceView;
    .locals 3

    .line 1
    new-instance v0, Lio/agora/rtc/mediaio/AgoraSurfaceView;

    invoke-direct {v0, p0}, Lio/agora/rtc/mediaio/AgoraSurfaceView;-><init>(Landroid/content/Context;)V

    const v1, 0x1020002

    .line 2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/16 v1, 0x168

    const/16 v2, 0x280

    .line 3
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    const/4 p0, 0x1

    .line 4
    invoke-virtual {v0, p0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1, p0, p0, v1}, Lio/agora/rtc/video/AgoraVideoDebugger;->setCapturePreview(Lio/agora/rtc/mediaio/AgoraSurfaceView;ZZZZ)V

    return-object v0
.end method

.method public static getAgoraVideoFrameFormat(Lio/agora/rtc/gl/VideoFrame$TextureBuffer;)I
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

.method public static getMediaIOPixelFormat(Lio/agora/rtc/gl/VideoFrame$TextureBuffer;)Lio/agora/rtc/mediaio/MediaIO$PixelFormat;
    .locals 1

    .line 1
    invoke-interface {p0}, Lio/agora/rtc/gl/VideoFrame$TextureBuffer;->getType()Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    move-result-object p0

    sget-object v0, Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;->OES:Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    if-ne p0, v0, :cond_0

    sget-object p0, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->TEXTURE_OES:Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    goto :goto_0

    :cond_0
    sget-object p0, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->TEXTURE_2D:Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    :goto_0
    return-object p0
.end method

.method public static onCaptureVideoFrame([BIIIIIIIIJ)V
    .locals 0

    return-void
.end method

.method public static onDropTextureBuffer(J)V
    .locals 0

    return-void
.end method

.method public static onI420Buffer(Lio/agora/rtc/gl/VideoFrame$I420Buffer;IJ)V
    .locals 0

    return-void
.end method

.method public static onRawBufferAvailable(Lio/agora/rtc/video/VideoCapture;[BIIII)V
    .locals 0

    return-void
.end method

.method public static onTextureAndRawBufferAvailable(Lio/agora/rtc/video/VideoCapture;Lio/agora/rtc/gl/VideoFrame$TextureBuffer;IJ[BI)V
    .locals 0

    return-void
.end method

.method public static onTextureBuffer(Lio/agora/rtc/gl/VideoFrame$TextureBuffer;IJ)V
    .locals 0

    return-void
.end method

.method public static onTextureBufferAvailable(Lio/agora/rtc/video/VideoCapture;Lio/agora/rtc/gl/EglBase$Context;Lio/agora/rtc/gl/VideoFrame$TextureBuffer;IJ)V
    .locals 0

    return-void
.end method

.method public static rawDataDump([BLjava/io/FileOutputStream;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3
    invoke-virtual {v0, p0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 4
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 5
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static reset()V
    .locals 0

    return-void
.end method

.method public static setCapturePreview(Lio/agora/rtc/mediaio/AgoraSurfaceView;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v0, v0, v1}, Lio/agora/rtc/video/AgoraVideoDebugger;->setCapturePreview(Lio/agora/rtc/mediaio/AgoraSurfaceView;ZZZZ)V

    return-void
.end method

.method public static setCapturePreview(Lio/agora/rtc/mediaio/AgoraSurfaceView;ZZZZ)V
    .locals 0

    return-void
.end method

.method public static setI420BufferPreview(Lio/agora/rtc/mediaio/AgoraSurfaceView;)V
    .locals 0

    return-void
.end method

.method public static setObserverPreview(Lio/agora/rtc/mediaio/AgoraSurfaceView;)V
    .locals 0

    return-void
.end method

.method public static setTextureBufferPreview(Lio/agora/rtc/mediaio/AgoraSurfaceView;)V
    .locals 0

    return-void
.end method

.method public static textureDump(Lio/agora/rtc/gl/VideoFrame$TextureBuffer;Ljava/io/FileOutputStream;)V
    .locals 0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p0}, Lio/agora/rtc/gl/VideoFrame$Buffer;->toI420()Lio/agora/rtc/gl/VideoFrame$I420Buffer;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 2
    :cond_1
    :try_start_0
    invoke-static {p0}, Lio/agora/rtc/video/AgoraVideoDebugger;->convertI420ToCompactByteBuffer(Lio/agora/rtc/gl/VideoFrame$I420Buffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 5
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
