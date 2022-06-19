.class public final Lcom/revenuecat/purchases/ListenerConversionsKt$purchaseCompletedListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/ListenerConversionsKt;->purchaseCompletedListener(Lkotlin/w/b/p;Lkotlin/w/b/p;)Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $onError:Lkotlin/w/b/p;

.field final synthetic $onSuccess:Lkotlin/w/b/p;


# direct methods
.method constructor <init>(Lkotlin/w/b/p;Lkotlin/w/b/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/revenuecat/purchases/ListenerConversionsKt$purchaseCompletedListener$1;->$onSuccess:Lkotlin/w/b/p;

    iput-object p2, p0, Lcom/revenuecat/purchases/ListenerConversionsKt$purchaseCompletedListener$1;->$onError:Lkotlin/w/b/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/android/billingclient/api/Purchase;Lcom/revenuecat/purchases/PurchaserInfo;)V
    .locals 1

    const-string v0, "purchase"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchaserInfo"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/ListenerConversionsKt$purchaseCompletedListener$1;->$onSuccess:Lkotlin/w/b/p;

    invoke-interface {v0, p1, p2}, Lkotlin/w/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onError(Lcom/revenuecat/purchases/PurchasesError;Z)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/ListenerConversionsKt$purchaseCompletedListener$1;->$onError:Lkotlin/w/b/p;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lkotlin/w/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
