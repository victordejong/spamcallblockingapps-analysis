.class public final Lcom/revenuecat/purchases/ListenerConversionsKt$receivePurchaserInfoListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/ListenerConversionsKt;->receivePurchaserInfoListener(Lkotlin/w/b/l;Lkotlin/w/b/l;)Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $onError:Lkotlin/w/b/l;

.field final synthetic $onSuccess:Lkotlin/w/b/l;


# direct methods
.method constructor <init>(Lkotlin/w/b/l;Lkotlin/w/b/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/revenuecat/purchases/ListenerConversionsKt$receivePurchaserInfoListener$1;->$onSuccess:Lkotlin/w/b/l;

    iput-object p2, p0, Lcom/revenuecat/purchases/ListenerConversionsKt$receivePurchaserInfoListener$1;->$onError:Lkotlin/w/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/revenuecat/purchases/PurchasesError;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/ListenerConversionsKt$receivePurchaserInfoListener$1;->$onError:Lkotlin/w/b/l;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/r;

    :cond_0
    return-void
.end method

.method public onReceived(Lcom/revenuecat/purchases/PurchaserInfo;)V
    .locals 1

    const-string v0, "purchaserInfo"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/ListenerConversionsKt$receivePurchaserInfoListener$1;->$onSuccess:Lkotlin/w/b/l;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/r;

    :cond_0
    return-void
.end method
