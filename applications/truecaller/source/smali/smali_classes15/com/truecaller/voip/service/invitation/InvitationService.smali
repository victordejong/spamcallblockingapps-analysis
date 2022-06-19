.class public final Lcom/truecaller/voip/service/invitation/InvitationService;
.super Le/a/d/z/c/a;
.source "SourceFile"

# interfaces
.implements Le/a/d/z/c/c;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008H\u0010\u0005J\u000f\u0010\u0004\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J)\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\u000e\u001a\u00020\r2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0005J\u000f\u0010\u0011\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0005J\u000f\u0010\u0012\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0005J\u001f\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0017\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ!\u0010\"\u001a\u00020\u00032\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020 0\u001fH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\"\u0010#J\u0017\u0010%\u001a\u00020\u00032\u0006\u0010$\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008%\u0010\u001aJ\u000f\u0010&\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008&\u0010\u0005J\u000f\u0010\'\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\'\u0010\u0005J\u000f\u0010(\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008(\u0010\u0005J\'\u0010,\u001a\u00020\u0003*\u00020)2\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\u00030*H\u0002\u00a2\u0006\u0004\u0008,\u0010-R\"\u00104\u001a\u00020.8\u0000@\u0000X\u0081.\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010/\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R\u001d\u00109\u001a\u0002058B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u00106\u001a\u0004\u00087\u00108R\u001d\u0010<\u001a\u00020)8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008:\u00106\u001a\u0004\u0008:\u0010;R\u001d\u0010@\u001a\u00020=8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u00106\u001a\u0004\u0008>\u0010?R\"\u0010G\u001a\u00020A8\u0000@\u0000X\u0081.\u00a2\u0006\u0012\n\u0004\u0008,\u0010B\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010F\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006I"
    }
    d2 = {
        "Lcom/truecaller/voip/service/invitation/InvitationService;",
        "Landroid/app/Service;",
        "Le/a/d/z/c/c;",
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
        "Landroid/os/IBinder;",
        "onBind",
        "(Landroid/content/Intent;)Landroid/os/IBinder;",
        "f",
        "b",
        "d",
        "",
        "title",
        "extra",
        "j",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "desc",
        "h",
        "(Ljava/lang/String;)V",
        "Lcom/truecaller/common/ui/avatar/AvatarXConfig;",
        "config",
        "setAvatarXConfig",
        "(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V",
        "",
        "Le/a/b0/a/c/m/b;",
        "configs",
        "i",
        "(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;",
        "channelId",
        "c",
        "a",
        "t",
        "onDestroy",
        "Le/a/g4/a/c/a;",
        "Lkotlin/Function1;",
        "block",
        "e",
        "(Le/a/g4/a/c/a;Ls1/z/b/l;)V",
        "Le/a/d/z/c/b;",
        "Le/a/d/z/c/b;",
        "getPresenter$voip_release",
        "()Le/a/d/z/c/b;",
        "setPresenter$voip_release",
        "(Le/a/d/z/c/b;)V",
        "presenter",
        "Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;",
        "Ls1/g;",
        "getGroupAvatarView",
        "()Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;",
        "groupAvatarView",
        "g",
        "()Le/a/g4/a/c/a;",
        "notification",
        "Le/a/h4/n;",
        "getNotificationManager",
        "()Le/a/h4/n;",
        "notificationManager",
        "Le/a/g4/a/b;",
        "Le/a/g4/a/b;",
        "getNotificationFactory$voip_release",
        "()Le/a/g4/a/b;",
        "setNotificationFactory$voip_release",
        "(Le/a/g4/a/b;)V",
        "notificationFactory",
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


# instance fields
.field public d:Le/a/d/z/c/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Le/a/g4/a/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final f:Ls1/g;

.field public final g:Ls1/g;

.field public final h:Ls1/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/a/d/z/c/a;-><init>()V

    .line 2
    new-instance v0, Lcom/truecaller/voip/service/invitation/InvitationService$c;

    invoke-direct {v0, p0}, Lcom/truecaller/voip/service/invitation/InvitationService$c;-><init>(Lcom/truecaller/voip/service/invitation/InvitationService;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/voip/service/invitation/InvitationService;->f:Ls1/g;

    .line 3
    new-instance v0, Lcom/truecaller/voip/service/invitation/InvitationService$b;

    invoke-direct {v0, p0}, Lcom/truecaller/voip/service/invitation/InvitationService$b;-><init>(Lcom/truecaller/voip/service/invitation/InvitationService;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/voip/service/invitation/InvitationService;->g:Ls1/g;

    .line 4
    new-instance v0, Lcom/truecaller/voip/service/invitation/InvitationService$a;

    invoke-direct {v0, p0}, Lcom/truecaller/voip/service/invitation/InvitationService$a;-><init>(Lcom/truecaller/voip/service/invitation/InvitationService;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/voip/service/invitation/InvitationService;->h:Ls1/g;

    return-void
.end method

.method public static final k(Landroid/content/Context;Lcom/truecaller/voip/VoipGroupPushNotification;)Landroid/content/Intent;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pushNotification"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/voip/service/invitation/InvitationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "Invitation"

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "PushNotification"

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-static {p0}, Le/a/p5/s0/g;->s(Landroid/content/Context;)V

    return-void
.end method

.method public b()V
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

.method public c(Ljava/lang/String;)V
    .locals 2

    const-string v0, "channelId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "[InvitationService] starting service CallService"

    .line 1
    invoke-static {v1}, Le/a/c/p/a;->M1(Ljava/lang/String;)V

    const-string v1, "context"

    .line 2
    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/voip/service/call/CallService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "IncomingCall"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ChannelId"

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-static {p0, v0}, Ln3/k/b/a;->f(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    sget-object v0, Lcom/truecaller/voip/ui/VoipActivity;->m:Lcom/truecaller/voip/ui/VoipActivity$b;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p0, v1}, Lcom/truecaller/voip/ui/VoipActivity$b;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final e(Le/a/g4/a/c/a;Ls1/z/b/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/g4/a/c/a;",
            "Ls1/z/b/l<",
            "-",
            "Le/a/g4/a/c/a;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, p0, p2, v0, v1}, Le/a/g4/a/a;->q(Le/a/g4/a/a;Landroid/app/Service;ZILjava/lang/Object;)V

    return-void
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
    iget-object v3, p0, Lcom/truecaller/voip/service/invitation/InvitationService;->f:Ls1/g;

    invoke-interface {v3}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/h4/n;

    const-string v5, "miscellaneous_channel"

    .line 4
    invoke-interface {v3, v5}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-direct {v2, p0, v3}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    sget v3, Lcom/truecaller/voip/R$drawable;->ic_voip_notification:I

    .line 7
    iget-object v5, v2, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v3, v5, Landroid/app/Notification;->icon:I

    .line 8
    invoke-virtual {v2, v0}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    const/4 v0, 0x2

    .line 9
    invoke-virtual {v2, v0, v1}, Ln3/k/a/q;->p(IZ)V

    const/16 v0, 0x8

    .line 10
    invoke-virtual {v2, v0, v1}, Ln3/k/a/q;->p(IZ)V

    const-string v0, "call"

    .line 11
    iput-object v0, v2, Ln3/k/a/q;->B:Ljava/lang/String;

    .line 12
    iput-boolean v4, v2, Ln3/k/a/q;->m:Z

    const-string v0, "NotificationCompat.Build\u2026      .setShowWhen(false)"

    .line 13
    invoke-static {v2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget v0, Lcom/truecaller/voip/R$id;->voip_invitation_service_foreground_notification_initial:I

    invoke-virtual {v2}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    const-string v0, "[InvitationService] startForeground called"

    .line 15
    invoke-static {v0}, Le/a/c/p/a;->M1(Ljava/lang/String;)V

    return-void
.end method

.method public final g()Le/a/g4/a/c/a;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/voip/service/invitation/InvitationService;->g:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/g4/a/c/a;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 2

    const-string v0, "desc"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/voip/service/invitation/InvitationService;->g()Le/a/g4/a/c/a;

    move-result-object v0

    new-instance v1, Lcom/truecaller/voip/service/invitation/InvitationService$g;

    invoke-direct {v1, p1}, Lcom/truecaller/voip/service/invitation/InvitationService$g;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/truecaller/voip/service/invitation/InvitationService;->e(Le/a/g4/a/c/a;Ls1/z/b/l;)V

    return-void
.end method

.method public i(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/b0/a/c/m/b;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/truecaller/voip/service/invitation/InvitationService$e;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/truecaller/voip/service/invitation/InvitationService$e;

    iget v1, v0, Lcom/truecaller/voip/service/invitation/InvitationService$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/truecaller/voip/service/invitation/InvitationService$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/truecaller/voip/service/invitation/InvitationService$e;

    invoke-direct {v0, p0, p2}, Lcom/truecaller/voip/service/invitation/InvitationService$e;-><init>(Lcom/truecaller/voip/service/invitation/InvitationService;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Lcom/truecaller/voip/service/invitation/InvitationService$e;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Lcom/truecaller/voip/service/invitation/InvitationService$e;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/truecaller/voip/service/invitation/InvitationService$e;->g:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/voip/service/invitation/InvitationService;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/truecaller/voip/service/invitation/InvitationService;->h:Ls1/g;

    invoke-interface {p2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;

    .line 5
    sget v2, Lcom/truecaller/voip/R$dimen;->notification_call_avatar_size:I

    iput-object p0, v0, Lcom/truecaller/voip/service/invitation/InvitationService$e;->g:Ljava/lang/Object;

    iput v3, v0, Lcom/truecaller/voip/service/invitation/InvitationService$e;->e:I

    invoke-virtual {p2, p1, v2, v0}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->d(Ljava/util/List;ILs1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 6
    :goto_1
    check-cast p2, Landroid/graphics/Bitmap;

    .line 7
    invoke-virtual {p1}, Lcom/truecaller/voip/service/invitation/InvitationService;->g()Le/a/g4/a/c/a;

    move-result-object v0

    new-instance v1, Lcom/truecaller/voip/service/invitation/InvitationService$f;

    invoke-direct {v1, p2}, Lcom/truecaller/voip/service/invitation/InvitationService$f;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0, v1}, Lcom/truecaller/voip/service/invitation/InvitationService;->e(Le/a/g4/a/c/a;Ls1/z/b/l;)V

    .line 8
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "title"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extra"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/voip/service/invitation/InvitationService;->g()Le/a/g4/a/c/a;

    move-result-object v0

    new-instance v1, Lcom/truecaller/voip/service/invitation/InvitationService$h;

    invoke-direct {v1, p1, p2}, Lcom/truecaller/voip/service/invitation/InvitationService$h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/truecaller/voip/service/invitation/InvitationService;->e(Le/a/g4/a/c/a;Ls1/z/b/l;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    new-instance p1, Le/a/d/z/a;

    invoke-direct {p1}, Le/a/d/z/a;-><init>()V

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Le/a/d/z/c/a;->onCreate()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/voip/service/invitation/InvitationService;->d:Le/a/d/z/c/b;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/d/z/c/e;

    invoke-virtual {v0, p0}, Le/a/d/z/c/e;->Y0(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/service/invitation/InvitationService;->d:Le/a/d/z/c/b;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/u2/a/a;

    invoke-virtual {v0}, Le/a/u2/a/a;->c()V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/voip/service/invitation/InvitationService;->g()Le/a/g4/a/c/a;

    move-result-object v0

    invoke-virtual {v0}, Le/a/g4/a/a;->a()V

    .line 3
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9

    const/4 p2, 0x2

    if-nez p1, :cond_0

    return p2

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "presenter"

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p1, "DebugInvitation"

    .line 2
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/truecaller/voip/service/invitation/InvitationService;->d:Le/a/d/z/c/b;

    if-eqz p1, :cond_2

    move-object v3, p1

    check-cast v3, Le/a/d/z/c/e;

    .line 3
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v6, Le/a/d/z/c/g;

    invoke-direct {v6, v3, v2}, Le/a/d/z/c/g;-><init>(Le/a/d/z/c/e;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto/16 :goto_0

    .line 5
    :cond_2
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :sswitch_1
    const-string v0, "DebugAssistant"

    .line 6
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    iget-object p3, p0, Lcom/truecaller/voip/service/invitation/InvitationService;->d:Le/a/d/z/c/b;

    if-eqz p3, :cond_4

    const-string v0, "AssistantInvitation"

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/truecaller/voip/debug/VoipAssistantPushNotification;

    if-eqz p1, :cond_3

    .line 8
    move-object v3, p3

    check-cast v3, Le/a/d/z/c/e;

    .line 9
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "voipAssistantPushNotification"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v6, Le/a/d/z/c/f;

    invoke-direct {v6, v3, p1, v2}, Le/a/d/z/c/f;-><init>(Le/a/d/z/c/e;Lcom/truecaller/voip/debug/VoipAssistantPushNotification;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto/16 :goto_0

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Assistant invitation needs to be provided"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_4
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :sswitch_2
    const-string v0, "Invitation"

    .line 13
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    iget-object p3, p0, Lcom/truecaller/voip/service/invitation/InvitationService;->d:Le/a/d/z/c/b;

    if-eqz p3, :cond_6

    const-string v0, "PushNotification"

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/truecaller/voip/VoipGroupPushNotification;

    if-eqz p1, :cond_5

    .line 15
    move-object v3, p3

    check-cast v3, Le/a/d/z/c/e;

    .line 16
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "notification"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v6, Le/a/d/z/c/h;

    invoke-direct {v6, v3, p1, v2}, Le/a/d/z/c/h;-><init>(Le/a/d/z/c/e;Lcom/truecaller/voip/VoipGroupPushNotification;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_0

    .line 18
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Notification needs to be provided"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_6
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :sswitch_3
    const-string p1, "Reject"

    .line 20
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/truecaller/voip/service/invitation/InvitationService;->d:Le/a/d/z/c/b;

    if-eqz p1, :cond_9

    check-cast p1, Le/a/d/z/c/e;

    .line 21
    iget-object p3, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p3, Le/a/d/z/c/c;

    if-eqz p3, :cond_7

    invoke-interface {p3}, Le/a/d/z/c/c;->a()V

    .line 22
    :cond_7
    iget-object p3, p1, Le/a/d/z/c/e;->g:Le/a/d/w/d;

    invoke-interface {p3}, Le/a/d/w/d;->e()Le/a/d/w/b;

    move-result-object p3

    if-eqz p3, :cond_8

    invoke-interface {p3}, Le/a/d/w/j/a;->a()Lq3/a/p1;

    .line 23
    :cond_8
    iget-object p3, p1, Le/a/d/z/c/e;->g:Le/a/d/w/d;

    invoke-interface {p3}, Le/a/d/w/d;->g()Z

    move-result p3

    if-nez p3, :cond_a

    .line 24
    invoke-virtual {p1}, Le/a/d/z/c/e;->Kj()V

    goto :goto_0

    .line 25
    :cond_9
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_a
    :goto_0
    return p2

    :sswitch_data_0
    .sparse-switch
        -0x6e51a041 -> :sswitch_3
        -0x41eeac47 -> :sswitch_2
        0x2d5a35eb -> :sswitch_1
        0x7337162c -> :sswitch_0
    .end sparse-switch
.end method

.method public setAvatarXConfig(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V
    .locals 2

    const-string v0, "config"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/voip/service/invitation/InvitationService;->g()Le/a/g4/a/c/a;

    move-result-object v0

    new-instance v1, Lcom/truecaller/voip/service/invitation/InvitationService$d;

    invoke-direct {v1, p1}, Lcom/truecaller/voip/service/invitation/InvitationService$d;-><init>(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    invoke-virtual {p0, v0, v1}, Lcom/truecaller/voip/service/invitation/InvitationService;->e(Le/a/g4/a/c/a;Ls1/z/b/l;)V

    return-void
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
