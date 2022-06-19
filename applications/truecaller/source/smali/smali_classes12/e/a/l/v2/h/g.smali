.class public final Le/a/l/v2/h/g;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/l/v2/h/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/l/v2/h/d;",
        ">;",
        "Le/a/l/v2/h/c;"
    }
.end annotation


# instance fields
.field public d:Le/a/l/p2/s1$b;

.field public e:Lcom/truecaller/premium/PremiumLaunchContext;

.field public f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Le/a/l/v2/i/a/b;",
            "Le/a/l/n2/f;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Le/a/l/a/y;

.field public final h:Le/a/l/p2/v0;

.field public final i:Le/a/l/p2/d1;

.field public final j:Le/a/l/p2/q0;

.field public final k:Le/a/p5/h0;

.field public final l:Le/a/l/n0;

.field public final m:Le/a/l/c2;

.field public final n:Le/a/b0/o/a;

.field public final o:Le/a/z4/d;

.field public final p:Le/a/l/o2/e;

.field public final q:Le/a/l/s2/a;

.field public final r:Le/a/l/v2/i/a/c;

.field public final s:Le/a/l/v2/i/a/f;

.field public final t:Le/a/l/p2/k;

.field public final u:Le/a/l/a/c;

.field public final v:Le/a/l/a/s;

.field public final w:Le/a/c0/h;

.field public final x:Le/a/u3/g;

.field public final y:Le/a/r5/n0;

.field public final z:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/l/a/y;Le/a/l/p2/v0;Le/a/l/p2/d1;Le/a/l/p2/q0;Le/a/p5/h0;Le/a/l/n0;Le/a/l/c2;Le/a/b0/o/a;Le/a/z4/d;Le/a/l/o2/e;Le/a/l/s2/a;Le/a/l/v2/i/a/c;Le/a/l/v2/i/a/f;Le/a/l/p2/k;Le/a/l/a/c;Le/a/l/a/s;Le/a/c0/h;Le/a/u3/g;Le/a/r5/n0;Ls1/w/f;)V
    .locals 16
    .param p20    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v0, p16

    const-string v0, "premiumPurchaseSupportedCheck"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumSubscriptionsHelper"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumPurchaseHelper"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumEventsLogger"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumSettings"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generalSettings"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumablePurchasePresenter"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebasePersonalisationManager"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscriptionButtonBuildHelper"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscriptionButtonGroupBuildHelper"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "friendUpgradedPromoRepository"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardPurchaseButtonBuildHelper"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumKenyaHelper"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "experimentRegistry"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whoViewedMeRevealProfileViewAbTestManager"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ui"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    .line 1
    invoke-direct {v0, v15}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object v1, v0, Le/a/l/v2/h/g;->g:Le/a/l/a/y;

    iput-object v2, v0, Le/a/l/v2/h/g;->h:Le/a/l/p2/v0;

    iput-object v3, v0, Le/a/l/v2/h/g;->i:Le/a/l/p2/d1;

    iput-object v4, v0, Le/a/l/v2/h/g;->j:Le/a/l/p2/q0;

    iput-object v5, v0, Le/a/l/v2/h/g;->k:Le/a/p5/h0;

    iput-object v6, v0, Le/a/l/v2/h/g;->l:Le/a/l/n0;

    iput-object v7, v0, Le/a/l/v2/h/g;->m:Le/a/l/c2;

    iput-object v8, v0, Le/a/l/v2/h/g;->n:Le/a/b0/o/a;

    iput-object v9, v0, Le/a/l/v2/h/g;->o:Le/a/z4/d;

    iput-object v10, v0, Le/a/l/v2/h/g;->p:Le/a/l/o2/e;

    iput-object v11, v0, Le/a/l/v2/h/g;->q:Le/a/l/s2/a;

    iput-object v12, v0, Le/a/l/v2/h/g;->r:Le/a/l/v2/i/a/c;

    iput-object v13, v0, Le/a/l/v2/h/g;->s:Le/a/l/v2/i/a/f;

    iput-object v14, v0, Le/a/l/v2/h/g;->t:Le/a/l/p2/k;

    move-object/from16 v1, p15

    iput-object v1, v0, Le/a/l/v2/h/g;->u:Le/a/l/a/c;

    move-object/from16 v1, p16

    iput-object v1, v0, Le/a/l/v2/h/g;->v:Le/a/l/a/s;

    move-object/from16 v1, p17

    move-object/from16 v2, p18

    iput-object v1, v0, Le/a/l/v2/h/g;->w:Le/a/c0/h;

    iput-object v2, v0, Le/a/l/v2/h/g;->x:Le/a/u3/g;

    move-object/from16 v1, p19

    move-object v2, v15

    iput-object v1, v0, Le/a/l/v2/h/g;->y:Le/a/r5/n0;

    iput-object v2, v0, Le/a/l/v2/h/g;->z:Ls1/w/f;

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Le/a/l/v2/h/g;->f:Ljava/util/HashMap;

    return-void
