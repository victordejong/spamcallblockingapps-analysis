.class public Lcom/freshchat/consumer/sdk/i/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static volatile gY:Landroid/media/MediaPlayer;


# instance fields
.field private final cL:Lcom/freshchat/consumer/sdk/b/e;

.field private final context:Landroid/content/Context;

.field private final gZ:Landroid/telephony/TelephonyManager;

.field private final gz:Lcom/freshchat/consumer/sdk/beans/Message;

.field private final ha:Landroid/app/Activity;

.field private final hb:Landroid/view/View;

.field private final hc:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;

.field public hd:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/i/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/i/c;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/i/c;)Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/i/c;->hc:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;

    return-object p0
.end method

.method public static synthetic b(Lcom/freshchat/consumer/sdk/i/c;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/i/c;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic c(Lcom/freshchat/consumer/sdk/i/c;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/i/c;->hb:Landroid/view/View;

    return-object p0
.end method

.method public static final dU()Z
    .locals 1

    :try_start_0
    sget-object v0, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private dV()V
    .locals 2

    sget-object v0, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    const-class v0, Lcom/freshchat/consumer/sdk/i/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v1, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    const-class v0, Lcom/freshchat/consumer/sdk/i/c;

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    sget-object v1, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    :cond_2
    sget-object v1, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static declared-synchronized dW()V
    .locals 3

    const-class v0, Lcom/freshchat/consumer/sdk/i/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v1, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catch_0
    move-exception v1

    :goto_0
    :try_start_3
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_4
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    sget-object v1, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_0

    :goto_1
    :try_start_6
    sget-object v2, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catch_3
    move-exception v2

    :try_start_7
    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_0
    :goto_3
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private dX()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/i/c;->ha:Landroid/app/Activity;

    new-instance v1, Lcom/freshchat/consumer/sdk/i/c$4;

    invoke-direct {v1, p0}, Lcom/freshchat/consumer/sdk/i/c$4;-><init>(Lcom/freshchat/consumer/sdk/i/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private dY()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/i/c;->ha:Landroid/app/Activity;

    new-instance v1, Lcom/freshchat/consumer/sdk/i/c$5;

    invoke-direct {v1, p0}, Lcom/freshchat/consumer/sdk/i/c$5;-><init>(Lcom/freshchat/consumer/sdk/i/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private r(I)V
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/i/c;->gz:Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/i/b;->aq(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/i/c;->dX()V

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Integer;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/i/c;->gZ:Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public run()V
    .locals 12

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    :try_start_0
    const-class v2, Lcom/freshchat/consumer/sdk/i/c;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/i/c;->dV()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-object v7, Lcom/freshchat/consumer/sdk/i/c;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Media init "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v5, v3

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/freshchat/consumer/sdk/j/ai;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget-object v4, p0, Lcom/freshchat/consumer/sdk/i/c;->hc:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;

    iget-object v5, p0, Lcom/freshchat/consumer/sdk/i/c;->hd:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v4, p0, Lcom/freshchat/consumer/sdk/i/c;->hc:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    sget-object v5, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    new-instance v6, Lcom/freshchat/consumer/sdk/i/c$1;

    invoke-direct {v6, p0}, Lcom/freshchat/consumer/sdk/i/c$1;-><init>(Lcom/freshchat/consumer/sdk/i/c;)V

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v5, p0, Lcom/freshchat/consumer/sdk/i/c;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/freshchat/consumer/sdk/i/c;->gz:Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-static {v5, v6}, Lcom/freshchat/consumer/sdk/j/x;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/Message;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Audio file received for playing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/freshchat/consumer/sdk/j/ai;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Does the media player\'s file exist ? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/freshchat/consumer/sdk/j/ai;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Pre-file check "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v2, v8, v2

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/freshchat/consumer/sdk/j/ai;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/i/c;->gz:Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/Message;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/i/b;->aq(Ljava/lang/String;)I

    move-result v2

    if-nez v6, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/i/c;->dX()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lcom/freshchat/consumer/sdk/i/c;->r(I)V

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Post-file check "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v8, v2, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " ms"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/freshchat/consumer/sdk/j/ai;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/i/c;->dY()V

    const-class v6, Lcom/freshchat/consumer/sdk/i/c;

    monitor-enter v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v8, p0, Lcom/freshchat/consumer/sdk/i/c;->cL:Lcom/freshchat/consumer/sdk/b/e;

    invoke-virtual {v8}, Lcom/freshchat/consumer/sdk/b/e;->bo()Z

    move-result v8

    const/4 v9, 0x3

    const/4 v10, 0x0

    if-eqz v8, :cond_1

    move v8, v9

    goto :goto_1

    :cond_1
    move v8, v10

    :goto_1
    sget-object v11, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v11}, Landroid/media/MediaPlayer;->reset()V

    sget-object v11, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v11, v8}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    sget-object v8, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    sget-object v8, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v5, p0, Lcom/freshchat/consumer/sdk/i/c;->hc:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;

    sget-object v8, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v5, p0, Lcom/freshchat/consumer/sdk/i/c;->ha:Landroid/app/Activity;

    new-instance v8, Lcom/freshchat/consumer/sdk/i/c$2;

    invoke-direct {v8, p0}, Lcom/freshchat/consumer/sdk/i/c$2;-><init>(Lcom/freshchat/consumer/sdk/i/c;)V

    invoke-virtual {v5, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v5, p0, Lcom/freshchat/consumer/sdk/i/c;->context:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    const/4 v8, 0x2

    invoke-virtual {v5, v1, v9, v8}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    sget-object v5, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V

    sget-object v5, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v5, v4}, Landroid/media/MediaPlayer;->seekTo(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File-play "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v4, v2

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/freshchat/consumer/sdk/j/ai;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v2, 0x1

    :try_start_6
    sget-object v3, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/i/c;->gz:Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/Message;->getAlias()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/freshchat/consumer/sdk/j/b/c;->kq:Ljava/lang/String;

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/i/c;->hc:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;

    iget-object v4, p0, Lcom/freshchat/consumer/sdk/i/c;->hb:Landroid/view/View;

    sget-object v5, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v4, v5}, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;->a(Landroid/view/View;Landroid/media/MediaPlayer;)V

    :cond_2
    :goto_2
    sget-object v3, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_3

    new-array v3, v2, [Ljava/lang/Integer;

    sget-object v4, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-virtual {p0, v3}, Lcom/freshchat/consumer/sdk/i/c;->a([Ljava/lang/Integer;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_7
    invoke-static {v3}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_3
    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {p0, v2}, Lcom/freshchat/consumer/sdk/i/c;->a([Ljava/lang/Integer;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    iget-object v2, p0, Lcom/freshchat/consumer/sdk/i/c;->hb:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/i/c;->hc:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;->dZ()V

    sput-object v1, Lcom/freshchat/consumer/sdk/j/b/c;->kq:Ljava/lang/String;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/i/c;->ha:Landroid/app/Activity;

    new-instance v2, Lcom/freshchat/consumer/sdk/i/c$3;

    invoke-direct {v2, p0}, Lcom/freshchat/consumer/sdk/i/c$3;-><init>(Lcom/freshchat/consumer/sdk/i/c;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/i/c;->ha:Landroid/app/Activity;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_2
    move-exception v2

    :try_start_a
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v3

    sget-object v4, Lcom/freshchat/consumer/sdk/i/c;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Was audio file deleted ? "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/freshchat/consumer/sdk/j/ai;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    throw v2

    :goto_4
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception v2

    goto :goto_6

    :catch_3
    move-exception v2

    :try_start_c
    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    iget-object v2, p0, Lcom/freshchat/consumer/sdk/i/c;->hb:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/i/c;->hc:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;->dZ()V

    sput-object v1, Lcom/freshchat/consumer/sdk/j/b/c;->kq:Ljava/lang/String;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/i/c;->ha:Landroid/app/Activity;

    new-instance v2, Lcom/freshchat/consumer/sdk/i/c$3;

    invoke-direct {v2, p0}, Lcom/freshchat/consumer/sdk/i/c$3;-><init>(Lcom/freshchat/consumer/sdk/i/c;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/i/c;->ha:Landroid/app/Activity;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-void

    :goto_6
    :try_start_f
    iget-object v3, p0, Lcom/freshchat/consumer/sdk/i/c;->hb:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/i/c;->hc:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;->dZ()V

    sput-object v1, Lcom/freshchat/consumer/sdk/j/b/c;->kq:Ljava/lang/String;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/i/c;->ha:Landroid/app/Activity;

    new-instance v3, Lcom/freshchat/consumer/sdk/i/c$3;

    invoke-direct {v3, p0}, Lcom/freshchat/consumer/sdk/i/c$3;-><init>(Lcom/freshchat/consumer/sdk/i/c;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    throw v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :catchall_2
    move-exception v0

    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    throw v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    :try_start_12
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :try_start_13
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/i/c;->ha:Landroid/app/Activity;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    return-void

    :goto_8
    :try_start_14
    iget-object v2, p0, Lcom/freshchat/consumer/sdk/i/c;->ha:Landroid/app/Activity;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_7

    goto :goto_9

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_9
    throw v0
.end method
