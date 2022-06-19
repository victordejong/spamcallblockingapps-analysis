.class public abstract Lcom/mopub/network/RequestManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/network/RequestManager$RequestFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/mopub/network/RequestManager$RequestFactory;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lcom/mopub/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mopub/volley/Request<",
            "*>;"
        }
    .end annotation
.end field

.field public b:Lcom/mopub/network/RequestManager$RequestFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public c:Lcom/mopub/network/BackoffPolicy;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/mopub/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mopub/volley/Request<",
            "*>;"
        }
    .end annotation
.end method

.method public cancelRequest()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/mopub/network/Networking;->getRequestQueue()Lcom/mopub/network/MoPubRequestQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/mopub/network/RequestManager;->a:Lcom/mopub/volley/Request;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lcom/mopub/network/MoPubRequestQueue;->cancel(Lcom/mopub/volley/Request;)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/mopub/network/RequestManager;->a:Lcom/mopub/volley/Request;

    .line 5
    iput-object v0, p0, Lcom/mopub/network/RequestManager;->c:Lcom/mopub/network/BackoffPolicy;

    return-void
.end method

.method public isAtCapacity()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/network/RequestManager;->a:Lcom/mopub/volley/Request;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeRequest(Lcom/mopub/network/RequestManager$RequestFactory;Lcom/mopub/network/BackoffPolicy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/mopub/network/BackoffPolicy;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/mopub/network/RequestManager;->cancelRequest()V

    .line 4
    iput-object p1, p0, Lcom/mopub/network/RequestManager;->b:Lcom/mopub/network/RequestManager$RequestFactory;

    .line 5
    iput-object p2, p0, Lcom/mopub/network/RequestManager;->c:Lcom/mopub/network/BackoffPolicy;

    .line 6
    invoke-virtual {p0}, Lcom/mopub/network/RequestManager;->a()Lcom/mopub/volley/Request;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/network/RequestManager;->a:Lcom/mopub/volley/Request;

    .line 7
    invoke-static {}, Lcom/mopub/network/Networking;->getRequestQueue()Lcom/mopub/network/MoPubRequestQueue;

    move-result-object p1

    if-nez p1, :cond_0

    .line 8
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "MoPubRequest queue is null. Clearing request."

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/mopub/network/RequestManager;->a:Lcom/mopub/volley/Request;

    .line 10
    iput-object p1, p0, Lcom/mopub/network/RequestManager;->c:Lcom/mopub/network/BackoffPolicy;

    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/mopub/network/RequestManager;->c:Lcom/mopub/network/BackoffPolicy;

    invoke-virtual {p2}, Lcom/mopub/network/BackoffPolicy;->getRetryCount()I

    move-result p2

    if-nez p2, :cond_1

    .line 12
    iget-object p2, p0, Lcom/mopub/network/RequestManager;->a:Lcom/mopub/volley/Request;

    invoke-virtual {p1, p2}, Lcom/mopub/volley/RequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;

    goto :goto_0

    .line 13
    :cond_1
    iget-object p2, p0, Lcom/mopub/network/RequestManager;->a:Lcom/mopub/volley/Request;

    iget-object v0, p0, Lcom/mopub/network/RequestManager;->c:Lcom/mopub/network/BackoffPolicy;

    invoke-virtual {v0}, Lcom/mopub/network/BackoffPolicy;->getBackoffMs()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/mopub/network/MoPubRequestQueue;->addDelayedRequest(Lcom/mopub/volley/Request;I)V

    :goto_0
    return-void
.end method
