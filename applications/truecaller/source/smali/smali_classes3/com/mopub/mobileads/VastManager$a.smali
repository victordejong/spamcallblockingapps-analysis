.class public Lcom/mopub/mobileads/VastManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/VideoDownloader$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastManager;->onAggregationComplete(Lcom/mopub/mobileads/VastVideoConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mopub/mobileads/VastVideoConfig;

.field public final synthetic b:Lcom/mopub/mobileads/VastManager;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/VastManager;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/VastManager$a;->b:Lcom/mopub/mobileads/VastManager;

    iput-object p2, p0, Lcom/mopub/mobileads/VastManager$a;->a:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/mopub/mobileads/VastManager$a;->b:Lcom/mopub/mobileads/VastManager;

    iget-object v0, p0, Lcom/mopub/mobileads/VastManager$a;->a:Lcom/mopub/mobileads/VastVideoConfig;

    .line 2
    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastManager;->a(Lcom/mopub/mobileads/VastVideoConfig;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/mopub/mobileads/VastManager$a;->b:Lcom/mopub/mobileads/VastManager;

    .line 4
    iget-object p1, p1, Lcom/mopub/mobileads/VastManager;->a:Lcom/mopub/mobileads/VastManager$VastManagerListener;

    .line 5
    iget-object v0, p0, Lcom/mopub/mobileads/VastManager$a;->a:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/VastManager$VastManagerListener;->onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/VastVideoConfig;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Failed to download VAST video."

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/mopub/mobileads/VastManager$a;->b:Lcom/mopub/mobileads/VastManager;

    .line 8
    iget-object p1, p1, Lcom/mopub/mobileads/VastManager;->a:Lcom/mopub/mobileads/VastManager$VastManagerListener;

    const/4 v0, 0x0

    .line 9
    invoke-interface {p1, v0}, Lcom/mopub/mobileads/VastManager$VastManagerListener;->onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/VastVideoConfig;)V

    :goto_0
    return-void
.end method
