.class public final Le/a/c0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/a/c0/f<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final b:Le/a/c0/o;

.field public final c:Le/a/c0/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/c0/c<",
            "Lcom/truecaller/abtest/TwoVariants;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/c0/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/c0/c<",
            "Lcom/truecaller/abtest/TwoVariants;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/a/c0/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/c0/c<",
            "Lcom/truecaller/abtest/TwoVariants;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Le/a/c0/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/c0/c<",
            "Lcom/truecaller/abtest/ThreeVariants;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Le/a/c0/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/c0/c<",
            "Lcom/truecaller/abtest/ThreeVariants;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Le/a/c0/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/c0/c<",
            "Lcom/truecaller/abtest/ThreeVariants;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Le/a/c0/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/c0/c<",
            "Lcom/truecaller/abtest/TwoVariants;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Le/a/c0/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/c0/c<",
            "Lcom/truecaller/abtest/TwoVariants;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Le/a/c0/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/c0/c<",
            "Lcom/truecaller/abtest/TwoVariants;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Le/a/c0/p;

.field public final m:Le/a/c0/e;


# direct methods
.method public constructor <init>(Le/a/c0/p;Le/a/c0/e;)V
    .locals 12
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-class v0, Lcom/truecaller/abtest/ThreeVariants;

    const-class v1, Lcom/truecaller/abtest/TwoVariants;

    const-string v2, "stringExperimentFactory"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "enumExperimentFactory"

    invoke-static {p2, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c0/h;->l:Le/a/c0/p;

    iput-object p2, p0, Le/a/c0/h;->m:Le/a/c0/e;

    .line 2
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v2, p0, Le/a/c0/h;->a:Ljava/util/Set;

    .line 3
    new-instance v3, Le/a/c0/g;

    const-string v4, "Premium pricing test"

    const-string v5, "PremiumPricingVariant_21771"

    const-string v6, ""

    invoke-direct {v3, v4, v5, v6, v6}, Le/a/c0/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    check-cast p1, Le/a/i1;

    .line 5
    iget-object p1, p1, Le/a/i1;->a:Le/a/r1;

    .line 6
    iget-object p1, p1, Le/a/r1;->P:Le/a/r1;

    .line 7
    new-instance v4, Le/a/c0/o;

    invoke-virtual {p1}, Le/a/r1;->K0()Le/a/s4/a;

    move-result-object v5

    iget-object p1, p1, Le/a/r1;->h0:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/q2/d1/d;

    invoke-direct {v4, v3, v5, p1}, Le/a/c0/o;-><init>(Le/a/c0/g;Le/a/s4/a;Le/a/q2/d1/d;)V

    .line 8
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    iput-object v4, p0, Le/a/c0/h;->b:Le/a/c0/o;

    .line 10
    new-instance p1, Le/a/c0/d;

    const-string v7, "Show WhatsApp Caller ID"

    const-string v8, "showFeatureWhatsappCallerId_35775"

    const-string v9, "premiumTabV2_35775_seen"

    const-string v10, "premiumTabV2_35775_conv"

    const/4 v11, 0x1

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Le/a/c0/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 11
    invoke-virtual {p2, p1, v1}, Le/a/c0/e;->a(Le/a/c0/d;Ljava/lang/Class;)Le/a/c0/c;

    move-result-object p1

    .line 12
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Le/a/c0/h;->c:Le/a/c0/c;

    .line 13
    new-instance p1, Le/a/c0/d;

    const-string v4, "Show temporary promo card"

    const-string v5, "showTemporaryPromoCard_34008"

    const-string v6, "premiumTemporaryCard_34008_seen"

    const-string v7, "premiumTemporaryCard_34008_conv"

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Le/a/c0/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14
    invoke-virtual {p2, p1, v1}, Le/a/c0/e;->a(Le/a/c0/d;Ljava/lang/Class;)Le/a/c0/c;

    move-result-object p1

    .line 15
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Le/a/c0/h;->d:Le/a/c0/c;

    .line 16
    new-instance p1, Le/a/c0/d;

    const-string v4, "Show promo banner on WVM screen"

    const-string v5, "WVMPromotionBannerShown_36331"

    const-string v6, "ab_test_wvm_paywall_seen_36331"

    const-string v7, "ab_test_wvm_paywall_conv_36331"

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Le/a/c0/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 17
    invoke-virtual {p2, p1, v1}, Le/a/c0/e;->a(Le/a/c0/d;Ljava/lang/Class;)Le/a/c0/c;

    move-result-object p1

    .line 18
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Le/a/c0/h;->e:Le/a/c0/c;

    .line 19
    new-instance p1, Le/a/c0/d;

    const-string v4, "Reveal Single Profile View on WVM screen"

    const-string v5, "WVMRevealProfileView_35790"

    const-string v6, "ab_test_wvm_paywall_seen_35790"

    const-string v7, "ab_test_wvm_paywall_conv_35790"

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Le/a/c0/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 20
    invoke-virtual {p2, p1, v0}, Le/a/c0/e;->a(Le/a/c0/d;Ljava/lang/Class;)Le/a/c0/c;

    move-result-object p1

    .line 21
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Le/a/c0/h;->f:Le/a/c0/c;

    .line 22
    new-instance p1, Le/a/c0/d;

    const-string v4, "Show onboarding popup to the new users"

    const-string v5, "OnBoardingPremiumPopupNewUsers_31778"

    const-string v6, "OnBoardingPremiumPopupNewUser_31778_seen"

    const-string v7, "OnBoardingPremiumPopupNewUser_31778_conv"

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Le/a/c0/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 23
    invoke-virtual {p2, p1, v0}, Le/a/c0/e;->a(Le/a/c0/d;Ljava/lang/Class;)Le/a/c0/c;

    move-result-object p1

    .line 24
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Le/a/c0/h;->g:Le/a/c0/c;

    .line 25
    new-instance p1, Le/a/c0/d;

    const-string v4, "Try out different notification content to convert people to user Inbox Cleaner"

    const-string v5, "inboxCleanupVariant_38157"

    const-string v6, "ab_test_ci_notification_generated_38157"

    const-string v7, "ab_test_ci_notification_opened_38157"

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Le/a/c0/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 26
    invoke-virtual {p2, p1, v0}, Le/a/c0/e;->a(Le/a/c0/d;Ljava/lang/Class;)Le/a/c0/c;

    move-result-object p1

    .line 27
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Le/a/c0/h;->h:Le/a/c0/c;

    .line 28
    new-instance p1, Le/a/c0/d;

    const-string v4, "Video caller id onboarding title test"

    const-string v5, "videoCallerIdOnboardingTitle_38248"

    const-string v6, "videoCallerIdOnboardingTitle_38248_seen"

    const-string v7, "videoCallerIdOnboardingTitle_38248_conv"

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Le/a/c0/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 29
    invoke-virtual {p2, p1, v1}, Le/a/c0/e;->a(Le/a/c0/d;Ljava/lang/Class;)Le/a/c0/c;

    move-result-object p1

    .line 30
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Le/a/c0/h;->i:Le/a/c0/c;

    .line 31
    new-instance p1, Le/a/c0/d;

    const-string v4, "Caller id banner at promo section"

    const-string v5, "featureCallerIdBannerVariant_38706"

    const-string v6, "featureCallerIdBannerVariant_38706_seen"

    const-string v7, "featureCallerIdBannerVariant_38706_conv"

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Le/a/c0/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 32
    invoke-virtual {p2, p1, v1}, Le/a/c0/e;->a(Le/a/c0/d;Ljava/lang/Class;)Le/a/c0/c;

    move-result-object p1

    .line 33
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Le/a/c0/h;->j:Le/a/c0/c;

    .line 34
    new-instance p1, Le/a/c0/d;

    const-string v4, "Premium spam summary stats card test"

    const-string v5, "ShowSpamSummaryCard_38029"

    const-string v6, "premiumSpamSummaryCard_38029_seen"

    const-string v7, "premiumSpamSummaryCard_38029_conv"

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Le/a/c0/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 35
    invoke-virtual {p2, p1, v1}, Le/a/c0/e;->a(Le/a/c0/d;Ljava/lang/Class;)Le/a/c0/c;

    move-result-object p1

    .line 36
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Le/a/c0/h;->k:Le/a/c0/c;

    return-void
.end method
