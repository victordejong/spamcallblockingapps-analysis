.class public abstract Le/a/l/e0;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/l/d0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l/e0$b;,
        Le/a/l/e0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PV::",
        "Le/a/l/t1;",
        ">",
        "Le/a/u2/a/a<",
        "TPV;>;",
        "Le/a/l/d0<",
        "TPV;>;"
    }
.end annotation


# instance fields
.field public final A:Le/a/z4/d;

.field public final B:Le/a/b0/o/a;

.field public final C:Le/a/q2/a;

.field public final D:Le/a/l/p2/d1;

.field public final E:Le/a/p5/h0;

.field public final J:Le/a/l/n0;

.field public final K:Le/a/l/o2/e;

.field public final L:Le/a/l/o2/c;

.field public final M:Le/a/l/p2/q0;

.field public final N:Le/a/l/o1;

.field public final O:Le/a/l/c2;

.field public final P:Le/a/l/a/c0;

.field public final Q:Le/a/l/a/p;

.field public final R:Le/a/u3/g;

.field public final S:Le/a/l/v2/i/a/c;

.field public final T:Le/a/l/v2/i/a/f;

.field public final U:Le/a/l/a/k0;

.field public final V:Le/a/l/a/l0;

.field public d:Le/a/l/p2/s1$b;

.field public e:Ljava/lang/String;

.field public f:Lcom/truecaller/premium/billing/Receipt;

.field public g:Z

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/truecaller/premium/PremiumAlertType;",
            "Le/a/l/e0$a;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ls1/g;

.field public final j:Ls1/g;

.field public final k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Le/a/l/v2/i/a/b;",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;>;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Le/a/l/v2/i/c/a;",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;>;"
        }
    .end annotation
.end field

.field public m:Z

.field public n:Z

.field public o:Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;

.field public final p:Z

.field public q:Le/a/l/e0$b;

.field public final r:Lcom/truecaller/premium/PremiumLaunchContext;

.field public final s:Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;

.field public final t:Ljava/lang/String;

.field public final u:Le/a/l/p2/r0;

.field public final v:Le/a/l/p2/v0;

.field public final w:Le/a/l/p2/a1;

.field public final x:Le/a/l/p2/y;

.field public final y:Le/a/l/u2/a;

.field public final z:Le/a/l/p2/t1;


