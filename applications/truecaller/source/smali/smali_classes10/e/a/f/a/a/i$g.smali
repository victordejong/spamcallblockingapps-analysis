.class public final Le/a/f/a/a/i$g;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f/a/a/i;->ak(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
    c = "com.truecaller.incallui.callui.incoming.IncomingCallPresenter$onNewCall$1"
    f = "IncomingCallPresenter.kt"
    l = {
        0x6a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/f/a/a/i;


# direct methods
.method public constructor <init>(Le/a/f/a/a/i;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/a/a/i$g;->f:Le/a/f/a/a/i;

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

    new-instance p1, Le/a/f/a/a/i$g;

    iget-object v0, p0, Le/a/f/a/a/i$g;->f:Le/a/f/a/a/i;

    invoke-direct {p1, v0, p2}, Le/a/f/a/a/i$g;-><init>(Le/a/f/a/a/i;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/f/a/a/i$g;

    iget-object v0, p0, Le/a/f/a/a/i$g;->f:Le/a/f/a/a/i;

    invoke-direct {p1, v0, p2}, Le/a/f/a/a/i$g;-><init>(Le/a/f/a/a/i;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/f/a/a/i$g;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/f/a/a/i$g;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_1

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
    iget-object p1, p0, Le/a/f/a/a/i$g;->f:Le/a/f/a/a/i;

    .line 5
    invoke-virtual {p1}, Le/a/f/a/f;->Nj()V

    .line 6
    iget-object p1, p0, Le/a/f/a/a/i$g;->f:Le/a/f/a/a/i;

    .line 7
    iget-object v1, p1, Le/a/f/a/a/i;->p:Le/a/f/y/c;

    invoke-interface {v1}, Le/a/f/y/c;->g()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 8
    iget-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/f/a/a/g;

    if-eqz v1, :cond_2

    sget v3, Lcom/truecaller/incallui/R$string;->incallui_unknown_caller:I

    invoke-interface {v1, v3}, Le/a/f/a/e;->q3(I)V

    .line 9
    :cond_2
    iget-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/f/a/a/g;

    if-eqz v1, :cond_3

    sget v3, Lcom/truecaller/incallui/R$string;->incallui_hidden_number:I

    invoke-interface {v1, v3}, Le/a/f/a/e;->i3(I)V

    .line 10
    :cond_3
    invoke-virtual {p1}, Le/a/f/a/a/i;->Rj()V

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {p1}, Le/a/f/a/a/i;->ck()Le/a/f/w/f$b;

    move-result-object v3

    .line 12
    instance-of v4, v3, Le/a/f/w/f$b;

    if-eqz v4, :cond_8

    .line 13
    iget-object v3, v3, Le/a/f/w/f$b;->a:Le/a/f/a/g;

    .line 14
    iget-boolean v3, v3, Le/a/f/a/g;->p:Z

    if-eqz v3, :cond_6

    .line 15
    iget-object v3, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/a/g;

    if-eqz v3, :cond_5

    invoke-interface {v3, v1}, Le/a/f/a/e;->Ns(Ljava/lang/String;)V

    .line 16
    :cond_5
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/a/g;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Le/a/f/a/e;->J()V

    goto :goto_0

    .line 17
    :cond_6
    iget-object v3, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/a/g;

    if-eqz v3, :cond_7

    invoke-interface {v3, v1}, Le/a/f/a/e;->setPhoneNumber(Ljava/lang/String;)V

    .line 18
    :cond_7
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/a/g;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Le/a/f/a/e;->Z()V

    goto :goto_0

    .line 19
    :cond_8
    iget-object v3, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/a/g;

    if-eqz v3, :cond_9

    invoke-interface {v3, v1}, Le/a/f/a/e;->setPhoneNumber(Ljava/lang/String;)V

    .line 20
    :cond_9
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/a/g;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Le/a/f/a/e;->Z()V

    .line 21
    :cond_a
    :goto_0
    iget-object p1, p0, Le/a/f/a/a/i$g;->f:Le/a/f/a/a/i;

    iput v2, p0, Le/a/f/a/a/i$g;->e:I

    invoke-virtual {p1, p0}, Le/a/f/a/a/i;->Sj(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_b

    return-object v0

    .line 22
    :cond_b
    :goto_1
    iget-object p1, p0, Le/a/f/a/a/i$g;->f:Le/a/f/a/a/i;

    .line 23
    iget-object v0, p1, Le/a/f/a/a/i;->q:Le/a/f/w/c;

    invoke-interface {v0}, Le/a/f/w/c;->a()Lq3/a/w2/h;

    move-result-object v0

    .line 24
    new-instance v1, Le/a/f/a/a/j;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Le/a/f/a/a/j;-><init>(Le/a/f/a/a/i;Ls1/w/d;)V

    invoke-static {p1, v0, v1}, Le/a/p5/s0/g;->P0(Lq3/a/i0;Lq3/a/w2/h;Ls1/z/b/p;)V

    .line 25
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
