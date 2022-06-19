.class public final Lcom/mopub/nativeads/AdapterHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/Context;

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Context cannot be null."

    .line 2
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "start position must be non-negative"

    .line 3
    invoke-static {v2, v3}, Lcom/mopub/common/Preconditions;->checkArgument(ZLjava/lang/String;)V

    const/4 v2, 0x2

    if-lt p3, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v1, "interval must be at least 2"

    .line 4
    invoke-static {v0, v1}, Lcom/mopub/common/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/nativeads/AdapterHelper;->a:Ljava/lang/ref/WeakReference;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/nativeads/AdapterHelper;->b:Landroid/content/Context;

    .line 7
    iput p2, p0, Lcom/mopub/nativeads/AdapterHelper;->c:I

    .line 8
    iput p3, p0, Lcom/mopub/nativeads/AdapterHelper;->d:I

    return-void
.end method


# virtual methods
.method public getAdView(Landroid/view/View;Landroid/view/ViewGroup;Lcom/mopub/nativeads/NativeAd;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mopub/nativeads/AdapterHelper;->getAdView(Landroid/view/View;Landroid/view/ViewGroup;Lcom/mopub/nativeads/NativeAd;Lcom/mopub/nativeads/ViewBinder;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getAdView(Landroid/view/View;Landroid/view/ViewGroup;Lcom/mopub/nativeads/NativeAd;Lcom/mopub/nativeads/ViewBinder;)Landroid/view/View;
    .locals 3

    .line 1
    iget-object p4, p0, Lcom/mopub/nativeads/AdapterHelper;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/Context;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p4, :cond_0

    .line 2
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "Weak reference to Context in AdapterHelper became null. Returning empty view."

    aput-object p3, p2, v0

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 3
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lcom/mopub/nativeads/AdapterHelper;->b:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 4
    :cond_0
    sget-object v2, Le/n/d/i;->a:Ljava/util/WeakHashMap;

    if-eqz p1, :cond_1

    .line 5
    sget-object v2, Le/n/d/i;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/nativeads/NativeAd;

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2, p1}, Lcom/mopub/nativeads/NativeAd;->clear(Landroid/view/View;)V

    :cond_1
    if-eqz p3, :cond_5

    .line 7
    invoke-virtual {p3}, Lcom/mopub/nativeads/NativeAd;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 8
    sget-object v0, Le/n/d/i$a;->AD:Le/n/d/i$a;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 9
    :cond_3
    invoke-virtual {p3, p4, p2}, Lcom/mopub/nativeads/NativeAd;->createAdView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 10
    sget-object p2, Le/n/d/i$a;->AD:Le/n/d/i$a;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 11
    :cond_4
    sget-object p2, Le/n/d/i;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1, p3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p3, p1}, Lcom/mopub/nativeads/NativeAd;->prepare(Landroid/view/View;)V

    .line 13
    invoke-virtual {p3, p1}, Lcom/mopub/nativeads/NativeAd;->renderAdView(Landroid/view/View;)V

    goto :goto_1

    .line 14
    :cond_5
    :goto_0
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p3, v1, [Ljava/lang/Object;

    const-string v1, "NativeAd null or invalid. Returning empty view"

    aput-object v1, p3, v0

    invoke-static {p2, p3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    if-eqz p1, :cond_6

    .line 15
    sget-object p2, Le/n/d/i$a;->EMPTY:Le/n/d/i$a;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 16
    :cond_6
    new-instance p1, Landroid/view/View;

    invoke-direct {p1, p4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 17
    sget-object p2, Le/n/d/i$a;->EMPTY:Le/n/d/i$a;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 p2, 0x8

    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_1
    return-object p1
.end method

.method public isAdPosition(I)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/mopub/nativeads/AdapterHelper;->c:I

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    return v1

    :cond_0
    sub-int/2addr p1, v0

    .line 2
    iget v0, p0, Lcom/mopub/nativeads/AdapterHelper;->d:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public shiftedCount(I)I
    .locals 4

    .line 1
    iget v0, p0, Lcom/mopub/nativeads/AdapterHelper;->c:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget v1, p0, Lcom/mopub/nativeads/AdapterHelper;->d:I

    add-int/lit8 v1, v1, -0x1

    sub-int v0, p1, v0

    .line 3
    rem-int v2, v0, v1

    if-nez v2, :cond_1

    .line 4
    div-int/2addr v0, v1

    goto :goto_0

    :cond_1
    int-to-double v2, v0

    int-to-double v0, v1

    div-double/2addr v2, v0

    .line 5
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    add-int/2addr p1, v0

    return p1
.end method

.method public shiftedPosition(I)I
    .locals 4

    .line 1
    iget v0, p0, Lcom/mopub/nativeads/AdapterHelper;->c:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sub-int v0, p1, v0

    int-to-double v0, v0

    .line 2
    iget v2, p0, Lcom/mopub/nativeads/AdapterHelper;->d:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    sub-int/2addr p1, v0

    return p1
.end method
