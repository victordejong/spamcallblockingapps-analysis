.class public Lio/agora/rtc/utils/YuvUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/utils/YuvUtils$Plane;
    }
.end annotation


# static fields
.field public static final I420:I = 0x23

.field public static final NV21:I = 0x11

.field private static final TAG:Ljava/lang/String; = "YuvUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImageData(Landroid/media/Image;I)[B
    .locals 19

    move/from16 v0, p1

    const/16 v1, 0x11

    const/16 v2, 0x23

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only support COLOR_FormatI420 and COLOR_FormatNV21"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_1
    :goto_0
    invoke-static/range {p0 .. p0}, Lio/agora/rtc/utils/YuvUtils;->supportedImageFormat(Landroid/media/Image;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v4

    .line 5
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 6
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    mul-int v8, v5, v6

    .line 8
    invoke-static {v4}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v4

    mul-int/2addr v4, v8

    div-int/lit8 v4, v4, 0x8

    new-array v4, v4, [B

    const/4 v9, 0x0

    .line 9
    aget-object v10, v7, v9

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v10

    new-array v10, v10, [B

    const/4 v11, 0x1

    move v12, v9

    move v13, v11

    move v14, v13

    move v11, v12

    .line 10
    :goto_1
    array-length v15, v7

    if-ge v9, v15, :cond_d

    const/4 v15, 0x2

    if-eqz v9, :cond_6

    if-eq v9, v13, :cond_4

    if-eq v9, v15, :cond_2

    goto :goto_4

    :cond_2
    if-ne v0, v2, :cond_3

    int-to-double v1, v8

    const-wide/high16 v14, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v1, v14

    double-to-int v1, v1

    move v12, v1

    goto :goto_3

    :cond_3
    if-ne v0, v1, :cond_7

    move v12, v8

    goto :goto_2

    :cond_4
    if-ne v0, v2, :cond_5

    move v12, v8

    goto :goto_3

    :cond_5
    if-ne v0, v1, :cond_7

    add-int/lit8 v1, v8, 0x1

    move v12, v1

    :goto_2
    move v14, v15

    goto :goto_4

    :cond_6
    move v12, v11

    :goto_3
    move v14, v13

    .line 11
    :cond_7
    :goto_4
    aget-object v1, v7, v9

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 12
    aget-object v2, v7, v9

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    .line 13
    aget-object v15, v7, v9

    invoke-virtual {v15}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v15

    if-nez v9, :cond_8

    goto :goto_5

    :cond_8
    move v11, v13

    :goto_5
    shr-int v13, v5, v11

    shr-int v0, v6, v11

    move/from16 v16, v5

    .line 14
    iget v5, v3, Landroid/graphics/Rect;->top:I

    shr-int/2addr v5, v11

    mul-int/2addr v5, v2

    move/from16 v17, v6

    iget v6, v3, Landroid/graphics/Rect;->left:I

    shr-int/2addr v6, v11

    mul-int/2addr v6, v15

    add-int/2addr v6, v5

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v0, :cond_c

    const/4 v6, 0x1

    if-ne v15, v6, :cond_9

    if-ne v14, v6, :cond_9

    .line 15
    invoke-virtual {v1, v4, v12, v13}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v12, v13

    move v6, v13

    goto :goto_8

    :cond_9
    add-int/lit8 v6, v13, -0x1

    mul-int/2addr v6, v15

    add-int/lit8 v6, v6, 0x1

    const/4 v11, 0x0

    .line 16
    invoke-virtual {v1, v10, v11, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_7
    if-ge v11, v13, :cond_a

    mul-int v18, v11, v15

    .line 17
    aget-byte v18, v10, v18

    aput-byte v18, v4, v12

    add-int/2addr v12, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_a
    :goto_8
    add-int/lit8 v11, v0, -0x1

    if-ge v5, v11, :cond_b

    .line 18
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    add-int/2addr v11, v2

    sub-int/2addr v11, v6

    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_c
    add-int/lit8 v9, v9, 0x1

    const/16 v1, 0x11

    const/16 v2, 0x23

    const/4 v11, 0x0

    const/4 v13, 0x1

    move/from16 v0, p1

    move/from16 v5, v16

    move/from16 v6, v17

    goto/16 :goto_1

    :cond_d
    return-object v4

    .line 19
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "can\'t convert Image to byte array, format "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static supportedImageFormat(Landroid/media/Image;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result p0

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    const/16 v0, 0x23

    if-eq p0, v0, :cond_0

    const v0, 0x32315659

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static write420ImageToFile(Landroid/media/Image;Ljava/lang/String;)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p0}, Lio/agora/rtc/utils/YuvUtils;->yuv420toNV21(Landroid/media/Image;)[B

    move-result-object v1

    .line 2
    :try_start_0
    new-instance v6, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result p0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 p0, 0x64

    invoke-virtual {v6, v1, p0, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 5
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 7
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 9
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 10
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 11
    :try_start_1
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    .line 12
    :goto_1
    throw p0
.end method

.method public static writeNV21ToFile([BIILjava/lang/String;)Z
    .locals 7

    .line 1
    new-instance v6, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 2
    new-instance p0, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3
    :try_start_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 5
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x64

    .line 6
    invoke-virtual {v6, p0, p1, p2}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 7
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 8
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    return v0
.end method

.method public static writeRawData([BLjava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 4
    new-instance p1, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 5
    invoke-virtual {p1, p0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 6
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 7
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 8
    :try_start_1
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    .line 9
    :goto_1
    throw p0

    :cond_1
    :goto_2
    return-void
.end method

.method public static writeRgbaToFile(Ljava/nio/Buffer;IILjava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 3
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 4
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 6
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p2, 0x32

    invoke-virtual {p1, p0, p2, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 7
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->flush()V

    .line 8
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public static yuv420toNV21(Landroid/media/Image;)[B
    .locals 19

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    mul-int v5, v2, v3

    .line 6
    invoke-static {v1}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v1

    mul-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    const/4 v6, 0x0

    .line 7
    aget-object v7, v4, v6

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v7

    new-array v7, v7, [B

    const/4 v8, 0x1

    move v9, v6

    move v10, v9

    move v11, v8

    .line 8
    :goto_0
    array-length v12, v4

    if-ge v9, v12, :cond_8

    const/4 v12, 0x2

    if-eqz v9, :cond_2

    if-eq v9, v8, :cond_1

    if-eq v9, v12, :cond_0

    goto :goto_2

    :cond_0
    move v10, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v10, v5, 0x1

    :goto_1
    move v11, v12

    goto :goto_2

    :cond_2
    move v10, v6

    move v11, v8

    .line 9
    :goto_2
    aget-object v12, v4, v9

    invoke-virtual {v12}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 10
    aget-object v13, v4, v9

    invoke-virtual {v13}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v13

    .line 11
    aget-object v14, v4, v9

    invoke-virtual {v14}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v14

    if-nez v9, :cond_3

    move v15, v6

    goto :goto_3

    :cond_3
    move v15, v8

    :goto_3
    shr-int v6, v2, v15

    shr-int v8, v3, v15

    move/from16 v16, v2

    .line 12
    iget v2, v0, Landroid/graphics/Rect;->top:I

    shr-int/2addr v2, v15

    mul-int/2addr v2, v13

    move/from16 v17, v3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    shr-int/2addr v3, v15

    mul-int/2addr v3, v14

    add-int/2addr v3, v2

    invoke-virtual {v12, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v8, :cond_7

    const/4 v3, 0x1

    if-ne v14, v3, :cond_4

    if-ne v11, v3, :cond_4

    .line 13
    invoke-virtual {v12, v1, v10, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v10, v6

    move v15, v6

    goto :goto_6

    :cond_4
    add-int/lit8 v15, v6, -0x1

    mul-int/2addr v15, v14

    add-int/2addr v15, v3

    const/4 v3, 0x0

    .line 14
    invoke-virtual {v12, v7, v3, v15}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_5
    if-ge v3, v6, :cond_5

    mul-int v18, v3, v14

    .line 15
    aget-byte v18, v7, v18

    aput-byte v18, v1, v10

    add-int/2addr v10, v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    :goto_6
    add-int/lit8 v3, v8, -0x1

    if-ge v2, v3, :cond_6

    .line 16
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v13

    sub-int/2addr v3, v15

    invoke-virtual {v12, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v16

    move/from16 v3, v17

    const/4 v6, 0x0

    const/4 v8, 0x1

    goto :goto_0

    :cond_8
    return-object v1
.end method

.method public static yuv420toNV21(Lio/agora/rtc/gl/VideoFrame$I420Buffer;II)[B
    .locals 17

    move/from16 v0, p1

    move/from16 v1, p2

    .line 19
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x3

    new-array v5, v4, [Lio/agora/rtc/utils/YuvUtils$Plane;

    .line 20
    new-instance v6, Lio/agora/rtc/utils/YuvUtils$Plane;

    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getStrideY()I

    move-result v8

    const/4 v9, 0x1

    invoke-direct {v6, v7, v8, v9}, Lio/agora/rtc/utils/YuvUtils$Plane;-><init>(Ljava/nio/ByteBuffer;II)V

    .line 21
    new-instance v7, Lio/agora/rtc/utils/YuvUtils$Plane;

    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getStrideU()I

    move-result v10

    invoke-direct {v7, v8, v10, v9}, Lio/agora/rtc/utils/YuvUtils$Plane;-><init>(Ljava/nio/ByteBuffer;II)V

    .line 22
    new-instance v8, Lio/agora/rtc/utils/YuvUtils$Plane;

    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getStrideV()I

    move-result v11

    invoke-direct {v8, v10, v11, v9}, Lio/agora/rtc/utils/YuvUtils$Plane;-><init>(Ljava/nio/ByteBuffer;II)V

    aput-object v6, v5, v3

    aput-object v7, v5, v9

    const/4 v6, 0x2

    aput-object v8, v5, v6

    mul-int v7, v0, v1

    const/16 v8, 0x23

    .line 23
    invoke-static {v8}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v8

    mul-int/2addr v8, v7

    div-int/lit8 v8, v8, 0x8

    new-array v8, v8, [B

    .line 24
    aget-object v10, v5, v3

    invoke-virtual {v10}, Lio/agora/rtc/utils/YuvUtils$Plane;->getRowStride()I

    move-result v10

    new-array v10, v10, [B

    move v11, v3

    move v12, v11

    move v13, v9

    :goto_0
    if-ge v11, v4, :cond_8

    if-eqz v11, :cond_2

    if-eq v11, v9, :cond_1

    if-eq v11, v6, :cond_0

    goto :goto_1

    :cond_0
    move v13, v6

    move v12, v7

    goto :goto_1

    :cond_1
    add-int/lit8 v12, v7, 0x1

    move v13, v6

    goto :goto_1

    :cond_2
    move v12, v3

    move v13, v9

    .line 25
    :goto_1
    aget-object v14, v5, v11

    invoke-virtual {v14}, Lio/agora/rtc/utils/YuvUtils$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 26
    aget-object v15, v5, v11

    invoke-virtual {v15}, Lio/agora/rtc/utils/YuvUtils$Plane;->getRowStride()I

    move-result v15

    .line 27
    aget-object v16, v5, v11

    invoke-virtual/range {v16 .. v16}, Lio/agora/rtc/utils/YuvUtils$Plane;->getPixelStride()I

    move-result v4

    if-nez v11, :cond_3

    move/from16 v16, v3

    goto :goto_2

    :cond_3
    move/from16 v16, v9

    :goto_2
    shr-int v6, v0, v16

    shr-int v3, v1, v16

    .line 28
    iget v9, v2, Landroid/graphics/Rect;->top:I

    shr-int v9, v9, v16

    mul-int/2addr v9, v15

    iget v0, v2, Landroid/graphics/Rect;->left:I

    shr-int v0, v0, v16

    mul-int/2addr v0, v4

    add-int/2addr v0, v9

    invoke-virtual {v14, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v3, :cond_7

    const/4 v9, 0x1

    if-ne v4, v9, :cond_4

    if-ne v13, v9, :cond_4

    .line 29
    invoke-virtual {v14, v8, v12, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v12, v6

    move v1, v6

    goto :goto_5

    :cond_4
    add-int/lit8 v16, v6, -0x1

    mul-int v16, v16, v4

    add-int/lit8 v1, v16, 0x1

    const/4 v9, 0x0

    .line 30
    invoke-virtual {v14, v10, v9, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_4
    if-ge v9, v6, :cond_5

    mul-int v16, v9, v4

    .line 31
    aget-byte v16, v10, v16

    aput-byte v16, v8, v12

    add-int/2addr v12, v13

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    add-int/lit8 v9, v3, -0x1

    if-ge v0, v9, :cond_6

    .line 32
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    add-int/2addr v9, v15

    sub-int/2addr v9, v1

    invoke-virtual {v14, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_6
    add-int/lit8 v0, v0, 0x1

    move/from16 v1, p2

    goto :goto_3

    :cond_7
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v6, 0x2

    const/4 v9, 0x1

    goto :goto_0

    :cond_8
    return-object v8
.end method

.method public static yuv420toNV21([BII)[B
    .locals 0

    .line 17
    invoke-static {p0, p1, p2}, Lio/agora/rtc/gl/JavaI420Buffer;->createYUV([BII)Lio/agora/rtc/gl/JavaI420Buffer;

    move-result-object p0

    .line 18
    invoke-static {p0, p1, p2}, Lio/agora/rtc/utils/YuvUtils;->yuv420toNV21(Lio/agora/rtc/gl/VideoFrame$I420Buffer;II)[B

    move-result-object p0

    return-object p0
.end method
