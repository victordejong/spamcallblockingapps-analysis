.class public final Lcom/revenuecat/purchases/Purchases$Companion$isFeatureSupported$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/Purchases$Companion;->isFeatureSupported(Ljava/lang/String;Landroid/content/Context;Lcom/revenuecat/purchases/interfaces/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $billingClient:Lcom/android/billingclient/api/c;

.field final synthetic $callback$inlined:Lcom/revenuecat/purchases/interfaces/Callback;

.field final synthetic $feature$inlined:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/c;Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/Purchases$Companion$isFeatureSupported$$inlined$let$lambda$1;->$billingClient:Lcom/android/billingclient/api/c;

    iput-object p2, p0, Lcom/revenuecat/purchases/Purchases$Companion$isFeatureSupported$$inlined$let$lambda$1;->$feature$inlined:Ljava/lang/String;

    iput-object p3, p0, Lcom/revenuecat/purchases/Purchases$Companion$isFeatureSupported$$inlined$let$lambda$1;->$callback$inlined:Lcom/revenuecat/purchases/interfaces/Callback;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$Companion$isFeatureSupported$$inlined$let$lambda$1;->$billingClient:Lcom/android/billingclient/api/c;

    invoke-virtual {v0}, Lcom/android/billingclient/api/c;->c()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases$Companion$isFeatureSupported$$inlined$let$lambda$1;->$callback$inlined:Lcom/revenuecat/purchases/interfaces/Callback;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v2}, Lcom/revenuecat/purchases/interfaces/Callback;->onReceived(Ljava/lang/Object;)V

    throw v0

    :catch_0
    :goto_0
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$Companion$isFeatureSupported$$inlined$let$lambda$1;->$callback$inlined:Lcom/revenuecat/purchases/interfaces/Callback;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lcom/revenuecat/purchases/interfaces/Callback;->onReceived(Ljava/lang/Object;)V

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/g;)V
    .locals 1

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/revenuecat/purchases/Purchases$Companion$isFeatureSupported$$inlined$let$lambda$1;->$billingClient:Lcom/android/billingclient/api/c;

    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$Companion$isFeatureSupported$$inlined$let$lambda$1;->$feature$inlined:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/c;->d(Ljava/lang/String;)Lcom/android/billingclient/api/g;

    move-result-object p1

    const-string v0, "billingClient.isFeatureSupported(feature)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$Companion$isFeatureSupported$$inlined$let$lambda$1;->$billingClient:Lcom/android/billingclient/api/c;

    invoke-virtual {v0}, Lcom/android/billingclient/api/c;->c()V

    .line 3
    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$Companion$isFeatureSupported$$inlined$let$lambda$1;->$callback$inlined:Lcom/revenuecat/purchases/interfaces/Callback;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/revenuecat/purchases/interfaces/Callback;->onReceived(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 5
    :catch_0
    iget-object p1, p0, Lcom/revenuecat/purchases/Purchases$Companion$isFeatureSupported$$inlined$let$lambda$1;->$callback$inlined:Lcom/revenuecat/purchases/interfaces/Callback;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lcom/revenuecat/purchases/interfaces/Callback;->onReceived(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