.end method

.method public static final Ij(Le/a/l/v2/h/g;Le/a/l/n2/f;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l/v2/h/g;->h:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->B()Z

    move-result v0

    .line 2
    invoke-virtual {p0, p2, p3, p1, v0}, Le/a/l/v2/h/g;->Jj(Ljava/lang/String;Ljava/util/List;Le/a/l/n2/f;Z)Le/a/l/m0;

    move-result-object p1

    .line 3
    iget-object p3, p0, Le/a/l/v2/h/g;->l:Le/a/l/n0;

    invoke-interface {p3, p1}, Le/a/l/n0;->d(Le/a/l/m0;)V

    .line 4
    iget-object p1, p0, Le/a/l/v2/h/g;->n:Le/a/b0/o/a;

    iget-object p3, p0, Le/a/l/v2/h/g;->e:Lcom/truecaller/premium/PremiumLaunchContext;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    const-string v0, "subscriptionPurchaseSource"

    invoke-interface {p1, v0, p3}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Le/a/l/v2/h/g;->n:Le/a/b0/o/a;

    const-string p3, "subscriptionPurchaseSku"

    invoke-interface {p1, p3, p2}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Le/a/l/v2/h/g;->h:Le/a/l/p2/v0;

    invoke-interface {p0}, Le/a/l/p2/v0;->s()V

    return-void

    :cond_0
    const-string p0, "viewLaunchContext"

    .line 7
    invoke-static {p0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic Kj(Le/a/l/v2/h/g;Ljava/lang/String;Ljava/util/List;Le/a/l/n2/f;ZI)Le/a/l/m0;
    .locals 1

    and-int/lit8 p2, p5, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p2, p5, 0x2

    and-int/lit8 p2, p5, 0x4

    if-eqz p2, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p2, p5, 0x8

    if-eqz p2, :cond_2

    const/4 p4, 0x0

    .line 1
    :cond_2
    invoke-virtual {p0, p1, v0, p3, p4}, Le/a/l/v2/h/g;->Jj(Ljava/lang/String;Ljava/util/List;Le/a/l/n2/f;Z)Le/a/l/m0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Db()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/l/v2/h/d;

    if-eqz v0, :cond_1

    iget-object v1, p0, Le/a/l/v2/h/g;->e:Lcom/truecaller/premium/PremiumLaunchContext;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Le/a/l/v2/h/d;->m7(Lcom/truecaller/premium/PremiumLaunchContext;)V

    goto :goto_0

    :cond_0
    const-string v0, "viewLaunchContext"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public G9(Lcom/truecaller/premium/PremiumLaunchContext;)V
    .locals 1

    const-string v0, "launchContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/l/v2/h/g;->e:Lcom/truecaller/premium/PremiumLaunchContext;

    return-void
.end method

.method public final Jj(Ljava/lang/String;Ljava/util/List;Le/a/l/n2/f;Z)Le/a/l/m0;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Le/a/l/n2/f;",
            "Z)",
            "Le/a/l/m0;"
        }
    .end annotation

    .line 1
    new-instance v11, Le/a/l/m0;

    move-object v12, p0

    .line 2
    iget-object v1, v12, Le/a/l/v2/h/g;->e:Lcom/truecaller/premium/PremiumLaunchContext;

    if-eqz v1, :cond_0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x180

    move-object v0, v11

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    .line 3
    invoke-direct/range {v0 .. v10}, Le/a/l/m0;-><init>(Lcom/truecaller/premium/PremiumLaunchContext;Ljava/lang/String;Ljava/util/List;Le/a/l/n2/f;ZLjava/lang/String;Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;Le/a/l/n2/f;Ljava/lang/String;I)V

    return-object v11

    :cond_0
    const-string v0, "viewLaunchContext"

    .line 4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final Lj()V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/l/v2/h/g;->l:Le/a/l/n0;

    iget-object v1, p0, Le/a/l/v2/h/g;->h:Le/a/l/p2/v0;

    invoke-interface {v1}, Le/a/l/p2/v0;->B()Z

    move-result v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x7

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Le/a/l/v2/h/g;->Kj(Le/a/l/v2/h/g;Ljava/lang/String;Ljava/util/List;Le/a/l/n2/f;ZI)Le/a/l/m0;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/l/n0;->a(Le/a/l/m0;)V

    return-void
.end method

.method public final Mj()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/v2/h/g;->m:Le/a/l/c2;

    invoke-interface {v0}, Le/a/l/c2;->a2()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/l/v2/h/g;->x:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->g0()Le/a/u3/i;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/i;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/l/v2/h/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/l/o2/h;->ge()V

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/l/v2/h/g;->m:Le/a/l/c2;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/l/c2;->H0(Z)V

    :cond_1
    return-void
.end method

.method public final Nj(Le/a/l/n2/f;)V
    .locals 9

    .line 1
    iget-object v1, p1, Le/a/l/n2/f;->a:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Le/a/l/v2/h/g;->h:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->B()Z

    move-result v4

    const/4 v2, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Le/a/l/v2/h/g;->Kj(Le/a/l/v2/h/g;Ljava/lang/String;Ljava/util/List;Le/a/l/n2/f;ZI)Le/a/l/m0;

    move-result-object v0

    .line 3
    iget-object v1, p0, Le/a/l/v2/h/g;->l:Le/a/l/n0;

    invoke-interface {v1, v0}, Le/a/l/n0;->b(Le/a/l/m0;)V

    .line 4
    iget-object v2, p0, Le/a/l/v2/h/g;->j:Le/a/l/p2/q0;

    .line 5
    invoke-virtual {p0}, Le/a/u2/a/a;->getCoroutineContext()Ls1/w/f;

    move-result-object v3

    .line 6
    iget-object v5, p0, Le/a/l/v2/h/g;->e:Lcom/truecaller/premium/PremiumLaunchContext;

    const/4 v0, 0x0

    if-eqz v5, :cond_1

    .line 7
    iget-object v1, p0, Le/a/l/v2/h/g;->d:Le/a/l/p2/s1$b;

    if-eqz v1, :cond_0

    .line 8
    iget-object v0, v1, Le/a/l/p2/s1$b;->s:Ljava/lang/String;

    :cond_0
    move-object v6, v0

    .line 9
    new-instance v7, Le/a/l/v2/h/g$a;

    invoke-direct {v7, p0}, Le/a/l/v2/h/g$a;-><init>(Le/a/l/v2/h/g;)V

    .line 10
    new-instance v8, Le/a/l/v2/h/g$b;

    invoke-direct {v8, p0, p1}, Le/a/l/v2/h/g$b;-><init>(Le/a/l/v2/h/g;Le/a/l/n2/f;)V

    move-object v4, p1

    .line 11
    invoke-virtual/range {v2 .. v8}, Le/a/l/p2/q0;->a(Ls1/w/f;Le/a/l/n2/f;Lcom/truecaller/premium/PremiumLaunchContext;Ljava/lang/String;Ls1/z/b/a;Ls1/z/b/l;)V

    return-void

    :cond_1
    const-string p1, "viewLaunchContext"

    .line 12
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public final Oj(Ljava/util/List;Ljava/util/List;ZLe/a/l/v2/i/a/b;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/l/n2/f;",
            ">;",
            "Ljava/util/List<",
            "Le/a/l/v2/i/a/b;",
            ">;Z",
            "Le/a/l/v2/i/a/b;",
            ")V"
        }
    .end annotation

    move-object v6, p0

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/l/v2/h/d;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Le/a/l/v2/i/a/d;

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 4
    iget-object v2, v6, Le/a/l/v2/h/g;->s:Le/a/l/v2/i/a/f;

    .line 5
    new-instance v3, Le/a/l/v2/i/a/f$a;

    move/from16 v4, p3

    invoke-direct {v3, v4, v4}, Le/a/l/v2/i/a/f$a;-><init>(ZZ)V

    move-object/from16 v4, p1

    .line 6
    invoke-virtual {v2, v4, v3}, Le/a/l/v2/i/a/f;->a(Ljava/util/List;Le/a/l/v2/i/a/f$a;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x36

    move-object v7, v1

    move-object/from16 v8, p2

    .line 7
    invoke-direct/range {v7 .. v14}, Le/a/l/v2/i/a/d;-><init>(Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/util/List;II)V

    move-object/from16 v2, p4

    .line 8
    invoke-interface {v0, v1, v2}, Le/a/l/v2/h/d;->Ug(Le/a/l/v2/i/a/d;Le/a/l/v2/i/a/b;)V

    .line 9
    :cond_0
    invoke-virtual {p0}, Le/a/l/v2/h/g;->Lj()V

    .line 10
    new-instance v3, Le/a/l/v2/h/e;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/l/v2/h/e;-><init>(Le/a/l/v2/h/g;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/l/v2/h/d;

    if-eqz v0, :cond_2

    iget-object v1, v6, Le/a/l/v2/h/g;->k:Le/a/p5/h0;

    const v2, 0x7f12027f

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resourceProvider.getString(R.string.ErrorGeneral)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Le/a/l/v2/h/d;->setErrorMessage(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public Th()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/l/v2/h/g;->Mj()V

    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Le/a/l/v2/h/d;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/l/v2/h/g;->o:Le/a/z4/d;

    iget-object v1, p0, Le/a/l/v2/h/g;->e:Lcom/truecaller/premium/PremiumLaunchContext;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v3, "lastPremiumLaunchContext"

    invoke-interface {v0, v3, v1}, Le/a/z4/d;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Le/a/l/v2/h/g;->h:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Le/a/l/v2/h/g;->g:Le/a/l/a/y;

    invoke-virtual {v0}, Le/a/l/a/y;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Le/a/l/v2/h/g;->k:Le/a/p5/h0;

    const v1, 0x7f1204f2

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resourceProvider.getStri\u2026urchaseNotSupportedTitle)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Le/a/l/v2/h/d;->setErrorMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 8
    new-instance v5, Le/a/l/v2/h/f;

    invoke-direct {v5, p0, p1, v2}, Le/a/l/v2/h/f;-><init>(Le/a/l/v2/h/g;Le/a/l/v2/h/d;Ls1/w/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :goto_0
    return-void

    :cond_2
    const-string p1, "viewLaunchContext"

    .line 9
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public Y7(Le/a/l/n2/f;)V
    .locals 1

    const-string v0, "subscription"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/l/v2/h/g;->Nj(Le/a/l/n2/f;)V

    return-void
.end method

.method public k4(Le/a/l/v2/i/a/b;)V
    .locals 1

    const-string v0, "subscriptionButton"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l/v2/h/g;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/l/n2/f;

    if-eqz p1, :cond_0

    const-string v0, "it"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Le/a/l/v2/h/g;->Nj(Le/a/l/n2/f;)V

    :cond_0
    return-void
.end method

.method public kd(Le/a/l/n2/f;)V
    .locals 1

    const-string v0, "subscription"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/l/v2/h/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/l/o2/h;->Xr()V

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Le/a/l/v2/h/g;->Nj(Le/a/l/n2/f;)V

    return-void
.end method
