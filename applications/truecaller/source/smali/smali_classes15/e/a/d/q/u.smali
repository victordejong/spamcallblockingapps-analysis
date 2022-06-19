.class public final Le/a/d/q/u;
.super Landroid/telecom/Connection;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;
.implements Le/a/d/q/i;


# static fields
.field public static final synthetic g:I


# instance fields
.field public final a:Landroid/telecom/Connection;

.field public b:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ls1/w/f;

.field public d:Ls1/z/b/l;
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

.field public final e:Le/a/d/v/d;

.field public final f:Le/a/d/w/d;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/d/v/d;Le/a/d/w/d;)V
    .locals 1

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupCallManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "invitationManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroid/telecom/Connection;-><init>()V

    iput-object p2, p0, Le/a/d/q/u;->e:Le/a/d/v/d;

    iput-object p3, p0, Le/a/d/q/u;->f:Le/a/d/w/d;

    .line 2
    iput-object p0, p0, Le/a/d/q/u;->a:Landroid/telecom/Connection;

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 3
    invoke-static {p2, p3, p2}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object p2

    invoke-interface {p1, p2}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object p1

    iput-object p1, p0, Le/a/d/q/u;->c:Ls1/w/f;

    .line 4
    invoke-virtual {p0, p3}, Landroid/telecom/Connection;->setAudioModeIsVoip(Z)V

    const/16 p1, 0x80

    .line 5
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->setConnectionProperties(I)V

    const/4 p1, 0x3

    .line 6
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->setConnectionCapabilities(I)V

    const-string p2, ""

    .line 7
    invoke-virtual {p0, p2, p1}, Landroid/telecom/Connection;->setCallerDisplayName(Ljava/lang/String;I)V

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
    iput-object p1, p0, Le/a/d/q/u;->d:Ls1/z/b/l;

    .line 2
    invoke-virtual {p0}, Landroid/telecom/Connection;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Le/a/d/q/u;->d:Ls1/z/b/l;

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
    iget-object v0, p0, Le/a/d/q/u;->b:Ls1/z/b/a;

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
    iput-object p1, p0, Le/a/d/q/u;->b:Ls1/z/b/a;

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
    iget-object v0, p0, Le/a/d/q/u;->a:Landroid/telecom/Connection;

    return-object v0
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/q/u;->c:Ls1/w/f;

    return-object v0
.end method

