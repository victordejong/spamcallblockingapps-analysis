.class public final Le/a/o/p/e/g/d$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/p/e/g/d;->a(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/l<",
        "Ls1/w/d<",
        "-",
        "Ljava/util/List<",
        "+",
        "Le/a/o/n/a;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.contextcall.db.reason.predefinedreasons.PredefinedCallReasonRepositoryImpl$getPredefinedCallReasons$2"
    f = "PredefinedCallReasonRepository.kt"
    l = {
        0x2c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/o/p/e/g/d;


# direct methods
.method public constructor <init>(Le/a/o/p/e/g/d;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/o/p/e/g/d$b;->f:Le/a/o/p/e/g/d;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/o/p/e/g/d$b;

    iget-object v1, p0, Le/a/o/p/e/g/d$b;->f:Le/a/o/p/e/g/d;

    invoke-direct {v0, v1, p1}, Le/a/o/p/e/g/d$b;-><init>(Le/a/o/p/e/g/d;Ls1/w/d;)V

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/o/p/e/g/d$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/o/p/e/g/d$b;

    iget-object v1, p0, Le/a/o/p/e/g/d$b;->f:Le/a/o/p/e/g/d;

    invoke-direct {v0, v1, p1}, Le/a/o/p/e/g/d$b;-><init>(Le/a/o/p/e/g/d;Ls1/w/d;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/o/p/e/g/d$b;->e:I

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
    iget-object p1, p0, Le/a/o/p/e/g/d$b;->f:Le/a/o/p/e/g/d;

    .line 5
    iget-object p1, p1, Le/a/o/p/e/g/d;->a:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/o/p/e/g/a;

    .line 6
    iput v2, p0, Le/a/o/p/e/g/d$b;->e:I

    invoke-virtual {p1, p0}, Le/a/o/p/e/g/a;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Iterable;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 10
    check-cast v1, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;

    const-string v2, "$this$mapToPredefinedCallReason"

    .line 11
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v2, Le/a/o/n/a;

    invoke-virtual {v1}, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;->getId()I

    move-result v3

    invoke-virtual {v1}, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;->getIndex()I

    move-result v4

    invoke-virtual {v1}, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;->values()[Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    move-result-object v6

    invoke-virtual {v1}, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;->getType()I

    move-result v1

    aget-object v1, v6, v1

    invoke-direct {v2, v3, v4, v5, v1}, Le/a/o/n/a;-><init>(IILjava/lang/String;Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;)V

    .line 13
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 15
    iget-object p1, p0, Le/a/o/p/e/g/d$b;->f:Le/a/o/p/e/g/d;

    sget-object v1, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;->Predefined:Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    invoke-static {p1, v0, v1}, Le/a/o/p/e/g/d;->e(Le/a/o/p/e/g/d;Ljava/util/List;Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 16
    iget-object p1, p0, Le/a/o/p/e/g/d$b;->f:Le/a/o/p/e/g/d;

    sget-object v1, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;->MidCall:Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    invoke-static {p1, v0, v1}, Le/a/o/p/e/g/d;->e(Le/a/o/p/e/g/d;Ljava/util/List;Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 17
    iget-object p1, p0, Le/a/o/p/e/g/d$b;->f:Le/a/o/p/e/g/d;

    sget-object v1, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;->SecondCall:Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    invoke-static {p1, v0, v1}, Le/a/o/p/e/g/d;->e(Le/a/o/p/e/g/d;Ljava/util/List;Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 18
    iget-object p1, p0, Le/a/o/p/e/g/d$b;->f:Le/a/o/p/e/g/d;

    sget-object v1, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;->MissedCall:Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    invoke-static {p1, v0, v1}, Le/a/o/p/e/g/d;->e(Le/a/o/p/e/g/d;Ljava/util/List;Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    return-object v0

    .line 19
    :cond_5
    :goto_2
    iget-object p1, p0, Le/a/o/p/e/g/d$b;->f:Le/a/o/p/e/g/d;

    .line 20
    iget-object p1, p1, Le/a/o/p/e/g/d;->e:Le/a/o/b/c0;

    .line 21
    check-cast p1, Le/a/o/b/e0;

    .line 22
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v1, p1, Le/a/o/b/e0;->b:Ls1/w/f;

    new-instance v3, Le/a/o/b/d0;

    const/4 v2, 0x0

    invoke-direct {v3, p1, v2}, Le/a/o/b/d0;-><init>(Le/a/o/b/e0;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 23
    iget-object p1, p0, Le/a/o/p/e/g/d$b;->f:Le/a/o/p/e/g/d;

    .line 24
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget v0, Lcom/truecaller/contextcall/R$array;->context_call_picker_reasons_ondemand:I

    .line 26
    sget v1, Lcom/truecaller/contextcall/R$array;->context_call_picker_reasons_ondemand_ids:I

    .line 27
    sget-object v2, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;->Predefined:Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    .line 28
    invoke-virtual {p1, v0, v1, v2}, Le/a/o/p/e/g/d;->f(IILcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;)Ljava/util/List;

    move-result-object v0

    .line 29
    sget v1, Lcom/truecaller/contextcall/R$array;->context_call_picker_reasons_ondemand_mid_second_call:I

    .line 30
    sget v2, Lcom/truecaller/contextcall/R$array;->context_call_picker_reasons_ondemand_mid_second_call_ids:I

    .line 31
    sget-object v3, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;->MidCall:Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    .line 32
    invoke-virtual {p1, v1, v2, v3}, Le/a/o/p/e/g/d;->f(IILcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 33
    sget-object v3, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;->SecondCall:Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    .line 34
    invoke-virtual {p1, v1, v2, v3}, Le/a/o/p/e/g/d;->f(IILcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 35
    sget v1, Lcom/truecaller/contextcall/R$array;->context_call_picker_reasons_ondemand_missed_call:I

    .line 36
    sget v2, Lcom/truecaller/contextcall/R$array;->context_call_picker_reasons_ondemand_missed_call_ids:I

    .line 37
    sget-object v3, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;->MissedCall:Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    .line 38
    invoke-virtual {p1, v1, v2, v3}, Le/a/o/p/e/g/d;->f(IILcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
