.class final Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1$onPurchasesUpdated$2;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1;->onPurchasesUpdated(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/l<",
        "Lcom/revenuecat/purchases/PurchaserInfo;",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $productChangeListener:Lcom/revenuecat/purchases/interfaces/ProductChangeListener;

.field final synthetic this$0:Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1$onPurchasesUpdated$2;->this$0:Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1;

    iput-object p2, p0, Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1$onPurchasesUpdated$2;->$productChangeListener:Lcom/revenuecat/purchases/interfaces/ProductChangeListener;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/revenuecat/purchases/PurchaserInfo;

    invoke-virtual {p0, p1}, Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1$onPurchasesUpdated$2;->invoke(Lcom/revenuecat/purchases/PurchaserInfo;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method

.method public final invoke(Lcom/revenuecat/purchases/PurchaserInfo;)V
    .locals 3

    const-string v0, "purchaserInfo"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1$onPurchasesUpdated$2;->$productChangeListener:Lcom/revenuecat/purchases/interfaces/ProductChangeListener;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1$onPurchasesUpdated$2;->this$0:Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1;

    iget-object v1, v1, Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    new-instance v2, Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1$onPurchasesUpdated$2$$special$$inlined$let$lambda$1;

    invoke-direct {v2, v0, p0, p1}, Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1$onPurchasesUpdated$2$$special$$inlined$let$lambda$1;-><init>(Lcom/revenuecat/purchases/interfaces/ProductChangeListener;Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1$onPurchasesUpdated$2;Lcom/revenuecat/purchases/PurchaserInfo;)V

    invoke-static {v1, v2}, Lcom/revenuecat/purchases/Purchases;->access$dispatch(Lcom/revenuecat/purchases/Purchases;Lkotlin/w/b/a;)V

    :cond_0
    return-void
.end method
