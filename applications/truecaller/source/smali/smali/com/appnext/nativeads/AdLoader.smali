.class public Lcom/appnext/nativeads/AdLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private count:I

.field private fy:Lcom/appnext/nativeads/NativeAdListener;

.field private fz:Lcom/appnext/nativeads/NativeAdRequest;

.field private nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/appnext/nativeads/NativeAdObject;

    invoke-direct {v0, p1, p2}, Lcom/appnext/nativeads/NativeAdObject;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appnext/nativeads/AdLoader;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    return-void
.end method

.method public static synthetic a(Lcom/appnext/nativeads/AdLoader;)Lcom/appnext/nativeads/NativeAdListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/nativeads/AdLoader;->fy:Lcom/appnext/nativeads/NativeAdListener;

    return-object p0
.end method

.method public static synthetic a(Lcom/appnext/nativeads/AdLoader;Ljava/lang/String;)V
    .locals 7

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/appnext/nativeads/AdLoader;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    iget-object v1, p0, Lcom/appnext/nativeads/AdLoader;->fz:Lcom/appnext/nativeads/NativeAdRequest;

    invoke-virtual {v1}, Lcom/appnext/nativeads/NativeAdRequest;->getCategories()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appnext/core/Ad;->setCategories(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/appnext/nativeads/AdLoader;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    iget-object v1, p0, Lcom/appnext/nativeads/AdLoader;->fz:Lcom/appnext/nativeads/NativeAdRequest;

    invoke-virtual {v1}, Lcom/appnext/nativeads/NativeAdRequest;->getSpecificCategories()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appnext/core/Ad;->setSpecificCategories(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/appnext/nativeads/AdLoader;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    iget-object v1, p0, Lcom/appnext/nativeads/AdLoader;->fz:Lcom/appnext/nativeads/NativeAdRequest;

    invoke-virtual {v1}, Lcom/appnext/nativeads/NativeAdRequest;->getPostback()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appnext/core/Ad;->setPostback(Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/appnext/nativeads/AdLoader;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    invoke-virtual {v0, p1}, Lcom/appnext/core/Ad;->setPackageName(Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/appnext/nativeads/AdLoader;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    iget-object v0, p0, Lcom/appnext/nativeads/AdLoader;->fz:Lcom/appnext/nativeads/NativeAdRequest;

    invoke-virtual {v0}, Lcom/appnext/nativeads/NativeAdRequest;->getMinVideoLength()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/appnext/core/Ad;->setMinVideoLength(I)V

    .line 8
    iget-object p1, p0, Lcom/appnext/nativeads/AdLoader;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    iget-object v0, p0, Lcom/appnext/nativeads/AdLoader;->fz:Lcom/appnext/nativeads/NativeAdRequest;

    invoke-virtual {v0}, Lcom/appnext/nativeads/NativeAdRequest;->getMaxVideoLength()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/appnext/core/Ad;->setMaxVideoLength(I)V

    .line 9
    invoke-static {}, Lcom/appnext/nativeads/b;->be()Lcom/appnext/nativeads/b;

    move-result-object v1

    iget-object p1, p0, Lcom/appnext/nativeads/AdLoader;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    invoke-virtual {p1}, Lcom/appnext/nativeads/NativeAdObject;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/appnext/nativeads/AdLoader;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    invoke-virtual {v3}, Lcom/appnext/core/Ad;->getPlacementID()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/appnext/nativeads/AdLoader$2;

    invoke-direct {v5, p0}, Lcom/appnext/nativeads/AdLoader$2;-><init>(Lcom/appnext/nativeads/AdLoader;)V

    iget-object v6, p0, Lcom/appnext/nativeads/AdLoader;->fz:Lcom/appnext/nativeads/NativeAdRequest;

    invoke-virtual/range {v1 .. v6}, Lcom/appnext/nativeads/b;->a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;Lcom/appnext/core/d$a;Lcom/appnext/nativeads/NativeAdRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "AdLoader$load"

    .line 10
    invoke-static {p1, p0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic b(Lcom/appnext/nativeads/AdLoader;)Lcom/appnext/nativeads/NativeAdRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/nativeads/AdLoader;->fz:Lcom/appnext/nativeads/NativeAdRequest;

    return-object p0
.end method

.method public static synthetic c(Lcom/appnext/nativeads/AdLoader;)Lcom/appnext/nativeads/NativeAdObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/nativeads/AdLoader;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    return-object p0
.end method

.method public static synthetic d(Lcom/appnext/nativeads/AdLoader;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/appnext/nativeads/AdLoader;->count:I

    return p0
.end method

.method public static synthetic e(Lcom/appnext/nativeads/AdLoader;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-object v0, p0, Lcom/appnext/nativeads/AdLoader;->fy:Lcom/appnext/nativeads/NativeAdListener;

    .line 2
    iput-object v0, p0, Lcom/appnext/nativeads/AdLoader;->fz:Lcom/appnext/nativeads/NativeAdRequest;

    .line 3
    iget-object v1, p0, Lcom/appnext/nativeads/AdLoader;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/appnext/core/Ad;->destroy()V

    .line 5
    iput-object v0, p0, Lcom/appnext/nativeads/AdLoader;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "AdLoader$load"

    .line 6
    invoke-static {v0, p0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static getAdsByPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/nativeads/NativeAdRequest;Lcom/appnext/nativeads/NativeAdListener;I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/appnext/core/g;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    const/4 p0, 0x0

    .line 2
    new-instance p1, Lcom/appnext/core/AppnextError;

    const-string p2, "Connection Error"

    invoke-direct {p1, p2}, Lcom/appnext/core/AppnextError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p0, p1}, Lcom/appnext/nativeads/NativeAdListener;->onError(Lcom/appnext/nativeads/NativeAd;Lcom/appnext/core/AppnextError;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-static {p0}, Lcom/appnext/base/Appnext;->init(Landroid/content/Context;)V

    if-nez p3, :cond_2

    return-void

    :cond_2
    if-nez p4, :cond_3

    return-void

    :cond_3
    if-gtz p5, :cond_4

    return-void

    .line 4
    :cond_4
    new-instance v0, Lcom/appnext/nativeads/AdLoader;

    invoke-direct {v0, p0, p1}, Lcom/appnext/nativeads/AdLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    new-instance v1, Lcom/appnext/nativeads/NativeAdRequest;

    invoke-direct {v1, p3}, Lcom/appnext/nativeads/NativeAdRequest;-><init>(Lcom/appnext/nativeads/NativeAdRequest;)V

    iput-object v1, v0, Lcom/appnext/nativeads/AdLoader;->fz:Lcom/appnext/nativeads/NativeAdRequest;

    .line 6
    iput p5, v0, Lcom/appnext/nativeads/AdLoader;->count:I

    .line 7
    iput-object p4, v0, Lcom/appnext/nativeads/AdLoader;->fy:Lcom/appnext/nativeads/NativeAdListener;

    .line 8
    invoke-static {}, Lcom/appnext/nativeads/a;->bc()Lcom/appnext/nativeads/a;

    move-result-object p3

    new-instance p4, Lcom/appnext/nativeads/AdLoader$1;

    invoke-direct {p4, v0, p2}, Lcom/appnext/nativeads/AdLoader$1;-><init>(Lcom/appnext/nativeads/AdLoader;Ljava/lang/String;)V

    invoke-virtual {p3, p0, p1, p4}, Lcom/appnext/core/SettingsManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/appnext/core/SettingsManager$ConfigCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "AdLoader$getAdsByPackage"

    .line 9
    invoke-static {p1, p0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;Lcom/appnext/nativeads/NativeAdRequest;Lcom/appnext/nativeads/NativeAdListener;I)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 1
    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/appnext/nativeads/AdLoader;->getAdsByPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/nativeads/NativeAdRequest;Lcom/appnext/nativeads/NativeAdListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "AdLoader$load"

    .line 2
    invoke-static {p1, p0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
