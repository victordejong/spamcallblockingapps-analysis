.class public final Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;
.super Le/a/d/b/b/c;
.source "SourceFile"

# interfaces
.implements Le/a/d/b/b/i;
.implements Lq3/a/i0;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\\\u0010\u0006J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J)\u0010\u000c\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u0006J\u000f\u0010\u000f\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0006J\u000f\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\'\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008!\u0010\u0006J\u000f\u0010\"\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\"\u0010\u0006J\u000f\u0010#\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008#\u0010\u0006J\u000f\u0010$\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008$\u0010\u0006J\u000f\u0010%\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008%\u0010\u0006R\"\u0010,\u001a\u00020&8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\"\u00103\u001a\u00020-8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010.\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\"\u0010:\u001a\u0002048\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0011\u00105\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R\"\u0010A\u001a\u00020;8\u0000@\u0000X\u0081.\u00a2\u0006\u0012\n\u0004\u0008!\u0010<\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R\u0016\u0010E\u001a\u00020B8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008C\u0010DR(\u0010L\u001a\u00020B8\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0004\u0008F\u0010G\u0012\u0004\u0008K\u0010\u0006\u001a\u0004\u0008H\u0010D\"\u0004\u0008I\u0010JR(\u0010Q\u001a\u00020B8\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0004\u0008M\u0010G\u0012\u0004\u0008P\u0010\u0006\u001a\u0004\u0008N\u0010D\"\u0004\u0008O\u0010JR\u0018\u0010T\u001a\u0004\u0018\u00010R8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010SR\u0016\u0010W\u001a\u00020U8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\"\u0010VR\u0016\u0010[\u001a\u00020X8B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008Y\u0010Z\u00a8\u0006]"
    }
    d2 = {
        "Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;",
        "Landroid/app/Service;",
        "Le/a/d/b/b/i;",
        "Lq3/a/i0;",
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
        "f",
        "k",
        "",
        "g",
        "()Z",
        "",
        "title",
        "h",
        "(Ljava/lang/String;)V",
        "Lcom/truecaller/common/ui/avatar/AvatarXConfig;",
        "config",
        "m3",
        "(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V",
        "Lcom/truecaller/voip/VoipUser;",
        "voipUser",
        "channelId",
        "encrypted",
        "l",
        "(Lcom/truecaller/voip/VoipUser;Ljava/lang/String;Z)V",
        "i",
        "j",
        "a",
        "t",
        "onDestroy",
        "Le/a/d/b/b/h;",
        "Le/a/d/b/b/h;",
        "getPresenter",
        "()Le/a/d/b/b/h;",
        "setPresenter",
        "(Le/a/d/b/b/h;)V",
        "presenter",
        "Le/a/g4/a/b;",
        "Le/a/g4/a/b;",
        "getNotificationFactory",
        "()Le/a/g4/a/b;",
        "setNotificationFactory",
        "(Le/a/g4/a/b;)V",
        "notificationFactory",
        "Le/a/d/c0/m1;",
        "Le/a/d/c0/m1;",
        "getVoipTelecomUtil",
        "()Le/a/d/c0/m1;",
        "setVoipTelecomUtil",
        "(Le/a/d/c0/m1;)V",
        "voipTelecomUtil",
        "Le/a/d/c0/n0;",
        "Le/a/d/c0/n0;",
        "getVoipCallStateUtil$voip_release",
        "()Le/a/d/c0/n0;",
        "setVoipCallStateUtil$voip_release",
        "(Le/a/d/c0/n0;)V",
        "voipCallStateUtil",
        "Ls1/w/f;",
        "getCoroutineContext",
        "()Ls1/w/f;",
        "coroutineContext",
        "d",
        "Ls1/w/f;",
        "getUiContext",
        "setUiContext",
        "(Ls1/w/f;)V",
        "getUiContext$annotations",
        "uiContext",
        "e",
        "getAsyncContext",
        "setAsyncContext",
        "getAsyncContext$annotations",
        "asyncContext",
        "Landroid/content/BroadcastReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "powerOrVolumeButtonReceiver",
        "Le/a/g4/a/c/a;",
        "Le/a/g4/a/c/a;",
        "callNotification",
        "Le/a/h4/n;",
        "c",
        "()Le/a/h4/n;",
        "notificationManager",
        "<init>",
        "voip_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static l:Z


# instance fields
.field public d:Ls1/w/f;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Ls1/w/f;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Le/a/d/b/b/h;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public g:Le/a/d/c0/m1;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public h:Le/a/g4/a/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public i:Le/a/d/c0/n0;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public j:Le/a/g4/a/c/a;

.field public k:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/d/b/b/c;-><init>()V

    return-void
.end method

.method public static final b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "com.truecaller.voip.extra.EXTRA_VOIP_ID"

    .line 2
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "com.truecaller.voip.extra.EXTRA_CHANNEL_ID"

    .line 3
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "com.truecaller.voip.extra.EXTRA_INVITED_SECURE"

    .line 4
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-static {p0}, Le/a/p5/s0/g;->s(Landroid/content/Context;)V

    return-void
.end method

.method public final c()Le/a/h4/n;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "applicationContext"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Le/a/h4/q/g;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Le/a/h4/q/g;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Le/a/h4/q/g;->n()Le/a/h4/n;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Application class does not implement "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Le/a/h4/q/g;

    invoke-static {v2, v1}, Le/d/c/a/a;->a2(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()V
    .locals 6

    .line 1
    sget v0, Lcom/truecaller/voip/R$string;->voip_status_incoming_audio_call:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    sget v3, Lcom/truecaller/voip/R$string;->voip_text:I

    invoke-virtual {p0, v3}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getString(R.string.voip_\u2026ring(R.string.voip_text))"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v2, Ln3/k/a/q;

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;->c()Le/a/h4/n;

    move-result-object v3

    const-string v5, "voip_v1"

    invoke-interface {v3, v5}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-direct {v2, p0, v3}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    sget v3, Lcom/truecaller/voip/R$drawable;->ic_voip_notification:I

    .line 6
    iget-object v5, v2, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v3, v5, Landroid/app/Notification;->icon:I

    .line 7
    invoke-virtual {v2, v0}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    const/4 v0, 0x2

    .line 8
    invoke-virtual {v2, v0, v1}, Ln3/k/a/q;->p(IZ)V

    const/16 v0, 0x8

    .line 9
    invoke-virtual {v2, v0, v1}, Ln3/k/a/q;->p(IZ)V

    const-string v0, "call"

    .line 10
    iput-object v0, v2, Ln3/k/a/q;->B:Ljava/lang/String;

    .line 11
    iput-boolean v4, v2, Ln3/k/a/q;->m:Z

    const-string v0, "NotificationCompat.Build\u2026      .setShowWhen(false)"

    .line 12
    invoke-static {v2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget v0, Lcom/truecaller/voip/R$id;->voip_incoming_service_foreground_notification_initial:I

    invoke-virtual {v2}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    const-string v0, "[LegacyIncomingVoipService] startForeground called"

    .line 14
    invoke-static {v0}, Le/a/c/p/a;->M1(Ljava/lang/String;)V

    return-void
.end method

.method public g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;->i:Le/a/d/c0/n0;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    check-cast v0, Le/a/d/c0/o0;

    invoke-virtual {v0, v1}, Le/a/d/c0/o0;->a(Z)Le/a/d/c0/c;

    move-result-object v0

    instance-of v0, v0, Le/a/d/c0/c$a;

    return v0

    :cond_0
    const-string v0, "voipCallStateUtil"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;->d:Ls1/w/f;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "uiContext"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 3

    const-string v0, "title"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;->j:Le/a/g4/a/c/a;

    const/4 v1, 0x0

    const-string v2, "callNotification"

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Le/a/g4/a/c/a;->j(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;->j:Le/a/g4/a/c/a;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-static {p1, p0, v0, v2, v1}, Le/a/g4/a/a;->q(Le/a/g4/a/a;Landroid/app/Service;ZILjava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public i()V
    .locals 4

    const-string v0, "context"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ln3/m0/r$a;

    const-class v1, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;

    invoke-direct {v0, v1}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3, v1}, Ln3/m0/z$a;->f(JLjava/util/concurrent/TimeUnit;)Ln3/m0/z$a;

    move-result-object v0

    check-cast v0, Ln3/m0/r$a;

    .line 4
    invoke-virtual {v0}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v0

    const-string v1, "OneTimeWorkRequest.Build\u2026\n                .build()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    check-cast v0, Ln3/m0/r;

    .line 6
    invoke-static {p0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v1

    const-string v2, "WorkManager.getInstance(context)"

    .line 7
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v2, Ln3/m0/h;->a:Ln3/m0/h;

    const-string v3, "com.truecaller.voip.incoming.missed.MissedVoipCallsWorker"

    invoke-virtual {v1, v3, v2, v0}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    return-void
.end method

.method public j()V
    .locals 4

    const-string v0, "context"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ln3/m0/r$a;

    const-class v1, Lcom/truecaller/voip/notification/blocked/VoipBlockedCallsWorker;

    invoke-direct {v0, v1}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 3
    invoke-virtual {v0}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v0

    const-string v1, "OneTimeWorkRequest.Build\u2026\n                .build()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    check-cast v0, Ln3/m0/r;

    .line 5
    invoke-static {p0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v1

    .line 6
    sget-object v2, Ln3/m0/h;->a:Ln3/m0/h;

    const-string v3, "com.truecaller.voip.incoming.blocked.BlockedVoipCallsWorker"

    invoke-virtual {v1, v3, v2, v0}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    return-void
.end method

.method public k()V
    .locals 3

    .line 1
    sget-object v0, Lcom/truecaller/voip/legacy/incoming/ui/LegacyIncomingVoipActivity;->d:Lcom/truecaller/voip/legacy/incoming/ui/LegacyIncomingVoipActivity$a;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v0, p0, v1, v1, v2}, Lcom/truecaller/voip/legacy/incoming/ui/LegacyIncomingVoipActivity$a;->b(Lcom/truecaller/voip/legacy/incoming/ui/LegacyIncomingVoipActivity$a;Landroid/content/Context;ZZI)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public l(Lcom/truecaller/voip/VoipUser;Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "voipUser"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "channelId"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Starting service VoipService with new Incoming call intent::IncomingVoipService"

    .line 1
    invoke-static {v2}, Le/a/c/p/a;->M1(Ljava/lang/String;)V

    const-string v2, "context"

    .line 2
    invoke-static {p0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.truecaller.voip.extra.EXTRA_USER_ID"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "com.truecaller.voip.extra.EXTRA_CHANNEL_ID"

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.truecaller.voip.extra.EXTRA_ENCRYPTED"

    .line 6
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7
    invoke-static {p0, v0}, Ln3/k/b/a;->f(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public m3(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V
    .locals 3

    const-string v0, "config"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;->j:Le/a/g4/a/c/a;

    const/4 v1, 0x0

    const-string v2, "callNotification"

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Le/a/g4/a/a;->g(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;->j:Le/a/g4/a/c/a;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-static {p1, p0, v0, v2, v1}, Le/a/g4/a/a;->q(Le/a/g4/a/a;Landroid/app/Service;ZILjava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    new-instance p1, Le/a/d/b/b/d;

    iget-object v0, p0, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;->f:Le/a/d/b/b/h;

    if-eqz v0, :cond_0

    invoke-direct {p1, v0}, Le/a/d/b/b/d;-><init>(Le/a/d/b/b/f;)V

    return-object p1

    :cond_0
    const-string p1, "presenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onCreate()V
    .locals 9

    .line 1
    invoke-super {p0}, Le/a/d/b/b/c;->onCreate()V

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;->l:Z

    .line 3
    iget-object v1, p0, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;->h:Le/a/g4/a/b;

    if-eqz v1, :cond_0

    .line 4
    sget v2, Lcom/truecaller/voip/R$id;->voip_incoming_service_foreground_notification:I

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;->c()Le/a/h4/n;

    move-result-object v3

    const-string v4, "voip_v1"

    invoke-interface {v3, v4}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6
    sget-object v4, Lcom/truecaller/voip/legacy/incoming/ui/LegacyIncomingVoipActivity;->d:Lcom/truecaller/voip/legacy/incoming/ui/LegacyIncomingVoipActivity$a;

    invoke-virtual {v4, p0, v0, v0}, Lcom/truecaller/voip/legacy/incoming/ui/LegacyIncomingVoipActivity$a;->a(Landroid/content/Context;ZZ)Landroid/content/Intent;

    move-result-object v5

    .line 7
    sget v6, Lcom/truecaller/voip/R$id;->voip_incoming_notification_action_answer:I

    const/high16 v7, 0xc000000

    .line 8
    invoke-static {p0, v6, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    const-string v6, "PendingIntent.getActivit\u2026.FLAG_IMMUTABLE\n        )"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "context"

    .line 9
    invoke-static {p0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v6, Landroid/content/Intent;

    const-class v8, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;

    invoke-direct {v6, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "com.truecaller.voip.incoming.ACTION_NOTIFICATION"

    .line 11
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "com.truecaller.voip.incoming.EXTRA_ACTION_REJECT_CALL"

    .line 12
    invoke-virtual {v6, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 13
    sget v8, Lcom/truecaller/voip/R$id;->voip_incoming_notification_action_decline:I

    .line 14
    invoke-static {p0, v8, v6, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const-string v7, "PendingIntent.getService\u2026.FLAG_IMMUTABLE\n        )"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1, v2, v3, v5, v6}, Le/a/g4/a/b;->a(ILjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Le/a/g4/a/c/a;

    move-result-object v1

    .line 16
    sget v2, Lcom/truecaller/voip/R$drawable;->ic_voip_notification:I

    invoke-virtual {v1, v2}, Le/a/g4/a/a;->m(I)V

    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 17
    invoke-static {v4, p0, v3, v3, v2}, Lcom/truecaller/voip/legacy/incoming/ui/LegacyIncomingVoipActivity$a;->b(Lcom/truecaller/voip/legacy/incoming/ui/LegacyIncomingVoipActivity$a;Landroid/content/Context;ZZI)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/a/g4/a/a;->i(Landroid/content/Intent;)V

    .line 18
    sget v2, Lcom/truecaller/voip/R$string;->voip_status_incoming_audio_call:I

    new-array v0, v0, [Ljava/lang/Object;

    sget v4, Lcom/truecaller/voip/R$string;->voip_text:I

    invoke-virtual {p0, v4}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-virtual {p0, v2, v0}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getString(R.string.voip_\u2026ring(R.string.voip_text))"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Le/a/g4/a/c/a;->r(Ljava/lang/String;)V

    .line 19
    iput-object v1, p0, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;->j:Le/a/g4/a/c/a;

    .line 20
    new-instance v0, Le/a/d/b/b/e;

    invoke-direct {v0, p0}, Le/a/d/b/b/e;-><init>(Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;)V

    iput-object v0, p0, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;->k:Landroid/content/BroadcastReceiver;

    .line 21
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_0
    const-string v0, "notificationFactory"

    .line 25
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;->l:Z

    .line 2
    iget-object v0, p0, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;->f:Le/a/d/b/b/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast v0, Le/a/d/b/b/b;

    invoke-virtual {v0}, Le/a/d/b/b/b;->c()V

    .line 4
    iget-object v0, p0, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;->j:Le/a/g4/a/c/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/g4/a/a;->a()V

    .line 5
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :cond_0
    const-string v0, "callNotification"

    .line 6
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "presenter"

    .line 7
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v1, :cond_1

    const-string v4, "com.truecaller.voip.extra.EXTRA_VOIP_ID"

    .line 2
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    goto :goto_1

    :cond_1
    move-object v7, v2

    :goto_1
    if-eqz v1, :cond_2

    const-string v4, "com.truecaller.voip.extra.EXTRA_CHANNEL_ID"

    .line 3
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    goto :goto_2

    :cond_2
    move-object v8, v2

    :goto_2
    const/4 v4, 0x0

    if-eqz v1, :cond_3

    const-string v5, "com.truecaller.voip.extra.EXTRA_INVITED_SECURE"

    .line 4
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    move v9, v5

    goto :goto_3

    :cond_3
    move v9, v4

    .line 5
    :goto_3
    iget-object v5, v0, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;->f:Le/a/d/b/b/h;

    const-string v6, "presenter"

    if-eqz v5, :cond_9

    move-object v10, v5

    check-cast v10, Le/a/u2/a/b;

    .line 6
    iput-object v0, v10, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-nez v3, :cond_5

    if-eqz v5, :cond_4

    .line 7
    move-object v11, v5

    check-cast v11, Le/a/d/b/b/b;

    .line 8
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v14, Le/a/d/b/b/n;

    const/16 v16, 0x0

    const/4 v10, 0x0

    move-object v5, v14

    move-object v6, v11

    invoke-direct/range {v5 .. v10}, Le/a/d/b/b/n;-><init>(Le/a/d/b/b/b;Ljava/lang/String;Ljava/lang/String;ZLs1/w/d;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x3

    invoke-static/range {v11 .. v16}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_4

    .line 10
    :cond_4
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_5
    const-string v3, "com.truecaller.voip.incoming.EXTRA_ACTION_REJECT_CALL"

    .line 11
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 12
    iget-object v1, v0, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;->f:Le/a/d/b/b/h;

    if-eqz v1, :cond_7

    check-cast v1, Le/a/d/b/b/b;

    .line 13
    iget-object v2, v1, Le/a/d/b/b/b;->s:Le/a/d/c0/f0;

    sget-object v3, Lcom/truecaller/voip/util/VoipAnalyticsContext;->NOTIFICATION:Lcom/truecaller/voip/util/VoipAnalyticsContext;

    invoke-virtual {v3}, Lcom/truecaller/voip/util/VoipAnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/truecaller/voip/util/VoipAnalyticsNotificationAction;->REJECTED:Lcom/truecaller/voip/util/VoipAnalyticsNotificationAction;

    invoke-interface {v2, v3, v4}, Le/a/d/c0/f0;->l(Ljava/lang/String;Lcom/truecaller/voip/util/VoipAnalyticsNotificationAction;)V

    .line 14
    iget-object v2, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/d/b/b/i;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Le/a/d/b/b/i;->a()V

    .line 15
    :cond_6
    invoke-virtual {v1}, Le/a/d/b/b/b;->Gh()V

    goto :goto_4

    .line 16
    :cond_7
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_8
    :goto_4
    const/4 v1, 0x2

    return v1

    .line 17
    :cond_9
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public t()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
