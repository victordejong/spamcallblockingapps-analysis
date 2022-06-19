.class public Lcom/mopub/network/MultiAdRequest;
.super Lcom/mopub/network/MoPubRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/network/MultiAdRequest$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mopub/network/MoPubRequest<",
        "Lcom/mopub/network/MultiAdResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final mListener:Lcom/mopub/network/MultiAdRequest$Listener;

.field public final s:Lcom/mopub/common/AdFormat;

.field public final t:Ljava/lang/String;

.field public final u:Landroid/content/Context;

.field public v:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/MultiAdRequest$Listener;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/mopub/common/MoPub;->getPersonalInformationManager()Lcom/mopub/common/privacy/PersonalInfoManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mopub/common/MoPub;->isSdkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    goto :goto_1

    .line 2
    :cond_1
    :goto_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Make sure to call MoPub#initializeSdk before loading an ad."

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    const-string v0, ""

    .line 3
    :goto_1
    invoke-direct {p0, p4, v0, p5}, Lcom/mopub/network/MoPubRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/volley/Response$ErrorListener;)V

    .line 4
    iput v2, p0, Lcom/mopub/network/MultiAdRequest;->v:I

    .line 5
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 7
    invoke-static {p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 9
    iput-object p3, p0, Lcom/mopub/network/MultiAdRequest;->t:Ljava/lang/String;

    .line 10
    iput-object p5, p0, Lcom/mopub/network/MultiAdRequest;->mListener:Lcom/mopub/network/MultiAdRequest$Listener;

    .line 11
    iput-object p2, p0, Lcom/mopub/network/MultiAdRequest;->s:Lcom/mopub/common/AdFormat;

    .line 12
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/network/MultiAdRequest;->u:Landroid/content/Context;

    .line 13
    new-instance p1, Lcom/mopub/volley/DefaultRetryPolicy;

    const/16 p2, 0x9c4

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, v1, p3}, Lcom/mopub/volley/DefaultRetryPolicy;-><init>(IIF)V

    .line 14
    invoke-virtual {p0, p1}, Lcom/mopub/volley/Request;->setRetryPolicy(Lcom/mopub/volley/RetryPolicy;)Lcom/mopub/volley/Request;

    .line 15
    invoke-virtual {p0, v2}, Lcom/mopub/volley/Request;->setShouldCache(Z)Lcom/mopub/volley/Request;

    .line 16
    invoke-static {}, Lcom/mopub/common/MoPub;->getPersonalInformationManager()Lcom/mopub/common/privacy/PersonalInfoManager;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 17
    invoke-virtual {p1, v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->requestSync(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/mopub/volley/Request;->cancel()V

    return-void
.end method

.method public deliverResponse(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/mopub/network/MultiAdResponse;

    .line 2
    invoke-virtual {p0}, Lcom/mopub/volley/Request;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mopub/network/MultiAdRequest;->mListener:Lcom/mopub/network/MultiAdRequest$Listener;

    invoke-interface {v0, p1}, Lcom/mopub/network/MultiAdRequest$Listener;->onSuccessResponse(Lcom/mopub/network/MultiAdResponse;)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/mopub/network/MultiAdRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/mopub/network/MultiAdRequest;

    .line 3
    iget-object v1, p0, Lcom/mopub/network/MultiAdRequest;->t:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 4
    iget-object v3, p1, Lcom/mopub/network/MultiAdRequest;->t:Ljava/lang/String;

    if-nez v3, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 5
    :cond_3
    iget-object v1, p1, Lcom/mopub/network/MultiAdRequest;->t:Ljava/lang/String;

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    if-nez v1, :cond_5

    .line 6
    iget-object v1, p0, Lcom/mopub/network/MultiAdRequest;->s:Lcom/mopub/common/AdFormat;

    iget-object v3, p1, Lcom/mopub/network/MultiAdRequest;->s:Lcom/mopub/common/AdFormat;

    if-ne v1, v3, :cond_5

    .line 7
    invoke-virtual {p0}, Lcom/mopub/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mopub/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_1
    return v0
.end method

.method public g(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/NetworkResponse;",
            ")",
            "Lcom/mopub/volley/Response<",
            "Lcom/mopub/network/MultiAdResponse;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/mopub/network/MultiAdResponse;

    iget-object v1, p0, Lcom/mopub/network/MultiAdRequest;->u:Landroid/content/Context;

    iget-object v2, p0, Lcom/mopub/network/MultiAdRequest;->s:Lcom/mopub/common/AdFormat;

    iget-object v3, p0, Lcom/mopub/network/MultiAdRequest;->t:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/mopub/network/MultiAdResponse;-><init>(Landroid/content/Context;Lcom/mopub/volley/NetworkResponse;Lcom/mopub/common/AdFormat;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-static {p1}, Lcom/mopub/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Cache$Entry;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mopub/volley/Response;->success(Ljava/lang/Object;Lcom/mopub/volley/Cache$Entry;)Lcom/mopub/volley/Response;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    instance-of v0, p1, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lcom/mopub/network/MoPubNetworkError;

    invoke-static {p1}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance v0, Lcom/mopub/network/MoPubNetworkError;

    sget-object v1, Lcom/mopub/network/MoPubNetworkError$Reason;->UNSPECIFIED:Lcom/mopub/network/MoPubNetworkError$Reason;

    invoke-direct {v0, p1, v1}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/Throwable;Lcom/mopub/network/MoPubNetworkError$Reason;)V

    invoke-static {v0}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/mopub/network/MultiAdRequest;->v:I

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/mopub/network/MultiAdRequest;->t:Ljava/lang/String;

    if-nez v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/mopub/network/MultiAdRequest;->s:Lcom/mopub/common/AdFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    invoke-virtual {p0}, Lcom/mopub/network/MoPubRequest;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/mopub/network/MultiAdRequest;->v:I

    .line 6
    :cond_1
    iget v0, p0, Lcom/mopub/network/MultiAdRequest;->v:I

    return v0
.end method
