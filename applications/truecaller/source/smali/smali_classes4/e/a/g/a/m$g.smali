.class public final Le/a/g/a/m$g;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/m;->Y6(Lcom/truecaller/spamcategories/SpamCategoryResult;)V
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
    c = "com.truecaller.acs.ui.AfterCallBasePresenter$onSpamCategoryResult$1"
    f = "AfterCallBasePresenter.kt"
    l = {
        0x459
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/g/a/m;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Z

.field public final synthetic i:Lcom/truecaller/spamcategories/SpamCategoryResult;

.field public final synthetic j:Lcom/truecaller/data/entity/Contact;


# direct methods
.method public constructor <init>(Le/a/g/a/m;Ljava/lang/String;ZLcom/truecaller/spamcategories/SpamCategoryResult;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/m$g;->f:Le/a/g/a/m;

    iput-object p2, p0, Le/a/g/a/m$g;->g:Ljava/lang/String;

    iput-boolean p3, p0, Le/a/g/a/m$g;->h:Z

    iput-object p4, p0, Le/a/g/a/m$g;->i:Lcom/truecaller/spamcategories/SpamCategoryResult;

    iput-object p5, p0, Le/a/g/a/m$g;->j:Lcom/truecaller/data/entity/Contact;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 7
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

    new-instance p1, Le/a/g/a/m$g;

    iget-object v1, p0, Le/a/g/a/m$g;->f:Le/a/g/a/m;

    iget-object v2, p0, Le/a/g/a/m$g;->g:Ljava/lang/String;

    iget-boolean v3, p0, Le/a/g/a/m$g;->h:Z

    iget-object v4, p0, Le/a/g/a/m$g;->i:Lcom/truecaller/spamcategories/SpamCategoryResult;

    iget-object v5, p0, Le/a/g/a/m$g;->j:Lcom/truecaller/data/entity/Contact;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Le/a/g/a/m$g;-><init>(Le/a/g/a/m;Ljava/lang/String;ZLcom/truecaller/spamcategories/SpamCategoryResult;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/g/a/m$g;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/g/a/m$g;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/g/a/m$g;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/g/a/m$g;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

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
    iget-object p1, p0, Le/a/g/a/m$g;->f:Le/a/g/a/m;

    iget-object v6, p0, Le/a/g/a/m$g;->g:Ljava/lang/String;

    iget-boolean v1, p0, Le/a/g/a/m$g;->h:Z

    invoke-static {v1}, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;->fromIsBusiness(Z)Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    move-result-object v8

    const-string v1, "EntityType.fromIsBusiness(isBusiness)"

    invoke-static {v8, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/g/a/m$g;->i:Lcom/truecaller/spamcategories/SpamCategoryResult;

    .line 5
    iget-object v11, v1, Lcom/truecaller/spamcategories/SpamCategoryResult;->a:Ljava/lang/Long;

    .line 6
    iput v2, p0, Le/a/g/a/m$g;->e:I

    .line 7
    iget-object v3, p1, Le/a/g/a/m;->L:Le/a/a3/a;

    .line 8
    invoke-virtual {p1}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v1

    .line 9
    iget-object v1, v1, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v1

    .line 11
    iget-object v1, v1, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    .line 12
    :goto_0
    invoke-virtual {p1}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v4

    .line 13
    iget-object v4, v4, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz v4, :cond_3

    .line 14
    iget-object v4, v4, Lcom/truecaller/data/entity/Contact;->x:Lcom/truecaller/data/entity/SpamData;

    if-eqz v4, :cond_3

    .line 15
    invoke-virtual {v4}, Lcom/truecaller/data/entity/SpamData;->getSpamVersion()Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 16
    :goto_1
    new-instance v5, Ls1/k;

    invoke-direct {v5, v1, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    invoke-static {v5}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 18
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    instance-of p1, p1, Le/a/g/a/b/h;

    if-eqz p1, :cond_4

    sget-object p1, Lcom/truecaller/acs/analytics/AnalyticsContext;->FACS:Lcom/truecaller/acs/analytics/AnalyticsContext;

    goto :goto_2

    :cond_4
    sget-object p1, Lcom/truecaller/acs/analytics/AnalyticsContext;->PACS:Lcom/truecaller/acs/analytics/AnalyticsContext;

    :goto_2
    invoke-virtual {p1}, Lcom/truecaller/acs/analytics/AnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    .line 19
    sget-object v10, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->NONE:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    const-string v5, "PHONE_NUMBER"

    move-object v12, p0

    .line 20
    invoke-interface/range {v3 .. v12}, Le/a/a3/a;->b(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;ZLcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Ljava/lang/Long;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 21
    :cond_5
    :goto_3
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-lez p1, :cond_6

    .line 22
    iget-object p1, p0, Le/a/g/a/m$g;->f:Le/a/g/a/m;

    iget-object v0, p0, Le/a/g/a/m$g;->j:Lcom/truecaller/data/entity/Contact;

    iget-object v1, p0, Le/a/g/a/m$g;->g:Ljava/lang/String;

    .line 23
    invoke-virtual {p1, v2, v0, v1}, Le/a/g/a/m;->fk(ZLcom/truecaller/data/entity/Contact;Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Le/a/g/a/m$g;->f:Le/a/g/a/m;

    .line 25
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/h;

    if-eqz p1, :cond_7

    .line 26
    sget v0, Lcom/truecaller/acs/R$string;->acs_blacklist_success:I

    invoke-interface {p1, v0}, Le/a/g/a/h;->a(I)V

    goto :goto_4

    .line 27
    :cond_6
    iget-object p1, p0, Le/a/g/a/m$g;->f:Le/a/g/a/m;

    .line 28
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/h;

    if-eqz p1, :cond_7

    .line 29
    sget v0, Lcom/truecaller/acs/R$string;->acs_blacklist_update_fail:I

    invoke-interface {p1, v0}, Le/a/g/a/h;->a(I)V

    .line 30
    :cond_7
    :goto_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
