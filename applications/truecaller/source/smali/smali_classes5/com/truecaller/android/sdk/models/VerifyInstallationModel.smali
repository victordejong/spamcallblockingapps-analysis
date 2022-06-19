.class public Lcom/truecaller/android/sdk/models/VerifyInstallationModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mCountryCodeName:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "countryCodeName"
    .end annotation
.end field

.field private final mPhoneNumber:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "phoneNumber"
    .end annotation
.end field

.field public final mSecretToken:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "secretToken"
    .end annotation
.end field

.field private final mVerificationToken:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "verificationToken"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/truecaller/android/sdk/models/VerifyInstallationModel;->mVerificationToken:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/truecaller/android/sdk/models/VerifyInstallationModel;->mPhoneNumber:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/truecaller/android/sdk/models/VerifyInstallationModel;->mCountryCodeName:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/truecaller/android/sdk/models/VerifyInstallationModel;->mSecretToken:Ljava/lang/String;

    return-void
.end method
