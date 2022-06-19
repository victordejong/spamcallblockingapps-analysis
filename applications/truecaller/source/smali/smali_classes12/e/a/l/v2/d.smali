.class public final Le/a/l/v2/d;
.super Le/a/u2/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/l/v2/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Le/a/l/p2/a1;

.field public final c:Le/a/l/p2/v0;

.field public final d:Le/a/p5/c0;

.field public final e:Le/a/q2/a;

.field public final f:Le/a/b0/o/a;


# direct methods
.method public constructor <init>(Le/a/l/p2/a1;Le/a/l/p2/v0;Le/a/p5/c0;Le/a/q2/a;Le/a/b0/o/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "premiumSubscriptionProblemHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "res"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/l/v2/d;->b:Le/a/l/p2/a1;

    iput-object p2, p0, Le/a/l/v2/d;->c:Le/a/l/p2/v0;

    iput-object p3, p0, Le/a/l/v2/d;->d:Le/a/p5/c0;

    iput-object p4, p0, Le/a/l/v2/d;->e:Le/a/q2/a;

    iput-object p5, p0, Le/a/l/v2/d;->f:Le/a/b0/o/a;

    return-void
.end method


# virtual methods
.method public final Hj()V
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/l/v2/a;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/truecaller/premium/PremiumLaunchContext;->NAV_DRAWER:Lcom/truecaller/premium/PremiumLaunchContext;

    iget-object v2, p0, Le/a/l/v2/d;->c:Le/a/l/p2/v0;

    .line 2
    invoke-interface {v2}, Le/a/l/p2/v0;->H2()Lcom/truecaller/premium/data/ProductKind;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const-string v2, "gold"

    .line 3
    :goto_0
    invoke-interface {v0, v1, v2}, Le/a/l/v2/a;->U(Lcom/truecaller/premium/PremiumLaunchContext;Ljava/lang/String;)V

    .line 4
    :cond_1
    iget-object v0, p0, Le/a/l/v2/d;->b:Le/a/l/p2/a1;

    invoke-virtual {v0}, Le/a/l/p2/a1;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Le/a/l/v2/d;->f:Le/a/b0/o/a;

    const/4 v1, 0x1

    const-string v2, "subscriptionPaymentFailedViewShownOnce"

    invoke-interface {v0, v2, v1}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    const-string v0, "NavigationBarAction"

    const-string v1, "type"

    .line 6
    invoke-static {v0, v1}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v7, "action"

    const-string v8, "upgradeToPremium"

    const-string v3, "name"

    const-string v5, "value"

    move-object v2, v7

    move-object v4, v8

    move-object v6, v1

    .line 7
    invoke-static/range {v2 .. v8}, Le/d/c/a/a;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 8
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v3

    invoke-virtual {v3, v0}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {v3, v2}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v3, v1}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v3}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v0

    const-string v1, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Le/a/l/v2/d;->e:Le/a/q2/a;

    invoke-interface {v1, v0}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public final Ij()V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/l/v2/d;->c:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v0

    .line 2
    iget-object v1, p0, Le/a/l/v2/d;->b:Le/a/l/p2/a1;

    invoke-virtual {v1}, Le/a/l/p2/a1;->a()Z

    move-result v1

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/l/v2/a;

    if-eqz v0, :cond_7

    invoke-interface {v0, v1}, Le/a/l/v2/a;->w(Z)V

    goto/16 :goto_4

    :cond_0
    if-eqz v0, :cond_7

    .line 4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/l/v2/a;

    if-eqz v0, :cond_7

    .line 5
    iget-object v2, p0, Le/a/l/v2/d;->c:Le/a/l/p2/v0;

    .line 6
    invoke-interface {v2}, Le/a/l/p2/v0;->D2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x308060

    const/4 v5, 0x0

    if-eq v3, v4, :cond_2

    const v4, 0x40c21f9c

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "regular"

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Le/a/l/v2/d;->d:Le/a/p5/c0;

    const v3, 0x7f12047c

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "res.getString(R.string.PremiumDrawerPremium)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v3, "gold"

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Le/a/l/v2/d;->d:Le/a/p5/c0;

    const v3, 0x7f12047b

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "res.getString(R.string.PremiumDrawerGold)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string v2, ""

    .line 9
    :goto_1
    iget-object v3, p0, Le/a/l/v2/d;->c:Le/a/l/p2/v0;

    .line 10
    invoke-interface {v3}, Le/a/l/p2/v0;->H2()Lcom/truecaller/premium/data/ProductKind;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    move-object v3, v4

    goto :goto_2

    .line 11
    :pswitch_0
    iget-object v3, p0, Le/a/l/v2/d;->d:Le/a/p5/c0;

    const v6, 0x7f1204d7

    new-array v7, v5, [Ljava/lang/Object;

    invoke-interface {v3, v6, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 12
    :pswitch_1
    iget-object v3, p0, Le/a/l/v2/d;->d:Le/a/p5/c0;

    const v6, 0x7f1204d4

    new-array v7, v5, [Ljava/lang/Object;

    invoke-interface {v3, v6, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 13
    :pswitch_2
    iget-object v3, p0, Le/a/l/v2/d;->d:Le/a/p5/c0;

    const v6, 0x7f1204d6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-interface {v3, v6, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 14
    :pswitch_3
    iget-object v3, p0, Le/a/l/v2/d;->d:Le/a/p5/c0;

    const v6, 0x7f1204d5

    new-array v7, v5, [Ljava/lang/Object;

    invoke-interface {v3, v6, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 15
    :goto_2
    iget-object v6, p0, Le/a/l/v2/d;->c:Le/a/l/p2/v0;

    .line 16
    invoke-interface {v6}, Le/a/l/p2/v0;->s1()Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_3

    .line 17
    :cond_4
    invoke-interface {v6}, Le/a/l/p2/v0;->H2()Lcom/truecaller/premium/data/ProductKind;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_5

    const/4 v7, 0x5

    if-eq v6, v7, :cond_5

    goto :goto_3

    .line 18
    :cond_5
    iget-object v4, p0, Le/a/l/v2/d;->d:Le/a/p5/c0;

    const v6, 0x7f1204d9

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v4, v6, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 19
    :cond_6
    iget-object v4, p0, Le/a/l/v2/d;->d:Le/a/p5/c0;

    const v6, 0x7f1204d8

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v4, v6, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 20
    :goto_3
    invoke-interface {v0, v2, v3, v4, v1}, Le/a/l/v2/a;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_7
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
