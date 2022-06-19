.class public final Lcom/truecaller/voip/service/call/CallService;
.super Le/a/d/z/b/o;
.source "SourceFile"

# interfaces
.implements Le/a/d/z/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/voip/service/call/CallService$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0001\u0018\u0000 \u00192\u00020\u00012\u00020\u0002:\u0001/B\u0007\u00a2\u0006\u0004\u0008X\u0010\nJ\'\u0010\u0007\u001a\u00020\u0005*\u00020\u00032\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00050\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ)\u0010\u0010\u001a\u00020\r2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0019\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\nJ\u001f\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0017\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0019\u0010 \u001a\u00020\u00052\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016\u00a2\u0006\u0004\u0008 \u0010!J\u000f\u0010\"\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\"\u0010\nJ\u000f\u0010#\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008#\u0010\nJ\u000f\u0010$\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008$\u0010\nJ\u000f\u0010%\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008%\u0010\nJ\u0017\u0010(\u001a\u00020\u00052\u0006\u0010\'\u001a\u00020&H\u0016\u00a2\u0006\u0004\u0008(\u0010)J!\u0010-\u001a\u00020\u00052\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020+0*H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008-\u0010.J\u000f\u0010/\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008/\u0010\nJ\u0017\u00101\u001a\u00020\u00052\u0006\u00100\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u00081\u0010\u001dJ\u000f\u00102\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u00082\u0010\nJ\u0017\u00104\u001a\u00020\u00052\u0006\u00103\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u00084\u0010\u001dJ\u000f\u00105\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u00085\u0010\nJ\u000f\u00106\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u00086\u0010\nR\"\u0010=\u001a\u0002078\u0000@\u0000X\u0081.\u00a2\u0006\u0012\n\u0004\u0008%\u00108\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R\"\u0010D\u001a\u00020>8\u0000@\u0000X\u0081.\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010?\u001a\u0004\u0008@\u0010A\"\u0004\u0008B\u0010CR\"\u0010K\u001a\u00020E8\u0000@\u0000X\u0081.\u00a2\u0006\u0012\n\u0004\u00082\u0010F\u001a\u0004\u0008G\u0010H\"\u0004\u0008I\u0010JR\u001d\u0010P\u001a\u00020L8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010M\u001a\u0004\u0008N\u0010OR\u001d\u0010T\u001a\u00020Q8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010M\u001a\u0004\u0008R\u0010SR\u001d\u0010W\u001a\u00020\u00038B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010M\u001a\u0004\u0008U\u0010V\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006Y"
    }
    d2 = {
        "Lcom/truecaller/voip/service/call/CallService;",
        "Landroid/app/Service;",
        "Le/a/d/z/b/b;",
        "Le/a/g4/a/d/b;",
        "Lkotlin/Function1;",
        "Ls1/s;",
        "block",
        "m",
        "(Le/a/g4/a/d/b;Ls1/z/b/l;)V",
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
        "",
        "title",
        "extra",
        "j",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "desc",
        "h",
        "(Ljava/lang/String;)V",
        "",
        "elapsedTime",
        "k",
        "(Ljava/lang/Long;)V",
        "c",
        "b",
        "g",
        "e",
        "Lcom/truecaller/common/ui/avatar/AvatarXConfig;",
        "config",
        "setAvatarXConfig",
        "(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V",
        "",
        "Le/a/b0/a/c/m/b;",
        "configs",
        "i",
        "(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;",
        "a",
        "message",
        "M",
        "d",
        "number",
        "l",
        "t",
        "onDestroy",
        "Le/a/g4/a/b;",
        "Le/a/g4/a/b;",
        "getNotificationFactory$voip_release",
        "()Le/a/g4/a/b;",
        "setNotificationFactory$voip_release",
        "(Le/a/g4/a/b;)V",
        "notificationFactory",
        "Le/a/p5/c;",
        "Le/a/p5/c;",
        "getClock$voip_release",
        "()Le/a/p5/c;",
        "setClock$voip_release",
        "(Le/a/p5/c;)V",
        "clock",
        "Le/a/d/z/b/a;",
        "Le/a/d/z/b/a;",
        "getPresenter$voip_release",
        "()Le/a/d/z/b/a;",
        "setPresenter$voip_release",
        "(Le/a/d/z/b/a;)V",
        "presenter",
        "Le/a/h4/n;",
        "Ls1/g;",
        "o",
        "()Le/a/h4/n;",
        "notificationManager",
        "Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;",
        "getGroupAvatarView",
        "()Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;",
        "groupAvatarView",
        "n",
        "()Le/a/g4/a/d/b;",
        "notification",
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
.field public static final j:Lcom/truecaller/voip/service/call/CallService$a;


# instance fields
.field public d:Le/a/d/z/b/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Le/a/g4/a/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Le/a/p5/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final g:Ls1/g;

.field public final h:Ls1/g;

.field public final i:Ls1/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/voip/service/call/CallService$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/voip/service/call/CallService$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/voip/service/call/CallService;->j:Lcom/truecaller/voip/service/call/CallService$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/a/d/z/b/o;-><init>()V

    .line 2
    new-instance v0, Lcom/truecaller/voip/service/call/CallService$f;

    invoke-direct {v0, p0}, Lcom/truecaller/voip/service/call/CallService$f;-><init>(Lcom/truecaller/voip/service/call/CallService;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/voip/service/call/CallService;->g:Ls1/g;

    .line 3
    new-instance v0, Lcom/truecaller/voip/service/call/CallService$e;

    invoke-direct {v0, p0}, Lcom/truecaller/voip/service/call/CallService$e;-><init>(Lcom/truecaller/voip/service/call/CallService;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/voip/service/call/CallService;->h:Ls1/g;

    .line 4
    new-instance v0, Lcom/truecaller/voip/service/call/CallService$d;

    invoke-direct {v0, p0}, Lcom/truecaller/voip/service/call/CallService$d;-><init>(Lcom/truecaller/voip/service/call/CallService;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/voip/service/call/CallService;->i:Ls1/g;

    return-void
.end method


# virtual methods
.method public M(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public a()V
    .locals 0

    .line 1
    invoke-static {p0}, Le/a/p5/s0/g;->s(Landroid/content/Context;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/voip/service/call/CallService;->n()Le/a/g4/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/truecaller/voip/service/call/CallService$n;->b:Lcom/truecaller/voip/service/call/CallService$n;

    invoke-virtual {p0, v0, v1}, Lcom/truecaller/voip/service/call/CallService;->m(Le/a/g4/a/d/b;Ls1/z/b/l;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/voip/service/call/CallService;->n()Le/a/g4/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/truecaller/voip/service/call/CallService$c;->b:Lcom/truecaller/voip/service/call/CallService$c;

    invoke-virtual {p0, v0, v1}, Lcom/truecaller/voip/service/call/CallService;->m(Le/a/g4/a/d/b;Ls1/z/b/l;)V

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

.method public e()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/voip/service/call/CallService;->n()Le/a/g4/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/truecaller/voip/service/call/CallService$m;->b:Lcom/truecaller/voip/service/call/CallService$m;

    invoke-virtual {p0, v0, v1}, Lcom/truecaller/voip/service/call/CallService;->m(Le/a/g4/a/d/b;Ls1/z/b/l;)V

    return-void
.end method

.method public f()V
    .locals 6

    .line 1
    sget v0, Lcom/truecaller/voip/R$string;->voip_truecaller_audio_call:I

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
    invoke-virtual {p0}, Lcom/truecaller/voip/service/call/CallService;->o()Le/a/h4/n;

    move-result-object v3

    const-string v5, "miscellaneous_channel"

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
    sget v0, Lcom/truecaller/voip/R$id;->voip_call_service_foreground_notification:I

    invoke-virtual {v2}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    const-string v0, "[CallService] startForeground called"

    .line 14
    invoke-static {v0}, Le/a/c/p/a;->M1(Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/voip/service/call/CallService;->n()Le/a/g4/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/truecaller/voip/service/call/CallService$b;->b:Lcom/truecaller/voip/service/call/CallService$b;

    invoke-virtual {p0, v0, v1}, Lcom/truecaller/voip/service/call/CallService;->m(Le/a/g4/a/d/b;Ls1/z/b/l;)V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 2

    const-string v0, "desc"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/voip/service/call/CallService;->n()Le/a/g4/a/d/b;

    move-result-object v0

    new-instance v1, Lcom/truecaller/voip/service/call/CallService$k;

    invoke-direct {v1, p1}, Lcom/truecaller/voip/service/call/CallService$k;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/truecaller/voip/service/call/CallService;->m(Le/a/g4/a/d/b;Ls1/z/b/l;)V

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

    instance-of v0, p2, Lcom/truecaller/voip/service/call/CallService$h;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/truecaller/voip/service/call/CallService$h;

    iget v1, v0, Lcom/truecaller/voip/service/call/CallService$h;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/truecaller/voip/service/call/CallService$h;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/truecaller/voip/service/call/CallService$h;

    invoke-direct {v0, p0, p2}, Lcom/truecaller/voip/service/call/CallService$h;-><init>(Lcom/truecaller/voip/service/call/CallService;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Lcom/truecaller/voip/service/call/CallService$h;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Lcom/truecaller/voip/service/call/CallService$h;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/truecaller/voip/service/call/CallService$h;->g:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/voip/service/call/CallService;

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
    iget-object p2, p0, Lcom/truecaller/voip/service/call/CallService;->i:Ls1/g;

    invoke-interface {p2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;

    .line 5
    sget v2, Lcom/truecaller/voip/R$dimen;->notification_call_avatar_size:I

    iput-object p0, v0, Lcom/truecaller/voip/service/call/CallService$h;->g:Ljava/lang/Object;

    iput v3, v0, Lcom/truecaller/voip/service/call/CallService$h;->e:I

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
    invoke-virtual {p1}, Lcom/truecaller/voip/service/call/CallService;->n()Le/a/g4/a/d/b;

    move-result-object v0

    new-instance v1, Lcom/truecaller/voip/service/call/CallService$i;

    invoke-direct {v1, p2}, Lcom/truecaller/voip/service/call/CallService$i;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0, v1}, Lcom/truecaller/voip/service/call/CallService;->m(Le/a/g4/a/d/b;Ls1/z/b/l;)V

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
    invoke-virtual {p0}, Lcom/truecaller/voip/service/call/CallService;->n()Le/a/g4/a/d/b;

    move-result-object v0

    new-instance v1, Lcom/truecaller/voip/service/call/CallService$l;

    invoke-direct {v1, p1, p2}, Lcom/truecaller/voip/service/call/CallService$l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/truecaller/voip/service/call/CallService;->m(Le/a/g4/a/d/b;Ls1/z/b/l;)V

    return-void
.end method

.method public k(Ljava/lang/Long;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/voip/service/call/CallService;->n()Le/a/g4/a/d/b;

    move-result-object v0

    new-instance v1, Lcom/truecaller/voip/service/call/CallService$j;

    invoke-direct {v1, p0, p1}, Lcom/truecaller/voip/service/call/CallService$j;-><init>(Lcom/truecaller/voip/service/call/CallService;Ljava/lang/Long;)V

    invoke-virtual {p0, v0, v1}, Lcom/truecaller/voip/service/call/CallService;->m(Le/a/g4/a/d/b;Ls1/z/b/l;)V

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 2

    const-string v0, "number"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    .line 1
    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.truecaller.voip.extra.EXTRA_NUMBER"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {p0, v0}, Ln3/k/b/a;->f(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public final m(Le/a/g4/a/d/b;Ls1/z/b/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/g4/a/d/b;",
            "Ls1/z/b/l<",
            "-",
            "Le/a/g4/a/d/b;",
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

.method public final n()Le/a/g4/a/d/b;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/voip/service/call/CallService;->h:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/g4/a/d/b;

    return-object v0
.end method

.method public final o()Le/a/h4/n;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/voip/service/call/CallService;->g:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/h4/n;

    return-object v0
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
    invoke-super {p0}, Le/a/d/z/b/o;->onCreate()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/voip/service/call/CallService;->d:Le/a/d/z/b/a;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/d/z/b/c;

    invoke-virtual {v0, p0}, Le/a/d/z/b/c;->Y0(Ljava/lang/Object;)V

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
    iget-object v0, p0, Lcom/truecaller/voip/service/call/CallService;->d:Le/a/d/z/b/a;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/u2/a/a;

    invoke-virtual {v0}, Le/a/u2/a/a;->c()V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/voip/service/call/CallService;->n()Le/a/g4/a/d/b;

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
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    if-nez v1, :cond_0

    return v2

    .line 1
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "presenter"

    const/4 v6, 0x0

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "DebugOutgoingCall"

    .line 2
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/truecaller/voip/service/call/CallService;->d:Le/a/d/z/b/a;

    if-eqz v1, :cond_2

    move-object v7, v1

    check-cast v7, Le/a/d/z/b/c;

    .line 3
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v10, Le/a/d/z/b/e;

    invoke-direct {v10, v7, v6}, Le/a/d/z/b/e;-><init>(Le/a/d/z/b/c;Ls1/w/d;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto/16 :goto_0

    .line 5
    :cond_2
    invoke-static {v5}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v6

    :sswitch_1
    const-string v1, "ToggleMute"

    .line 6
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/truecaller/voip/service/call/CallService;->d:Le/a/d/z/b/a;

    if-eqz v1, :cond_3

    check-cast v1, Le/a/d/z/b/c;

    .line 7
    invoke-virtual {v1}, Le/a/d/z/b/c;->Lj()Le/a/d/v/b;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-interface {v1}, Le/a/d/v/k/a;->g()Lq3/a/p1;

    goto/16 :goto_0

    .line 8
    :cond_3
    invoke-static {v5}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v6

    :sswitch_2
    const-string v4, "OutgoingCall"

    .line 9
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v0, Lcom/truecaller/voip/service/call/CallService;->d:Le/a/d/z/b/a;

    if-eqz v3, :cond_6

    const-string v4, "Numbers"

    .line 10
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 11
    invoke-static {v4}, Le/q/f/a/d/a;->j3([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    const-string v5, "CallOptions"

    .line 12
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/truecaller/voip/VoipCallOptions;

    if-eqz v1, :cond_4

    .line 13
    move-object v7, v3

    check-cast v7, Le/a/d/z/b/c;

    .line 14
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "numbers"

    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "callOptions"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v8, v7, Le/a/d/z/b/c;->i:Le/a/d/c0/f0;

    .line 16
    new-instance v3, Le/a/d/c0/e0;

    .line 17
    sget-object v10, Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;->OUTGOING:Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/16 v19, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x7e

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v9, v3

    .line 18
    invoke-direct/range {v9 .. v18}, Le/a/d/c0/e0;-><init>(Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZI)V

    .line 19
    sget-object v10, Lcom/truecaller/voip/util/VoipAnalyticsState;->INITIATED:Lcom/truecaller/voip/util/VoipAnalyticsState;

    const/4 v12, 0x4

    move-object v11, v5

    move-object/from16 v13, v19

    .line 20
    invoke-static/range {v8 .. v13}, Le/a/p5/s0/g;->A0(Le/a/d/c0/f0;Le/a/d/c0/e0;Lcom/truecaller/voip/util/VoipAnalyticsState;Lcom/truecaller/voip/util/VoipAnalyticsStateReason;ILjava/lang/Object;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 21
    new-instance v10, Le/a/d/z/b/g;

    invoke-direct {v10, v7, v4, v1, v6}, Le/a/d/z/b/g;-><init>(Le/a/d/z/b/c;Ljava/util/Set;Lcom/truecaller/voip/VoipCallOptions;Ls1/w/d;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto/16 :goto_0

    .line 22
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Call options needs to be provided"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Numbers need to be provided"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_6
    invoke-static {v5}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v6

    :sswitch_3
    const-string v1, "ToggleSpeaker"

    .line 25
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/truecaller/voip/service/call/CallService;->d:Le/a/d/z/b/a;

    if-eqz v1, :cond_7

    check-cast v1, Le/a/d/z/b/c;

    .line 26
    invoke-virtual {v1}, Le/a/d/z/b/c;->Lj()Le/a/d/v/b;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-interface {v1}, Le/a/d/v/k/e;->q()Lq3/a/p1;

    goto/16 :goto_0

    .line 27
    :cond_7
    invoke-static {v5}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v6

    :sswitch_4
    const-string v4, "IncomingCall"

    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v0, Lcom/truecaller/voip/service/call/CallService;->d:Le/a/d/z/b/a;

    if-eqz v3, :cond_9

    const-string v4, "ChannelId"

    .line 29
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 30
    check-cast v3, Le/a/d/z/b/c;

    .line 31
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "channelId"

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v10, Le/a/d/z/b/f;

    invoke-direct {v10, v3, v6}, Le/a/d/z/b/f;-><init>(Le/a/d/z/b/c;Ls1/w/d;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x0

    move-object v7, v3

    invoke-static/range {v7 .. v12}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 33
    invoke-virtual {v3}, Le/a/d/z/b/c;->Kj()V

    goto :goto_0

    .line 34
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Channel id needs to be provided"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_9
    invoke-static {v5}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v6

    :sswitch_5
    const-string v1, "HangUp"

    .line 36
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/truecaller/voip/service/call/CallService;->d:Le/a/d/z/b/a;

    if-eqz v1, :cond_c

    check-cast v1, Le/a/d/z/b/c;

    .line 37
    iget-object v3, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/d/z/b/b;

    if-eqz v3, :cond_a

    invoke-interface {v3}, Le/a/d/z/b/b;->a()V

    .line 38
    :cond_a
    iget-object v3, v1, Le/a/d/z/b/c;->f:Le/a/d/v/d;

    invoke-interface {v3}, Le/a/d/v/d;->e()Lq3/a/p1;

    .line 39
    iget-object v3, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/d/z/b/b;

    if-eqz v3, :cond_b

    sget v4, Lcom/truecaller/voip/R$string;->voip_status_ending:I

    .line 40
    iget-object v5, v1, Le/a/d/z/b/c;->h:Le/a/p5/c0;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v5, v4, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "resourceProvider.getString(res)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-interface {v3, v4}, Le/a/d/z/b/b;->h(Ljava/lang/String;)V

    .line 42
    :cond_b
    invoke-virtual {v1}, Le/a/d/z/b/c;->Kj()V

    goto :goto_0

    .line 43
    :cond_c
    invoke-static {v5}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v6

    :cond_d
    :goto_0
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x7f989d33 -> :sswitch_5
        -0x6331483c -> :sswitch_4
        0x3ecbc5eb -> :sswitch_3
        0x43b8e00a -> :sswitch_2
        0x43ff93ad -> :sswitch_1
        0x4677d1bd -> :sswitch_0
    .end sparse-switch
.end method

.method public setAvatarXConfig(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V
    .locals 2

    const-string v0, "config"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/voip/service/call/CallService;->n()Le/a/g4/a/d/b;

    move-result-object v0

    new-instance v1, Lcom/truecaller/voip/service/call/CallService$g;

    invoke-direct {v1, p1}, Lcom/truecaller/voip/service/call/CallService$g;-><init>(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    invoke-virtual {p0, v0, v1}, Lcom/truecaller/voip/service/call/CallService;->m(Le/a/g4/a/d/b;Ls1/z/b/l;)V

    return-void
.end method

.method public t()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/voip/service/call/CallService;->o()Le/a/h4/n;

    move-result-object v0

    sget v1, Lcom/truecaller/voip/R$id;->voip_call_service_foreground_notification:I

    invoke-interface {v0, v1}, Le/a/h4/n;->f(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
