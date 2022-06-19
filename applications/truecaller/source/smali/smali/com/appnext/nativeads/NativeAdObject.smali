.class public Lcom/appnext/nativeads/NativeAdObject;
.super Lcom/appnext/core/Ad;
.source "SourceFile"


# static fields
.field public static final AUID:Ljava/lang/String; = "550"

.field public static final TID:Ljava/lang/String; = "301"

.field public static final VID:Ljava/lang/String; = "2.6.5.473"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/appnext/core/Ad;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/appnext/core/Ad;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/appnext/core/Ad;-><init>(Lcom/appnext/core/Ad;)V

    return-void
.end method


# virtual methods
.method public getAUID()Ljava/lang/String;
    .locals 1

    const-string v0, "550"

    return-object v0
.end method

.method public getAdRequest()Lcom/appnext/core/c;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/appnext/core/Ad;->getAdRequest()Lcom/appnext/core/c;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/Ad;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getECPM(Lcom/appnext/core/callbacks/OnECPMLoaded;)V
    .locals 0

    return-void
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/appnext/core/Ad;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTID()Ljava/lang/String;
    .locals 1

    const-string v0, "301"

    return-object v0
.end method

.method public getTemId(Lcom/appnext/nativeads/NativeAdData;)Ljava/lang/String;
    .locals 7

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/appnext/nativeads/NativeAdData;->getRevenueType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cpi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    const-string v1, "b"

    const-string v2, "a"

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz p1, :cond_4

    .line 2
    :try_start_1
    invoke-static {}, Lcom/appnext/nativeads/a;->bc()Lcom/appnext/nativeads/a;

    move-result-object p1

    const-string v5, "cpiActiveFlow"

    invoke-virtual {p1, v5}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x2

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "d"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :pswitch_1
    const-string v0, "c"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v0, v6

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v0, v4

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v6, :cond_1

    const-string p1, "503"

    return-object p1

    :cond_1
    const-string p1, "502"

    return-object p1

    :cond_2
    const-string p1, "501"

    return-object p1

    :cond_3
    :try_start_2
    const-string p1, "500"

    return-object p1

    .line 3
    :cond_4
    invoke-static {}, Lcom/appnext/nativeads/a;->bc()Lcom/appnext/nativeads/a;

    move-result-object p1

    const-string v5, "cpcActiveFlow"

    invoke-virtual {p1, v5}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x61

    if-eq v5, v6, :cond_6

    const/16 v0, 0x62

    if-eq v5, v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    move v0, v4

    goto :goto_3

    :cond_6
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    move v0, v3

    :goto_3
    if-eqz v0, :cond_8

    const-string p1, "505"

    return-object p1

    :cond_8
    :try_start_3
    const-string p1, "504"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string v0, "NativeAdObject$getTemId"

    .line 4
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, ""

    return-object p1

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getVID()Ljava/lang/String;
    .locals 1

    const-string v0, "2.6.5.473"

    return-object v0
.end method

.method public isAdLoaded()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/appnext/nativeads/b;->be()Lcom/appnext/nativeads/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appnext/nativeads/b;->a(Lcom/appnext/core/Ad;)Z

    move-result v0

    return v0
.end method

.method public loadAd()V
    .locals 0

    return-void
.end method

.method public setAdRequest(Lcom/appnext/core/c;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/appnext/core/Ad;->setAdRequest(Lcom/appnext/core/c;)V

    return-void
.end method

.method public showAd()V
    .locals 0

    return-void
.end method
