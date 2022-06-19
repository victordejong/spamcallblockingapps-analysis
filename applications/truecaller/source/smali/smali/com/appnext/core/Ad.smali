.class public abstract Lcom/appnext/core/Ad;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ORIENTATION_AUTO:Ljava/lang/String; = "automatic"

.field public static final ORIENTATION_DEFAULT:Ljava/lang/String; = "not_set"

.field public static final ORIENTATION_LANDSCAPE:Ljava/lang/String; = "landscape"

.field public static final ORIENTATION_PORTRAIT:Ljava/lang/String; = "portrait"

.field public static fq:Z = false


# instance fields
.field private adOpenedCallbackWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/appnext/core/callbacks/OnAdOpened;",
            ">;"
        }
    .end annotation
.end field

.field private adRequest:Lcom/appnext/core/c;

.field private cat:Ljava/lang/String;

.field private closeCallbackWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/appnext/core/callbacks/OnAdClosed;",
            ">;"
        }
    .end annotation
.end field

.field private cnt:I

.field public context:Landroid/content/Context;

.field private mSpecificCategories:Ljava/lang/String;

.field private maxVideoLength:I

.field private minVideoLength:I

.field private mute:Z

.field private onAdClickedWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/appnext/core/callbacks/OnAdClicked;",
            ">;"
        }
    .end annotation
.end field

.field private onAdErrorWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/appnext/core/callbacks/OnAdError;",
            ">;"
        }
    .end annotation
.end field

.field private onAdLoadedWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/appnext/core/callbacks/OnAdLoaded;",
            ">;"
        }
    .end annotation
.end field

.field private orientation:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private pbk:Ljava/lang/String;

