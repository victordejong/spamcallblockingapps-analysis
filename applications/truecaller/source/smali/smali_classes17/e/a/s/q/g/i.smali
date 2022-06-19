.class public final Le/a/s/q/g/i;
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
    c = "com.truecaller.callhero_assistant.onboarding.voice.OnboardingStepVoicePresenter$onAttachView$1"
    f = "OnboardingStepVoicePresenter.kt"
    l = {
        0x33
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/s/q/g/j;

.field public final synthetic g:Le/a/s/q/g/h;


# direct methods
.method public constructor <init>(Le/a/s/q/g/j;Le/a/s/q/g/h;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/s/q/g/i;->f:Le/a/s/q/g/j;

    iput-object p2, p0, Le/a/s/q/g/i;->g:Le/a/s/q/g/h;

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

    new-instance p1, Le/a/s/q/g/i;

    iget-object v0, p0, Le/a/s/q/g/i;->f:Le/a/s/q/g/j;

    iget-object v1, p0, Le/a/s/q/g/i;->g:Le/a/s/q/g/h;

    invoke-direct {p1, v0, v1, p2}, Le/a/s/q/g/i;-><init>(Le/a/s/q/g/j;Le/a/s/q/g/h;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/s/q/g/i;

    iget-object v0, p0, Le/a/s/q/g/i;->f:Le/a/s/q/g/j;

    iget-object v1, p0, Le/a/s/q/g/i;->g:Le/a/s/q/g/h;

    invoke-direct {p1, v0, v1, p2}, Le/a/s/q/g/i;-><init>(Le/a/s/q/g/j;Le/a/s/q/g/h;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/s/q/g/i;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/s/q/g/i;->e:I

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
    iget-object p1, p0, Le/a/s/q/g/i;->f:Le/a/s/q/g/j;

    .line 5
    iget-object p1, p1, Le/a/s/q/g/j;->i:Le/a/s/s/i;

    .line 6
    iput v2, p0, Le/a/s/q/g/i;->e:I

    invoke-interface {p1, p0}, Le/a/s/s/i;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Le/a/s/q/g/i;->f:Le/a/s/q/g/j;

    .line 8
    iget-object v0, p1, Le/a/s/q/g/j;->k:Le/a/p5/j0;

    const v1, 0x7f12027f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    .line 9
    invoke-static/range {v0 .. v5}, Le/a/e/a2;->g0(Le/a/p5/j0;ILjava/lang/CharSequence;IILjava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_3
    iget-object v0, p0, Le/a/s/q/g/i;->f:Le/a/s/q/g/j;

    .line 11
    iput-object p1, v0, Le/a/s/q/g/j;->d:Ljava/util/List;

    .line 12
    iget-object p1, p0, Le/a/s/q/g/i;->g:Le/a/s/q/g/h;

    invoke-interface {p1}, Le/a/s/q/g/h;->c0()V

    .line 13
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
