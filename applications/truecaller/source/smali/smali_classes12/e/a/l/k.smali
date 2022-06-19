.class public final Le/a/l/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/n0;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/truecaller/clevertap/CleverTapManager;


# direct methods
.method public constructor <init>(Lcom/truecaller/clevertap/CleverTapManager;)V
    .locals 1

    const-string v0, "cleverTapManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/k;->c:Lcom/truecaller/clevertap/CleverTapManager;

    const-string p1, "PremiumPurchased"

    .line 2
    iput-object p1, p0, Le/a/l/k;->a:Ljava/lang/String;

    const-string p1, "PremiumInitiatedCheckout"

    .line 3
    iput-object p1, p0, Le/a/l/k;->b:Ljava/lang/String;

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
    .locals 2

    const-string v0, "params"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l/k;->c:Lcom/truecaller/clevertap/CleverTapManager;

    iget-object v1, p0, Le/a/l/k;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Le/a/l/k;->e(Le/a/l/m0;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/truecaller/clevertap/CleverTapManager;->push(Ljava/lang/String;Ljava/util/Map;)V

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
    .locals 2

    const-string v0, "params"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l/k;->c:Lcom/truecaller/clevertap/CleverTapManager;

    iget-object v1, p0, Le/a/l/k;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Le/a/l/k;->e(Le/a/l/m0;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/truecaller/clevertap/CleverTapManager;->push(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final e(Le/a/l/m0;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/l/m0;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    iget-object v1, p1, Le/a/l/m0;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "sku"

    .line 3
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v1, p1, Le/a/l/m0;->c:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 5
    invoke-static {v1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "oldSku"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    iget-object v1, p1, Le/a/l/m0;->a:Lcom/truecaller/premium/PremiumLaunchContext;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "source"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p1, Le/a/l/m0;->d:Le/a/l/n2/f;

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, v1, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProductKind"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_2
    iget-object v1, p1, Le/a/l/m0;->g:Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;

    if-eqz v1, :cond_3

    .line 12
    iget-object v1, v1, Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "campaign"

    .line 13
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_3
    iget-boolean p1, p1, Le/a/l/m0;->e:Z

    .line 15
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "HadPremiumBefore"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
