.class public final Le/a/l/e;
.super Le/a/l/e0;
.source "SourceFile"

# interfaces
.implements Le/a/l/y1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/l/e0<",
        "Le/a/l/z1;",
        ">;",
        "Le/a/l/y1;"
    }
.end annotation


# instance fields
.field public W:Le/a/l/p2/h1;

.field public X:Lcom/truecaller/premium/data/PremiumType;

.field public Y:Z

.field public Z:Le/a/l/v2/i/a/d;

.field public g0:Le/a/l/v2/i/a/d;

.field public h0:Le/a/l/p2/s1$b;

.field public final i0:Lcom/truecaller/premium/PremiumLaunchContext;

.field public final j0:Ljava/lang/String;

.field public final k0:Le/a/l/p2/v0;

.field public final l0:Le/a/l/p2/d1;

.field public final m0:Le/a/l/m2/c;

.field public final n0:Le/a/l/l1;

.field public final o0:Le/a/l/v2/i/a/c;

.field public final p0:Le/a/l/v2/i/a/f;

.field public final q0:Le/a/l/a/k0;

.field public final r0:Le/a/l/a/n;

.field public final s0:Ls1/w/f;


# direct methods
.method public constructor <init>(Lcom/truecaller/premium/PremiumLaunchContext;Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;Ljava/lang/String;Le/a/l/p2/r0;Le/a/l/p2/v0;Le/a/l/p2/a1;Le/a/z4/d;Le/a/b0/o/a;Le/a/q2/a;Le/a/l/p2/d1;Le/a/p5/h0;Le/a/l/n0;Le/a/l/o2/e;Le/a/l/o2/c;Le/a/l/p2/q0;Le/a/l/a/c0;Le/a/l/a/p;Le/a/l/m2/c;Le/a/l/l1;Le/a/l/v2/i/a/c;Le/a/l/v2/i/a/f;Le/a/l/a/k0;Le/a/l/a/l0;Le/a/l/p2/y;Le/a/l/u2/a;Le/a/l/p2/t1;Le/a/l/o1;Le/a/l/a/n;Le/a/l/c2;Le/a/c0/h;Le/a/u3/g;Ls1/w/f;)V
    .locals 40
    .param p1    # Lcom/truecaller/premium/PremiumLaunchContext;
        .annotation runtime Ljavax/inject/Named;
            value = "HiltPremiumFragmentParamsModule.LAUNCH_CONTEXT"
        .end annotation
    .end param
    .param p2    # Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;
        .annotation runtime Ljavax/inject/Named;
            value = "HiltPremiumFragmentParamsModule.SUBSCRIPTION_PROMO_EVENT_METADATA"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "HiltPremiumFragmentParamsModule.SELECTED_PAGE"
        .end annotation
    .end param
    .param p10    # Le/a/l/p2/d1;
        .annotation runtime Ljavax/inject/Named;
            value = "global_subscription_helper"
        .end annotation
    .end param
    .param p32    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v8, p1

    move-object/from16 v7, p5

    move-object/from16 v15, p10

    move-object/from16 v14, p18

    move-object/from16 v13, p19

    move-object/from16 v12, p20

    move-object/from16 v11, p21

    move-object/from16 v10, p22

    move-object/from16 v6, p28

    move-object/from16 v5, p32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v30, v0

    move-object v0, v5

    move-object/from16 v5, p5

    move-object/from16 v31, v1

    move-object v1, v6

    move-object/from16 v6, p6

    move-object v2, v10

    move-object/from16 v10, p7

    move-object/from16 v32, v3

    move-object v3, v11

    move-object/from16 v11, p8

    move-object/from16 v33, v4

    move-object v4, v12

    move-object/from16 v12, p9

    move-object/from16 v34, v5

    move-object v5, v13

    move-object/from16 v13, p10

    move-object/from16 v35, v6

    move-object v6, v14

    move-object/from16 v14, p11

    move-object/from16 v36, v10

    move-object v10, v15

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    move-object/from16 v21, p16

    move-object/from16 v22, p17

    move-object/from16 v25, p20

    move-object/from16 v26, p21

    move-object/from16 v27, p22

    move-object/from16 v28, p23

    move-object/from16 v37, v11

    move-object v11, v7

    move-object/from16 v7, p24

    move-object/from16 v38, v7

    move-object v7, v8

    move-object/from16 v8, p25

    move-object/from16 v9, p26

    move-object/from16 v19, p27

    move-object/from16 v20, p29

    move-object/from16 v24, p30

    move-object/from16 v23, p31

    move-object/from16 v29, p32

    move-object/from16 v39, v8

    const-string v8, "launchContext"

    invoke-static {v7, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "repository"

    move-object/from16 v7, p4

    invoke-static {v7, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "premiumStateSettings"

    invoke-static {v11, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "premiumSubscriptionProblemHelper"

    move-object/from16 v8, p6

    invoke-static {v8, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "generalSettings"

    move-object/from16 v8, p7

    invoke-static {v8, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "coreSettings"

    move-object/from16 v8, p8

    invoke-static {v8, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "analytics"

    move-object/from16 v8, p9

    invoke-static {v8, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "premiumSubscriptionsHelper"

    invoke-static {v10, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "resourceProvider"

    move-object/from16 v8, p11

    invoke-static {v8, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "premiumEventsLogger"

    move-object/from16 v8, p12

    invoke-static {v8, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "consumablePurchasePresenter"

    move-object/from16 v8, p13

    invoke-static {v8, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "consumablePurchaseLostNotifier"

    move-object/from16 v8, p14

    invoke-static {v8, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "premiumPurchaseHelper"

    move-object/from16 v8, p15

    invoke-static {v8, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "premiumTabDeeplinkHelper"

    move-object/from16 v8, p16

    invoke-static {v8, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "premiumBottomBarAttentionHelper"

    move-object/from16 v8, p17

    invoke-static {v8, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "basicSubscriptionPurchasePresenter"

    invoke-static {v6, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "premiumGrantedHelper"

    invoke-static {v5, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "subscriptionButtonBuildHelper"

    invoke-static {v4, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "subscriptionButtonGroupBuildHelper"

    invoke-static {v3, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "threeButtonPremiumLayoutUtils"

    invoke-static {v2, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "welcomeOfferUtils"

    move-object/from16 v8, p23

    invoke-static {v8, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "premiumAlertFactory"

    move-object/from16 v8, p24

    invoke-static {v8, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "productStoreProvider"

    move-object/from16 v8, p25

    invoke-static {v8, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "webBillingPurchaseStateManager"

    move-object/from16 v8, p26

    invoke-static {v8, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "premiumLogsSender"

    move-object/from16 v8, p27

    invoke-static {v8, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "onBoardingPremiumPopupNewUsersAbTestHelper"

    invoke-static {v1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "premiumSettings"

    move-object/from16 v8, p29

    invoke-static {v8, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "experimentRegistry"

    move-object/from16 v8, p30

    invoke-static {v8, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "featureRegistry"

    move-object/from16 v8, p31

    invoke-static {v8, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "ui"

    invoke-static {v0, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p2

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v3, v32

    move-object/from16 v4, v33

    move-object/from16 v5, v34

    move-object/from16 v6, v35

    move-object/from16 v10, v36

    move-object/from16 v11, v37

    move-object/from16 v7, v38

    move-object/from16 v8, v39

    .line 1
    invoke-direct/range {v0 .. v29}, Le/a/l/e0;-><init>(Lcom/truecaller/premium/PremiumLaunchContext;Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;Ljava/lang/String;Le/a/l/p2/r0;Le/a/l/p2/v0;Le/a/l/p2/a1;Le/a/l/p2/y;Le/a/l/u2/a;Le/a/l/p2/t1;Le/a/z4/d;Le/a/b0/o/a;Le/a/q2/a;Le/a/l/p2/d1;Le/a/p5/h0;Le/a/l/n0;Le/a/l/o2/e;Le/a/l/o2/c;Le/a/l/p2/q0;Le/a/l/o1;Le/a/l/c2;Le/a/l/a/c0;Le/a/l/a/p;Le/a/u3/g;Le/a/c0/h;Le/a/l/v2/i/a/c;Le/a/l/v2/i/a/f;Le/a/l/a/k0;Le/a/l/a/l0;Ls1/w/f;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Le/a/l/e;->i0:Lcom/truecaller/premium/PremiumLaunchContext;

    move-object/from16 v1, p3

    iput-object v1, v0, Le/a/l/e;->j0:Ljava/lang/String;

    move-object/from16 v1, p5

    iput-object v1, v0, Le/a/l/e;->k0:Le/a/l/p2/v0;

    move-object/from16 v1, p10

    iput-object v1, v0, Le/a/l/e;->l0:Le/a/l/p2/d1;

    move-object/from16 v1, p18

    iput-object v1, v0, Le/a/l/e;->m0:Le/a/l/m2/c;

    move-object/from16 v1, p19

    iput-object v1, v0, Le/a/l/e;->n0:Le/a/l/l1;

    move-object/from16 v1, p20

    iput-object v1, v0, Le/a/l/e;->o0:Le/a/l/v2/i/a/c;

    move-object/from16 v1, p21

    iput-object v1, v0, Le/a/l/e;->p0:Le/a/l/v2/i/a/f;

    move-object/from16 v1, p22

    iput-object v1, v0, Le/a/l/e;->q0:Le/a/l/a/k0;

    move-object/from16 v1, p28

    iput-object v1, v0, Le/a/l/e;->r0:Le/a/l/a/n;

    move-object/from16 v1, p32

    iput-object v1, v0, Le/a/l/e;->s0:Ls1/w/f;

    .line 2
    new-instance v1, Le/a/l/v2/i/a/d;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3f

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move/from16 p7, v7

    move/from16 p8, v8

    invoke-direct/range {p1 .. p8}, Le/a/l/v2/i/a/d;-><init>(Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/util/List;II)V

    iput-object v1, v0, Le/a/l/e;->Z:Le/a/l/v2/i/a/d;

    .line 3
    new-instance v1, Le/a/l/v2/i/a/d;

    move-object/from16 p1, v1

    invoke-direct/range {p1 .. p8}, Le/a/l/v2/i/a/d;-><init>(Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/util/List;II)V

    iput-object v1, v0, Le/a/l/e;->g0:Le/a/l/v2/i/a/d;

    return-void
.end method


# virtual methods
.method public Ab()Le/a/l/p2/h1;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/e;->W:Le/a/l/p2/h1;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "theme"

    .line 2
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-object v1
.end method

.method public R2(Lcom/truecaller/premium/data/PremiumType;)V
    .locals 3

    const-string v0, "premiumType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/l/z1;

    if-eqz v0, :cond_2

    .line 2
    iput-object p1, p0, Le/a/l/e;->X:Lcom/truecaller/premium/data/PremiumType;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const v1, 0x7f0d045d

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Le/a/l/e;->g0:Le/a/l/v2/i/a/d;

    const/4 v2, 0x0

    .line 5
    invoke-interface {v0, p1, v1, v2}, Le/a/l/z1;->nn(Le/a/l/v2/i/a/d;IZ)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Le/a/l/e;->Z:Le/a/l/v2/i/a/d;

    iget-boolean v2, p0, Le/a/l/e;->Y:Z

    invoke-interface {v0, p1, v1, v2}, Le/a/l/z1;->nn(Le/a/l/v2/i/a/d;IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public Te(Lcom/truecaller/premium/data/PremiumType;I)V
    .locals 2

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/l/z1;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Le/a/l/z1;->qp(Lcom/truecaller/premium/data/PremiumType;IZ)V

    :cond_0
    return-void
.end method

.method public Tj(Le/a/l/p2/s1$b;Ls1/w/d;)Ljava/lang/Object;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/l/p2/s1$b;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 1
    iget-object v1, v8, Le/a/l/p2/s1$b;->t:Le/a/l/p2/h1;

    .line 2
    iput-object v1, v0, Le/a/l/e;->W:Le/a/l/p2/h1;

    .line 3
    iput-object v8, v0, Le/a/l/e;->h0:Le/a/l/p2/s1$b;

    .line 4
    invoke-virtual/range {p0 .. p1}, Le/a/l/e0;->Xj(Le/a/l/p2/s1$b;)Ljava/util/List;

    move-result-object v1

    .line 5
    iget-object v2, v0, Le/a/l/e;->q0:Le/a/l/a/k0;

    move-object v3, v1

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Le/a/l/a/k0;->a(I)Z

    move-result v2

    iput-boolean v2, v0, Le/a/l/e;->Y:Z

    .line 6
    iget-object v9, v8, Le/a/l/p2/s1$b;->d:Le/a/l/n2/f;

    .line 7
    iget-object v10, v8, Le/a/l/p2/s1$b;->h:Le/a/l/n2/f;

    .line 8
    iget-object v11, v8, Le/a/l/p2/s1$b;->j:Le/a/l/n2/f;

    .line 9
    sget-object v12, Ls1/u/s;->a:Ls1/u/s;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v7, 0x2

    if-eqz v2, :cond_0

    move v15, v7

    move-object/from16 v17, v12

    goto :goto_1

    .line 10
    :cond_0
    iget-object v1, v0, Le/a/l/e;->o0:Le/a/l/v2/i/a/c;

    .line 11
    iget-boolean v2, v8, Le/a/l/p2/s1$b;->b:Z

    .line 12
    invoke-virtual {v1, v9, v14, v2}, Le/a/l/v2/i/a/c;->b(Le/a/l/n2/f;ZZ)Le/a/l/v2/i/a/b;

    move-result-object v6

    if-eqz v9, :cond_1

    if-eqz v6, :cond_1

    .line 13
    iget-object v1, v0, Le/a/l/e0;->k:Ljava/util/HashMap;

    .line 14
    new-instance v2, Le/a/l/e$b;

    invoke-direct {v2, v13, v0, v9}, Le/a/l/e$b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_1
    iget-object v1, v0, Le/a/l/e;->o0:Le/a/l/v2/i/a/c;

    const/4 v5, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x10

    move-object v2, v10

    move-object v3, v9

    move-object/from16 v4, p1

    move-object/from16 v18, v6

    move/from16 v6, v16

    move v15, v7

    move/from16 v7, v17

    invoke-static/range {v1 .. v7}, Le/a/l/v2/i/a/c;->g(Le/a/l/v2/i/a/c;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/p2/s1$b;ZZI)Le/a/l/v2/i/a/b;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 16
    iget-boolean v2, v8, Le/a/l/p2/s1$b;->c:Z

    if-eqz v2, :cond_2

    .line 17
    iget-boolean v2, v8, Le/a/l/p2/s1$b;->b:Z

    if-nez v2, :cond_2

    .line 18
    iget-object v2, v0, Le/a/l/e0;->k:Ljava/util/HashMap;

    .line 19
    new-instance v3, Le/a/l/e$a;

    invoke-direct {v3, v13, v0, v8, v10}, Le/a/l/e$a;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    if-eqz v10, :cond_4

    .line 20
    iget-object v2, v0, Le/a/l/e0;->k:Ljava/util/HashMap;

    .line 21
    new-instance v3, Le/a/l/e$a;

    invoke-direct {v3, v14, v0, v8, v10}, Le/a/l/e$a;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    new-array v2, v15, [Le/a/l/v2/i/a/b;

    aput-object v18, v2, v13

    aput-object v1, v2, v14

    .line 22
    invoke-static {v2}, Ls1/u/i;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v17, v1

    move-object v1, v12

    .line 23
    :goto_1
    iget-object v2, v0, Le/a/l/e;->o0:Le/a/l/v2/i/a/c;

    .line 24
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "dataFetched"

    invoke-static {v8, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v3, v8, Le/a/l/p2/s1$b;->j:Le/a/l/n2/f;

    if-eqz v3, :cond_5

    .line 26
    new-instance v4, Le/a/l/v2/i/a/b;

    .line 27
    invoke-virtual {v2, v3}, Le/a/l/v2/i/a/c;->e(Le/a/l/n2/f;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 28
    iget-object v5, v2, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    const v6, 0x7f0405ea

    invoke-interface {v5, v6}, Le/a/p5/h0;->l(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    .line 29
    invoke-virtual {v2, v3}, Le/a/l/v2/i/a/c;->c(Le/a/l/n2/f;)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x56

    move-object/from16 v18, v4

    .line 30
    invoke-direct/range {v18 .. v27}, Le/a/l/v2/i/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/String;I)V

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    if-eqz v11, :cond_6

    if-eqz v4, :cond_6

    .line 31
    iget-object v2, v0, Le/a/l/e0;->k:Ljava/util/HashMap;

    .line 32
    new-instance v3, Le/a/l/e$b;

    invoke-direct {v3, v14, v0, v11}, Le/a/l/e$b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_6
    iget-boolean v2, v8, Le/a/l/p2/s1$b;->b:Z

    if-nez v2, :cond_8

    .line 34
    iget-boolean v2, v8, Le/a/l/p2/s1$b;->c:Z

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    move/from16 v19, v13

    goto :goto_4

    :cond_8
    :goto_3
    move/from16 v19, v14

    .line 35
    :goto_4
    iget-object v2, v0, Le/a/l/e;->p0:Le/a/l/v2/i/a/f;

    new-array v3, v15, [Le/a/l/n2/f;

    aput-object v9, v3, v13

    aput-object v10, v3, v14

    .line 36
    invoke-static {v3}, Ls1/u/i;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 37
    iget-boolean v5, v8, Le/a/l/p2/s1$b;->b:Z

    if-nez v5, :cond_a

    .line 38
    iget-boolean v5, v8, Le/a/l/p2/s1$b;->c:Z

    if-eqz v5, :cond_9

    goto :goto_5

    :cond_9
    move v5, v13

    goto :goto_6

    :cond_a
    :goto_5
    move v5, v14

    .line 39
    :goto_6
    new-instance v6, Le/a/l/v2/i/a/f$a;

    invoke-direct {v6, v5, v5}, Le/a/l/v2/i/a/f$a;-><init>(ZZ)V

    .line 40
    invoke-virtual {v2, v3, v6}, Le/a/l/v2/i/a/f;->a(Ljava/util/List;Le/a/l/v2/i/a/f$a;)Ljava/lang/String;

    move-result-object v20

    .line 41
    iget-object v2, v0, Le/a/l/e;->p0:Le/a/l/v2/i/a/f;

    .line 42
    new-instance v3, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 44
    check-cast v6, Le/a/l/v2/i/c/a;

    .line 45
    iget-object v6, v6, Le/a/l/v2/i/c/a;->m:Le/a/l/n2/f;

    .line 46
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 47
    :cond_b
    invoke-virtual {v2, v3}, Le/a/l/v2/i/a/f;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v21

    const/16 v22, 0x2

    .line 48
    new-instance v2, Le/a/l/v2/i/a/d;

    move-object/from16 v16, v2

    move-object/from16 v18, v1

    invoke-direct/range {v16 .. v22}, Le/a/l/v2/i/a/d;-><init>(Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/util/List;I)V

    iput-object v2, v0, Le/a/l/e;->Z:Le/a/l/v2/i/a/d;

    .line 49
    new-instance v1, Le/a/l/v2/i/a/d;

    .line 50
    invoke-static {v4}, Ls1/u/i;->U(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v24

    const/16 v25, 0x0

    .line 51
    iget-boolean v2, v8, Le/a/l/p2/s1$b;->b:Z

    if-nez v2, :cond_d

    .line 52
    iget-boolean v2, v8, Le/a/l/p2/s1$b;->c:Z

    if-eqz v2, :cond_c

    goto :goto_8

    :cond_c
    move/from16 v26, v13

    goto :goto_9

    :cond_d
    :goto_8
    move/from16 v26, v14

    .line 53
    :goto_9
    iget-object v2, v0, Le/a/l/e;->p0:Le/a/l/v2/i/a/f;

    .line 54
    invoke-static {v11}, Ls1/u/i;->U(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 55
    new-instance v4, Le/a/l/v2/i/a/f$a;

    invoke-direct {v4, v14, v13}, Le/a/l/v2/i/a/f$a;-><init>(ZZ)V

    .line 56
    invoke-virtual {v2, v3, v4}, Le/a/l/v2/i/a/f;->a(Ljava/util/List;Le/a/l/v2/i/a/f$a;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x32

    move-object/from16 v23, v1

    .line 57
    invoke-direct/range {v23 .. v30}, Le/a/l/v2/i/a/d;-><init>(Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/util/List;II)V

    iput-object v1, v0, Le/a/l/e;->g0:Le/a/l/v2/i/a/d;

    .line 58
    iget-object v1, v8, Le/a/l/p2/s1$b;->a:Le/a/l/p2/x;

    .line 59
    iget-object v1, v1, Le/a/l/p2/x;->g:Ljava/lang/String;

    .line 60
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x308060

    const-string v4, "gold"

    if-eq v2, v3, :cond_12

    const v3, 0x33af38

    if-eq v2, v3, :cond_f

    const v3, 0x40c21f9c

    if-eq v2, v3, :cond_e

    goto :goto_b

    :cond_e
    const-string v2, "regular"

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_a

    :cond_f
    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 62
    :goto_a
    iget-object v1, v0, Le/a/l/e;->j0:Ljava/lang/String;

    if-eqz v1, :cond_11

    invoke-static {v1, v4}, Lw3/c/a/a/a/h;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/truecaller/premium/data/PremiumType;->GOLD:Lcom/truecaller/premium/data/PremiumType;

    goto :goto_c

    :cond_10
    sget-object v1, Lcom/truecaller/premium/data/PremiumType;->PREMIUM:Lcom/truecaller/premium/data/PremiumType;

    goto :goto_c

    .line 63
    :cond_11
    sget-object v1, Lcom/truecaller/premium/data/PremiumType;->PREMIUM:Lcom/truecaller/premium/data/PremiumType;

    goto :goto_c

    .line 64
    :cond_12
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Lcom/truecaller/premium/data/PremiumType;->GOLD:Lcom/truecaller/premium/data/PremiumType;

    goto :goto_c

    .line 65
    :cond_13
    :goto_b
    sget-object v1, Lcom/truecaller/premium/data/PremiumType;->PREMIUM:Lcom/truecaller/premium/data/PremiumType;

    .line 66
    :goto_c
    iput-object v1, v0, Le/a/l/e;->X:Lcom/truecaller/premium/data/PremiumType;

    const-string v2, "selectedType"

    if-eqz v1, :cond_2b

    .line 67
    sget-object v3, Lcom/truecaller/premium/data/PremiumType;->GOLD:Lcom/truecaller/premium/data/PremiumType;

    const-string v4, "theme"

    if-ne v1, v3, :cond_15

    iget-object v1, v0, Le/a/l/e;->W:Le/a/l/p2/h1;

    if-eqz v1, :cond_14

    .line 68
    iget-object v1, v1, Le/a/l/p2/h1;->b:Le/a/l/p2/j1;

    if-nez v1, :cond_15

    .line 69
    new-instance v1, Lcom/truecaller/log/UnmutedException$f;

    const-string v5, "Gold tab selected as initial, but gold theme is not available"

    invoke-direct {v1, v5}, Lcom/truecaller/log/UnmutedException$f;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 70
    sget-object v1, Lcom/truecaller/premium/data/PremiumType;->PREMIUM:Lcom/truecaller/premium/data/PremiumType;

    iput-object v1, v0, Le/a/l/e;->X:Lcom/truecaller/premium/data/PremiumType;

    goto :goto_d

    .line 71
    :cond_14
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_15
    :goto_d
    const/4 v1, 0x0

    .line 72
    iget-object v5, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v5, Le/a/l/z1;

    if-eqz v5, :cond_17

    iget-object v6, v0, Le/a/l/e;->X:Lcom/truecaller/premium/data/PremiumType;

    if-eqz v6, :cond_16

    invoke-interface {v5, v6}, Le/a/l/z1;->kA(Lcom/truecaller/premium/data/PremiumType;)V

    goto :goto_e

    :cond_16
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_17
    :goto_e
    iget-object v1, v0, Le/a/l/e;->j0:Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 74
    iget-object v5, v0, Le/a/l/e;->X:Lcom/truecaller/premium/data/PremiumType;

    if-eqz v5, :cond_1f

    if-ne v5, v3, :cond_19

    iget-object v3, v0, Le/a/l/e;->W:Le/a/l/p2/h1;

    if-eqz v3, :cond_18

    .line 75
    iget-object v3, v3, Le/a/l/p2/h1;->b:Le/a/l/p2/j1;

    goto :goto_f

    .line 76
    :cond_18
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_19
    iget-object v3, v0, Le/a/l/e;->W:Le/a/l/p2/h1;

    if-eqz v3, :cond_1e

    .line 77
    iget-object v3, v3, Le/a/l/p2/h1;->a:Le/a/l/p2/j1;

    :goto_f
    if-eqz v3, :cond_1d

    const-string v4, "pageName"

    .line 78
    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v3, v3, Le/a/l/p2/j1;->f:Ljava/util/List;

    .line 80
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v13

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 81
    check-cast v5, Le/a/l/p2/g0;

    .line 82
    iget-object v5, v5, Le/a/l/p2/g0;->a:Ljava/lang/String;

    .line 83
    invoke-static {v5, v1, v14}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1a

    goto :goto_11

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_1b
    move v4, v6

    :goto_11
    if-eq v4, v6, :cond_1d

    .line 84
    iget-object v1, v0, Le/a/l/e;->X:Lcom/truecaller/premium/data/PremiumType;

    if-eqz v1, :cond_1c

    .line 85
    iget-object v2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/l/z1;

    if-eqz v2, :cond_1d

    invoke-interface {v2, v1, v4, v13}, Le/a/l/z1;->qp(Lcom/truecaller/premium/data/PremiumType;IZ)V

    goto :goto_12

    .line 86
    :cond_1c
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_1d
    :goto_12
    const/4 v1, 0x0

    goto :goto_13

    :cond_1e
    const/4 v1, 0x0

    .line 87
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1f
    const/4 v1, 0x0

    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_20
    :goto_13
    iget-object v1, v8, Le/a/l/p2/s1$b;->e:Le/a/l/n2/f;

    if-eqz v1, :cond_23

    .line 89
    iget-object v1, v0, Le/a/l/e;->k0:Le/a/l/p2/v0;

    invoke-interface {v1}, Le/a/l/p2/v0;->H()Z

    move-result v1

    xor-int/2addr v1, v14

    .line 90
    iget-object v2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/l/z1;

    if-eqz v2, :cond_21

    invoke-interface {v2, v1}, Le/a/l/t1;->E7(Z)V

    .line 91
    :cond_21
    iget-object v2, v8, Le/a/l/p2/s1$b;->e:Le/a/l/n2/f;

    .line 92
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_22

    move-object v1, v2

    goto :goto_14

    :cond_22
    const/4 v1, 0x0

    :goto_14
    if-eqz v1, :cond_23

    .line 94
    iget-object v2, v0, Le/a/l/e;->i0:Lcom/truecaller/premium/PremiumLaunchContext;

    invoke-virtual {v0, v1, v2}, Le/a/l/e;->dk(Le/a/l/n2/f;Lcom/truecaller/premium/PremiumLaunchContext;)V

    .line 95
    :cond_23
    iget-object v1, v0, Le/a/l/e;->i0:Lcom/truecaller/premium/PremiumLaunchContext;

    sget-object v2, Lcom/truecaller/premium/PremiumLaunchContext;->NEW_USER_ON_BOARDING:Lcom/truecaller/premium/PremiumLaunchContext;

    if-ne v1, v2, :cond_2a

    .line 96
    iget-object v1, v0, Le/a/l/e;->r0:Le/a/l/a/n;

    .line 97
    iget-object v2, v1, Le/a/l/a/n;->a:Le/a/c0/h;

    .line 98
    iget-object v2, v2, Le/a/c0/h;->g:Le/a/c0/c;

    .line 99
    invoke-virtual {v2}, Le/a/c0/c;->f()Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/truecaller/abtest/ThreeVariants;

    if-eqz v2, :cond_26

    .line 100
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_26

    if-eq v2, v14, :cond_25

    if-ne v2, v15, :cond_24

    .line 101
    iget-object v1, v1, Le/a/l/a/n;->b:Le/a/p5/c0;

    const v2, 0x7f12042c

    new-array v3, v13, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto :goto_15

    .line 102
    :cond_24
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    .line 103
    :cond_25
    iget-object v1, v1, Le/a/l/a/n;->b:Le/a/p5/c0;

    const v2, 0x7f12042b

    new-array v3, v13, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto :goto_15

    :cond_26
    const/4 v15, 0x0

    :goto_15
    if-eqz v15, :cond_27

    .line 104
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_28

    :cond_27
    move v13, v14

    :cond_28
    if-eqz v13, :cond_29

    .line 105
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/l/z1;

    if-eqz v1, :cond_2a

    invoke-interface {v1}, Le/a/l/z1;->lq()V

    goto :goto_16

    .line 106
    :cond_29
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/l/z1;

    if-eqz v1, :cond_2a

    invoke-interface {v1, v15}, Le/a/l/z1;->i7(Ljava/lang/String;)V

    .line 107
    :cond_2a
    :goto_16
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1

    .line 108
    :cond_2b
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1
.end method

.method public V9(Lcom/truecaller/premium/data/PremiumType;)Le/a/l/p2/j1;
    .locals 3

    const-string v0, "premiumType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l/e;->W:Le/a/l/p2/h1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string v0, "theme"

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 3
    iget-object p1, p0, Le/a/l/e;->W:Le/a/l/p2/h1;

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p1, Le/a/l/p2/h1;->b:Le/a/l/p2/j1;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Gold part cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 6
    :cond_4
    iget-object p1, p0, Le/a/l/e;->W:Le/a/l/p2/h1;

    if-eqz p1, :cond_6

    .line 7
    iget-object p1, p1, Le/a/l/p2/h1;->a:Le/a/l/p2/j1;

    if-eqz p1, :cond_5

    :goto_0
    return-object p1

    .line 8
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Premium part cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public Vj(Le/a/l/p2/s1$f;Ls1/w/d;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/l/p2/s1$f;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Ls1/s;->a:Ls1/s;

    new-instance v10, Le/a/l/v2/i/a/d;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3f

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Le/a/l/v2/i/a/d;-><init>(Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/util/List;II)V

    iput-object v10, v0, Le/a/l/e;->Z:Le/a/l/v2/i/a/d;

    .line 2
    new-instance v2, Le/a/l/v2/i/a/d;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x3f

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Le/a/l/v2/i/a/d;-><init>(Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/util/List;II)V

    iput-object v2, v0, Le/a/l/e;->g0:Le/a/l/v2/i/a/d;

    move-object/from16 v2, p1

    .line 3
    iget-object v2, v2, Le/a/l/p2/s1$f;->a:Le/a/l/p2/h1;

    .line 4
    iput-object v2, v0, Le/a/l/e;->W:Le/a/l/p2/h1;

    .line 5
    sget-object v2, Lcom/truecaller/premium/data/PremiumType;->PREMIUM:Lcom/truecaller/premium/data/PremiumType;

    iput-object v2, v0, Le/a/l/e;->X:Lcom/truecaller/premium/data/PremiumType;

    .line 6
    iget-object v3, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/l/z1;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    if-eqz v2, :cond_0

    invoke-interface {v3, v2}, Le/a/l/z1;->kA(Lcom/truecaller/premium/data/PremiumType;)V

    move-object v4, v1

    goto :goto_0

    :cond_0
    const-string v1, "selectedType"

    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_1
    :goto_0
    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne v4, v2, :cond_2

    return-object v4

    :cond_2
    return-object v1
.end method

.method public Wj(Lcom/truecaller/premium/data/ProductKind;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/e;->n0:Le/a/l/l1;

    iget-object v1, p0, Le/a/l/e;->i0:Lcom/truecaller/premium/PremiumLaunchContext;

    invoke-interface {v0, v1}, Le/a/l/l1;->a(Lcom/truecaller/premium/PremiumLaunchContext;)V

    .line 2
    invoke-super {p0, p1}, Le/a/l/e0;->Wj(Lcom/truecaller/premium/data/ProductKind;)V

    return-void
.end method

.method public Yg(Le/a/l/n2/f;)V
    .locals 2

    const-string v0, "subscription"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/l/z1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/l/m2/e;->wv()V

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, p1, v1, v0, v1}, Le/a/l/e0;->Zj(Le/a/l/e0;Le/a/l/n2/f;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final dk(Le/a/l/n2/f;Lcom/truecaller/premium/PremiumLaunchContext;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/l/z1;

    if-eqz v3, :cond_1

    .line 2
    iget-object v4, v0, Le/a/l/e;->m0:Le/a/l/m2/c;

    .line 3
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "monthlyBasicSubscription"

    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "launchContext"

    invoke-static {v2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v5, v4, Le/a/l/m2/c;->b:Le/a/l/p2/v0;

    invoke-interface {v5}, Le/a/l/p2/v0;->H()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x4

    new-array v5, v5, [Lcom/truecaller/premium/PremiumLaunchContext;

    .line 5
    sget-object v6, Lcom/truecaller/premium/PremiumLaunchContext;->DETAIL_VIEW_ADS_CLOSE:Lcom/truecaller/premium/PremiumLaunchContext;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 6
    sget-object v6, Lcom/truecaller/premium/PremiumLaunchContext;->AFTER_CALL_ADS_CLOSE:Lcom/truecaller/premium/PremiumLaunchContext;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    .line 7
    sget-object v6, Lcom/truecaller/premium/PremiumLaunchContext;->MEGA_ADS_CLOSE:Lcom/truecaller/premium/PremiumLaunchContext;

    const/4 v9, 0x2

    aput-object v6, v5, v9

    .line 8
    sget-object v6, Lcom/truecaller/premium/PremiumLaunchContext;->OTHER_SUBSCRIPTIONS_LINK:Lcom/truecaller/premium/PremiumLaunchContext;

    const/4 v9, 0x3

    aput-object v6, v5, v9

    .line 9
    invoke-static {v5}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    .line 10
    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11
    iget-object v2, v4, Le/a/l/m2/c;->a:Le/a/p5/h0;

    const v5, 0x7f120464

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v2, v5, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "resourceProvider.getStri\u2026ng.PremiumBasicPlanTitle)"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v5, v4, Le/a/l/m2/c;->a:Le/a/p5/h0;

    const v6, 0x7f04063b

    invoke-interface {v5, v6}, Le/a/p5/c0;->e(I)I

    move-result v5

    .line 13
    new-instance v6, Le/a/l/v2/i/a/b;

    .line 14
    iget-object v9, v4, Le/a/l/m2/c;->a:Le/a/p5/h0;

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Le/a/l/n2/f;->b()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v7

    const v7, 0x7f1204d1

    invoke-interface {v9, v7, v8}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v7, "resourceProvider.getStri\u2026bscription.obtainPrice())"

    invoke-static {v10, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v4, v4, Le/a/l/m2/c;->a:Le/a/p5/h0;

    const v7, 0x7f060625

    invoke-interface {v4, v7}, Le/a/p5/c0;->a(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const v4, 0x7f081767

    .line 16
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xe6

    move-object v9, v6

    .line 17
    invoke-direct/range {v9 .. v18}, Le/a/l/v2/i/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/String;I)V

    .line 18
    invoke-interface {v3, v2, v5, v1, v6}, Le/a/l/m2/e;->S7(Ljava/lang/String;ILe/a/l/n2/f;Le/a/l/v2/i/a/b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public id()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/l/e;->Y:Z

    return v0
.end method

.method public n7()Le/a/l/p2/s1$b;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l/e;->h0:Le/a/l/p2/s1$b;

    return-object v0
.end method

.method public n9()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/e0;->d:Le/a/l/p2/s1$b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/a/l/p2/s1$b;->e:Le/a/l/n2/f;

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/truecaller/premium/PremiumLaunchContext;->OTHER_SUBSCRIPTIONS_LINK:Lcom/truecaller/premium/PremiumLaunchContext;

    invoke-virtual {p0, v0, v1}, Le/a/l/e;->dk(Le/a/l/n2/f;Lcom/truecaller/premium/PremiumLaunchContext;)V

    :cond_0
    return-void
.end method

.method public qh()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/l/z1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/l/t1;->finish()V

    :cond_0
    return-void
.end method
