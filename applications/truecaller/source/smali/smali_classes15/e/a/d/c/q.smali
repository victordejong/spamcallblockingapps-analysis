.class public final Le/a/d/c/q;
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
    c = "com.truecaller.voip.ui.VoipPresenter$listenOngoingCallStatus$1"
    f = "VoipPresenter.kt"
    l = {
        0x219,
        0x21f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/c/t;


# direct methods
.method public constructor <init>(Le/a/d/c/t;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/q;->f:Le/a/d/c/t;

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

    new-instance p1, Le/a/d/c/q;

    iget-object v0, p0, Le/a/d/c/q;->f:Le/a/d/c/t;

    invoke-direct {p1, v0, p2}, Le/a/d/c/q;-><init>(Le/a/d/c/t;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c/q;

    iget-object v0, p0, Le/a/d/c/q;->f:Le/a/d/c/t;

    invoke-direct {p1, v0, p2}, Le/a/d/c/q;-><init>(Le/a/d/c/t;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/c/q;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/c/q;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/d/c/q;->f:Le/a/d/c/t;

    .line 5
    iget-object p1, p1, Le/a/d/c/t;->m:Le/a/d/v/d;

    invoke-interface {p1}, Le/a/d/v/d;->a()Le/a/d/c0/z1/d;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 6
    invoke-interface {p1}, Le/a/d/c0/z1/d;->a()Lq3/a/x2/i1;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lq3/a/x2/i1;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    .line 7
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    :cond_3
    move-object v1, v3

    .line 8
    :goto_0
    iget-object p1, p0, Le/a/d/c/q;->f:Le/a/d/c/t;

    .line 9
    iget-object p1, p1, Le/a/d/c/t;->m:Le/a/d/v/d;

    invoke-interface {p1}, Le/a/d/v/d;->f()Lq3/a/x2/i1;

    move-result-object p1

    invoke-interface {p1}, Lq3/a/x2/i1;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    sget p1, Lcom/truecaller/voip/R$string;->voip_status_ending:I

    .line 11
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    goto :goto_1

    .line 12
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v4, :cond_6

    sget p1, Lcom/truecaller/voip/R$string;->voip_status_connecting:I

    .line 13
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_2

    :cond_6
    :goto_1
    move-object v1, v3

    :goto_2
    if-eqz v1, :cond_7

    .line 14
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 15
    iget-object v1, p0, Le/a/d/c/q;->f:Le/a/d/c/t;

    .line 16
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d/c/l;

    if-eqz v1, :cond_7

    .line 17
    sget v5, Lcom/truecaller/voip/R$attr;->voip_call_status_warning_color:I

    invoke-interface {v1, p1, v5}, Le/a/d/c/l;->v3(II)V

    .line 18
    :cond_7
    iget-object p1, p0, Le/a/d/c/q;->f:Le/a/d/c/t;

    .line 19
    iget-object p1, p1, Le/a/d/c/t;->m:Le/a/d/v/d;

    .line 20
    invoke-interface {p1}, Le/a/d/v/d;->getState()Lq3/a/x2/i1;

    move-result-object p1

    .line 21
    new-instance v1, Le/a/d/c/q$b;

    invoke-direct {v1, p1}, Le/a/d/c/q$b;-><init>(Lq3/a/x2/f;)V

    .line 22
    iput v4, p0, Le/a/d/c/q;->e:I

    .line 23
    invoke-static {v1, p0}, Ls1/a/a/a/v0/f/d;->O0(Lq3/a/x2/f;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    .line 24
    :cond_8
    :goto_3
    check-cast p1, Le/a/d/v/f$a;

    if-eqz p1, :cond_9

    .line 25
    iget-object v3, p1, Le/a/d/v/f$a;->a:Le/a/d/v/b;

    .line 26
    :cond_9
    iget-object p1, p0, Le/a/d/c/q;->f:Le/a/d/c/t;

    invoke-static {p1}, Le/a/d/c/t;->Ij(Le/a/d/c/t;)V

    if-eqz v3, :cond_a

    .line 27
    invoke-interface {v3}, Le/a/d/v/b;->getState()Lq3/a/x2/i1;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 28
    new-instance v1, Le/a/d/c/q$a;

    invoke-direct {v1, p0, v3}, Le/a/d/c/q$a;-><init>(Le/a/d/c/q;Le/a/d/v/b;)V

    iput v2, p0, Le/a/d/c/q;->e:I

    invoke-interface {p1, v1, p0}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    .line 29
    :cond_a
    :goto_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
