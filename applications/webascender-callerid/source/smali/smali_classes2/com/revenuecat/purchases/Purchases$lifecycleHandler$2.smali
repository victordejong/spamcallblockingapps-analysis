.class final Lcom/revenuecat/purchases/Purchases$lifecycleHandler$2;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/Purchases;-><init>(Landroid/app/Application;Ljava/lang/String;Lcom/revenuecat/purchases/common/Backend;Lcom/revenuecat/purchases/common/BillingWrapper;Lcom/revenuecat/purchases/common/caching/DeviceCache;Lcom/revenuecat/purchases/common/Dispatcher;Lcom/revenuecat/purchases/identity/IdentityManager;Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;Lcom/revenuecat/purchases/common/AppConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/a<",
        "Lcom/revenuecat/purchases/AppLifecycleHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revenuecat/purchases/Purchases;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/Purchases;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/Purchases$lifecycleHandler$2;->this$0:Lcom/revenuecat/purchases/Purchases;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/revenuecat/purchases/AppLifecycleHandler;
    .locals 2

    .line 2
    new-instance v0, Lcom/revenuecat/purchases/AppLifecycleHandler;

    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases$lifecycleHandler$2;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-direct {v0, v1}, Lcom/revenuecat/purchases/AppLifecycleHandler;-><init>(Lcom/revenuecat/purchases/LifecycleDelegate;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases$lifecycleHandler$2;->invoke()Lcom/revenuecat/purchases/AppLifecycleHandler;

    move-result-object v0

    return-object v0
.end method
