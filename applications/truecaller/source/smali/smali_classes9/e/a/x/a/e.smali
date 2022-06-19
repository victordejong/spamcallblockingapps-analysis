.class public final Le/a/x/a/e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ghost_call.incoming.GhostCallIncomingPresenter$acceptCall$1"
    f = "GhostCallIncomingPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/x/a/f;


# direct methods
.method public constructor <init>(Le/a/x/a/f;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/x/a/e;->e:Le/a/x/a/f;

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

    new-instance p1, Le/a/x/a/e;

    iget-object v0, p0, Le/a/x/a/e;->e:Le/a/x/a/f;

    invoke-direct {p1, v0, p2}, Le/a/x/a/e;-><init>(Le/a/x/a/f;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/x/a/e;->e:Le/a/x/a/f;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/x/a/h;

    if-eqz p2, :cond_0

    .line 5
    invoke-interface {p2}, Le/a/x/a/h;->L()V

    .line 6
    :cond_0
    iget-object p2, v0, Le/a/x/a/f;->g:Le/a/x/l;

    .line 7
    invoke-interface {p2}, Le/a/x/l;->z()V

    .line 8
    iget-object p2, v0, Le/a/x/a/f;->h:Le/a/x/h0/a;

    .line 9
    sget-object v0, Lcom/truecaller/ghost_call/analytics/events/GhostCallInCallUIAction;->CallPicked:Lcom/truecaller/ghost_call/analytics/events/GhostCallInCallUIAction;

    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ghostCallInCallUIAction"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v1, Le/a/x/h0/b/b;

    .line 12
    iget-object v2, p2, Le/a/x/h0/a;->d:Le/a/l/a/v;

    invoke-virtual {v2}, Le/a/l/a/v;->a()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-direct {v1, v0, v2}, Le/a/x/h0/b/b;-><init>(Lcom/truecaller/ghost_call/analytics/events/GhostCallInCallUIAction;Ljava/lang/String;)V

    .line 14
    invoke-static {v1, p2}, Le/a/c/p/a;->O1(Le/a/l/l2/a;Le/a/l/l2/c;)V

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/x/a/e;->e:Le/a/x/a/f;

    .line 3
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/x/a/h;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Le/a/x/a/h;->L()V

    .line 5
    :cond_0
    iget-object p1, p0, Le/a/x/a/e;->e:Le/a/x/a/f;

    .line 6
    iget-object p1, p1, Le/a/x/a/f;->g:Le/a/x/l;

    .line 7
    invoke-interface {p1}, Le/a/x/l;->z()V

    .line 8
    iget-object p1, p0, Le/a/x/a/e;->e:Le/a/x/a/f;

    .line 9
    iget-object p1, p1, Le/a/x/a/f;->h:Le/a/x/h0/a;

    .line 10
    sget-object v0, Lcom/truecaller/ghost_call/analytics/events/GhostCallInCallUIAction;->CallPicked:Lcom/truecaller/ghost_call/analytics/events/GhostCallInCallUIAction;

    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ghostCallInCallUIAction"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v1, Le/a/x/h0/b/b;

    .line 13
    iget-object v2, p1, Le/a/x/h0/a;->d:Le/a/l/a/v;

    invoke-virtual {v2}, Le/a/l/a/v;->a()Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-direct {v1, v0, v2}, Le/a/x/h0/b/b;-><init>(Lcom/truecaller/ghost_call/analytics/events/GhostCallInCallUIAction;Ljava/lang/String;)V

    .line 15
    invoke-static {v1, p1}, Le/a/c/p/a;->O1(Le/a/l/l2/a;Le/a/l/l2/c;)V

    .line 16
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
