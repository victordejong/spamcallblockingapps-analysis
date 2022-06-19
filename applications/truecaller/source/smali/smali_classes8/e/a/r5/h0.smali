.class public final Le/a/r5/h0;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/r5/f0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;",
        ">;",
        "Le/a/r5/f0;"
    }
.end annotation


# instance fields
.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/r5/o;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

.field public g:Ls1/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/k<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Le/a/l/p2/v0;

.field public final i:Le/a/r5/i0;

.field public final j:Le/a/h/b/r;

.field public final k:Le/a/p5/c0;

.field public final l:Le/a/r5/p0;

.field public final m:Le/a/l/c/a/r;

.field public final n:Le/a/r5/n0;

.field public final o:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/l/p2/v0;Le/a/r5/i0;Le/a/h/b/r;Le/a/p5/c0;Le/a/r5/p0;Le/a/l/c/a/r;Le/a/c0/h;Le/a/r5/n0;Ls1/w/f;)V
    .locals 1
    .param p3    # Le/a/h/b/r;
        .annotation runtime Ljavax/inject/Named;
            value = "WhoViewedMeScreenModule.DataObserver"
        .end annotation
    .end param
    .param p9    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "premiumStateSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whoViewedMeManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataObserver"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whoViewedMeSettings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardLabelFactory"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "experimentRegistry"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "whoViewedMeRevealProfileViewAbTestManager"

    invoke-static {p8, p7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "uiContext"

    invoke-static {p9, p7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p9}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/r5/h0;->h:Le/a/l/p2/v0;

    iput-object p2, p0, Le/a/r5/h0;->i:Le/a/r5/i0;

    iput-object p3, p0, Le/a/r5/h0;->j:Le/a/h/b/r;

    iput-object p4, p0, Le/a/r5/h0;->k:Le/a/p5/c0;

    iput-object p5, p0, Le/a/r5/h0;->l:Le/a/r5/p0;

    iput-object p6, p0, Le/a/r5/h0;->m:Le/a/l/c/a/r;

    iput-object p8, p0, Le/a/r5/h0;->n:Le/a/r5/n0;

    iput-object p9, p0, Le/a/r5/h0;->o:Ls1/w/f;

    .line 2
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    iput-object p1, p0, Le/a/r5/h0;->d:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Le/a/r5/h0;->e:Ljava/util/Set;

    .line 4
    sget-object p1, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;->NONE:Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

    iput-object p1, p0, Le/a/r5/h0;->f:Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

    return-void
.end method


# virtual methods
.method public D7()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/r5/h0;->i:Le/a/r5/i0;

    iget-object v1, p0, Le/a/r5/h0;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Le/a/r5/i0;->a(Ljava/util/List;)Le/a/r5/o;

    move-result-object v0

    .line 2
    iget-object v2, v0, Le/a/r5/o;->e:Lcom/truecaller/data/entity/Contact;

    .line 3
    sget-object v3, Lcom/truecaller/details_view/analytics/SourceType;->WhoViewedMe:Lcom/truecaller/details_view/analytics/SourceType;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x15

    move-object v1, p0

    .line 4
    invoke-virtual/range {v1 .. v6}, Le/a/r5/h0;->L1(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/details_view/analytics/SourceType;ZZI)V

    return-void
.end method

.method public H7()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r5/h0;->h:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v0

    return v0
.end method

.method public Hc(Le/a/r5/d0;Ls1/a/l;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r5/d0;",
            "Ls1/a/l<",
            "*>;)",
            "Ljava/util/List<",
            "Le/a/r5/o;",
            ">;"
        }
    .end annotation

    const-string v0, "whoViewedMeListItemPresenter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "property"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/r5/h0;->d:Ljava/util/List;

    return-object p1
.end method

.method public final Ij(Ls1/w/d;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Le/a/r5/h0$a;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/r5/h0$a;

    iget v3, v2, Le/a/r5/h0$a;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/r5/h0$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/r5/h0$a;

    invoke-direct {v2, v0, v1}, Le/a/r5/h0$a;-><init>(Le/a/r5/h0;Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/r5/h0$a;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/r5/h0$a;->e:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_12

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-boolean v4, v2, Le/a/r5/h0$a;->i:Z

    iget v8, v2, Le/a/r5/h0$a;->h:I

    iget-object v9, v2, Le/a/r5/h0$a;->g:Ljava/lang/Object;

    check-cast v9, Le/a/r5/h0;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;

    if-eqz v1, :cond_4

    invoke-interface {v1, v6}, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;->f(Z)V

    .line 5
    :cond_4
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;->e()V

    .line 6
    :cond_5
    iget-object v1, v0, Le/a/r5/h0;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    .line 7
    iget-object v1, v0, Le/a/r5/h0;->h:Le/a/l/p2/v0;

    invoke-interface {v1}, Le/a/l/p2/v0;->H()Z

    move-result v4

    .line 8
    iget-object v1, v0, Le/a/r5/h0;->i:Le/a/r5/i0;

    iput-object v0, v2, Le/a/r5/h0$a;->g:Ljava/lang/Object;

    iput v8, v2, Le/a/r5/h0$a;->h:I

    iput-boolean v4, v2, Le/a/r5/h0$a;->i:Z

    iput v7, v2, Le/a/r5/h0$a;->e:I

    invoke-interface {v1, v2}, Le/a/r5/i0;->g(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_6

    return-object v3

    :cond_6
    move-object v9, v0

    :goto_1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v10, 0x0

    if-eqz v4, :cond_8

    if-lez v8, :cond_8

    .line 9
    iget-object v11, v9, Le/a/r5/h0;->f:Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

    sget-object v12, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;->PREMIUM_WITH_PROFILE_VIEWS:Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

    if-eq v11, v12, :cond_8

    .line 10
    iget-object v1, v9, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;->ov()V

    .line 11
    :cond_7
    iput-object v12, v9, Le/a/r5/h0;->f:Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

    goto :goto_2

    :cond_8
    if-eqz v4, :cond_a

    if-nez v8, :cond_a

    .line 12
    iget-object v11, v9, Le/a/r5/h0;->f:Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

    sget-object v12, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;->PREMIUM_ZERO_PROFILE_VIEWS:Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

    if-eq v11, v12, :cond_a

    .line 13
    iget-object v1, v9, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;->dz()V

    .line 14
    :cond_9
    iput-object v12, v9, Le/a/r5/h0;->f:Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

    :goto_2
    move/from16 v19, v7

    move v7, v6

    move/from16 v6, v19

    goto/16 :goto_10

    :cond_a
    if-nez v4, :cond_14

    if-eqz v1, :cond_14

    .line 15
    iget-object v1, v9, Le/a/r5/h0;->n:Le/a/r5/n0;

    invoke-virtual {v1}, Le/a/r5/n0;->a()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 16
    iget-object v1, v9, Le/a/r5/h0;->i:Le/a/r5/i0;

    iget-object v4, v9, Le/a/r5/h0;->d:Ljava/util/List;

    invoke-interface {v1, v4}, Le/a/r5/i0;->a(Ljava/util/List;)Le/a/r5/o;

    move-result-object v1

    .line 17
    new-instance v4, Le/a/r5/s;

    .line 18
    iget-object v11, v1, Le/a/r5/o;->e:Lcom/truecaller/data/entity/Contact;

    .line 19
    invoke-virtual {v11}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_b

    goto :goto_3

    :cond_b
    iget-object v11, v9, Le/a/r5/h0;->k:Le/a/p5/c0;

    const v12, 0x7f1207de

    new-array v13, v6, [Ljava/lang/Object;

    invoke-interface {v11, v12, v13}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    :goto_3
    move-object v12, v11

    const-string v11, "profileViewEvent.contact\u2026hoViewedMeUserNameIfNull)"

    invoke-static {v12, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v11, v1, Le/a/r5/o;->e:Lcom/truecaller/data/entity/Contact;

    .line 21
    invoke-virtual {v11}, Lcom/truecaller/data/entity/Contact;->r()Lcom/truecaller/data/entity/Address;

    move-result-object v11

    if-eqz v11, :cond_c

    invoke-virtual {v11}, Lcom/truecaller/data/entity/Address;->getShortDisplayableAddress()Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    :cond_c
    move-object v11, v10

    :goto_4
    if-eqz v11, :cond_d

    goto :goto_5

    :cond_d
    const-string v11, ""

    :goto_5
    move-object v13, v11

    .line 22
    iget-wide v14, v1, Le/a/r5/o;->b:J

    .line 23
    iget-object v11, v1, Le/a/r5/o;->e:Lcom/truecaller/data/entity/Contact;

    const/4 v5, 0x7

    .line 24
    invoke-static {v11, v6, v6, v10, v5}, Le/m/d/y/n;->s(Lcom/truecaller/data/entity/Contact;ZZLjava/lang/String;I)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v16

    move-object v11, v4

    .line 25
    invoke-direct/range {v11 .. v16}, Le/a/r5/s;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 26
    iget-object v5, v9, Le/a/r5/h0;->g:Ls1/k;

    if-eqz v5, :cond_e

    .line 27
    iget-object v11, v5, Ls1/k;->a:Ljava/lang/Object;

    .line 28
    check-cast v11, Ljava/lang/String;

    goto :goto_6

    :cond_e
    move-object v11, v10

    :goto_6
    if-eqz v5, :cond_f

    .line 29
    iget-object v5, v5, Ls1/k;->b:Ljava/lang/Object;

    .line 30
    check-cast v5, Ljava/lang/Integer;

    goto :goto_7

    :cond_f
    move-object v5, v10

    .line 31
    :goto_7
    iget-object v12, v9, Le/a/r5/h0;->f:Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

    sget-object v15, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;->REGULAR_REVEALED_PROFILE_VIEW:Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

    if-ne v12, v15, :cond_10

    move/from16 v16, v7

    goto :goto_8

    :cond_10
    move/from16 v16, v6

    .line 32
    :goto_8
    iget-object v12, v9, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v12, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;

    if-eqz v12, :cond_13

    .line 33
    iget-object v13, v9, Le/a/r5/h0;->m:Le/a/l/c/a/r;

    invoke-virtual {v13}, Le/a/l/c/a/r;->b()Le/a/l/c/a/q;

    move-result-object v13

    .line 34
    iget-object v14, v9, Le/a/r5/h0;->m:Le/a/l/c/a/r;

    invoke-virtual {v14}, Le/a/l/c/a/r;->c()Le/a/l/c/a/q;

    move-result-object v14

    if-eqz v11, :cond_12

    if-eqz v5, :cond_11

    .line 35
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v17

    goto :goto_9

    :cond_11
    move/from16 v17, v6

    :goto_9
    if-lez v17, :cond_12

    iget-object v10, v9, Le/a/r5/h0;->k:Le/a/p5/c0;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 36
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v7, v6

    const/4 v6, 0x1

    aput-object v5, v7, v6

    const/4 v5, 0x2

    aput-object v11, v7, v5

    const v5, 0x7f100039

    .line 37
    invoke-interface {v10, v5, v8, v7}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    :cond_12
    move v6, v7

    .line 38
    iget-object v5, v9, Le/a/r5/h0;->k:Le/a/p5/c0;

    const v7, 0x7f100038

    new-array v10, v6, [Ljava/lang/Object;

    .line 39
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v11, 0x0

    aput-object v6, v10, v11

    .line 40
    invoke-interface {v5, v7, v8, v10}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_a
    const-string v6, "when {\n        location \u2026pleViewed\n        )\n    }"

    .line 41
    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v12

    move-object v12, v4

    move-object v4, v15

    move-object v15, v5

    .line 42
    invoke-interface/range {v11 .. v16}, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;->Vn(Le/a/r5/s;Le/a/l/c/a/q;Le/a/l/c/a/q;Ljava/lang/String;Z)V

    goto :goto_b

    :cond_13
    move-object v4, v15

    .line 43
    :goto_b
    iput-object v4, v9, Le/a/r5/h0;->f:Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

    .line 44
    iget-object v4, v9, Le/a/r5/h0;->i:Le/a/r5/i0;

    invoke-interface {v4, v1}, Le/a/r5/i0;->k(Le/a/r5/o;)V

    goto :goto_e

    :cond_14
    if-nez v4, :cond_17

    if-nez v8, :cond_17

    .line 45
    iget-object v1, v9, Le/a/r5/h0;->f:Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

    sget-object v4, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;->REGULAR_ZERO_PROFILE_VIEWS:Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

    if-eq v1, v4, :cond_16

    .line 46
    iget-object v1, v9, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;

    if-eqz v1, :cond_15

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;->Ge(Z)V

    .line 47
    :cond_15
    iput-object v4, v9, Le/a/r5/h0;->f:Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

    goto :goto_e

    .line 48
    :cond_16
    iget-object v1, v9, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;

    if-eqz v1, :cond_1c

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;->Ge(Z)V

    move v6, v4

    goto :goto_f

    :cond_17
    if-nez v4, :cond_1c

    .line 49
    iget-object v1, v9, Le/a/r5/h0;->g:Ls1/k;

    if-eqz v1, :cond_18

    .line 50
    iget-object v4, v1, Ls1/k;->a:Ljava/lang/Object;

    .line 51
    check-cast v4, Ljava/lang/String;

    goto :goto_c

    :cond_18
    const/4 v4, 0x0

    :goto_c
    if-eqz v1, :cond_19

    .line 52
    iget-object v1, v1, Ls1/k;->b:Ljava/lang/Object;

    .line 53
    check-cast v1, Ljava/lang/Integer;

    goto :goto_d

    :cond_19
    const/4 v1, 0x0

    .line 54
    :goto_d
    iget-object v5, v9, Le/a/r5/h0;->f:Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

    sget-object v6, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;->REGULAR_WITH_PROFILE_VIEWS:Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

    if-eq v5, v6, :cond_1b

    .line 55
    iget-object v5, v9, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v5, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;

    const/4 v7, 0x0

    if-eqz v5, :cond_1a

    invoke-interface {v5, v8, v4, v1, v7}, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;->Zr(ILjava/lang/String;Ljava/lang/Integer;Z)V

    .line 56
    :cond_1a
    iput-object v6, v9, Le/a/r5/h0;->f:Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

    const/4 v6, 0x1

    goto :goto_10

    :cond_1b
    const/4 v7, 0x0

    .line 57
    iget-object v5, v9, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v5, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;

    const/4 v6, 0x1

    if-eqz v5, :cond_1d

    invoke-interface {v5, v8, v4, v1, v6}, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;->Zr(ILjava/lang/String;Ljava/lang/Integer;Z)V

    goto :goto_10

    :cond_1c
    :goto_e
    const/4 v6, 0x1

    :goto_f
    const/4 v7, 0x0

    .line 58
    :cond_1d
    :goto_10
    iget-object v1, v9, Le/a/r5/h0;->n:Le/a/r5/n0;

    .line 59
    iget-object v1, v1, Le/a/r5/n0;->a:Le/a/c0/h;

    .line 60
    iget-object v1, v1, Le/a/c0/h;->f:Le/a/c0/c;

    .line 61
    invoke-virtual {v1}, Le/a/c0/c;->f()Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/truecaller/abtest/ThreeVariants;

    sget-object v4, Lcom/truecaller/abtest/ThreeVariants;->VariantB:Lcom/truecaller/abtest/ThreeVariants;

    if-ne v1, v4, :cond_1e

    goto :goto_11

    :cond_1e
    move v6, v7

    :goto_11
    if-eqz v6, :cond_1f

    .line 62
    iget-object v1, v9, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;

    if-eqz v1, :cond_1f

    invoke-interface {v1}, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;->Rj()V

    .line 63
    :cond_1f
    iget-object v1, v9, Le/a/r5/h0;->n:Le/a/r5/n0;

    const/4 v4, 0x0

    iput-object v4, v2, Le/a/r5/h0$a;->g:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, v2, Le/a/r5/h0$a;->e:I

    invoke-virtual {v1, v2}, Le/a/r5/n0;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_20

    return-object v3

    .line 64
    :cond_20
    :goto_12
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method

.method public Kf(Le/a/r5/o;)Z
    .locals 3

    const-string v0, "profileViewEvent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/r5/h0;->e:Ljava/util/Set;

    .line 2
    iget-wide v1, p1, Le/a/r5/o;->a:J

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public Ki(Lcom/truecaller/whoviewedme/WhoViewedMeLaunchContext;)V
    .locals 1

    const-string v0, "launchContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/r5/h0;->i:Le/a/r5/i0;

    invoke-interface {v0, p1}, Le/a/r5/i0;->p(Lcom/truecaller/whoviewedme/WhoViewedMeLaunchContext;)V

    .line 2
    iget-object v0, p0, Le/a/r5/h0;->l:Le/a/r5/p0;

    invoke-interface {v0, p1}, Le/a/r5/p0;->s0(Lcom/truecaller/whoviewedme/WhoViewedMeLaunchContext;)V

    return-void
.end method

.method public L1(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/details_view/analytics/SourceType;ZZI)V
    .locals 7

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceType"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;

    if-eqz v1, :cond_0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;->L1(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/details_view/analytics/SourceType;ZZI)V

    :cond_0
    return-void
.end method

.method public O()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/r5/h0;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;->a6(Z)V

    :cond_0
    return-void
.end method

.method public P()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;->g()V

    .line 3
    invoke-interface {v0, v1}, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;->a6(Z)V

    :cond_0
    return v1
.end method

.method public R()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/r5/h0;->k:Le/a/p5/c0;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Le/a/r5/h0;->e:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Le/a/r5/h0;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x7f12012e

    invoke-interface {v0, v2, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 4
    invoke-interface {p1, v0}, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;->f(Z)V

    .line 5
    iget-object p1, p0, Le/a/r5/h0;->j:Le/a/h/b/r;

    invoke-interface {p1, p0}, Le/a/h/b/r;->b(Le/a/h/b/r$a;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    .line 2
    iget-object v0, p0, Le/a/r5/h0;->j:Le/a/h/b/r;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/h/b/r;->b(Le/a/h/b/r$a;)V

    return-void
.end method

.method public d(I)Z
    .locals 6

    const v0, 0x7f0a009f

    if-eq p1, v0, :cond_3

    const v0, 0x7f0a00e3

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    iget-object p1, p0, Le/a/r5/h0;->e:Ljava/util/Set;

    iget-object v0, p0, Le/a/r5/h0;->d:Ljava/util/List;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Le/a/r5/o;

    .line 5
    iget-wide v2, v2, Le/a/r5/o;->a:J

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p1, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 7
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;->em()V

    .line 8
    :cond_2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;->g0()V

    goto :goto_1

    .line 9
    :cond_3
    new-instance v3, Le/a/r5/g0;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Le/a/r5/g0;-><init>(Le/a/r5/h0;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_4
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public ie()V
    .locals 6

    .line 1
    new-instance v3, Le/a/r5/h0$b;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/r5/h0$b;-><init>(Le/a/r5/h0;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public ni()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r5/h0;->i:Le/a/r5/i0;

    invoke-interface {v0}, Le/a/r5/i0;->e()V

    return-void
.end method

.method public onDataChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/r5/h0;->ie()V

    return-void
.end method

.method public p5(Le/a/r5/z;Ls1/a/l;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r5/z;",
            "Ls1/a/l<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "thisRef"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "property"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/r5/h0;->i:Le/a/r5/i0;

    invoke-interface {p1}, Le/a/r5/i0;->h()Z

    move-result p1

    return p1
.end method

.method public t7(I)Z
    .locals 2

    const/4 v0, 0x1

    const v1, 0x7f0a00e3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Le/a/r5/h0;->e:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    iget-object v1, p0, Le/a/r5/h0;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tf()V
    .locals 0

    return-void
.end method

.method public u5(Le/a/r5/o;)V
    .locals 3

    const-string v0, "profileViewEvent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/r5/h0;->e:Ljava/util/Set;

    .line 2
    iget-wide v1, p1, Le/a/r5/o;->a:J

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-wide v1, p1, Le/a/r5/o;->a:J

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;->e()V

    .line 7
    :cond_1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;->em()V

    .line 8
    :cond_2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;->g0()V

    :cond_3
    return-void
.end method

.method public y9(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r5/h0;->i:Le/a/r5/i0;

    invoke-interface {v0, p1}, Le/a/r5/i0;->f(Z)V

    .line 2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;->bs()V

    :cond_0
    return-void
.end method
