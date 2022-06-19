.class public final Le/a/d0/a/p;
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
    c = "com.truecaller.callerid.window.CallerIdWindowPresenter$maybeShowCallReasonPickerView$1"
    f = "CallerIdWindowPresenter.kt"
    l = {
        0x234
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/d0/a/m;

.field public final synthetic i:Le/a/d0/v;


# direct methods
.method public constructor <init>(Le/a/d0/a/m;Le/a/d0/v;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d0/a/p;->h:Le/a/d0/a/m;

    iput-object p2, p0, Le/a/d0/a/p;->i:Le/a/d0/v;

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

    new-instance p1, Le/a/d0/a/p;

    iget-object v0, p0, Le/a/d0/a/p;->h:Le/a/d0/a/m;

    iget-object v1, p0, Le/a/d0/a/p;->i:Le/a/d0/v;

    invoke-direct {p1, v0, v1, p2}, Le/a/d0/a/p;-><init>(Le/a/d0/a/m;Le/a/d0/v;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d0/a/p;

    iget-object v0, p0, Le/a/d0/a/p;->h:Le/a/d0/a/m;

    iget-object v1, p0, Le/a/d0/a/p;->i:Le/a/d0/v;

    invoke-direct {p1, v0, v1, p2}, Le/a/d0/a/p;-><init>(Le/a/d0/a/m;Le/a/d0/v;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d0/a/p;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/d0/a/p;->g:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Le/a/d0/a/p;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Le/a/d0/a/p;->e:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/data/entity/Contact;

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
    iget-object p1, p0, Le/a/d0/a/p;->i:Le/a/d0/v;

    iget-object v2, p1, Le/a/d0/v;->l:Lcom/truecaller/data/entity/Contact;

    .line 5
    iget-object p1, p1, Le/a/d0/v;->a:Lcom/truecaller/data/entity/Number;

    const-string v4, "callState.number"

    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v4, p0, Le/a/d0/a/p;->h:Le/a/d0/a/m;

    .line 7
    iget-object v5, v4, Le/a/d0/a/m;->d:Le/a/d0/a/b;

    .line 8
    sget-object v6, Le/a/d0/a/b;->a:Le/a/d0/a/b;

    const/4 v7, 0x0

    if-ne v5, v6, :cond_7

    if-eqz v2, :cond_7

    if-nez p1, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    iget-object v4, v4, Le/a/d0/a/m;->A:Le/a/o/c;

    .line 10
    new-instance v5, Lcom/truecaller/contextcall/utils/SecondCallContext$b;

    .line 11
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->a0()I

    move-result v6

    if-lez v6, :cond_4

    :cond_3
    move v7, v3

    .line 12
    :cond_4
    invoke-static {v2}, Le/a/m0/a1$k;->J0(Lcom/truecaller/data/entity/Contact;)Z

    move-result v6

    .line 13
    iget-object v8, p0, Le/a/d0/a/p;->h:Le/a/d0/a/m;

    .line 14
    iget-object v8, v8, Le/a/d0/a/m;->P:Le/a/d0/a/d;

    .line 15
    iget-object v9, p0, Le/a/d0/a/p;->i:Le/a/d0/v;

    iget v9, v9, Le/a/d0/v;->b:I

    .line 16
    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v9}, Ljava/lang/Integer;-><init>(I)V

    .line 17
    iget-object v9, p0, Le/a/d0/a/p;->i:Le/a/d0/v;

    iget-boolean v9, v9, Le/a/d0/v;->e:Z

    invoke-virtual {v8, v10, v9}, Le/a/d0/a/d;->a(Ljava/lang/Integer;Z)Ljava/lang/Integer;

    move-result-object v8

    .line 18
    invoke-direct {v5, p1, v7, v6, v8}, Lcom/truecaller/contextcall/utils/SecondCallContext$b;-><init>(Ljava/lang/String;ZZLjava/lang/Integer;)V

    iput-object v2, p0, Le/a/d0/a/p;->e:Ljava/lang/Object;

    iput-object p1, p0, Le/a/d0/a/p;->f:Ljava/lang/Object;

    iput v3, p0, Le/a/d0/a/p;->g:I

    .line 19
    invoke-interface {v4, v5, p0}, Le/a/o/c;->A(Lcom/truecaller/contextcall/utils/SecondCallContext;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_5

    return-object v1

    :cond_5
    move-object v1, p1

    move-object p1, v3

    .line 20
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 21
    iget-object v3, p0, Le/a/d0/a/p;->h:Le/a/d0/a/m;

    .line 22
    iget-object v3, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/d0/a/l;

    if-eqz v3, :cond_6

    .line 23
    new-instance v4, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$MidCall;

    .line 24
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->x()Ljava/lang/String;

    move-result-object v2

    const-string v5, "contact.displayNameOrNumber"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "callerId"

    .line 25
    invoke-direct {v4, v1, v2, v5}, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$MidCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-interface {v3, v4}, Le/a/d0/a/l;->O3(Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;)V

    .line 27
    invoke-interface {v3, p1}, Le/a/d0/a/l;->J5(Z)V

    :cond_6
    return-object v0

    .line 28
    :cond_7
    :goto_1
    iget-object p1, v4, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d0/a/l;

    if-eqz p1, :cond_8

    .line 29
    invoke-interface {p1, v7}, Le/a/d0/a/l;->J5(Z)V

    :cond_8
    return-object v0
.end method
