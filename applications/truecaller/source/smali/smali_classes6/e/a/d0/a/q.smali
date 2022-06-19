.class public final Le/a/d0/a/q;
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
    c = "com.truecaller.callerid.window.CallerIdWindowPresenter$maybeShowOutgoingCallContext$1"
    f = "CallerIdWindowPresenter.kt"
    l = {
        0x216
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d0/a/m;

.field public final synthetic g:Le/a/d0/v;


# direct methods
.method public constructor <init>(Le/a/d0/a/m;Le/a/d0/v;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d0/a/q;->f:Le/a/d0/a/m;

    iput-object p2, p0, Le/a/d0/a/q;->g:Le/a/d0/v;

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

    new-instance p1, Le/a/d0/a/q;

    iget-object v0, p0, Le/a/d0/a/q;->f:Le/a/d0/a/m;

    iget-object v1, p0, Le/a/d0/a/q;->g:Le/a/d0/v;

    invoke-direct {p1, v0, v1, p2}, Le/a/d0/a/q;-><init>(Le/a/d0/a/m;Le/a/d0/v;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d0/a/q;

    iget-object v0, p0, Le/a/d0/a/q;->f:Le/a/d0/a/m;

    iget-object v1, p0, Le/a/d0/a/q;->g:Le/a/d0/v;

    invoke-direct {p1, v0, v1, p2}, Le/a/d0/a/q;-><init>(Le/a/d0/a/m;Le/a/d0/v;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d0/a/q;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/d0/a/q;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

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
    iget-object p1, p0, Le/a/d0/a/q;->g:Le/a/d0/v;

    iget-object p1, p1, Le/a/d0/v;->a:Lcom/truecaller/data/entity/Number;

    const-string v2, "callState.number"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 5
    iget-object v2, p0, Le/a/d0/a/q;->f:Le/a/d0/a/m;

    .line 6
    iget-object v2, v2, Le/a/d0/a/m;->A:Le/a/o/c;

    .line 7
    iput v3, p0, Le/a/d0/a/q;->e:I

    invoke-interface {v2, p1, p0}, Le/a/o/c;->k(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    .line 8
    :cond_2
    :goto_0
    check-cast p1, Lcom/truecaller/data/entity/CallContextMessage;

    if-nez p1, :cond_3

    .line 9
    iget-object p1, p0, Le/a/d0/a/q;->f:Le/a/d0/a/m;

    .line 10
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d0/a/l;

    if-eqz p1, :cond_4

    .line 11
    invoke-interface {p1}, Le/a/d0/a/l;->R5()V

    goto :goto_1

    .line 12
    :cond_3
    iget-object v1, p0, Le/a/d0/a/q;->f:Le/a/d0/a/m;

    .line 13
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Le/a/d0/a/l;

    if-eqz v2, :cond_4

    .line 14
    iget-object v3, p1, Lcom/truecaller/data/entity/CallContextMessage;->c:Ljava/lang/String;

    const-wide/16 v4, 0x1388

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 15
    invoke-interface/range {v2 .. v7}, Le/a/d0/a/l;->I5(Ljava/lang/String;JZZ)V

    :cond_4
    :goto_1
    return-object v0
.end method