# direct methods
.method public constructor <init>(Lcom/truecaller/premium/PremiumLaunchContext;Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;Ljava/lang/String;Le/a/l/p2/r0;Le/a/l/p2/v0;Le/a/l/p2/a1;Le/a/l/p2/y;Le/a/l/u2/a;Le/a/l/p2/t1;Le/a/z4/d;Le/a/b0/o/a;Le/a/q2/a;Le/a/l/p2/d1;Le/a/p5/h0;Le/a/l/n0;Le/a/l/o2/e;Le/a/l/o2/c;Le/a/l/p2/q0;Le/a/l/o1;Le/a/l/c2;Le/a/l/a/c0;Le/a/l/a/p;Le/a/u3/g;Le/a/c0/h;Le/a/l/v2/i/a/c;Le/a/l/v2/i/a/f;Le/a/l/a/k0;Le/a/l/a/l0;Ls1/w/f;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move-object/from16 v13, p15

    move-object/from16 v14, p16

    move-object/from16 v15, p17

    move-object/from16 v0, p18

    const-string v0, "launchContext"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repository"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumSubscriptionProblemHelper"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumAlertFactory"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productStoreProvider"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webBillingPurchaseStateManager"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generalSettings"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumSubscriptionsHelper"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumEventsLogger"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumablePurchasePresenter"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumablePurchaseLostNotifier"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumPurchaseHelper"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumLogsSender"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumSettings"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumTabDeeplinkHelper"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumBottomBarAttentionHelper"

    move-object/from16 v15, p22

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    move-object/from16 v15, p23

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "experimentRegistry"

    move-object/from16 v15, p24

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscriptionButtonBuildHelper"

    move-object/from16 v15, p25

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscriptionButtonGroupBuildHelper"

    move-object/from16 v15, p26

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "threeButtonPremiumLayoutUtils"

    move-object/from16 v15, p27

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "welcomeOfferUtils"

    move-object/from16 v15, p28

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ui"

    move-object/from16 v15, p29

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    .line 1
    invoke-direct {v0, v15}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object v1, v0, Le/a/l/e0;->r:Lcom/truecaller/premium/PremiumLaunchContext;

    move-object/from16 v15, p2

    iput-object v15, v0, Le/a/l/e0;->s:Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;

    move-object/from16 v15, p3

    iput-object v15, v0, Le/a/l/e0;->t:Ljava/lang/String;

    iput-object v2, v0, Le/a/l/e0;->u:Le/a/l/p2/r0;

    iput-object v3, v0, Le/a/l/e0;->v:Le/a/l/p2/v0;

    iput-object v4, v0, Le/a/l/e0;->w:Le/a/l/p2/a1;

    iput-object v5, v0, Le/a/l/e0;->x:Le/a/l/p2/y;

    iput-object v6, v0, Le/a/l/e0;->y:Le/a/l/u2/a;

    iput-object v7, v0, Le/a/l/e0;->z:Le/a/l/p2/t1;

    iput-object v8, v0, Le/a/l/e0;->A:Le/a/z4/d;

    iput-object v9, v0, Le/a/l/e0;->B:Le/a/b0/o/a;

    iput-object v10, v0, Le/a/l/e0;->C:Le/a/q2/a;

    iput-object v11, v0, Le/a/l/e0;->D:Le/a/l/p2/d1;

    iput-object v12, v0, Le/a/l/e0;->E:Le/a/p5/h0;

    iput-object v13, v0, Le/a/l/e0;->J:Le/a/l/n0;

    iput-object v14, v0, Le/a/l/e0;->K:Le/a/l/o2/e;

    move-object/from16 v2, p17

    iput-object v2, v0, Le/a/l/e0;->L:Le/a/l/o2/c;

    move-object/from16 v2, p18

    iput-object v2, v0, Le/a/l/e0;->M:Le/a/l/p2/q0;

    move-object/from16 v2, p19

    move-object/from16 v3, p20

    iput-object v2, v0, Le/a/l/e0;->N:Le/a/l/o1;

    iput-object v3, v0, Le/a/l/e0;->O:Le/a/l/c2;

    move-object/from16 v2, p21

    move-object/from16 v3, p22

    iput-object v2, v0, Le/a/l/e0;->P:Le/a/l/a/c0;

    iput-object v3, v0, Le/a/l/e0;->Q:Le/a/l/a/p;

    move-object/from16 v2, p23

    iput-object v2, v0, Le/a/l/e0;->R:Le/a/u3/g;

    move-object/from16 v2, p25

    move-object/from16 v3, p26

    iput-object v2, v0, Le/a/l/e0;->S:Le/a/l/v2/i/a/c;

    iput-object v3, v0, Le/a/l/e0;->T:Le/a/l/v2/i/a/f;

    move-object/from16 v2, p27

    move-object/from16 v3, p28

    iput-object v2, v0, Le/a/l/e0;->U:Le/a/l/a/k0;

    iput-object v3, v0, Le/a/l/e0;->V:Le/a/l/a/l0;

    .line 2
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Le/a/l/e0;->h:Ljava/util/Map;

    .line 3
    new-instance v2, Le/a/l/e0$d;

    invoke-direct {v2, v0}, Le/a/l/e0$d;-><init>(Le/a/l/e0;)V

    invoke-static {v2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v2

    iput-object v2, v0, Le/a/l/e0;->i:Ls1/g;

    .line 4
    new-instance v2, Le/a/l/e0$c;

    invoke-direct {v2, v0}, Le/a/l/e0$c;-><init>(Le/a/l/e0;)V

    invoke-static {v2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v2

    iput-object v2, v0, Le/a/l/e0;->j:Ls1/g;

    .line 5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Le/a/l/e0;->k:Ljava/util/HashMap;

    .line 6
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Le/a/l/e0;->l:Ljava/util/HashMap;

    .line 7
    sget-object v2, Lcom/truecaller/premium/PremiumLaunchContext;->BOTTOM_BAR:Lcom/truecaller/premium/PremiumLaunchContext;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/truecaller/premium/PremiumLaunchContext;->BOTTOM_BAR_TAB_V2:Lcom/truecaller/premium/PremiumLaunchContext;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Le/a/l/e0;->p:Z

    return-void
.end method

.method public static final Ij(Le/a/l/e0;Le/a/l/n2/f;Ljava/lang/String;Ljava/util/List;Le/a/l/n2/f;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/l/e0;->v:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->B()Z

    move-result v5

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v6, p4

    move-object v7, p5

    .line 2
    invoke-virtual/range {v1 .. v7}, Le/a/l/e0;->Kj(Ljava/lang/String;Ljava/util/List;Le/a/l/n2/f;ZLe/a/l/n2/f;Ljava/lang/String;)Le/a/l/m0;

    move-result-object p1

    .line 3
    iget-object p3, p0, Le/a/l/e0;->J:Le/a/l/n0;

    invoke-interface {p3, p1}, Le/a/l/n0;->d(Le/a/l/m0;)V

    .line 4
    iget-object p1, p0, Le/a/l/e0;->B:Le/a/b0/o/a;

    iget-object p3, p0, Le/a/l/e0;->r:Lcom/truecaller/premium/PremiumLaunchContext;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    const-string p4, "subscriptionPurchaseSource"

    invoke-interface {p1, p4, p3}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Le/a/l/e0;->B:Le/a/b0/o/a;

    const-string p3, "subscriptionPurchaseSku"

    invoke-interface {p1, p3, p2}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Le/a/l/e0;->v:Le/a/l/p2/v0;

    invoke-interface {p0}, Le/a/l/p2/v0;->s()V

    return-void
.end method

.method public static final synthetic Jj(Le/a/l/e0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    return-void
.end method

.method public static synthetic Lj(Le/a/l/e0;Ljava/lang/String;Ljava/util/List;Le/a/l/n2/f;ZLe/a/l/n2/f;Ljava/lang/String;ILjava/lang/Object;)Le/a/l/m0;
    .locals 7

    and-int/lit8 p2, p7, 0x1

    const/4 p5, 0x0

    if-eqz p2, :cond_0

    move-object v1, p5

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 p1, p7, 0x2

    const/4 v2, 0x0

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_1

    move-object v3, p5

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_2

    const/4 p4, 0x0

    :cond_2
    move v4, p4

    and-int/lit8 p1, p7, 0x10

    const/4 v5, 0x0

    and-int/lit8 p1, p7, 0x20

    const/4 v6, 0x0

    move-object v0, p0

    .line 1
    invoke-virtual/range {v0 .. v6}, Le/a/l/e0;->Kj(Ljava/lang/String;Ljava/util/List;Le/a/l/n2/f;ZLe/a/l/n2/f;Ljava/lang/String;)Le/a/l/m0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Zj(Le/a/l/e0;Le/a/l/n2/f;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p3, 0x2

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p2}, Le/a/l/e0;->Yj(Le/a/l/n2/f;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public Ce(Lcom/truecaller/premium/PremiumAlertType;)V
    .locals 2

    const-string v0, "alertType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l/e0;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/l/e0$a;

    if-eqz p1, :cond_2

    .line 2
    iget-boolean v0, p1, Le/a/l/e0$a;->e:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/l/t1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/l/t1;->Ci()V

    .line 4
    :cond_0
    iget-object v0, p1, Le/a/l/e0$a;->c:Ls1/z/b/a;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/s;

    .line 6
    :cond_1
    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent;->d:Lcom/truecaller/analytics/common/event/ViewActionEvent$a;

    .line 7
    iget-object p1, p1, Le/a/l/e0$a;->b:Ljava/lang/String;

    .line 8
    sget-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$PremiumAlertAction;->POSITIVE:Lcom/truecaller/analytics/common/event/ViewActionEvent$PremiumAlertAction;

    invoke-virtual {v0, p1, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->m(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$PremiumAlertAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p1

    iget-object v0, p0, Le/a/l/e0;->C:Le/a/q2/a;

    invoke-static {p1, v0}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    :cond_2
    return-void
.end method

.method public Gb(Lcom/truecaller/premium/PremiumAlertType;)V
    .locals 2

    const-string v0, "alertType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l/e0;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/l/e0$a;

    if-eqz p1, :cond_2

    .line 2
    iget-boolean v0, p1, Le/a/l/e0$a;->e:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/l/t1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/l/t1;->Ci()V

    .line 4
    :cond_0
    iget-object v0, p1, Le/a/l/e0$a;->d:Ls1/z/b/a;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/s;

    .line 6
    :cond_1
    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent;->d:Lcom/truecaller/analytics/common/event/ViewActionEvent$a;

    .line 7
    iget-object p1, p1, Le/a/l/e0$a;->b:Ljava/lang/String;

    .line 8
    sget-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$PremiumAlertAction;->NEGATIVE:Lcom/truecaller/analytics/common/event/ViewActionEvent$PremiumAlertAction;

    invoke-virtual {v0, p1, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->m(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$PremiumAlertAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p1

    iget-object v0, p0, Le/a/l/e0;->C:Le/a/q2/a;

    invoke-static {p1, v0}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    :cond_2
    return-void
.end method

.method public H9(Le/a/l/v2/i/c/a;)V
    .locals 1

    const-string v0, "offer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l/e0;->l:Ljava/util/HashMap;

    invoke-static {v0, p1}, Ls1/u/i;->H(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/z/b/a;

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public Ia()V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/l/e0;->f:Lcom/truecaller/premium/billing/Receipt;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2
    new-instance v5, Le/a/l/e0$g;

    invoke-direct {v5, v0, v1, p0}, Le/a/l/e0$g;-><init>(Lcom/truecaller/premium/billing/Receipt;Ls1/w/d;Le/a/l/e0;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_0

    :cond_0
    const-string v0, "Move premium dialog should not even be shown if there is no receipt."

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/truecaller/log/AssertionUtil;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public Ji(Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Le/a/l/e0;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    new-instance v4, Le/a/l/e0$h;

    const/4 v1, 0x0

    invoke-direct {v4, v0, v1, p0, p1}, Le/a/l/e0$h;-><init>(Ljava/lang/String;Ls1/w/d;Le/a/l/e0;Ljava/lang/String;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_2
    return-void
.end method

.method public final Kj(Ljava/lang/String;Ljava/util/List;Le/a/l/n2/f;ZLe/a/l/n2/f;Ljava/lang/String;)Le/a/l/m0;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Le/a/l/n2/f;",
            "Z",
            "Le/a/l/n2/f;",
            "Ljava/lang/String;",
            ")",
            "Le/a/l/m0;"
        }
    .end annotation

    move-object v0, p0

    .line 1
    new-instance v11, Le/a/l/m0;

    .line 2
    iget-object v2, v0, Le/a/l/e0;->r:Lcom/truecaller/premium/PremiumLaunchContext;

    .line 3
    iget-object v7, v0, Le/a/l/e0;->t:Ljava/lang/String;

    .line 4
    iget-object v1, v0, Le/a/l/e0;->o:Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Le/a/l/e0;->s:Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;

    :goto_0
    move-object v8, v1

    move-object v1, v11

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 5
    invoke-direct/range {v1 .. v10}, Le/a/l/m0;-><init>(Lcom/truecaller/premium/PremiumLaunchContext;Ljava/lang/String;Ljava/util/List;Le/a/l/n2/f;ZLjava/lang/String;Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;Le/a/l/n2/f;Ljava/lang/String;)V

    return-object v11
.end method

.method public L3(Le/a/l/v2/i/a/b;)V
    .locals 1

    const-string v0, "button"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l/e0;->k:Ljava/util/HashMap;

    invoke-static {v0, p1}, Ls1/u/i;->H(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/z/b/a;

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final Mj()V
    .locals 33

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/l/e0;->h:Ljava/util/Map;

    sget-object v2, Lcom/truecaller/premium/PremiumAlertType;->PENDING_PURCHASE:Lcom/truecaller/premium/PremiumAlertType;

    new-instance v11, Le/a/l/e0$a;

    .line 2
    iget-object v3, v0, Le/a/l/e0;->x:Le/a/l/p2/y;

    .line 3
    iget-object v4, v3, Le/a/l/p2/y;->b:Le/a/l/u2/a;

    invoke-interface {v4}, Le/a/l/u2/a;->a()Lcom/truecaller/premium/provider/Store;

    move-result-object v4

    sget-object v12, Lcom/truecaller/premium/provider/Store;->WEB:Lcom/truecaller/premium/provider/Store;

    const-string v5, "resourceProvider.getStri\u2026dingPurchaseAlertMessage)"

    const/4 v6, 0x0

    if-ne v4, v12, :cond_2

    .line 4
    iget-object v4, v3, Le/a/l/p2/y;->c:Le/a/l/p2/t1;

    .line 5
    invoke-virtual {v4}, Le/a/l/p2/t1;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    sget-object v4, Lcom/truecaller/premium/data/WebPurchasePendingStates;->PENDING_AFTER_WAIT_TIME:Lcom/truecaller/premium/data/WebPurchasePendingStates;

    goto :goto_0

    .line 7
    :cond_0
    sget-object v4, Lcom/truecaller/premium/data/WebPurchasePendingStates;->PENDING_BEFORE_WAIT_TIME:Lcom/truecaller/premium/data/WebPurchasePendingStates;

    .line 8
    :goto_0
    sget-object v7, Lcom/truecaller/premium/data/WebPurchasePendingStates;->PENDING_BEFORE_WAIT_TIME:Lcom/truecaller/premium/data/WebPurchasePendingStates;

    if-ne v4, v7, :cond_1

    .line 9
    new-instance v4, Le/a/l/b0;

    const v17, 0x7f040665

    const v15, 0x7f04056c

    .line 10
    iget-object v7, v3, Le/a/l/p2/y;->a:Le/a/p5/h0;

    const v8, 0x7f120558

    new-array v9, v6, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const-string v7, "resourceProvider.getStri\u2026PaymentPendingAlertTitle)"

    invoke-static {v14, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v3, v3, Le/a/l/p2/y;->a:Le/a/p5/h0;

    const v7, 0x7f120559

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v3, v7, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xf0

    move-object v13, v4

    move-object/from16 v16, v3

    .line 12
    invoke-direct/range {v13 .. v22}, Le/a/l/b0;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Integer;Le/a/l/c0;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 13
    :cond_1
    new-instance v4, Le/a/l/b0;

    const v27, 0x7f040664

    const v25, 0x7f04056e

    .line 14
    iget-object v5, v3, Le/a/l/p2/y;->a:Le/a/p5/h0;

    const v7, 0x7f120557

    new-array v8, v6, [Ljava/lang/Object;

    invoke-interface {v5, v7, v8}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "resourceProvider.getStri\u2026bPaymentFailedAlertTitle)"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v7, v3, Le/a/l/p2/y;->a:Le/a/p5/h0;

    const v8, 0x7f12055a

    new-array v9, v6, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "resourceProvider.getStri\u2026rchaseFailedAlertMessage)"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v28, 0x0

    const/16 v29, 0x0

    .line 16
    iget-object v3, v3, Le/a/l/p2/y;->a:Le/a/p5/h0;

    const v8, 0x7f1210f7

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v3, v8, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    const/16 v32, 0xb0

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v26, v7

    .line 17
    invoke-direct/range {v23 .. v32}, Le/a/l/b0;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Integer;Le/a/l/c0;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 18
    :cond_2
    new-instance v4, Le/a/l/b0;

    .line 19
    iget-object v7, v3, Le/a/l/p2/y;->a:Le/a/p5/h0;

    new-array v8, v6, [Ljava/lang/Object;

    const v9, 0x7f1204f0

    invoke-interface {v7, v9, v8}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const-string v7, "resourceProvider.getStri\u2026endingPurchaseAlertTitle)"

    invoke-static {v14, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v3, v3, Le/a/l/p2/y;->a:Le/a/p5/h0;

    new-array v6, v6, [Ljava/lang/Object;

    const v7, 0x7f1204ef

    invoke-interface {v3, v7, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v15, 0x7f04056e

    const v17, 0x7f04064b

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xf0

    move-object v13, v4

    move-object/from16 v16, v3

    .line 21
    invoke-direct/range {v13 .. v22}, Le/a/l/b0;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Integer;Le/a/l/c0;Ljava/lang/String;Ljava/lang/String;I)V

    .line 22
    :goto_1
    iget-object v3, v0, Le/a/l/e0;->j:Ls1/g;

    invoke-interface {v3}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ls1/z/b/a;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x38

    const-string v5, "pendingPurchase"

    move-object v3, v11

    .line 23
    invoke-direct/range {v3 .. v10}, Le/a/l/e0$a;-><init>(Le/a/l/b0;Ljava/lang/String;Ls1/z/b/a;Ls1/z/b/a;ZZI)V

    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v1, v0, Le/a/l/e0;->y:Le/a/l/u2/a;

    invoke-interface {v1}, Le/a/l/u2/a;->a()Lcom/truecaller/premium/provider/Store;

    move-result-object v1

    if-ne v1, v12, :cond_3

    .line 25
    iget-object v1, v0, Le/a/l/e0;->O:Le/a/l/c2;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Le/a/l/c2;->y0(Z)V

    .line 26
    invoke-virtual/range {p0 .. p0}, Le/a/l/e0;->Nj()Le/a/l/e0$b;

    move-result-object v1

    iput-object v1, v0, Le/a/l/e0;->q:Le/a/l/e0$b;

    :cond_3
    return-void
.end method

.method public final Nj()Le/a/l/e0$b;
    .locals 11

    .line 1
    new-instance v10, Le/a/l/e0$b;

    .line 2
    iget-object v0, p0, Le/a/l/e0;->v:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->w0()J

    move-result-wide v1

    .line 3
    iget-object v0, p0, Le/a/l/e0;->v:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->D2()Ljava/lang/String;

    move-result-object v3

    .line 4
    iget-object v0, p0, Le/a/l/e0;->w:Le/a/l/p2/a1;

    invoke-virtual {v0}, Le/a/l/p2/a1;->a()Z

    move-result v4

    .line 5
    iget-object v0, p0, Le/a/l/e0;->v:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->R1()Z

    move-result v5

    .line 6
    iget-object v0, p0, Le/a/l/e0;->v:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->s1()Z

    move-result v6

    .line 7
    iget-object v0, p0, Le/a/l/e0;->O:Le/a/l/c2;

    invoke-interface {v0}, Le/a/l/c2;->K1()Ljava/lang/String;

    move-result-object v7

    .line 8
    iget-object v0, p0, Le/a/l/e0;->O:Le/a/l/c2;

    invoke-interface {v0}, Le/a/l/c2;->P2()Z

    move-result v8

    .line 9
    iget-object v0, p0, Le/a/l/e0;->P:Le/a/l/a/c0;

    invoke-interface {v0}, Le/a/l/a/c0;->c()Ljava/lang/String;

    move-result-object v9

    move-object v0, v10

    .line 10
    invoke-direct/range {v0 .. v9}, Le/a/l/e0$b;-><init>(JLjava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;)V

    return-object v10
.end method

.method public final Oj()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/l/e0;->p:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Le/a/l/e0;->ck(Z)V

    .line 3
    invoke-virtual {p0}, Le/a/l/e0;->Qj()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/l/t1;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/l/t1;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final Pj()Ls1/z/b/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/a/l/e0;->i:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/z/b/a;

    return-object v0
.end method

.method public final Qj()V
    .locals 6

    .line 1
    new-instance v3, Le/a/l/e0$e;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/l/e0$e;-><init>(Le/a/l/e0;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public final Rj()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/e0;->O:Le/a/l/c2;

    invoke-interface {v0}, Le/a/l/c2;->a2()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/l/e0;->R:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->g0()Le/a/u3/i;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/i;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/l/t1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/l/o2/h;->ge()V

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/l/e0;->O:Le/a/l/c2;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/l/c2;->H0(Z)V

    :cond_1
    return-void
.end method

.method public Sj(Le/a/l/t1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPV;)V"
        }
    .end annotation

    const-string v0, "presenterView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Le/a/l/e0;->A:Le/a/z4/d;

    iget-object v0, p0, Le/a/l/e0;->r:Lcom/truecaller/premium/PremiumLaunchContext;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lastPremiumLaunchContext"

    invoke-interface {p1, v1, v0}, Le/a/z4/d;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Le/a/l/e0;->ck(Z)V

    .line 4
    invoke-virtual {p0}, Le/a/l/e0;->Qj()V

    return-void
.end method

.method public Th()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/l/e0;->Rj()V

    return-void
.end method

.method public abstract Tj(Le/a/l/p2/s1$b;Ls1/w/d;)Ljava/lang/Object;
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
.end method

.method public final Uj()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/l/e0;->p:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/a/l/e0;->n:Z

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Le/a/l/e0;->ck(Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/l/t1;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/l/t1;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract Vj(Le/a/l/p2/s1$f;Ls1/w/d;)Ljava/lang/Object;
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
.end method

.method public Wj(Lcom/truecaller/premium/data/ProductKind;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/l/t1;

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_2

    :goto_0
    const p1, 0x7f120517

    goto :goto_1

    :cond_1
    const p1, 0x7f120516

    goto :goto_1

    :cond_2
    const p1, 0x7f12051b

    goto :goto_1

    :cond_3
    const p1, 0x7f120518

    goto :goto_1

    :cond_4
    const p1, 0x7f12051a

    goto :goto_1

    :cond_5
    const p1, 0x7f120519

    .line 3
    :goto_1
    invoke-interface {v0, p1}, Le/a/l/t1;->rl(I)V

    .line 4
    :cond_6
    invoke-virtual {p0}, Le/a/l/e0;->Oj()V

    return-void
.end method

.method public final Xj(Le/a/l/p2/s1$b;)Ljava/util/List;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/l/p2/s1$b;",
            ")",
            "Ljava/util/List<",
            "Le/a/l/v2/i/c/a;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    const-string v1, "details"

    invoke-static {v8, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, v8, Le/a/l/p2/s1$b;->q:Le/a/l/n2/f;

    const/4 v9, 0x1

    if-nez v1, :cond_1

    .line 2
    iget-object v1, v0, Le/a/l/e0;->V:Le/a/l/a/l0;

    .line 3
    iget-object v2, v8, Le/a/l/p2/s1$b;->i:Le/a/l/n2/f;

    .line 4
    invoke-virtual {v1}, Le/a/l/a/l0;->a()Lw3/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lw3/b/a/e0/c;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    move v1, v9

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    move v11, v9

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    .line 5
    :goto_1
    iget-object v1, v0, Le/a/l/e0;->T:Le/a/l/v2/i/a/f;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x16

    move-object/from16 v2, p1

    move v5, v11

    invoke-static/range {v1 .. v7}, Le/a/l/v2/i/a/f;->c(Le/a/l/v2/i/a/f;Le/a/l/p2/s1$b;ZZZZI)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    .line 6
    invoke-static {v1, v2}, Ls1/u/i;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    const-string v3, "availableSubscriptions"

    if-eqz v11, :cond_6

    .line 7
    iget-object v5, v0, Le/a/l/e0;->V:Le/a/l/a/l0;

    .line 8
    iget-object v6, v8, Le/a/l/p2/s1$b;->i:Le/a/l/n2/f;

    .line 9
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v5, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_WELCOME_OFFER_YEARLY:Lcom/truecaller/premium/data/ProductKind;

    const-string v7, "$this$containsProductKind"

    .line 11
    invoke-static {v1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "productKind"

    invoke-static {v5, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Le/a/l/n2/f;

    .line 13
    iget-object v12, v12, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    if-ne v12, v5, :cond_3

    move v12, v9

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    :goto_2
    if-eqz v12, :cond_2

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    :goto_3
    if-eqz v11, :cond_5

    move v5, v9

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    :goto_4
    if-nez v5, :cond_6

    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v2, :cond_6

    if-eqz v6, :cond_6

    .line 15
    invoke-static {v1, v9}, Ls1/u/i;->s(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    .line 16
    invoke-static {v1}, Ls1/u/i;->a1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 17
    move-object v5, v1

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_6
    iget-object v5, v0, Le/a/l/e0;->U:Le/a/l/a/k0;

    .line 19
    iget-object v6, v8, Le/a/l/p2/s1$b;->q:Le/a/l/n2/f;

    .line 20
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_8

    if-nez v6, :cond_7

    goto :goto_5

    .line 22
    :cond_7
    invoke-static {v1, v9}, Ls1/u/i;->t(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 23
    invoke-static {v1}, Ls1/u/i;->a1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 24
    move-object v3, v1

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_8
    :goto_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 27
    check-cast v6, Le/a/l/n2/f;

    .line 28
    iget-object v7, v0, Le/a/l/e0;->S:Le/a/l/v2/i/a/c;

    invoke-static {v1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/l/n2/f;

    .line 29
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "subscription"

    invoke-static {v6, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v11, v6, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    .line 31
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    const-string v12, "resourceProvider.getStri\u2026tainPrice()\n            )"

    const-string v13, "resourceProvider.getStri\u2026emiumYearlyOfferDuration)"

    const/16 v14, 0xc

    const-string v15, "if (monthlySubscription.\u2026ActionText)\n            }"

    const-string v4, "resourceProvider.getQuan\u2026h, DURATION_MONTH, price)"

    const-string v2, "resourceProvider.getStri\u2026miumMonthlyOfferDuration)"

    const-string v9, "resourceProvider.getStri\u2026OverMonth, pricePerMonth)"

    packed-switch v11, :pswitch_data_0

    .line 32
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    :pswitch_0
    move-object/from16 p1, v5

    const/4 v8, 0x0

    goto/16 :goto_11

    .line 33
    :pswitch_1
    iget-object v2, v6, Le/a/l/n2/f;->d:Ljava/lang/String;

    .line 34
    invoke-virtual {v6}, Le/a/l/n2/f;->c()J

    move-result-wide v17

    int-to-long v14, v14

    .line 35
    div-long v14, v17, v14

    .line 36
    iget-object v4, v7, Le/a/l/v2/i/a/c;->c:Le/a/l/a/e0;

    invoke-interface {v4, v2, v14, v15}, Le/a/l/a/e0;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-virtual {v7, v6, v8}, Le/a/l/v2/i/a/c;->j(Le/a/l/n2/f;Le/a/l/n2/f;)I

    move-result v4

    .line 38
    new-instance v8, Le/a/l/v2/i/c/a;

    .line 39
    iget-object v11, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    const/4 v14, 0x0

    new-array v15, v14, [Ljava/lang/Object;

    const v10, 0x7f12055c

    invoke-interface {v11, v10, v15}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v11, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    const/4 v13, 0x1

    new-array v15, v13, [Ljava/lang/Object;

    .line 41
    invoke-virtual {v6}, Le/a/l/n2/f;->b()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v14

    const v14, 0x7f120460

    .line 42
    invoke-interface {v11, v14, v15}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v11, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    new-array v12, v13, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v2, v12, v15

    const v2, 0x7f1204e6

    invoke-interface {v11, v2, v12}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez v4, :cond_9

    .line 44
    iget-object v9, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    new-array v11, v13, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v11, v15

    const v4, 0x7f1204e8

    invoke-interface {v9, v4, v11}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 45
    :cond_9
    iget-object v4, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    new-array v9, v15, [Ljava/lang/Object;

    const v11, 0x7f1204e9

    invoke-interface {v4, v11, v9}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 46
    :goto_7
    iget-object v9, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    const v11, 0x7f1204ec

    new-array v12, v15, [Ljava/lang/Object;

    invoke-interface {v9, v11, v12}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 47
    iget-object v9, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    const v11, 0x7f1204eb

    new-array v12, v15, [Ljava/lang/Object;

    invoke-interface {v9, v11, v12}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "resourceProvider.getStri\u2026erWelcomeOfferActionText)"

    invoke-static {v9, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v18, 0x0

    const v20, 0x7f08011c

    const v22, 0x7f08011e

    const/16 v21, 0x0

    .line 48
    iget-object v7, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    const v11, 0x7f0406a4

    invoke-interface {v7, v11}, Le/a/p5/h0;->l(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v23, 0x0

    const/16 v25, 0xa40

    move-object v11, v8

    move-object v12, v10

    move-object v13, v14

    move-object v14, v2

    move-object v15, v4

    move-object/from16 v17, v9

    move-object/from16 v24, v6

    .line 49
    invoke-direct/range {v11 .. v25}, Le/a/l/v2/i/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;IIIILe/a/l/n2/f;I)V

    :goto_8
    move-object/from16 p1, v5

    goto/16 :goto_11

    .line 50
    :pswitch_2
    iget-object v2, v6, Le/a/l/n2/f;->d:Ljava/lang/String;

    .line 51
    invoke-virtual {v6}, Le/a/l/n2/f;->c()J

    move-result-wide v10

    int-to-long v14, v14

    .line 52
    div-long/2addr v10, v14

    .line 53
    iget-object v4, v7, Le/a/l/v2/i/a/c;->c:Le/a/l/a/e0;

    invoke-interface {v4, v2, v10, v11}, Le/a/l/a/e0;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-virtual {v7, v6, v8}, Le/a/l/v2/i/a/c;->j(Le/a/l/n2/f;Le/a/l/n2/f;)I

    move-result v4

    .line 55
    new-instance v8, Le/a/l/v2/i/c/a;

    .line 56
    iget-object v10, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    const/4 v11, 0x0

    new-array v14, v11, [Ljava/lang/Object;

    const v15, 0x7f12055c

    invoke-interface {v10, v15, v14}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v13, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    .line 58
    invoke-virtual {v6}, Le/a/l/n2/f;->b()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v11

    const v11, 0x7f120460

    .line 59
    invoke-interface {v13, v11, v15}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v11, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    new-array v12, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v2, v12, v15

    const v2, 0x7f1204e6

    invoke-interface {v11, v2, v12}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez v4, :cond_a

    .line 61
    iget-object v9, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    new-array v11, v14, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v11, v15

    const v4, 0x7f1204e8

    invoke-interface {v9, v4, v11}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    .line 62
    :cond_a
    iget-object v4, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    new-array v9, v15, [Ljava/lang/Object;

    const v11, 0x7f1204e9

    invoke-interface {v4, v11, v9}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_9
    const/16 v16, 0x0

    .line 63
    iget-object v9, v6, Le/a/l/n2/f;->h:Lw3/b/a/u;

    if-eqz v9, :cond_b

    .line 64
    iget-object v7, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    new-array v9, v15, [Ljava/lang/Object;

    const v11, 0x7f1204ea

    invoke-interface {v7, v11, v9}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    .line 65
    :cond_b
    iget-object v7, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    new-array v9, v15, [Ljava/lang/Object;

    const v11, 0x7f1204e5

    invoke-interface {v7, v11, v9}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_a
    const-string v9, "if (yearlySubscription.f\u2026ActionText)\n            }"

    .line 66
    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0xfd0

    move-object v11, v8

    move-object v12, v10

    move-object v14, v2

    move-object v15, v4

    move-object/from16 v17, v7

    move-object/from16 v24, v6

    .line 67
    invoke-direct/range {v11 .. v25}, Le/a/l/v2/i/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;IIIILe/a/l/n2/f;I)V

    goto/16 :goto_8

    .line 68
    :pswitch_3
    invoke-virtual {v6}, Le/a/l/n2/f;->b()Ljava/lang/String;

    move-result-object v2

    .line 69
    iget-object v4, v6, Le/a/l/n2/f;->d:Ljava/lang/String;

    .line 70
    invoke-virtual {v6}, Le/a/l/n2/f;->c()J

    move-result-wide v10

    const/4 v12, 0x6

    int-to-long v12, v12

    .line 71
    div-long/2addr v10, v12

    .line 72
    iget-object v12, v7, Le/a/l/v2/i/a/c;->c:Le/a/l/a/e0;

    invoke-interface {v12, v4, v10, v11}, Le/a/l/a/e0;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    .line 73
    invoke-virtual {v7, v6, v8}, Le/a/l/v2/i/a/c;->j(Le/a/l/n2/f;Le/a/l/n2/f;)I

    move-result v8

    .line 74
    new-instance v10, Le/a/l/v2/i/c/a;

    .line 75
    iget-object v11, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    const v12, 0x7f1204bd

    const/4 v13, 0x0

    new-array v14, v13, [Ljava/lang/Object;

    invoke-interface {v11, v12, v14}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v11, "resourceProvider.getStri\u2026mHalfYearlyOfferDuration)"

    invoke-static {v12, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v11, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    const v14, 0x7f12045e

    move-object/from16 p1, v5

    const/4 v15, 0x1

    new-array v5, v15, [Ljava/lang/Object;

    aput-object v2, v5, v13

    invoke-interface {v11, v14, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "resourceProvider.getStri\u2026iceOverHalfYearly, price)"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v5, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    new-array v11, v15, [Ljava/lang/Object;

    aput-object v4, v11, v13

    const v4, 0x7f1204e6

    invoke-interface {v5, v4, v11}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez v8, :cond_c

    .line 78
    iget-object v4, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    new-array v5, v15, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v13

    const v8, 0x7f1204e8

    invoke-interface {v4, v8, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    .line 79
    :cond_c
    iget-object v4, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    new-array v5, v13, [Ljava/lang/Object;

    const v8, 0x7f1204e9

    invoke-interface {v4, v8, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_b
    move-object v15, v4

    const/16 v16, 0x0

    .line 80
    iget-object v4, v6, Le/a/l/n2/f;->h:Lw3/b/a/u;

    if-eqz v4, :cond_d

    .line 81
    iget-object v4, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    new-array v5, v13, [Ljava/lang/Object;

    const v7, 0x7f1204ea

    invoke-interface {v4, v7, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    .line 82
    :cond_d
    iget-object v4, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    new-array v5, v13, [Ljava/lang/Object;

    const v7, 0x7f1204e5

    invoke-interface {v4, v7, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_c
    const-string v5, "if (halfYearlySubscripti\u2026ActionText)\n            }"

    .line 83
    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0xfd0

    move-object v11, v10

    move-object v13, v2

    move-object/from16 v17, v4

    move-object/from16 v24, v6

    .line 84
    invoke-direct/range {v11 .. v25}, Le/a/l/v2/i/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;IIIILe/a/l/n2/f;I)V

    goto/16 :goto_10

    :pswitch_4
    move-object/from16 p1, v5

    .line 85
    invoke-virtual {v6}, Le/a/l/n2/f;->b()Ljava/lang/String;

    move-result-object v2

    .line 86
    iget-object v4, v6, Le/a/l/n2/f;->d:Ljava/lang/String;

    .line 87
    invoke-virtual {v6}, Le/a/l/n2/f;->c()J

    move-result-wide v10

    const/4 v5, 0x3

    int-to-long v12, v5

    .line 88
    div-long/2addr v10, v12

    .line 89
    iget-object v12, v7, Le/a/l/v2/i/a/c;->c:Le/a/l/a/e0;

    invoke-interface {v12, v4, v10, v11}, Le/a/l/a/e0;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    .line 90
    invoke-virtual {v7, v6, v8}, Le/a/l/v2/i/a/c;->j(Le/a/l/n2/f;Le/a/l/n2/f;)I

    move-result v8

    .line 91
    new-instance v10, Le/a/l/v2/i/c/a;

    .line 92
    iget-object v11, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    const v12, 0x7f1204f3

    const/4 v13, 0x0

    new-array v14, v13, [Ljava/lang/Object;

    invoke-interface {v11, v12, v14}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v11, "resourceProvider.getStri\u2026umQuarterlyOfferDuration)"

    invoke-static {v12, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v11, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    const v14, 0x7f12045f

    const/4 v15, 0x1

    new-array v5, v15, [Ljava/lang/Object;

    aput-object v2, v5, v13

    invoke-interface {v11, v14, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "resourceProvider.getStri\u2026riceOverQuarterly, price)"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object v5, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    new-array v11, v15, [Ljava/lang/Object;

    aput-object v4, v11, v13

    const v4, 0x7f1204e6

    invoke-interface {v5, v4, v11}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez v8, :cond_e

    .line 95
    iget-object v4, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    new-array v5, v15, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v13

    const v8, 0x7f1204e8

    invoke-interface {v4, v8, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_d

    .line 96
    :cond_e
    iget-object v4, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    new-array v5, v13, [Ljava/lang/Object;

    const v8, 0x7f1204e9

    invoke-interface {v4, v8, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_d
    move-object v15, v4

    const/16 v16, 0x0

    .line 97
    iget-object v4, v6, Le/a/l/n2/f;->h:Lw3/b/a/u;

    if-eqz v4, :cond_f

    .line 98
    iget-object v4, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    new-array v5, v13, [Ljava/lang/Object;

    const v7, 0x7f1204ea

    invoke-interface {v4, v7, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    .line 99
    :cond_f
    iget-object v4, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    new-array v5, v13, [Ljava/lang/Object;

    const v7, 0x7f1204e5

    invoke-interface {v4, v7, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_e
    const-string v5, "if (quarterlySubscriptio\u2026ActionText)\n            }"

    .line 100
    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0xfd0

    move-object v11, v10

    move-object v13, v2

    move-object/from16 v17, v4

    move-object/from16 v24, v6

    .line 101
    invoke-direct/range {v11 .. v25}, Le/a/l/v2/i/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;IIIILe/a/l/n2/f;I)V

    goto/16 :goto_10

    :pswitch_5
    move-object/from16 p1, v5

    .line 102
    invoke-virtual {v6}, Le/a/l/n2/f;->b()Ljava/lang/String;

    move-result-object v5

    .line 103
    iget-object v8, v6, Le/a/l/n2/f;->d:Ljava/lang/String;

    .line 104
    invoke-virtual {v6}, Le/a/l/n2/f;->c()J

    move-result-wide v10

    .line 105
    iget-object v12, v7, Le/a/l/v2/i/a/c;->c:Le/a/l/a/e0;

    invoke-interface {v12, v8, v10, v11}, Le/a/l/a/e0;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v8

    .line 106
    new-instance v10, Le/a/l/v2/i/c/a;

    .line 107
    iget-object v11, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    const/4 v12, 0x0

    new-array v13, v12, [Ljava/lang/Object;

    const v14, 0x7f1204cf

    invoke-interface {v11, v14, v13}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v2, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    const/4 v11, 0x1

    new-array v14, v11, [Ljava/lang/Object;

    aput-object v5, v14, v12

    const v5, 0x7f100020

    invoke-interface {v2, v5, v11, v14}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v4, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v8, v5, v12

    const v8, 0x7f1204e6

    invoke-interface {v4, v8, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object v4, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    new-array v5, v12, [Ljava/lang/Object;

    const v8, 0x7f1204e9

    invoke-interface {v4, v8, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v16, 0x0

    .line 111
    iget-object v5, v6, Le/a/l/n2/f;->h:Lw3/b/a/u;

    if-eqz v5, :cond_10

    .line 112
    iget-object v5, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    new-array v7, v12, [Ljava/lang/Object;

    const v8, 0x7f1204ea

    invoke-interface {v5, v8, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_f

    .line 113
    :cond_10
    iget-object v5, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    new-array v7, v12, [Ljava/lang/Object;

    const v8, 0x7f1204e5

    invoke-interface {v5, v8, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 114
    :goto_f
    invoke-static {v5, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0xfd0

    move-object v11, v10

    move-object v12, v13

    move-object v13, v2

    move-object v15, v4

    move-object/from16 v17, v5

    move-object/from16 v24, v6

    .line 115
    invoke-direct/range {v11 .. v25}, Le/a/l/v2/i/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;IIIILe/a/l/n2/f;I)V

    :goto_10
    move-object v8, v10

    :goto_11
    move-object v10, v8

    const/4 v2, 0x0

    const/4 v8, 0x1

    goto/16 :goto_13

    :pswitch_6
    move-object/from16 p1, v5

    .line 116
    invoke-virtual {v6}, Le/a/l/n2/f;->b()Ljava/lang/String;

    move-result-object v5

    .line 117
    iget-object v8, v6, Le/a/l/n2/f;->d:Ljava/lang/String;

    .line 118
    invoke-virtual {v6}, Le/a/l/n2/f;->c()J

    move-result-wide v10

    .line 119
    iget-object v12, v7, Le/a/l/v2/i/a/c;->c:Le/a/l/a/e0;

    invoke-interface {v12, v8, v10, v11}, Le/a/l/a/e0;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v8

    .line 120
    new-instance v10, Le/a/l/v2/i/c/a;

    .line 121
    iget-object v11, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    const/4 v14, 0x0

    new-array v12, v14, [Ljava/lang/Object;

    const v13, 0x7f1204cf

    invoke-interface {v11, v13, v12}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object v2, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    const/4 v13, 0x1

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v5, v11, v14

    const v5, 0x7f100020

    invoke-interface {v2, v5, v13, v11}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v4, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    new-array v5, v13, [Ljava/lang/Object;

    aput-object v8, v5, v14

    const v8, 0x7f1204e6

    invoke-interface {v4, v8, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object v5, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    new-array v8, v14, [Ljava/lang/Object;

    const v9, 0x7f1204e9

    invoke-interface {v5, v9, v8}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v16, 0x0

    .line 125
    iget-object v8, v6, Le/a/l/n2/f;->h:Lw3/b/a/u;

    if-eqz v8, :cond_11

    .line 126
    iget-object v7, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    new-array v8, v14, [Ljava/lang/Object;

    const v9, 0x7f1204ea

    invoke-interface {v7, v9, v8}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_12

    .line 127
    :cond_11
    iget-object v7, v7, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    new-array v8, v14, [Ljava/lang/Object;

    const v9, 0x7f1204e5

    invoke-interface {v7, v9, v8}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 128
    :goto_12
    invoke-static {v7, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0xfd0

    move-object v11, v10

    move v8, v13

    move-object v13, v2

    move v2, v14

    move-object v14, v4

    move-object v15, v5

    move-object/from16 v17, v7

    move-object/from16 v24, v6

    .line 129
    invoke-direct/range {v11 .. v25}, Le/a/l/v2/i/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;IIIILe/a/l/n2/f;I)V

    :goto_13
    if-eqz v10, :cond_12

    .line 130
    iget-object v4, v0, Le/a/l/e0;->l:Ljava/util/HashMap;

    new-instance v5, Le/a/l/e0$i;

    invoke-direct {v5, v6, v1, v0}, Le/a/l/e0$i;-><init>(Le/a/l/n2/f;Ljava/util/List;Le/a/l/e0;)V

    invoke-interface {v4, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_12
    const/4 v10, 0x0

    :goto_14
    if-eqz v10, :cond_13

    .line 131
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    move-object/from16 v5, p1

    move v9, v8

    const/4 v2, 0x3

    goto/16 :goto_6

    :cond_14
    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic Y0(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Le/a/l/t1;

    invoke-virtual {p0, p1}, Le/a/l/e0;->Sj(Le/a/l/t1;)V

    return-void
.end method

.method public final Yj(Le/a/l/n2/f;Ljava/lang/String;)V
    .locals 10

    const-string v0, "purchaseItem"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, p1, Le/a/l/n2/f;->a:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Le/a/l/e0;->v:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->B()Z

    move-result v5

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x32

    const/4 v9, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-static/range {v1 .. v9}, Le/a/l/e0;->Lj(Le/a/l/e0;Ljava/lang/String;Ljava/util/List;Le/a/l/n2/f;ZLe/a/l/n2/f;Ljava/lang/String;ILjava/lang/Object;)Le/a/l/m0;

    move-result-object v0

    .line 3
    iget-object v1, p0, Le/a/l/e0;->J:Le/a/l/n0;

    invoke-interface {v1, v0}, Le/a/l/n0;->b(Le/a/l/m0;)V

    .line 4
    iget-object v2, p0, Le/a/l/e0;->M:Le/a/l/p2/q0;

    .line 5
    invoke-virtual {p0}, Le/a/u2/a/a;->getCoroutineContext()Ls1/w/f;

    move-result-object v3

    .line 6
    iget-object v5, p0, Le/a/l/e0;->r:Lcom/truecaller/premium/PremiumLaunchContext;

    .line 7
    iget-object v0, p0, Le/a/l/e0;->d:Le/a/l/p2/s1$b;

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, v0, Le/a/l/p2/s1$b;->s:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 9
    new-instance v7, Le/a/l/e0$j;

    invoke-direct {v7, p0}, Le/a/l/e0$j;-><init>(Le/a/l/e0;)V

    .line 10
    new-instance v8, Le/a/l/e0$k;

    invoke-direct {v8, p0, p1, p2}, Le/a/l/e0$k;-><init>(Le/a/l/e0;Le/a/l/n2/f;Ljava/lang/String;)V

    move-object v4, p1

    .line 11
    invoke-virtual/range {v2 .. v8}, Le/a/l/p2/q0;->a(Ls1/w/f;Le/a/l/n2/f;Lcom/truecaller/premium/PremiumLaunchContext;Ljava/lang/String;Ls1/z/b/a;Ls1/z/b/l;)V

    return-void
.end method

.method public final ak()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/l/e0;->h:Ljava/util/Map;

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/premium/PremiumAlertType;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l/e0$a;

    .line 3
    iget-boolean v3, v1, Le/a/l/e0$a;->f:Z

    if-eqz v3, :cond_1

    .line 4
    iget-boolean v3, v1, Le/a/l/e0$a;->e:Z

    if-eqz v3, :cond_0

    :cond_1
    const/4 v3, 0x1

    .line 5
    iput-boolean v3, v1, Le/a/l/e0$a;->f:Z

    .line 6
    iget-object v3, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/l/t1;

    if-eqz v3, :cond_2

    .line 7
    iget-object v4, v1, Le/a/l/e0$a;->a:Le/a/l/b0;

    .line 8
    invoke-interface {v3, v4, v2}, Le/a/l/t1;->q8(Le/a/l/b0;Lcom/truecaller/premium/PremiumAlertType;)V

    .line 9
    :cond_2
    iget-object v1, v1, Le/a/l/e0$a;->b:Ljava/lang/String;

    const-string v2, "viewId"

    const/4 v3, 0x0

    .line 10
    invoke-static {v1, v2, v1, v3, v3}, Le/d/c/a/a;->q1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Le/a/q2/y0/a/a;

    move-result-object v1

    .line 11
    iget-object v2, p0, Le/a/l/e0;->C:Le/a/q2/a;

    invoke-static {v1, v2}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final bk(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "\r\n"

    .line 1
    invoke-static {p1, v0, p2}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/a/l/e0;->e:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/l/t1;

    if-eqz p1, :cond_0

    iget-object p2, p0, Le/a/l/e0;->B:Le/a/b0/o/a;

    const-string v0, "profileEmail"

    invoke-interface {p2, v0}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/l/t1;->Kd(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 6

    .line 1
    new-instance v3, Le/a/l/e0$f;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/l/e0$f;-><init>(Le/a/l/e0;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public final ck(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/l/t1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/l/t1;->f(Z)V

    .line 2
    :cond_0
    iput-boolean p1, p0, Le/a/l/e0;->m:Z

    return-void
.end method

.method public f5()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/l/e0;->Uj()V

    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l/e0;->Q:Le/a/l/a/p;

    invoke-virtual {v0}, Le/a/l/a/p;->a()V

    .line 2
    invoke-virtual {p0}, Le/a/l/e0;->onResume()V

    return-void
.end method

.method public kd(Le/a/l/n2/f;)V
    .locals 2

    const-string v0, "subscription"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/l/t1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/l/o2/h;->Xr()V

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, p1, v1, v0, v1}, Le/a/l/e0;->Zj(Le/a/l/e0;Le/a/l/n2/f;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 12

    .line 1
    iget-object v0, p0, Le/a/l/e0;->P:Le/a/l/a/c0;

    invoke-interface {v0}, Le/a/l/a/c0;->e()Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Le/a/l/e0;->o:Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;

    .line 2
    :cond_0
    iget-boolean v0, p0, Le/a/l/e0;->g:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Le/a/l/e0;->J:Le/a/l/n0;

    iget-object v2, p0, Le/a/l/e0;->v:Le/a/l/p2/v0;

    invoke-interface {v2}, Le/a/l/p2/v0;->B()Z

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x37

    const/4 v11, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v11}, Le/a/l/e0;->Lj(Le/a/l/e0;Ljava/lang/String;Ljava/util/List;Le/a/l/n2/f;ZLe/a/l/n2/f;Ljava/lang/String;ILjava/lang/Object;)Le/a/l/m0;

    move-result-object v2

    invoke-interface {v0, v2}, Le/a/l/n0;->a(Le/a/l/m0;)V

    .line 4
    iput-boolean v1, p0, Le/a/l/e0;->g:Z

    .line 5
    :cond_1
    iget-boolean v0, p0, Le/a/l/e0;->m:Z

    if-eqz v0, :cond_2

    return-void

    .line 6
    :cond_2
    iget-boolean v0, p0, Le/a/l/e0;->n:Z

    if-nez v0, :cond_3

    .line 7
    invoke-virtual {p0}, Le/a/l/e0;->Nj()Le/a/l/e0$b;

    move-result-object v0

    iget-object v2, p0, Le/a/l/e0;->q:Le/a/l/e0$b;

    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 8
    :cond_3
    invoke-virtual {p0, v1}, Le/a/l/e0;->ck(Z)V

    .line 9
    invoke-virtual {p0}, Le/a/l/e0;->Qj()V

    :cond_4
    return-void
.end method

.method public th()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/l/e0;->Uj()V

    return-void
.end method

.method public y0()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l/e0;->Q:Le/a/l/a/p;

    invoke-virtual {v0}, Le/a/l/a/p;->a()V

    return-void
.end method
