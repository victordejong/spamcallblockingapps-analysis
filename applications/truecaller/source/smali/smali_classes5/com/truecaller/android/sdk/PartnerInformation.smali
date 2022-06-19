.class public Lcom/truecaller/android/sdk/PartnerInformation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final APP_FINGERPRINT:Ljava/lang/String; = "PARTNERINFO_APP_FINGERPRINT"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/android/sdk/PartnerInformation;",
            ">;"
        }
    .end annotation
.end field

.field public static final PACKAGE_NAME:Ljava/lang/String; = "PARTNERINFO_PACKAGE_NAME"

.field public static final PARTNER_INFO_EXTRA:Ljava/lang/String; = "PARTNER_INFO_EXTRA"

.field private static final PARTNER_KEY:Ljava/lang/String; = "PARTNERINFO_PARTNER_KEY"

.field private static final REQ_NONCE:Ljava/lang/String; = "PARTNERINFO_REQ_NONCE"

.field private static final SDK_LOCALE:Ljava/lang/String; = "PARTNERINFO_LOCALE"

.field private static final SDK_THEME:Ljava/lang/String; = "PARTNERINFO_THEME"

.field private static final SDK_VARIANT:Ljava/lang/String; = "PARTNERINFO_SDK_VARIANT"

.field private static final SDK_VARIANT_VERSION:Ljava/lang/String; = "PARTNERINFO_SDK_VARIANT_VERSION"

.field public static final TRUESDK_VERSION:Ljava/lang/String; = "PARTNERINFO_TRUESDK_VERSION"


# instance fields
.field public final appFingerprint:Ljava/lang/String;

.field public final locale:Ljava/util/Locale;

.field public final packageName:Ljava/lang/String;

.field public final partnerKey:Ljava/lang/String;

.field public final reqNonce:Ljava/lang/String;

.field public sdkVariant:Ljava/lang/String;

.field public sdkVariantVersion:Ljava/lang/String;

.field public final theme:I

.field public final truesdkVersion:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/android/sdk/PartnerInformation$a;

    invoke-direct {v0}, Lcom/truecaller/android/sdk/PartnerInformation$a;-><init>()V

    sput-object v0, Lcom/truecaller/android/sdk/PartnerInformation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PARTNERINFO_TRUESDK_VERSION"

    const-string v1, ""

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/PartnerInformation;->truesdkVersion:Ljava/lang/String;

    const-string v0, "PARTNERINFO_PARTNER_KEY"

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/PartnerInformation;->partnerKey:Ljava/lang/String;

    const-string v0, "PARTNERINFO_PACKAGE_NAME"

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/PartnerInformation;->packageName:Ljava/lang/String;

    const-string v0, "PARTNERINFO_APP_FINGERPRINT"

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/PartnerInformation;->appFingerprint:Ljava/lang/String;

    const-string v0, "PARTNERINFO_REQ_NONCE"

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/PartnerInformation;->reqNonce:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/util/Locale;

    const-string v2, "PARTNERINFO_LOCALE"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/truecaller/android/sdk/PartnerInformation;->locale:Ljava/util/Locale;

    const-string v0, "PARTNERINFO_THEME"

    const/4 v2, 0x0

    .line 19
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/truecaller/android/sdk/PartnerInformation;->theme:I

    const-string v0, "PARTNERINFO_SDK_VARIANT"

    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/PartnerInformation;->sdkVariant:Ljava/lang/String;

    const-string v0, "PARTNERINFO_SDK_VARIANT_VERSION"

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/android/sdk/PartnerInformation;->sdkVariantVersion:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/PartnerInformation;->partnerKey:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/PartnerInformation;->packageName:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/android/sdk/PartnerInformation;->appFingerprint:Ljava/lang/String;

    const-string p1, "0.4.2"

    .line 26
    iput-object p1, p0, Lcom/truecaller/android/sdk/PartnerInformation;->truesdkVersion:Ljava/lang/String;

    .line 27
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/truecaller/android/sdk/PartnerInformation;->reqNonce:Ljava/lang/String;

    .line 29
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iput-object p1, p0, Lcom/truecaller/android/sdk/PartnerInformation;->locale:Ljava/util/Locale;

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/truecaller/android/sdk/PartnerInformation;->theme:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/truecaller/android/sdk/PartnerInformation$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/android/sdk/PartnerInformation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/truecaller/android/sdk/PartnerInformation;->truesdkVersion:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/truecaller/android/sdk/PartnerInformation;->partnerKey:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/truecaller/android/sdk/PartnerInformation;->packageName:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/truecaller/android/sdk/PartnerInformation;->appFingerprint:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/truecaller/android/sdk/PartnerInformation;->reqNonce:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/truecaller/android/sdk/PartnerInformation;->locale:Ljava/util/Locale;

    .line 9
    iput p7, p0, Lcom/truecaller/android/sdk/PartnerInformation;->theme:I

    .line 10
    iput-object p8, p0, Lcom/truecaller/android/sdk/PartnerInformation;->sdkVariant:Ljava/lang/String;

    .line 11
    iput-object p9, p0, Lcom/truecaller/android/sdk/PartnerInformation;->sdkVariantVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToBundle(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/android/sdk/PartnerInformation;->truesdkVersion:Ljava/lang/String;

    const-string v1, "PARTNERINFO_TRUESDK_VERSION"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/android/sdk/PartnerInformation;->partnerKey:Ljava/lang/String;

    const-string v1, "PARTNERINFO_PARTNER_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/android/sdk/PartnerInformation;->packageName:Ljava/lang/String;

    const-string v1, "PARTNERINFO_PACKAGE_NAME"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/android/sdk/PartnerInformation;->appFingerprint:Ljava/lang/String;

    const-string v1, "PARTNERINFO_APP_FINGERPRINT"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/truecaller/android/sdk/PartnerInformation;->reqNonce:Ljava/lang/String;

    const-string v1, "PARTNERINFO_REQ_NONCE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/truecaller/android/sdk/PartnerInformation;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PARTNERINFO_LOCALE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    iget v0, p0, Lcom/truecaller/android/sdk/PartnerInformation;->theme:I

    const-string v1, "PARTNERINFO_THEME"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9
    iget-object v0, p0, Lcom/truecaller/android/sdk/PartnerInformation;->sdkVariant:Ljava/lang/String;

    const-string v1, "PARTNERINFO_SDK_VARIANT"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/truecaller/android/sdk/PartnerInformation;->sdkVariantVersion:Ljava/lang/String;

    const-string v1, "PARTNERINFO_SDK_VARIANT_VERSION"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/truecaller/android/sdk/PartnerInformation;->partnerKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/truecaller/android/sdk/PartnerInformation;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/truecaller/android/sdk/PartnerInformation;->appFingerprint:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
