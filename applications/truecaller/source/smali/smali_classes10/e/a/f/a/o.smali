.class public final Le/a/f/a/o;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lcom/truecaller/incallui/service/CallState;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.incallui.callui.InCallUIPresenter$listenToCallStateChanges$1"
    f = "InCallUIPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/f/a/n;


# direct methods
.method public constructor <init>(Le/a/f/a/n;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/a/o;->f:Le/a/f/a/n;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/f/a/o;

    iget-object v1, p0, Le/a/f/a/o;->f:Le/a/f/a/n;

    invoke-direct {v0, v1, p2}, Le/a/f/a/o;-><init>(Le/a/f/a/n;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/a/o;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v1, "completion"

    .line 1
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/f/a/o;->f:Le/a/f/a/n;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Lcom/truecaller/incallui/service/CallState;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/m;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/f/a/m;->C0()V

    .line 6
    :cond_1
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/m;

    if-eqz p1, :cond_4

    sget-object p2, Lcom/truecaller/incallui/service/CallState;->STATE_ACTIVE:Lcom/truecaller/incallui/service/CallState;

    invoke-interface {p1, p2}, Le/a/f/a/m;->W0(Lcom/truecaller/incallui/service/CallState;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/m;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Le/a/f/a/m;->r0()V

    goto :goto_0

    .line 8
    :cond_3
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/m;

    if-eqz p1, :cond_4

    sget-object p2, Lcom/truecaller/incallui/service/CallState;->STATE_DIALING:Lcom/truecaller/incallui/service/CallState;

    invoke-interface {p1, p2}, Le/a/f/a/m;->W0(Lcom/truecaller/incallui/service/CallState;)V

    :cond_4
    :goto_0
    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Ls1/s;->a:Ls1/s;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/f/a/o;->e:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/incallui/service/CallState;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/f/a/o;->f:Le/a/f/a/n;

    .line 4
    iget-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/f/a/m;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Le/a/f/a/m;->C0()V

    .line 5
    :cond_1
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/m;

    if-eqz p1, :cond_4

    sget-object v1, Lcom/truecaller/incallui/service/CallState;->STATE_ACTIVE:Lcom/truecaller/incallui/service/CallState;

    invoke-interface {p1, v1}, Le/a/f/a/m;->W0(Lcom/truecaller/incallui/service/CallState;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Le/a/f/a/o;->f:Le/a/f/a/n;

    .line 7
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/m;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Le/a/f/a/m;->r0()V

    goto :goto_0

    .line 8
    :cond_3
    iget-object p1, p0, Le/a/f/a/o;->f:Le/a/f/a/n;

    .line 9
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/m;

    if-eqz p1, :cond_4

    sget-object v1, Lcom/truecaller/incallui/service/CallState;->STATE_DIALING:Lcom/truecaller/incallui/service/CallState;

    invoke-interface {p1, v1}, Le/a/f/a/m;->W0(Lcom/truecaller/incallui/service/CallState;)V

    :cond_4
    :goto_0
    return-object v0
.end method
