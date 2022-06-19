.class public abstract Lcom/mopub/mobileads/BaseAd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

.field public c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mopub/mobileads/BaseAd;->a:Z

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/app/Activity;Lcom/mopub/mobileads/AdData;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public b()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract c()Lcom/mopub/common/LifecycleListener;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public abstract getAdNetworkId()Ljava/lang/String;
.end method

.method public abstract load(Landroid/content/Context;Lcom/mopub/mobileads/AdData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract onInvalidate()V
.end method
