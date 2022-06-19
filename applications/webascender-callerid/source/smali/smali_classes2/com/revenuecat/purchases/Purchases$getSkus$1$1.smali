.class final Lcom/revenuecat/purchases/Purchases$getSkus$1$1;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/Purchases$getSkus$1;->invoke(Ljava/util/List;)V
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
.field final synthetic $skuDetails:Ljava/util/List;

.field final synthetic this$0:Lcom/revenuecat/purchases/Purchases$getSkus$1;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/Purchases$getSkus$1;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/Purchases$getSkus$1$1;->this$0:Lcom/revenuecat/purchases/Purchases$getSkus$1;

    iput-object p2, p0, Lcom/revenuecat/purchases/Purchases$getSkus$1$1;->$skuDetails:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases$getSkus$1$1;->invoke()V

    sget-object v0, Lkotlin/r;->a:Lkotlin/r;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$getSkus$1$1;->this$0:Lcom/revenuecat/purchases/Purchases$getSkus$1;

    iget-object v0, v0, Lcom/revenuecat/purchases/Purchases$getSkus$1;->$completion:Lcom/revenuecat/purchases/interfaces/GetSkusResponseListener;

    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases$getSkus$1$1;->$skuDetails:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/revenuecat/purchases/interfaces/GetSkusResponseListener;->onReceived(Ljava/util/List;)V

    return-void
.end method
