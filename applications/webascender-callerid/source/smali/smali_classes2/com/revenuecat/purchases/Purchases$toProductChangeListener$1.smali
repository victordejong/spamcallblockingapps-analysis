.class public final Lcom/revenuecat/purchases/Purchases$toProductChangeListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/revenuecat/purchases/interfaces/ProductChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/Purchases;->toProductChangeListener(Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;)Lcom/revenuecat/purchases/interfaces/ProductChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $this_toProductChangeListener:Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/revenuecat/purchases/Purchases$toProductChangeListener$1;->$this_toProductChangeListener:Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/android/billingclient/api/Purchase;Lcom/revenuecat/purchases/PurchaserInfo;)V
    .locals 2

    const-string v0, "purchaserInfo"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/revenuecat/purchases/Purchases$toProductChangeListener$1;->$this_toProductChangeListener:Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;

    .line 2
    new-instance p2, Lcom/revenuecat/purchases/PurchasesError;

    .line 3
    sget-object v0, Lcom/revenuecat/purchases/PurchasesErrorCode;->PaymentPendingError:Lcom/revenuecat/purchases/PurchasesErrorCode;

    const-string v1, "The product change has been deferred."

    .line 4
    invoke-direct {p2, v0, v1}, Lcom/revenuecat/purchases/PurchasesError;-><init>(Lcom/revenuecat/purchases/PurchasesErrorCode;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    invoke-interface {p1, p2, v0}, Lcom/revenuecat/purchases/interfaces/PurchaseErrorListener;->onError(Lcom/revenuecat/purchases/PurchasesError;Z)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$toProductChangeListener$1;->$this_toProductChangeListener:Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;

    invoke-interface {v0, p1, p2}, Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;->onCompleted(Lcom/android/billingclient/api/Purchase;Lcom/revenuecat/purchases/PurchaserInfo;)V

    :goto_0
    return-void
.end method

.method public onError(Lcom/revenuecat/purchases/PurchasesError;Z)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$toProductChangeListener$1;->$this_toProductChangeListener:Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;

    invoke-interface {v0, p1, p2}, Lcom/revenuecat/purchases/interfaces/PurchaseErrorListener;->onError(Lcom/revenuecat/purchases/PurchasesError;Z)V

    return-void
.end method
