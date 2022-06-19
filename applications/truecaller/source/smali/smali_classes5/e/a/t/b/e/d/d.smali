.class public Le/a/t/b/e/d/d;
.super Le/a/t/b/e/d/c;
.source "SourceFile"


# instance fields
.field public final i:Le/a/t/b/e/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;Le/a/t/b/e/b;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Le/a/t/b/e/d/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;I)V

    .line 2
    iput-object p4, p0, Le/a/t/b/e/d/d;->i:Le/a/t/b/e/b;

    return-void
.end method


# virtual methods
.method public h(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 13

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_2

    .line 4
    array-length v2, v0

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 5
    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Le/m/d/y/n;->Z([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x2

    .line 6
    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_2

    :cond_2
    :goto_1
    move-object v6, v1

    :goto_2
    if-eqz v6, :cond_5

    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 8
    new-instance v0, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

    .line 9
    iget-object v4, p0, Le/a/t/b/e/d/c;->d:Ljava/lang/String;

    .line 10
    iget-object v7, p0, Le/a/t/b/e/d/c;->e:Ljava/util/Locale;

    .line 11
    sget v2, Lcom/truecaller/android/sdk/R$string;->sdk_variant:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v2, Lcom/truecaller/android/sdk/R$string;->sdk_variant_version:I

    .line 12
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 13
    iget-object v10, p0, Le/a/t/b/e/d/c;->h:Ljava/lang/String;

    .line 14
    iget-object v11, p0, Le/a/t/b/e/d/c;->f:[Ljava/lang/String;

    .line 15
    iget-object v12, p0, Le/a/t/b/e/d/c;->g:Ljava/lang/String;

    const-string v3, "3.0.0"

    move-object v2, v0

    .line 16
    invoke-direct/range {v2 .. v12}, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v2, p0, Le/a/t/b/e/d/d;->i:Le/a/t/b/e/b;

    .line 18
    invoke-static {p1}, Le/a/t/b/e/c;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    const-string v1, "truesdk_partner_info"

    .line 19
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 20
    iget v0, v2, Le/a/t/b/e/b;->a:I

    const-string v1, "truesdk_flags"

    .line 21
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 22
    iget-object v0, v2, Le/a/t/b/e/b;->b:Lcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;

    if-eqz v0, :cond_4

    const-string v1, "truesdk_options_info"

    .line 23
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_4
    move-object v1, p1

    :goto_3
    return-object v1

    .line 24
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Could not fetch application\'s signature"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
