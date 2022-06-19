.class public final Le/a/m/e0;
.super Le/a/r/b/n;
.source "SourceFile"


# instance fields
.field public final k:Z

.field public final l:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;


# direct methods
.method public constructor <init>(Le/a/b0/b/l/a;Ls1/w/f;Ls1/w/f;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;Le/a/b0/e/f;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p3    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "Async"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "optOutRequester"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiCoroutineContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncCoroutineContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsConfigurationManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regionUtils"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3, p5}, Le/a/r/b/n;-><init>(Le/a/b0/b/l/a;Ls1/w/f;Ls1/w/f;Le/a/b0/e/f;)V

    iput-object p4, p0, Le/a/m/e0;->l:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/a/m/e0;->k:Z

    return-void
.end method


# virtual methods
.method public Jj()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/m/e0;->k:Z

    return v0
.end method

.method public Mj()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/b/i;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/r/b/i;->K0()V

    :cond_0
    return-void
.end method

.method public Pj(Lcom/truecaller/wizard/adschoices/AdsChoice;ZZ)V
    .locals 1

    const-string v0, "choice"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Le/a/r/b/n;->Pj(Lcom/truecaller/wizard/adschoices/AdsChoice;ZZ)V

    if-eqz p3, :cond_1

    .line 2
    sget-object v0, Lcom/truecaller/wizard/adschoices/AdsChoice;->PERSONALIZED_ADS:Lcom/truecaller/wizard/adschoices/AdsChoice;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    .line 3
    sget-object p1, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;->TARGETING:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;->NON_TARGETING:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;

    .line 5
    :goto_0
    iget-object p2, p0, Le/a/m/e0;->l:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;

    invoke-interface {p2, p1}, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;->i(Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;)V

    goto :goto_2

    :cond_1
    if-eqz p3, :cond_3

    .line 6
    sget-object p3, Lcom/truecaller/wizard/adschoices/AdsChoice;->DIRECT_MARKETING:Lcom/truecaller/wizard/adschoices/AdsChoice;

    if-ne p1, p3, :cond_3

    if-eqz p2, :cond_2

    .line 7
    sget-object p1, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;->OPT_IN:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;

    goto :goto_1

    .line 8
    :cond_2
    sget-object p1, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;->OPT_OUT:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;

    .line 9
    :goto_1
    iget-object p2, p0, Le/a/m/e0;->l:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;

    invoke-interface {p2, p1}, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;->c(Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    invoke-super {p0}, Le/a/r/b/n;->c()V

    .line 2
    iget-object v0, p0, Le/a/m/e0;->l:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;

    invoke-interface {v0}, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;->a()V

    return-void
.end method
