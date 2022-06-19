.class public final Le/a/l/o2/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/p5/h0;

.field public final b:Le/a/l/p2/v0;

.field public final c:Le/a/l/c2;

.field public final d:Le/a/l/u2/a;


# direct methods
.method public constructor <init>(Le/a/p5/h0;Le/a/l/p2/v0;Le/a/l/c2;Le/a/l/u2/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productStoreProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/o2/e;->a:Le/a/p5/h0;

    iput-object p2, p0, Le/a/l/o2/e;->b:Le/a/l/p2/v0;

    iput-object p3, p0, Le/a/l/o2/e;->c:Le/a/l/c2;

    iput-object p4, p0, Le/a/l/o2/e;->d:Le/a/l/u2/a;

    return-void
.end method


# virtual methods
.method public final a(Le/a/l/o2/h;Le/a/l/n2/f;Le/a/l/p2/s1$b;)V
    .locals 4

    const-string v0, "purchaseCancelled"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscriptionResult"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l/o2/e;->b:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p2, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    .line 3
    sget-object v1, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_BASIC_MONTHLY:Lcom/truecaller/premium/data/ProductKind;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v3

    goto :goto_1

    :pswitch_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    return-void

    .line 5
    :cond_3
    iget-object v0, p2, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    .line 6
    sget-object v1, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_GOLD:Lcom/truecaller/premium/data/ProductKind;

    if-ne v0, v1, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v3

    :goto_2
    if-eqz v0, :cond_5

    .line 7
    invoke-virtual {p0, v2, p2, p3}, Le/a/l/o2/e;->c(ZLe/a/l/n2/f;Le/a/l/p2/s1$b;)Le/a/l/n2/f;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 8
    invoke-virtual {p0, p1, v2, p3, p2}, Le/a/l/o2/e;->b(Le/a/l/o2/h;ZLe/a/l/n2/f;Le/a/l/n2/f;)V

    goto :goto_3

    :cond_5
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/truecaller/premium/data/ProductKind;

    .line 9
    sget-object v1, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_YEARLY:Lcom/truecaller/premium/data/ProductKind;

    aput-object v1, v0, v3

    sget-object v1, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_WELCOME_OFFER_YEARLY:Lcom/truecaller/premium/data/ProductKind;

    aput-object v1, v0, v2

    sget-object v1, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_MONTHLY:Lcom/truecaller/premium/data/ProductKind;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_QUARTERLY:Lcom/truecaller/premium/data/ProductKind;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_HALFYEARLY:Lcom/truecaller/premium/data/ProductKind;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 10
    iget-object v1, p2, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    .line 11
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12
    invoke-virtual {p0, v3, p2, p3}, Le/a/l/o2/e;->c(ZLe/a/l/n2/f;Le/a/l/p2/s1$b;)Le/a/l/n2/f;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 13
    invoke-virtual {p0, p1, v3, p3, p2}, Le/a/l/o2/e;->b(Le/a/l/o2/h;ZLe/a/l/n2/f;Le/a/l/n2/f;)V

    goto :goto_3

    .line 14
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    iget-object p2, p2, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not handled in consumable purchase flow."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Le/a/l/o2/h;ZLe/a/l/n2/f;Le/a/l/n2/f;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p3

    move-object/from16 v2, p4

    .line 1
    iget-object v3, v0, Le/a/l/o2/e;->c:Le/a/l/c2;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 2
    iget-object v2, v2, Le/a/l/n2/f;->f:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    invoke-interface {v3, v2}, Le/a/l/c2;->H0(Z)V

    if-eqz p2, :cond_1

    .line 4
    iget-object v2, v0, Le/a/l/o2/e;->a:Le/a/p5/h0;

    const v3, 0x7f1202ab

    new-array v6, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 5
    :cond_1
    iget-object v2, v0, Le/a/l/o2/e;->a:Le/a/p5/h0;

    const v3, 0x7f120472

    new-array v6, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v13, v2

    const-string v2, "if (isGold) {\n          \u2026ablePromptText)\n        }"

    .line 6
    invoke-static {v13, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 7
    iget-object v2, v0, Le/a/l/o2/e;->a:Le/a/p5/h0;

    const v3, 0x7f0405aa

    invoke-interface {v2, v3}, Le/a/p5/c0;->e(I)I

    move-result v2

    goto :goto_2

    .line 8
    :cond_2
    iget-object v2, v0, Le/a/l/o2/e;->a:Le/a/p5/h0;

    const v3, 0x7f0405ab

    invoke-interface {v2, v3}, Le/a/p5/c0;->e(I)I

    move-result v2

    :goto_2
    move v14, v2

    if-eqz v1, :cond_5

    .line 9
    iget-object v2, v12, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    .line 10
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const v3, 0x7f12055c

    packed-switch v2, :pswitch_data_0

    .line 11
    :pswitch_0
    iget-object v2, v0, Le/a/l/o2/e;->a:Le/a/p5/h0;

    new-array v6, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 12
    :pswitch_1
    iget-object v2, v0, Le/a/l/o2/e;->a:Le/a/p5/h0;

    const v3, 0x7f1204bd

    new-array v6, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 13
    :pswitch_2
    iget-object v2, v0, Le/a/l/o2/e;->a:Le/a/p5/h0;

    const v3, 0x7f1204f3

    new-array v6, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 14
    :pswitch_3
    iget-object v2, v0, Le/a/l/o2/e;->a:Le/a/p5/h0;

    const v3, 0x7f1204cf

    new-array v6, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 15
    :pswitch_4
    iget-object v2, v0, Le/a/l/o2/e;->a:Le/a/p5/h0;

    new-array v6, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    const-string v3, "when (subscription.produ\u2026yOfferDuration)\n        }"

    .line 16
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v15, Le/a/l/v2/i/a/b;

    .line 18
    iget-object v3, v0, Le/a/l/o2/e;->a:Le/a/p5/h0;

    const v6, 0x7f12046f

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v5

    invoke-virtual/range {p3 .. p3}, Le/a/l/n2/f;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v4

    invoke-interface {v3, v6, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "resourceProvider.getStri\u2026bscription.obtainPrice())"

    invoke-static {v3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_3

    .line 19
    iget-object v2, v0, Le/a/l/o2/e;->a:Le/a/p5/h0;

    const v6, 0x7f0405ea

    invoke-interface {v2, v6}, Le/a/p5/h0;->l(I)I

    move-result v2

    goto :goto_4

    .line 20
    :cond_3
    iget-object v2, v0, Le/a/l/o2/e;->a:Le/a/p5/h0;

    const v6, 0x7f060625

    invoke-interface {v2, v6}, Le/a/p5/c0;->a(I)I

    move-result v2

    .line 21
    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz p2, :cond_4

    const/4 v2, 0x0

    goto :goto_5

    :cond_4
    const v2, 0x7f081767

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_5
    move-object v7, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xc6

    move-object v2, v15

    move/from16 v8, p2

    .line 23
    invoke-direct/range {v2 .. v11}, Le/a/l/v2/i/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/String;I)V

    .line 24
    invoke-interface {v1, v13, v14, v12, v15}, Le/a/l/o2/h;->Qy(Ljava/lang/String;ILe/a/l/n2/f;Le/a/l/v2/i/a/b;)V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final c(ZLe/a/l/n2/f;Le/a/l/p2/s1$b;)Le/a/l/n2/f;
    .locals 3

    const-string v0, "purchaseCancelled"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscriptionResult"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/l/o2/e;->d:Le/a/l/u2/a;

    invoke-interface {v1}, Le/a/l/u2/a;->a()Lcom/truecaller/premium/provider/Store;

    move-result-object v1

    sget-object v2, Lcom/truecaller/premium/provider/Store;->GOOGLE_PLAY:Lcom/truecaller/premium/provider/Store;

    if-ne v1, v2, :cond_1

    .line 2
    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p3, Le/a/l/p2/s1$b;->l:Le/a/l/n2/f;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p3, Le/a/l/p2/s1$b;->k:Le/a/l/n2/f;

    :goto_0
    return-object p1

    .line 5
    :cond_1
    iget-object p2, p2, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    .line 6
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_7

    const/4 v1, 0x2

    if-eq p2, v1, :cond_6

    const/4 v1, 0x3

    if-eq p2, v1, :cond_5

    const/4 v1, 0x4

    if-eq p2, v1, :cond_4

    const/4 v1, 0x6

    if-eq p2, v1, :cond_3

    .line 7
    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p3, Le/a/l/p2/s1$b;->l:Le/a/l/n2/f;

    goto :goto_1

    .line 9
    :cond_2
    iget-object p1, p3, Le/a/l/p2/s1$b;->k:Le/a/l/n2/f;

    goto :goto_1

    .line 10
    :cond_3
    iget-object p1, p3, Le/a/l/p2/s1$b;->l:Le/a/l/n2/f;

    goto :goto_1

    .line 11
    :cond_4
    iget-object p1, p3, Le/a/l/p2/s1$b;->k:Le/a/l/n2/f;

    goto :goto_1

    .line 12
    :cond_5
    iget-object p1, p3, Le/a/l/p2/s1$b;->m:Le/a/l/n2/f;

    goto :goto_1

    .line 13
    :cond_6
    iget-object p1, p3, Le/a/l/p2/s1$b;->n:Le/a/l/n2/f;

    goto :goto_1

    .line 14
    :cond_7
    iget-object p1, p3, Le/a/l/p2/s1$b;->o:Le/a/l/n2/f;

    :goto_1
    return-object p1
.end method
