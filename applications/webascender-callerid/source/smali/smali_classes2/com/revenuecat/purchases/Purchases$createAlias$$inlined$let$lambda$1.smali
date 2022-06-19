.class final Lcom/revenuecat/purchases/Purchases$createAlias$$inlined$let$lambda$1;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/Purchases;->createAlias(Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V
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
.field final synthetic $listener$inlined:Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;

.field final synthetic $newAppUserID$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/revenuecat/purchases/Purchases;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/Purchases;Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/Purchases$createAlias$$inlined$let$lambda$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    iput-object p2, p0, Lcom/revenuecat/purchases/Purchases$createAlias$$inlined$let$lambda$1;->$newAppUserID$inlined:Ljava/lang/String;

    iput-object p3, p0, Lcom/revenuecat/purchases/Purchases$createAlias$$inlined$let$lambda$1;->$listener$inlined:Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases$createAlias$$inlined$let$lambda$1;->invoke()V

    sget-object v0, Lkotlin/r;->a:Lkotlin/r;

    return-object v0
.end method

.method public final invoke()V
    .locals 12

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$createAlias$$inlined$let$lambda$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases$createAlias$$inlined$let$lambda$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-virtual {v1}, Lcom/revenuecat/purchases/Purchases;->getState$purchases_release()Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    const-string v6, "emptyMap()"

    invoke-static {v5, v6}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x7b

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lcom/revenuecat/purchases/PurchasesState;->copy$default(Lcom/revenuecat/purchases/PurchasesState;Ljava/lang/Boolean;Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;Ljava/util/Map;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;Lcom/revenuecat/purchases/PurchaserInfo;ZZILjava/lang/Object;)Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/revenuecat/purchases/Purchases;->setState$purchases_release(Lcom/revenuecat/purchases/PurchasesState;)V

    .line 4
    sget-object v1, Lkotlin/r;->a:Lkotlin/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    .line 6
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$createAlias$$inlined$let$lambda$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases$createAlias$$inlined$let$lambda$1;->$newAppUserID$inlined:Ljava/lang/String;

    iget-object v2, p0, Lcom/revenuecat/purchases/Purchases$createAlias$$inlined$let$lambda$1;->$listener$inlined:Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;

    invoke-static {v0, v1, v2}, Lcom/revenuecat/purchases/Purchases;->access$updateAllCaches(Lcom/revenuecat/purchases/Purchases;Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V

    return-void

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0

    throw v1
.end method
