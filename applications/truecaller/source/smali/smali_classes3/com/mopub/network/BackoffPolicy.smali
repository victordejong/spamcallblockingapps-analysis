.class public abstract Lcom/mopub/network/BackoffPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract backoff(Lcom/mopub/volley/VolleyError;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/volley/VolleyError;
        }
    .end annotation
.end method

.method public getBackoffMs()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRetryCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasAttemptRemaining()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
