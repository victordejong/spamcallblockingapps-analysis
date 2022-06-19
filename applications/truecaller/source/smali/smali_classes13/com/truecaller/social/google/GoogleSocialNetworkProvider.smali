.class public Lcom/truecaller/social/google/GoogleSocialNetworkProvider;
.super Lcom/truecaller/social/SocialNetworkProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/social/SocialNetworkProvider;-><init>()V

    return-void
.end method

.method private hasSystemGoogleAccount(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "android.permission.GET_ACCOUNTS"

    .line 1
    invoke-static {p1, v0}, Ln3/k/b/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    const-string v0, "com.google"

    .line 3
    invoke-virtual {p1, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    array-length p1, p1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public isSupported(Landroid/content/Context;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/common/GoogleApiAvailability;->d:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 2
    sget v1, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->a:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->e(Landroid/content/Context;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/truecaller/social/google/GoogleSocialNetworkProvider;->hasSystemGoogleAccount(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public network(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)Le/a/b5/b;
    .locals 0

    .line 1
    new-instance p2, Le/a/b5/h/a;

    invoke-direct {p2, p1}, Le/a/b5/h/a;-><init>(Landroid/app/Activity;)V

    return-object p2
.end method

.method public type()Lcom/truecaller/social/SocialNetworkType;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/social/SocialNetworkType;->GOOGLE:Lcom/truecaller/social/SocialNetworkType;

    return-object v0
.end method
