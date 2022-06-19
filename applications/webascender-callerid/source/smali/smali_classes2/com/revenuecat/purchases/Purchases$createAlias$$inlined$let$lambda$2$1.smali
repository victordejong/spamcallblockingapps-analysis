.class final Lcom/revenuecat/purchases/Purchases$createAlias$$inlined$let$lambda$2$1;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/Purchases$createAlias$$inlined$let$lambda$2;->invoke(Lcom/revenuecat/purchases/PurchasesError;)V
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

.field final synthetic this$0:Lcom/revenuecat/purchases/Purchases$createAlias$$inlined$let$lambda$2;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/Purchases$createAlias$$inlined$let$lambda$2;Lcom/revenuecat/purchases/PurchasesError;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/Purchases$createAlias$$inlined$let$lambda$2$1;->this$0:Lcom/revenuecat/purchases/Purchases$createAlias$$inlined$let$lambda$2;

    iput-object p2, p0, Lcom/revenuecat/purchases/Purchases$createAlias$$inlined$let$lambda$2$1;->$error:Lcom/revenuecat/purchases/PurchasesError;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases$createAlias$$inlined$let$lambda$2$1;->invoke()V

    sget-object v0, Lkotlin/r;->a:Lkotlin/r;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$createAlias$$inlined$let$lambda$2$1;->this$0:Lcom/revenuecat/purchases/Purchases$createAlias$$inlined$let$lambda$2;

    iget-object v0, v0, Lcom/revenuecat/purchases/Purchases$createAlias$$inlined$let$lambda$2;->$listener$inlined:Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases$createAlias$$inlined$let$lambda$2$1;->$error:Lcom/revenuecat/purchases/PurchasesError;

    invoke-interface {v0, v1}, Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;->onError(Lcom/revenuecat/purchases/PurchasesError;)V

    :cond_0
    return-void
.end method
