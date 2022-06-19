.class public Lcom/truecaller/android/sdk/TrueProfile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/android/sdk/TrueProfile$Builder;
    }
.end annotation


# static fields
.field private static final AVATAR_URL:Ljava/lang/String; = "TRUEPROFILE_AVATAR_URL"

.field private static final CITY:Ljava/lang/String; = "TRUEPROFILE_CITY"

.field private static final COMPANY_NAME:Ljava/lang/String; = "TRUEPROFILE_COMPANY_NAME"

.field public static final COUNTRY_CODE:Ljava/lang/String; = "TRUEPROFILE_COUNTRY_CODE"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/android/sdk/TrueProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMAIL:Ljava/lang/String; = "TRUEPROFILE_EMAIL"

.field private static final FACEBOOK_ID:Ljava/lang/String; = "TRUEPROFILE_FACEBOOK_ID"

.field private static final FIRST_NAME:Ljava/lang/String; = "TRUEPROFILE_FIRST_NAME"

.field private static final GENDER:Ljava/lang/String; = "TRUEPROFILE_GENDER"

.field public static final IS_AMBASSADOR:Ljava/lang/String; = "TRUEPROFILE_IS_AMBASSADOR"

.field private static final IS_BUSINESS_PROFILE:Ljava/lang/String; = "TRUEPROFILE_IS_BUSINESS"

.field private static final IS_SIM_CHANGED:Ljava/lang/String; = "TRUEPROFILE_IS_SIM_CHANGED"

.field private static final IS_TRUENAME:Ljava/lang/String; = "TRUEPROFILE_IS_TRUENAME"

.field private static final JOB_TITLE:Ljava/lang/String; = "TRUEPROFILE_JOB_TITLE"

.field private static final LAST_NAME:Ljava/lang/String; = "TRUEPROFILE_LAST_NAME"

.field private static final PAYLOAD:Ljava/lang/String; = "TRUEPROFILE_PAYLOAD"

.field private static final PHONE_NUMBER:Ljava/lang/String; = "TRUEPROFILE_PHONE_NUMBER"

.field private static final REQ_NONCE:Ljava/lang/String; = "TRUEPROFILE_REQ_NONCE"

.field private static final SIGNATURE:Ljava/lang/String; = "TRUEPROFILE_SIGNATURE"

.field private static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "TRUEPROFILE_SIGNATURE_ALGORITHM"

.field private static final STREET:Ljava/lang/String; = "TRUEPROFILE_STREET"

.field private static final TWITTER_ID:Ljava/lang/String; = "TRUEPROFILE_TWITTER_ID"

.field public static final URL:Ljava/lang/String; = "TRUEPROFILE_URL"

.field private static final USER_LOCALE:Ljava/lang/String; = "TRUEPROFILE_USER_LOCALE"

.field private static final VERIFICATION_MODE:Ljava/lang/String; = "TRUEPROFILE_VERIFICATION_MODE"

.field private static final VERIFICATION_TIMESTAMP:Ljava/lang/String; = "TRUEPROFILE_VERIFICATION_TIMESTAMP"

.field private static final ZIP_CODE:Ljava/lang/String; = "TRUEPROFILE_ZIP_CODE"


# instance fields
.field public accessToken:Ljava/lang/String;

.field public avatarUrl:Ljava/lang/String;

.field public city:Ljava/lang/String;

.field public companyName:Ljava/lang/String;

.field public countryCode:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public facebookId:Ljava/lang/String;

.field public firstName:Ljava/lang/String;

.field public gender:Ljava/lang/String;

.field public isAmbassador:Z

.field public isBusiness:Z

.field public isSimChanged:Z

.field public isTrueName:Z

.field public jobTitle:Ljava/lang/String;

.field public lastName:Ljava/lang/String;

.field public payload:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;

.field public requestNonce:Ljava/lang/String;

.field public signature:Ljava/lang/String;

.field public signatureAlgorithm:Ljava/lang/String;

.field public street:Ljava/lang/String;

.field public twitterId:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public userLocale:Ljava/util/Locale;

.field public verificationMode:Ljava/lang/String;

.field public verificationTimestamp:J

