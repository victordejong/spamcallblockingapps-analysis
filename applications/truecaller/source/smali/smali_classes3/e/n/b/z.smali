.class public final synthetic Le/n/b/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/mopub/mobileads/AdAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/mopub/mobileads/AdAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/n/b/z;->a:Lcom/mopub/mobileads/AdAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Le/n/b/z;->a:Lcom/mopub/mobileads/AdAdapter;

    .line 1
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Base Ad failed to load rewarded ad in a timely fashion."

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 2
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_TIMEOUT:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/AdAdapter;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 3
    new-instance v1, Le/n/b/b0;

    invoke-direct {v1, v0}, Le/n/b/b0;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-static {v1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->i(Ljava/lang/Runnable;)V

    return-void
.end method
