.class public final Le/a/o/b/a/a/l$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/b/a/a/l;->Ij()Lq3/a/p1;
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
    c = "com.truecaller.contextcall.utils.view.ondemandreasonpicker.OnDemandCallReasonPickerViewPresenter$fetchPredefinedReasons$1"
    f = "OnDemandCallReasonPickerViewPresenter.kt"
    l = {
        0x6a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/o/b/a/a/l;


# direct methods
.method public constructor <init>(Le/a/o/b/a/a/l;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/o/b/a/a/l$a;->g:Le/a/o/b/a/a/l;

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

    new-instance p1, Le/a/o/b/a/a/l$a;

    iget-object v0, p0, Le/a/o/b/a/a/l$a;->g:Le/a/o/b/a/a/l;

    invoke-direct {p1, v0, p2}, Le/a/o/b/a/a/l$a;-><init>(Le/a/o/b/a/a/l;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/o/b/a/a/l$a;

    iget-object v0, p0, Le/a/o/b/a/a/l$a;->g:Le/a/o/b/a/a/l;

    invoke-direct {p1, v0, p2}, Le/a/o/b/a/a/l$a;-><init>(Le/a/o/b/a/a/l;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/o/b/a/a/l$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/o/b/a/a/l$a;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Le/a/o/b/a/a/l$a;->e:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;

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
    iget-object p1, p0, Le/a/o/b/a/a/l$a;->g:Le/a/o/b/a/a/l;

    .line 5
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/b/a/a/h;

    if-eqz p1, :cond_d

    .line 6
    invoke-interface {p1}, Le/a/o/b/a/a/h;->getSource()Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 7
    iget-object v2, p0, Le/a/o/b/a/a/l$a;->g:Le/a/o/b/a/a/l;

    .line 8
    iget-object v2, v2, Le/a/o/b/a/a/l;->e:Le/a/o/p/e/g/c;

    .line 9
    iput-object p1, p0, Le/a/o/b/a/a/l$a;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/o/b/a/a/l$a;->f:I

    invoke-interface {v2, p0}, Le/a/o/p/e/g/c;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_2

    return-object v1

    :cond_2
    move-object v1, p1

    move-object p1, v2

    .line 10
    :goto_0
    check-cast p1, Ljava/lang/Iterable;

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Le/a/o/n/a;

    .line 13
    instance-of v6, v1, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$DetailsScreen;

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    .line 14
    iget-object v5, v5, Le/a/o/n/a;->d:Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    .line 15
    sget-object v6, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;->Predefined:Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    if-ne v5, v6, :cond_8

    goto :goto_2

    .line 16
    :cond_4
    instance-of v6, v1, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall;

    if-eqz v6, :cond_6

    .line 17
    move-object v6, v1

    check-cast v6, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall;

    invoke-virtual {v6}, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall;->getType()Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall$Type;

    move-result-object v8

    sget-object v9, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall$Type;->OutgoingCall:Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall$Type;

    if-ne v8, v9, :cond_5

    .line 18
    iget-object v8, v5, Le/a/o/n/a;->d:Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    .line 19
    sget-object v9, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;->SecondCall:Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    if-eq v8, v9, :cond_7

    :cond_5
    invoke-virtual {v6}, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall;->getType()Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall$Type;

    move-result-object v6

    sget-object v8, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall$Type;->MissedCall:Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall$Type;

    if-ne v6, v8, :cond_8

    .line 20
    iget-object v5, v5, Le/a/o/n/a;->d:Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    .line 21
    sget-object v6, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;->MissedCall:Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    if-ne v5, v6, :cond_8

    goto :goto_2

    .line 22
    :cond_6
    instance-of v6, v1, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$MidCall;

    if-eqz v6, :cond_9

    .line 23
    iget-object v5, v5, Le/a/o/n/a;->d:Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    .line 24
    sget-object v6, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;->MidCall:Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    if-ne v5, v6, :cond_8

    :cond_7
    :goto_2
    move v7, v3

    .line 25
    :cond_8
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 26
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 27
    :cond_a
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v2, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 29
    check-cast v2, Le/a/o/n/a;

    .line 30
    new-instance v3, Le/a/o/b/a/a/e$b;

    invoke-direct {v3, v2}, Le/a/o/b/a/a/e$b;-><init>(Le/a/o/n/a;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 31
    :cond_b
    invoke-static {p1}, Ls1/u/i;->a1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 32
    iget-object v1, p0, Le/a/o/b/a/a/l$a;->g:Le/a/o/b/a/a/l;

    .line 33
    iget-object v1, v1, Le/a/o/b/a/a/l;->e:Le/a/o/p/e/g/c;

    invoke-interface {v1}, Le/a/o/p/e/g/c;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 34
    new-instance v2, Le/a/o/b/a/a/e$a;

    invoke-direct {v2, v1}, Le/a/o/b/a/a/e$a;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 35
    :cond_c
    sget-object v2, Le/a/o/b/a/a/e$c;->a:Le/a/o/b/a/a/e$c;

    .line 36
    :goto_4
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v1, p0, Le/a/o/b/a/a/l$a;->g:Le/a/o/b/a/a/l;

    .line 38
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/o/b/a/a/h;

    if-eqz v1, :cond_d

    .line 39
    invoke-interface {v1, p1}, Le/a/o/b/a/a/h;->p0(Ljava/util/List;)V

    :cond_d
    return-object v0
.end method
