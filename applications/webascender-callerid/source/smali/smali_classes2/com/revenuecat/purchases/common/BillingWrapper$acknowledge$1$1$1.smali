.class final Lcom/revenuecat/purchases/common/BillingWrapper$acknowledge$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/common/BillingWrapper$acknowledge$1$1;->invoke(Lcom/android/billingclient/api/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revenuecat/purchases/common/BillingWrapper$acknowledge$1$1;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/common/BillingWrapper$acknowledge$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/common/BillingWrapper$acknowledge$1$1$1;->this$0:Lcom/revenuecat/purchases/common/BillingWrapper$acknowledge$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/g;)V
    .locals 2

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper$acknowledge$1$1$1;->this$0:Lcom/revenuecat/purchases/common/BillingWrapper$acknowledge$1$1;

    iget-object v0, v0, Lcom/revenuecat/purchases/common/BillingWrapper$acknowledge$1$1;->this$0:Lcom/revenuecat/purchases/common/BillingWrapper$acknowledge$1;

    iget-object v1, v0, Lcom/revenuecat/purchases/common/BillingWrapper$acknowledge$1;->$onAcknowledged:Lkotlin/w/b/p;

    iget-object v0, v0, Lcom/revenuecat/purchases/common/BillingWrapper$acknowledge$1;->$token:Ljava/lang/String;

    invoke-interface {v1, p1, v0}, Lkotlin/w/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
