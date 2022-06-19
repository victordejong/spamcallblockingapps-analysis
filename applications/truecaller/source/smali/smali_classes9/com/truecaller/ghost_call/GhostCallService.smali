.class public final Lcom/truecaller/ghost_call/GhostCallService;
.super Le/a/x/e0;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008?\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J)\u0010\n\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001b\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0004J\u0017\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0004R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\"\u0010%\u001a\u00020\u001f8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\"\u0010,\u001a\u00020&8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\"\u00103\u001a\u00020-8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010.\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\u0018\u00107\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0018\u0010:\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u0018\u0010>\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u0010=\u00a8\u0006@"
    }
    d2 = {
        "Lcom/truecaller/ghost_call/GhostCallService;",
        "Landroid/app/Service;",
        "Ls1/s;",
        "onCreate",
        "()V",
        "Landroid/content/Intent;",
        "intent",
        "",
        "flags",
        "startId",
        "onStartCommand",
        "(Landroid/content/Intent;II)I",
        "p0",
        "Landroid/os/IBinder;",
        "onBind",
        "(Landroid/content/Intent;)Landroid/os/IBinder;",
        "d",
        "f",
        "",
        "mute",
        "c",
        "(Z)V",
        "e",
        "Ljava/util/TimerTask;",
        "j",
        "Ljava/util/TimerTask;",
        "autoCallEndTask",
        "Landroid/os/Vibrator;",
        "h",
        "Landroid/os/Vibrator;",
        "vibrationPlayer",
        "Le/a/x/l;",
        "Le/a/x/l;",
        "getGhostCallManager",
        "()Le/a/x/l;",
        "setGhostCallManager",
        "(Le/a/x/l;)V",
        "ghostCallManager",
        "Le/a/x/w;",
        "Le/a/x/w;",
        "getGhostCallSettings",
        "()Le/a/x/w;",
        "setGhostCallSettings",
        "(Le/a/x/w;)V",
        "ghostCallSettings",
        "Le/a/h4/n;",
        "Le/a/h4/n;",
        "getNotificationManager",
        "()Le/a/h4/n;",
        "setNotificationManager",
        "(Le/a/h4/n;)V",
        "notificationManager",
        "Ljava/util/Timer;",
        "k",
        "Ljava/util/Timer;",
        "autoCallEndTimer",
        "i",
        "Ljava/lang/Integer;",
        "musicVolume",
        "Landroid/media/MediaPlayer;",
        "g",
        "Landroid/media/MediaPlayer;",
        "ringTonePlayer",
        "<init>",
        "ghost-call_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public d:Le/a/x/w;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Le/a/h4/n;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Le/a/x/l;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public g:Landroid/media/MediaPlayer;

.field public h:Landroid/os/Vibrator;

.field public i:Ljava/lang/Integer;

.field public j:Ljava/util/TimerTask;

.field public k:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/x/e0;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/ghost_call/GhostCallService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static final b()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final c(Z)V
    .locals 3

    .line 1
    invoke-static {p0}, Le/a/p5/s0/g;->F(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/16 p1, -0x64

    goto :goto_0

    :cond_1
    const/16 p1, 0x64

    .line 2
    :goto_0
    :try_start_0
    invoke-static {p0}, Le/a/p5/s0/g;->F(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public final d()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/truecaller/ghost_call/GhostCallService;->g:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/truecaller/ghost_call/GhostCallService;->i:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 3
    invoke-static {p0}, Le/a/p5/s0/g;->F(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 4
    :cond_1
    invoke-virtual {p0, v0}, Lcom/truecaller/ghost_call/GhostCallService;->c(Z)V

    .line 5
    iget-object v1, p0, Lcom/truecaller/ghost_call/GhostCallService;->h:Landroid/os/Vibrator;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/truecaller/ghost_call/GhostCallService;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 8
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x1

    if-lt v1, v2, :cond_3

    move v0, v3

    :cond_3
    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {p0, v3}, Landroid/app/Service;->stopForeground(Z)V

    .line 10
    :cond_4
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public final e()V
    .locals 6

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/truecaller/ghost_call/GhostCallService;->c(Z)V

    .line 2
    iget-object v1, p0, Lcom/truecaller/ghost_call/GhostCallService;->g:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 3
    :cond_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 4
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v3, 0x2

    .line 5
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    const/4 v4, 0x1

    .line 6
    invoke-virtual {v2, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 8
    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v5, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 10
    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 11
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 12
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 13
    iput-object v1, p0, Lcom/truecaller/ghost_call/GhostCallService;->g:Landroid/media/MediaPlayer;

    .line 14
    invoke-static {p0}, Le/a/p5/s0/g;->F(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/ghost_call/GhostCallService;->i:Ljava/lang/Integer;

    .line 15
    invoke-static {p0}, Le/a/p5/s0/g;->F(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 16
    invoke-static {p0}, Le/a/p5/s0/g;->F(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    .line 17
    invoke-static {p0}, Le/a/p5/s0/g;->F(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    mul-int/2addr v4, v1

    .line 18
    div-int/2addr v4, v3

    .line 19
    invoke-static {p0}, Le/a/p5/s0/g;->F(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v2, v4, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ghost_call/GhostCallService;->j:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/truecaller/ghost_call/GhostCallService;->k:Ljava/util/Timer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/ghost_call/GhostCallService;->j:Ljava/util/TimerTask;

    .line 4
    iput-object v0, p0, Lcom/truecaller/ghost_call/GhostCallService;->k:Ljava/util/Timer;

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 7

    .line 1
    invoke-super {p0}, Le/a/x/e0;->onCreate()V

    .line 2
    sget v0, Lcom/truecaller/ghost_call/R$id;->ghost_call_service_foreground_notification:I

    .line 3
    iget-object v1, p0, Lcom/truecaller/ghost_call/GhostCallService;->e:Le/a/h4/n;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "caller_id"

    invoke-interface {v1, v3}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "context"

    .line 4
    invoke-static {p0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/truecaller/ghost_call/GhostCallService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.truecaller.ACTION_END_CALL_FROM_NOTIFICATION"

    .line 6
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "createServiceIntent(cont\u2026D_CALL_FROM_NOTIFICATION)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    const/high16 v5, 0xc000000

    .line 7
    invoke-static {p0, v4, v3, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 8
    new-instance v4, Ln3/k/a/m$a;

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/truecaller/ghost_call/R$string;->PretendCallServiceEndCall:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5, v3}, Ln3/k/a/m$a;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v4}, Ln3/k/a/m$a;->b()Ln3/k/a/m;

    move-result-object v2

    const-string v3, "NotificationCompat.Actio\u2026), pendingIntent).build()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v3, Ln3/k/a/q;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    sget v1, Lcom/truecaller/ghost_call/R$drawable;->ic_notification_call_dark:I

    .line 11
    iget-object v4, v3, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v1, v4, Landroid/app/Notification;->icon:I

    .line 12
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/truecaller/ghost_call/R$string;->PretendCallServiceTitle:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 13
    invoke-virtual {v3, v2}, Ln3/k/a/q;->b(Ln3/k/a/m;)Ln3/k/a/q;

    .line 14
    sget v1, Lcom/truecaller/ghost_call/R$color;->truecaller_blue_all_themes:I

    .line 15
    sget-object v2, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 16
    invoke-static {p0, v1}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v1

    .line 17
    iput v1, v3, Ln3/k/a/q;->D:I

    .line 18
    invoke-virtual {v3}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v1

    const-string v2, "NotificationCompat.Build\u2026es))\n            .build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    const-string v0, "vibrator"

    .line 20
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.os.Vibrator"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/truecaller/ghost_call/GhostCallService;->h:Landroid/os/Vibrator;

    return-void

    :cond_0
    const-string v0, "notificationManager"

    .line 21
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v0, "com.truecaller.ACTION_ON_CALL_PICKED"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3
    iget-object v0, p0, Lcom/truecaller/ghost_call/GhostCallService;->g:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/truecaller/ghost_call/GhostCallService;->h:Landroid/os/Vibrator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 5
    :cond_3
    invoke-virtual {p0}, Lcom/truecaller/ghost_call/GhostCallService;->f()V

    goto/16 :goto_3

    :sswitch_1
    const-string v0, "com.truecaller.ACTION_START_CALL"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/truecaller/ghost_call/GhostCallService;->e()V

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Lcom/truecaller/ghost_call/GhostCallService;->c(Z)V

    .line 9
    invoke-static {p0}, Le/a/p5/s0/g;->F(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v0, :cond_6

    const/4 v1, 0x3

    new-array v1, v1, [J

    .line 10
    fill-array-data v1, :array_0

    .line 11
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    const/4 v4, 0x0

    if-lt v2, v3, :cond_4

    goto :goto_1

    :cond_4
    move v0, v4

    :goto_1
    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p0, Lcom/truecaller/ghost_call/GhostCallService;->h:Landroid/os/Vibrator;

    if-eqz v0, :cond_6

    invoke-static {v1, v4}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_2

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/truecaller/ghost_call/GhostCallService;->h:Landroid/os/Vibrator;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1, v4}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 14
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/truecaller/ghost_call/GhostCallService;->f()V

    .line 15
    new-instance v0, Le/a/x/u;

    invoke-direct {v0, p0}, Le/a/x/u;-><init>(Lcom/truecaller/ghost_call/GhostCallService;)V

    iput-object v0, p0, Lcom/truecaller/ghost_call/GhostCallService;->j:Ljava/util/TimerTask;

    .line 16
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/truecaller/ghost_call/GhostCallService;->k:Ljava/util/Timer;

    .line 17
    iget-object v1, p0, Lcom/truecaller/ghost_call/GhostCallService;->j:Ljava/util/TimerTask;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 18
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "applicationContext"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    .line 19
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/truecaller/ghost_call/GhostInCallUIActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 21
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x40000

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Intent(context, GhostInC\u2026_ACTIVITY_NO_USER_ACTION)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, v0}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    goto :goto_3

    :sswitch_2
    const-string v0, "com.truecaller.ACTION_END_CALL"

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/truecaller/ghost_call/GhostCallService;->d()V

    goto :goto_3

    :sswitch_3
    const-string v2, "com.truecaller.ACTION_END_CALL_FROM_NOTIFICATION"

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 27
    iget-object v1, p0, Lcom/truecaller/ghost_call/GhostCallService;->f:Le/a/x/l;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Le/a/x/l;->x()V

    .line 28
    invoke-virtual {p0}, Lcom/truecaller/ghost_call/GhostCallService;->d()V

    goto :goto_3

    :cond_7
    const-string p1, "ghostCallManager"

    .line 29
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_8
    :goto_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x366eab5c -> :sswitch_3
        -0x2e88297d -> :sswitch_2
        0x5fcb6f1c -> :sswitch_1
        0x6d0eb182 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 8
        0x0
        0x3e8
        0x3e8
    .end array-data
.end method
