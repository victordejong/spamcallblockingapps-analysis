.class public final Le/a/b/a/c/a/e0/k;
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
    c = "com.truecaller.bizmon.newBusiness.onboarding.ui.presenters.SubCategoryPresenter$loadSubCategories$1"
    f = "SubCategoryPresenter.kt"
    l = {
        0x2e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/b/a/c/a/e0/l;

.field public final synthetic h:J


# direct methods
.method public constructor <init>(Le/a/b/a/c/a/e0/l;JLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/c/a/e0/k;->g:Le/a/b/a/c/a/e0/l;

    iput-wide p2, p0, Le/a/b/a/c/a/e0/k;->h:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Le/a/b/a/c/a/e0/k;

    iget-object v0, p0, Le/a/b/a/c/a/e0/k;->g:Le/a/b/a/c/a/e0/l;

    iget-wide v1, p0, Le/a/b/a/c/a/e0/k;->h:J

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/b/a/c/a/e0/k;-><init>(Le/a/b/a/c/a/e0/l;JLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/b/a/c/a/e0/k;

    iget-object v0, p0, Le/a/b/a/c/a/e0/k;->g:Le/a/b/a/c/a/e0/l;

    iget-wide v1, p0, Le/a/b/a/c/a/e0/k;->h:J

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/b/a/c/a/e0/k;-><init>(Le/a/b/a/c/a/e0/l;JLs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/b/a/c/a/e0/k;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/b/a/c/a/e0/k;->f:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Le/a/b/a/c/a/e0/k;->e:Ljava/lang/Object;

    check-cast v0, Le/a/b/a/c/a/e0/l;

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
    iget-object p1, p0, Le/a/b/a/c/a/e0/k;->g:Le/a/b/a/c/a/e0/l;

    .line 5
    iget-object v1, p1, Le/a/b/a/c/a/e0/l;->l:Ls1/w/f;

    .line 6
    new-instance v4, Le/a/b/a/c/a/e0/k$a;

    invoke-direct {v4, p0, v2}, Le/a/b/a/c/a/e0/k$a;-><init>(Le/a/b/a/c/a/e0/k;Ls1/w/d;)V

    iput-object p1, p0, Le/a/b/a/c/a/e0/k;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/b/a/c/a/e0/k;->f:I

    invoke-static {v1, v4, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    :goto_0
    check-cast p1, Ljava/util/List;

    .line 7
    iput-object p1, v0, Le/a/b/a/c/a/e0/l;->h:Ljava/util/List;

    .line 8
    iget-object p1, p0, Le/a/b/a/c/a/e0/k;->g:Le/a/b/a/c/a/e0/l;

    .line 9
    iget-object v0, p1, Le/a/b/a/c/a/e0/l;->k:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    if-eqz v0, :cond_b

    .line 10
    invoke-virtual {v0}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getTags()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v1, v3

    :goto_2
    if-eqz v1, :cond_5

    .line 12
    iput-object v2, p1, Le/a/b/a/c/a/e0/l;->j:Ljava/lang/Long;

    :cond_5
    if-eqz v0, :cond_8

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_7

    .line 14
    iget-object v1, p1, Le/a/b/a/c/a/e0/l;->j:Ljava/lang/Long;

    if-eqz v1, :cond_6

    invoke-static {v0}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-eqz v1, :cond_6

    goto :goto_3

    .line 15
    :cond_6
    invoke-static {v0}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_4

    :cond_7
    :goto_3
    move-object v0, v2

    .line 16
    :goto_4
    iput-object v0, p1, Le/a/b/a/c/a/e0/l;->j:Ljava/lang/Long;

    .line 17
    :cond_8
    iget-object p1, p0, Le/a/b/a/c/a/e0/k;->g:Le/a/b/a/c/a/e0/l;

    .line 18
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/a/c/a/z;

    if-eqz v0, :cond_a

    .line 19
    iget-object v1, p1, Le/a/b/a/c/a/e0/l;->h:Ljava/util/List;

    if-eqz v1, :cond_9

    .line 20
    iget-object p1, p1, Le/a/b/a/c/a/e0/l;->j:Ljava/lang/Long;

    .line 21
    invoke-interface {v0, v1, p1}, Le/a/b/a/c/a/z;->fa(Ljava/util/List;Ljava/lang/Long;)V

    goto :goto_5

    :cond_9
    const-string p1, "childTagsDisplayed"

    .line 22
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 23
    :cond_a
    :goto_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_b
    const-string p1, "businessProfile"

    .line 24
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method