.field private placementID:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field public setMute:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/appnext/core/Ad;->onAdClickedWR:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object v0, p0, Lcom/appnext/core/Ad;->onAdErrorWR:Ljava/lang/ref/WeakReference;

    .line 4
    iput-object v0, p0, Lcom/appnext/core/Ad;->onAdLoadedWR:Ljava/lang/ref/WeakReference;

    .line 5
    iput-object v0, p0, Lcom/appnext/core/Ad;->closeCallbackWR:Ljava/lang/ref/WeakReference;

    .line 6
    iput-object v0, p0, Lcom/appnext/core/Ad;->adOpenedCallbackWR:Ljava/lang/ref/WeakReference;

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/appnext/core/Ad;->placementID:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/appnext/core/Ad;->cat:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/appnext/core/Ad;->mSpecificCategories:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/appnext/core/Ad;->pbk:Ljava/lang/String;

    const/16 v1, 0x32

    .line 11
    iput v1, p0, Lcom/appnext/core/Ad;->cnt:I

    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lcom/appnext/core/Ad;->maxVideoLength:I

    .line 13
    iput v1, p0, Lcom/appnext/core/Ad;->minVideoLength:I

    .line 14
    iput-boolean v1, p0, Lcom/appnext/core/Ad;->setMute:Z

    .line 15
    iput-boolean v1, p0, Lcom/appnext/core/Ad;->mute:Z

    const-string v1, "not_set"

    .line 16
    iput-object v1, p0, Lcom/appnext/core/Ad;->orientation:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/appnext/core/Ad;->sessionId:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/appnext/core/Ad;->packageName:Ljava/lang/String;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 19
    iput-object p1, p0, Lcom/appnext/core/Ad;->context:Landroid/content/Context;

    .line 20
    invoke-virtual {p0, p2}, Lcom/appnext/core/Ad;->setPlacementID(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/appnext/core/o;->az()Lcom/appnext/core/o;

    move-result-object p2

    new-instance v0, Lcom/appnext/core/Ad$1;

    invoke-direct {v0, p0, p1}, Lcom/appnext/core/Ad$1;-><init>(Lcom/appnext/core/Ad;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lcom/appnext/core/o;->a(Ljava/lang/Runnable;)V

    .line 22
    invoke-static {}, Lcom/appnext/core/o;->az()Lcom/appnext/core/o;

    move-result-object p2

    new-instance v0, Lcom/appnext/core/Ad$2;

    invoke-direct {v0, p0, p1}, Lcom/appnext/core/Ad$2;-><init>(Lcom/appnext/core/Ad;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lcom/appnext/core/o;->a(Ljava/lang/Runnable;)V

    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "placementID cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/appnext/core/Ad;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/appnext/core/Ad;->onAdClickedWR:Ljava/lang/ref/WeakReference;

    .line 27
    iput-object v0, p0, Lcom/appnext/core/Ad;->onAdErrorWR:Ljava/lang/ref/WeakReference;

    .line 28
    iput-object v0, p0, Lcom/appnext/core/Ad;->onAdLoadedWR:Ljava/lang/ref/WeakReference;

    .line 29
    iput-object v0, p0, Lcom/appnext/core/Ad;->closeCallbackWR:Ljava/lang/ref/WeakReference;

    .line 30
    iput-object v0, p0, Lcom/appnext/core/Ad;->adOpenedCallbackWR:Ljava/lang/ref/WeakReference;

    const-string v0, ""

    .line 31
    iput-object v0, p0, Lcom/appnext/core/Ad;->placementID:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/appnext/core/Ad;->cat:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/appnext/core/Ad;->mSpecificCategories:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/appnext/core/Ad;->pbk:Ljava/lang/String;

    const/16 v1, 0x32

    .line 35
    iput v1, p0, Lcom/appnext/core/Ad;->cnt:I

    const/4 v1, 0x0

    .line 36
    iput v1, p0, Lcom/appnext/core/Ad;->maxVideoLength:I

    .line 37
    iput v1, p0, Lcom/appnext/core/Ad;->minVideoLength:I

    .line 38
    iput-boolean v1, p0, Lcom/appnext/core/Ad;->setMute:Z

    .line 39
    iput-boolean v1, p0, Lcom/appnext/core/Ad;->mute:Z

    const-string v1, "not_set"

    .line 40
    iput-object v1, p0, Lcom/appnext/core/Ad;->orientation:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/appnext/core/Ad;->sessionId:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/appnext/core/Ad;->packageName:Ljava/lang/String;

    .line 43
    :try_start_0
    iget-object v0, p1, Lcom/appnext/core/Ad;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/appnext/core/Ad;->context:Landroid/content/Context;

    .line 44
    invoke-virtual {p1}, Lcom/appnext/core/Ad;->getPlacementID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appnext/core/Ad;->setPlacementID(Ljava/lang/String;)V

    .line 45
    iget-object v0, p1, Lcom/appnext/core/Ad;->cat:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/appnext/core/Ad;->setCategories(Ljava/lang/String;)V

    .line 46
    iget-object v0, p1, Lcom/appnext/core/Ad;->mSpecificCategories:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/appnext/core/Ad;->setSpecificCategories(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lcom/appnext/core/Ad;->getPostback()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appnext/core/Ad;->setPostback(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Lcom/appnext/core/Ad;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appnext/core/Ad;->setCount(I)V

    .line 49
    invoke-virtual {p1}, Lcom/appnext/core/Ad;->getMinVideoLength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appnext/core/Ad;->setMinVideoLength(I)V

    .line 50
    invoke-virtual {p1}, Lcom/appnext/core/Ad;->getMaxVideoLength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appnext/core/Ad;->setMaxVideoLength(I)V

    .line 51
    invoke-virtual {p1}, Lcom/appnext/core/Ad;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appnext/core/Ad;->setSessionId(Ljava/lang/String;)V

    .line 52
    iget-object v0, p1, Lcom/appnext/core/Ad;->onAdClickedWR:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/appnext/core/Ad;->onAdClickedWR:Ljava/lang/ref/WeakReference;

    .line 53
    iget-object v0, p1, Lcom/appnext/core/Ad;->onAdErrorWR:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/appnext/core/Ad;->onAdErrorWR:Ljava/lang/ref/WeakReference;

    .line 54
    iget-object v0, p1, Lcom/appnext/core/Ad;->onAdLoadedWR:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/appnext/core/Ad;->onAdLoadedWR:Ljava/lang/ref/WeakReference;

    .line 55
    iget-object v0, p1, Lcom/appnext/core/Ad;->closeCallbackWR:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/appnext/core/Ad;->closeCallbackWR:Ljava/lang/ref/WeakReference;

    .line 56
    iget-object p1, p1, Lcom/appnext/core/Ad;->adOpenedCallbackWR:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/appnext/core/Ad;->adOpenedCallbackWR:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "Ad$Ad"

    .line 57
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/appnext/core/Ad;->context:Landroid/content/Context;

    .line 2
    iput-object v0, p0, Lcom/appnext/core/Ad;->onAdClickedWR:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object v0, p0, Lcom/appnext/core/Ad;->onAdErrorWR:Ljava/lang/ref/WeakReference;

    .line 4
    iput-object v0, p0, Lcom/appnext/core/Ad;->onAdLoadedWR:Ljava/lang/ref/WeakReference;

    .line 5
    iput-object v0, p0, Lcom/appnext/core/Ad;->closeCallbackWR:Ljava/lang/ref/WeakReference;

    .line 6
    iput-object v0, p0, Lcom/appnext/core/Ad;->adOpenedCallbackWR:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 2
    :cond_2
    instance-of v2, p1, Lcom/appnext/core/Ad;

    if-eqz v2, :cond_4

    .line 3
    move-object v2, p1

    check-cast v2, Lcom/appnext/core/Ad;

    invoke-virtual {v2}, Lcom/appnext/core/Ad;->getPlacementID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/appnext/core/Ad;->getPlacementID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/appnext/core/Ad;

    .line 4
    invoke-virtual {v2}, Lcom/appnext/core/Ad;->getCategories()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/appnext/core/Ad;->getCategories()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/appnext/core/Ad;

    .line 5
    invoke-virtual {v2}, Lcom/appnext/core/Ad;->getSpecificCategories()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/appnext/core/Ad;->getSpecificCategories()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/appnext/core/Ad;

    .line 6
    invoke-virtual {v2}, Lcom/appnext/core/Ad;->getPostback()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/appnext/core/Ad;->getPostback()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/appnext/core/Ad;

    .line 7
    invoke-virtual {v2}, Lcom/appnext/core/Ad;->getMinVideoLength()I

    move-result v2

    invoke-virtual {p0}, Lcom/appnext/core/Ad;->getMinVideoLength()I

    move-result v3

    if-ne v2, v3, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/appnext/core/Ad;

    .line 8
    invoke-virtual {v2}, Lcom/appnext/core/Ad;->getMaxVideoLength()I

    move-result v2

    invoke-virtual {p0}, Lcom/appnext/core/Ad;->getMaxVideoLength()I

    move-result v3

    if-ne v2, v3, :cond_3

    check-cast p1, Lcom/appnext/core/Ad;

    .line 9
    invoke-virtual {p1}, Lcom/appnext/core/Ad;->getCount()I

    move-result p1

    invoke-virtual {p0}, Lcom/appnext/core/Ad;->getCount()I

    move-result v2

    if-ne p1, v2, :cond_3

    return v0

    :cond_3
    return v1

    .line 10
    :cond_4
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    return v1
.end method

.method public abstract getAUID()Ljava/lang/String;
.end method

.method public getAdRequest()Lcom/appnext/core/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/Ad;->adRequest:Lcom/appnext/core/c;

    return-object v0
.end method

.method public getCategories()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/Ad;->cat:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/Ad;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/appnext/core/Ad;->cnt:I

    return v0
.end method

.method public abstract getECPM(Lcom/appnext/core/callbacks/OnECPMLoaded;)V
.end method

.method public getMaxVideoLength()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/appnext/core/Ad;->maxVideoLength:I

    return v0
.end method

.method public getMinVideoLength()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/appnext/core/Ad;->minVideoLength:I

    return v0
.end method

.method public getMute()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/appnext/core/Ad;->mute:Z

    return v0
.end method

.method public getOnAdClickedCallback()Lcom/appnext/core/callbacks/OnAdClicked;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/Ad;->onAdClickedWR:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appnext/core/callbacks/OnAdClicked;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnAdClosedCallback()Lcom/appnext/core/callbacks/OnAdClosed;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/Ad;->closeCallbackWR:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appnext/core/callbacks/OnAdClosed;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnAdErrorCallback()Lcom/appnext/core/callbacks/OnAdError;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/Ad;->onAdErrorWR:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appnext/core/callbacks/OnAdError;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnAdLoadedCallback()Lcom/appnext/core/callbacks/OnAdLoaded;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/Ad;->onAdLoadedWR:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appnext/core/callbacks/OnAdLoaded;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnAdOpenedCallback()Lcom/appnext/core/callbacks/OnAdOpened;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/Ad;->adOpenedCallbackWR:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appnext/core/callbacks/OnAdOpened;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOrientation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/Ad;->orientation:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/Ad;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlacementID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/Ad;->placementID:Ljava/lang/String;

    return-object v0
.end method

.method public getPostback()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/Ad;->pbk:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/Ad;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecificCategories()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/Ad;->mSpecificCategories:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getTID()Ljava/lang/String;
.end method

.method public abstract getVID()Ljava/lang/String;
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x1f

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/appnext/core/Ad;->getPlacementID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v1, v0

    .line 2
    invoke-virtual {p0}, Lcom/appnext/core/Ad;->getCategories()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    .line 3
    invoke-virtual {p0}, Lcom/appnext/core/Ad;->getSpecificCategories()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    .line 4
    invoke-virtual {p0}, Lcom/appnext/core/Ad;->getPostback()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    .line 5
    invoke-virtual {p0}, Lcom/appnext/core/Ad;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    .line 6
    invoke-virtual {p0}, Lcom/appnext/core/Ad;->getMinVideoLength()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    .line 7
    invoke-virtual {p0}, Lcom/appnext/core/Ad;->getMaxVideoLength()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v1, v0

    return v1

    :catchall_0
    return v0
.end method

.method public abstract isAdLoaded()Z
.end method

.method public abstract loadAd()V
.end method

.method public setAdRequest(Lcom/appnext/core/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/Ad;->adRequest:Lcom/appnext/core/c;

    return-void
.end method

.method public setCategories(Ljava/lang/String;)V
    .locals 3

    const-string v0, "UTF-8"

    const-string v1, ""

    if-nez p1, :cond_0

    move-object p1, v1

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object v1, p1

    .line 3
    :catchall_0
    iput-object v1, p0, Lcom/appnext/core/Ad;->cat:Ljava/lang/String;

    return-void
.end method

.method public setCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/appnext/core/Ad;->cnt:I

    return-void
.end method

.method public setMaxVideoLength(I)V
    .locals 1

    if-ltz p1, :cond_2

    if-lez p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/appnext/core/Ad;->getMinVideoLength()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/appnext/core/Ad;->getMinVideoLength()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Max Length cannot be lower than min length"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iput p1, p0, Lcom/appnext/core/Ad;->maxVideoLength:I

    return-void

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Max Length must be higher than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMinVideoLength(I)V
    .locals 1

    if-ltz p1, :cond_2

    if-lez p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/appnext/core/Ad;->getMaxVideoLength()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/appnext/core/Ad;->getMaxVideoLength()I

    move-result v0

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Min Length cannot be higher than max length"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iput p1, p0, Lcom/appnext/core/Ad;->minVideoLength:I

    return-void

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Min Length must be higher than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMute(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/appnext/core/Ad;->setMute:Z

    .line 2
    iput-boolean p1, p0, Lcom/appnext/core/Ad;->mute:Z

    return-void
.end method

.method public setOnAdClickedCallback(Lcom/appnext/core/callbacks/OnAdClicked;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/appnext/core/Ad;->onAdClickedWR:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public setOnAdClosedCallback(Lcom/appnext/core/callbacks/OnAdClosed;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/appnext/core/Ad;->closeCallbackWR:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public setOnAdErrorCallback(Lcom/appnext/core/callbacks/OnAdError;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/appnext/core/Ad;->onAdErrorWR:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public setOnAdLoadedCallback(Lcom/appnext/core/callbacks/OnAdLoaded;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/appnext/core/Ad;->onAdLoadedWR:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public setOnAdOpenedCallback(Lcom/appnext/core/callbacks/OnAdOpened;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/appnext/core/Ad;->adOpenedCallbackWR:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public setOrientation(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    const-string v0, "automatic"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "not_set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "landscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "portrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong orientation type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/appnext/core/Ad;->orientation:Ljava/lang/String;

    return-void

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "orientation type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 3

    const-string v0, "UTF-8"

    const-string v1, ""

    if-nez p1, :cond_0

    move-object p1, v1

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object v1, p1

    .line 3
    :catchall_0
    iput-object v1, p0, Lcom/appnext/core/Ad;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPlacementID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/Ad;->placementID:Ljava/lang/String;

    return-void
.end method

.method public setPostback(Ljava/lang/String;)V
    .locals 3

    const-string v0, "UTF-8"

    const-string v1, ""

    if-nez p1, :cond_0

    move-object p1, v1

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object v1, p1

    .line 3
    :catchall_0
    iput-object v1, p0, Lcom/appnext/core/Ad;->pbk:Ljava/lang/String;

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/Ad;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public setSpecificCategories(Ljava/lang/String;)V
    .locals 3

    const-string v0, "UTF-8"

    const-string v1, ""

    if-nez p1, :cond_0

    move-object p1, v1

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/core/Ad;->mSpecificCategories:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3
    :catchall_0
    iput-object v1, p0, Lcom/appnext/core/Ad;->mSpecificCategories:Ljava/lang/String;

    .line 4
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/appnext/core/Ad;->mSpecificCategories:Ljava/lang/String;

    return-void
.end method

.method public abstract showAd()V
.end method