.field public zipcode:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/android/sdk/TrueProfile$a;

    invoke-direct {v0}, Lcom/truecaller/android/sdk/TrueProfile$a;-><init>()V

    sput-object v0, Lcom/truecaller/android/sdk/TrueProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TRUEPROFILE_FIRST_NAME"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->firstName:Ljava/lang/String;

    const-string v0, "TRUEPROFILE_LAST_NAME"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->lastName:Ljava/lang/String;

    const-string v0, "TRUEPROFILE_PHONE_NUMBER"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->phoneNumber:Ljava/lang/String;

    const-string v0, "TRUEPROFILE_GENDER"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->gender:Ljava/lang/String;

    const-string v0, "TRUEPROFILE_STREET"

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->street:Ljava/lang/String;

    const-string v0, "TRUEPROFILE_CITY"

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->city:Ljava/lang/String;

    const-string v0, "TRUEPROFILE_ZIP_CODE"

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->zipcode:Ljava/lang/String;

    const-string v0, "TRUEPROFILE_COUNTRY_CODE"

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->countryCode:Ljava/lang/String;

    const-string v0, "TRUEPROFILE_FACEBOOK_ID"

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->facebookId:Ljava/lang/String;

    const-string v0, "TRUEPROFILE_TWITTER_ID"

    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->twitterId:Ljava/lang/String;

    const-string v0, "TRUEPROFILE_EMAIL"

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->email:Ljava/lang/String;

    const-string v0, "TRUEPROFILE_URL"

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->url:Ljava/lang/String;

    const-string v0, "TRUEPROFILE_AVATAR_URL"

    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->avatarUrl:Ljava/lang/String;

    const-string v0, "TRUEPROFILE_IS_TRUENAME"

    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->isTrueName:Z

    const-string v0, "TRUEPROFILE_IS_AMBASSADOR"

    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->isAmbassador:Z

    const-string v0, "TRUEPROFILE_COMPANY_NAME"

    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->companyName:Ljava/lang/String;

    const-string v0, "TRUEPROFILE_JOB_TITLE"

    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->jobTitle:Ljava/lang/String;

    const-string v0, "TRUEPROFILE_PAYLOAD"

    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->payload:Ljava/lang/String;

    const-string v0, "TRUEPROFILE_SIGNATURE"

    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->signature:Ljava/lang/String;

    const-string v0, "TRUEPROFILE_SIGNATURE_ALGORITHM"

    .line 24
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->signatureAlgorithm:Ljava/lang/String;

    const-string v0, "TRUEPROFILE_REQ_NONCE"

    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->requestNonce:Ljava/lang/String;

    const-string v0, "TRUEPROFILE_IS_SIM_CHANGED"

    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 27
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->isSimChanged:Z

    :cond_0
    const-string v0, "TRUEPROFILE_VERIFICATION_MODE"

    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 29
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->verificationMode:Ljava/lang/String;

    :cond_1
    const-string v0, "TRUEPROFILE_VERIFICATION_TIMESTAMP"

    .line 30
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->verificationTimestamp:J

    :cond_2
    const-string v0, "TRUEPROFILE_USER_LOCALE"

    .line 32
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 33
    new-instance v1, Ljava/util/Locale;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/truecaller/android/sdk/TrueProfile;->userLocale:Ljava/util/Locale;

    :cond_3
    const-string v0, "TRUEPROFILE_IS_BUSINESS"

    .line 34
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/truecaller/android/sdk/TrueProfile;->isBusiness:Z

    :cond_4
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->phoneNumber:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->firstName:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->lastName:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->gender:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->street:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->city:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->zipcode:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->countryCode:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->facebookId:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->twitterId:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->email:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->url:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->avatarUrl:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->isTrueName:Z

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->isAmbassador:Z

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->companyName:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->jobTitle:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->payload:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/android/sdk/TrueProfile;->signature:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/truecaller/android/sdk/TrueProfile$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/android/sdk/TrueProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/truecaller/android/sdk/TrueProfile$Builder;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/truecaller/android/sdk/TrueProfile$Builder;->access$000(Lcom/truecaller/android/sdk/TrueProfile$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->firstName:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/truecaller/android/sdk/TrueProfile$Builder;->access$100(Lcom/truecaller/android/sdk/TrueProfile$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->lastName:Ljava/lang/String;

    .line 39
    invoke-static {p1}, Lcom/truecaller/android/sdk/TrueProfile$Builder;->access$200(Lcom/truecaller/android/sdk/TrueProfile$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->gender:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lcom/truecaller/android/sdk/TrueProfile$Builder;->access$300(Lcom/truecaller/android/sdk/TrueProfile$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->email:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lcom/truecaller/android/sdk/TrueProfile$Builder;->access$400(Lcom/truecaller/android/sdk/TrueProfile$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/android/sdk/TrueProfile;->city:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/truecaller/android/sdk/TrueProfile$Builder;Lcom/truecaller/android/sdk/TrueProfile$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/truecaller/android/sdk/TrueProfile;-><init>(Lcom/truecaller/android/sdk/TrueProfile$Builder;)V

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
    iget-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->firstName:Ljava/lang/String;

    const-string v1, "TRUEPROFILE_FIRST_NAME"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->lastName:Ljava/lang/String;

    const-string v1, "TRUEPROFILE_LAST_NAME"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->phoneNumber:Ljava/lang/String;

    const-string v1, "TRUEPROFILE_PHONE_NUMBER"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->gender:Ljava/lang/String;

    const-string v1, "TRUEPROFILE_GENDER"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->street:Ljava/lang/String;

    const-string v1, "TRUEPROFILE_STREET"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->city:Ljava/lang/String;

    const-string v1, "TRUEPROFILE_CITY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->zipcode:Ljava/lang/String;

    const-string v1, "TRUEPROFILE_ZIP_CODE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->countryCode:Ljava/lang/String;

    const-string v1, "TRUEPROFILE_COUNTRY_CODE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->facebookId:Ljava/lang/String;

    const-string v1, "TRUEPROFILE_FACEBOOK_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->twitterId:Ljava/lang/String;

    const-string v1, "TRUEPROFILE_TWITTER_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->email:Ljava/lang/String;

    const-string v1, "TRUEPROFILE_EMAIL"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->url:Ljava/lang/String;

    const-string v1, "TRUEPROFILE_URL"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->avatarUrl:Ljava/lang/String;

    const-string v1, "TRUEPROFILE_AVATAR_URL"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-boolean v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->isTrueName:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRUEPROFILE_IS_TRUENAME"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-boolean v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->isAmbassador:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRUEPROFILE_IS_AMBASSADOR"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->companyName:Ljava/lang/String;

    const-string v1, "TRUEPROFILE_COMPANY_NAME"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->jobTitle:Ljava/lang/String;

    const-string v1, "TRUEPROFILE_JOB_TITLE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->payload:Ljava/lang/String;

    const-string v1, "TRUEPROFILE_PAYLOAD"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->signature:Ljava/lang/String;

    const-string v1, "TRUEPROFILE_SIGNATURE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->signatureAlgorithm:Ljava/lang/String;

    const-string v1, "TRUEPROFILE_SIGNATURE_ALGORITHM"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->requestNonce:Ljava/lang/String;

    const-string v1, "TRUEPROFILE_REQ_NONCE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-boolean v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->isSimChanged:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRUEPROFILE_IS_SIM_CHANGED"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->verificationMode:Ljava/lang/String;

    const-string v1, "TRUEPROFILE_VERIFICATION_MODE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-wide v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->verificationTimestamp:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRUEPROFILE_VERIFICATION_TIMESTAMP"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->userLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRUEPROFILE_USER_LOCALE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-boolean v0, p0, Lcom/truecaller/android/sdk/TrueProfile;->isBusiness:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRUEPROFILE_IS_BUSINESS"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/truecaller/android/sdk/TrueProfile;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/truecaller/android/sdk/TrueProfile;->firstName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/truecaller/android/sdk/TrueProfile;->lastName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/truecaller/android/sdk/TrueProfile;->gender:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/truecaller/android/sdk/TrueProfile;->street:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/truecaller/android/sdk/TrueProfile;->city:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/truecaller/android/sdk/TrueProfile;->zipcode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/truecaller/android/sdk/TrueProfile;->countryCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/truecaller/android/sdk/TrueProfile;->facebookId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/truecaller/android/sdk/TrueProfile;->twitterId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/truecaller/android/sdk/TrueProfile;->email:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/truecaller/android/sdk/TrueProfile;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/truecaller/android/sdk/TrueProfile;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-boolean p2, p0, Lcom/truecaller/android/sdk/TrueProfile;->isTrueName:Z

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget-boolean p2, p0, Lcom/truecaller/android/sdk/TrueProfile;->isAmbassador:Z

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget-object p2, p0, Lcom/truecaller/android/sdk/TrueProfile;->companyName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    iget-object p2, p0, Lcom/truecaller/android/sdk/TrueProfile;->jobTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    iget-object p2, p0, Lcom/truecaller/android/sdk/TrueProfile;->payload:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lcom/truecaller/android/sdk/TrueProfile;->signature:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
