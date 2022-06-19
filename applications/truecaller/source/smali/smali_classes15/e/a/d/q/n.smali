.class public final Le/a/d/q/n;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ljava/lang/Boolean;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.callconnection.VoipCallConnectionImpl$endWhenIdle$3"
    f = "VoipCallConnection.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/d/q/u;


# direct methods
.method public constructor <init>(Le/a/d/q/u;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/q/n;->e:Le/a/d/q/u;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/q/n;

    iget-object v0, p0, Le/a/d/q/n;->e:Le/a/d/q/u;

    invoke-direct {p1, v0, p2}, Le/a/d/q/n;-><init>(Le/a/d/q/u;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/d/q/n;->e:Le/a/d/q/u;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    sget p2, Le/a/d/q/u;->g:I

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance p2, Landroid/telecom/DisconnectCause;

    const/4 v1, 0x4

    invoke-direct {p2, v1}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 7
    iget-object p2, v0, Le/a/d/q/u;->b:Ls1/z/b/a;

    if-eqz p2, :cond_0

    .line 8
    invoke-interface {p2}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ls1/s;

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroid/telecom/Connection;->destroy()V

    .line 10
    iget-object p2, v0, Le/a/d/q/u;->c:Ls1/w/f;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 11
    invoke-static {p2, v1, v0, v1}, Ls1/a/a/a/v0/f/d;->R(Ls1/w/f;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/d/q/n;->e:Le/a/d/q/u;

    .line 3
    sget v0, Le/a/d/q/u;->g:I

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/telecom/Connection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 6
    iget-object p1, p1, Le/a/d/q/u;->b:Ls1/z/b/a;

    if-eqz p1, :cond_0

    .line 7
    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    .line 8
    :cond_0
    iget-object p1, p0, Le/a/d/q/n;->e:Le/a/d/q/u;

    .line 9
    invoke-virtual {p1}, Landroid/telecom/Connection;->destroy()V

    .line 10
    iget-object p1, p1, Le/a/d/q/u;->c:Ls1/w/f;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 11
    invoke-static {p1, v1, v0, v1}, Ls1/a/a/a/v0/f/d;->R(Ls1/w/f;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 12
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
