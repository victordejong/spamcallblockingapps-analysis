.class public Lcom/amazon/device/ads/WebResourceOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static cdnHost:Ljava/lang/String; = null

.field private static jsNames:[Ljava/lang/String; = null

.field private static useLocalOnly:Z = false


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "aps-mraid.js"

    const-string v1, "dtb-m.js"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/WebResourceOptions;->jsNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCDNHost()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/amazon/device/ads/WebResourceOptions;->cdnHost:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "c.amazon-adsystem.com/"

    :goto_0
    const-string v1, "/"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3
    invoke-static {v0, v1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static getCDNResources()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/device/ads/WebResourceOptions;->jsNames:[Ljava/lang/String;

    return-object v0
.end method

.method public static isLocalSourcesOnly()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/amazon/device/ads/WebResourceOptions;->useLocalOnly:Z

    return v0
.end method

.method public static setCDNHost(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/device/ads/WebResourceOptions;->cdnHost:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/device/ads/WebResourceOptions;->cdnHost:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    sput-object p0, Lcom/amazon/device/ads/WebResourceOptions;->cdnHost:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->getInstance()Lcom/amazon/device/ads/DtbSharedPreferences;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/amazon/device/ads/DtbSharedPreferences;->resetWebResoucesLastPing()V

    .line 5
    invoke-static {}, Lcom/amazon/device/ads/WebResourceService;->getInstance()Lcom/amazon/device/ads/WebResourceService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazon/device/ads/WebResourceService;->deleteWebDirContent()V

    :cond_0
    return-void
.end method

.method public static setCDNResources([Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/amazon/device/ads/WebResourceOptions;->jsNames:[Ljava/lang/String;

    return-void
.end method

.method public static setLocalSourcesOnly(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/amazon/device/ads/WebResourceOptions;->useLocalOnly:Z

    return-void
.end method
