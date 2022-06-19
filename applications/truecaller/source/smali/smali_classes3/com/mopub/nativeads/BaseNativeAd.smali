.class public abstract Lcom/mopub/nativeads/BaseNativeAd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/BaseNativeAd;->a:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/BaseNativeAd;->b:Ljava/util/Set;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/mopub/nativeads/BaseNativeAd;->d:Z

    return-void
.end method


# virtual methods
.method public final addClickTracker(Ljava/lang/String;)V
    .locals 1

    const-string v0, "clickTracker url is not allowed to be null"

    .line 1
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/BaseNativeAd;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addImpressionTracker(Ljava/lang/String;)V
    .locals 1

    const-string v0, "impressionTracker url is not allowed to be null"

    .line 1
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/BaseNativeAd;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract clear(Landroid/view/View;)V
.end method

.method public abstract destroy()V
.end method

.method public invalidate()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/mopub/nativeads/BaseNativeAd;->d:Z

    return-void
.end method

.method public isInvalidated()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mopub/nativeads/BaseNativeAd;->d:Z

    return v0
.end method

.method public abstract prepare(Landroid/view/View;)V
.end method

.method public setNativeEventListener(Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/nativeads/BaseNativeAd;->c:Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;

    return-void
.end method
