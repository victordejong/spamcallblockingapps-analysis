.class public final Le/a/l/m;
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

.field public final f:Ljava/lang/String;

.field public final g:Le/a/q2/d1/d;

.field public final h:Le/a/l/p2/v0;

.field public final i:Le/a/l/s2/a;


# direct methods
.method public constructor <init>(Le/a/q2/d1/d;Le/a/l/p2/v0;Le/a/l/s2/a;)V
    .locals 1

    const-string v0, "fireBaseLogger"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebasePersonalisationManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/m;->g:Le/a/q2/d1/d;

    iput-object p2, p0, Le/a/l/m;->h:Le/a/l/p2/v0;

    iput-object p3, p0, Le/a/l/m;->i:Le/a/l/s2/a;

    const-string p1, "value"

    .line 2
    iput-object p1, p0, Le/a/l/m;->a:Ljava/lang/String;

    const-string p1, "currency"

    .line 3
    iput-object p1, p0, Le/a/l/m;->b:Ljava/lang/String;

    const-string p1, "p13n_choice"

    .line 4
    iput-object p1, p0, Le/a/l/m;->c:Ljava/lang/String;

    const-string p1, "p13n_name"

    .line 5
    iput-object p1, p0, Le/a/l/m;->d:Ljava/lang/String;

    const-string p1, "personalized_premium_promotion"

    .line 6
    iput-object p1, p0, Le/a/l/m;->e:Ljava/lang/String;

    const-string p1, "choice"

    .line 7
    iput-object p1, p0, Le/a/l/m;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Le/a/l/m0;)V
    .locals 5

    const-string v0, "params"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Le/a/l/m;->h:Le/a/l/p2/v0;

    invoke-interface {v1}, Le/a/l/p2/v0;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "yes"

    goto :goto_0

    :cond_0
    const-string v1, "no"

    :goto_0
    const-string v2, "premium"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ANDROID_subscription_launched"

    .line 3
    invoke-virtual {p0, v1, p1, v0}, Le/a/l/m;->e(Ljava/lang/String;Le/a/l/m0;Landroid/os/Bundle;)V

    .line 4
    iget-object p1, p0, Le/a/l/m;->i:Le/a/l/s2/a;

    invoke-interface {p1}, Le/a/l/s2/a;->b()Lcom/truecaller/premium/personalisation/PersonalisationPromo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p0, Le/a/l/m;->g:Le/a/q2/d1/d;

    iget-object v1, p0, Le/a/l/m;->c:Ljava/lang/String;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6
    iget-object v3, p0, Le/a/l/m;->d:Ljava/lang/String;

    iget-object v4, p0, Le/a/l/m;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v3, p0, Le/a/l/m;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/truecaller/premium/personalisation/PersonalisationPromo;->getRemoteConfigValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-interface {v0, v1, v2}, Le/a/q2/d1/d;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public b(Le/a/l/m0;)V
    .locals 3

    const-string v0, "params"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p1, Le/a/l/m0;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "sku"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "ANDROID_subscription_item_clk"

    .line 4
    invoke-virtual {p0, v1, p1, v0}, Le/a/l/m;->e(Ljava/lang/String;Le/a/l/m0;Landroid/os/Bundle;)V

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
    .locals 5

    const-string v0, "params"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-boolean v1, p1, Le/a/l/m0;->e:Z

    const-string v2, "HadPremiumBefore"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    iget-object v1, p1, Le/a/l/m0;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "Sku"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object v1, p1, Le/a/l/m0;->c:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 7
    invoke-static {v1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "OldSku"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    iget-object v1, p1, Le/a/l/m0;->d:Le/a/l/n2/f;

    if-eqz v1, :cond_2

    .line 9
    iget-object v2, p0, Le/a/l/m;->a:Ljava/lang/String;

    .line 10
    iget-wide v3, v1, Le/a/l/n2/f;->e:J

    .line 11
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 12
    iget-object v2, p0, Le/a/l/m;->b:Ljava/lang/String;

    .line 13
    iget-object v1, v1, Le/a/l/n2/f;->d:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v1, "ANDROID_subscription_purchased"

    .line 15
    invoke-virtual {p0, v1, p1, v0}, Le/a/l/m;->e(Ljava/lang/String;Le/a/l/m0;Landroid/os/Bundle;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Le/a/l/m0;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p2, Le/a/l/m0;->a:Lcom/truecaller/premium/PremiumLaunchContext;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p2, Le/a/l/m0;->g:Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, v0, Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const-string v1, "Campaign"

    .line 5
    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-object p2, p2, Le/a/l/m0;->f:Ljava/lang/String;

    if-eqz p2, :cond_2

    const-string v0, "SelectedPage"

    .line 7
    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_2
    iget-object p2, p0, Le/a/l/m;->g:Le/a/q2/d1/d;

    invoke-interface {p2, p1, p3}, Le/a/q2/d1/d;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
