.class public Lio/agora/rtc/audio/MediaCodecAudioDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;
    }
.end annotation


# static fields
.field private static final EXTRACTOR_TIMEOUT_MS:I = 0xea60

.field private static final HTTP_REQUEST_TIMEOUT:I = 0xfa0

.field private static final MAX_DECODER_RETRY_COUNT:I = 0x12c

.field private static final PREFIX_ASSETS:Ljava/lang/String; = "/assets/"

.field private static final PREFIX_DOCUMENT:Ljava/lang/String; = "content://"

.field private static final TAG:Ljava/lang/String; = "MediaCodec Audio Decoder"


# instance fields
.field private eoInputStream:Z

.field private eoOutputStream:Z

.field private mAACDecoder:Landroid/media/MediaCodec;

.field private mAACOutputBuffer:Ljava/nio/ByteBuffer;

.field private mChannels:I

.field private mContext:Landroid/content/Context;

.field private mDecodedDataReady:Z

.field private mDecodedRAWBuffer:Ljava/nio/ByteBuffer;

.field private mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

.field private mFileLength:J

.field private mInputBuffers:[Ljava/nio/ByteBuffer;

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mOutputBuffers:[Ljava/nio/ByteBuffer;

.field private mRetryCount:I

.field private mSampleRate:I

.field private mTrackFormat:Landroid/media/MediaFormat;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mContext:Landroid/content/Context;

    .line 3
    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 4
    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    .line 5
    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mTrackFormat:Landroid/media/MediaFormat;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mDecodedDataReady:Z

    .line 7
    iput-boolean v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->eoInputStream:Z

    .line 8
    iput-boolean v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->eoOutputStream:Z

    const v2, 0xac44

    .line 9
    iput v2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mSampleRate:I

    const/4 v2, 0x2

    .line 10
    iput v2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mChannels:I

    .line 11
    iput v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mRetryCount:I

    .line 12
    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mAACDecoder:Landroid/media/MediaCodec;

    const/16 v0, 0x1000

    .line 13
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mAACOutputBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static synthetic access$200(Lio/agora/rtc/audio/MediaCodecAudioDecoder;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private checkInfoChange()Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "sample-rate"

    .line 2
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x5622

    if-ne v2, v3, :cond_0

    const/16 v2, 0x55f0

    goto :goto_0

    :cond_0
    const/16 v3, 0x2b11

    if-ne v2, v3, :cond_1

    const/16 v2, 0x2af8

    :cond_1
    :goto_0
    const-string v3, "channel-count"

    .line 3
    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 4
    iget v3, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mSampleRate:I

    if-ne v3, v2, :cond_3

    iget v3, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mChannels:I

    if-eq v3, v1, :cond_2

    goto :goto_1

    :cond_2
    move v3, v0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v3, 0x1

    .line 5
    :goto_2
    iput v2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mSampleRate:I

    .line 6
    iput v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mChannels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v1

    const-string v2, "MediaCodec Audio Decoder"

    const-string v3, "Error when checking file\'s new format"

    .line 7
    invoke-static {v2, v3}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private cloneByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mDecodedRAWBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 2
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mDecodedRAWBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mDecodedRAWBuffer:Ljava/nio/ByteBuffer;

    .line 5
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mDecodedRAWBuffer:Ljava/nio/ByteBuffer;

    .line 6
    :cond_2
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mDecodedRAWBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 7
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mDecodedRAWBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private cloneByteBufferByLength(Ljava/nio/ByteBuffer;I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mDecodedRAWBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p2, :cond_2

    .line 2
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mDecodedRAWBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mDecodedRAWBuffer:Ljava/nio/ByteBuffer;

    .line 5
    :cond_1
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mDecodedRAWBuffer:Ljava/nio/ByteBuffer;

    .line 6
    :cond_2
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mDecodedRAWBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 7
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 8
    iget-object p2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mDecodedRAWBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private createStreaming(IJ)Z
    .locals 8

    const-string v0, "MediaCodec Audio Decoder"

    const/4 v1, 0x0

    .line 31
    :try_start_0
    iget-object v2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-virtual {v2}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->getTrackCount()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr p1, v3

    if-ge v2, p1, :cond_0

    return v1

    :cond_0
    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_1

    .line 32
    iget-object v5, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-virtual {v5, v4}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->unselectTrack(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v1

    move v5, v4

    :goto_1
    if-ge v4, v2, :cond_4

    .line 33
    iget-object v6, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-virtual {v6, v4}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v6

    iput-object v6, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mTrackFormat:Landroid/media/MediaFormat;

    const-string v7, "mime"

    .line 34
    invoke-virtual {v6, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "audio/"

    .line 35
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v5, v5, 0x1

    if-eq v5, p1, :cond_2

    goto :goto_2

    :cond_2
    move p1, v3

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move p1, v1

    :goto_3
    if-nez p1, :cond_5

    const-string p1, "the selected audio track won\'t found"

    .line 36
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 37
    :cond_5
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-virtual {p1, v4}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->selectTrack(I)V

    .line 38
    invoke-virtual {p0, p2, p3}, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->setCurrentFilePosition(J)V

    .line 39
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mTrackFormat:Landroid/media/MediaFormat;

    const-string p2, "channel-count"

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mChannels:I

    .line 40
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mTrackFormat:Landroid/media/MediaFormat;

    const-string p2, "sample-rate"

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mSampleRate:I

    const/16 p2, 0x5622

    if-ne p1, p2, :cond_6

    const/16 p1, 0x55f0

    .line 41
    iput p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mSampleRate:I

    goto :goto_4

    :cond_6
    const/16 p2, 0x2b11

    if-ne p1, p2, :cond_7

    const/16 p1, 0x2af8

    .line 42
    iput p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mSampleRate:I

    .line 43
    :cond_7
    :goto_4
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mTrackFormat:Landroid/media/MediaFormat;

    const-string p2, "durationUs"

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mFileLength:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    const-string p2, "Error when creating aac audio file decoder"

    .line 44
    invoke-static {v0, p2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public static encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v0, "MediaCodec Audio Decoder"

    const-string v1, "encodedUrl()"

    .line 1
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v9, Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v5

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v8

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v9}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p0
.end method

.method public static testNetworkUrlAvailable(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "MediaCodec Audio Decoder"

    const-string v1, "testNetworkUrlAvailable encodedUrl"

    .line 1
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0xfa0

    .line 4
    :try_start_1
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 5
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 6
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 7
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x194

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 8
    :goto_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    :cond_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v3, v1

    move-object v1, p0

    move-object p0, v3

    .line 11
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_2

    .line 12
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    :goto_2
    return v0

    :catchall_1
    move-exception v0

    move-object v1, p0

    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 13
    :cond_3
    throw v0
.end method


# virtual methods
.method public checkAACSupported()Z
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Landroid/media/MediaCodecList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 2
    invoke-virtual {v1}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v1

    .line 3
    array-length v3, v1

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 4
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "nvidia"

    .line 6
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_2
    return v0

    :catch_0
    move-exception v1

    const-string v2, "MediaCodec Audio Decoder"

    const-string v3, "Error when checking aac codec availability"

    .line 7
    invoke-static {v2, v3}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public checkUrlEncoded(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 1
    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p1, p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public createAACStreaming(I)Z
    .locals 4

    const-string v0, "audio/mp4a-latm"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mAACDecoder:Landroid/media/MediaCodec;

    const/4 v2, 0x1

    .line 2
    invoke-static {v0, p1, v2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v3, "sample-rate"

    .line 3
    invoke-virtual {v0, v3, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "channel-count"

    .line 4
    invoke-virtual {v0, p1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 p1, 0x2

    new-array p1, p1, [B

    const/16 v3, 0x12

    aput-byte v3, p1, v1

    const/16 v3, -0x78

    aput-byte v3, p1, v2

    .line 5
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    const-string v3, "csd-0"

    .line 6
    invoke-virtual {v0, v3, p1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 7
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mAACDecoder:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 8
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mAACDecoder:Landroid/media/MediaCodec;

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v2

    :catch_0
    move-exception p1

    const-string v0, "MediaCodec Audio Decoder"

    const-string v2, "Error when creating aac decode stream"

    .line 10
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public createStreaming(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "MediaCodec Audio Decoder"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Try to decode audio file : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mRetryCount:I

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "Fail to open, empty url"

    .line 4
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 5
    :cond_0
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6
    invoke-virtual {p0, p1}, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->checkUrlEncoded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, p1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    .line 7
    invoke-static {v2}, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->testNetworkUrlAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const-string p1, "Fail to open, 404 for url"

    .line 8
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 9
    :cond_3
    new-instance v2, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-direct {v2, p0}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;-><init>(Lio/agora/rtc/audio/MediaCodecAudioDecoder;)V

    iput-object v2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    .line 10
    invoke-static {v2, p1}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->access$000(Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "Failed to setDataSource"

    .line 11
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->releaseStreaming()V

    return v1

    .line 13
    :cond_4
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-virtual {p1}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->getTrackCount()I

    move-result p1

    move v2, v1

    :goto_1
    if-ge v2, p1, :cond_5

    .line 14
    iget-object v3, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-virtual {v3, v2}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->unselectTrack(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move v2, v1

    :goto_2
    if-ge v2, p1, :cond_7

    .line 15
    iget-object v3, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-virtual {v3, v2}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    iput-object v3, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mTrackFormat:Landroid/media/MediaFormat;

    const-string v4, "mime"

    .line 16
    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 17
    iget-object v4, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mTrackFormat:Landroid/media/MediaFormat;

    const-string v5, "pcm-encoding"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "audio/"

    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 19
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-virtual {p1, v2}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->selectTrack(I)V

    .line 20
    invoke-static {v3}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 21
    iget-object v2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mTrackFormat:Landroid/media/MediaFormat;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v3, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 22
    :cond_7
    :goto_3
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz p1, :cond_8

    .line 23
    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 24
    :cond_8
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mTrackFormat:Landroid/media/MediaFormat;

    const-string v2, "channel-count"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mChannels:I

    .line 25
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mTrackFormat:Landroid/media/MediaFormat;

    const-string v2, "sample-rate"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mSampleRate:I

    const/16 v2, 0x5622

    if-ne p1, v2, :cond_9

    const/16 p1, 0x55f0

    .line 26
    iput p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mSampleRate:I

    goto :goto_4

    :cond_9
    const/16 v2, 0x2b11

    if-ne p1, v2, :cond_a

    const/16 p1, 0x2af8

    .line 27
    iput p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mSampleRate:I

    .line 28
    :cond_a
    :goto_4
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mTrackFormat:Landroid/media/MediaFormat;

    const-string v2, "durationUs"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mFileLength:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v2, "Error when creating aac audio file decoder"

    .line 29
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public decodeAACFrame([B)I
    .locals 12

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mAACDecoder:Landroid/media/MediaCodec;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_0

    .line 2
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mAACDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v5}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 4
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 5
    iget-object v4, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mAACDecoder:Landroid/media/MediaCodec;

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
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mAACDecoder:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    const/4 v2, -0x3

    if-eq v1, v2, :cond_1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ltz v1, :cond_1

    .line 8
    iget-object v2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mAACDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 9
    iget p1, p1, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 10
    :try_start_1
    iget-object v3, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mAACOutputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 11
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 12
    iget-object v3, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mAACOutputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 13
    iget-object v2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mAACDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, p1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v11, v0

    move v0, p1

    move-object p1, v11

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string v1, "MediaCodec Audio Decoder"

    const-string v2, "Error when decoding aac stream"

    .line 14
    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return v0
.end method

.method public decodeFrame()Z
    .locals 13

    const-string v0, "MediaCodec Audio Decoder"

    .line 1
    :try_start_0
    iget-boolean v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->eoInputStream:Z

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_2

    .line 2
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v7

    if-ltz v7, :cond_2

    .line 3
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v7}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 4
    iget-object v6, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-virtual {v6, v1, v5}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v1

    if-gtz v1, :cond_0

    .line 5
    iput-boolean v4, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->eoInputStream:Z

    move v9, v5

    goto :goto_0

    :cond_0
    move v9, v1

    .line 6
    :goto_0
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-virtual {v1}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->getSampleTime()J

    move-result-wide v10

    .line 7
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-virtual {v1}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->getSampleFlags()I

    move-result v1

    .line 8
    iget-boolean v6, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->eoInputStream:Z

    if-eqz v6, :cond_1

    or-int/lit8 v1, v1, 0x4

    :cond_1
    move v12, v1

    .line 9
    iget-object v6, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v8, 0x0

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 10
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-virtual {v1}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->advance()V

    .line 11
    :cond_2
    iget-boolean v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->eoOutputStream:Z

    if-nez v1, :cond_5

    .line 12
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 13
    iget-object v6, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v6, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    .line 14
    iput-boolean v5, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mDecodedDataReady:Z

    const/4 v3, -0x3

    if-eq v2, v3, :cond_5

    const/4 v3, -0x2

    if-eq v2, v3, :cond_5

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 15
    iput v5, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mRetryCount:I

    if-ltz v2, :cond_5

    .line 16
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    .line 17
    iput-boolean v4, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->eoOutputStream:Z

    .line 18
    :cond_3
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 19
    invoke-direct {p0, v1}, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->cloneByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 20
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v2, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 21
    iput-boolean v4, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mDecodedDataReady:Z

    goto :goto_1

    .line 22
    :cond_4
    iget v2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mRetryCount:I

    add-int/2addr v2, v4

    iput v2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mRetryCount:I

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_5

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EAGAIN count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " presentationTimeUs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " totalUs="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mFileLength:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Force EOS"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iput-boolean v4, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->eoOutputStream:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "Error when decoding audio file stream"

    .line 25
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    :cond_5
    :goto_1
    iget-boolean v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->eoOutputStream:Z

    return v0
.end method

.method public getChannelCount()I
    .locals 1

    .line 1
    iget v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mChannels:I

    return v0
.end method

.method public getCurrentFilePosition()J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-virtual {v0}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->getSampleTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDecodeDataReadyFlag()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mDecodedDataReady:Z

    return v0
.end method

.method public getFileLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mFileLength:J

    return-wide v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 1
    iget v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mSampleRate:I

    return v0
.end method

.method public getTrackNum()I
    .locals 5

    .line 1
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->getTrackCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 3
    iget-object v3, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-virtual {v3, v1}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    const-string v4, "mime"

    .line 4
    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "audio/"

    .line 5
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public releaseAACStreaming()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mAACDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 3
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mAACDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mAACDecoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaCodec Audio Decoder"

    const-string v2, "Error when releasing aac decode stream"

    .line 5
    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public releaseStreaming()V
    .locals 4

    const-string v0, "MediaCodec Audio Decoder"

    .line 1
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "Media decoder stop failed"

    .line 3
    invoke-static {v0, v3, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 4
    :goto_0
    :try_start_3
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_4
    const-string v3, "Media decoder release failed"

    .line 5
    invoke-static {v0, v3, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    :goto_1
    iput-object v2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 7
    :cond_0
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->release()V

    .line 9
    iput-object v2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    const-string v2, "Error when releasing audio file stream"

    .line 10
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->eoOutputStream:Z

    .line 13
    iput-boolean v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->eoInputStream:Z

    return-void
.end method

.method public rewindStreaming()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->seekTo(JI)V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaCodec Audio Decoder"

    const-string v2, "Error when rewinding audio file stream"

    .line 3
    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->eoInputStream:Z

    .line 6
    iput-boolean v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->eoOutputStream:Z

    .line 7
    iput-boolean v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mDecodedDataReady:Z

    return-void
.end method

.method public selectTrack(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->getCurrentFilePosition()J

    move-result-wide v0

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->createStreaming(IJ)Z

    move-result p1

    return p1
.end method

.method public setCurrentFilePosition(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->seekTo(JI)V

    return-void
.end method
