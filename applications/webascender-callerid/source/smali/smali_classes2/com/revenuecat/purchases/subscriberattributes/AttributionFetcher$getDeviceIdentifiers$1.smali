.class final Lcom/revenuecat/purchases/subscriberattributes/AttributionFetcher$getDeviceIdentifiers$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/subscriberattributes/AttributionFetcher;->getDeviceIdentifiers(Landroid/app/Application;Lkotlin/w/b/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $applicationContext:Landroid/app/Application;

.field final synthetic $completion:Lkotlin/w/b/p;

.field final synthetic this$0:Lcom/revenuecat/purchases/subscriberattributes/AttributionFetcher;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/subscriberattributes/AttributionFetcher;Landroid/app/Application;Lkotlin/w/b/p;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/subscriberattributes/AttributionFetcher$getDeviceIdentifiers$1;->this$0:Lcom/revenuecat/purchases/subscriberattributes/AttributionFetcher;

    iput-object p2, p0, Lcom/revenuecat/purchases/subscriberattributes/AttributionFetcher$getDeviceIdentifiers$1;->$applicationContext:Landroid/app/Application;

    iput-object p3, p0, Lcom/revenuecat/purchases/subscriberattributes/AttributionFetcher$getDeviceIdentifiers$1;->$completion:Lkotlin/w/b/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/subscriberattributes/AttributionFetcher$getDeviceIdentifiers$1;->this$0:Lcom/revenuecat/purchases/subscriberattributes/AttributionFetcher;

    iget-object v1, p0, Lcom/revenuecat/purchases/subscriberattributes/AttributionFetcher$getDeviceIdentifiers$1;->$applicationContext:Landroid/app/Application;

    invoke-static {v0, v1}, Lcom/revenuecat/purchases/subscriberattributes/AttributionFetcher;->access$getAdvertisingID(Lcom/revenuecat/purchases/subscriberattributes/AttributionFetcher;Landroid/app/Application;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/revenuecat/purchases/subscriberattributes/AttributionFetcher$getDeviceIdentifiers$1;->this$0:Lcom/revenuecat/purchases/subscriberattributes/AttributionFetcher;

    iget-object v2, p0, Lcom/revenuecat/purchases/subscriberattributes/AttributionFetcher$getDeviceIdentifiers$1;->$applicationContext:Landroid/app/Application;

    invoke-static {v1, v2}, Lcom/revenuecat/purchases/subscriberattributes/AttributionFetcher;->access$getAndroidID(Lcom/revenuecat/purchases/subscriberattributes/AttributionFetcher;Landroid/app/Application;)Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/revenuecat/purchases/subscriberattributes/AttributionFetcher$getDeviceIdentifiers$1;->$completion:Lkotlin/w/b/p;

    const-string v3, "androidID"

    invoke-static {v1, v3}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v0, v1}, Lkotlin/w/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
