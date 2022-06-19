.class public final Lcom/mopub/mobileads/MoPubRewardedAdManager$RequestParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MoPubRewardedAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestParameters"
.end annotation


# instance fields
.field public final mCustomerId:Ljava/lang/String;

.field public final mKeywords:Ljava/lang/String;

.field public final mLocation:Landroid/location/Location;

.field public final mUserDataKeywords:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/mopub/mobileads/MoPubRewardedAdManager$RequestParameters;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/mopub/mobileads/MoPubRewardedAdManager$RequestParameters;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mopub/mobileads/MoPubRewardedAdManager$RequestParameters;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$RequestParameters;->mKeywords:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$RequestParameters;->mCustomerId:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result p1

    const/4 p4, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p4

    .line 8
    :goto_0
    iput-object p2, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$RequestParameters;->mUserDataKeywords:Ljava/lang/String;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p3, p4

    .line 9
    :goto_1
    iput-object p3, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$RequestParameters;->mLocation:Landroid/location/Location;

    return-void
.end method
