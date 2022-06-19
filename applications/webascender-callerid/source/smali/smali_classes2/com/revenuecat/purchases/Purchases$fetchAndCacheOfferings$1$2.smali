.class final Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1$2;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1;->invoke(Lorg/json/JSONObject;)V
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
.field final synthetic this$0:Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1$2;->this$0:Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/revenuecat/purchases/PurchasesError;

    invoke-virtual {p0, p1}, Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1$2;->invoke(Lcom/revenuecat/purchases/PurchasesError;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method

.method public final invoke(Lcom/revenuecat/purchases/PurchasesError;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1$2;->this$0:Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1;

    iget-object v1, v0, Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    iget-object v0, v0, Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1;->$completion:Lcom/revenuecat/purchases/interfaces/ReceiveOfferingsListener;

    invoke-static {v1, p1, v0}, Lcom/revenuecat/purchases/Purchases;->access$handleErrorFetchingOfferings(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/PurchasesError;Lcom/revenuecat/purchases/interfaces/ReceiveOfferingsListener;)V

    return-void
.end method
