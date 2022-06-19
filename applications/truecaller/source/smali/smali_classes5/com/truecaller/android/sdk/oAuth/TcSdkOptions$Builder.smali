.class public Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/android/sdk/oAuth/TcSdkOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private buttonColor:I

.field private buttonTextColor:I

.field private final callback:Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;

.field private final clientId:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private ctaTextOption:I

.field private loginTextPrefixOption:I

.field private sdkFlag:I

.field private titleOption:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->callback:Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;

    const/4 p2, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "com.truecaller.android.sdk.ClientId"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    .line 8
    :cond_1
    :goto_1
    iput-object p2, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->clientId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->clientId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->sdkFlag:I

    return p0
.end method

.method public static synthetic access$300(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->callback:Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->buttonColor:I

    return p0
.end method

.method public static synthetic access$500(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->buttonTextColor:I

    return p0
.end method

.method public static synthetic access$600(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->titleOption:I

    return p0
.end method

.method public static synthetic access$700(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->ctaTextOption:I

    return p0
.end method

.method public static synthetic access$800(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->loginTextPrefixOption:I

    return p0
.end method


# virtual methods
.method public build()Lcom/truecaller/android/sdk/oAuth/TcSdkOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->clientId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions;

    invoke-direct {v0, p0}, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions;-><init>(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Add client id in your manifest"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buttonColor(I)Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->buttonColor:I

    return-object p0
.end method

.method public buttonShapeOptions(I)Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->sdkFlag:I

    and-int/lit16 v0, v0, -0x181

    or-int/2addr p1, v0

    iput p1, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->sdkFlag:I

    return-object p0
.end method

.method public buttonTextColor(I)Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->buttonTextColor:I

    return-object p0
.end method

.method public consentTitleOption(I)Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->titleOption:I

    return-object p0
.end method

.method public ctaText(I)Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->ctaTextOption:I

    return-object p0
.end method

.method public footerType(I)Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->sdkFlag:I

    and-int/lit8 v0, v0, -0x20

    or-int/2addr p1, v0

    iput p1, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->sdkFlag:I

    return-object p0
.end method

.method public loginTextPrefix(I)Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->loginTextPrefixOption:I

    return-object p0
.end method

.method public sdkOptions(I)Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->sdkFlag:I

    and-int/lit8 v0, v0, -0x61

    or-int/2addr p1, v0

    iput p1, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->sdkFlag:I

    return-object p0
.end method
