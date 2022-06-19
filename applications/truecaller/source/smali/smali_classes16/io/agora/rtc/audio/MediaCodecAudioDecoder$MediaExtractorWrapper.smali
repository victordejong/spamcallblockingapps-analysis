.class public Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/audio/MediaCodecAudioDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaExtractorWrapper"
.end annotation


# instance fields
.field private final countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mHandler:Landroid/os/Handler;

.field private final mMediaExtractor:Landroid/media/MediaExtractor;

.field private volatile mPrepared:Z

.field public final synthetic this$0:Lio/agora/rtc/audio/MediaCodecAudioDecoder;

.field private final threadName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/agora/rtc/audio/MediaCodecAudioDecoder;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->this$0:Lio/agora/rtc/audio/MediaCodecAudioDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "MediaExtractor-"

    .line 2
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->threadName:Ljava/lang/String;

    .line 3
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 5
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->mHandler:Landroid/os/Handler;

    .line 6
    new-instance p1, Landroid/media/MediaExtractor;

    invoke-direct {p1}, Landroid/media/MediaExtractor;-><init>()V

    iput-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->mMediaExtractor:Landroid/media/MediaExtractor;

    .line 7
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public static synthetic access$000(Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->setDataSource(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->threadName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;)Landroid/media/MediaExtractor;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->mMediaExtractor:Landroid/media/MediaExtractor;

    return-object p0
.end method

.method public static synthetic access$402(Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->mPrepared:Z

    return p1
.end method

.method public static synthetic access$500(Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static synthetic access$600(Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private setDataSource(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "MediaCodec Audio Decoder"

    const-string v1, "setDataSource()"

    .line 1
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/assets/"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "content://"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 4
    iget-object v2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->mHandler:Landroid/os/Handler;

    new-instance v3, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper$1;

    invoke-direct {v3, p0, v0, p1, v1}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper$1;-><init>(Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;ZLjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v1, 0xea60

    invoke-virtual {p1, v1, v2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 6
    iget-boolean p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->mPrepared:Z

    return p1
.end method


# virtual methods
.method public advance()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->checkPrepared()V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    return-void
.end method

.method public checkPrepared()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->mPrepared:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mMediaExtractor hasn\'t prepared"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSampleFlags()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->checkPrepared()V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v0

    return v0
.end method

.method public getSampleTime()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->checkPrepared()V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->checkPrepared()V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    return v0
.end method

.method public getTrackFormat(I)Landroid/media/MediaFormat;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->checkPrepared()V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    return-object p1
.end method

.method public readSampleData(Ljava/nio/ByteBuffer;I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->checkPrepared()V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result p1

    return p1
.end method

.method public release()V
    .locals 2

    const-string v0, "MediaCodec Audio Decoder"

    const-string v1, "release()"

    .line 1
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper$2;

    invoke-direct {v1, p0}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper$2;-><init>(Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public seekTo(JI)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->checkPrepared()V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    return-void
.end method

.method public selectTrack(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->checkPrepared()V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    return-void
.end method

.method public unselectTrack(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->checkPrepared()V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    return-void
.end method