.method public initialize()V
    .locals 5

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
    invoke-virtual {p0}, Landroid/telecom/Connection;->setInitialized()V

    .line 4
    iget-object v0, p0, Le/a/d/q/u;->e:Le/a/d/v/d;

    invoke-interface {v0}, Le/a/d/v/d;->getState()Lq3/a/x2/i1;

    move-result-object v0

    .line 5
    new-instance v1, Le/a/d/q/o;

    invoke-direct {v1, v0}, Le/a/d/q/o;-><init>(Lq3/a/x2/f;)V

    .line 6
    new-instance v0, Le/a/d/q/p;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Le/a/d/q/p;-><init>(Ls1/w/d;)V

    invoke-static {v1, v0}, Ls1/a/a/a/v0/f/d;->P3(Lq3/a/x2/f;Ls1/z/b/q;)Lq3/a/x2/f;

    move-result-object v0

    .line 7
    new-instance v1, Le/a/d/q/q;

    invoke-direct {v1, p0, v2}, Le/a/d/q/q;-><init>(Le/a/d/q/u;Ls1/w/d;)V

    .line 8
    new-instance v3, Lq3/a/x2/u0;

    invoke-direct {v3, v0, v1}, Lq3/a/x2/u0;-><init>(Lq3/a/x2/f;Ls1/z/b/p;)V

    .line 9
    invoke-static {v3, p0}, Ls1/a/a/a/v0/f/d;->x2(Lq3/a/x2/f;Lq3/a/i0;)Lq3/a/p1;

    .line 10
    iget-object v0, p0, Le/a/d/q/u;->f:Le/a/d/w/d;

    invoke-interface {v0}, Le/a/d/w/d;->getState()Lq3/a/x2/i1;

    move-result-object v0

    .line 11
    new-instance v1, Le/a/d/q/r;

    invoke-direct {v1, v0}, Le/a/d/q/r;-><init>(Lq3/a/x2/f;)V

    .line 12
    new-instance v0, Le/a/d/q/s;

    invoke-direct {v0, v2}, Le/a/d/q/s;-><init>(Ls1/w/d;)V

    invoke-static {v1, v0}, Ls1/a/a/a/v0/f/d;->P3(Lq3/a/x2/f;Ls1/z/b/q;)Lq3/a/x2/f;

    move-result-object v0

    .line 13
    new-instance v1, Le/a/d/q/t;

    invoke-direct {v1, p0, v2}, Le/a/d/q/t;-><init>(Le/a/d/q/u;Ls1/w/d;)V

    .line 14
    new-instance v3, Lq3/a/x2/u0;

    invoke-direct {v3, v0, v1}, Lq3/a/x2/u0;-><init>(Lq3/a/x2/f;Ls1/z/b/p;)V

    .line 15
    invoke-static {v3, p0}, Ls1/a/a/a/v0/f/d;->x2(Lq3/a/x2/f;Lq3/a/i0;)Lq3/a/p1;

    .line 16
    iget-object v0, p0, Le/a/d/q/u;->f:Le/a/d/w/d;

    invoke-interface {v0}, Le/a/d/w/d;->getState()Lq3/a/x2/i1;

    move-result-object v0

    .line 17
    iget-object v1, p0, Le/a/d/q/u;->e:Le/a/d/v/d;

    invoke-interface {v1}, Le/a/d/v/d;->getState()Lq3/a/x2/i1;

    move-result-object v1

    new-instance v3, Le/a/d/q/m;

    invoke-direct {v3, v2}, Le/a/d/q/m;-><init>(Ls1/w/d;)V

    .line 18
    new-instance v4, Lq3/a/x2/w0;

    invoke-direct {v4, v0, v1, v3}, Lq3/a/x2/w0;-><init>(Lq3/a/x2/f;Lq3/a/x2/f;Ls1/z/b/q;)V

    .line 19
    invoke-static {v4}, Ls1/a/a/a/v0/f/d;->F0(Lq3/a/x2/f;)Lq3/a/x2/f;

    move-result-object v0

    .line 20
    new-instance v1, Le/a/d/q/l;

    invoke-direct {v1, v0}, Le/a/d/q/l;-><init>(Lq3/a/x2/f;)V

    .line 21
    new-instance v0, Le/a/d/q/n;

    invoke-direct {v0, p0, v2}, Le/a/d/q/n;-><init>(Le/a/d/q/u;Ls1/w/d;)V

    .line 22
    new-instance v2, Lq3/a/x2/u0;

    invoke-direct {v2, v1, v0}, Lq3/a/x2/u0;-><init>(Lq3/a/x2/f;Ls1/z/b/p;)V

    .line 23
    invoke-static {v2, p0}, Ls1/a/a/a/v0/f/d;->x2(Lq3/a/x2/f;Lq3/a/i0;)Lq3/a/p1;

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
    iget-object v0, p0, Le/a/d/q/u;->d:Ls1/z/b/l;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    :cond_0
    return-void
.end method

.method public onDisconnect()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d/q/u;->f:Le/a/d/w/d;

    invoke-interface {v0}, Le/a/d/w/d;->e()Le/a/d/w/b;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Le/a/d/w/h$b$d;->b:Le/a/d/w/h$b$d;

    invoke-interface {v0, v1}, Le/a/d/w/j/m;->e(Le/a/d/w/h$b;)Lq3/a/p1;

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/d/q/u;->e:Le/a/d/v/d;

    invoke-interface {v0}, Le/a/d/v/d;->b()Le/a/d/v/b;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Le/a/d/v/h$b$a;->b:Le/a/d/v/h$b$a;

    invoke-interface {v0, v1}, Le/a/d/v/k/p;->k(Le/a/d/v/h$b;)Lq3/a/p1;

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/d/q/u;->b:Ls1/z/b/a;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/s;

    :cond_2
    return-void
.end method

.method public onHold()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/telecom/Connection;->onHold()V

    .line 2
    iget-object v0, p0, Le/a/d/q/u;->e:Le/a/d/v/d;

    invoke-interface {v0}, Le/a/d/v/d;->b()Le/a/d/v/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/d/v/k/a;->h(Z)Lq3/a/p1;

    :cond_0
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
    iget-object v0, p0, Le/a/d/q/u;->f:Le/a/d/w/d;

    invoke-interface {v0}, Le/a/d/w/d;->e()Le/a/d/w/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/d/w/j/w;->k()V

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
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/telecom/Connection;->onUnhold()V

    .line 2
    iget-object v0, p0, Le/a/d/q/u;->e:Le/a/d/v/d;

    invoke-interface {v0}, Le/a/d/v/d;->b()Le/a/d/v/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/d/v/k/a;->h(Z)Lq3/a/p1;

    :cond_0
    return-void
.end method
