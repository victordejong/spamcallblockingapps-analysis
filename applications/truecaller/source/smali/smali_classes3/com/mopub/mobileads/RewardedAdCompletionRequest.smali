.class public Lcom/mopub/mobileads/RewardedAdCompletionRequest;
.super Lcom/mopub/network/MoPubRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/RewardedAdCompletionRequest$RewardedAdCompletionRequestListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mopub/network/MoPubRequest<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final s:Lcom/mopub/mobileads/RewardedAdCompletionRequest$RewardedAdCompletionRequestListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/volley/RetryPolicy;Lcom/mopub/mobileads/RewardedAdCompletionRequest$RewardedAdCompletionRequestListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p4}, Lcom/mopub/network/MoPubRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/volley/Response$ErrorListener;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/mopub/volley/Request;->setShouldCache(Z)Lcom/mopub/volley/Request;

    .line 3
    invoke-virtual {p0, p3}, Lcom/mopub/volley/Request;->setRetryPolicy(Lcom/mopub/volley/RetryPolicy;)Lcom/mopub/volley/Request;

    .line 4
    iput-object p4, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequest;->s:Lcom/mopub/mobileads/RewardedAdCompletionRequest$RewardedAdCompletionRequestListener;

    return-void
.end method


# virtual methods
.method public deliverResponse(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequest;->s:Lcom/mopub/mobileads/RewardedAdCompletionRequest$RewardedAdCompletionRequestListener;

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/RewardedAdCompletionRequest$RewardedAdCompletionRequestListener;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method

.method public g(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/NetworkResponse;",
            ")",
            "Lcom/mopub/volley/Response<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget v0, p1, Lcom/mopub/volley/NetworkResponse;->statusCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lcom/mopub/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Cache$Entry;

    move-result-object p1

    .line 3
    invoke-static {v0, p1}, Lcom/mopub/volley/Response;->success(Ljava/lang/Object;Lcom/mopub/volley/Cache$Entry;)Lcom/mopub/volley/Response;

    move-result-object p1

    return-object p1
.end method
