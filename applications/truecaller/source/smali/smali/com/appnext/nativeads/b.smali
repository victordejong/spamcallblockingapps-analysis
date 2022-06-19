.class public Lcom/appnext/nativeads/b;
.super Lcom/appnext/core/d;
.source "SourceFile"


# static fields
.field private static fZ:Lcom/appnext/nativeads/b;


# instance fields
.field private final r:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/appnext/core/d;-><init>()V

    const/16 v0, 0x32

    .line 2
    iput v0, p0, Lcom/appnext/nativeads/b;->r:I

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/appnext/nativeads/NativeAdData;)I
    .locals 5

    const-string v0, "NativeAdsManager$checkCPT"

    const/4 v1, 0x3

    .line 47
    :try_start_0
    invoke-virtual {p1}, Lcom/appnext/nativeads/NativeAdData;->getCptList()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/appnext/nativeads/NativeAdData;->getCptList()Ljava/lang/String;

    move-result-object v2

    const-string v4, "[]"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_1

    .line 48
    :cond_0
    :try_start_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/appnext/nativeads/NativeAdData;->getCptList()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move p1, v3

    .line 49
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge p1, v4, :cond_2

    .line 50
    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 51
    invoke-static {p0, v4}, Lcom/appnext/core/g;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    return v3

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return v1

    :catch_0
    move-exception p0

    .line 52
    :try_start_2
    invoke-static {v0, p0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :goto_1
    return v3

    :catchall_0
    move-exception p0

    .line 53
    invoke-static {v0, p0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public static a(Lcom/appnext/nativeads/NativeAdRequest;Lcom/appnext/core/AppnextAd;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/appnext/nativeads/NativeAdRequest;->getVideoQuality()Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;

    move-result-object v1

    sget-object v2, Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;->HIGH:Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/appnext/nativeads/NativeAdRequest;->getVideoLength()Lcom/appnext/nativeads/NativeAdRequest$VideoLength;

    move-result-object v1

    sget-object v3, Lcom/appnext/nativeads/NativeAdRequest$VideoLength;->LONG:Lcom/appnext/nativeads/NativeAdRequest$VideoLength;

    if-ne v1, v3, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getVideoUrlHigh30Sec()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getVideoUrl30Sec()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    :cond_0
    move-object v0, p0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_0

    .line 11
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/appnext/nativeads/NativeAdRequest;->getVideoQuality()Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;

    move-result-object v1

    sget-object v3, Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;->LOW:Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/appnext/nativeads/NativeAdRequest;->getVideoLength()Lcom/appnext/nativeads/NativeAdRequest$VideoLength;

    move-result-object v1

    sget-object v4, Lcom/appnext/nativeads/NativeAdRequest$VideoLength;->LONG:Lcom/appnext/nativeads/NativeAdRequest$VideoLength;

    if-ne v1, v4, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getVideoUrl30Sec()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13
    :try_start_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getVideoUrlHigh30Sec()Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 15
    :cond_2
    :try_start_4
    invoke-virtual {p0}, Lcom/appnext/nativeads/NativeAdRequest;->getVideoQuality()Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;

    move-result-object v1

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/appnext/nativeads/NativeAdRequest;->getVideoLength()Lcom/appnext/nativeads/NativeAdRequest$VideoLength;

    move-result-object v1

    sget-object v2, Lcom/appnext/nativeads/NativeAdRequest$VideoLength;->SHORT:Lcom/appnext/nativeads/NativeAdRequest$VideoLength;

    if-ne v1, v2, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getVideoUrlHigh()Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 17
    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getVideoUrl()Ljava/lang/String;

    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 19
    :cond_3
    :try_start_6
    invoke-virtual {p0}, Lcom/appnext/nativeads/NativeAdRequest;->getVideoQuality()Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;

    move-result-object v1

    if-ne v1, v3, :cond_4

    invoke-virtual {p0}, Lcom/appnext/nativeads/NativeAdRequest;->getVideoLength()Lcom/appnext/nativeads/NativeAdRequest$VideoLength;

    move-result-object p0

    sget-object v1, Lcom/appnext/nativeads/NativeAdRequest$VideoLength;->SHORT:Lcom/appnext/nativeads/NativeAdRequest$VideoLength;

    if-ne p0, v1, :cond_4

    .line 20
    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getVideoUrl()Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 21
    :try_start_7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getVideoUrlHigh()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_0
    const-string p0, "NativeAdsManager$getVideoUrl"

    .line 23
    invoke-static {p0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    move-object p0, v0

    :goto_2
    return-object p0
.end method

.method private a(Lcom/appnext/core/AppnextAd;Lcom/appnext/nativeads/NativeAdRequest;)Z
    .locals 5

    .line 41
    invoke-virtual {p2}, Lcom/appnext/nativeads/NativeAdRequest;->getCreativeType()Lcom/appnext/nativeads/NativeAdRequest$CreativeType;

    move-result-object v0

    sget-object v1, Lcom/appnext/nativeads/NativeAdRequest$CreativeType;->ALL:Lcom/appnext/nativeads/NativeAdRequest$CreativeType;

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_2

    .line 42
    invoke-static {p1}, Lcom/appnext/nativeads/b;->b(Lcom/appnext/core/AppnextAd;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2, p1}, Lcom/appnext/nativeads/b;->a(Lcom/appnext/nativeads/NativeAdRequest;Lcom/appnext/core/AppnextAd;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v4

    :cond_1
    :goto_0
    return v3

    .line 43
    :cond_2
    invoke-virtual {p2}, Lcom/appnext/nativeads/NativeAdRequest;->getCreativeType()Lcom/appnext/nativeads/NativeAdRequest$CreativeType;

    move-result-object v0

    sget-object v1, Lcom/appnext/nativeads/NativeAdRequest$CreativeType;->STATIC_ONLY:Lcom/appnext/nativeads/NativeAdRequest$CreativeType;

    if-ne v0, v1, :cond_3

    .line 44
    invoke-static {p1}, Lcom/appnext/nativeads/b;->b(Lcom/appnext/core/AppnextAd;)Z

    move-result p1

    return p1

    .line 45
    :cond_3
    invoke-virtual {p2}, Lcom/appnext/nativeads/NativeAdRequest;->getCreativeType()Lcom/appnext/nativeads/NativeAdRequest$CreativeType;

    move-result-object v0

    sget-object v1, Lcom/appnext/nativeads/NativeAdRequest$CreativeType;->VIDEO_ONLY:Lcom/appnext/nativeads/NativeAdRequest$CreativeType;

    if-ne v0, v1, :cond_4

    .line 46
    invoke-static {p2, p1}, Lcom/appnext/nativeads/b;->a(Lcom/appnext/nativeads/NativeAdRequest;Lcom/appnext/core/AppnextAd;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v3

    :cond_4
    return v4
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "/"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "?"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v1, "rnd"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v1, ""

    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v1, "NativeAdsManager$extractFileNameFromPath"

    .line 7
    invoke-static {v1, p0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static b(Lcom/appnext/core/AppnextAd;)Z
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/appnext/core/AppnextAd;->getWideImageURL()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static declared-synchronized be()Lcom/appnext/nativeads/b;
    .locals 2

    const-class v0, Lcom/appnext/nativeads/b;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/appnext/nativeads/b;->fZ:Lcom/appnext/nativeads/b;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/appnext/nativeads/b;

    invoke-direct {v1}, Lcom/appnext/nativeads/b;-><init>()V

    sput-object v1, Lcom/appnext/nativeads/b;->fZ:Lcom/appnext/nativeads/b;

    .line 3
    :cond_0
    sget-object v1, Lcom/appnext/nativeads/b;->fZ:Lcom/appnext/nativeads/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/appnext/core/h;)I
    .locals 6

    const-string v0, ""

    const/4 v1, 0x3

    .line 24
    :try_start_0
    new-instance v2, Lcom/appnext/nativeads/NativeAdData;

    move-object v3, p2

    check-cast v3, Lcom/appnext/core/AppnextAd;

    invoke-direct {v2, v3}, Lcom/appnext/nativeads/NativeAdData;-><init>(Lcom/appnext/core/AppnextAd;)V

    .line 25
    invoke-static {p1, v2}, Lcom/appnext/nativeads/b;->a(Landroid/content/Context;Lcom/appnext/nativeads/NativeAdData;)I

    move-result v3

    if-eqz v3, :cond_0

    return v3

    .line 26
    :cond_0
    invoke-virtual {v2}, Lcom/appnext/nativeads/NativeAdData;->getCampaignGoal()Ljava/lang/String;

    move-result-object v3

    const-string v4, "new"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/appnext/core/AppnextAd;->getAdPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/appnext/core/g;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v4

    .line 27
    :cond_1
    invoke-virtual {v2}, Lcom/appnext/nativeads/NativeAdData;->getCampaignGoal()Ljava/lang/String;

    move-result-object v3

    const-string v5, "existing"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/appnext/core/AppnextAd;->getAdPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/appnext/core/g;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x2

    return p1

    .line 28
    :cond_2
    move-object p1, p2

    check-cast p1, Lcom/appnext/core/AppnextAd;

    invoke-static {p1}, Lcom/appnext/nativeads/b;->b(Lcom/appnext/core/AppnextAd;)Z

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_6

    check-cast p2, Lcom/appnext/core/AppnextAd;

    .line 29
    invoke-virtual {p2}, Lcom/appnext/core/AppnextAd;->getVideoUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lcom/appnext/core/AppnextAd;->getVideoUrlHigh()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lcom/appnext/core/AppnextAd;->getVideoUrl30Sec()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lcom/appnext/core/AppnextAd;->getVideoUrlHigh30Sec()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v4, v2

    :cond_4
    :goto_0
    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    return v1

    :cond_6
    :goto_1
    return v2

    :catchall_0
    move-exception p1

    const-string p2, "NativeAdsManager$adFilter"

    .line 30
    invoke-static {p2, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public final a(Landroid/content/Context;Lcom/appnext/core/Ad;Lcom/appnext/nativeads/NativeAdRequest;)Lcom/appnext/core/AppnextAd;
    .locals 2

    .line 38
    invoke-virtual {p0, p2}, Lcom/appnext/core/d;->j(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 39
    :cond_0
    invoke-virtual {p0, p2}, Lcom/appnext/core/d;->j(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/core/a;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 40
    :cond_1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/appnext/nativeads/b;->a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/util/ArrayList;Lcom/appnext/nativeads/NativeAdRequest;)Lcom/appnext/core/AppnextAd;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/util/ArrayList;Lcom/appnext/nativeads/NativeAdRequest;)Lcom/appnext/core/AppnextAd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/appnext/core/Ad;",
            "Ljava/util/ArrayList<",
            "Lcom/appnext/core/AppnextAd;",
            ">;",
            "Lcom/appnext/nativeads/NativeAdRequest;",
            ")",
            "Lcom/appnext/core/AppnextAd;"
        }
    .end annotation

    .line 35
    :try_start_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/appnext/core/AppnextAd;

    .line 36
    invoke-direct {p0, p3, p4}, Lcom/appnext/nativeads/b;->a(Lcom/appnext/core/AppnextAd;Lcom/appnext/nativeads/NativeAdRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    invoke-virtual {p2}, Lcom/appnext/core/Ad;->getAUID()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p3

    :catchall_0
    move-exception p1

    const-string p2, "NativeAdsManager$getFirst"

    .line 37
    invoke-static {p2, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/appnext/core/Ad;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string p1, ""

    .line 3
    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "&auid="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/appnext/core/Ad;->getAUID()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    const-string p4, "1000"

    :goto_0
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "&creative="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    move-object p4, p2

    check-cast p4, Lcom/appnext/nativeads/NativeAdObject;

    invoke-virtual {p4}, Lcom/appnext/nativeads/NativeAdObject;->getAdRequest()Lcom/appnext/core/c;

    move-result-object p4

    check-cast p4, Lcom/appnext/nativeads/NativeAdRequest;

    invoke-virtual {p4}, Lcom/appnext/nativeads/NativeAdRequest;->getCreativeType()Lcom/appnext/nativeads/NativeAdRequest$CreativeType;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    goto :goto_1

    :cond_1
    sget-object p4, Lcom/appnext/nativeads/NativeAdRequest$CreativeType;->ALL:Lcom/appnext/nativeads/NativeAdRequest$CreativeType;

    :goto_1
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, "&vidmin="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_2

    move-object p4, p1

    goto :goto_2

    .line 4
    :cond_2
    invoke-virtual {p2}, Lcom/appnext/core/Ad;->getMinVideoLength()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    :goto_2
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, "&vidmax="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_3

    move-object p2, p1

    goto :goto_3

    .line 5
    :cond_3
    invoke-virtual {p2}, Lcom/appnext/core/Ad;->getMaxVideoLength()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_3
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p2

    const-string p3, "NativeAdsManager$urlSuffix"

    .line 6
    invoke-static {p3, p2}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lcom/appnext/nativeads/NativeAdRequest;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/appnext/nativeads/NativeAdRequest;",
            "Ljava/util/ArrayList<",
            "Lcom/appnext/core/AppnextAd;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/appnext/core/AppnextAd;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appnext/core/AppnextAd;

    .line 33
    invoke-direct {p0, v0, p2}, Lcom/appnext/nativeads/b;->a(Lcom/appnext/core/AppnextAd;Lcom/appnext/nativeads/NativeAdRequest;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public final a(Landroid/content/Context;Lcom/appnext/core/Ad;Lcom/appnext/core/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p3, ".tmp"

    const-string v0, "/data/appnext/videos/"

    const/4 v1, 0x0

    .line 55
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 58
    array-length v3, v2

    if-nez v3, :cond_0

    goto :goto_1

    .line 59
    :cond_0
    new-instance v3, Lcom/appnext/nativeads/b$1;

    invoke-direct {v3, p0}, Lcom/appnext/nativeads/b$1;-><init>(Lcom/appnext/nativeads/b;)V

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 60
    invoke-static {}, Lcom/appnext/nativeads/a;->bc()Lcom/appnext/nativeads/a;

    move-result-object v3

    const-string v4, "num_saved_videos"

    invoke-virtual {v3, v4}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 61
    array-length v4, v2

    if-gt v4, v3, :cond_1

    goto :goto_1

    :cond_1
    move v4, v1

    .line 62
    :goto_0
    array-length v5, v2

    sub-int/2addr v5, v3

    if-ge v4, v5, :cond_2

    .line 63
    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    const-string v3, "NativeAdsManager$deleteFiles"

    .line 64
    invoke-static {v3, v2}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    :cond_2
    :goto_1
    move-object v2, p2

    check-cast v2, Lcom/appnext/nativeads/NativeAdObject;

    invoke-virtual {v2}, Lcom/appnext/nativeads/NativeAdObject;->getAdRequest()Lcom/appnext/core/c;

    move-result-object v2

    check-cast v2, Lcom/appnext/nativeads/NativeAdRequest;

    .line 66
    invoke-virtual {v2}, Lcom/appnext/nativeads/NativeAdRequest;->getVideoLength()Lcom/appnext/nativeads/NativeAdRequest$VideoLength;

    move-result-object v3

    sget-object v4, Lcom/appnext/nativeads/NativeAdRequest$VideoLength;->DEFAULT:Lcom/appnext/nativeads/NativeAdRequest$VideoLength;

    if-ne v3, v4, :cond_3

    .line 67
    move-object v3, p2

    check-cast v3, Lcom/appnext/nativeads/NativeAdObject;

    invoke-virtual {v3}, Lcom/appnext/nativeads/NativeAdObject;->getAdRequest()Lcom/appnext/core/c;

    move-result-object v3

    check-cast v3, Lcom/appnext/nativeads/NativeAdRequest;

    invoke-static {}, Lcom/appnext/nativeads/a;->bc()Lcom/appnext/nativeads/a;

    move-result-object v4

    const-string v5, "default_video_length"

    invoke-virtual {v4, v5}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/appnext/nativeads/NativeAdRequest$VideoLength;->fromInt(I)Lcom/appnext/nativeads/NativeAdRequest$VideoLength;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/appnext/nativeads/NativeAdRequest;->setVideoLength(Lcom/appnext/nativeads/NativeAdRequest$VideoLength;)Lcom/appnext/nativeads/NativeAdRequest;

    .line 68
    :cond_3
    invoke-virtual {v2}, Lcom/appnext/nativeads/NativeAdRequest;->getVideoQuality()Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;

    move-result-object v3

    sget-object v4, Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;->DEFAULT:Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;

    if-ne v3, v4, :cond_4

    .line 69
    invoke-static {}, Lcom/appnext/nativeads/a;->bc()Lcom/appnext/nativeads/a;

    move-result-object v3

    const-string v4, "default_video_quality"

    invoke-virtual {v3, v4}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;->fromInt(I)Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/appnext/nativeads/NativeAdRequest;->setVideoQuality(Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;)Lcom/appnext/nativeads/NativeAdRequest;

    .line 70
    :cond_4
    invoke-static {}, Lcom/appnext/nativeads/b;->be()Lcom/appnext/nativeads/b;

    move-result-object v3

    invoke-virtual {v3, p1, p2, v2}, Lcom/appnext/nativeads/b;->a(Landroid/content/Context;Lcom/appnext/core/Ad;Lcom/appnext/nativeads/NativeAdRequest;)Lcom/appnext/core/AppnextAd;

    move-result-object p2

    if-nez p2, :cond_5

    return-void

    .line 71
    :cond_5
    invoke-virtual {v2}, Lcom/appnext/nativeads/NativeAdRequest;->getCreativeType()Lcom/appnext/nativeads/NativeAdRequest$CreativeType;

    move-result-object v3

    sget-object v4, Lcom/appnext/nativeads/NativeAdRequest$CreativeType;->STATIC_ONLY:Lcom/appnext/nativeads/NativeAdRequest$CreativeType;

    if-ne v3, v4, :cond_6

    return-void

    .line 72
    :cond_6
    invoke-virtual {v2}, Lcom/appnext/nativeads/NativeAdRequest;->getCachingPolicy()Lcom/appnext/nativeads/NativeAdRequest$CachingPolicy;

    move-result-object v3

    sget-object v4, Lcom/appnext/nativeads/NativeAdRequest$CachingPolicy;->ALL:Lcom/appnext/nativeads/NativeAdRequest$CachingPolicy;

    if-eq v3, v4, :cond_7

    invoke-virtual {v2}, Lcom/appnext/nativeads/NativeAdRequest;->getCachingPolicy()Lcom/appnext/nativeads/NativeAdRequest$CachingPolicy;

    move-result-object v3

    sget-object v4, Lcom/appnext/nativeads/NativeAdRequest$CachingPolicy;->VIDEO_ONLY:Lcom/appnext/nativeads/NativeAdRequest$CachingPolicy;

    if-ne v3, v4, :cond_a

    .line 73
    :cond_7
    invoke-static {v2, p2}, Lcom/appnext/nativeads/b;->a(Lcom/appnext/nativeads/NativeAdRequest;Lcom/appnext/core/AppnextAd;)Ljava/lang/String;

    move-result-object p2

    const-string v2, ""

    .line 74
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 75
    invoke-static {p2}, Lcom/appnext/nativeads/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 77
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/io/File;->setLastModified(J)Z

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " exists"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 81
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 83
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    .line 85
    invoke-virtual {p2}, Ljava/net/URLConnection;->connect()V

    .line 86
    new-instance p2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v3, 0x400

    invoke-direct {p2, v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 87
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-array v3, v3, [B

    .line 88
    :goto_2
    invoke-virtual {p2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_9

    .line 89
    invoke-virtual {v0, v3, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2

    .line 90
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "downloaded "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 92
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 93
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 94
    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    new-instance p3, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2, p3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 97
    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_a
    return-void

    :catchall_1
    move-exception p1

    const-string p2, "NativeAdsManager$customAdLoad"

    .line 98
    invoke-static {p2, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;Lcom/appnext/core/d$a;Lcom/appnext/nativeads/NativeAdRequest;)V
    .locals 8

    .line 1
    move-object v0, p2

    check-cast v0, Lcom/appnext/nativeads/NativeAdObject;

    new-instance v1, Lcom/appnext/nativeads/NativeAdRequest;

    invoke-direct {v1, p5}, Lcom/appnext/nativeads/NativeAdRequest;-><init>(Lcom/appnext/nativeads/NativeAdRequest;)V

    invoke-virtual {v0, v1}, Lcom/appnext/nativeads/NativeAdObject;->setAdRequest(Lcom/appnext/core/c;)V

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 2
    invoke-super/range {v2 .. v7}, Lcom/appnext/core/d;->a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;Lcom/appnext/core/d$a;Z)V

    return-void
.end method

.method public final a(Lcom/appnext/core/Ad;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/appnext/core/Ad;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/appnext/core/Ad;",
            "TT;)V"
        }
    .end annotation

    return-void
.end method

.method public final a(Lcom/appnext/core/Ad;)Z
    .locals 0

    .line 54
    invoke-super {p0, p1}, Lcom/appnext/core/d;->a(Lcom/appnext/core/Ad;)Z

    move-result p1

    return p1
.end method

.method public c(Lcom/appnext/core/Ad;)Lcom/appnext/core/SettingsManager;
    .locals 0

    .line 1
    invoke-static {}, Lcom/appnext/nativeads/a;->bc()Lcom/appnext/nativeads/a;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lcom/appnext/core/Ad;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appnext/core/Ad;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/appnext/core/AppnextAd;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/appnext/core/d;->j(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appnext/core/a;->getAds()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
