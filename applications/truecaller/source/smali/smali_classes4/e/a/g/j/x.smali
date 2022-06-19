.class public final Le/a/g/j/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/acs/util/AcsReferralHelper;


# instance fields
.field public a:Lcom/truecaller/referral/ReferralManager;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/acs/util/AcsReferralHelper$ReferralLaunchContext;)Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->AFTER_CALL_PROMO:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    goto :goto_0

    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 3
    :cond_1
    sget-object p1, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->AFTER_CALL:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    :goto_0
    return-object p1
.end method

.method public b(Ln3/r/a/l;Lcom/truecaller/acs/util/AcsReferralHelper$ReferralLaunchContext;)Z
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/g/j/x;->a:Lcom/truecaller/referral/ReferralManager;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Le/a/q4/l0;->d:I

    .line 3
    invoke-virtual {p1}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "ReferralManagerImpl"

    invoke-static {p1, v0}, Le/a/q4/l0;->OA(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Lcom/truecaller/referral/ReferralManager;

    move-result-object v0

    .line 4
    iput-object v0, p0, Le/a/g/j/x;->a:Lcom/truecaller/referral/ReferralManager;

    :goto_0
    const/4 p1, 0x1

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, p2}, Le/a/g/j/x;->a(Lcom/truecaller/acs/util/AcsReferralHelper$ReferralLaunchContext;)Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/truecaller/referral/ReferralManager;->Ef(Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;)Z

    move-result p2

    if-ne p2, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
