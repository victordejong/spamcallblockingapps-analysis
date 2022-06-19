.class public Le/n/d/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/nativeads/PositioningSource;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/lang/Runnable;

.field public final d:Lcom/mopub/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mopub/volley/Response$Listener<",
            "Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/mopub/volley/Response$ErrorListener;

.field public f:Lcom/mopub/nativeads/PositioningSource$PositioningListener;

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Lcom/mopub/nativeads/PositioningRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Le/n/d/n;->a:Landroid/content/Context;

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Le/n/d/n;->b:Landroid/os/Handler;

    .line 4
    new-instance p1, Le/n/d/n$a;

    invoke-direct {p1, p0}, Le/n/d/n$a;-><init>(Le/n/d/n;)V

    iput-object p1, p0, Le/n/d/n;->c:Ljava/lang/Runnable;

    .line 5
    new-instance p1, Le/n/d/n$b;

    invoke-direct {p1, p0}, Le/n/d/n$b;-><init>(Le/n/d/n;)V

    iput-object p1, p0, Le/n/d/n;->d:Lcom/mopub/volley/Response$Listener;

    .line 6
    new-instance p1, Le/n/d/n$c;

    invoke-direct {p1, p0}, Le/n/d/n$c;-><init>(Le/n/d/n;)V

    iput-object p1, p0, Le/n/d/n;->e:Lcom/mopub/volley/Response$ErrorListener;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Loading positioning from: "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Le/n/d/n;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/mopub/nativeads/PositioningRequest;

    iget-object v1, p0, Le/n/d/n;->a:Landroid/content/Context;

    iget-object v2, p0, Le/n/d/n;->h:Ljava/lang/String;

    iget-object v3, p0, Le/n/d/n;->d:Lcom/mopub/volley/Response$Listener;

    iget-object v4, p0, Le/n/d/n;->e:Lcom/mopub/volley/Response$ErrorListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mopub/nativeads/PositioningRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/volley/Response$Listener;Lcom/mopub/volley/Response$ErrorListener;)V

    iput-object v0, p0, Le/n/d/n;->i:Lcom/mopub/nativeads/PositioningRequest;

    .line 3
    iget-object v0, p0, Le/n/d/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    move-result-object v0

    .line 4
    iget-object v1, p0, Le/n/d/n;->i:Lcom/mopub/nativeads/PositioningRequest;

    invoke-virtual {v0, v1}, Lcom/mopub/volley/RequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;

    return-void
.end method

.method public loadPositions(Ljava/lang/String;Lcom/mopub/nativeads/PositioningSource$PositioningListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/n/d/n;->i:Lcom/mopub/nativeads/PositioningRequest;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/mopub/volley/toolbox/JsonRequest;->cancel()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/n/d/n;->i:Lcom/mopub/nativeads/PositioningRequest;

    .line 4
    :cond_0
    iget v0, p0, Le/n/d/n;->g:I

    if-lez v0, :cond_1

    .line 5
    iget-object v0, p0, Le/n/d/n;->b:Landroid/os/Handler;

    iget-object v1, p0, Le/n/d/n;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Le/n/d/n;->g:I

    .line 7
    :cond_1
    iput-object p2, p0, Le/n/d/n;->f:Lcom/mopub/nativeads/PositioningSource$PositioningListener;

    .line 8
    new-instance p2, Le/n/d/m;

    iget-object v0, p0, Le/n/d/n;->a:Landroid/content/Context;

    invoke-direct {p2, v0}, Le/n/d/m;-><init>(Landroid/content/Context;)V

    .line 9
    invoke-virtual {p2, p1}, Le/n/d/m;->withAdUnitId(Ljava/lang/String;)Le/n/d/m;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/Constants;->HOST:Ljava/lang/String;

    .line 10
    invoke-virtual {p1, p2}, Le/n/d/m;->generateUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/n/d/n;->h:Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Le/n/d/n;->a()V

    return-void
.end method
