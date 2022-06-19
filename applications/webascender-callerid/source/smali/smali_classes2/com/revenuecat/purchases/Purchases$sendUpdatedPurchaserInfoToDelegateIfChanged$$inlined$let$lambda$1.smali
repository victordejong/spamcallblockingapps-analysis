.class final Lcom/revenuecat/purchases/Purchases$sendUpdatedPurchaserInfoToDelegateIfChanged$$inlined$let$lambda$1;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/Purchases;->sendUpdatedPurchaserInfoToDelegateIfChanged(Lcom/revenuecat/purchases/PurchaserInfo;)V
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
.field final synthetic $info$inlined:Lcom/revenuecat/purchases/PurchaserInfo;

.field final synthetic $listener:Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;

.field final synthetic this$0:Lcom/revenuecat/purchases/Purchases;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/PurchaserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/Purchases$sendUpdatedPurchaserInfoToDelegateIfChanged$$inlined$let$lambda$1;->$listener:Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;

    iput-object p2, p0, Lcom/revenuecat/purchases/Purchases$sendUpdatedPurchaserInfoToDelegateIfChanged$$inlined$let$lambda$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    iput-object p3, p0, Lcom/revenuecat/purchases/Purchases$sendUpdatedPurchaserInfoToDelegateIfChanged$$inlined$let$lambda$1;->$info$inlined:Lcom/revenuecat/purchases/PurchaserInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases$sendUpdatedPurchaserInfoToDelegateIfChanged$$inlined$let$lambda$1;->invoke()V

    sget-object v0, Lkotlin/r;->a:Lkotlin/r;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$sendUpdatedPurchaserInfoToDelegateIfChanged$$inlined$let$lambda$1;->$listener:Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;

    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases$sendUpdatedPurchaserInfoToDelegateIfChanged$$inlined$let$lambda$1;->$info$inlined:Lcom/revenuecat/purchases/PurchaserInfo;

    invoke-interface {v0, v1}, Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;->onReceived(Lcom/revenuecat/purchases/PurchaserInfo;)V

    return-void
.end method
