.class public final Le/a/s/q/f/f;
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
    c = "com.truecaller.callhero_assistant.onboarding.validation.OnboardingStepValidationPresenter$startTimer$1"
    f = "OnboardingStepValidationPresenter.kt"
    l = {
        0x5e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/s/q/f/e;


# direct methods
.method public constructor <init>(Le/a/s/q/f/e;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/s/q/f/f;->g:Le/a/s/q/f/e;

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

    new-instance p1, Le/a/s/q/f/f;

    iget-object v0, p0, Le/a/s/q/f/f;->g:Le/a/s/q/f/e;

    invoke-direct {p1, v0, p2}, Le/a/s/q/f/f;-><init>(Le/a/s/q/f/e;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/s/q/f/f;

    iget-object v0, p0, Le/a/s/q/f/f;->g:Le/a/s/q/f/e;

    invoke-direct {p1, v0, p2}, Le/a/s/q/f/f;-><init>(Le/a/s/q/f/e;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/s/q/f/f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/s/q/f/f;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Le/a/s/q/f/f;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

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

    const/16 p1, 0x1e

    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v1}, Ls1/d0/j;->f(II)Ls1/d0/g;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ls1/d0/g;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 6
    iget-object v3, p0, Le/a/s/q/f/f;->g:Le/a/s/q/f/e;

    .line 7
    iget-object v3, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/s/q/f/d;

    if-eqz v3, :cond_3

    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Le/a/s/q/f/d;->en(Ljava/lang/String;)V

    :cond_3
    const-wide/16 v3, 0x3e8

    .line 9
    iput-object v1, p0, Le/a/s/q/f/f;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/s/q/f/f;->f:I

    invoke-static {v3, v4, p0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 10
    :cond_4
    iget-object p1, p0, Le/a/s/q/f/f;->g:Le/a/s/q/f/e;

    .line 11
    iget-object v3, p1, Le/a/s/q/f/e;->f:Le/a/p5/j0;

    const v4, 0x7f12027f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    .line 12
    invoke-static/range {v3 .. v8}, Le/a/e/a2;->g0(Le/a/p5/j0;ILjava/lang/CharSequence;IILjava/lang/Object;)V

    .line 13
    iget-object p1, p0, Le/a/s/q/f/f;->g:Le/a/s/q/f/e;

    .line 14
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/s/q/f/d;

    if-eqz p1, :cond_5

    const-string v0, ""

    .line 15
    invoke-interface {p1, v0}, Le/a/s/q/f/d;->en(Ljava/lang/String;)V

    .line 16
    :cond_5
    iget-object p1, p0, Le/a/s/q/f/f;->g:Le/a/s/q/f/e;

    .line 17
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/s/q/f/d;

    if-eqz p1, :cond_6

    .line 18
    invoke-interface {p1, v2}, Le/a/s/q/f/d;->Uk(Z)V

    .line 19
    :cond_6
    iget-object p1, p0, Le/a/s/q/f/f;->g:Le/a/s/q/f/e;

    .line 20
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/s/q/f/d;

    if-eqz p1, :cond_7

    .line 21
    invoke-interface {p1}, Le/a/s/q/f/d;->xa()V

    .line 22
    :cond_7
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
