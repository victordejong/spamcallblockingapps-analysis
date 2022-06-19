.class Lzendesk/support/ZendeskRequestStorage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/support/RequestStorage;


# static fields
.field private static final HOURS_MINUTES_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final HOUR_IN_MILLIS:J


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final memoryCache:Lzendesk/core/MemoryCache;

.field private final requestMigrator:Lzendesk/support/RequestMigrator;

.field private final storage:Lzendesk/core/BaseStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lzendesk/support/ZendeskRequestStorage;->HOURS_MINUTES_FORMAT:Ljava/text/SimpleDateFormat;

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lzendesk/support/ZendeskRequestStorage;->HOUR_IN_MILLIS:J

    return-void
.end method

.method constructor <init>(Lzendesk/core/BaseStorage;Lzendesk/support/RequestMigrator;Lzendesk/core/MemoryCache;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lzendesk/support/ZendeskRequestStorage;->lock:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lzendesk/support/ZendeskRequestStorage;->storage:Lzendesk/core/BaseStorage;

    .line 4
    iput-object p2, p0, Lzendesk/support/ZendeskRequestStorage;->requestMigrator:Lzendesk/support/RequestMigrator;

    .line 5
    iput-object p3, p0, Lzendesk/support/ZendeskRequestStorage;->memoryCache:Lzendesk/core/MemoryCache;

    return-void
.end method

.method private checkForAndMigrateLegacyRequestData()V
    .locals 3

    .line 1
    iget-object v0, p0, Lzendesk/support/ZendeskRequestStorage;->memoryCache:Lzendesk/core/MemoryCache;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "zendesk_request_storage_memory_cache_migrated_flag"

    invoke-interface {v0, v2, v1}, Lzendesk/core/MemoryCache;->getOrDefault(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lzendesk/support/ZendeskRequestStorage;->requestMigrator:Lzendesk/support/RequestMigrator;

    invoke-interface {v0}, Lzendesk/support/RequestMigrator;->getLegacyRequests()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lg/k/d/a;->i(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lzendesk/support/ZendeskRequestStorage;->storeRequestData(Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lzendesk/support/ZendeskRequestStorage;->requestMigrator:Lzendesk/support/RequestMigrator;

    invoke-interface {v0}, Lzendesk/support/RequestMigrator;->clearLegacyRequestStorage()V

    .line 6
    iget-object v0, p0, Lzendesk/support/ZendeskRequestStorage;->memoryCache:Lzendesk/core/MemoryCache;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v1}, Lzendesk/core/MemoryCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static updateRequests(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/RequestData;",
            ">;",
            "Ljava/util/List<",
            "Lzendesk/support/Request;",
            ">;)",
            "Ljava/util/List<",
            "Lzendesk/support/RequestData;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/RequestData;

    .line 3
    invoke-virtual {v1}, Lzendesk/support/RequestData;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzendesk/support/Request;

    .line 5
    invoke-virtual {p1}, Lzendesk/support/Request;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p1}, Lzendesk/support/Request;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/RequestData;

    .line 7
    invoke-virtual {v1}, Lzendesk/support/RequestData;->getId()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v1}, Lzendesk/support/RequestData;->getId()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {p1}, Lzendesk/support/Request;->getCommentCount()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 10
    invoke-virtual {v1}, Lzendesk/support/RequestData;->getReadCommentCount()I

    move-result v1

    .line 11
    invoke-static {v3, p1, v1}, Lzendesk/support/RequestData;->create(Ljava/lang/String;II)Lzendesk/support/RequestData;

    move-result-object p1

    .line 12
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p1}, Lzendesk/support/Request;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lzendesk/support/RequestData;->create(Lzendesk/support/Request;)Lzendesk/support/RequestData;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 14
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method


# virtual methods
.method public getRequestData()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/support/RequestData;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lzendesk/support/ZendeskRequestStorage;->checkForAndMigrateLegacyRequestData()V

    .line 2
    iget-object v0, p0, Lzendesk/support/ZendeskRequestStorage;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lzendesk/support/ZendeskRequestStorage;->storage:Lzendesk/core/BaseStorage;

    const-string v2, "zendesk_request_storage_request_data_list"

    const-class v3, Lzendesk/support/RequestDataList;

    invoke-interface {v1, v2, v3}, Lzendesk/core/BaseStorage;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/RequestDataList;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 5
    iget-object v0, v1, Lzendesk/support/RequestDataList;->requestDataList:Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    return-object v0

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isRequestDataExpired()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lzendesk/support/ZendeskRequestStorage;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lzendesk/support/ZendeskRequestStorage;->storage:Lzendesk/core/BaseStorage;

    const-string v2, "zendesk_request_storage_requests_data_cache_time"

    invoke-interface {v1, v2}, Lzendesk/core/BaseStorage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 5
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sget-wide v4, Lzendesk/support/ZendeskRequestStorage;->HOUR_IN_MILLIS:J

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmp-long v8, v2, v4

    if-lez v8, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    const-string v3, "ZendeskRequestStorage"

    const-string v4, "Returning Read Requests from cache. Cached Read Requests will expire in %s"

    new-array v5, v6, [Ljava/lang/Object;

    .line 6
    sget-object v6, Lzendesk/support/ZendeskRequestStorage;->HOURS_MINUTES_FORMAT:Ljava/text/SimpleDateFormat;

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v7

    .line 8
    invoke-static {v3, v4, v5}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return v2

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public markRequestAsRead(Ljava/lang/String;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lzendesk/support/ZendeskRequestStorage;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lzendesk/support/ZendeskRequestStorage;->getRequestData()Ljava/util/List;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzendesk/support/RequestData;

    .line 5
    invoke-virtual {v3}, Lzendesk/support/RequestData;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v3}, Lzendesk/support/RequestData;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2, p2}, Lzendesk/support/RequestData;->create(Ljava/lang/String;II)Lzendesk/support/RequestData;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, v2}, Lzendesk/support/ZendeskRequestStorage;->storeRequestData(Ljava/util/List;)V

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public markRequestAsUnread(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lzendesk/support/ZendeskRequestStorage;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lzendesk/support/ZendeskRequestStorage;->getRequestData()Ljava/util/List;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzendesk/support/RequestData;

    .line 5
    invoke-virtual {v3}, Lzendesk/support/RequestData;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v3}, Lzendesk/support/RequestData;->getCommentCount()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 7
    invoke-virtual {v3}, Lzendesk/support/RequestData;->getReadCommentCount()I

    move-result v3

    invoke-static {p1, v4, v3}, Lzendesk/support/RequestData;->create(Ljava/lang/String;II)Lzendesk/support/RequestData;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0, v2}, Lzendesk/support/ZendeskRequestStorage;->storeRequestData(Ljava/util/List;)V

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public storeRequestData(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/RequestData;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lzendesk/support/ZendeskRequestStorage;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lzendesk/support/ZendeskRequestStorage;->storage:Lzendesk/core/BaseStorage;

    const-string v2, "zendesk_request_storage_request_data_list"

    new-instance v3, Lzendesk/support/RequestDataList;

    invoke-direct {v3, p1}, Lzendesk/support/RequestDataList;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2, v3}, Lzendesk/core/BaseStorage;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lzendesk/support/ZendeskRequestStorage;->storage:Lzendesk/core/BaseStorage;

    const-string v1, "zendesk_request_storage_requests_data_cache_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lzendesk/core/BaseStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateRequestData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/Request;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/ZendeskRequestStorage;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lzendesk/support/ZendeskRequestStorage;->getRequestData()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-static {v1, p1}, Lzendesk/support/ZendeskRequestStorage;->updateRequests(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lzendesk/support/ZendeskRequestStorage;->storeRequestData(Ljava/util/List;)V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
