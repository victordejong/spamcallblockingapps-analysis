.class final Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1$1;
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
.field final synthetic this$0:Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1$1;->this$0:Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1$1;->invoke()V

    sget-object v0, Lkotlin/r;->a:Lkotlin/r;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1$1;->this$0:Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1;

    iget-object v0, v0, Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1;->$listener:Lcom/revenuecat/purchases/interfaces/PurchaseErrorListener;

    .line 3
    new-instance v1, Lcom/revenuecat/purchases/PurchasesError;

    sget-object v2, Lcom/revenuecat/purchases/PurchasesErrorCode;->PurchaseInvalidError:Lcom/revenuecat/purchases/PurchasesErrorCode;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4, v3}, Lcom/revenuecat/purchases/PurchasesError;-><init>(Lcom/revenuecat/purchases/PurchasesErrorCode;Ljava/lang/String;ILkotlin/w/c/g;)V

    invoke-static {v1}, Lcom/revenuecat/purchases/common/LogUtilsKt;->errorLog(Lcom/revenuecat/purchases/PurchasesError;)V

    sget-object v2, Lkotlin/r;->a:Lkotlin/r;

    const/4 v2, 0x0

    .line 4
    invoke-interface {v0, v1, v2}, Lcom/revenuecat/purchases/interfaces/PurchaseErrorListener;->onError(Lcom/revenuecat/purchases/PurchasesError;Z)V

    return-void
.end method
