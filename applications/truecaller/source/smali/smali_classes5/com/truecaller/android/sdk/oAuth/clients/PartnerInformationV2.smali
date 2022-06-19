.class public Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final appFingerprint:Ljava/lang/String;

.field private final clientId:Ljava/lang/String;

.field private final codeChallenge:Ljava/lang/String;

.field private final locale:Ljava/util/Locale;

.field private final packageName:Ljava/lang/String;

.field private final scopes:[Ljava/lang/String;

.field private final sdkVariant:Ljava/lang/String;

.field private final sdkVariantVersion:Ljava/lang/String;

.field private final state:Ljava/lang/String;

.field private final trueSdkVersion:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2$a;

    invoke-direct {v0}, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2$a;-><init>()V

    sput-object v0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->clientId:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->packageName:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->appFingerprint:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->trueSdkVersion:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->codeChallenge:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->locale:Ljava/util/Locale;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->sdkVariant:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->sdkVariantVersion:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->scopes:[Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->state:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->clientId:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->packageName:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->appFingerprint:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->trueSdkVersion:Ljava/lang/String;

    .line 6
    iput-object p8, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->codeChallenge:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->locale:Ljava/util/Locale;

    .line 8
    iput-object p6, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->sdkVariant:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->sdkVariantVersion:Ljava/lang/String;

    .line 10
    iput-object p9, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->scopes:[Ljava/lang/String;

    .line 11
    iput-object p10, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->state:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppFingerprint()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->appFingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getCodeChallenge()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->codeChallenge:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getScopes()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->scopes:[Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVariant()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->sdkVariant:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVariantVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->sdkVariantVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getTrueSdkVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->trueSdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->clientId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->appFingerprint:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->trueSdkVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->codeChallenge:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->locale:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 7
    iget-object p2, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->sdkVariant:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->sdkVariantVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->scopes:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->state:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
