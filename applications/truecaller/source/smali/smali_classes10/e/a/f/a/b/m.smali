.class public final Le/a/f/a/b/m;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Le/a/f/w/f;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.incallui.callui.ongoing.OngoingCallPresenter$listenToCallersInfoChannel$1"
    f = "OngoingCallPresenter.kt"
    l = {
        0x23a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/f/a/b/j;


# direct methods
.method public constructor <init>(Le/a/f/a/b/j;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/a/b/m;->g:Le/a/f/a/b/j;

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

    new-instance v0, Le/a/f/a/b/m;

    iget-object v1, p0, Le/a/f/a/b/m;->g:Le/a/f/a/b/j;

    invoke-direct {v0, v1, p2}, Le/a/f/a/b/m;-><init>(Le/a/f/a/b/j;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/a/b/m;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/f/a/b/m;

    iget-object v1, p0, Le/a/f/a/b/m;->g:Le/a/f/a/b/j;

    invoke-direct {v0, v1, p2}, Le/a/f/a/b/m;-><init>(Le/a/f/a/b/j;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/a/b/m;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/f/a/b/m;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/f/a/b/m;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/f/a/b/m;->e:Ljava/lang/Object;

    check-cast v0, Le/a/f/w/f;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/f/a/b/m;->e:Ljava/lang/Object;

    check-cast p1, Le/a/f/w/f;

    .line 4
    iget-object v1, p0, Le/a/f/a/b/m;->g:Le/a/f/a/b/j;

    invoke-static {v1}, Le/a/f/a/b/j;->Pj(Le/a/f/a/b/j;)V

    .line 5
    instance-of v1, p1, Le/a/f/w/f$c;

    if-eqz v1, :cond_4

    iget-object p1, p0, Le/a/f/a/b/m;->g:Le/a/f/a/b/j;

    .line 6
    invoke-virtual {p1}, Le/a/f/a/b/j;->ck()V

    .line 7
    iget-object v0, p1, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {v0}, Le/a/f/y/c;->h()Lq3/a/w2/h;

    move-result-object v0

    invoke-static {v0}, Le/a/p5/s0/g;->R0(Lq3/a/w2/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/incallui/service/CallState;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    .line 8
    :goto_0
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/i;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Le/a/f/a/e;->Oz()V

    goto :goto_2

    .line 9
    :cond_3
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/i;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Le/a/f/a/e;->r1()V

    goto :goto_2

    .line 10
    :cond_4
    instance-of v1, p1, Le/a/f/w/f$b;

    if-eqz v1, :cond_6

    .line 11
    iget-object v1, p0, Le/a/f/a/b/m;->g:Le/a/f/a/b/j;

    move-object v3, p1

    check-cast v3, Le/a/f/w/f$b;

    .line 12
    iget-object v3, v3, Le/a/f/w/f$b;->a:Le/a/f/a/g;

    .line 13
    iput-object p1, p0, Le/a/f/a/b/m;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/f/a/b/m;->f:I

    invoke-virtual {v1, v3, p0}, Le/a/f/a/b/j;->dk(Le/a/f/a/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v0, p1

    .line 14
    :goto_1
    iget-object p1, p0, Le/a/f/a/b/m;->g:Le/a/f/a/b/j;

    .line 15
    iget-object p1, p1, Le/a/f/a/b/j;->u:Le/a/f/z/m0/a;

    .line 16
    check-cast v0, Le/a/f/w/f$b;

    .line 17
    iget-object v0, v0, Le/a/f/w/f$b;->a:Le/a/f/a/g;

    const-string v1, "OngoingInCallUI"

    .line 18
    invoke-interface {p1, v0, v1}, Le/a/f/z/m0/a;->j(Le/a/f/a/g;Ljava/lang/String;)V

    goto :goto_2

    .line 19
    :cond_6
    instance-of p1, p1, Le/a/f/w/f$a;

    if-eqz p1, :cond_7

    .line 20
    iget-object p1, p0, Le/a/f/a/b/m;->g:Le/a/f/a/b/j;

    .line 21
    invoke-virtual {p1}, Le/a/f/a/b/j;->ck()V

    .line 22
    iget-object p1, p0, Le/a/f/a/b/m;->g:Le/a/f/a/b/j;

    .line 23
    invoke-virtual {p1}, Le/a/f/a/b/j;->Tj()V

    .line 24
    iget-object p1, p0, Le/a/f/a/b/m;->g:Le/a/f/a/b/j;

    .line 25
    invoke-virtual {p1}, Le/a/f/a/b/j;->ek()V

    .line 26
    :cond_7
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
