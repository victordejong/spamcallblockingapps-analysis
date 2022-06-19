.class public Le/a/q4/o0;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/referral/ReferralManager;
.implements Le/a/w/b/a$a;
.implements Le/a/q4/e0$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/q4/o0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/q4/m0;",
        ">;",
        "Lcom/truecaller/referral/ReferralManager;",
        "Le/a/w/b/a$a;",
        "Le/a/q4/e0$a;"
    }
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public c:Le/a/r2/a;

.field public final d:Le/a/w/b/b;

.field public final e:Le/a/b0/o/a;

.field public final f:Le/a/q4/p0;

.field public final g:Le/a/p5/c0;

.field public final h:Le/a/n4/a;

.field public final i:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/l/p2/v0;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/q4/h0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final k:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r5/i0;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Le/a/s4/a;

.field public final m:Le/a/r2/j;

.field public final n:Le/a/q4/j0;

.field public final o:Le/a/w/c/a;

.field public final p:Le/a/o5/f0;

.field public final q:Le/a/u3/g;

.field public r:Le/a/q4/o0$b;

.field public s:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

.field public t:Lcom/truecaller/data/entity/Contact;

.field public final u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/truecaller/referral/ReferralManager$RedeemCodeContext;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/w/b/b;Le/a/b0/o/a;Le/a/q4/p0;Le/a/p5/c0;Le/a/w/c/a;Le/a/o5/f0;Le/a/u3/g;Lo3/a;Lo3/a;Le/a/n4/a;Lo3/a;Le/a/s4/a;Le/a/r2/j;Le/a/q4/j0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/w/b/b;",
            "Le/a/b0/o/a;",
            "Le/a/q4/p0;",
            "Le/a/p5/c0;",
            "Le/a/w/c/a;",
            "Le/a/o5/f0;",
            "Le/a/u3/g;",
            "Lo3/a<",
            "Le/a/l/p2/v0;",
            ">;",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/q4/h0;",
            ">;>;",
            "Le/a/n4/a;",
            "Lo3/a<",
            "Le/a/r5/i0;",
            ">;",
            "Le/a/s4/a;",
            "Le/a/r2/j;",
            "Le/a/q4/j0;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-static {}, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->values()[Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, v0, Le/a/q4/o0;->u:Ljava/util/HashMap;

    .line 3
    sget-object v2, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->NAVIGATION_DRAWER:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const-string v3, "featureReferralNavigationDrawer"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v2, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->CONTACT_DETAILS:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const-string v3, "featureContactDetail"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v2, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->AFTER_CALL:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const-string v3, "featureAftercall"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v2, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->AFTER_CALL_SAVE_CONTACT:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const-string v3, "featureAftercallSaveContact"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v2, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->PUSH_NOTIFICATION:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const-string v3, "featurePushNotification"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v2, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->DEEP_LINK:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const-string v3, "featureLaunchReferralFromDeeplink"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v2, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->AFTER_CALL_PROMO:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const-string v3, "featureReferralAfterCallPromo"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v2, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->SEARCH_SCREEN_PROMO:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const-string v3, "featureSearchScreenPromo"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v2, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->BOTTOM_BAR:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const-string v3, "featureReferralBottomBar"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v2, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->PROMO_POPUP:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const-string v3, "featureReferralPromoPopup"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v2, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->PREMIUM_TAB_V2:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const-string v3, "featureReferralPremiumTabV2"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v1, Ljava/util/HashMap;

    invoke-static {}, Lcom/truecaller/referral/ReferralManager$RedeemCodeContext;->values()[Lcom/truecaller/referral/ReferralManager$RedeemCodeContext;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, v0, Le/a/q4/o0;->v:Ljava/util/HashMap;

    .line 15
    sget-object v2, Lcom/truecaller/referral/ReferralManager$RedeemCodeContext;->GO_PRO:Lcom/truecaller/referral/ReferralManager$RedeemCodeContext;

    const-string v3, "featureGoPro"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p1

    .line 16
    iput-object v1, v0, Le/a/q4/o0;->d:Le/a/w/b/b;

    move-object v1, p2

    .line 17
    iput-object v1, v0, Le/a/q4/o0;->e:Le/a/b0/o/a;

    move-object v1, p3

    .line 18
    iput-object v1, v0, Le/a/q4/o0;->f:Le/a/q4/p0;

    move-object v1, p4

    .line 19
    iput-object v1, v0, Le/a/q4/o0;->g:Le/a/p5/c0;

    move-object v1, p5

    .line 20
    iput-object v1, v0, Le/a/q4/o0;->o:Le/a/w/c/a;

    move-object v1, p6

    .line 21
    iput-object v1, v0, Le/a/q4/o0;->p:Le/a/o5/f0;

    move-object v1, p7

    .line 22
    iput-object v1, v0, Le/a/q4/o0;->q:Le/a/u3/g;

    move-object v1, p9

    .line 23
    iput-object v1, v0, Le/a/q4/o0;->j:Lo3/a;

    move-object v1, p8

    .line 24
    iput-object v1, v0, Le/a/q4/o0;->i:Lo3/a;

    move-object v1, p10

    .line 25
    iput-object v1, v0, Le/a/q4/o0;->h:Le/a/n4/a;

    move-object v1, p11

    .line 26
    iput-object v1, v0, Le/a/q4/o0;->k:Lo3/a;

    move-object/from16 v1, p12

    .line 27
    iput-object v1, v0, Le/a/q4/o0;->l:Le/a/s4/a;

    move-object/from16 v1, p13

    .line 28
    iput-object v1, v0, Le/a/q4/o0;->m:Le/a/r2/j;

    move-object/from16 v1, p14

    .line 29
    iput-object v1, v0, Le/a/q4/o0;->n:Le/a/q4/j0;

    return-void
.end method


# virtual methods
.method public Bd(Lcom/truecaller/referrals/data/entities/RedeemCodeResponse;)V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast v0, Le/a/q4/m0;

    invoke-interface {v0}, Le/a/q4/m0;->Xg()V

    .line 3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/q4/m0;

    invoke-interface {v0}, Le/a/q4/m0;->Pv()V

    .line 4
    iget-object v0, p0, Le/a/q4/o0;->g:Le/a/p5/c0;

    const v1, 0x7f120ead

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v5, p0, Le/a/q4/o0;->g:Le/a/p5/c0;

    const v6, 0x7f10005f

    iget p1, p1, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse;->d:I

    new-array v4, v4, [Ljava/lang/Object;

    .line 5
    invoke-interface {v5, v6, p1, v4}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    .line 6
    invoke-interface {v0, v1, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/q4/m0;

    sget-object v1, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->PUSH_NOTIFICATION:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    invoke-interface {v0, p1, v1}, Le/a/q4/m0;->V9(Ljava/lang/String;Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;)V

    return-void
.end method

.method public Ef(Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/a/q4/o0;->Ij(Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;)Z

    move-result p1

    return p1
.end method

.method public Hj(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/q4/o0;->Oj()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/q4/o0;->f:Le/a/q4/p0;

    new-instance v1, Le/a/q4/j;

    invoke-direct {v1, p0}, Le/a/q4/j;-><init>(Le/a/q4/o0;)V

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Le/a/q4/n;

    invoke-direct {v0, v1}, Le/a/q4/n;-><init>(Le/a/o5/p;)V

    .line 5
    sget-object v1, Lcom/facebook/applinks/b;->e:Ljava/lang/String;

    const-string v1, "context"

    .line 6
    invoke-static {p1, v1}, Lcom/facebook/internal/r0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "completionHandler"

    .line 7
    invoke-static {v0, v1}, Lcom/facebook/internal/r0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {p1}, Lcom/facebook/internal/q0;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "applicationId"

    .line 9
    invoke-static {v1, v2}, Lcom/facebook/internal/r0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 11
    invoke-static {}, Le/j/f0;->e()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/facebook/applinks/a;

    invoke-direct {v3, p1, v1, v0}, Lcom/facebook/applinks/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/b$a;)V

    .line 12
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final Ij(Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/q4/o0;->u:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "No feature flag defined for ReferralLaunchContext: "

    .line 2
    invoke-static {v3, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Le/a/q4/o0;->p:Le/a/o5/f0;

    invoke-interface {v2}, Le/a/o5/f0;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Le/a/q4/o0;->d:Le/a/w/b/b;

    invoke-interface {v2, v0}, Le/a/b0/g/b;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/q4/o0;->i:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    .line 4
    :goto_0
    sget-object v0, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->AFTER_CALL_PROMO:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const-wide/16 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 5
    iget-object v0, p0, Le/a/q4/o0;->d:Le/a/w/b/b;

    const-string v4, "referralAfterCallPromoLastShown"

    invoke-interface {v0, v4, v2, v3}, Le/a/b0/g/b;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iget-object v0, p0, Le/a/q4/o0;->d:Le/a/w/b/b;

    const-string v6, "GOOGLE_REVIEW_ASK_TIMESTAMP"

    .line 6
    invoke-interface {v0, v6, v2, v3}, Le/a/b0/g/b;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 7
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 8
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0, v4, v5}, Lw3/b/a/b;-><init>(J)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Le/a/q4/o0;->q:Le/a/u3/g;

    .line 9
    iget-object v6, v5, Le/a/u3/g;->U1:Le/a/u3/g$a;

    sget-object v7, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v8, 0x96

    aget-object v7, v7, v8

    invoke-virtual {v6, v5, v7}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v5

    check-cast v5, Le/a/u3/i;

    const/4 v6, 0x5

    .line 10
    invoke-interface {v5, v6}, Le/a/u3/i;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lw3/b/a/b;->C(J)Lw3/b/a/b;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lw3/b/a/e0/c;->j()Z

    move-result v0

    and-int/2addr v1, v0

    .line 12
    :cond_1
    sget-object v0, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->PUSH_NOTIFICATION:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->HOME_SCREEN:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->NAVIGATION_DRAWER:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->PROMO_POPUP:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->DEEP_LINK:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->PREMIUM_TAB_V2:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->SEARCH_SCREEN_PROMO:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    if-eq p1, v0, :cond_2

    .line 13
    new-instance p1, Lw3/b/a/b;

    iget-object v0, p0, Le/a/q4/o0;->h:Le/a/n4/a;

    const-string v4, "KeyCallLogPromoDisabledUntil"

    invoke-interface {v0, v4, v2, v3}, Le/a/b0/g/b;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {p1, v2, v3}, Lw3/b/a/b;-><init>(J)V

    .line 14
    invoke-virtual {p1}, Lw3/b/a/e0/c;->j()Z

    move-result p1

    and-int/2addr v1, p1

    :cond_2
    return v1
.end method

.method public Is(Landroid/net/Uri;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/q4/o0;->Oj()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Le/a/q4/o0;->Jj(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4
    invoke-virtual {p0, v0}, Le/a/q4/o0;->Rj(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0, p1}, Le/a/q4/o0;->Pj(Landroid/net/Uri;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 7
    iget-object v0, p0, Le/a/q4/o0;->f:Le/a/q4/p0;

    check-cast p1, Le/a/q4/m0;

    invoke-interface {p1}, Le/a/q4/m0;->Wk()Landroid/app/Activity;

    move-result-object p1

    new-instance v1, Le/a/q4/k;

    invoke-direct {v1, p0}, Le/a/q4/k;-><init>(Le/a/q4/o0;)V

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :try_start_0
    invoke-static {}, Le/m/d/p/a;->b()Le/m/d/p/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Le/m/d/p/a;->a(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v2, Le/a/q4/m;

    invoke-direct {v2, v1}, Le/a/q4/m;-><init>(Le/a/o5/p;)V

    .line 10
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/tasks/Task;->g(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final Jj(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "promo"

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final Kj()Lcom/truecaller/referral/ReferralUrl;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/q4/o0;->d:Le/a/w/b/b;

    const-string v1, "referralLink"

    invoke-interface {v0, v1}, Le/a/b0/g/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/truecaller/referral/ReferralUrl;

    invoke-direct {v1, v0}, Lcom/truecaller/referral/ReferralUrl;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/q4/o0;->s:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    .line 4
    iput-object v0, v1, Lcom/truecaller/referral/ReferralUrl;->c:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    return-object v1
.end method

.method public Kx()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/q4/o0;->p:Le/a/o5/f0;

    invoke-interface {v0}, Le/a/o5/f0;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/q4/o0;->d:Le/a/w/b/b;

    const-string v1, "codeRedeemed"

    .line 2
    invoke-interface {v0, v1}, Le/a/b0/g/b;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/q4/o0;->d:Le/a/w/b/b;

    const-string v1, "redeemCode"

    .line 3
    invoke-interface {v0, v1}, Le/a/b0/g/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/q4/o0;->d:Le/a/w/b/b;

    const-string v1, "featureReferralDeeplink"

    .line 4
    invoke-interface {v0, v1}, Le/a/b0/g/b;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-nez v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Le/a/q4/o0;->f:Le/a/q4/p0;

    const/4 v1, 0x0

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v2, Le/a/q4/e0;

    iget-object v3, v0, Le/a/q4/p0;->a:Le/a/w/b/b;

    iget-object v0, v0, Le/a/q4/p0;->b:Le/a/w/b/d/a;

    invoke-direct {v2, v3, v0, v1}, Le/a/q4/e0;-><init>(Le/a/w/b/b;Le/a/w/b/d/a;Le/a/q4/e0$a;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 9
    invoke-virtual {v2, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method public Ky(Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/q4/o0;->u:Ljava/util/HashMap;

    sget-object v1, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->AFTER_CALL_PROMO:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/q4/o0;->d:Le/a/w/b/b;

    .line 3
    invoke-interface {v1, v0}, Le/a/b0/g/b;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 4
    :goto_0
    iget-object v1, p0, Le/a/q4/o0;->u:Ljava/util/HashMap;

    sget-object v4, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->BOTTOM_BAR:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-ne p1, v4, :cond_1

    if-eqz v1, :cond_1

    .line 5
    iget-object v4, p0, Le/a/q4/o0;->d:Le/a/w/b/b;

    .line 6
    invoke-interface {v4, v1}, Le/a/b0/g/b;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .line 7
    :goto_1
    iget-object v4, p0, Le/a/q4/o0;->u:Ljava/util/HashMap;

    sget-object v5, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->PROMO_POPUP:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-ne p1, v5, :cond_2

    if-eqz v4, :cond_2

    .line 8
    iget-object p1, p0, Le/a/q4/o0;->d:Le/a/w/b/b;

    .line 9
    invoke-interface {p1, v4}, Le/a/b0/g/b;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    return-void

    .line 10
    :cond_3
    iget-object p1, p0, Le/a/q4/o0;->d:Le/a/w/b/b;

    const-string v0, "referralCode"

    invoke-interface {p1, v0}, Le/a/b0/g/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object v0, p0, Le/a/q4/o0;->d:Le/a/w/b/b;

    const-string v1, "referralLink"

    invoke-interface {v0, v1}, Le/a/b0/g/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    .line 13
    :cond_4
    invoke-virtual {p0}, Le/a/q4/o0;->Qj()V

    goto :goto_4

    .line 14
    :cond_5
    :goto_3
    iget-object p1, p0, Le/a/q4/o0;->f:Le/a/q4/p0;

    new-instance v0, Le/a/q4/o0$a;

    invoke-direct {v0, p0}, Le/a/q4/o0$a;-><init>(Le/a/q4/o0;)V

    invoke-virtual {p1, v0}, Le/a/q4/p0;->a(Le/a/w/b/a$a;)V

    :goto_4
    return-void
.end method

.method public Lj()Lcom/truecaller/referral/ReferralUrl;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/q4/o0;->d:Le/a/w/b/b;

    const-string v1, "referralLink"

    invoke-interface {v0, v1}, Le/a/b0/g/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Le/a/q4/o0;->Kj()Lcom/truecaller/referral/ReferralUrl;

    move-result-object v0

    return-object v0
.end method

.method public Mf(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/q4/m0;

    sget-object v1, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->PUSH_NOTIFICATION:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    invoke-interface {v0, p1, v1}, Le/a/q4/m0;->V9(Ljava/lang/String;Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;)V

    return-void
.end method

.method public Mj()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/q4/o0;->r:Le/a/q4/o0$b;

    sget-object v1, Le/a/q4/o0$b;->b:Le/a/q4/o0$b;

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Le/a/q4/o0;->l:Le/a/s4/a;

    const-string v1, "inviteMore_17575"

    invoke-interface {v0, v1}, Le/a/s4/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bulkInvite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/truecaller/referral/ReferralUrl$b;->c:Lcom/truecaller/referral/ReferralUrl$b;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/truecaller/referral/ReferralUrl$b;->b:Lcom/truecaller/referral/ReferralUrl$b;

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/truecaller/referral/ReferralUrl$b;->a:Lcom/truecaller/referral/ReferralUrl$b;

    .line 6
    :goto_0
    iget-object v1, p0, Le/a/q4/o0;->g:Le/a/p5/c0;

    const v2, 0x7f120e8b

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Le/a/q4/o0;->Kj()Lcom/truecaller/referral/ReferralUrl;

    move-result-object v5

    .line 7
    iput-object v0, v5, Lcom/truecaller/referral/ReferralUrl;->a:Lcom/truecaller/referral/ReferralUrl$b;

    .line 8
    invoke-virtual {v5}, Lcom/truecaller/referral/ReferralUrl;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Le/a/q4/o0;->e:Le/a/b0/o/a;

    .line 9
    invoke-static {v4}, Le/a/l4/k;->I(Le/a/b0/o/a;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 10
    invoke-interface {v1, v2, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Nj(Ljava/lang/String;Lcom/truecaller/referral/ReferralUrl;)V
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/q4/o0;->r:Le/a/q4/o0$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    if-eq v0, p1, :cond_1

    goto/16 :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Le/a/q4/o0;->j:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/r2/f;

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/q4/h0;

    iget-object p2, p0, Le/a/q4/o0;->t:Lcom/truecaller/data/entity/Contact;

    invoke-interface {p1, p2}, Le/a/q4/h0;->b(Lcom/truecaller/data/entity/Contact;)Le/a/r2/x;

    move-result-object p1

    iget-object p2, p0, Le/a/q4/o0;->m:Le/a/r2/j;

    new-instance v0, Le/a/q4/l;

    invoke-direct {v0, p0}, Le/a/q4/l;-><init>(Le/a/q4/o0;)V

    .line 4
    invoke-virtual {p1, p2, v0}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    move-result-object p1

    iput-object p1, p0, Le/a/q4/o0;->c:Le/a/r2/a;

    goto/16 :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Le/a/q4/o0;->s:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    sget-object v1, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->AFTER_CALL_PROMO:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    if-ne v0, v1, :cond_3

    .line 6
    iget-object v0, p0, Le/a/q4/o0;->d:Le/a/w/b/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "referralAfterCallPromoLastShown"

    invoke-interface {v0, v3, v1, v2}, Le/a/b0/g/b;->a(Ljava/lang/String;J)V

    .line 7
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/q4/m0;

    iget-object v1, p0, Le/a/q4/o0;->s:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    iget-object v2, p0, Le/a/q4/o0;->b:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1, v2}, Le/a/q4/m0;->Iv(Ljava/lang/String;Lcom/truecaller/referral/ReferralUrl;Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_3
    iget-object v0, p0, Le/a/q4/o0;->d:Le/a/w/b/b;

    const-string v1, "featureReferralShareApps"

    invoke-interface {v0, v1}, Le/a/b0/g/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bulk Sms Single Screen"

    invoke-static {v0, v1}, Lw3/c/a/a/a/h;->f(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/q4/m0;

    invoke-virtual {p0}, Le/a/q4/o0;->Mj()Ljava/lang/String;

    move-result-object p2

    .line 10
    iget-object v0, p0, Le/a/q4/o0;->k:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r5/i0;

    invoke-interface {v0}, Le/a/r5/i0;->b()Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [I

    if-nez v0, :cond_4

    const v0, 0x7f0a0735

    .line 11
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2}, Lw3/c/a/a/a/a;->c(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 12
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aput v0, v1, v2

    :cond_4
    move-object v9, v1

    .line 13
    new-instance v0, Lcom/truecaller/referral/BulkSmsView$PromoLayout;

    const v4, 0x7f0d025c

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/truecaller/referral/BulkSmsView$PromoLayout;-><init>(I[I[Ljava/lang/String;[I[I[I)V

    .line 14
    iget-object v1, p0, Le/a/q4/o0;->s:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    iget-object v2, p0, Le/a/q4/o0;->b:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Le/a/q4/m0;->Vu(Ljava/lang/String;Lcom/truecaller/referral/BulkSmsView$PromoLayout;Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_5
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/q4/m0;

    iget-object v1, p0, Le/a/q4/o0;->s:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    iget-object v2, p0, Le/a/q4/o0;->b:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1, v2}, Le/a/q4/m0;->Iv(Ljava/lang/String;Lcom/truecaller/referral/ReferralUrl;Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final Oj()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/q4/o0;->d:Le/a/w/b/b;

    const-string v1, "featureReferralDeeplink"

    invoke-interface {v0, v1}, Le/a/b0/g/b;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/q4/o0;->d:Le/a/w/b/b;

    const-string v1, "codeRedeemed"

    .line 2
    invoke-interface {v0, v1}, Le/a/b0/g/b;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/a/q4/o0;->d:Le/a/w/b/b;

    const-string v1, "redeemCode"

    .line 3
    invoke-interface {v0, v1}, Le/a/b0/g/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

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
    return v0
.end method

.method public final Pj(Landroid/net/Uri;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/truecaller/referral/ReferralUrl;->d:Ln3/g/a;

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v2, "promo"

    .line 3
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x2

    add-int/2addr v2, v3

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_3

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 9
    new-instance v4, Lcom/truecaller/referral/ReferralUrl;

    invoke-direct {v4, v2}, Lcom/truecaller/referral/ReferralUrl;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_0

    move v2, v5

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    if-ne v2, v3, :cond_2

    .line 11
    :try_start_0
    sget-object v2, Lcom/truecaller/referral/ReferralUrl;->e:Ln3/g/a;

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/truecaller/referral/ReferralUrl;->b(Ln3/g/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 12
    invoke-static {v2}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    move-object v2, v1

    .line 13
    :goto_1
    :try_start_1
    sget-object v3, Lcom/truecaller/referral/ReferralUrl;->f:Ln3/g/a;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/truecaller/referral/ReferralUrl;->b(Ln3/g/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/referral/ReferralUrl$b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 14
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 15
    iput-object v0, v4, Lcom/truecaller/referral/ReferralUrl;->a:Lcom/truecaller/referral/ReferralUrl$b;

    .line 16
    iput-object v2, v4, Lcom/truecaller/referral/ReferralUrl;->c:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    goto :goto_3

    .line 17
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Share medium or context is null for referral link: "

    invoke-static {v2, p1}, Le/d/c/a/a;->s2(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 18
    :cond_2
    sget-object p1, Lcom/truecaller/referral/ReferralUrl$b;->k:Lcom/truecaller/referral/ReferralUrl$b;

    .line 19
    iput-object p1, v4, Lcom/truecaller/referral/ReferralUrl;->a:Lcom/truecaller/referral/ReferralUrl$b;

    .line 20
    sget-object p1, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->UNKNOWN:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    .line 21
    iput-object p1, v4, Lcom/truecaller/referral/ReferralUrl;->c:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    :goto_3
    move-object v1, v4

    :cond_3
    :goto_4
    if-eqz v1, :cond_4

    .line 22
    iget-object p1, v1, Lcom/truecaller/referral/ReferralUrl;->a:Lcom/truecaller/referral/ReferralUrl$b;

    .line 23
    iget-object v0, v1, Lcom/truecaller/referral/ReferralUrl;->c:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    if-eqz v0, :cond_4

    .line 24
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    .line 26
    iget-object v1, p0, Le/a/q4/o0;->n:Le/a/q4/j0;

    invoke-interface {v1, v0, p1}, Le/a/q4/j0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public Qj()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/q4/o0;->d:Le/a/w/b/b;

    const-string v1, "smsReferralPrefetchBatch"

    invoke-interface {v0, v1}, Le/a/b0/g/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/q4/o0;->j:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q4/h0;

    invoke-interface {v0}, Le/a/q4/h0;->a()V

    :cond_0
    return-void
.end method

.method public final Rj(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/q4/o0;->d:Le/a/w/b/b;

    const-string v1, "referralCode"

    invoke-interface {v0, v1}, Le/a/b0/g/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/q4/o0;->d:Le/a/w/b/b;

    const-string v1, "redeemCode"

    invoke-interface {v0, v1, p1}, Le/a/b0/g/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public S9(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast v0, Le/a/q4/m0;

    invoke-interface {v0}, Le/a/q4/m0;->Xg()V

    .line 3
    invoke-static {p1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/q4/m0;

    invoke-interface {v0, p1}, Le/a/q4/m0;->M(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public Xa(Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;)V
    .locals 3

    .line 1
    iput-object p1, p0, Le/a/q4/o0;->s:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    .line 2
    invoke-virtual {p0, p1}, Le/a/q4/o0;->Ij(Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launch context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not handled"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :pswitch_0
    sget-object p1, Le/a/q4/o0$b;->b:Le/a/q4/o0$b;

    iput-object p1, p0, Le/a/q4/o0;->r:Le/a/q4/o0$b;

    goto :goto_0

    .line 6
    :pswitch_1
    sget-object p1, Le/a/q4/o0$b;->a:Le/a/q4/o0$b;

    iput-object p1, p0, Le/a/q4/o0;->r:Le/a/q4/o0$b;

    .line 7
    :goto_0
    iget-object p1, p0, Le/a/q4/o0;->d:Le/a/w/b/b;

    const-string v0, "referralCode"

    invoke-interface {p1, v0}, Le/a/b0/g/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v0, p0, Le/a/q4/o0;->d:Le/a/w/b/b;

    const-string v1, "referralLink"

    invoke-interface {v0, v1}, Le/a/b0/g/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-nez v1, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iget-object v1, p0, Le/a/q4/o0;->p:Le/a/o5/f0;

    invoke-interface {v1}, Le/a/o5/f0;->a()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    invoke-virtual {p0}, Le/a/q4/o0;->Kj()Lcom/truecaller/referral/ReferralUrl;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Le/a/q4/o0;->Nj(Ljava/lang/String;Lcom/truecaller/referral/ReferralUrl;)V

    goto :goto_1

    .line 13
    :cond_3
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/q4/m0;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Le/a/q4/m0;->fc(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Le/a/q4/o0;->f:Le/a/q4/p0;

    invoke-virtual {p1, p0}, Le/a/q4/p0;->a(Le/a/w/b/a$a;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public af()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast v0, Le/a/q4/m0;

    invoke-interface {v0}, Le/a/q4/m0;->Xg()V

    .line 3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/q4/m0;

    iget-object v1, p0, Le/a/q4/o0;->g:Le/a/p5/c0;

    const v2, 0x7f120e92

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/q4/m0;->M(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/q4/o0;->c:Le/a/r2/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Le/a/r2/a;->b()V

    .line 3
    iput-object v1, p0, Le/a/q4/o0;->c:Le/a/r2/a;

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 5
    check-cast v0, Le/a/q4/m0;

    invoke-interface {v0}, Le/a/q4/m0;->Xg()V

    .line 6
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/q4/m0;

    invoke-interface {v0}, Le/a/q4/m0;->Pv()V

    .line 7
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/q4/m0;

    invoke-interface {v0}, Le/a/q4/m0;->oo()V

    .line 8
    :cond_1
    iput-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public clear()V
    .locals 5

    .line 1
    sget-object v0, Le/a/w/b/b;->a:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    iget-object v4, p0, Le/a/q4/o0;->d:Le/a/w/b/b;

    invoke-interface {v4, v3}, Le/a/b0/g/b;->remove(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dg(Lcom/truecaller/data/entity/Contact;)Z
    .locals 13

    .line 1
    iget-object v0, p0, Le/a/q4/o0;->o:Le/a/w/c/a;

    .line 2
    iget-object v1, v0, Le/a/w/c/a;->c:Le/a/w/b/b;

    const-string v2, "qaForceShowReferral"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Le/a/b0/g/b;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->v()Lcom/truecaller/data/entity/Number;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Number;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/w/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->s0()Z

    move-result v6

    .line 7
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v7

    .line 8
    invoke-virtual {p1, v2}, Lcom/truecaller/data/entity/Contact;->g0(I)Z

    move-result v8

    .line 9
    iget-object v9, v0, Le/a/w/c/a;->a:Le/a/q4/f0;

    .line 10
    iget-object v9, v9, Le/a/q4/f0;->a:Le/a/o5/f0;

    invoke-interface {v9}, Le/a/o5/f0;->a()Z

    move-result v9

    .line 11
    invoke-static {v5}, Le/a/p5/g0;->E(Ljava/lang/String;)Z

    move-result v10

    .line 12
    invoke-virtual {v0, v5, v1}, Le/a/w/c/a;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 13
    iget-object v11, v0, Le/a/w/c/a;->b:Ljava/lang/String;

    invoke-static {v1, v11}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v9, :cond_1

    if-nez v6, :cond_1

    if-eqz v11, :cond_1

    if-nez v8, :cond_1

    if-eqz v10, :cond_1

    if-eqz v5, :cond_1

    if-nez v7, :cond_1

    move v11, v2

    goto :goto_0

    :cond_1
    move v11, v3

    :goto_0
    const/16 v12, 0xa

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v4, v12, v3

    .line 14
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v4, 0x2

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v12, v4

    const/4 v4, 0x3

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v12, v4

    const/4 v4, 0x4

    aput-object v1, v12, v4

    const/4 v1, 0x5

    iget-object v0, v0, Le/a/w/c/a;->b:Ljava/lang/String;

    aput-object v0, v12, v1

    const/4 v0, 0x6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v12, v0

    const/4 v0, 0x7

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v12, v0

    const/16 v0, 0x8

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v12, v0

    const/16 v0, 0x9

    .line 15
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v12, v0

    const-string v0, "\'%s\' shouldShowReferral: %sHas valid account: %s\nIs numeric: %s\n Calling code: [%s - %s]\n Is mobile: %s\n Is hidden: %s\n Is Spam: %s\n Is Truecaller user: %s"

    .line 16
    invoke-static {v0, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-eqz v11, :cond_2

    :goto_1
    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    if-eqz v0, :cond_6

    .line 17
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->v()Lcom/truecaller/data/entity/Number;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 18
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_5

    .line 19
    iget-object v0, p0, Le/a/q4/o0;->o:Le/a/w/c/a;

    invoke-virtual {v0, p1}, Le/a/w/c/a;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    move p1, v3

    goto :goto_5

    :cond_5
    :goto_4
    move p1, v2

    :goto_5
    if-nez p1, :cond_6

    move v3, v2

    :cond_6
    return v3
.end method

.method public e4(Le/a/w/b/c/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast v0, Le/a/q4/m0;

    invoke-interface {v0}, Le/a/q4/m0;->Xg()V

    .line 3
    iget-object p1, p1, Le/a/w/b/c/a;->a:Ljava/lang/String;

    invoke-virtual {p0}, Le/a/q4/o0;->Kj()Lcom/truecaller/referral/ReferralUrl;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Le/a/q4/o0;->Nj(Ljava/lang/String;Lcom/truecaller/referral/ReferralUrl;)V

    return-void
.end method

.method public j8()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/q4/o0;->d:Le/a/w/b/b;

    const-string v1, "referralLink"

    invoke-interface {v0, v1}, Le/a/b0/g/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Le/a/q4/o0$b;->a:Le/a/q4/o0$b;

    iput-object v0, p0, Le/a/q4/o0;->r:Le/a/q4/o0$b;

    .line 4
    iget-object v0, p0, Le/a/q4/o0;->f:Le/a/q4/p0;

    invoke-virtual {v0, p0}, Le/a/q4/p0;->a(Le/a/w/b/a$a;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/q4/m0;

    iget-object v1, p0, Le/a/q4/o0;->d:Le/a/w/b/b;

    const-string v2, "referralCode"

    invoke-interface {v1, v2}, Le/a/b0/g/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Le/a/q4/o0;->Kj()Lcom/truecaller/referral/ReferralUrl;

    move-result-object v2

    iget-object v3, p0, Le/a/q4/o0;->s:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    iget-object v4, p0, Le/a/q4/o0;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Le/a/q4/m0;->Iv(Ljava/lang/String;Lcom/truecaller/referral/ReferralUrl;Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;Ljava/lang/String;)V

    return-void
.end method

.method public oe(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/q4/o0;->b:Ljava/lang/String;

    .line 2
    sget-object p1, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->DEEP_LINK:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    invoke-virtual {p0, p1}, Le/a/q4/o0;->Xa(Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;)V

    return-void
.end method

.method public sx(Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;Lcom/truecaller/data/entity/Contact;)V
    .locals 0

    .line 1
    iput-object p2, p0, Le/a/q4/o0;->t:Lcom/truecaller/data/entity/Contact;

    .line 2
    invoke-virtual {p0, p1}, Le/a/q4/o0;->Xa(Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;)V

    return-void
.end method
