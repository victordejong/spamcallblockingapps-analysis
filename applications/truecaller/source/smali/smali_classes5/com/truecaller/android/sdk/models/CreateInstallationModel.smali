.class public Lcom/truecaller/android/sdk/models/CreateInstallationModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/android/sdk/models/CreateInstallationModel$VerificationAttempts;
    }
.end annotation


# static fields
.field public static final ATTEMPT_1:I = 0x1

.field public static final ATTEMPT_2:I = 0x2

.field private static final CLIENT_ID:I = 0xf

.field private static final CLIENT_OS:Ljava/lang/String; = "android"

.field private static final EMPTY_SIM_SERIALS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final clientId:I
    .annotation runtime Le/m/e/d0/b;
        value = "clientId"
    .end annotation
.end field

.field public final countryCodeName:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "countryCodeName"
    .end annotation
.end field

.field public final deviceId:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "deviceId"
    .end annotation
.end field

.field public final hasTruecaller:Z
    .annotation runtime Le/m/e/d0/b;
        value = "hasTruecaller"
    .end annotation
.end field

.field private final language:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "language"
    .end annotation
.end field

.field private final os:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "os"
    .end annotation
.end field

.field public final phoneNumber:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "phoneNumber"
    .end annotation
.end field

.field private phonePermission:Z
    .annotation runtime Le/m/e/d0/b;
        value = "phonePermission"
    .end annotation
.end field

.field public simSerialNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/m/e/d0/b;
        value = "simSerial"
    .end annotation
.end field

.field private verificationAttempt:I
    .annotation build Lcom/truecaller/android/sdk/models/CreateInstallationModel$VerificationAttempts;
    .end annotation

    .annotation runtime Le/m/e/d0/b;
        value = "sequence"
    .end annotation
.end field

.field private final version:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "version"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/truecaller/android/sdk/models/CreateInstallationModel;->EMPTY_SIM_SERIALS:Ljava/util/List;

    const-string v1, ""

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/truecaller/android/sdk/models/CreateInstallationModel;->phoneNumber:Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/android/sdk/models/CreateInstallationModel;->language:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/truecaller/android/sdk/models/CreateInstallationModel;->countryCodeName:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/truecaller/android/sdk/models/CreateInstallationModel;->deviceId:Ljava/lang/String;

    const/16 p1, 0xf

    .line 7
    iput p1, p0, Lcom/truecaller/android/sdk/models/CreateInstallationModel;->clientId:I

    const-string p1, "android"

    .line 8
    iput-object p1, p0, Lcom/truecaller/android/sdk/models/CreateInstallationModel;->os:Ljava/lang/String;

    .line 9
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object p1, p0, Lcom/truecaller/android/sdk/models/CreateInstallationModel;->version:Ljava/lang/String;

    .line 10
    sget-object p1, Lcom/truecaller/android/sdk/models/CreateInstallationModel;->EMPTY_SIM_SERIALS:Ljava/util/List;

    iput-object p1, p0, Lcom/truecaller/android/sdk/models/CreateInstallationModel;->simSerialNumbers:Ljava/util/List;

    .line 11
    iput-boolean p4, p0, Lcom/truecaller/android/sdk/models/CreateInstallationModel;->hasTruecaller:Z

    return-void
.end method


# virtual methods
.method public setPhonePermission(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/truecaller/android/sdk/models/CreateInstallationModel;->phonePermission:Z

    return-void
.end method

.method public setSimSerialNumbers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/truecaller/android/sdk/models/CreateInstallationModel;->simSerialNumbers:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public setVerificationAttempt(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/truecaller/android/sdk/models/CreateInstallationModel$VerificationAttempts;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/truecaller/android/sdk/models/CreateInstallationModel;->verificationAttempt:I

    return-void
.end method
