.class public final Le/a/a/c/s8/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/s8/j;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Landroid/media/MediaPlayer;

.field public c:Landroid/net/Uri;

.field public d:Le/a/a/c/s8/i;

.field public e:Ljava/util/concurrent/ScheduledExecutorService;

.field public f:Ljava/lang/Runnable;

.field public g:Le/a/a/c/s8/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Le/a/a/c/s8/h;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 6

    .line 1
    iput-object p1, p0, Le/a/a/c/s8/h;->c:Landroid/net/Uri;

    .line 2
    iget-object v0, p0, Le/a/a/c/s8/h;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Le/a/a/c/s8/h;->b:Landroid/media/MediaPlayer;

    .line 4
    new-instance v1, Le/a/a/c/s8/b;

    invoke-direct {v1, p0}, Le/a/a/c/s8/b;-><init>(Le/a/a/c/s8/h;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Le/a/a/c/s8/h;->b:Landroid/media/MediaPlayer;

    iget-object v1, p0, Le/a/a/c/s8/h;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 7
    :goto_0
    :try_start_1
    iget-object p1, p0, Le/a/a/c/s8/h;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 9
    :goto_1
    iget-object p1, p0, Le/a/a/c/s8/h;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    .line 10
    iget-object v0, p0, Le/a/a/c/s8/h;->d:Le/a/a/c/s8/i;

    if-eqz v0, :cond_1

    .line 11
    invoke-interface {v0, p1}, Le/a/a/c/s8/i;->b(I)V

    .line 12
    iget-object v0, p0, Le/a/a/c/s8/h;->d:Le/a/a/c/s8/i;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/a/c/s8/i;->C0(I)V

    .line 13
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, p1

    .line 14
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "firing setPlaybackDuration(%d sec)"

    .line 15
    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public b(Le/a/a/c/s8/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a/c/s8/h;->d:Le/a/a/c/s8/i;

    return-void
.end method

.method public c(Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;)V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/a/c/s8/h;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object v1, p0, Le/a/a/c/s8/h;->b:Landroid/media/MediaPlayer;

    const-string v2, "Cannot link to null MediaPlayer"

    .line 3
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v2, Landroid/media/audiofx/Visualizer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v1

    invoke-direct {v2, v1}, Landroid/media/audiofx/Visualizer;-><init>(I)V

    iput-object v2, p1, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;->c:Landroid/media/audiofx/Visualizer;

    .line 5
    invoke-virtual {v2, v0}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 6
    iget-object v1, p1, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;->c:Landroid/media/audiofx/Visualizer;

    invoke-static {}, Landroid/media/audiofx/Visualizer;->getCaptureSizeRange()[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/media/audiofx/Visualizer;->setCaptureSize(I)I

    .line 7
    new-instance v1, Le/a/a/c/s8/k;

    invoke-direct {v1, p1}, Le/a/a/c/s8/k;-><init>(Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;)V

    .line 8
    iget-object v2, p1, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;->c:Landroid/media/audiofx/Visualizer;

    .line 9
    invoke-static {}, Landroid/media/audiofx/Visualizer;->getMaxCaptureRate()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 10
    invoke-virtual {v2, v1, v4, v3, v3}, Landroid/media/audiofx/Visualizer;->setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I

    .line 11
    iget-object p1, p1, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;->c:Landroid/media/audiofx/Visualizer;

    invoke-virtual {p1, v3}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 12
    :cond_0
    iget-object p1, p0, Le/a/a/c/s8/h;->a:Landroid/content/Context;

    invoke-static {p1}, Le/a/p5/s0/g;->F(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-static {p1}, Le/a/c/p/a;->s2(Landroid/media/AudioManager;)Le/a/a/c/s8/c;

    move-result-object p1

    iput-object p1, p0, Le/a/a/c/s8/h;->g:Le/a/a/c/s8/c;

    .line 13
    iget-object p1, p0, Le/a/a/c/s8/h;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 14
    iget-object p1, p0, Le/a/a/c/s8/h;->d:Le/a/a/c/s8/i;

    if-eqz p1, :cond_1

    .line 15
    invoke-interface {p1, v0}, Le/a/a/c/s8/i;->a(I)V

    .line 16
    :cond_1
    iget-object p1, p0, Le/a/a/c/s8/h;->e:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez p1, :cond_2

    .line 17
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Le/a/a/c/s8/h;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 18
    :cond_2
    iget-object p1, p0, Le/a/a/c/s8/h;->f:Ljava/lang/Runnable;

    if-nez p1, :cond_3

    .line 19
    new-instance p1, Le/a/a/c/s8/a;

    invoke-direct {p1, p0}, Le/a/a/c/s8/a;-><init>(Le/a/a/c/s8/h;)V

    iput-object p1, p0, Le/a/a/c/s8/h;->f:Ljava/lang/Runnable;

    .line 20
    :cond_3
    iget-object v0, p0, Le/a/a/c/s8/h;->e:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Le/a/a/c/s8/h;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_4
    return-void
.end method

.method public final d(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/s8/h;->e:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/a/a/c/s8/h;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    iput-object v0, p0, Le/a/a/c/s8/h;->f:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Le/a/a/c/s8/h;->d:Le/a/a/c/s8/i;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 6
    invoke-interface {p1, v0}, Le/a/a/c/s8/i;->C0(I)V

    :cond_0
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/s8/h;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/s8/h;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a/c/s8/h;->g:Le/a/a/c/s8/c;

    iget-object v1, p0, Le/a/a/c/s8/h;->a:Landroid/content/Context;

    invoke-static {v1}, Le/a/p5/s0/g;->F(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/a/c/s8/c;->a(Landroid/media/AudioManager;)V

    .line 3
    iget-object v0, p0, Le/a/a/c/s8/h;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 4
    iget-object v0, p0, Le/a/a/c/s8/h;->d:Le/a/a/c/s8/i;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 5
    invoke-interface {v0, v1}, Le/a/a/c/s8/i;->a(I)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/s8/h;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/a/a/c/s8/h;->b:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/s8/h;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 3
    iget-object v0, p0, Le/a/a/c/s8/h;->c:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Le/a/a/c/s8/h;->a(Landroid/net/Uri;)V

    .line 4
    iget-object v0, p0, Le/a/a/c/s8/h;->d:Le/a/a/c/s8/i;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 5
    invoke-interface {v0, v1}, Le/a/a/c/s8/i;->a(I)V

    :cond_0
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Le/a/a/c/s8/h;->d(Z)V

    :cond_1
    return-void
.end method
