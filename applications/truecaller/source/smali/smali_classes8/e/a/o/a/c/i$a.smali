.class public final Le/a/o/a/c/i$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/a/c/i;->Ij()V
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
    c = "com.truecaller.contextcall.ui.managecallreasons.ManageCallReasonPresenter$getReasons$1"
    f = "ManageCallReasonPresenter.kt"
    l = {
        0x33
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/o/a/c/i;


# direct methods
.method public constructor <init>(Le/a/o/a/c/i;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/o/a/c/i$a;->f:Le/a/o/a/c/i;

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

    new-instance p1, Le/a/o/a/c/i$a;

    iget-object v0, p0, Le/a/o/a/c/i$a;->f:Le/a/o/a/c/i;

    invoke-direct {p1, v0, p2}, Le/a/o/a/c/i$a;-><init>(Le/a/o/a/c/i;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/o/a/c/i$a;

    iget-object v0, p0, Le/a/o/a/c/i$a;->f:Le/a/o/a/c/i;

    invoke-direct {p1, v0, p2}, Le/a/o/a/c/i$a;-><init>(Le/a/o/a/c/i;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/o/a/c/i$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/o/a/c/i$a;->e:I

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
    iget-object p1, p0, Le/a/o/a/c/i$a;->f:Le/a/o/a/c/i;

    .line 5
    iget-object p1, p1, Le/a/o/a/c/i;->f:Le/a/o/p/e/e;

    .line 6
    iput v2, p0, Le/a/o/a/c/i$a;->e:I

    invoke-interface {p1, p0}, Le/a/o/p/e/e;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    const-string v0, "$this$mapToFullCallReasonItem"

    .line 8
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/contextcall/db/reason/CallReason;

    .line 11
    new-instance v3, Le/a/o/a/c/c;

    invoke-virtual {v1}, Lcom/truecaller/contextcall/db/reason/CallReason;->getId()I

    move-result v4

    invoke-virtual {v1}, Lcom/truecaller/contextcall/db/reason/CallReason;->getReasonText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Le/a/o/a/c/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_3
    iget-object p1, p0, Le/a/o/a/c/i$a;->f:Le/a/o/a/c/i;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 13
    iget-object v3, p1, Le/a/o/a/c/i;->g:Le/a/o/b/f;

    invoke-interface {v3}, Le/a/o/b/f;->e()Z

    move-result v3

    .line 14
    iget-object v4, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v4, Le/a/o/a/c/l;

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    if-eqz v3, :cond_4

    iget-object v6, p1, Le/a/o/a/c/i;->e:Le/a/p5/c0;

    sget v7, Lcom/truecaller/contextcall/R$string;->context_call_manage_reason_toolbar_title:I

    new-array v8, v5, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_4
    const-string v6, ""

    :goto_2
    const-string v7, "if (onBoardingShownBefor\u2026on_toolbar_title) else \"\""

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Le/a/o/a/c/l;->setTitle(Ljava/lang/String;)V

    :cond_5
    xor-int/2addr v3, v2

    if-lez v1, :cond_6

    move v1, v2

    goto :goto_3

    :cond_6
    move v1, v5

    :goto_3
    and-int/2addr v1, v3

    if-eqz v1, :cond_7

    .line 15
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/c/l;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Le/a/o/a/c/l;->ph()V

    goto :goto_4

    .line 16
    :cond_7
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/c/l;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Le/a/o/a/c/l;->Mk()V

    .line 17
    :cond_8
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x3

    if-ge p1, v1, :cond_d

    .line 18
    iget-object p1, p0, Le/a/o/a/c/i$a;->f:Le/a/o/a/c/i;

    .line 19
    iget-object p1, p1, Le/a/o/a/c/i;->e:Le/a/p5/c0;

    .line 20
    sget v3, Lcom/truecaller/contextcall/R$array;->context_call_reason_placeholder_positions:I

    invoke-interface {p1, v3}, Le/a/p5/c0;->i(I)[Ljava/lang/String;

    move-result-object p1

    const-string v3, "resourceProvider.getStri\u2026on_placeholder_positions)"

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v3, p0, Le/a/o/a/c/i$a;->f:Le/a/o/a/c/i;

    .line 22
    iget-object v3, v3, Le/a/o/a/c/i;->e:Le/a/p5/c0;

    .line 23
    sget v4, Lcom/truecaller/contextcall/R$array;->context_call_reason_tips:I

    invoke-interface {v3, v4}, Le/a/p5/c0;->i(I)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "resourceProvider.getStri\u2026context_call_reason_tips)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4, v1}, Ls1/d0/j;->j(II)Ls1/d0/i;

    move-result-object v1

    const-string v4, "$this$count"

    .line 25
    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    instance-of v4, v1, Ljava/util/Collection;

    if-eqz v4, :cond_9

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    goto :goto_6

    .line 27
    :cond_9
    invoke-virtual {v1}, Ls1/d0/g;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v5

    :goto_5
    move-object v6, v1

    check-cast v6, Ls1/d0/h;

    .line 28
    iget-boolean v6, v6, Ls1/d0/h;->b:Z

    if-eqz v6, :cond_b

    .line 29
    move-object v6, v1

    check-cast v6, Ls1/u/z;

    invoke-virtual {v6}, Ls1/u/z;->next()Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    if-ltz v4, :cond_a

    goto :goto_5

    :cond_a
    invoke-static {}, Ls1/u/i;->M0()V

    const/4 p1, 0x0

    throw p1

    :cond_b
    move v1, v4

    :goto_6
    move v4, v5

    :goto_7
    if-ge v4, v1, :cond_d

    .line 30
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 31
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 33
    iget-object v8, p0, Le/a/o/a/c/i$a;->f:Le/a/o/a/c/i;

    .line 34
    iget-object v8, v8, Le/a/o/a/c/i;->e:Le/a/p5/c0;

    .line 35
    sget v9, Lcom/truecaller/contextcall/R$string;->context_call_reason_placeholder:I

    new-array v10, v2, [Ljava/lang/Object;

    aget-object v11, p1, v7

    aput-object v11, v10, v5

    invoke-interface {v8, v9, v10}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "resourceProvider.getStri\u2026olderPositions[position])"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    aget-object v7, v3, v7

    const-string v9, "hint"

    if-nez v6, :cond_c

    .line 37
    new-instance v6, Le/a/o/a/c/m;

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v8, v7}, Le/a/o/a/c/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 38
    :cond_c
    new-instance v6, Le/a/o/a/c/b;

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v8, v7}, Le/a/o/a/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 39
    :cond_d
    iget-object p1, p0, Le/a/o/a/c/i$a;->f:Le/a/o/a/c/i;

    .line 40
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/c/l;

    if-eqz p1, :cond_e

    .line 41
    invoke-interface {p1, v0}, Le/a/o/a/c/l;->Jj(Ljava/util/List;)V

    .line 42
    :cond_e
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
