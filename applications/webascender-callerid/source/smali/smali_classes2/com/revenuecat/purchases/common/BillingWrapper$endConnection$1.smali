.class final Lcom/revenuecat/purchases/common/BillingWrapper$endConnection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/common/BillingWrapper;->endConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revenuecat/purchases/common/BillingWrapper;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/common/BillingWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/common/BillingWrapper$endConnection$1;->this$0:Lcom/revenuecat/purchases/common/BillingWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper$endConnection$1;->this$0:Lcom/revenuecat/purchases/common/BillingWrapper;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/revenuecat/purchases/common/BillingWrapper$endConnection$1;->this$0:Lcom/revenuecat/purchases/common/BillingWrapper;

    invoke-virtual {v1}, Lcom/revenuecat/purchases/common/BillingWrapper;->getBillingClient()Lcom/android/billingclient/api/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ending connection for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Lcom/android/billingclient/api/c;->c()V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/revenuecat/purchases/common/BillingWrapper$endConnection$1;->this$0:Lcom/revenuecat/purchases/common/BillingWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/revenuecat/purchases/common/BillingWrapper;->setBillingClient(Lcom/android/billingclient/api/c;)V

    .line 6
    sget-object v1, Lkotlin/r;->a:Lkotlin/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
