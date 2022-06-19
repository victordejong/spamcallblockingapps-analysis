.class public Lcom/amazon/device/ads/DTBCacheData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ADMOB_AUTO_REFRESH_TIME_LIMIT_MS:J = 0x7530L


# instance fields
.field private cachingLoader:Lcom/amazon/device/ads/DTBAdRequest;

.field private cachingResponse:Lcom/amazon/device/ads/DTBAdResponse;

.field private isBidRequestFailed:Z

.field private requestId:Ljava/lang/String;

.field private responseTimeStamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/device/ads/DTBAdRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/amazon/device/ads/DTBCacheData;->requestId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/amazon/device/ads/DTBCacheData;->cachingLoader:Lcom/amazon/device/ads/DTBAdRequest;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/amazon/device/ads/DTBCacheData;->isBidRequestFailed:Z

    .line 5
    invoke-static {}, Le/d/c/a/a;->c()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/device/ads/DTBCacheData;->responseTimeStamp:J

    return-void
.end method


# virtual methods
.method public addResponse(Lcom/amazon/device/ads/DTBAdResponse;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/amazon/device/ads/DTBCacheData;->cachingResponse:Lcom/amazon/device/ads/DTBAdResponse;

    .line 2
    invoke-static {}, Le/d/c/a/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/device/ads/DTBCacheData;->responseTimeStamp:J

    return-void
.end method

.method public getAdResponse()Lcom/amazon/device/ads/DTBAdResponse;
    .locals 4

    .line 1
    invoke-static {}, Le/d/c/a/a;->c()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/amazon/device/ads/DTBCacheData;->responseTimeStamp:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/amazon/device/ads/DTBCacheData;->ADMOB_AUTO_REFRESH_TIME_LIMIT_MS:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/amazon/device/ads/DTBCacheData;->cachingResponse:Lcom/amazon/device/ads/DTBAdResponse;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/amazon/device/ads/DTBCacheData;->cachingResponse:Lcom/amazon/device/ads/DTBAdResponse;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DTBCacheData;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseTimeStamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amazon/device/ads/DTBCacheData;->responseTimeStamp:J

    return-wide v0
.end method

.method public isBidRequestFailed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBCacheData;->isBidRequestFailed:Z

    return v0
.end method

.method public setBidRequestFailed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amazon/device/ads/DTBCacheData;->isBidRequestFailed:Z

    return-void
.end method

.method public updateResponse(Lcom/amazon/device/ads/DTBAdResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazon/device/ads/DTBCacheData;->cachingResponse:Lcom/amazon/device/ads/DTBAdResponse;

    return-void
.end method
