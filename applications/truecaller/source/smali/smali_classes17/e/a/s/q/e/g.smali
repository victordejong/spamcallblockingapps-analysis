.class public final Le/a/s/q/e/g;
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
    c = "com.truecaller.callhero_assistant.onboarding.forward.OnboardingStepForwardPresenter$onAttachView$1"
    f = "OnboardingStepForwardPresenter.kt"
    l = {
        0x21
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/s/q/e/h;

.field public final synthetic g:Le/a/s/q/e/f;


# direct methods
.method public constructor <init>(Le/a/s/q/e/h;Le/a/s/q/e/f;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/s/q/e/g;->f:Le/a/s/q/e/h;

    iput-object p2, p0, Le/a/s/q/e/g;->g:Le/a/s/q/e/f;

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

    new-instance p1, Le/a/s/q/e/g;

    iget-object v0, p0, Le/a/s/q/e/g;->f:Le/a/s/q/e/h;

    iget-object v1, p0, Le/a/s/q/e/g;->g:Le/a/s/q/e/f;

    invoke-direct {p1, v0, v1, p2}, Le/a/s/q/e/g;-><init>(Le/a/s/q/e/h;Le/a/s/q/e/f;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/s/q/e/g;

    iget-object v0, p0, Le/a/s/q/e/g;->f:Le/a/s/q/e/h;

    iget-object v1, p0, Le/a/s/q/e/g;->g:Le/a/s/q/e/f;

    invoke-direct {p1, v0, v1, p2}, Le/a/s/q/e/g;-><init>(Le/a/s/q/e/h;Le/a/s/q/e/f;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/s/q/e/g;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/s/q/e/g;->e:I

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
    iget-object p1, p0, Le/a/s/q/e/g;->f:Le/a/s/q/e/h;

    .line 5
    iget-object p1, p1, Le/a/s/q/e/h;->h:Le/a/s/q/e/a;

    .line 6
    iput v2, p0, Le/a/s/q/e/g;->e:I

    check-cast p1, Le/a/s/q/e/b;

    invoke-virtual {p1, p0}, Le/a/s/q/e/b;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_3

    .line 8
    iget-object p1, p0, Le/a/s/q/e/g;->f:Le/a/s/q/e/h;

    .line 9
    iget-object v0, p1, Le/a/s/q/e/h;->i:Le/a/p5/j0;

    const v1, 0x7f12027f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Le/a/e/a2;->g0(Le/a/p5/j0;ILjava/lang/CharSequence;IILjava/lang/Object;)V

    goto/16 :goto_6

    .line 11
    :cond_3
    iget-object v0, p0, Le/a/s/q/e/g;->f:Le/a/s/q/e/h;

    .line 12
    iput-object p1, v0, Le/a/s/q/e/h;->d:Ljava/util/List;

    .line 13
    iget-object v0, p0, Le/a/s/q/e/g;->g:Le/a/s/q/e/f;

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 16
    check-cast v4, Lcom/truecaller/callhero_assistant/data/Carrier;

    .line 17
    invoke-virtual {v4}, Lcom/truecaller/callhero_assistant/data/Carrier;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v0, v1}, Le/a/s/q/e/f;->eo(Ljava/util/List;)V

    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 19
    check-cast v3, Lcom/truecaller/callhero_assistant/data/Carrier;

    .line 20
    invoke-virtual {v3}, Lcom/truecaller/callhero_assistant/data/Carrier;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Le/a/s/q/e/g;->f:Le/a/s/q/e/h;

    .line 21
    iget-object v4, v4, Le/a/s/q/e/h;->k:Le/a/s/s/c;

    .line 22
    invoke-interface {v4}, Le/a/s/s/c;->A2()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 23
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 24
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, -0x1

    .line 25
    :goto_3
    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 26
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-ltz v1, :cond_7

    goto :goto_4

    :cond_7
    move v2, v0

    .line 27
    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    const/4 p1, 0x0

    :goto_5
    if-eqz p1, :cond_9

    .line 29
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Le/a/s/q/e/g;->g:Le/a/s/q/e/f;

    invoke-interface {v0, p1}, Le/a/s/q/e/f;->Mx(I)V

    .line 30
    :cond_9
    :goto_6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
