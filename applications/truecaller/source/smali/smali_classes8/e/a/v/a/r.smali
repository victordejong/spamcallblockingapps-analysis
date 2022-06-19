.class public final Le/a/v/a/r;
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
    c = "com.truecaller.details_view.ui.DetailsPresenter$whitelist$1"
    f = "DetailsPresenter.kt"
    l = {
        0x16d,
        0x173
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/v/a/q;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/v/a/q;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/r;->g:Le/a/v/a/q;

    iput-object p2, p0, Le/a/v/a/r;->h:Ljava/lang/String;

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

    new-instance p1, Le/a/v/a/r;

    iget-object v0, p0, Le/a/v/a/r;->g:Le/a/v/a/q;

    iget-object v1, p0, Le/a/v/a/r;->h:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/v/a/r;-><init>(Le/a/v/a/q;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/v/a/r;

    iget-object v0, p0, Le/a/v/a/r;->g:Le/a/v/a/q;

    iget-object v1, p0, Le/a/v/a/r;->h:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/v/a/r;-><init>(Le/a/v/a/q;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/v/a/r;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/v/a/r;->f:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/v/a/r;->e:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/data/entity/Contact;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/v/a/r;->g:Le/a/v/a/q;

    invoke-static {p1}, Le/a/v/a/q;->Ij(Le/a/v/a/q;)Le/a/v/a/s;

    move-result-object p1

    .line 5
    iget-object v1, p1, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 6
    iget-object p1, p0, Le/a/v/a/r;->g:Le/a/v/a/q;

    .line 7
    iget-object v5, p1, Le/a/v/a/q;->k:Le/a/a3/a;

    .line 8
    invoke-static {p1, v1}, Le/a/v/a/q;->Jj(Le/a/v/a/q;Lcom/truecaller/data/entity/Contact;)Ljava/util/List;

    move-result-object p1

    .line 9
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {p1, v7}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 11
    check-cast v7, Ljava/lang/String;

    .line 12
    invoke-static {v1, v2}, Le/a/m0/a1$k;->i0(Lcom/truecaller/data/entity/Contact;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v8

    .line 13
    new-instance v9, Ls1/k;

    invoke-direct {v9, v7, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_3
    iget-object v9, p0, Le/a/v/a/r;->h:Ljava/lang/String;

    const/4 v10, 0x1

    .line 16
    iput-object v1, p0, Le/a/v/a/r;->e:Ljava/lang/Object;

    iput v4, p0, Le/a/v/a/r;->f:I

    const-string v7, "PHONE_NUMBER"

    const-string v8, "detailsView"

    move-object v11, p0

    .line 17
    invoke-interface/range {v5 .. v11}, Le/a/a3/a;->c(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 18
    :cond_4
    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-lez p1, :cond_8

    .line 19
    iget-object p1, p0, Le/a/v/a/r;->g:Le/a/v/a/q;

    .line 20
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/g;

    if-eqz p1, :cond_5

    .line 21
    sget v1, Lcom/truecaller/details_view/R$string;->details_view_whitelist_success:I

    invoke-interface {p1, v1}, Le/a/v/a/g;->h(I)V

    .line 22
    :cond_5
    iget-object p1, p0, Le/a/v/a/r;->g:Le/a/v/a/q;

    .line 23
    iget-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/g;

    if-eqz v1, :cond_7

    .line 24
    iget-object p1, p1, Le/a/v/a/q;->d:Le/a/v/a/s;

    if-eqz p1, :cond_6

    .line 25
    iget-object p1, p1, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 26
    invoke-interface {v1, p1}, Le/a/v/a/g;->G(Lcom/truecaller/data/entity/Contact;)V

    goto :goto_2

    :cond_6
    const-string p1, "detailsViewModel"

    .line 27
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 28
    :cond_7
    :goto_2
    iget-object p1, p0, Le/a/v/a/r;->g:Le/a/v/a/q;

    iput-object v2, p0, Le/a/v/a/r;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/v/a/r;->f:I

    invoke-virtual {p1, p0}, Le/a/v/a/q;->Lj(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    .line 29
    :cond_8
    iget-object p1, p0, Le/a/v/a/r;->g:Le/a/v/a/q;

    .line 30
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/g;

    if-eqz p1, :cond_9

    .line 31
    sget v0, Lcom/truecaller/details_view/R$string;->details_view_whitelist_update_fail:I

    invoke-interface {p1, v0}, Le/a/v/a/g;->h(I)V

    :cond_9
    const-string p1, "Whitelist failed. hasNumbers: "

    .line 32
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->h0()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    .line 33
    :cond_a
    :goto_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
