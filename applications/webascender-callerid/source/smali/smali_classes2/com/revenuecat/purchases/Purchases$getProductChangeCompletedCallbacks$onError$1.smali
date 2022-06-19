.class final Lcom/revenuecat/purchases/Purchases$getProductChangeCompletedCallbacks$onError$1;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/Purchases;->getProductChangeCompletedCallbacks(Lcom/revenuecat/purchases/interfaces/ProductChangeListener;)Lkotlin/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/p<",
        "Lcom/revenuecat/purchases/common/PurchaseWrapper;",
        "Lcom/revenuecat/purchases/PurchasesError;",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $productChangeListener:Lcom/revenuecat/purchases/interfaces/ProductChangeListener;

.field final synthetic this$0:Lcom/revenuecat/purchases/Purchases;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/Purchases$getProductChangeCompletedCallbacks$onError$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    iput-object p2, p0, Lcom/revenuecat/purchases/Purchases$getProductChangeCompletedCallbacks$onError$1;->$productChangeListener:Lcom/revenuecat/purchases/interfaces/ProductChangeListener;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/revenuecat/purchases/common/PurchaseWrapper;

    check-cast p2, Lcom/revenuecat/purchases/PurchasesError;

    invoke-virtual {p0, p1, p2}, Lcom/revenuecat/purchases/Purchases$getProductChangeCompletedCallbacks$onError$1;->invoke(Lcom/revenuecat/purchases/common/PurchaseWrapper;Lcom/revenuecat/purchases/PurchasesError;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method

.method public final invoke(Lcom/revenuecat/purchases/common/PurchaseWrapper;Lcom/revenuecat/purchases/PurchasesError;)V
    .locals 1

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "error"

    invoke-static {p2, p1}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/revenuecat/purchases/Purchases$getProductChangeCompletedCallbacks$onError$1;->$productChangeListener:Lcom/revenuecat/purchases/interfaces/ProductChangeListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$getProductChangeCompletedCallbacks$onError$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-static {v0, p1, p2}, Lcom/revenuecat/purchases/Purchases;->access$dispatch(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/interfaces/PurchaseErrorListener;Lcom/revenuecat/purchases/PurchasesError;)V

    :cond_0
    return-void
.end method
