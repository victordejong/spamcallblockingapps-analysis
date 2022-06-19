.class public Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/RewardedAdCompletionRequest$RewardedAdCompletionRequestListener;


# static fields
.field public static final g:[I


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/os/Handler;

.field public final c:Lcom/mopub/volley/RequestQueue;

.field public final d:Landroid/content/Context;

.field public e:I

.field public volatile f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->g:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1388
        0x2710
        0x4e20
        0x9c40
        0xea60
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 5
    invoke-static {p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 7
    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 9
    invoke-static {p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "&customer_id="

    .line 12
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ""

    if-nez p3, :cond_0

    move-object p3, p2

    goto :goto_0

    :cond_0
    invoke-static {p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&rcn="

    .line 13
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&rca="

    .line 14
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&nv="

    .line 15
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "5.16.4"

    invoke-static {p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&v="

    .line 16
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "&cec="

    .line 17
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p6, :cond_1

    goto :goto_1

    .line 18
    :cond_1
    invoke-static {p6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "&rcd="

    .line 20
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 22
    iput-object p2, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->a:Ljava/lang/String;

    const/4 p2, 0x0

    .line 23
    iput p2, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->e:I

    .line 24
    iput-object v0, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->b:Landroid/os/Handler;

    .line 25
    invoke-static {p1}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    move-result-object p2

    iput-object p2, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->c:Lcom/mopub/volley/RequestQueue;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->d:Landroid/content/Context;

    return-void
.end method

.method public static makeRewardedAdCompletionRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    if-eqz p0, :cond_1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->a()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->f:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->c:Lcom/mopub/volley/RequestQueue;

    iget-object v1, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/mopub/mobileads/RewardedAdCompletionRequest;

    iget-object v1, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->a:Ljava/lang/String;

    new-instance v3, Lcom/mopub/volley/DefaultRetryPolicy;

    iget v4, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->e:I

    .line 4
    sget-object v5, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->g:[I

    if-ltz v4, :cond_1

    array-length v6, v5

    if-ge v4, v6, :cond_1

    .line 5
    aget v4, v5, v4

    goto :goto_0

    .line 6
    :cond_1
    array-length v4, v5

    add-int/lit8 v4, v4, -0x1

    aget v4, v5, v4

    :goto_0
    add-int/lit16 v4, v4, -0x3e8

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 7
    invoke-direct {v3, v4, v7, v6}, Lcom/mopub/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/mopub/mobileads/RewardedAdCompletionRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/volley/RetryPolicy;Lcom/mopub/mobileads/RewardedAdCompletionRequest$RewardedAdCompletionRequestListener;)V

    .line 8
    iget-object v1, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/volley/Request;->setTag(Ljava/lang/Object;)Lcom/mopub/volley/Request;

    .line 9
    iget-object v1, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->c:Lcom/mopub/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/mopub/volley/RequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;

    .line 10
    iget v0, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->e:I

    const/16 v1, 0x11

    const/4 v2, 0x1

    if-lt v0, v1, :cond_2

    .line 11
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Exceeded number of retries for rewarded video completion request."

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->b:Landroid/os/Handler;

    new-instance v3, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler$a;

    invoke-direct {v3, p0}, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler$a;-><init>(Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;)V

    if-ltz v0, :cond_3

    .line 13
    array-length v4, v5

    if-ge v0, v4, :cond_3

    .line 14
    aget v0, v5, v0

    goto :goto_1

    .line 15
    :cond_3
    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    aget v0, v5, v0

    :goto_1
    int-to-long v4, v0

    .line 16
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    iget v0, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->e:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->e:I

    return-void
.end method

.method public onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p1, Lcom/mopub/volley/VolleyError;->networkResponse:Lcom/mopub/volley/NetworkResponse;

    if-eqz p1, :cond_1

    iget p1, p1, Lcom/mopub/volley/NetworkResponse;->statusCode:I

    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_0

    const/16 v0, 0x258

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->f:Z

    :cond_1
    return-void
.end method

.method public onResponse(Ljava/lang/Integer;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x258

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->f:Z

    :cond_1
    return-void
.end method
