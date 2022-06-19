.class public Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/android/sdk/TruecallerSdkScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private buttonColor:I

.field private buttonTextColor:I

.field private final callback:Lcom/truecaller/android/sdk/ITrueCallback;

.field private final context:Landroid/content/Context;

.field private ctaTextPrefixOption:I

.field private loginTextPrefixOption:I

.field private loginTextSuffixOption:I

.field private final partnerKey:Ljava/lang/String;

.field private privacyPolicyUrl:Ljava/lang/String;

.field private sdkFlag:I

.field private termsOfServiceUrl:Ljava/lang/String;

.field private titleOption:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/truecaller/android/sdk/ITrueCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;->callback:Lcom/truecaller/android/sdk/ITrueCallback;

    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    invoke-static {p1}, Le/m/d/y/n;->U(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;->partnerKey:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;->partnerKey:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;->loginTextPrefixOption:I

    return p0
.end method

.method public static synthetic access$1100(Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;->loginTextSuffixOption:I

    return p0
.end method

.method public static synthetic access$200(Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;->sdkFlag:I

    return p0
.end method

.method public static synthetic access$300(Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;)Lcom/truecaller/android/sdk/ITrueCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;->callback:Lcom/truecaller/android/sdk/ITrueCallback;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;->titleOption:I

    return p0
.end method

.method public static synthetic access$500(Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;->buttonColor:I

    return p0
.end method

.method public static synthetic access$600(Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;->buttonTextColor:I

    return p0
.end method

.method public static synthetic access$700(Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;->privacyPolicyUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;->termsOfServiceUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;->ctaTextPrefixOption:I

    return p0
.end method


# virtual methods
.method public build()Lcom/truecaller/android/sdk/TruecallerSdkScope;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;->partnerKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/truecaller/android/sdk/TruecallerSdkScope;

    invoke-direct {v0, p0}, Lcom/truecaller/android/sdk/TruecallerSdkScope;-><init>(Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Add partner key in your manifest"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buttonColor(I)Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;->buttonColor:I

    return-object p0
.end method

.method public buttonShapeOptions(I)Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;->sdkFlag:I

    and-int/lit16 v0, v0, -0xc01

    or-int/2addr p1, v0

    iput p1, p0, Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;->sdkFlag:I

    return-object p0
.end method

.method public buttonTextColor(I)Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;->buttonTextColor:I

    return-object p0
.end method

.method public consentMode(I)Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;->sdkFlag:I

    and-int/lit16 v0, v0, -0x8d

    or-int/2addr p1, v0

    iput p1, p0, Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;->sdkFlag:I

    return-object p0
.end method

.method public consentTitleOption(I)Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;->titleOption:I

    return-object p0
.end method

.method public ctaTextPrefix(I)Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;->ctaTextPrefixOption:I

    return-object p0
.end method

.method public footerType(I)Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;->sdkFlag:I

    and-int/lit16 v0, v0, -0x1344

    or-int/2addr p1, v0

    iput p1, p0, Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;->sdkFlag:I

    return-object p0
.end method

.method public loginTextPrefix(I)Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;->loginTextPrefixOption:I

    return-object p0
.end method

.method public loginTextSuffix(I)Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;->loginTextSuffixOption:I

    return-object p0
.end method

.method public privacyPolicyUrl(Ljava/lang/String;)Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;->privacyPolicyUrl:Ljava/lang/String;

    return-object p0
.end method

.method public sdkOptions(I)Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;->sdkFlag:I

    and-int/lit8 v0, v0, -0x31

    or-int/2addr p1, v0

    iput p1, p0, Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;->sdkFlag:I

    return-object p0
.end method

.method public termsOfServiceUrl(Ljava/lang/String;)Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/android/sdk/TruecallerSdkScope$Builder;->termsOfServiceUrl:Ljava/lang/String;

    return-object p0
.end method
