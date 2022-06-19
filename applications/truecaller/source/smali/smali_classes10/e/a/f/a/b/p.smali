.class public final Le/a/f/a/b/p;
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
    c = "com.truecaller.incallui.callui.ongoing.OngoingCallPresenter$maybeShowVoipButton$1"
    f = "OngoingCallPresenter.kt"
    l = {
        0x127
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/f/a/b/j;

.field public final synthetic g:Lcom/truecaller/incallui/service/CallState;


# direct methods
.method public constructor <init>(Le/a/f/a/b/j;Lcom/truecaller/incallui/service/CallState;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/a/b/p;->f:Le/a/f/a/b/j;

    iput-object p2, p0, Le/a/f/a/b/p;->g:Lcom/truecaller/incallui/service/CallState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/f/a/b/p;

    iget-object v0, p0, Le/a/f/a/b/p;->f:Le/a/f/a/b/j;

    iget-object v1, p0, Le/a/f/a/b/p;->g:Lcom/truecaller/incallui/service/CallState;

    invoke-direct {p1, v0, v1, p2}, Le/a/f/a/b/p;-><init>(Le/a/f/a/b/j;Lcom/truecaller/incallui/service/CallState;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/f/a/b/p;

    iget-object v0, p0, Le/a/f/a/b/p;->f:Le/a/f/a/b/j;

    iget-object v1, p0, Le/a/f/a/b/p;->g:Lcom/truecaller/incallui/service/CallState;

    invoke-direct {p1, v0, v1, p2}, Le/a/f/a/b/p;-><init>(Le/a/f/a/b/j;Lcom/truecaller/incallui/service/CallState;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/f/a/b/p;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/f/a/b/p;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/f/a/b/p;->f:Le/a/f/a/b/j;

    .line 5
    iget-object v1, p1, Le/a/f/a/b/j;->y:Le/a/f/z/c0;

    .line 6
    iget-object p1, p1, Le/a/f/a/b/j;->t:Le/a/f/w/c;

    .line 7
    invoke-interface {p1}, Le/a/f/w/c;->a()Lq3/a/w2/h;

    move-result-object p1

    invoke-static {p1}, Le/a/p5/s0/g;->R0(Lq3/a/w2/h;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/f/w/f;

    .line 8
    iget-object v3, p0, Le/a/f/a/b/p;->g:Lcom/truecaller/incallui/service/CallState;

    .line 9
    iget-object v4, p0, Le/a/f/a/b/p;->f:Le/a/f/a/b/j;

    .line 10
    iget-object v4, v4, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    .line 11
    invoke-interface {v4}, Le/a/f/y/c;->n()Z

    move-result v4

    iput v2, p0, Le/a/f/a/b/p;->e:I

    .line 12
    check-cast v1, Le/a/f/v;

    invoke-virtual {v1, p1, v3, v4, p0}, Le/a/f/v;->a(Le/a/f/w/f;Lcom/truecaller/incallui/service/CallState;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 13
    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 14
    iget-object v0, p0, Le/a/f/a/b/p;->f:Le/a/f/a/b/j;

    .line 15
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_3

    .line 16
    invoke-interface {v0, p1}, Le/a/f/a/b/i;->So(Z)V

    .line 17
    :cond_3
    iget-object v0, p0, Le/a/f/a/b/p;->f:Le/a/f/a/b/j;

    .line 18
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_4

    goto :goto_2

    .line 19
    :cond_4
    iget-object p1, v0, Le/a/f/a/b/j;->z:Le/a/f/z/y;

    const-string v1, "voipTooltip"

    invoke-interface {p1, v1}, Le/a/f/z/y;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 20
    :cond_5
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/i;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Le/a/f/a/b/i;->wu()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 21
    iget-object p1, v0, Le/a/f/a/b/j;->z:Le/a/f/z/y;

    invoke-interface {p1, v1, v2}, Le/a/f/z/y;->putBoolean(Ljava/lang/String;Z)V

    .line 22
    :cond_7
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
