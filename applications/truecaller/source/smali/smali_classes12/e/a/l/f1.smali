.class public final Le/a/l/f1;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/l/e1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/l/g1;",
        ">;",
        "Le/a/l/e1;"
    }
.end annotation


# instance fields
.field public final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/a/l/s1;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/truecaller/premium/data/PremiumType;

.field public final f:Lq3/a/n0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/n0<",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;>;"
        }
    .end annotation
.end field

.field public final g:Le/a/l/s1;

.field public final h:Le/a/l/s1;

.field public final i:Lcom/truecaller/premium/data/PremiumType;

.field public final j:Lcom/truecaller/premium/PremiumLaunchContext;

.field public final k:Le/a/l/h2;

.field public final l:Le/a/l/p2/k;

.field public final m:Le/a/l/p2/v0;

.field public final n:Le/a/l/g/t;

.field public final o:Ls1/w/f;

.field public final p:Le/a/l/j2;

.field public final q:Le/a/l/j1;


# direct methods
.method public constructor <init>(Lcom/truecaller/premium/data/PremiumType;Lcom/truecaller/premium/PremiumLaunchContext;Le/a/l/h2;Le/a/l/p2/k;Le/a/l/p2/v0;Le/a/l/g/t;Ls1/w/f;Le/a/l/j2;Le/a/l/j1;)V
    .locals 11
    .param p2    # Lcom/truecaller/premium/PremiumLaunchContext;
        .annotation runtime Ljavax/inject/Named;
            value = "HiltPremiumFragmentParamsModule.LAUNCH_CONTEXT"
        .end annotation
    .end param
    .param p7    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    const-string v10, "selectedType"

    invoke-static {p1, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "launchContext"

    invoke-static {p2, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "premiumThemeModel"

    invoke-static {p3, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "friendUpgradedPromoRepository"

    invoke-static {p4, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "premiumStateSettings"

    invoke-static {v5, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "goldGiftPromoUtil"

    invoke-static {v6, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "ui"

    invoke-static {v7, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "threeButtonLayoutModel"

    invoke-static {v8, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "premiumFetchedSubscriptionDataModel"

    invoke-static {v9, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, v7}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object v1, v0, Le/a/l/f1;->i:Lcom/truecaller/premium/data/PremiumType;

    iput-object v2, v0, Le/a/l/f1;->j:Lcom/truecaller/premium/PremiumLaunchContext;

    iput-object v3, v0, Le/a/l/f1;->k:Le/a/l/h2;

    iput-object v4, v0, Le/a/l/f1;->l:Le/a/l/p2/k;

    iput-object v5, v0, Le/a/l/f1;->m:Le/a/l/p2/v0;

    iput-object v6, v0, Le/a/l/f1;->n:Le/a/l/g/t;

    iput-object v7, v0, Le/a/l/f1;->o:Ls1/w/f;

    iput-object v8, v0, Le/a/l/f1;->p:Le/a/l/j2;

    iput-object v9, v0, Le/a/l/f1;->q:Le/a/l/j1;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Le/a/l/f1;->d:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p0}, Le/a/u2/a/a;->getCoroutineContext()Ls1/w/f;

    move-result-object v1

    sget-object v2, Lq3/a/j0;->b:Lq3/a/j0;

    new-instance v3, Le/a/l/f1$a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Le/a/l/f1$a;-><init>(Le/a/l/f1;Ls1/w/d;)V

    invoke-static {p0, v1, v2, v3}, Ls1/a/a/a/v0/f/d;->G(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;)Lq3/a/n0;

    move-result-object v1

    iput-object v1, v0, Le/a/l/f1;->f:Lq3/a/n0;

    .line 4
    new-instance v1, Le/a/l/s1;

    .line 5
    sget-object v2, Lcom/truecaller/premium/data/PremiumType;->PREMIUM:Lcom/truecaller/premium/data/PremiumType;

    const v3, 0x7f12050b

    const v4, 0x7f080781

    const v5, 0x7f080782

    const v6, 0x7f0405a1

    const v7, 0x7f0405a1

    move-object p1, v1

    move-object p2, v2

    move p3, v3

    move p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move/from16 p7, v7

    .line 6
    invoke-direct/range {p1 .. p7}, Le/a/l/s1;-><init>(Lcom/truecaller/premium/data/PremiumType;IIIII)V

    iput-object v1, v0, Le/a/l/f1;->g:Le/a/l/s1;

    .line 7
    new-instance v1, Le/a/l/s1;

    .line 8
    sget-object v2, Lcom/truecaller/premium/data/PremiumType;->GOLD:Lcom/truecaller/premium/data/PremiumType;

    const v3, 0x7f12050a

    const v6, 0x7f040652

    const v7, 0x7f040653

    move-object p1, v1

    move-object p2, v2

    move p3, v3

    move/from16 p6, v6

    move/from16 p7, v7

    .line 9
    invoke-direct/range {p1 .. p7}, Le/a/l/s1;-><init>(Lcom/truecaller/premium/data/PremiumType;IIIII)V

    iput-object v1, v0, Le/a/l/f1;->h:Le/a/l/s1;

    return-void
.end method


# virtual methods
.method public final Ij()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/l/f1;->m:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    new-instance v4, Le/a/l/f1$b;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Le/a/l/f1$b;-><init>(Le/a/l/f1;Ls1/w/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/l/g1;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/l/g1;->Re()V

    :cond_1
    :goto_0
    return-void
.end method

.method public Jj(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/l/f1;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/l/s1;

    .line 2
    iget-object p1, p1, Le/a/l/s1;->a:Lcom/truecaller/premium/data/PremiumType;

    .line 3
    iput-object p1, p0, Le/a/l/f1;->e:Lcom/truecaller/premium/data/PremiumType;

    if-eqz p1, :cond_a

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "none"

    const-string v2, "regular"

    .line 5
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Le/a/l/f1;->m:Le/a/l/p2/v0;

    invoke-interface {v2}, Le/a/l/p2/v0;->D2()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Le/a/l/f1;->n:Le/a/l/g/t;

    invoke-virtual {v0}, Le/a/l/g/t;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Le/a/l/f1;->q:Le/a/l/j1;

    invoke-interface {v0}, Le/a/l/j1;->n7()Le/a/l/p2/s1$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, v0, Le/a/l/p2/s1$b;->j:Le/a/l/n2/f;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/l/g1;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Le/a/l/g1;->Tn()V

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {p0}, Le/a/l/f1;->Ij()V

    goto :goto_2

    .line 11
    :cond_4
    iget-object v0, p0, Le/a/l/f1;->p:Le/a/l/j2;

    invoke-interface {v0}, Le/a/l/j2;->id()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/l/g1;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Le/a/l/g1;->Re()V

    goto :goto_2

    .line 13
    :cond_5
    invoke-virtual {p0}, Le/a/l/f1;->Ij()V

    .line 14
    :cond_6
    :goto_2
    iget-object v0, p0, Le/a/l/f1;->k:Le/a/l/h2;

    invoke-interface {v0}, Le/a/l/h2;->Ab()Le/a/l/p2/h1;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 15
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_8

    if-ne v2, v1, :cond_7

    .line 16
    iget-object v0, v0, Le/a/l/p2/h1;->b:Le/a/l/p2/j1;

    goto :goto_3

    .line 17
    :cond_7
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 18
    :cond_8
    iget-object v0, v0, Le/a/l/p2/h1;->a:Le/a/l/p2/j1;

    :goto_3
    if-eqz v0, :cond_a

    .line 19
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/l/g1;

    if-eqz v1, :cond_a

    .line 20
    iget-object v2, v0, Le/a/l/p2/j1;->d:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 21
    invoke-interface {v1, v2}, Le/a/l/g1;->fx(Ljava/lang/String;)V

    goto :goto_4

    .line 22
    :cond_9
    iget v2, v0, Le/a/l/p2/j1;->e:I

    .line 23
    invoke-interface {v1, v2}, Le/a/l/g1;->F6(I)V

    .line 24
    :goto_4
    iget-object v0, v0, Le/a/l/p2/j1;->c:Ljava/lang/String;

    .line 25
    invoke-interface {v1, v0}, Le/a/l/g1;->I4(Ljava/lang/String;)V

    .line 26
    invoke-interface {v1, p1}, Le/a/l/g1;->bp(Lcom/truecaller/premium/data/PremiumType;)V

    :cond_a
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Le/a/l/g1;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/l/f1;->k:Le/a/l/h2;

    invoke-interface {v0}, Le/a/l/h2;->Ab()Le/a/l/p2/h1;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 5
    iget-object v1, v0, Le/a/l/p2/h1;->a:Le/a/l/p2/j1;

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Le/a/l/f1;->d:Ljava/util/ArrayList;

    iget-object v2, p0, Le/a/l/f1;->g:Le/a/l/s1;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    iget-object v0, v0, Le/a/l/p2/h1;->b:Le/a/l/p2/j1;

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Le/a/l/f1;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Le/a/l/f1;->h:Le/a/l/s1;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_1
    iget-object v0, p0, Le/a/l/f1;->d:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Le/a/l/g1;->Sz(Ljava/util/List;)V

    .line 10
    iget-object v0, p0, Le/a/l/f1;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_5

    .line 11
    invoke-interface {p1}, Le/a/l/g1;->fe()V

    .line 12
    iget-object v0, p0, Le/a/l/f1;->d:Ljava/util/ArrayList;

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 14
    check-cast v4, Le/a/l/s1;

    .line 15
    iget-object v4, v4, Le/a/l/s1;->a:Lcom/truecaller/premium/data/PremiumType;

    .line 16
    iget-object v5, p0, Le/a/l/f1;->i:Lcom/truecaller/premium/data/PremiumType;

    if-ne v4, v5, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, -0x1

    .line 17
    :goto_2
    invoke-interface {p1, v3}, Le/a/l/g1;->Kj(I)V

    .line 18
    invoke-virtual {p0, v3}, Le/a/l/f1;->Jj(I)V

    goto :goto_3

    .line 19
    :cond_5
    iget-object v0, p0, Le/a/l/f1;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 20
    invoke-interface {p1, v1}, Le/a/l/g1;->Kj(I)V

    .line 21
    invoke-virtual {p0, v1}, Le/a/l/f1;->Jj(I)V

    goto :goto_3

    :cond_6
    const-string v0, "No gold or premium part in the theme!"

    .line 22
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    .line 23
    :goto_3
    iget-object v0, p0, Le/a/l/f1;->j:Lcom/truecaller/premium/PremiumLaunchContext;

    sget-object v3, Lcom/truecaller/premium/PremiumLaunchContext;->BOTTOM_BAR:Lcom/truecaller/premium/PremiumLaunchContext;

    if-eq v0, v3, :cond_7

    sget-object v3, Lcom/truecaller/premium/PremiumLaunchContext;->BOTTOM_BAR_TAB_V2:Lcom/truecaller/premium/PremiumLaunchContext;

    if-ne v0, v3, :cond_9

    .line 24
    :cond_7
    iget-object v0, p0, Le/a/l/f1;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_8

    move v1, v2

    :cond_8
    invoke-interface {p1, v1}, Le/a/l/g1;->hn(Z)V

    :cond_9
    return-void
.end method
