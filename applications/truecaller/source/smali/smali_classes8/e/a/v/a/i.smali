.class public final Le/a/v/a/i;
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
    c = "com.truecaller.details_view.ui.DetailsPresenter$blacklist$1"
    f = "DetailsPresenter.kt"
    l = {
        0x187,
        0x190
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/v/a/q;

.field public final synthetic h:Lcom/truecaller/spamcategories/SpamCategoryResult;


# direct methods
.method public constructor <init>(Le/a/v/a/q;Lcom/truecaller/spamcategories/SpamCategoryResult;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/i;->g:Le/a/v/a/q;

    iput-object p2, p0, Le/a/v/a/i;->h:Lcom/truecaller/spamcategories/SpamCategoryResult;

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

    new-instance p1, Le/a/v/a/i;

    iget-object v0, p0, Le/a/v/a/i;->g:Le/a/v/a/q;

    iget-object v1, p0, Le/a/v/a/i;->h:Lcom/truecaller/spamcategories/SpamCategoryResult;

    invoke-direct {p1, v0, v1, p2}, Le/a/v/a/i;-><init>(Le/a/v/a/q;Lcom/truecaller/spamcategories/SpamCategoryResult;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/v/a/i;

    iget-object v0, p0, Le/a/v/a/i;->g:Le/a/v/a/q;

    iget-object v1, p0, Le/a/v/a/i;->h:Lcom/truecaller/spamcategories/SpamCategoryResult;

    invoke-direct {p1, v0, v1, p2}, Le/a/v/a/i;-><init>(Le/a/v/a/q;Lcom/truecaller/spamcategories/SpamCategoryResult;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/v/a/i;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v10, p0

    sget-object v11, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v0, v10, Le/a/v/a/i;->f:I

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v14, :cond_1

    if-ne v0, v13, :cond_0

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iget-object v0, v10, Le/a/v/a/i;->e:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/data/entity/Contact;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v15, v0

    move-object/from16 v0, p1

    goto/16 :goto_2

    :cond_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v0, v10, Le/a/v/a/i;->g:Le/a/v/a/q;

    invoke-static {v0}, Le/a/v/a/q;->Ij(Le/a/v/a/q;)Le/a/v/a/s;

    move-result-object v0

    .line 5
    iget-object v15, v0, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 6
    iget-object v0, v15, Lcom/truecaller/data/entity/Contact;->x:Lcom/truecaller/data/entity/SpamData;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Lcom/truecaller/data/entity/SpamData;->getSpamVersion()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v12

    .line 8
    :goto_0
    iget-object v1, v10, Le/a/v/a/i;->g:Le/a/v/a/q;

    .line 9
    iget-object v2, v1, Le/a/v/a/q;->k:Le/a/a3/a;

    .line 10
    invoke-static {v1, v15}, Le/a/v/a/q;->Jj(Le/a/v/a/q;Lcom/truecaller/data/entity/Contact;)Ljava/util/List;

    move-result-object v1

    .line 11
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 13
    check-cast v4, Ljava/lang/String;

    .line 14
    new-instance v5, Ls1/k;

    invoke-direct {v5, v4, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_4
    iget-object v0, v10, Le/a/v/a/i;->h:Lcom/truecaller/spamcategories/SpamCategoryResult;

    .line 17
    iget-object v4, v0, Lcom/truecaller/spamcategories/SpamCategoryResult;->b:Ljava/lang/String;

    .line 18
    iget-boolean v0, v0, Lcom/truecaller/spamcategories/SpamCategoryResult;->c:Z

    .line 19
    invoke-static {v0}, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;->fromIsBusiness(Z)Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    move-result-object v5

    const-string v0, "Filters.EntityType.fromI\u2026ategoryResult.isBusiness)"

    invoke-static {v5, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 20
    sget-object v7, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->NONE:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    .line 21
    iget-object v0, v10, Le/a/v/a/i;->h:Lcom/truecaller/spamcategories/SpamCategoryResult;

    .line 22
    iget-object v8, v0, Lcom/truecaller/spamcategories/SpamCategoryResult;->a:Ljava/lang/Long;

    .line 23
    iput-object v15, v10, Le/a/v/a/i;->e:Ljava/lang/Object;

    iput v14, v10, Le/a/v/a/i;->f:I

    const-string v9, "PHONE_NUMBER"

    const-string v16, "detailsView"

    move-object v0, v2

    move-object v1, v3

    move-object v2, v9

    move-object v3, v4

    move-object/from16 v4, v16

    move-object/from16 v9, p0

    .line 24
    invoke-interface/range {v0 .. v9}, Le/a/a3/a;->b(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;ZLcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Ljava/lang/Long;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_5

    return-object v11

    .line 25
    :cond_5
    :goto_2
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_a

    .line 26
    iget-object v0, v10, Le/a/v/a/i;->g:Le/a/v/a/q;

    .line 27
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/g;

    if-eqz v0, :cond_8

    .line 28
    iget-object v2, v10, Le/a/v/a/i;->h:Lcom/truecaller/spamcategories/SpamCategoryResult;

    .line 29
    iget-object v2, v2, Lcom/truecaller/spamcategories/SpamCategoryResult;->b:Ljava/lang/String;

    if-eqz v2, :cond_6

    goto :goto_3

    .line 30
    :cond_6
    invoke-virtual {v15}, Lcom/truecaller/data/entity/Contact;->x()Ljava/lang/String;

    move-result-object v2

    const-string v3, "contact.displayNameOrNumber"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    :goto_3
    invoke-virtual {v15}, Lcom/truecaller/data/entity/Contact;->t()Ljava/lang/String;

    move-result-object v3

    .line 32
    iget-object v4, v10, Le/a/v/a/i;->g:Le/a/v/a/q;

    invoke-static {v4}, Le/a/v/a/q;->Ij(Le/a/v/a/q;)Le/a/v/a/s;

    move-result-object v4

    .line 33
    iget-object v4, v4, Le/a/v/a/s;->b:Le/a/v/a/d;

    .line 34
    instance-of v4, v4, Le/a/v/a/d$f;

    if-eqz v4, :cond_7

    iget-object v4, v10, Le/a/v/a/i;->g:Le/a/v/a/q;

    invoke-static {v4}, Le/a/v/a/q;->Ij(Le/a/v/a/q;)Le/a/v/a/s;

    move-result-object v4

    .line 35
    iget-object v4, v4, Le/a/v/a/s;->b:Le/a/v/a/d;

    const-string v5, "null cannot be cast to non-null type com.truecaller.details_view.ui.ContactType.Spam"

    .line 36
    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Le/a/v/a/d$f;

    .line 37
    iget-boolean v4, v4, Le/a/v/a/d$f;->b:Z

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    move v14, v1

    .line 38
    :goto_4
    invoke-interface {v0, v2, v3, v14}, Le/a/v/a/g;->n(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 39
    :cond_8
    iget-object v0, v10, Le/a/v/a/i;->g:Le/a/v/a/q;

    iput-object v12, v10, Le/a/v/a/i;->e:Ljava/lang/Object;

    iput v13, v10, Le/a/v/a/i;->f:I

    invoke-virtual {v0, v10}, Le/a/v/a/q;->Lj(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_9

    return-object v11

    .line 40
    :cond_9
    :goto_5
    iget-object v0, v10, Le/a/v/a/i;->g:Le/a/v/a/q;

    .line 41
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/g;

    if-eqz v0, :cond_d

    .line 42
    sget v1, Lcom/truecaller/details_view/R$string;->details_view_blacklist_success:I

    invoke-interface {v0, v1}, Le/a/v/a/g;->h(I)V

    goto :goto_7

    .line 43
    :cond_a
    iget-object v0, v10, Le/a/v/a/i;->g:Le/a/v/a/q;

    .line 44
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/g;

    if-eqz v0, :cond_b

    .line 45
    sget v2, Lcom/truecaller/details_view/R$string;->details_view_blacklist_update_fail:I

    invoke-interface {v0, v2}, Le/a/v/a/g;->h(I)V

    :cond_b
    const-string v0, "Blacklist failed. hasNumbers: "

    .line 46
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v15}, Lcom/truecaller/data/entity/Contact;->h0()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ". hasLabel: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Le/a/v/a/i;->h:Lcom/truecaller/spamcategories/SpamCategoryResult;

    .line 47
    iget-object v2, v2, Lcom/truecaller/spamcategories/SpamCategoryResult;->b:Ljava/lang/String;

    if-eqz v2, :cond_c

    goto :goto_6

    :cond_c
    move v14, v1

    .line 48
    :goto_6
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    .line 50
    :cond_d
    :goto_7
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
