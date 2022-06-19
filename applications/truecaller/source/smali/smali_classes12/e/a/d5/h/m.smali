.class public final Le/a/d5/h/m;
.super Le/a/d5/h/q;
.source "SourceFile"


# instance fields
.field public final j:Lcom/truecaller/startup_dialogs/StartupDialogType;

.field public final k:Le/a/z4/d;

.field public final l:Le/a/u3/g;

.field public final m:Le/a/b0/q/l0;

.field public final n:Le/a/l/p2/a1;

.field public final o:Le/a/l/a/y;

.field public final p:Le/a/l/a2;

.field public final q:Le/a/l/p2/c0;

.field public final r:Le/a/l/p2/v0;

.field public final s:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/z4/d;Le/a/u3/g;Le/a/b0/q/l0;Le/a/o5/b0;Le/a/l/p2/a1;Le/a/l/a/y;Le/a/l/a2;Le/a/l/p2/c0;Le/a/l/p2/v0;Ls1/w/f;)V
    .locals 16
    .param p10    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    const-string v0, "generalSettings"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestampUtil"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumSubscriptionProblemHelper"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumPurchaseSupportedCheck"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumScreenNavigator"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumDataPrefetcher"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, v8, Le/a/u3/g;->Q1:Le/a/u3/g$a;

    sget-object v1, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v2, 0x92

    aget-object v1, v1, v2

    invoke-virtual {v0, v8, v1}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Le/a/u3/i;

    const-string v2, "feature_pro_promo_popup_last_time"

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p1

    .line 2
    invoke-direct/range {v0 .. v5}, Le/a/d5/h/q;-><init>(Le/a/u3/i;Ljava/lang/String;Le/a/b0/q/l0;Le/a/z4/d;Le/a/o5/b0;)V

    iput-object v7, v6, Le/a/d5/h/m;->k:Le/a/z4/d;

    iput-object v8, v6, Le/a/d5/h/m;->l:Le/a/u3/g;

    iput-object v9, v6, Le/a/d5/h/m;->m:Le/a/b0/q/l0;

    iput-object v10, v6, Le/a/d5/h/m;->n:Le/a/l/p2/a1;

    iput-object v11, v6, Le/a/d5/h/m;->o:Le/a/l/a/y;

    iput-object v12, v6, Le/a/d5/h/m;->p:Le/a/l/a2;

    iput-object v13, v6, Le/a/d5/h/m;->q:Le/a/l/p2/c0;

    iput-object v14, v6, Le/a/d5/h/m;->r:Le/a/l/p2/v0;

    iput-object v15, v6, Le/a/d5/h/m;->s:Ls1/w/f;

    .line 3
    sget-object v0, Lcom/truecaller/startup_dialogs/StartupDialogType;->POPUP_PREMIUM_PROMO:Lcom/truecaller/startup_dialogs/StartupDialogType;

    iput-object v0, v6, Le/a/d5/h/m;->j:Lcom/truecaller/startup_dialogs/StartupDialogType;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 6

    const-string v0, "fromActivity"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/d5/h/m;->p:Le/a/l/a2;

    .line 2
    sget-object v1, Lcom/truecaller/premium/PremiumLaunchContext;->ONCE_PER_MONTH_POPUP:Lcom/truecaller/premium/PremiumLaunchContext;

    .line 3
    invoke-virtual {p0}, Le/a/d5/h/q;->p()Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v3, Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;

    const-string v4, "UUID.randomUUID().toString()"

    .line 5
    invoke-static {v4}, Le/d/c/a/a;->e2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 6
    invoke-direct {v3, v4, v5}, Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-interface {v0, p1, v1, v2, v3}, Le/a/l/a2;->c(Landroid/content/Context;Lcom/truecaller/premium/PremiumLaunchContext;Ljava/lang/String;Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/truecaller/startup_dialogs/StartupDialogType;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d5/h/m;->j:Lcom/truecaller/startup_dialogs/StartupDialogType;

    return-object v0
.end method

.method public e(Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/d5/h/m$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/d5/h/m$a;

    iget v1, v0, Le/a/d5/h/m$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d5/h/m$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d5/h/m$a;

    invoke-direct {v0, p0, p1}, Le/a/d5/h/m$a;-><init>(Le/a/d5/h/m;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/d5/h/m$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d5/h/m$a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Le/a/d5/h/m$a;->g:Ljava/lang/Object;

    check-cast v0, Le/a/d5/h/m;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Le/a/d5/h/m$a;->g:Ljava/lang/Object;

    check-cast v2, Le/a/d5/h/m;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Le/a/d5/h/m$a;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/d5/h/m$a;->e:I

    invoke-super {p0, v0}, Le/a/d5/h/q;->e(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5

    .line 5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 6
    :cond_5
    iput-object v2, v0, Le/a/d5/h/m$a;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/d5/h/m$a;->e:I

    .line 7
    iget-object p1, v2, Le/a/d5/h/m;->s:Ls1/w/f;

    new-instance v3, Le/a/d5/h/l;

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5}, Le/a/d5/h/l;-><init>(Le/a/d5/h/m;Ls1/w/d;)V

    invoke-static {p1, v3, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object v0, v2

    .line 8
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 9
    iget-object v1, v0, Le/a/d5/h/m;->k:Le/a/z4/d;

    const-string v2, "general_onboarding_premium_shown"

    invoke-interface {v1, v2}, Le/a/z4/d;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 10
    iget-object v0, v0, Le/a/d5/h/m;->k:Le/a/z4/d;

    invoke-interface {v0, v2, v4}, Le/a/z4/d;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    :cond_7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public n()I
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/d5/h/m;->l:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->j2:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0xa5

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    const/4 v1, -0x1

    .line 3
    invoke-interface {v0, v1}, Le/a/u3/i;->getInt(I)I

    move-result v0

    return v0
.end method

.method public q()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d5/h/m;->k:Le/a/z4/d;

    const-string v1, "feature_premium_promo_popup_shown_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Le/a/z4/d;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public r()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/d5/h/m;->w()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d5/h/m;->n:Le/a/l/p2/a1;

    invoke-virtual {v0}, Le/a/l/p2/a1;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public t()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d5/h/m;->k:Le/a/z4/d;

    const-string v1, "feature_premium_promo_popup_shown_count"

    invoke-interface {v0, v1}, Le/a/z4/d;->l(Ljava/lang/String;)I

    return-void
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d5/h/m;->r:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/d5/h/m;->o:Le/a/l/a/y;

    invoke-virtual {v0}, Le/a/l/a/y;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Le/a/d5/h/m;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/d5/h/m;->l:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->i2:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0xa4

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    .line 3
    invoke-interface {v0}, Le/a/u3/i;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public final w()Z
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/d5/h/m;->r:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Le/a/d5/h/m;->n:Le/a/l/p2/a1;

    invoke-virtual {v0}, Le/a/l/p2/a1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    move v0, v2

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/d5/h/m;->n:Le/a/l/p2/a1;

    invoke-virtual {v0}, Le/a/l/p2/a1;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lw3/b/a/b;

    iget-object v3, p0, Le/a/d5/h/m;->r:Le/a/l/p2/v0;

    invoke-interface {v3}, Le/a/l/p2/v0;->w0()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Lw3/b/a/b;-><init>(J)V

    invoke-virtual {v0, v2}, Lw3/b/a/b;->z(I)Lw3/b/a/b;

    move-result-object v0

    iget-object v3, p0, Le/a/d5/h/m;->m:Le/a/b0/q/l0;

    invoke-virtual {v3}, Le/a/b0/q/l0;->c()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lw3/b/a/e0/c;->h(J)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method
