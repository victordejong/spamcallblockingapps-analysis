.class public Lcom/mopub/network/SingleImpression;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/mopub/network/ImpressionData;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mopub/network/ImpressionData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mopub/network/SingleImpression;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/mopub/network/SingleImpression;->b:Lcom/mopub/network/ImpressionData;

    return-void
.end method


# virtual methods
.method public sendImpression()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mopub/network/SingleImpression;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/mopub/network/SingleImpression;->b:Lcom/mopub/network/ImpressionData;

    .line 3
    sget-object v2, Lcom/mopub/network/ImpressionsEmitter;->a:Ljava/util/HashSet;

    .line 4
    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 5
    const-class v2, Lcom/mopub/network/ImpressionsEmitter;

    monitor-enter v2

    .line 6
    :try_start_0
    new-instance v3, Ljava/util/HashSet;

    sget-object v4, Lcom/mopub/network/ImpressionsEmitter;->a:Ljava/util/HashSet;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mopub/network/ImpressionListener;

    .line 8
    invoke-interface {v3, v0, v1}, Lcom/mopub/network/ImpressionListener;->onImpression(Ljava/lang/String;Lcom/mopub/network/ImpressionData;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 10
    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "SingleImpression ad unit id may not be null."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
