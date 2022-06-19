.class public Lcom/mopub/nativeads/RequestParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/RequestParameters$Builder;,
        Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Landroid/location/Location;

.field public final d:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mopub/nativeads/RequestParameters$Builder;Lcom/mopub/nativeads/RequestParameters$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p2, p1, Lcom/mopub/nativeads/RequestParameters$Builder;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/mopub/nativeads/RequestParameters;->a:Ljava/lang/String;

    .line 4
    iget-object p2, p1, Lcom/mopub/nativeads/RequestParameters$Builder;->d:Ljava/util/EnumSet;

    .line 5
    iput-object p2, p0, Lcom/mopub/nativeads/RequestParameters;->d:Ljava/util/EnumSet;

    .line 6
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 7
    iget-object v1, p1, Lcom/mopub/nativeads/RequestParameters$Builder;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 8
    :goto_0
    iput-object v1, p0, Lcom/mopub/nativeads/RequestParameters;->b:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 9
    iget-object v0, p1, Lcom/mopub/nativeads/RequestParameters$Builder;->c:Landroid/location/Location;

    .line 10
    :cond_1
    iput-object v0, p0, Lcom/mopub/nativeads/RequestParameters;->c:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public final getDesiredAssets()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mopub/nativeads/RequestParameters;->d:Ljava/util/EnumSet;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/EnumSet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final getKeywords()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/nativeads/RequestParameters;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocation()Landroid/location/Location;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/nativeads/RequestParameters;->c:Landroid/location/Location;

    return-object v0
.end method

.method public final getUserDataKeywords()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/RequestParameters;->b:Ljava/lang/String;

    return-object v0
.end method
