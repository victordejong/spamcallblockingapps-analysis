.class final Lcom/revenuecat/purchases/Purchases$dispatch$1;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/Purchases;->dispatch(Lcom/revenuecat/purchases/interfaces/PurchaseErrorListener;Lcom/revenuecat/purchases/PurchasesError;)V
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
.field final synthetic $error:Lcom/revenuecat/purchases/PurchasesError;

.field final synthetic $this_dispatch:Lcom/revenuecat/purchases/interfaces/PurchaseErrorListener;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/interfaces/PurchaseErrorListener;Lcom/revenuecat/purchases/PurchasesError;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/Purchases$dispatch$1;->$this_dispatch:Lcom/revenuecat/purchases/interfaces/PurchaseErrorListener;

    iput-object p2, p0, Lcom/revenuecat/purchases/Purchases$dispatch$1;->$error:Lcom/revenuecat/purchases/PurchasesError;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases$dispatch$1;->invoke()V

    sget-object v0, Lkotlin/r;->a:Lkotlin/r;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$dispatch$1;->$this_dispatch:Lcom/revenuecat/purchases/interfaces/PurchaseErrorListener;

    .line 3
    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases$dispatch$1;->$error:Lcom/revenuecat/purchases/PurchasesError;

    .line 4
    invoke-virtual {v1}, Lcom/revenuecat/purchases/PurchasesError;->getCode()Lcom/revenuecat/purchases/PurchasesErrorCode;

    move-result-object v2

    sget-object v3, Lcom/revenuecat/purchases/PurchasesErrorCode;->PurchaseCancelledError:Lcom/revenuecat/purchases/PurchasesErrorCode;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-interface {v0, v1, v2}, Lcom/revenuecat/purchases/interfaces/PurchaseErrorListener;->onError(Lcom/revenuecat/purchases/PurchasesError;Z)V

    return-void
.end method
