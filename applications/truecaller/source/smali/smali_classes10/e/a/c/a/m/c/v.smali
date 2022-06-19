.class public final Le/a/c/a/m/c/v;
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
    c = "com.truecaller.insights.ui.qa.view.QaAddressFiltersFragment$renderAppliedFilters$1"
    f = "QaAddressFiltersFragment.kt"
    l = {
        0x45,
        0x48,
        0x4b,
        0x4e,
        0x50,
        0x53
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:I

.field public final synthetic i:Le/a/c/a/m/c/u;

.field public final synthetic j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/c/a/m/c/u;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/m/c/v;->i:Le/a/c/a/m/c/u;

    iput-object p2, p0, Le/a/c/a/m/c/v;->j:Ljava/lang/String;

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

    new-instance p1, Le/a/c/a/m/c/v;

    iget-object v0, p0, Le/a/c/a/m/c/v;->i:Le/a/c/a/m/c/u;

    iget-object v1, p0, Le/a/c/a/m/c/v;->j:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/c/a/m/c/v;-><init>(Le/a/c/a/m/c/u;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/a/m/c/v;

    iget-object v0, p0, Le/a/c/a/m/c/v;->i:Le/a/c/a/m/c/u;

    iget-object v1, p0, Le/a/c/a/m/c/v;->j:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/c/a/m/c/v;-><init>(Le/a/c/a/m/c/u;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/a/m/c/v;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/a/m/c/v;->h:I

    const/4 v2, 0x0

    const-string v3, "insightsFilterFetcher"

    const-string v4, "\n\n"

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_0
    iget-object v0, p0, Le/a/c/a/m/c/v;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/a/m/c/v;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_1
    iget-object v1, p0, Le/a/c/a/m/c/v;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Le/a/c/a/m/c/v;->f:Ljava/lang/Object;

    check-cast v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Le/a/c/a/m/c/v;->e:Ljava/lang/Object;

    check-cast v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_2
    iget-object v1, p0, Le/a/c/a/m/c/v;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Le/a/c/a/m/c/v;->f:Ljava/lang/Object;

    check-cast v3, Ljava/lang/StringBuilder;

    iget-object v5, p0, Le/a/c/a/m/c/v;->e:Ljava/lang/Object;

    check-cast v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_3
    iget-object v1, p0, Le/a/c/a/m/c/v;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Le/a/c/a/m/c/v;->f:Ljava/lang/Object;

    check-cast v3, Ljava/lang/StringBuilder;

    iget-object v5, p0, Le/a/c/a/m/c/v;->e:Ljava/lang/Object;

    check-cast v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_4
    iget-object v1, p0, Le/a/c/a/m/c/v;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Le/a/c/a/m/c/v;->f:Ljava/lang/Object;

    check-cast v3, Ljava/lang/StringBuilder;

    iget-object v5, p0, Le/a/c/a/m/c/v;->e:Ljava/lang/Object;

    check-cast v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    iget-object v1, p0, Le/a/c/a/m/c/v;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/StringBuilder;

    iget-object v5, p0, Le/a/c/a/m/c/v;->f:Ljava/lang/Object;

    check-cast v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Le/a/c/a/m/c/v;->e:Ljava/lang/Object;

    check-cast v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_6
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "InsightsFilterFetcher \n\n"

    .line 5
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "InsightsFilterType: "

    .line 6
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object p1, p0, Le/a/c/a/m/c/v;->i:Le/a/c/a/m/c/u;

    .line 8
    iget-object p1, p1, Le/a/c/a/m/c/u;->a:Le/a/c/h/e;

    if-eqz p1, :cond_8

    .line 9
    iget-object v5, p0, Le/a/c/a/m/c/v;->j:Ljava/lang/String;

    iput-object v1, p0, Le/a/c/a/m/c/v;->e:Ljava/lang/Object;

    iput-object v1, p0, Le/a/c/a/m/c/v;->f:Ljava/lang/Object;

    iput-object v1, p0, Le/a/c/a/m/c/v;->g:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, p0, Le/a/c/a/m/c/v;->h:I

    invoke-interface {p1, v5, p0}, Le/a/c/h/e;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    :cond_0
    move-object v5, v1

    move-object v6, v5

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "FilterMatch: "

    .line 11
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object p1, p0, Le/a/c/a/m/c/v;->i:Le/a/c/a/m/c/u;

    .line 13
    iget-object p1, p1, Le/a/c/a/m/c/u;->a:Le/a/c/h/e;

    if-eqz p1, :cond_7

    .line 14
    iget-object v1, p0, Le/a/c/a/m/c/v;->j:Ljava/lang/String;

    iput-object v6, p0, Le/a/c/a/m/c/v;->e:Ljava/lang/Object;

    iput-object v5, p0, Le/a/c/a/m/c/v;->f:Ljava/lang/Object;

    iput-object v5, p0, Le/a/c/a/m/c/v;->g:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, p0, Le/a/c/a/m/c/v;->h:I

    invoke-interface {p1, v1, p0}, Le/a/c/h/e;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    return-object v0

    :cond_1
    move-object v1, v5

    move-object v3, v1

    move-object v5, v6

    :goto_1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "SmartSmsFeatureFilter\n"

    .line 16
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object p1, p0, Le/a/c/a/m/c/v;->i:Le/a/c/a/m/c/u;

    iget-object v1, p0, Le/a/c/a/m/c/v;->j:Ljava/lang/String;

    iput-object v5, p0, Le/a/c/a/m/c/v;->e:Ljava/lang/Object;

    iput-object v3, p0, Le/a/c/a/m/c/v;->f:Ljava/lang/Object;

    iput-object v3, p0, Le/a/c/a/m/c/v;->g:Ljava/lang/Object;

    const/4 v6, 0x3

    iput v6, p0, Le/a/c/a/m/c/v;->h:I

    invoke-virtual {p1, v1, p0}, Le/a/c/a/m/c/u;->TA(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v1, v3

    :goto_2
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    .line 18
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "isSenderBlacklistedForAllGrm: "

    .line 19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object p1, p0, Le/a/c/a/m/c/v;->i:Le/a/c/a/m/c/u;

    .line 21
    iget-object p1, p1, Le/a/c/a/m/c/u;->b:Le/a/c/w/o0/g;

    if-eqz p1, :cond_6

    .line 22
    iget-object v1, p0, Le/a/c/a/m/c/v;->j:Ljava/lang/String;

    iput-object v5, p0, Le/a/c/a/m/c/v;->e:Ljava/lang/Object;

    iput-object v3, p0, Le/a/c/a/m/c/v;->f:Ljava/lang/Object;

    iput-object v3, p0, Le/a/c/a/m/c/v;->g:Ljava/lang/Object;

    const/4 v6, 0x4

    iput v6, p0, Le/a/c/a/m/c/v;->h:I

    invoke-interface {p1, v1, p0}, Le/a/c/w/o0/g;->b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v1, v3

    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object p1, p0, Le/a/c/a/m/c/v;->i:Le/a/c/a/m/c/u;

    iget-object v1, p0, Le/a/c/a/m/c/v;->j:Ljava/lang/String;

    iput-object v5, p0, Le/a/c/a/m/c/v;->e:Ljava/lang/Object;

    iput-object v3, p0, Le/a/c/a/m/c/v;->f:Ljava/lang/Object;

    iput-object v3, p0, Le/a/c/a/m/c/v;->g:Ljava/lang/Object;

    const/4 v4, 0x5

    iput v4, p0, Le/a/c/a/m/c/v;->h:I

    invoke-virtual {p1, v1, p0}, Le/a/c/a/m/c/u;->UA(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v1, v3

    move-object v4, v5

    :goto_4
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\n\n"

    .line 25
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "SenderFilterManager\n"

    .line 26
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object p1, p0, Le/a/c/a/m/c/v;->i:Le/a/c/a/m/c/u;

    iget-object v1, p0, Le/a/c/a/m/c/v;->j:Ljava/lang/String;

    iput-object v4, p0, Le/a/c/a/m/c/v;->e:Ljava/lang/Object;

    iput-object v3, p0, Le/a/c/a/m/c/v;->f:Ljava/lang/Object;

    iput-object v2, p0, Le/a/c/a/m/c/v;->g:Ljava/lang/Object;

    const/4 v2, 0x6

    iput v2, p0, Le/a/c/a/m/c/v;->h:I

    invoke-virtual {p1, v1, p0}, Le/a/c/a/m/c/u;->SA(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v0, v3

    move-object v1, v4

    :goto_5
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Le/a/c/a/m/c/v;->i:Le/a/c/a/m/c/u;

    .line 30
    sget-object v1, Le/a/c/a/m/c/u;->e:[Ls1/a/l;

    .line 31
    invoke-virtual {v0}, Le/a/c/a/m/c/u;->PA()Le/a/c/a/g/i0;

    move-result-object v0

    .line 32
    iget-object v0, v0, Le/a/c/a/g/i0;->b:Landroid/widget/TextView;

    const-string v1, "binding.filtersDetails"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_6
    const-string p1, "smartSmsFeatureFilter"

    .line 34
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 35
    :cond_7
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 36
    :cond_8
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
