.class final Lcom/revenuecat/purchases/common/BillingWrapper$acknowledge$1;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/common/BillingWrapper;->acknowledge(Ljava/lang/String;Lkotlin/w/b/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/l<",
        "Lcom/revenuecat/purchases/PurchasesError;",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $onAcknowledged:Lkotlin/w/b/p;

.field final synthetic $token:Ljava/lang/String;

.field final synthetic this$0:Lcom/revenuecat/purchases/common/BillingWrapper;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/common/BillingWrapper;Ljava/lang/String;Lkotlin/w/b/p;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/common/BillingWrapper$acknowledge$1;->this$0:Lcom/revenuecat/purchases/common/BillingWrapper;

    iput-object p2, p0, Lcom/revenuecat/purchases/common/BillingWrapper$acknowledge$1;->$token:Ljava/lang/String;

    iput-object p3, p0, Lcom/revenuecat/purchases/common/BillingWrapper$acknowledge$1;->$onAcknowledged:Lkotlin/w/b/p;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/revenuecat/purchases/PurchasesError;

    invoke-virtual {p0, p1}, Lcom/revenuecat/purchases/common/BillingWrapper$acknowledge$1;->invoke(Lcom/revenuecat/purchases/PurchasesError;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method

.method public final invoke(Lcom/revenuecat/purchases/PurchasesError;)V
    .locals 1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/revenuecat/purchases/common/BillingWrapper$acknowledge$1;->this$0:Lcom/revenuecat/purchases/common/BillingWrapper;

    new-instance v0, Lcom/revenuecat/purchases/common/BillingWrapper$acknowledge$1$1;

    invoke-direct {v0, p0}, Lcom/revenuecat/purchases/common/BillingWrapper$acknowledge$1$1;-><init>(Lcom/revenuecat/purchases/common/BillingWrapper$acknowledge$1;)V

    invoke-static {p1, v0}, Lcom/revenuecat/purchases/common/BillingWrapper;->access$withConnectedClient(Lcom/revenuecat/purchases/common/BillingWrapper;Lkotlin/w/b/l;)V

    :cond_0
    return-void
.end method
