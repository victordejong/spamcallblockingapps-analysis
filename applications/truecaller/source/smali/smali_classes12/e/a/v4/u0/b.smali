.class public final Le/a/v4/u0/b;
.super Le/a/v4/u0/a;
.source "SourceFile"


# instance fields
.field public final j:Lcom/truecaller/android/sdk/PartnerInformation;

.field public final k:Le/a/t/b/c/c;

.field public final l:Le/a/v4/b0;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/v4/b0;Le/a/v4/l;Le/a/v4/v;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p4

    const-string v0, "extras"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    move-object/from16 v3, p3

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkRepository"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTrackerHolder"

    move-object/from16 v4, p5

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkAccountManager"

    move-object/from16 v5, p6

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Le/a/v4/u0/a;-><init>(Landroid/os/Bundle;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/v4/l;Le/a/v4/v;)V

    iput-object v7, v6, Le/a/v4/u0/b;->l:Le/a/v4/b0;

    .line 2
    iget-object v0, v6, Le/a/v4/u0/h;->d:Landroid/os/Bundle;

    const-string v1, "partnerKey"

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v9, :cond_3

    const-string v3, "extras.getString(PARTNER_KEY) ?: return null"

    invoke-static {v9, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v3, v6, Le/a/v4/u0/h;->d:Landroid/os/Bundle;

    const-string v4, "requestNonce"

    .line 5
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    const-string v3, "extras.getString(REQUEST_NONCE) ?: return null"

    invoke-static {v12, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v3, v6, Le/a/v4/u0/h;->d:Landroid/os/Bundle;

    const-string v4, "partnerName"

    .line 7
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, "extras.getString(PARTNER_NAME) ?: return null"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {v9}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v12}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 9
    iget-object v3, v6, Le/a/v4/u0/h;->d:Landroid/os/Bundle;

    const-string v4, "lang"

    .line 10
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    :goto_1
    if-nez v3, :cond_2

    .line 11
    new-instance v3, Ljava/util/Locale;

    .line 12
    iget-object v5, v6, Le/a/v4/u0/h;->d:Landroid/os/Bundle;

    .line 13
    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object v13, v3

    goto :goto_2

    :cond_2
    move-object v13, v2

    .line 14
    :goto_2
    new-instance v3, Lcom/truecaller/android/sdk/PartnerInformation;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v8, "2.6.0"

    const-string v10, ""

    const-string v11, ""

    move-object v7, v3

    invoke-direct/range {v7 .. v16}, Lcom/truecaller/android/sdk/PartnerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move-object v3, v2

    .line 15
    :goto_3
    iput-object v3, v6, Le/a/v4/u0/b;->j:Lcom/truecaller/android/sdk/PartnerInformation;

    .line 16
    iget-object v3, v6, Le/a/v4/u0/h;->d:Landroid/os/Bundle;

    const-string v4, "title"

    .line 17
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "(this as java.lang.String).toLowerCase()"

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    move-object v3, v2

    :goto_4
    if-eqz v3, :cond_5

    .line 18
    sget-object v5, Le/a/v4/u0/c;->a:Ljava/util/List;

    .line 19
    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    goto :goto_5

    :cond_5
    move v3, v0

    .line 20
    :goto_5
    iget-object v5, v6, Le/a/v4/u0/h;->d:Landroid/os/Bundle;

    const-string v7, "skipOption"

    .line 21
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v7, Le/a/v4/u0/c;->b:Ljava/util/Map;

    .line 23
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 24
    iget-object v7, v6, Le/a/v4/u0/h;->d:Landroid/os/Bundle;

    const-string v8, "PARTNERINFO_OTHER_NUMBER"

    .line 25
    invoke-virtual {v7, v8, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 26
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v0

    .line 27
    :goto_6
    iget-object v5, v6, Le/a/v4/u0/h;->d:Landroid/os/Bundle;

    const-string v7, "loginPrefix"

    .line 28
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v7, Le/a/v4/u0/c;->c:Ljava/util/Map;

    .line 30
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_7

    :cond_7
    move v5, v0

    :goto_7
    move v13, v5

    goto :goto_8

    :cond_8
    move v13, v0

    .line 31
    :goto_8
    iget-object v5, v6, Le/a/v4/u0/h;->d:Landroid/os/Bundle;

    const-string v7, "loginSuffix"

    .line 32
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object v7, Le/a/v4/u0/c;->d:Ljava/util/Map;

    .line 34
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_9

    :cond_9
    move v5, v0

    :goto_9
    move v14, v5

    goto :goto_a

    :cond_a
    move v14, v0

    .line 35
    :goto_a
    iget-object v5, v6, Le/a/v4/u0/h;->d:Landroid/os/Bundle;

    const-string v7, "ctaPrefix"

    .line 36
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v7, Le/a/v4/u0/c;->e:Ljava/util/Map;

    .line 38
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_b

    :cond_b
    move v5, v0

    :goto_b
    move v12, v5

    goto :goto_c

    :cond_c
    move v12, v0

    .line 39
    :goto_c
    iget-object v5, v6, Le/a/v4/u0/h;->d:Landroid/os/Bundle;

    const-string v7, "btnShape"

    .line 40
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object v4, Le/a/v4/u0/c;->f:Ljava/util/Map;

    .line 42
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_d

    :cond_d
    move v4, v0

    :goto_d
    and-int/lit16 v1, v1, -0xc01

    or-int/2addr v1, v4

    .line 43
    iget-object v4, v6, Le/a/v4/u0/h;->d:Landroid/os/Bundle;

    const-string v5, "ctaColor"

    .line 44
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 45
    iget-object v5, v6, Le/a/v4/u0/h;->d:Landroid/os/Bundle;

    const-string v7, "ctaTextColor"

    .line 46
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 47
    iget-object v7, v6, Le/a/v4/u0/h;->d:Landroid/os/Bundle;

    const-string v8, "privacyUrl"

    .line 48
    invoke-virtual {v7, v8, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 49
    iget-object v7, v6, Le/a/v4/u0/h;->d:Landroid/os/Bundle;

    const-string v8, "termsUrl"

    .line 50
    invoke-virtual {v7, v8, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v4, :cond_e

    .line 51
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    move v8, v2

    goto :goto_e

    :cond_e
    move v8, v0

    :goto_e
    if-eqz v5, :cond_f

    .line 52
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :cond_f
    move v9, v0

    .line 53
    new-instance v0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;

    move-object v7, v0

    invoke-direct/range {v7 .. v14}, Lcom/truecaller/android/sdk/clients/CustomDataBundle;-><init>(IILjava/lang/String;Ljava/lang/String;III)V

    .line 54
    new-instance v2, Le/a/t/b/c/c;

    invoke-direct {v2, v1, v3, v0}, Le/a/t/b/c/c;-><init>(IILcom/truecaller/android/sdk/clients/CustomDataBundle;)V

    .line 55
    iput-object v2, v6, Le/a/v4/u0/b;->k:Le/a/t/b/c/c;

    return-void
.end method


# virtual methods
.method public C()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/u0/b;->j:Lcom/truecaller/android/sdk/PartnerInformation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/a/v4/u0/h;->b:Z

    .line 2
    iget-object v1, p0, Le/a/v4/u0/b;->j:Lcom/truecaller/android/sdk/PartnerInformation;

    if-eqz v1, :cond_0

    .line 3
    iput-boolean v0, p0, Le/a/v4/u0/a;->i:Z

    .line 4
    iget-object v0, p0, Le/a/v4/u0/b;->l:Le/a/v4/b0;

    invoke-virtual {v0, v1, p0}, Le/a/v4/b0;->a(Lcom/truecaller/android/sdk/PartnerInformation;Lx3/d;)V

    .line 5
    iget-object v0, p0, Le/a/v4/u0/h;->a:Le/a/v4/w0/b;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Le/a/v4/w0/b;->S1()V

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "mobile_web"

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/u0/b;->j:Lcom/truecaller/android/sdk/PartnerInformation;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/truecaller/android/sdk/PartnerInformation;->truesdkVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/u0/h;->c:Le/a/v4/u0/k/a;

    .line 2
    invoke-interface {v0}, Le/a/v4/u0/k/a;->d()V

    .line 3
    iget-object v0, p0, Le/a/v4/u0/h;->a:Le/a/v4/w0/b;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Le/a/v4/w0/b;->M3()V

    :cond_0
    return-void
.end method

.method public l()Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/u0/b;->j:Lcom/truecaller/android/sdk/PartnerInformation;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/truecaller/android/sdk/PartnerInformation;->locale:Ljava/util/Locale;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public m()Le/a/t/b/c/c;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/u0/b;->k:Le/a/t/b/c/c;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/u0/b;->j:Lcom/truecaller/android/sdk/PartnerInformation;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/truecaller/android/sdk/PartnerInformation;->partnerKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public x(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/v4/u0/b;->j:Lcom/truecaller/android/sdk/PartnerInformation;

    if-eqz v0, :cond_2

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/v4/u0/b;->l:Le/a/v4/b0;

    invoke-virtual {p1, v0, p0}, Le/a/v4/b0;->a(Lcom/truecaller/android/sdk/PartnerInformation;Lx3/d;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/v4/u0/h;->c:Le/a/v4/u0/k/a;

    .line 4
    invoke-interface {p1, p2}, Le/a/v4/u0/k/a;->c(I)V

    const/16 p1, 0xe

    if-ne p2, p1, :cond_1

    .line 5
    iget-object p1, p0, Le/a/v4/u0/b;->l:Le/a/v4/b0;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p2, v0, Lcom/truecaller/android/sdk/PartnerInformation;->partnerKey:Ljava/lang/String;

    iget-object v0, v0, Lcom/truecaller/android/sdk/PartnerInformation;->reqNonce:Ljava/lang/String;

    .line 8
    sget-object v1, Lcom/truecaller/common/network/util/KnownEndpoints;->API:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v2, Le/a/v4/j0;

    invoke-static {v1, v2}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/v4/j0;

    .line 9
    invoke-interface {v1, p2, v0}, Le/a/v4/j0;->a(Ljava/lang/String;Ljava/lang/String;)Lx3/b;

    move-result-object p2

    .line 10
    new-instance v0, Le/a/v4/d0;

    invoke-direct {v0, p1}, Le/a/v4/d0;-><init>(Le/a/v4/b0;)V

    invoke-interface {p2, v0}, Lx3/b;->enqueue(Lx3/d;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Le/a/v4/u0/b;->l:Le/a/v4/b0;

    invoke-virtual {p0}, Le/a/v4/u0/b;->z()Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v1, v0, Lcom/truecaller/android/sdk/PartnerInformation;->partnerKey:Ljava/lang/String;

    iget-object v2, v0, Lcom/truecaller/android/sdk/PartnerInformation;->reqNonce:Ljava/lang/String;

    .line 14
    sget-object v3, Lcom/truecaller/common/network/util/KnownEndpoints;->API:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v4, Le/a/v4/i0;

    invoke-static {v3, v4}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/v4/i0;

    .line 15
    invoke-interface {v3, v1, v2}, Le/a/v4/i0;->a(Ljava/lang/String;Ljava/lang/String;)Lx3/b;

    move-result-object v1

    .line 16
    new-instance v2, Le/a/v4/c0;

    invoke-direct {v2, p1, p2, v0}, Le/a/v4/c0;-><init>(Le/a/v4/b0;Ljava/lang/String;Lcom/truecaller/android/sdk/PartnerInformation;)V

    invoke-interface {v1, v2}, Lx3/b;->enqueue(Lx3/d;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public z()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/v4/u0/h;->d:Landroid/os/Bundle;

    const-string v1, "partnerName"

    const-string v2, ""

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "extras.getString(PARTNER_NAME, \"\")"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
