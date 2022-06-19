.class final Lcom/revenuecat/purchases/common/BillingWrapper$onBillingSetupFinished$$inlined$synchronized$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/common/BillingWrapper;->onBillingSetupFinished(Lcom/android/billingclient/api/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $billingResult$inlined:Lcom/android/billingclient/api/g;

.field final synthetic $message$inlined:Ljava/lang/String;

.field final synthetic $serviceRequest:Lkotlin/w/b/l;

.field final synthetic this$0:Lcom/revenuecat/purchases/common/BillingWrapper;


# direct methods
.method constructor <init>(Lkotlin/w/b/l;Lcom/revenuecat/purchases/common/BillingWrapper;Lcom/android/billingclient/api/g;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/common/BillingWrapper$onBillingSetupFinished$$inlined$synchronized$lambda$1;->$serviceRequest:Lkotlin/w/b/l;

    iput-object p2, p0, Lcom/revenuecat/purchases/common/BillingWrapper$onBillingSetupFinished$$inlined$synchronized$lambda$1;->this$0:Lcom/revenuecat/purchases/common/BillingWrapper;

    iput-object p3, p0, Lcom/revenuecat/purchases/common/BillingWrapper$onBillingSetupFinished$$inlined$synchronized$lambda$1;->$billingResult$inlined:Lcom/android/billingclient/api/g;

    iput-object p4, p0, Lcom/revenuecat/purchases/common/BillingWrapper$onBillingSetupFinished$$inlined$synchronized$lambda$1;->$message$inlined:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper$onBillingSetupFinished$$inlined$synchronized$lambda$1;->$serviceRequest:Lkotlin/w/b/l;

    .line 2
    iget-object v1, p0, Lcom/revenuecat/purchases/common/BillingWrapper$onBillingSetupFinished$$inlined$synchronized$lambda$1;->$billingResult$inlined:Lcom/android/billingclient/api/g;

    invoke-virtual {v1}, Lcom/android/billingclient/api/g;->b()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/revenuecat/purchases/common/BillingWrapper$onBillingSetupFinished$$inlined$synchronized$lambda$1;->$message$inlined:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/revenuecat/purchases/common/ErrorsKt;->billingResponseToPurchasesError(ILjava/lang/String;)Lcom/revenuecat/purchases/PurchasesError;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcom/revenuecat/purchases/common/LogUtilsKt;->errorLog(Lcom/revenuecat/purchases/PurchasesError;)V

    sget-object v2, Lkotlin/r;->a:Lkotlin/r;

    invoke-interface {v0, v1}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
