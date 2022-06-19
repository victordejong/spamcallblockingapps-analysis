.class final Lcom/revenuecat/purchases/identity/IdentityManager$createAlias$1;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/identity/IdentityManager;->createAlias(Ljava/lang/String;Lkotlin/w/b/a;Lkotlin/w/b/l;)V
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
.field final synthetic $newAppUserID:Ljava/lang/String;

.field final synthetic $onSuccess:Lkotlin/w/b/a;

.field final synthetic this$0:Lcom/revenuecat/purchases/identity/IdentityManager;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/identity/IdentityManager;Ljava/lang/String;Lkotlin/w/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/identity/IdentityManager$createAlias$1;->this$0:Lcom/revenuecat/purchases/identity/IdentityManager;

    iput-object p2, p0, Lcom/revenuecat/purchases/identity/IdentityManager$createAlias$1;->$newAppUserID:Ljava/lang/String;

    iput-object p3, p0, Lcom/revenuecat/purchases/identity/IdentityManager$createAlias$1;->$onSuccess:Lkotlin/w/b/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/revenuecat/purchases/identity/IdentityManager$createAlias$1;->invoke()V

    sget-object v0, Lkotlin/r;->a:Lkotlin/r;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/identity/IdentityManager$createAlias$1;->this$0:Lcom/revenuecat/purchases/identity/IdentityManager;

    monitor-enter v0

    :try_start_0
    const-string v1, "Alias created"

    .line 3
    invoke-static {v1}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/revenuecat/purchases/identity/IdentityManager$createAlias$1;->this$0:Lcom/revenuecat/purchases/identity/IdentityManager;

    invoke-static {v1}, Lcom/revenuecat/purchases/identity/IdentityManager;->access$getDeviceCache$p(Lcom/revenuecat/purchases/identity/IdentityManager;)Lcom/revenuecat/purchases/common/caching/DeviceCache;

    move-result-object v1

    iget-object v2, p0, Lcom/revenuecat/purchases/identity/IdentityManager$createAlias$1;->this$0:Lcom/revenuecat/purchases/identity/IdentityManager;

    invoke-virtual {v2}, Lcom/revenuecat/purchases/identity/IdentityManager;->getCurrentAppUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/revenuecat/purchases/common/caching/DeviceCache;->clearCachesForAppUserID(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/revenuecat/purchases/identity/IdentityManager$createAlias$1;->this$0:Lcom/revenuecat/purchases/identity/IdentityManager;

    invoke-static {v1}, Lcom/revenuecat/purchases/identity/IdentityManager;->access$getSubscriberAttributesCache$p(Lcom/revenuecat/purchases/identity/IdentityManager;)Lcom/revenuecat/purchases/subscriberattributes/caching/SubscriberAttributesCache;

    move-result-object v1

    iget-object v2, p0, Lcom/revenuecat/purchases/identity/IdentityManager$createAlias$1;->this$0:Lcom/revenuecat/purchases/identity/IdentityManager;

    invoke-virtual {v2}, Lcom/revenuecat/purchases/identity/IdentityManager;->getCurrentAppUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/revenuecat/purchases/subscriberattributes/caching/SubscriberAttributesCache;->clearSubscriberAttributesIfSyncedForSubscriber(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/revenuecat/purchases/identity/IdentityManager$createAlias$1;->this$0:Lcom/revenuecat/purchases/identity/IdentityManager;

    invoke-static {v1}, Lcom/revenuecat/purchases/identity/IdentityManager;->access$getDeviceCache$p(Lcom/revenuecat/purchases/identity/IdentityManager;)Lcom/revenuecat/purchases/common/caching/DeviceCache;

    move-result-object v1

    iget-object v2, p0, Lcom/revenuecat/purchases/identity/IdentityManager$createAlias$1;->$newAppUserID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/revenuecat/purchases/common/caching/DeviceCache;->cacheAppUserID(Ljava/lang/String;)V

    .line 7
    sget-object v1, Lkotlin/r;->a:Lkotlin/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    .line 9
    iget-object v0, p0, Lcom/revenuecat/purchases/identity/IdentityManager$createAlias$1;->$onSuccess:Lkotlin/w/b/a;

    invoke-interface {v0}, Lkotlin/w/b/a;->invoke()Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0

    throw v1
.end method
