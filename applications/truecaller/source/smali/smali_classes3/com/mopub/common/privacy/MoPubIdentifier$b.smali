.class public Lcom/mopub/common/privacy/MoPubIdentifier$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/privacy/MoPubIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/mopub/common/privacy/MoPubIdentifier;


# direct methods
.method public constructor <init>(Lcom/mopub/common/privacy/MoPubIdentifier;Lcom/mopub/common/privacy/MoPubIdentifier$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier$b;->a:Lcom/mopub/common/privacy/MoPubIdentifier;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier$b;->a:Lcom/mopub/common/privacy/MoPubIdentifier;

    .line 3
    iget-object v0, p1, Lcom/mopub/common/privacy/MoPubIdentifier;->a:Lcom/mopub/common/privacy/AdvertisingId;

    .line 4
    iget-object v1, p1, Lcom/mopub/common/privacy/MoPubIdentifier;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/mopub/common/GpsHelper;->fetchAdvertisingInfoSync(Landroid/content/Context;)Lcom/mopub/common/GpsHelper$AdvertisingInfo;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 5
    iget-object v4, v1, Lcom/mopub/common/GpsHelper$AdvertisingInfo;->advertisingId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6
    new-instance v4, Lcom/mopub/common/privacy/AdvertisingId;

    iget-object v5, v1, Lcom/mopub/common/GpsHelper$AdvertisingInfo;->advertisingId:Ljava/lang/String;

    iget-object v6, v0, Lcom/mopub/common/privacy/AdvertisingId;->b:Ljava/lang/String;

    iget-boolean v1, v1, Lcom/mopub/common/GpsHelper$AdvertisingInfo;->limitAdTracking:Z

    invoke-direct {v4, v5, v6, v1}, Lcom/mopub/common/privacy/AdvertisingId;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 7
    :cond_0
    iget-object v1, p1, Lcom/mopub/common/privacy/MoPubIdentifier;->b:Landroid/content/Context;

    .line 8
    invoke-static {v1}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, -0x1

    const-string v5, "limit_ad_tracking"

    .line 10
    invoke-static {v1, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const-string v6, "advertising_id"

    .line 11
    invoke-static {v1, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eq v5, v4, :cond_2

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v2

    .line 13
    :goto_0
    iget-object v5, p1, Lcom/mopub/common/privacy/MoPubIdentifier;->a:Lcom/mopub/common/privacy/AdvertisingId;

    .line 14
    new-instance v6, Lcom/mopub/common/privacy/AdvertisingId;

    iget-object v5, v5, Lcom/mopub/common/privacy/AdvertisingId;->b:Ljava/lang/String;

    invoke-direct {v6, v1, v5, v4}, Lcom/mopub/common/privacy/AdvertisingId;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v4, v6

    goto :goto_1

    :cond_2
    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_3

    .line 15
    iget-object v1, v4, Lcom/mopub/common/privacy/AdvertisingId;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/mopub/common/privacy/AdvertisingId;->b:Ljava/lang/String;

    iget-boolean v4, v4, Lcom/mopub/common/privacy/AdvertisingId;->c:Z

    .line 16
    invoke-static {v1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 17
    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 18
    new-instance v5, Lcom/mopub/common/privacy/AdvertisingId;

    invoke-direct {v5, v1, v0, v4}, Lcom/mopub/common/privacy/AdvertisingId;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1, v5}, Lcom/mopub/common/privacy/MoPubIdentifier;->c(Lcom/mopub/common/privacy/AdvertisingId;)V

    goto :goto_2

    .line 19
    :cond_3
    iget-object v0, p1, Lcom/mopub/common/privacy/MoPubIdentifier;->a:Lcom/mopub/common/privacy/AdvertisingId;

    invoke-virtual {p1, v0}, Lcom/mopub/common/privacy/MoPubIdentifier;->c(Lcom/mopub/common/privacy/AdvertisingId;)V

    .line 20
    :goto_2
    iget-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier$b;->a:Lcom/mopub/common/privacy/MoPubIdentifier;

    .line 21
    iput-boolean v2, p1, Lcom/mopub/common/privacy/MoPubIdentifier;->d:Z

    return-object v3
.end method
