.class public final Le/a/h/b/k0;
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
    c = "com.truecaller.calling.dialer.DialpadPresenter$handleClipboardData$1"
    f = "DialpadPresenter.kt"
    l = {
        0x1ef
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/h/b/m0;


# direct methods
.method public constructor <init>(Le/a/h/b/m0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/k0;->f:Le/a/h/b/m0;

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

    new-instance p1, Le/a/h/b/k0;

    iget-object v0, p0, Le/a/h/b/k0;->f:Le/a/h/b/m0;

    invoke-direct {p1, v0, p2}, Le/a/h/b/k0;-><init>(Le/a/h/b/m0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/h/b/k0;

    iget-object v0, p0, Le/a/h/b/k0;->f:Le/a/h/b/m0;

    invoke-direct {p1, v0, p2}, Le/a/h/b/k0;-><init>(Le/a/h/b/m0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/h/b/k0;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/h/b/k0;->e:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

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
    iget-object p1, p0, Le/a/h/b/k0;->f:Le/a/h/b/m0;

    .line 5
    iget-object p1, p1, Le/a/h/b/m0;->y:Le/a/h3/b/a;

    .line 6
    invoke-interface {p1}, Le/a/h3/b/a;->e()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v4

    .line 7
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v3

    :goto_1
    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    iget-object p1, p0, Le/a/h/b/k0;->f:Le/a/h/b/m0;

    .line 9
    iget-object p1, p1, Le/a/h/b/m0;->y:Le/a/h3/b/a;

    .line 10
    iput v2, p0, Le/a/h/b/k0;->e:I

    invoke-interface {p1, p0}, Le/a/h3/b/a;->k(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 11
    :cond_5
    :goto_2
    check-cast p1, Ljava/lang/String;

    :goto_3
    if-eqz p1, :cond_e

    .line 12
    sget-object v0, Le/a/h/b/n0;->a:[Ljava/lang/String;

    .line 13
    array-length v1, v0

    move v5, v4

    :goto_4
    if-ge v5, v1, :cond_8

    aget-object v6, v0, v5

    .line 14
    iget-object v7, p0, Le/a/h/b/k0;->f:Le/a/h/b/m0;

    .line 15
    sget-object v8, Le/a/h/b/m0;->C:[Ls1/a/l;

    .line 16
    iget-object v7, v7, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 17
    check-cast v7, Le/a/h/b/i0;

    if-eqz v7, :cond_6

    .line 18
    invoke-interface {v7, v6}, Le/a/h/b/i0;->Pa(Ljava/lang/String;)Z

    move-result v6

    .line 19
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_5

    :cond_6
    move-object v6, v3

    .line 20
    :goto_5
    invoke-static {v6}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v6

    .line 21
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 22
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_7

    move v0, v4

    goto :goto_6

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    move v0, v2

    .line 23
    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v3, p1

    :cond_9
    if-eqz v3, :cond_e

    .line 25
    iget-object p1, p0, Le/a/h/b/k0;->f:Le/a/h/b/m0;

    .line 26
    iget-object p1, p1, Le/a/h/b/m0;->y:Le/a/h3/b/a;

    .line 27
    invoke-interface {p1}, Le/a/h3/b/a;->c()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 28
    iget-object p1, p0, Le/a/h/b/k0;->f:Le/a/h/b/m0;

    invoke-virtual {p1, v3}, Le/a/h/b/m0;->Ic(Ljava/lang/String;)V

    goto :goto_8

    .line 29
    :cond_a
    iget-object p1, p0, Le/a/h/b/k0;->f:Le/a/h/b/m0;

    .line 30
    iget-boolean v0, p1, Le/a/h/b/m0;->e:Z

    .line 31
    sget-object v1, Lcom/truecaller/calling/dialer/util/CallLogViewState;->VISIBLE:Lcom/truecaller/calling/dialer/util/CallLogViewState;

    .line 32
    iget-object p1, p1, Le/a/h/b/m0;->B:Le/a/h/b/e/b;

    .line 33
    invoke-interface {p1}, Le/a/h/b/e/b;->a()Lq3/a/w2/h;

    move-result-object p1

    invoke-static {p1}, Le/a/p5/s0/g;->R0(Lq3/a/w2/h;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/calling/dialer/util/CallLogViewState;

    if-ne v1, p1, :cond_b

    goto :goto_7

    :cond_b
    move v2, v4

    :goto_7
    and-int p1, v0, v2

    if-eqz p1, :cond_c

    .line 34
    iget-object p1, p0, Le/a/h/b/k0;->f:Le/a/h/b/m0;

    invoke-virtual {p1, v3}, Le/a/h/b/m0;->Ic(Ljava/lang/String;)V

    goto :goto_8

    .line 35
    :cond_c
    iget-object p1, p0, Le/a/h/b/k0;->f:Le/a/h/b/m0;

    .line 36
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h/b/j0;

    if-eqz p1, :cond_d

    .line 37
    invoke-interface {p1, v3}, Le/a/h/b/j0;->j(Ljava/lang/String;)V

    .line 38
    :cond_d
    :goto_8
    iget-object p1, p0, Le/a/h/b/k0;->f:Le/a/h/b/m0;

    .line 39
    iget-object p1, p1, Le/a/h/b/m0;->y:Le/a/h3/b/a;

    .line 40
    invoke-interface {p1}, Le/a/h3/b/a;->n()V

    .line 41
    :cond_e
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
