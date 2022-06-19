.class public final Le/a/l/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/n0;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Le/a/q2/d1/d;


# direct methods
.method public constructor <init>(Le/a/q2/d1/d;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "fireBaseLogger"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/o;->f:Le/a/q2/d1/d;

    const-string p1, "PremiumPurchasedMonthly"

    .line 2
    iput-object p1, p0, Le/a/l/o;->a:Ljava/lang/String;

    const-string p1, "PremiumPurchasedQuarterly"

    .line 3
    iput-object p1, p0, Le/a/l/o;->b:Ljava/lang/String;

    const-string p1, "PremiumPurchasedHalfYearly"

    .line 4
    iput-object p1, p0, Le/a/l/o;->c:Ljava/lang/String;

    const-string p1, "PremiumPurchasedYearly"

    .line 5
    iput-object p1, p0, Le/a/l/o;->d:Ljava/lang/String;

    const-string p1, "PremiumPurchasedGold"

    .line 6
    iput-object p1, p0, Le/a/l/o;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Le/a/l/m0;)V
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b(Le/a/l/m0;)V
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public c(Le/a/l/n2/f;)V
    .locals 1

    const-string v0, "subscription"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d(Le/a/l/m0;)V
    .locals 3

    const-string v0, "params"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/l/m0;->d:Le/a/l/n2/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 4
    :pswitch_0
    iget-object v0, p0, Le/a/l/o;->f:Le/a/q2/d1/d;

    iget-object v2, p0, Le/a/l/o;->d:Ljava/lang/String;

    invoke-interface {v0, v2}, Le/a/q2/d1/d;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :pswitch_1
    iget-object v0, p0, Le/a/l/o;->f:Le/a/q2/d1/d;

    iget-object v2, p0, Le/a/l/o;->c:Ljava/lang/String;

    invoke-interface {v0, v2}, Le/a/q2/d1/d;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :pswitch_2
    iget-object v0, p0, Le/a/l/o;->f:Le/a/q2/d1/d;

    iget-object v2, p0, Le/a/l/o;->b:Ljava/lang/String;

    invoke-interface {v0, v2}, Le/a/q2/d1/d;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :pswitch_3
    iget-object v0, p0, Le/a/l/o;->f:Le/a/q2/d1/d;

    iget-object v2, p0, Le/a/l/o;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Le/a/q2/d1/d;->c(Ljava/lang/String;)V

    .line 8
    :goto_1
    iget-object p1, p1, Le/a/l/m0;->d:Le/a/l/n2/f;

    if-eqz p1, :cond_4

    .line 9
    iget-object p1, p1, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    if-eqz p1, :cond_4

    .line 10
    sget-object v0, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_GOLD:Lcom/truecaller/premium/data/ProductKind;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    move-object v1, p1

    :cond_3
    if-eqz v1, :cond_4

    .line 11
    iget-object p1, p0, Le/a/l/o;->f:Le/a/q2/d1/d;

    iget-object v0, p0, Le/a/l/o;->e:Ljava/lang/String;

    invoke-interface {p1, v0}, Le/a/q2/d1/d;->c(Ljava/lang/String;)V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
