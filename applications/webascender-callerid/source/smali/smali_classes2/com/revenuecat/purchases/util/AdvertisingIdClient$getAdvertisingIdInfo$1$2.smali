.class final Lcom/revenuecat/purchases/util/AdvertisingIdClient$getAdvertisingIdInfo$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/util/AdvertisingIdClient$getAdvertisingIdInfo$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $connection:Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdvertisingConnection;

.field final synthetic this$0:Lcom/revenuecat/purchases/util/AdvertisingIdClient$getAdvertisingIdInfo$1;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/util/AdvertisingIdClient$getAdvertisingIdInfo$1;Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdvertisingConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/util/AdvertisingIdClient$getAdvertisingIdInfo$1$2;->this$0:Lcom/revenuecat/purchases/util/AdvertisingIdClient$getAdvertisingIdInfo$1;

    iput-object p2, p0, Lcom/revenuecat/purchases/util/AdvertisingIdClient$getAdvertisingIdInfo$1$2;->$connection:Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdvertisingConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/util/AdvertisingIdClient$getAdvertisingIdInfo$1$2;->this$0:Lcom/revenuecat/purchases/util/AdvertisingIdClient$getAdvertisingIdInfo$1;

    iget-object v0, v0, Lcom/revenuecat/purchases/util/AdvertisingIdClient$getAdvertisingIdInfo$1;->$application:Landroid/app/Application;

    iget-object v1, p0, Lcom/revenuecat/purchases/util/AdvertisingIdClient$getAdvertisingIdInfo$1$2;->$connection:Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdvertisingConnection;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
