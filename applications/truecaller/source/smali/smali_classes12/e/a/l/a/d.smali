.class public final Le/a/l/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/a/c;


# instance fields
.field public final a:Le/a/p5/c0;


# direct methods
.method public constructor <init>(Le/a/p5/c0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/a/d;->a:Le/a/p5/c0;

    return-void
.end method


# virtual methods
.method public a(Le/a/l/n2/f;ZI)Le/a/l/v2/i/a/a;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "subscription"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v1, Le/a/l/n2/f;->f:Ljava/lang/String;

    .line 2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v2, :cond_1

    .line 3
    iget-object v2, v1, Le/a/l/n2/f;->c:Ljava/lang/String;

    move-object v7, v2

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-eqz p2, :cond_2

    .line 4
    iget-object v2, v0, Le/a/l/a/d;->a:Le/a/p5/c0;

    sget v6, Lcom/truecaller/premium/R$string;->PremiumSubscriptionProrationNote:I

    new-array v8, v4, [Ljava/lang/Object;

    invoke-interface {v2, v6, v8}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 5
    :goto_2
    iget-object v6, v1, Le/a/l/n2/f;->f:Ljava/lang/String;

    .line 6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    move v6, v3

    goto :goto_3

    :cond_3
    move v6, v4

    :goto_3
    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x6

    const/4 v11, 0x3

    if-eqz v6, :cond_9

    .line 7
    iget-object v6, v1, Le/a/l/n2/f;->j:Lw3/b/a/u;

    if-eqz v6, :cond_9

    .line 8
    iget-object v6, v0, Le/a/l/a/d;->a:Le/a/p5/c0;

    .line 9
    iget-object v12, v1, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    .line 10
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    if-eq v12, v8, :cond_4

    if-eq v12, v10, :cond_4

    .line 11
    sget v12, Lcom/truecaller/premium/R$plurals;->StrPluralMonth:I

    goto :goto_4

    .line 12
    :cond_4
    sget v12, Lcom/truecaller/premium/R$plurals;->StrPluralYear:I

    .line 13
    :goto_4
    iget-object v13, v1, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    .line 14
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    if-eq v13, v9, :cond_6

    if-eq v13, v11, :cond_5

    .line 15
    iget v13, v1, Le/a/l/n2/f;->i:I

    goto :goto_5

    :cond_5
    move v13, v11

    goto :goto_5

    :cond_6
    move v13, v10

    :goto_5
    new-array v14, v4, [Ljava/lang/Object;

    .line 16
    invoke-interface {v6, v12, v13, v14}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 17
    sget-object v12, Le/a/b0/k/h;->b:Ljava/util/Locale;

    .line 18
    invoke-static {v6, v12}, Le/a/p5/g0;->A(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v12, "StringUtils.capitalizeFi\u2026ocale()\n                )"

    invoke-static {v6, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-wide v12, v1, Le/a/l/n2/f;->g:J

    long-to-double v12, v12

    .line 20
    iget-wide v14, v1, Le/a/l/n2/f;->e:J

    long-to-double v14, v14

    div-double/2addr v12, v14

    const/16 v14, 0x64

    move-object/from16 p2, v6

    int-to-double v5, v14

    mul-double/2addr v12, v5

    double-to-int v5, v12

    sub-int/2addr v14, v5

    .line 21
    iget-object v5, v0, Le/a/l/a/d;->a:Le/a/p5/c0;

    sget v6, Lcom/truecaller/premium/R$string;->PremiumDiscountPercentageOff:I

    new-array v12, v3, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v4

    invoke-interface {v5, v6, v12}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 22
    iget-object v6, v0, Le/a/l/a/d;->a:Le/a/p5/c0;

    sget v12, Lcom/truecaller/premium/R$string;->PremiumUserTabCardGoldGiftButtonSubtext:I

    new-array v13, v9, [Ljava/lang/Object;

    .line 23
    iget-object v14, v1, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    .line 24
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    if-eq v14, v9, :cond_8

    if-eq v14, v11, :cond_7

    .line 25
    iget v14, v1, Le/a/l/n2/f;->i:I

    goto :goto_6

    .line 26
    :cond_7
    iget v14, v1, Le/a/l/n2/f;->i:I

    mul-int/2addr v14, v10

    goto :goto_6

    .line 27
    :cond_8
    iget v14, v1, Le/a/l/n2/f;->i:I

    mul-int/2addr v14, v11

    .line 28
    :goto_6
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v4

    aput-object p2, v13, v3

    invoke-interface {v6, v12, v13}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 29
    iget-object v12, v0, Le/a/l/a/d;->a:Le/a/p5/c0;

    sget v13, Lcom/truecaller/premium/R$string;->PremiumIntroductoryDisclaimer:I

    new-array v14, v4, [Ljava/lang/Object;

    invoke-interface {v12, v13, v14}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_7

    :cond_9
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    .line 30
    :goto_7
    iget-object v13, v1, Le/a/l/n2/f;->h:Lw3/b/a/u;

    if-eqz v13, :cond_a

    .line 31
    invoke-virtual {v13}, Lw3/b/a/u;->s()I

    move-result v14

    if-lez v14, :cond_a

    .line 32
    iget-object v14, v0, Le/a/l/a/d;->a:Le/a/p5/c0;

    sget v15, Lcom/truecaller/premium/R$plurals;->PremiumButtonsFreeTrialLabel:I

    invoke-virtual {v13}, Lw3/b/a/u;->s()I

    move-result v10

    new-array v11, v3, [Ljava/lang/Object;

    invoke-virtual {v13}, Lw3/b/a/u;->s()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v4

    invoke-interface {v14, v15, v10, v11}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_8

    :cond_a
    const/4 v10, 0x0

    :goto_8
    new-array v11, v8, [Ljava/lang/String;

    aput-object v2, v11, v4

    aput-object v6, v11, v3

    aput-object v12, v11, v9

    const/4 v2, 0x3

    aput-object v10, v11, v2

    .line 33
    invoke-static {v11}, Ls1/u/i;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 34
    move-object v6, v2

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v3

    if-eqz v6, :cond_b

    const-string v6, ", "

    .line 35
    invoke-static {v6, v2}, Le/a/p5/g0;->C(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    goto :goto_9

    :cond_b
    const/4 v10, 0x0

    .line 36
    :goto_9
    new-instance v2, Le/a/l/v2/i/a/a;

    .line 37
    invoke-virtual/range {p1 .. p1}, Le/a/l/n2/f;->b()Ljava/lang/String;

    move-result-object v6

    .line 38
    iget-object v1, v1, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    .line 39
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v1, v9, :cond_e

    const/4 v11, 0x3

    if-eq v1, v11, :cond_d

    if-eq v1, v8, :cond_c

    const/4 v8, 0x5

    if-eq v1, v8, :cond_c

    const/4 v8, 0x6

    if-eq v1, v8, :cond_c

    .line 40
    iget-object v1, v0, Le/a/l/a/d;->a:Le/a/p5/c0;

    sget v8, Lcom/truecaller/premium/R$string;->PremiumMonthlyOfferPricePerMonth:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v4

    invoke-interface {v1, v8, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "resourceProvider.getStri\u2026fferPricePerMonth, price)"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a

    .line 41
    :cond_c
    iget-object v1, v0, Le/a/l/a/d;->a:Le/a/p5/c0;

    sget v8, Lcom/truecaller/premium/R$string;->PremiumYearlySubscriptionUpgradeTwoLinesSubtitle:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v4

    invoke-interface {v1, v8, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "resourceProvider.getStri\u2026eTwoLinesSubtitle, price)"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a

    .line 42
    :cond_d
    iget-object v1, v0, Le/a/l/a/d;->a:Le/a/p5/c0;

    .line 43
    sget v8, Lcom/truecaller/premium/R$string;->PremiumAbbreviatedOfferPriceOverHalfYearly:I

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v6, v9, v4

    const/4 v4, 0x6

    .line 44
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v3

    .line 45
    invoke-interface {v1, v8, v9}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "resourceProvider.getStri\u2026THS_HALF_YEARLY\n        )"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a

    .line 46
    :cond_e
    iget-object v1, v0, Le/a/l/a/d;->a:Le/a/p5/c0;

    .line 47
    sget v8, Lcom/truecaller/premium/R$string;->PremiumAbbreviatedOfferPriceOverQuarterly:I

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v6, v9, v4

    const/4 v4, 0x3

    .line 48
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v3

    .line 49
    invoke-interface {v1, v8, v9}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "resourceProvider.getStri\u2026ONTHS_QUARTERLY\n        )"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_a
    move-object v8, v1

    move-object v6, v2

    move-object v9, v5

    move/from16 v11, p3

    .line 50
    invoke-direct/range {v6 .. v11}, Le/a/l/v2/i/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v2
.end method
