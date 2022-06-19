.class final Lcom/revenuecat/purchases/Purchases$identify$$inlined$let$lambda$2;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/Purchases;->identify(Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V
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
.field final synthetic $listener$inlined:Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;

.field final synthetic $newAppUserID$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/revenuecat/purchases/Purchases;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/Purchases;Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/Purchases$identify$$inlined$let$lambda$2;->this$0:Lcom/revenuecat/purchases/Purchases;

    iput-object p2, p0, Lcom/revenuecat/purchases/Purchases$identify$$inlined$let$lambda$2;->$newAppUserID$inlined:Ljava/lang/String;

    iput-object p3, p0, Lcom/revenuecat/purchases/Purchases$identify$$inlined$let$lambda$2;->$listener$inlined:Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/revenuecat/purchases/PurchasesError;

    invoke-virtual {p0, p1}, Lcom/revenuecat/purchases/Purchases$identify$$inlined$let$lambda$2;->invoke(Lcom/revenuecat/purchases/PurchasesError;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method

.method public final invoke(Lcom/revenuecat/purchases/PurchasesError;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$identify$$inlined$let$lambda$2;->this$0:Lcom/revenuecat/purchases/Purchases;

    new-instance v1, Lcom/revenuecat/purchases/Purchases$identify$$inlined$let$lambda$2$1;

    invoke-direct {v1, p0, p1}, Lcom/revenuecat/purchases/Purchases$identify$$inlined$let$lambda$2$1;-><init>(Lcom/revenuecat/purchases/Purchases$identify$$inlined$let$lambda$2;Lcom/revenuecat/purchases/PurchasesError;)V

    invoke-static {v0, v1}, Lcom/revenuecat/purchases/Purchases;->access$dispatch(Lcom/revenuecat/purchases/Purchases;Lkotlin/w/b/a;)V

    return-void
.end method
