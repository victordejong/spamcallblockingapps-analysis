.class final Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1$2;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1;->invoke(Lcom/android/billingclient/api/g;Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/a<",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $message:Ljava/lang/String;

.field final synthetic $result:Lcom/android/billingclient/api/g;

.field final synthetic this$0:Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1;Lcom/android/billingclient/api/g;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1$2;->this$0:Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1;

    iput-object p2, p0, Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1$2;->$result:Lcom/android/billingclient/api/g;

    iput-object p3, p0, Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1$2;->$message:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1$2;->invoke()V

    sget-object v0, Lkotlin/r;->a:Lkotlin/r;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1$2;->this$0:Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1;

    iget-object v0, v0, Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1;->$listener:Lcom/revenuecat/purchases/interfaces/PurchaseErrorListener;

    .line 3
    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1$2;->$result:Lcom/android/billingclient/api/g;

    invoke-virtual {v1}, Lcom/android/billingclient/api/g;->b()I

    move-result v1

    iget-object v2, p0, Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1$2;->$message:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/revenuecat/purchases/common/ErrorsKt;->billingResponseToPurchasesError(ILjava/lang/String;)Lcom/revenuecat/purchases/PurchasesError;

    move-result-object v1

    invoke-static {v1}, Lcom/revenuecat/purchases/common/LogUtilsKt;->errorLog(Lcom/revenuecat/purchases/PurchasesError;)V

    sget-object v2, Lkotlin/r;->a:Lkotlin/r;

    const/4 v2, 0x0

    .line 4
    invoke-interface {v0, v1, v2}, Lcom/revenuecat/purchases/interfaces/PurchaseErrorListener;->onError(Lcom/revenuecat/purchases/PurchasesError;Z)V

    return-void
.end method
