.class public Lio/agora/rtc/audio/MediaCodecAudioEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAACEncodedBuffer:Ljava/nio/ByteBuffer;

.field private mAACEncoder:Landroid/media/MediaCodec;

.field private mAACFormat:Landroid/media/MediaFormat;

.field private mAACInputBuffers:[Ljava/nio/ByteBuffer;

.field private mAACOutputBuffers:[Ljava/nio/ByteBuffer;

.field private mCodecString:Ljava/lang/String;

.field private mInputBuffers:[Ljava/nio/ByteBuffer;

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mOutputBuffers:[Ljava/nio/ByteBuffer;

.field private mTrackFormat:Landroid/media/MediaFormat;

.field private outputFile:Ljava/io/File;

.field private outputStream:Ljava/io/BufferedOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 3
    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mTrackFormat:Landroid/media/MediaFormat;

    .line 4
    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mCodecString:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->outputFile:Ljava/io/File;

    .line 6
    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->outputStream:Ljava/io/BufferedOutputStream;

    .line 7
    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncoder:Landroid/media/MediaCodec;

    .line 8
    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACFormat:Landroid/media/MediaFormat;

    const/16 v0, 0x400

    .line 9
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncodedBuffer:Ljava/nio/ByteBuffer;

    const-string v0, "MediaCodec Audio Encoder"

    .line 10
    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->TAG:Ljava/lang/String;

    return-void
.end method

.method private addADTStoPacket([BI)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 1
    aput-byte v1, p1, v0

    const/4 v0, 0x1

    const/4 v1, -0x7

    .line 2
    aput-byte v1, p1, v0

    const/16 v0, 0x54

    int-to-byte v0, v0

    const/4 v1, 0x2

    .line 3
    aput-byte v0, p1, v1

    shr-int/lit8 v0, p2, 0xb

    const/16 v1, 0x40

    add-int/2addr v1, v0

    int-to-byte v0, v1

    const/4 v1, 0x3

    .line 4
    aput-byte v0, p1, v1

    and-int/lit16 v0, p2, 0x7ff

    shr-int/2addr v0, v1

    int-to-byte v0, v0

    const/4 v1, 0x4

    .line 5
    aput-byte v0, p1, v1

    and-int/lit8 p2, p2, 0x7

    const/4 v0, 0x5

    shl-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1f

    int-to-byte p2, p2

    .line 6
    aput-byte p2, p1, v0

    const/4 p2, 0x6

    const/4 v0, -0x4

    .line 7
    aput-byte v0, p1, p2

    return-void
.end method

.method private touch(Ljava/io/File;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public createAACStreaming(III)Z
    .locals 4

    const-string v0, "audio/mp4a-latm"

    .line 1
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encoding aac with fs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", bitrate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncoder:Landroid/media/MediaCodec;

    .line 3
    invoke-static {v0, p1, p2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACFormat:Landroid/media/MediaFormat;

    const-string v1, "aac-profile"

    const/4 v2, 0x2

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 5
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACFormat:Landroid/media/MediaFormat;

    const-string v1, "sample-rate"

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 6
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACFormat:Landroid/media/MediaFormat;

    const-string v0, "channel-count"

    invoke-virtual {p1, v0, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 7
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACFormat:Landroid/media/MediaFormat;

    const-string p2, "bitrate"

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 8
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncoder:Landroid/media/MediaCodec;

    iget-object p2, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACFormat:Landroid/media/MediaFormat;

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0, p3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 9
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncoder:Landroid/media/MediaCodec;

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return p3

    :catch_0
    move-exception p1

    .line 11
    iget-object p2, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->TAG:Ljava/lang/String;

    const-string p3, "Error when creating aac encode stream"

    invoke-static {p2, p3}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public createStreaming(Ljava/lang/String;III)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const-string v5, "audio/mp4a-latm"

    const/4 v6, 0x0

    .line 1
    :try_start_0
    iget-object v7, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Recording aac with fs = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", ch = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", quality = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x3

    sub-int/2addr v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "3gp"

    .line 3
    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v10, 0x3e80

    const/4 v11, 0x2

    const-string v12, "bitrate"

    const-string v13, "audio/amr-wb"

    const-string v14, "audio/3gpp"

    const/4 v15, 0x1

    if-nez v9, :cond_4

    :try_start_1
    const-string v9, "amr"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    :cond_0
    const-string v9, "aac"

    .line 4
    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v4, :cond_2

    if-eq v4, v15, :cond_1

    const v10, 0xc350

    goto :goto_0

    :cond_1
    const/16 v10, 0x61a8

    .line 5
    :cond_2
    :goto_0
    invoke-static {v5}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    iput-object v4, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 6
    invoke-static {v5, v2, v3}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v4

    iput-object v4, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mTrackFormat:Landroid/media/MediaFormat;

    const-string v7, "aac-profile"

    .line 7
    invoke-virtual {v4, v7, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 8
    iget-object v4, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mTrackFormat:Landroid/media/MediaFormat;

    const-string v7, "sample-rate"

    invoke-virtual {v4, v7, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 9
    iget-object v2, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mTrackFormat:Landroid/media/MediaFormat;

    const-string v4, "channel-count"

    invoke-virtual {v2, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 10
    iget-object v2, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mTrackFormat:Landroid/media/MediaFormat;

    invoke-virtual {v2, v12, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 11
    iput-object v5, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mCodecString:Ljava/lang/String;

    goto :goto_2

    :cond_3
    return v6

    :cond_4
    :goto_1
    const/16 v4, 0x1f40

    if-ne v2, v4, :cond_5

    .line 12
    invoke-static {v14}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    iput-object v4, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 13
    invoke-static {v14, v2, v3}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    iput-object v2, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mTrackFormat:Landroid/media/MediaFormat;

    const/16 v3, 0x2fa8

    .line 14
    invoke-virtual {v2, v12, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 15
    iput-object v14, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mCodecString:Ljava/lang/String;

    goto :goto_2

    :cond_5
    if-ne v2, v10, :cond_6

    .line 16
    invoke-static {v13}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    iput-object v4, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 17
    invoke-static {v13, v2, v3}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    iput-object v2, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mTrackFormat:Landroid/media/MediaFormat;

    const/16 v3, 0x5d2a

    .line 18
    invoke-virtual {v2, v12, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 19
    iput-object v13, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mCodecString:Ljava/lang/String;

    .line 20
    :cond_6
    :goto_2
    iget-object v2, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v3, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mTrackFormat:Landroid/media/MediaFormat;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4, v15}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 21
    iget-object v2, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v2, :cond_7

    .line 22
    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    .line 23
    :cond_7
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->outputFile:Ljava/io/File;

    .line 24
    invoke-direct {v1, v2}, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->touch(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 25
    :try_start_2
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->outputFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->outputStream:Ljava/io/BufferedOutputStream;

    .line 26
    iget-object v0, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->TAG:Ljava/lang/String;

    const-string v2, "outputStream initialized"

    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 27
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    :goto_3
    iget-object v0, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mCodecString:Ljava/lang/String;

    const/4 v3, 0x5

    const/16 v4, 0x52

    const/4 v5, 0x4

    const/16 v7, 0x4d

    const/16 v9, 0x41

    const/16 v10, 0x21

    const/16 v12, 0x23

    const/4 v2, 0x6

    if-ne v0, v14, :cond_8

    new-array v0, v2, [B

    aput-byte v12, v0, v6

    aput-byte v10, v0, v15

    aput-byte v9, v0, v11

    aput-byte v7, v0, v8

    aput-byte v4, v0, v5

    const/16 v2, 0xa

    aput-byte v2, v0, v3

    .line 29
    iget-object v2, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->outputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    goto :goto_4

    :cond_8
    if-ne v0, v13, :cond_9

    const/16 v0, 0x9

    new-array v0, v0, [B

    aput-byte v12, v0, v6

    aput-byte v10, v0, v15

    aput-byte v9, v0, v11

    aput-byte v7, v0, v8

    aput-byte v4, v0, v5

    const/16 v4, 0x2d

    aput-byte v4, v0, v3

    const/16 v3, 0x57

    aput-byte v3, v0, v2

    const/4 v2, 0x7

    const/16 v3, 0x42

    aput-byte v3, v0, v2

    const/16 v2, 0x8

    const/16 v3, 0xa

    aput-byte v3, v0, v2

    .line 30
    iget-object v2, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->outputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_9
    :goto_4
    return v15

    :catch_1
    move-exception v0

    .line 31
    iget-object v2, v1, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->TAG:Ljava/lang/String;

    const-string v3, "Error when creating aac file encoder"

    invoke-static {v2, v3}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v6
.end method

.method public encodeAACFrame([B)I
    .locals 11

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncoder:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    const/4 v1, -0x1

    if-eq v5, v1, :cond_0

    .line 2
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v5}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 4
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 5
    iget-object v4, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    array-length v7, p1

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 6
    :cond_0
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 7
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncoder:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    if-ltz v1, :cond_2

    .line 8
    iget v2, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 9
    iget-object v3, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 10
    iget v4, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_1

    move v4, v0

    goto :goto_0

    .line 11
    :cond_1
    iget v4, p1, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 12
    :goto_0
    :try_start_1
    iget v5, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 13
    iget p1, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr p1, v2

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 14
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncodedBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 15
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncodedBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 16
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v4

    goto :goto_2

    :catch_0
    move-exception p1

    move v0, v4

    goto :goto_1

    :catch_1
    move-exception p1

    .line 17
    :goto_1
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->TAG:Ljava/lang/String;

    const-string v2, "Error when encoding aac stream"

    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return v0
.end method

.method public encodeFrame([B)V
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    const/4 v0, -0x1

    if-eq v4, v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v4}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 4
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 5
    iget-object v3, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    array-length v6, p1

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 6
    :cond_0
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 7
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_4

    .line 8
    iget v3, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 9
    iget-object v4, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4, v0}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 10
    iget v5, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 11
    iget v5, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v5, v3

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 12
    iget-object v5, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mCodecString:Ljava/lang/String;

    const-string v6, "audio/mp4a-latm"

    const/4 v7, 0x0

    if-ne v5, v6, :cond_1

    add-int/lit8 v5, v3, 0x7

    .line 13
    new-array v6, v5, [B

    .line 14
    invoke-direct {p0, v6, v5}, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->addADTStoPacket([BI)V

    const/4 v8, 0x7

    .line 15
    invoke-virtual {v4, v6, v8, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 16
    iget v3, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 17
    iget-object v3, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->outputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v3, v6, v7, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_1

    :cond_1
    const-string v6, "audio/3gpp"

    if-eq v5, v6, :cond_2

    const-string v6, "audio/amr-wb"

    if-ne v5, v6, :cond_3

    .line 18
    :cond_2
    new-array v5, v3, [B

    .line 19
    invoke-virtual {v4, v5, v7, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 20
    iget v6, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 21
    iget-object v4, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->outputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v4, v5, v7, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 22
    :cond_3
    :goto_1
    iget-object v3, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v3, v0, v7}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 23
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->TAG:Ljava/lang/String;

    const-string v1, "Error when encoding aac file"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    return-void
.end method

.method public releaseAACStreaming()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 3
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->TAG:Ljava/lang/String;

    const-string v2, "Error when releasing aac encode stream"

    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public releaseStreaming()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 3
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 4
    iput-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 5
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->outputStream:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 7
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->outputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 8
    iput-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->outputStream:Ljava/io/BufferedOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->TAG:Ljava/lang/String;

    const-string v2, "Error when releasing aac file encoder"

    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAACEncodeBitrate(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set hw aac bitrate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncoder:Landroid/media/MediaCodec;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 4
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACFormat:Landroid/media/MediaFormat;

    const-string v2, "bitrate"

    invoke-virtual {v0, v2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 5
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncoder:Landroid/media/MediaCodec;

    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACFormat:Landroid/media/MediaFormat;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 6
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mAACEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v1

    :catch_0
    move-exception p1

    .line 7
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->TAG:Ljava/lang/String;

    const-string v1, "Error when setting aac encode bitrate"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public setChannelCount(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mTrackFormat:Landroid/media/MediaFormat;

    const-string v1, "channel-count"

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->TAG:Ljava/lang/String;

    const-string v1, "Error when setting aac file encoder channel count"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setSampleRate(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->mTrackFormat:Landroid/media/MediaFormat;

    const-string v1, "sample-rate"

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioEncoder;->TAG:Ljava/lang/String;

    const-string v1, "Error when setting aac file encoder sample rate"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
