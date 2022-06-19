.class public final Le/a/v4/s0/m/a/e;
.super Le/a/v4/s0/m/a/d;
.source "SourceFile"


# instance fields
.field public b:Le/a/v4/s0/b;

.field public c:Le/a/t/b/e/b;

.field public d:Ljava/util/Locale;

.field public final e:Ls1/w/f;

.field public final f:Landroid/content/pm/PackageManager;

.field public final g:Le/a/v4/v;

.field public final h:Le/a/b0/o/a;

.field public final i:Le/a/b0/e/r/a;

.field public final j:Le/a/v4/a0;

.field public final k:Le/a/v4/a;

.field public final l:Le/a/p5/h0;

.field public final m:Le/a/v4/s0/l/b;

.field public final n:Le/a/v4/l;


# direct methods
.method public constructor <init>(Ls1/w/f;Landroid/content/pm/PackageManager;Le/a/v4/v;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/v4/a0;Le/a/v4/a;Le/a/p5/h0;Le/a/v4/s0/l/b;Le/a/v4/l;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkAccountManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkLocaleManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityHelper"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "themedResourceProvider"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oAuthNetworkManager"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTrackerHolder"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/v4/s0/m/a/d;-><init>()V

    iput-object p1, p0, Le/a/v4/s0/m/a/e;->e:Ls1/w/f;

    iput-object p2, p0, Le/a/v4/s0/m/a/e;->f:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Le/a/v4/s0/m/a/e;->g:Le/a/v4/v;

    iput-object p4, p0, Le/a/v4/s0/m/a/e;->h:Le/a/b0/o/a;

    iput-object p5, p0, Le/a/v4/s0/m/a/e;->i:Le/a/b0/e/r/a;

    iput-object p6, p0, Le/a/v4/s0/m/a/e;->j:Le/a/v4/a0;

    iput-object p7, p0, Le/a/v4/s0/m/a/e;->k:Le/a/v4/a;

    iput-object p8, p0, Le/a/v4/s0/m/a/e;->l:Le/a/p5/h0;

    iput-object p9, p0, Le/a/v4/s0/m/a/e;->m:Le/a/v4/s0/l/b;

    iput-object p10, p0, Le/a/v4/s0/m/a/e;->n:Le/a/v4/l;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/v4/s0/m/a/f;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/v4/e;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/v4/s0/m/a/e;->b:Le/a/v4/s0/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/v4/s0/f;->o(Le/a/v4/s0/m/a/f;)V

    return-void

    :cond_0
    const-string p1, "oAuthSdkPartner"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/v4/e;->a:Ljava/lang/Object;

    .line 2
    iget-object v1, p0, Le/a/v4/s0/m/a/e;->b:Le/a/v4/s0/b;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Le/a/v4/s0/f;->c()V

    return-void

    :cond_0
    const-string v1, "oAuthSdkPartner"

    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    const-string v0, "newLanguage"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v4/s0/m/a/e;->b:Le/a/v4/s0/b;

    const/4 v1, 0x0

    const-string v2, "oAuthSdkPartner"

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/v4/p0/b$a;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/v4/s0/m/a/e;->b:Le/a/v4/s0/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/v4/s0/f;->v(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void

    .line 3
    :cond_2
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public d(Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;)V
    .locals 12

    const-string v0, "partnerDetails"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v4/e;->a:Ljava/lang/Object;

    .line 2
    check-cast v0, Le/a/v4/s0/m/a/f;

    if-eqz v0, :cond_14

    .line 3
    iget-object v1, p0, Le/a/v4/s0/m/a/e;->c:Le/a/t/b/e/b;

    if-eqz v1, :cond_14

    .line 4
    iget-object v2, p0, Le/a/v4/s0/m/a/e;->b:Le/a/v4/s0/b;

    const/4 v3, 0x0

    if-eqz v2, :cond_13

    invoke-interface {v2}, Le/a/v4/s0/f;->g()Lcom/truecaller/android/sdk/TrueProfile;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/a/l4/k;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Le/a/v4/s0/m/a/f;->g6(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;->getAppLogoUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "Uri.parse(it)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Le/a/v4/s0/m/a/f;->p4(Landroid/net/Uri;)V

    .line 7
    :cond_0
    iget-object v4, v1, Le/a/t/b/e/b;->b:Lcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;

    const-string v5, "sdkOptionsEvaluatorTemp.sdkOptionsDataBundle"

    .line 8
    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget v4, v4, Lcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;->a:I

    if-eqz v4, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v4, p0, Le/a/v4/s0/m/a/e;->l:Le/a/p5/h0;

    sget v6, Lcom/truecaller/sdk/R$color;->primary_dark:I

    invoke-interface {v4, v6}, Le/a/p5/c0;->a(I)I

    move-result v4

    .line 11
    :goto_0
    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3eb33333    # 0.35f

    mul-float/2addr v6, v7

    invoke-static {v6}, Le/q/f/a/d/a;->J2(F)I

    move-result v6

    .line 12
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    .line 13
    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    .line 14
    invoke-interface {v0, v6}, Le/a/v4/s0/m/a/f;->Q1(I)V

    .line 15
    invoke-interface {v0, v4}, Le/a/v4/s0/m/a/f;->X3(I)V

    .line 16
    invoke-interface {v0, v4}, Le/a/v4/s0/m/a/f;->z1(I)V

    .line 17
    invoke-interface {v0}, Le/a/v4/s0/m/a/f;->N5()V

    .line 18
    invoke-virtual {p1}, Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;->getAppName()Ljava/lang/String;

    move-result-object v4

    .line 19
    iget-object v6, p0, Le/a/v4/s0/m/a/e;->l:Le/a/p5/h0;

    .line 20
    sget v7, Lcom/truecaller/sdk/R$array;->SdkPartnerLoginIntentOptionsArray:I

    invoke-interface {v6, v7}, Le/a/p5/c0;->i(I)[Ljava/lang/String;

    move-result-object v6

    .line 21
    iget-object v7, p0, Le/a/v4/s0/m/a/e;->c:Le/a/t/b/e/b;

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    .line 22
    iget-object v7, v7, Le/a/t/b/e/b;->b:Lcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;

    if-eqz v7, :cond_2

    .line 23
    iget v7, v7, Lcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;->c:I

    goto :goto_1

    :cond_2
    move v7, v8

    .line 24
    :goto_1
    aget-object v6, v6, v7

    const-string v7, "themedResourceProvider\n \u2026)[getConsentTitleIndex()]"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x1

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v4, v9, v8

    .line 25
    invoke-static {v9, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "java.lang.String.format(format, *args)"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-interface {v0, v4}, Le/a/v4/s0/m/a/f;->X9(Ljava/lang/String;)V

    const/4 v4, 0x2

    new-array v9, v4, [Ljava/lang/CharSequence;

    .line 27
    iget-object v10, v2, Lcom/truecaller/android/sdk/TrueProfile;->firstName:Ljava/lang/String;

    aput-object v10, v9, v8

    iget-object v10, v2, Lcom/truecaller/android/sdk/TrueProfile;->lastName:Ljava/lang/String;

    aput-object v10, v9, v7

    const-string v10, " "

    invoke-static {v10, v9}, Le/a/p5/g0;->D(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "StringUtils.combine(\" \",\u2026me, trueProfile.lastName)"

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-interface {v0, v9}, Le/a/v4/s0/m/a/f;->i6(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Le/m/f/a/j;->q()Le/m/f/a/j;

    move-result-object v9

    .line 30
    :try_start_0
    iget-object v10, v2, Lcom/truecaller/android/sdk/TrueProfile;->phoneNumber:Ljava/lang/String;

    iget-object v11, v2, Lcom/truecaller/android/sdk/TrueProfile;->countryCode:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Le/m/f/a/j;->R(Ljava/lang/CharSequence;Ljava/lang/String;)Le/m/f/a/o;

    move-result-object v9

    const-string v10, "phoneNumberUtil.parse(tr\u2026 trueProfile.countryCode)"

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Le/m/f/a/e; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    iget-wide v9, v9, Le/m/f/a/o;->d:J

    .line 32
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 33
    :catch_0
    iget-object v2, v2, Lcom/truecaller/android/sdk/TrueProfile;->phoneNumber:Ljava/lang/String;

    const-string v9, "trueProfile.phoneNumber"

    invoke-static {v2, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    :goto_2
    invoke-interface {v0, v2}, Le/a/v4/s0/m/a/f;->t9(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1}, Le/a/t/b/e/b;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 36
    sget v2, Lcom/truecaller/sdk/R$drawable;->background_confirm_button:I

    goto :goto_3

    .line 37
    :cond_3
    sget v2, Lcom/truecaller/sdk/R$drawable;->background_rounded_confirm_button:I

    .line 38
    :goto_3
    invoke-interface {v0, v2}, Le/a/v4/s0/m/a/f;->V3(I)V

    .line 39
    iget-object v2, v1, Le/a/t/b/e/b;->b:Lcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;

    .line 40
    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v5, p0, Le/a/v4/s0/m/a/e;->l:Le/a/p5/h0;

    sget v9, Lcom/truecaller/sdk/R$array;->SdkPartnerCTAOptionsArray:I

    invoke-interface {v5, v9}, Le/a/p5/c0;->i(I)[Ljava/lang/String;

    move-result-object v5

    .line 42
    iget v9, v2, Lcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;->d:I

    .line 43
    aget-object v5, v5, v9

    .line 44
    iget-object v9, p0, Le/a/v4/e;->a:Ljava/lang/Object;

    .line 45
    check-cast v9, Le/a/v4/s0/m/a/f;

    if-eqz v9, :cond_6

    .line 46
    iget v10, v2, Lcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;->a:I

    if-eqz v10, :cond_4

    goto :goto_4

    .line 47
    :cond_4
    iget-object v10, p0, Le/a/v4/s0/m/a/e;->l:Le/a/p5/h0;

    sget v11, Lcom/truecaller/sdk/R$color;->primary_dark:I

    invoke-interface {v10, v11}, Le/a/p5/c0;->a(I)I

    move-result v10

    .line 48
    :goto_4
    iget v2, v2, Lcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;->b:I

    if-eqz v2, :cond_5

    goto :goto_5

    .line 49
    :cond_5
    iget-object v2, p0, Le/a/v4/s0/m/a/e;->l:Le/a/p5/h0;

    sget v11, Lcom/truecaller/sdk/R$color;->white:I

    invoke-interface {v2, v11}, Le/a/p5/c0;->a(I)I

    move-result v2

    :goto_5
    const-string v11, "buttonText"

    .line 50
    invoke-static {v5, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9, v10, v2, v5}, Le/a/v4/s0/m/a/f;->P6(IILjava/lang/String;)V

    .line 51
    :cond_6
    invoke-virtual {p1}, Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;->getScopes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Le/a/v4/s0/m/a/f;->C6(Ljava/util/List;)V

    .line 52
    iget-object v2, v1, Le/a/t/b/e/b;->b:Lcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;

    if-eqz v2, :cond_7

    .line 53
    iget v2, v2, Lcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;->e:I

    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_7
    invoke-virtual {p1}, Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;->getAppName()Ljava/lang/String;

    move-result-object v2

    .line 55
    iget-object v5, p0, Le/a/v4/s0/m/a/e;->l:Le/a/p5/h0;

    sget v9, Lcom/truecaller/sdk/R$array;->SdkPartnerLoginPrefixOptionsArray:I

    invoke-interface {v5, v9}, Le/a/p5/c0;->i(I)[Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_6

    :cond_8
    move v3, v7

    :goto_6
    aget-object v3, v5, v3

    .line 56
    iget-object v5, p0, Le/a/v4/s0/m/a/e;->l:Le/a/p5/h0;

    sget v9, Lcom/truecaller/sdk/R$string;->SdkInfo:I

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v2, v10, v8

    invoke-interface {v5, v9, v10}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "themedResourceProvider.g\u2026ing.SdkInfo, partnerName)"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v5, v8, v2, v6}, Le/d/c/a/a;->v([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/CharSequence;

    aput-object v3, v4, v8

    aput-object v2, v4, v7

    const-string v2, ", "

    .line 57
    invoke-static {v2, v4}, Le/a/p5/g0;->D(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "StringUtils.combine(\", \", prefix, suffix)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-interface {v0, v2}, Le/a/v4/s0/m/a/f;->E6(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;->getPrivacyPolicyUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-static {v2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_7

    :cond_9
    move v2, v8

    goto :goto_8

    :cond_a
    :goto_7
    move v2, v7

    :goto_8
    if-nez v2, :cond_b

    .line 60
    invoke-virtual {p1}, Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;->getPrivacyPolicyUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Le/a/v4/s0/m/a/f;->y8(Ljava/lang/String;)V

    .line 61
    :cond_b
    invoke-virtual {p1}, Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;->getTosUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-static {v2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_9

    :cond_c
    move v2, v8

    goto :goto_a

    :cond_d
    :goto_9
    move v2, v7

    :goto_a
    if-nez v2, :cond_e

    .line 62
    invoke-virtual {p1}, Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;->getTosUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/v4/s0/m/a/f;->q9(Ljava/lang/String;)V

    .line 63
    :cond_e
    iget-object p1, p0, Le/a/v4/s0/m/a/e;->l:Le/a/p5/h0;

    .line 64
    invoke-virtual {v1, v7}, Le/a/t/b/e/b;->b(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 65
    sget v1, Lcom/truecaller/sdk/R$string;->SdkSkip:I

    goto :goto_b

    :cond_f
    const/4 v2, 0x4

    .line 66
    invoke-virtual {v1, v2}, Le/a/t/b/e/b;->b(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 67
    sget v1, Lcom/truecaller/sdk/R$string;->SdkUseAnotherMethod:I

    goto :goto_b

    :cond_10
    const/16 v2, 0x8

    .line 68
    invoke-virtual {v1, v2}, Le/a/t/b/e/b;->b(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 69
    sget v1, Lcom/truecaller/sdk/R$string;->SdkEnterDetailsManually:I

    goto :goto_b

    :cond_11
    const/16 v2, 0x10

    .line 70
    invoke-virtual {v1, v2}, Le/a/t/b/e/b;->b(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 71
    sget v1, Lcom/truecaller/sdk/R$string;->SdkWillDoLater:I

    goto :goto_b

    .line 72
    :cond_12
    sget v1, Lcom/truecaller/sdk/R$string;->SdkUseDifferentNumber:I

    :goto_b
    new-array v2, v8, [Ljava/lang/Object;

    .line 73
    invoke-interface {p1, v1, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "themedResourceProvider.g\u2026r\n            }\n        )"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-interface {v0, p1}, Le/a/v4/s0/m/a/f;->R1(Ljava/lang/String;)V

    return-void

    :cond_13
    const-string p1, "oAuthSdkPartner"

    .line 75
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    :cond_14
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/s0/m/a/e;->b:Le/a/v4/s0/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/v4/s0/f;->onBackPressed()V

    return-void

    :cond_0
    const-string v0, "oAuthSdkPartner"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public f(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/s0/m/a/e;->b:Le/a/v4/s0/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/v4/s0/f;->q(I)V

    return-void

    :cond_0
    const-string p1, "oAuthSdkPartner"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public g(Landroid/os/Bundle;)Z
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "sdkKeySaveInstance"

    .line 1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/v4/s0/m/a/e;->k:Le/a/v4/a;

    .line 3
    iget-object p1, p1, Le/a/v4/a;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    move-object v3, p1

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_3

    const-string p1, "savedInstanceState?.getB\u2026          ?: return false"

    .line 4
    invoke-static {v3, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Le/a/v4/s0/m/a/e;->e:Ls1/w/f;

    .line 6
    iget-object v4, p0, Le/a/v4/s0/m/a/e;->h:Le/a/b0/o/a;

    .line 7
    iget-object v5, p0, Le/a/v4/s0/m/a/e;->i:Le/a/b0/e/r/a;

    .line 8
    iget-object v6, p0, Le/a/v4/s0/m/a/e;->f:Landroid/content/pm/PackageManager;

    .line 9
    iget-object v7, p0, Le/a/v4/s0/m/a/e;->g:Le/a/v4/v;

    .line 10
    iget-object v8, p0, Le/a/v4/s0/m/a/e;->m:Le/a/v4/s0/l/b;

    .line 11
    iget-object v9, p0, Le/a/v4/s0/m/a/e;->j:Le/a/v4/a0;

    .line 12
    iget-object v10, p0, Le/a/v4/s0/m/a/e;->n:Le/a/v4/l;

    const-string p1, "uiContext"

    .line 13
    invoke-static {v2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "extras"

    invoke-static {v3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "coreSettings"

    invoke-static {v4, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "accountSettings"

    invoke-static {v5, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "packageManager"

    invoke-static {v6, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sdkAccountManager"

    invoke-static {v7, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "oAuthNetworkManager"

    invoke-static {v8, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sdkLocaleManager"

    invoke-static {v9, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "eventsTrackerHolder"

    invoke-static {v10, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance p1, Le/a/v4/s0/e;

    move-object v1, p1

    invoke-direct/range {v1 .. v10}, Le/a/v4/s0/e;-><init>(Ls1/w/f;Landroid/os/Bundle;Le/a/b0/o/a;Le/a/b0/e/r/a;Landroid/content/pm/PackageManager;Le/a/v4/v;Le/a/v4/s0/l/b;Le/a/v4/a0;Le/a/v4/l;)V

    .line 15
    iput-object p1, p0, Le/a/v4/s0/m/a/e;->b:Le/a/v4/s0/b;

    .line 16
    iget-object v1, p0, Le/a/v4/s0/m/a/e;->k:Le/a/v4/a;

    .line 17
    iget-object v1, v1, Le/a/v4/a;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "activity.resources"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 18
    invoke-virtual {p1, v1}, Le/a/v4/s0/g;->q(I)V

    .line 19
    iget-object p1, p0, Le/a/v4/s0/m/a/e;->b:Le/a/v4/s0/b;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/v4/s0/f;->w()Le/a/t/b/e/b;

    move-result-object p1

    iput-object p1, p0, Le/a/v4/s0/m/a/e;->c:Le/a/t/b/e/b;

    const/4 p1, 0x1

    return p1

    :cond_2
    const-string p1, "oAuthSdkPartner"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/s0/m/a/e;->b:Le/a/v4/s0/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/v4/s0/f;->n()V

    return-void

    :cond_0
    const-string v0, "oAuthSdkPartner"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public i()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/v4/e;->a:Ljava/lang/Object;

    .line 2
    check-cast v0, Le/a/v4/s0/m/a/f;

    if-eqz v0, :cond_7

    .line 3
    iget-object v1, p0, Le/a/v4/s0/m/a/e;->j:Le/a/v4/a0;

    invoke-virtual {v1}, Le/a/v4/a0;->a()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Le/a/v4/s0/m/a/e;->d:Ljava/util/Locale;

    .line 4
    sget-object v1, Le/a/v4/s0/a;->c:Le/a/v4/s0/a;

    .line 5
    sget-object v1, Le/a/v4/s0/a;->b:Ljava/util/List;

    .line 6
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "oAuthSdkPartner"

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/b0/k/c;

    iget-object v6, p0, Le/a/v4/s0/m/a/e;->b:Le/a/v4/s0/b;

    if-eqz v6, :cond_1

    invoke-interface {v6}, Le/a/v4/p0/b$a;->u()Ljava/lang/String;

    move-result-object v6

    .line 7
    iget-object v5, v5, Le/a/b0/k/c;->b:Ljava/lang/String;

    .line 8
    invoke-static {v6, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_2
    move-object v2, v4

    :goto_0
    check-cast v2, Le/a/b0/k/c;

    if-eqz v2, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    sget-object v1, Le/a/v4/s0/a;->c:Le/a/v4/s0/a;

    .line 10
    sget-object v2, Le/a/v4/s0/a;->a:Le/a/b0/k/c;

    .line 11
    :goto_1
    iget-object v1, v2, Le/a/b0/k/c;->a:Ljava/lang/String;

    .line 12
    invoke-static {v1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 13
    iget-object v1, p0, Le/a/v4/s0/m/a/e;->j:Le/a/v4/a0;

    new-instance v5, Ljava/util/Locale;

    .line 14
    iget-object v6, v2, Le/a/b0/k/c;->b:Ljava/lang/String;

    .line 15
    invoke-direct {v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Le/a/v4/a0;->b(Ljava/util/Locale;)V

    .line 16
    :cond_4
    iget-object v1, p0, Le/a/v4/e;->a:Ljava/lang/Object;

    .line 17
    check-cast v1, Le/a/v4/s0/m/a/f;

    if-eqz v1, :cond_5

    .line 18
    iget-object v2, v2, Le/a/b0/k/c;->a:Ljava/lang/String;

    .line 19
    invoke-interface {v1, v2}, Le/a/v4/s0/m/a/f;->n6(Ljava/lang/String;)V

    .line 20
    :cond_5
    invoke-interface {v0}, Le/a/v4/s0/m/a/f;->g0()V

    .line 21
    iget-object v0, p0, Le/a/v4/s0/m/a/e;->b:Le/a/v4/s0/b;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Le/a/v4/s0/f;->h()V

    return-void

    :cond_6
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_7
    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/s0/m/a/e;->b:Le/a/v4/s0/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/v4/s0/f;->a()V

    return-void

    :cond_0
    const-string v0, "oAuthSdkPartner"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public k(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "outState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v4/s0/m/a/e;->b:Le/a/v4/s0/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/v4/s0/f;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void

    :cond_0
    const-string p1, "oAuthSdkPartner"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public l()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/v4/s0/m/a/e;->j:Le/a/v4/a0;

    invoke-virtual {v0}, Le/a/v4/a0;->a()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Le/a/v4/s0/m/a/e;->b:Le/a/v4/s0/b;

    const/4 v2, 0x0

    const-string v3, "oAuthSdkPartner"

    if-eqz v1, :cond_2

    invoke-interface {v1}, Le/a/v4/s0/f;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/v4/s0/m/a/e;->j:Le/a/v4/a0;

    iget-object v1, p0, Le/a/v4/s0/m/a/e;->b:Le/a/v4/s0/b;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Le/a/v4/s0/f;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/v4/a0;->b(Ljava/util/Locale;)V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    return-void

    .line 3
    :cond_2
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public m()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v4/s0/m/a/e;->d:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/v4/s0/m/a/e;->j:Le/a/v4/a0;

    invoke-virtual {v1, v0}, Le/a/v4/a0;->b(Ljava/util/Locale;)V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/s0/m/a/e;->b:Le/a/v4/s0/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/v4/s0/f;->e()V

    return-void

    :cond_0
    const-string v0, "oAuthSdkPartner"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "interactionType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v4/s0/m/a/e;->b:Le/a/v4/s0/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Le/a/v4/s0/f;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "oAuthSdkPartner"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public p()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/s0/m/a/e;->b:Le/a/v4/s0/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/v4/s0/f;->s()V

    return-void

    :cond_0
    const-string v0, "oAuthSdkPartner"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
