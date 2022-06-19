.class public Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/DtbGooglePlayServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdvertisingInfo"
.end annotation


# instance fields
.field private advertisingIdentifier:Ljava/lang/String;

.field private gpsAvailable:Z

.field private limitAdTrackingEnabled:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;->gpsAvailable:Z

    return-void
.end method

.method public static createNotAvailable()Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;

    invoke-direct {v0}, Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;-><init>()V

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;->setGooglePlayServicesAvailable(Z)Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;

    move-result-object v0

    return-object v0
.end method

.method private setGooglePlayServicesAvailable(Z)Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;->gpsAvailable:Z

    return-object p0
.end method


# virtual methods
.method public getAdvertisingIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;->advertisingIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public hasAdvertisingIdentifier()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;->getAdvertisingIdentifier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGooglePlayServicesAvailable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;->gpsAvailable:Z

    return v0
.end method

.method public isLimitAdTrackingEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;->limitAdTrackingEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAdvertisingIdentifier(Ljava/lang/String;)Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;->advertisingIdentifier:Ljava/lang/String;

    return-object p0
.end method

.method public setLimitAdTrackingEnabled(Ljava/lang/Boolean;)Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo;->limitAdTrackingEnabled:Ljava/lang/Boolean;

    return-object p0
.end method
