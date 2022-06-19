.class public final Le/a/l/a/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/l/p2/v0;

.field public final b:Le/a/l/c2;


# direct methods
.method public constructor <init>(Le/a/l/p2/v0;Le/a/l/c2;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "premiumStateSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/a/v;->a:Le/a/l/p2/v0;

    iput-object p2, p0, Le/a/l/a/v;->b:Le/a/l/c2;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/l/a/v;->a:Le/a/l/p2/v0;

    .line 2
    invoke-interface {v0}, Le/a/l/p2/v0;->D2()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gold"

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/truecaller/premium/util/PremiumProStatus;->GOLD:Lcom/truecaller/premium/util/PremiumProStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Le/a/l/a/v;->b:Le/a/l/c2;

    invoke-interface {v1}, Le/a/l/c2;->t1()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/truecaller/premium/util/PremiumProStatus;->CHURNED:Lcom/truecaller/premium/util/PremiumProStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4
    :cond_1
    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Le/a/l/a/v;->b:Le/a/l/c2;

    invoke-interface {v1}, Le/a/l/c2;->Z()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/truecaller/premium/util/PremiumProStatus;->GOLD_CHURNED:Lcom/truecaller/premium/util/PremiumProStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5
    :cond_2
    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Le/a/l/p2/v0;->H2()Lcom/truecaller/premium/data/ProductKind;

    move-result-object v1

    sget-object v2, Lcom/truecaller/premium/data/ProductKind;->CONSUMABLE_YEARLY:Lcom/truecaller/premium/data/ProductKind;

    if-ne v1, v2, :cond_3

    sget-object v0, Lcom/truecaller/premium/util/PremiumProStatus;->PREMIUM_CONSUMABLE:Lcom/truecaller/premium/util/PremiumProStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 6
    :cond_3
    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Le/a/l/p2/v0;->H2()Lcom/truecaller/premium/data/ProductKind;

    move-result-object v1

    sget-object v2, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_MONTHLY:Lcom/truecaller/premium/data/ProductKind;

    if-ne v1, v2, :cond_4

    sget-object v0, Lcom/truecaller/premium/util/PremiumProStatus;->PREMIUM_MONTHLY:Lcom/truecaller/premium/util/PremiumProStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_4
    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Le/a/l/p2/v0;->H2()Lcom/truecaller/premium/data/ProductKind;

    move-result-object v1

    sget-object v2, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_BASIC_MONTHLY:Lcom/truecaller/premium/data/ProductKind;

    if-ne v1, v2, :cond_5

    sget-object v0, Lcom/truecaller/premium/util/PremiumProStatus;->PREMIUM_BASIC_MONTHLY:Lcom/truecaller/premium/util/PremiumProStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_5
    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Le/a/l/p2/v0;->H2()Lcom/truecaller/premium/data/ProductKind;

    move-result-object v1

    sget-object v2, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_QUARTERLY:Lcom/truecaller/premium/data/ProductKind;

    if-ne v1, v2, :cond_6

    sget-object v0, Lcom/truecaller/premium/util/PremiumProStatus;->PREMIUM_QUARTERLY:Lcom/truecaller/premium/util/PremiumProStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_6
    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Le/a/l/p2/v0;->H2()Lcom/truecaller/premium/data/ProductKind;

    move-result-object v1

    sget-object v2, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_HALFYEARLY:Lcom/truecaller/premium/data/ProductKind;

    if-ne v1, v2, :cond_7

    sget-object v0, Lcom/truecaller/premium/util/PremiumProStatus;->PREMIUM_HALF_YEARLY:Lcom/truecaller/premium/util/PremiumProStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_7
    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Le/a/l/p2/v0;->H2()Lcom/truecaller/premium/data/ProductKind;

    move-result-object v1

    sget-object v2, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_YEARLY:Lcom/truecaller/premium/data/ProductKind;

    if-ne v1, v2, :cond_8

    sget-object v0, Lcom/truecaller/premium/util/PremiumProStatus;->PREMIUM_YEARLY:Lcom/truecaller/premium/util/PremiumProStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_8
    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/truecaller/premium/util/PremiumProStatus;->PREMIUM_UNKNOWN:Lcom/truecaller/premium/util/PremiumProStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_9
    sget-object v0, Lcom/truecaller/premium/util/PremiumProStatus;->NONE:Lcom/truecaller/premium/util/PremiumProStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
