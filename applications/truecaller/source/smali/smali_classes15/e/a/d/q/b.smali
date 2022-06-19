.class public Le/a/d/q/b;
.super Landroid/telecom/Connection;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;
.implements Le/a/d/q/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/d/q/b$a;
    }
.end annotation


# static fields
.field public static final synthetic k:I


# instance fields
.field public a:Lq3/a/y;

.field public b:Le/a/d/q/b$a;

.field public c:Le/a/d/b/a/d;

.field public d:Le/a/d/b/b/f;

.field public e:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "-",
            "Landroid/telecom/CallAudioState;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroid/telecom/Connection;

.field public g:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ls1/w/f;

.field public final i:Landroid/content/Context;

.field public final j:Z


# direct methods
.method public constructor <init>(Ls1/w/f;Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroid/telecom/Connection;-><init>()V

    iput-object p1, p0, Le/a/d/q/b;->h:Ls1/w/f;

    iput-object p2, p0, Le/a/d/q/b;->i:Landroid/content/Context;

    iput-boolean p3, p0, Le/a/d/q/b;->j:Z

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2, p1}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object p1

    iput-object p1, p0, Le/a/d/q/b;->a:Lq3/a/y;

    .line 3
    iput-object p0, p0, Le/a/d/q/b;->f:Landroid/telecom/Connection;

    .line 4
    invoke-virtual {p0, p2}, Landroid/telecom/Connection;->setAudioModeIsVoip(Z)V

    const/16 p1, 0x80

    .line 5
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->setConnectionProperties(I)V

    const/4 p1, 0x2

    .line 6
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->setConnectionCapabilities(I)V

    const-string p1, ""

    const/4 p2, 0x3

    .line 7
    invoke-virtual {p0, p1, p2}, Landroid/telecom/Connection;->setCallerDisplayName(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a(Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Landroid/telecom/CallAudioState;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/d/q/b;->e:Ls1/z/b/l;

    .line 2
    invoke-virtual {p0}, Landroid/telecom/Connection;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Le/a/d/q/b;->e:Ls1/z/b/l;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 2
    iget-object v0, p0, Le/a/d/q/b;->g:Ls1/z/b/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/s;

    :cond_0
    return-void
.end method

.method public c(Ls1/z/b/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/d/q/b;->g:Ls1/z/b/a;

    .line 2
    invoke-virtual {p0}, Landroid/telecom/Connection;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 3
    check-cast p1, Le/a/d/q/w$a;

    invoke-virtual {p1}, Le/a/d/q/w$a;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public d()Landroid/telecom/Connection;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/q/b;->f:Landroid/telecom/Connection;

    return-object v0
.end method

.method public final e(Ljava/lang/Class;Ls1/z/b/l;Ls1/z/b/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ls1/z/b/l<",
            "-",
            "Landroid/os/IBinder;",
            "Ls1/s;",
            ">;",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/d/q/b;->b:Le/a/d/q/b$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/d/q/b;->i:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Le/a/d/q/b;->b:Le/a/d/q/b$a;

    .line 5
    new-instance v0, Le/a/d/q/b$a;

    invoke-direct {v0, p0, p2, p3}, Le/a/d/q/b$a;-><init>(Le/a/d/q/b;Ls1/z/b/l;Ls1/z/b/a;)V

    .line 6
    iget-object p2, p0, Le/a/d/q/b;->i:Landroid/content/Context;

    new-instance p3, Landroid/content/Intent;

    iget-object v1, p0, Le/a/d/q/b;->i:Landroid/content/Context;

    invoke-direct {p3, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p3, v0, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Le/a/d/q/b;->f(I)V

    .line 8
    :cond_1
    iput-object v0, p0, Le/a/d/q/b;->b:Le/a/d/q/b$a;

    return-void
.end method

.method public final f(I)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/d/q/b;->b:Le/a/d/q/b$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/d/q/b;->i:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Le/a/d/q/b;->b:Le/a/d/q/b$a;

    .line 5
    iget-object v1, p0, Le/a/d/q/b;->a:Lq3/a/y;

    invoke-interface {v1}, Lq3/a/p1;->j()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Le/a/d/q/b;->a:Lq3/a/y;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v0}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 7
    :cond_1
    new-instance v0, Landroid/telecom/DisconnectCause;

    invoke-direct {v0, p1}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 8
    iget-object p1, p0, Le/a/d/q/b;->g:Ls1/z/b/a;

    if-eqz p1, :cond_2

    .line 9
    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    .line 10
    :cond_2
    invoke-virtual {p0}, Landroid/telecom/Connection;->destroy()V

    return-void
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d/q/b;->h:Ls1/w/f;

    iget-object v1, p0, Le/a/d/q/b;->a:Lq3/a/y;

    invoke-interface {v0, v1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v0

    return-object v0
.end method

.method public initialize()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/telecom/Connection;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/telecom/Connection;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/telecom/Connection;->setInitializing()V

    .line 4
    iget-boolean v0, p0, Le/a/d/q/b;->j:Z

    if-eqz v0, :cond_2

    .line 5
    const-class v0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;

    .line 6
    new-instance v1, Le/a/d/q/e;

    invoke-direct {v1, p0}, Le/a/d/q/e;-><init>(Le/a/d/q/b;)V

    .line 7
    new-instance v2, Le/a/d/q/f;

    invoke-direct {v2, p0}, Le/a/d/q/f;-><init>(Le/a/d/q/b;)V

    .line 8
    invoke-virtual {p0, v0, v1, v2}, Le/a/d/q/b;->e(Ljava/lang/Class;Ls1/z/b/l;Ls1/z/b/a;)V

    goto :goto_0

    .line 9
    :cond_2
    const-class v0, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;

    .line 10
    new-instance v1, Le/a/d/q/c;

    invoke-direct {v1, p0}, Le/a/d/q/c;-><init>(Le/a/d/q/b;)V

    .line 11
    new-instance v2, Le/a/d/q/d;

    invoke-direct {v2, p0}, Le/a/d/q/d;-><init>(Le/a/d/q/b;)V

    .line 12
    invoke-virtual {p0, v0, v1, v2}, Le/a/d/q/b;->e(Ljava/lang/Class;Ls1/z/b/l;Ls1/z/b/a;)V

    :goto_0
    return-void
.end method

.method public onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call audio state is changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/d/q/b;->e:Ls1/z/b/l;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    :cond_0
    return-void
.end method

.method public onDisconnect()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/q/b;->c:Le/a/d/b/a/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/d/b/a/d;->Q1()V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/d/q/b;->g:Ls1/z/b/a;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/s;

    :cond_1
    return-void
.end method

.method public onHold()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/q/b;->c:Le/a/d/b/a/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/d/b/a/d;->O1()V

    :cond_0
    return-void
.end method

.method public onShowIncomingCallUi()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/telecom/Connection;->onShowIncomingCallUi()V

    .line 2
    iget-object v0, p0, Le/a/d/q/b;->i:Landroid/content/Context;

    sget-object v1, Lcom/truecaller/voip/legacy/incoming/ui/LegacyIncomingVoipActivity;->d:Lcom/truecaller/voip/legacy/incoming/ui/LegacyIncomingVoipActivity$a;

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v1, v0, v2, v2, v3}, Lcom/truecaller/voip/legacy/incoming/ui/LegacyIncomingVoipActivity$a;->b(Lcom/truecaller/voip/legacy/incoming/ui/LegacyIncomingVoipActivity$a;Landroid/content/Context;ZZI)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onSilence()V
    .locals 2

    const-string v0, "On silence "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    iget-object v0, p0, Le/a/d/q/b;->d:Le/a/d/b/b/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/d/b/b/f;->m3()V

    :cond_0
    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/telecom/Connection;->onStateChanged(I)V

    return-void
.end method

.method public onUnhold()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/q/b;->c:Le/a/d/b/a/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/d/b/a/d;->M1()V

    :cond_0
    return-void
.end method
