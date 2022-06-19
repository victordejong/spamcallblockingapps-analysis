.class public final Le/a/s/q/e/h$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/s/q/e/h;->l9(I)V
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
    c = "com.truecaller.callhero_assistant.onboarding.forward.OnboardingStepForwardPresenter$onCarrierSelected$1"
    f = "OnboardingStepForwardPresenter.kt"
    l = {
        0x35
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/s/q/e/h;

.field public final synthetic g:Lcom/truecaller/callhero_assistant/data/Carrier;


# direct methods
.method public constructor <init>(Le/a/s/q/e/h;Lcom/truecaller/callhero_assistant/data/Carrier;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/s/q/e/h$a;->f:Le/a/s/q/e/h;

    iput-object p2, p0, Le/a/s/q/e/h$a;->g:Lcom/truecaller/callhero_assistant/data/Carrier;

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

    new-instance p1, Le/a/s/q/e/h$a;

    iget-object v0, p0, Le/a/s/q/e/h$a;->f:Le/a/s/q/e/h;

    iget-object v1, p0, Le/a/s/q/e/h$a;->g:Lcom/truecaller/callhero_assistant/data/Carrier;

    invoke-direct {p1, v0, v1, p2}, Le/a/s/q/e/h$a;-><init>(Le/a/s/q/e/h;Lcom/truecaller/callhero_assistant/data/Carrier;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/s/q/e/h$a;

    iget-object v0, p0, Le/a/s/q/e/h$a;->f:Le/a/s/q/e/h;

    iget-object v1, p0, Le/a/s/q/e/h$a;->g:Lcom/truecaller/callhero_assistant/data/Carrier;

    invoke-direct {p1, v0, v1, p2}, Le/a/s/q/e/h$a;-><init>(Le/a/s/q/e/h;Lcom/truecaller/callhero_assistant/data/Carrier;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/s/q/e/h$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/s/q/e/h$a;->e:I

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
    iget-object p1, p0, Le/a/s/q/e/h$a;->f:Le/a/s/q/e/h;

    .line 5
    iget-object p1, p1, Le/a/s/q/e/h;->j:Le/a/s/s/a;

    .line 6
    iget-object v2, p0, Le/a/s/q/e/h$a;->g:Lcom/truecaller/callhero_assistant/data/Carrier;

    invoke-virtual {v2}, Lcom/truecaller/callhero_assistant/data/Carrier;->getId()Ljava/lang/String;

    move-result-object v2

    iput v3, p0, Le/a/s/q/e/h$a;->e:I

    invoke-interface {p1, v2, p0}, Le/a/s/s/a;->e(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    .line 7
    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 8
    iget-object v1, p0, Le/a/s/q/e/h$a;->f:Le/a/s/q/e/h;

    .line 9
    iget-object v1, v1, Le/a/s/q/e/h;->e:Lcom/truecaller/callhero_assistant/data/Carrier;

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {v1}, Lcom/truecaller/callhero_assistant/data/Carrier;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Le/a/s/q/e/h$a;->g:Lcom/truecaller/callhero_assistant/data/Carrier;

    invoke-virtual {v2}, Lcom/truecaller/callhero_assistant/data/Carrier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_4

    return-object v0

    :cond_4
    if-nez p1, :cond_5

    .line 11
    iget-object p1, p0, Le/a/s/q/e/h$a;->f:Le/a/s/q/e/h;

    .line 12
    iget-object v1, p1, Le/a/s/q/e/h;->i:Le/a/p5/j0;

    const v2, 0x7f12027f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    .line 13
    invoke-static/range {v1 .. v6}, Le/a/e/a2;->g0(Le/a/p5/j0;ILjava/lang/CharSequence;IILjava/lang/Object;)V

    goto :goto_2

    .line 14
    :cond_5
    iget-object v1, p0, Le/a/s/q/e/h$a;->g:Lcom/truecaller/callhero_assistant/data/Carrier;

    invoke-virtual {v1}, Lcom/truecaller/callhero_assistant/data/Carrier;->getEnableCode()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x4

    const-string v5, "[NUMBER]"

    invoke-static {v1, v5, p1, v2, v4}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    .line 15
    iget-object v1, p0, Le/a/s/q/e/h$a;->f:Le/a/s/q/e/h;

    .line 16
    iput-object p1, v1, Le/a/s/q/e/h;->f:Ljava/lang/String;

    .line 17
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/s/q/e/f;

    if-eqz v1, :cond_6

    .line 18
    invoke-interface {v1, p1}, Le/a/s/q/e/f;->Da(Ljava/lang/String;)V

    .line 19
    :cond_6
    iget-object p1, p0, Le/a/s/q/e/h$a;->f:Le/a/s/q/e/h;

    .line 20
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/s/q/e/f;

    if-eqz p1, :cond_7

    .line 21
    invoke-interface {p1, v3}, Le/a/s/q/e/f;->vz(Z)V

    .line 22
    :cond_7
    iget-object p1, p0, Le/a/s/q/e/h$a;->f:Le/a/s/q/e/h;

    .line 23
    iget-object p1, p1, Le/a/s/q/e/h;->k:Le/a/s/s/c;

    .line 24
    iget-object v1, p0, Le/a/s/q/e/h$a;->g:Lcom/truecaller/callhero_assistant/data/Carrier;

    invoke-virtual {v1}, Lcom/truecaller/callhero_assistant/data/Carrier;->getDisableCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Le/a/s/s/c;->D0(Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Le/a/s/q/e/h$a;->f:Le/a/s/q/e/h;

    .line 26
    iget-object p1, p1, Le/a/s/q/e/h;->k:Le/a/s/s/c;

    .line 27
    iget-object v1, p0, Le/a/s/q/e/h$a;->g:Lcom/truecaller/callhero_assistant/data/Carrier;

    invoke-virtual {v1}, Lcom/truecaller/callhero_assistant/data/Carrier;->getSupportLink()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Le/a/s/s/c;->C0(Ljava/lang/String;)V

    :goto_2
    return-object v0
.end method
