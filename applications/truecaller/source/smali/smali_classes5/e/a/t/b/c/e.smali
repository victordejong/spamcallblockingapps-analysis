.class public Le/a/t/b/c/e;
.super Le/a/t/b/c/d;
.source "SourceFile"


# instance fields
.field public final h:Le/a/t/b/c/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/truecaller/android/sdk/ITrueCallback;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Le/a/t/b/c/c;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Le/a/t/b/c/c;-><init>(IILcom/truecaller/android/sdk/clients/CustomDataBundle;)V

    const/4 v1, 0x1

    .line 2
    invoke-direct {p0, p1, p2, p3, v1}, Le/a/t/b/c/d;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/truecaller/android/sdk/ITrueCallback;I)V

    .line 3
    iput-object v0, p0, Le/a/t/b/c/e;->h:Le/a/t/b/c/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/truecaller/android/sdk/ITrueCallback;Le/a/t/b/c/c;)V
    .locals 1

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, p1, p2, p3, v0}, Le/a/t/b/c/d;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/truecaller/android/sdk/ITrueCallback;I)V

    .line 5
    iput-object p4, p0, Le/a/t/b/c/e;->h:Le/a/t/b/c/c;

    return-void
.end method


# virtual methods
.method public h(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 12

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

    invoke-static {v0}, Le/m/d/y/n;->Y([B)Ljava/lang/String;

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
    if-eqz v6, :cond_6

    .line 7
    iget-object v0, p0, Le/a/t/b/c/d;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    iput-object v0, p0, Le/a/t/b/c/d;->e:Ljava/lang/String;

    .line 10
    :cond_3
    iget-object v7, p0, Le/a/t/b/c/d;->e:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 12
    iget-object v8, p0, Le/a/t/b/c/d;->f:Ljava/util/Locale;

    .line 13
    new-instance v0, Lcom/truecaller/android/sdk/PartnerInformation;

    .line 14
    iget-object v4, p0, Le/a/t/b/c/d;->d:Ljava/lang/String;

    .line 15
    iget v9, p0, Le/a/t/b/c/d;->g:I

    .line 16
    sget v2, Lcom/truecaller/android/sdk/R$string;->sdk_variant:I

    .line 17
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v2, Lcom/truecaller/android/sdk/R$string;->sdk_variant_version:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v3, "2.6.0"

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/truecaller/android/sdk/PartnerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;ILjava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v2, p0, Le/a/t/b/c/e;->h:Le/a/t/b/c/c;

    .line 19
    invoke-static {p1, v2}, Le/a/t/b/b;->b(Landroid/content/Context;Le/a/t/b/c/c;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_3

    .line 20
    :cond_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 21
    invoke-virtual {v0, v1}, Lcom/truecaller/android/sdk/PartnerInformation;->writeToBundle(Landroid/os/Bundle;)V

    const-string v3, "PARTNER_INFO_EXTRA"

    .line 22
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v0, 0x1

    const-string v3, "PARTNERINFO_OTHER_NUMBER"

    .line 23
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 24
    iget v0, v2, Le/a/t/b/c/c;->a:I

    const-string v3, "truesdk flags"

    .line 25
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 26
    iget v0, v2, Le/a/t/b/c/c;->b:I

    const-string v3, "truesdk_consent_title"

    .line 27
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    iget-object v0, v2, Le/a/t/b/c/c;->c:Lcom/truecaller/android/sdk/clients/CustomDataBundle;

    if-eqz v0, :cond_5

    .line 29
    iget v2, v0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->a:I

    const-string v3, "CUSTOMDATA_BTN_COLOR"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    iget v2, v0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->b:I

    const-string v3, "CUSTOMDATA_BTN_TEXT_COLOR"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    iget-object v2, v0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->c:Ljava/lang/String;

    const-string v3, "CUSTOMDATA_PRIVACY_URL"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v2, v0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->d:Ljava/lang/String;

    const-string v3, "CUSTOMDATA_TERMS_URL"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget v2, v0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->g:I

    const-string v3, "CUSTOMDATA_CTA_TEXT_PREFIX_OPTION"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 34
    iget v2, v0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->e:I

    const-string v3, "CUSTOMDATA_LOGIN_TEXT_PREFIX_OPTION"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 35
    iget v0, v0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->f:I

    const-string v2, "CUSTOMDATA_LOGIN_TEXT_SUFFIX_OPTION"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    :cond_5
    invoke-virtual {p1, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-object v1, p1

    :goto_3
    return-object v1

    .line 37
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Could not fetch application\'s signature"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(Ln3/r/a/l;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/t/b/c/e;->h:Le/a/t/b/c/c;

    const/16 v1, 0x20

    .line 2
    invoke-virtual {v0, v1}, Le/a/t/b/c/c;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Le/a/t/b/a;->b:Le/a/t/b/a;

    .line 4
    iget-object v1, p0, Le/a/t/b/c/d;->a:Landroid/content/Context;

    .line 5
    iget-object v2, p0, Le/a/t/b/c/d;->d:Ljava/lang/String;

    .line 6
    iget-object v3, p0, Le/a/t/b/c/d;->b:Lcom/truecaller/android/sdk/ITrueCallback;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v4, Le/a/t/b/c/g;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v2, v3, v5}, Le/a/t/b/c/g;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/truecaller/android/sdk/ITrueCallback;Z)V

    .line 9
    invoke-static {p1}, Le/m/d/y/n;->h1(Landroid/app/Activity;)V

    .line 10
    new-instance p1, Lcom/truecaller/android/sdk/TrueError;

    invoke-direct {p1, p2}, Lcom/truecaller/android/sdk/TrueError;-><init>(I)V

    invoke-interface {v3, p1}, Lcom/truecaller/android/sdk/ITrueCallback;->onVerificationRequired(Lcom/truecaller/android/sdk/TrueError;)V

    .line 11
    iput-object v4, v0, Le/a/t/b/a;->a:Le/a/t/b/c/d;

    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Le/a/t/b/c/d;->b:Lcom/truecaller/android/sdk/ITrueCallback;

    new-instance v0, Lcom/truecaller/android/sdk/TrueError;

    invoke-direct {v0, p2}, Lcom/truecaller/android/sdk/TrueError;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/truecaller/android/sdk/ITrueCallback;->onFailureProfileShared(Lcom/truecaller/android/sdk/TrueError;)V

    :goto_0
    return-void
.end method
