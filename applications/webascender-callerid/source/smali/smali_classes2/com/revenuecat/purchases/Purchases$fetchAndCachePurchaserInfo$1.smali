.class final Lcom/revenuecat/purchases/Purchases$fetchAndCachePurchaserInfo$1;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/Purchases;->fetchAndCachePurchaserInfo(Ljava/lang/String;ZLcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V
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
.field final synthetic $completion:Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;

.field final synthetic this$0:Lcom/revenuecat/purchases/Purchases;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/Purchases$fetchAndCachePurchaserInfo$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    iput-object p2, p0, Lcom/revenuecat/purchases/Purchases$fetchAndCachePurchaserInfo$1;->$completion:Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/revenuecat/purchases/PurchaserInfo;

    invoke-virtual {p0, p1}, Lcom/revenuecat/purchases/Purchases$fetchAndCachePurchaserInfo$1;->invoke(Lcom/revenuecat/purchases/PurchaserInfo;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method

.method public final invoke(Lcom/revenuecat/purchases/PurchaserInfo;)V
    .locals 2

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$fetchAndCachePurchaserInfo$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-static {v0, p1}, Lcom/revenuecat/purchases/Purchases;->access$cachePurchaserInfo(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/PurchaserInfo;)V

    .line 3
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$fetchAndCachePurchaserInfo$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-static {v0, p1}, Lcom/revenuecat/purchases/Purchases;->access$sendUpdatedPurchaserInfoToDelegateIfChanged(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/PurchaserInfo;)V

    .line 4
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$fetchAndCachePurchaserInfo$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    new-instance v1, Lcom/revenuecat/purchases/Purchases$fetchAndCachePurchaserInfo$1$1;

    invoke-direct {v1, p0, p1}, Lcom/revenuecat/purchases/Purchases$fetchAndCachePurchaserInfo$1$1;-><init>(Lcom/revenuecat/purchases/Purchases$fetchAndCachePurchaserInfo$1;Lcom/revenuecat/purchases/PurchaserInfo;)V

    invoke-static {v0, v1}, Lcom/revenuecat/purchases/Purchases;->access$dispatch(Lcom/revenuecat/purchases/Purchases;Lkotlin/w/b/a;)V

    return-void
.end method
