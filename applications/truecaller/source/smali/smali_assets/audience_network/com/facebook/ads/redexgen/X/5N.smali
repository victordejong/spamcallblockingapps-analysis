.class public final Lcom/facebook/ads/redexgen/X/5N;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/NativeBannerAdApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/5K;,
        Lcom/facebook/ads/redexgen/X/5L;,
        Lcom/facebook/ads/redexgen/X/5M;
    }
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Tj;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "GHtEJsCBxF6ZG8G1CCL5RBmKmDCxDlHG"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "8TFtHG5"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ovYsObbmHQ4MgJZYSDt7UbSE4I8Jd3xL"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "OStrwIklzSQSoVp6y3SnTe0L"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "CizBuXx6tKQSK5P8xVf5ORSYZ1"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "CxGaKpsxgS6bhWDX5B71lG4aeRzyf4w9"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ZUquOnXGk9BCY4cqa0yz5KxW6oH5Pvvn"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "wvrH4lpYI8UyLhNBrrW8XGK9bs66R2Pk"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5N;->A02:[Ljava/lang/String;

    .line 13871
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5N;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V
    .locals 2

    .line 13872
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13873
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Tj;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Tj;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A00:Lcom/facebook/ads/redexgen/X/Tj;

    .line 13874
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5N;->A00:Lcom/facebook/ads/redexgen/X/Tj;

    sget-object v0, Lcom/facebook/ads/redexgen/X/K9;->A04:Lcom/facebook/ads/redexgen/X/K9;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Tj;->A1W(Lcom/facebook/ads/redexgen/X/K9;)V

    .line 13875
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/5N;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x28

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5N;->A01:[B

    sget-object v2, Lcom/facebook/ads/redexgen/X/5N;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/5N;->A02:[Ljava/lang/String;

    const-string v1, "g9VMJ7KVDiHxjzY4mov6XPU8OVFxG"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x2bt
        0x2ft
        0x2ct
        0x18t
        0x9t
        0x4t
        0x8t
        0x3t
        0xet
        0x8t
        0x23t
        0x8t
        0x19t
        0x1at
        0x2t
        0x1ft
        0x6t
    .end array-data
.end method

.method private A02(Landroid/widget/ImageView;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V
    .locals 9

    .line 13876
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Tj;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Tj;

    move-result-object v7

    .line 13877
    .local p0, "internalNativeAd":Lcom/facebook/ads/redexgen/X/Tj;
    new-instance v4, Lcom/facebook/ads/redexgen/X/b0;

    invoke-direct {v4, p0, p1, v7}, Lcom/facebook/ads/redexgen/X/b0;-><init>(Lcom/facebook/ads/redexgen/X/5N;Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Tj;)V

    .line 13878
    .local p1, "nativeBannerImageLoadTaskListener":Lcom/facebook/ads/redexgen/X/5L;
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Tj;->A12()Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v8

    .line 13879
    .local p2, "adIcon":Lcom/facebook/ads/redexgen/X/Jr;
    if-eqz v8, :cond_1

    .line 13880
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Tj;->A0z()Lcom/facebook/ads/redexgen/X/7J;

    move-result-object v1

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Jr;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7J;->A0K(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 13881
    .local v7, "preloadedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/59;->A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v2

    .line 13882
    .local v4, "adContextWrapper":Lcom/facebook/ads/redexgen/X/XT;
    if-eqz v3, :cond_0

    .line 13883
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Tj;->A1b()Z

    move-result v1

    .line 13884
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Tj;->A1A()Ljava/lang/String;

    move-result-object v0

    .line 13885
    invoke-static {v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Tj;->A05(Lcom/facebook/ads/redexgen/X/XT;Landroid/graphics/Bitmap;ZLjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 13886
    .local v8, "iconViewDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v1, p1}, Lcom/facebook/ads/redexgen/X/Tj;->A0b(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    .line 13887
    new-instance v0, Lcom/facebook/ads/redexgen/X/az;

    invoke-direct {v0, p0, v7, v1}, Lcom/facebook/ads/redexgen/X/az;-><init>(Lcom/facebook/ads/redexgen/X/5N;Lcom/facebook/ads/redexgen/X/Tj;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 13888
    .end local v8    # "iconViewDrawable":Landroid/graphics/drawable/Drawable;
    .end local v7    # "preloadedBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "adContextWrapper":Lcom/facebook/ads/redexgen/X/XT;
    :goto_0
    return-void

    .line 13889
    :cond_0
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Tj;->A1b()Z

    move-result v0

    const/4 v6, 0x0

    new-instance v5, Lcom/facebook/ads/redexgen/X/5K;

    invoke-direct {v5, v2, v4, v0, v6}, Lcom/facebook/ads/redexgen/X/5K;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/5L;ZLcom/facebook/ads/redexgen/X/b0;)V

    .line 13890
    .local v8, "loadImageTask":Lcom/facebook/ads/redexgen/X/5K;
    const/4 v0, 0x1

    new-array v4, v0, [Lcom/facebook/ads/redexgen/X/5M;

    const/4 v3, 0x0

    .line 13891
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Jr;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Tj;->A1A()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/5M;

    invoke-direct {v0, v2, v1, v6}, Lcom/facebook/ads/redexgen/X/5M;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/b0;)V

    aput-object v0, v4, v3

    .line 13892
    invoke-virtual {v5, v4}, Lcom/facebook/ads/redexgen/X/5K;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 13893
    :cond_1
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Tj;->A13()Lcom/facebook/ads/redexgen/X/Ti;

    move-result-object v6

    .line 13894
    .local v7, "adListener":Lcom/facebook/ads/redexgen/X/Ti;
    sget-object v5, Lcom/facebook/ads/internal/protocol/AdErrorType;->NATIVE_AD_IS_NOT_LOADED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 13895
    .local v4, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Tj;->A10()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    .line 13896
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    const-wide/16 v2, -0x1

    .line 13897
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2a(JILjava/lang/String;)V

    .line 13898
    if-eqz v6, :cond_2

    .line 13899
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/K3;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/K3;

    move-result-object v0

    invoke-interface {v6, v0}, Lcom/facebook/ads/redexgen/X/Jh;->AAW(Lcom/facebook/ads/redexgen/X/K3;)V

    .line 13900
    :cond_2
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5N;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final registerViewForInteraction(Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 1

    .line 13901
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/5N;->registerViewForInteraction(Landroid/view/View;Landroid/widget/ImageView;Ljava/util/List;)V

    .line 13902
    return-void
.end method

.method public final registerViewForInteraction(Landroid/view/View;Landroid/widget/ImageView;Ljava/util/List;)V
    .locals 1
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/widget/ImageView;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 13903
    .local v0, "clickableViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz p2, :cond_0

    .line 13904
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A00:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-direct {p0, p2, v0}, Lcom/facebook/ads/redexgen/X/5N;->A02(Landroid/widget/ImageView;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V

    .line 13905
    :cond_0
    if-eqz p3, :cond_1

    .line 13906
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A00:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Tj;->A1L(Landroid/view/View;Landroid/widget/ImageView;Ljava/util/List;)V

    .line 13907
    :goto_0
    return-void

    .line 13908
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A00:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Tj;->A1K(Landroid/view/View;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public final registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;)V
    .locals 1

    .line 13909
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/5N;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    .line 13910
    return-void
.end method

.method public final registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Ljava/util/List;)V
    .locals 6
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/facebook/ads/MediaView;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 13911
    .local v4, "clickableViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz p2, :cond_0

    .line 13912
    invoke-virtual {p2}, Lcom/facebook/ads/MediaView;->getMediaViewApi()Lcom/facebook/ads/internal/api/MediaViewApi;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/b8;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/5N;->A00:Lcom/facebook/ads/redexgen/X/Tj;

    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/5N;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 13913
    sget-object v2, Lcom/facebook/ads/redexgen/X/5N;->A02:[Ljava/lang/String;

    const-string v1, "js1TYeoyNOBe6miaJaLofzAsC6CsUfwk"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "W1hafLFlhK2580scubVHArACmFSZlS1F"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/b8;->A0I(Lcom/facebook/ads/internal/api/NativeAdBaseApi;Z)V

    .line 13914
    :cond_0
    if-eqz p3, :cond_1

    .line 13915
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A00:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Tj;->A1N(Landroid/view/View;Lcom/facebook/ads/internal/api/AdNativeComponentView;Ljava/util/List;)V

    .line 13916
    :goto_0
    return-void

    .line 13917
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A00:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Tj;->A1M(Landroid/view/View;Lcom/facebook/ads/internal/api/AdNativeComponentView;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
