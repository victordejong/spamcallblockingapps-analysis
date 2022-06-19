.class public final Le/a/l4/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Le/a/r2/l;",
        ">;"
    }
.end annotation


# direct methods
.method public static synthetic A(Le/a/v4/s0/f;IIZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 1
    :cond_0
    check-cast p0, Le/a/v4/s0/e;

    invoke-virtual {p0, p1, p2, p3}, Le/a/v4/s0/e;->B(IIZ)V

    return-void
.end method

.method public static final B(Le/a/b0/o/a;Le/a/b0/e/r/a;)Lcom/truecaller/android/sdk/TrueProfile;
    .locals 3

    const-string v0, "coreSettings"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/truecaller/android/sdk/TrueProfile;

    invoke-direct {v0}, Lcom/truecaller/android/sdk/TrueProfile;-><init>()V

    const-string v1, "profileNumber"

    .line 2
    invoke-interface {p1, v1}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/truecaller/android/sdk/TrueProfile;->phoneNumber:Ljava/lang/String;

    const-string v1, "profileCountryIso"

    const-string v2, ""

    .line 3
    invoke-interface {p1, v1, v2}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/truecaller/android/sdk/TrueProfile;->countryCode:Ljava/lang/String;

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "profileFirstName"

    invoke-interface {p0, v1}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "profileLastName"

    invoke-interface {p0, v1}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/truecaller/android/sdk/TrueProfile;->firstName:Ljava/lang/String;

    const-string p1, "profileCompanyJob"

    .line 5
    invoke-interface {p0, p1}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/truecaller/android/sdk/TrueProfile;->jobTitle:Ljava/lang/String;

    const-string p1, "profileCompanyName"

    .line 6
    invoke-interface {p0, p1}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/truecaller/android/sdk/TrueProfile;->companyName:Ljava/lang/String;

    const-string p1, "profileEmail"

    .line 7
    invoke-interface {p0, p1}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/truecaller/android/sdk/TrueProfile;->email:Ljava/lang/String;

    const-string p1, "profileStreet"

    .line 8
    invoke-interface {p0, p1}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/truecaller/android/sdk/TrueProfile;->street:Ljava/lang/String;

    const-string p1, "profileZip"

    .line 9
    invoke-interface {p0, p1}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/truecaller/android/sdk/TrueProfile;->zipcode:Ljava/lang/String;

    const-string p1, "profileCity"

    .line 10
    invoke-interface {p0, p1}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/truecaller/android/sdk/TrueProfile;->city:Ljava/lang/String;

    const-string p1, "profileFacebook"

    .line 11
    invoke-interface {p0, p1}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/truecaller/android/sdk/TrueProfile;->facebookId:Ljava/lang/String;

    const-string p1, "profileTwitter"

    .line 12
    invoke-interface {p0, p1}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/truecaller/android/sdk/TrueProfile;->twitterId:Ljava/lang/String;

    const-string p1, "profileWeb"

    .line 13
    invoke-interface {p0, p1}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/truecaller/android/sdk/TrueProfile;->url:Ljava/lang/String;

    const-string p1, "profileGender"

    .line 14
    invoke-interface {p0, p1}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/truecaller/android/sdk/TrueProfile;->gender:Ljava/lang/String;

    const-string p1, "profileAvatar"

    .line 15
    invoke-interface {p0, p1}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/truecaller/android/sdk/TrueProfile;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static final C(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "$this$getAvatarLetter"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const-string v0, "(this as java.lang.String).toCharArray()"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Le/q/f/a/d/a;->t0([C)Ljava/lang/Character;

    move-result-object p0

    const-string v0, ""

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    .line 4
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    move-object v0, p0

    :cond_1
    return-object v0
.end method

.method public static final D(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static final E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;
    .locals 1

    const-string v0, "$this$getContextThemeWrapper"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Landroid/view/ContextThemeWrapper;

    sget-object v0, Le/a/i5/a;->g:Le/a/i5/a;

    invoke-static {}, Le/a/i5/a;->a()Le/a/i5/d;

    move-result-object v0

    .line 2
    iget v0, v0, Le/a/i5/d;->d:I

    .line 3
    invoke-direct {p1, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Landroid/view/ContextThemeWrapper;

    sget-object v0, Le/a/i5/a;->g:Le/a/i5/a;

    invoke-static {}, Le/a/i5/a;->a()Le/a/i5/d;

    move-result-object v0

    .line 5
    iget v0, v0, Le/a/i5/d;->c:I

    .line 6
    invoke-direct {p1, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    :goto_0
    return-object p1
.end method

.method public static F(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/ui/TruecallerInit;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000000

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static final G(Le/a/g0/k/f;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$name"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Le/a/g0/k/f$a;

    if-eqz v0, :cond_0

    const-string p0, "i"

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p0, Le/a/g0/k/f$c;

    if-eqz v0, :cond_1

    const-string p0, "v"

    goto :goto_0

    .line 3
    :cond_1
    instance-of p0, p0, Le/a/g0/k/f$b;

    if-eqz p0, :cond_2

    const-string p0, "o"

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Ls1/i;

    invoke-direct {p0}, Ls1/i;-><init>()V

    throw p0
.end method

.method public static final H(Lcom/truecaller/messaging/data/types/Message;)I
    .locals 4

    const-string v0, "$this$getNotificationId"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    const-string v0, "date"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-wide v0, p0, Lw3/b/a/e0/e;->a:J

    const p0, 0x186a0

    int-to-long v2, p0

    .line 3
    rem-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public static final I(Le/a/b0/o/a;)Ljava/lang/String;
    .locals 3

    const-string v0, "$this$getProfileFullName"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, "profileFirstName"

    .line 1
    invoke-interface {p0, v1}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "profileLastName"

    invoke-interface {p0, v1}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, " "

    invoke-static {p0, v0}, Le/a/p5/g0;->D(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringUtils.combine(\" \",\u2026ttings.PROFILE_LASTNAME))"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final J(Le/a/b0/o/a;Le/a/b0/e/r/a;)Ljava/lang/String;
    .locals 2

    const-string v0, "coreSettings"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "profileNationalNumber"

    .line 1
    invoke-interface {p0, v1}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "profileNumber"

    invoke-interface {p1, p0}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, Le/a/p5/g0;->G([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final K(Lcom/truecaller/sdk/oAuth/networking/ErrorType;Ljava/lang/String;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/truecaller/sdk/oAuth/networking/ErrorType;",
            "Ljava/lang/String;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/w/d<",
            "-",
            "Lx3/a0<",
            "TT;>;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Le/a/v4/s0/l/e/a<",
            "TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/v4/s0/l/d;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/v4/s0/l/d;

    iget v1, v0, Le/a/v4/s0/l/d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/v4/s0/l/d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/v4/s0/l/d;

    invoke-direct {v0, p3}, Le/a/v4/s0/l/d;-><init>(Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/v4/s0/l/d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/v4/s0/l/d;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Le/a/v4/s0/l/d;->g:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object p0, v0, Le/a/v4/s0/l/d;->f:Ljava/lang/Object;

    check-cast p0, Lcom/truecaller/sdk/oAuth/networking/ErrorType;

    :try_start_0
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    iput-object p0, v0, Le/a/v4/s0/l/d;->f:Ljava/lang/Object;

    iput-object p1, v0, Le/a/v4/s0/l/d;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/v4/s0/l/d;->e:I

    invoke-interface {p2, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    check-cast p3, Lx3/a0;

    .line 6
    invoke-virtual {p3}, Lx3/a0;->b()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    .line 7
    iget-object p0, p3, Lx3/a0;->b:Ljava/lang/Object;

    if-nez p0, :cond_4

    .line 8
    new-instance p0, Le/a/v4/s0/l/e/a$a$a;

    invoke-direct {p0, p2, v3}, Le/a/v4/s0/l/e/a$a$a;-><init>(Le/a/v4/s0/l/e/b/b;I)V

    goto :goto_2

    .line 9
    :cond_4
    new-instance p1, Le/a/v4/s0/l/e/a$b;

    invoke-direct {p1, p0}, Le/a/v4/s0/l/e/a$b;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_2
    return-object p0

    .line 10
    :cond_5
    new-instance p1, Le/m/e/k;

    invoke-direct {p1}, Le/m/e/k;-><init>()V

    .line 11
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, "response.message()"

    if-eqz p0, :cond_9

    if-ne p0, v3, :cond_8

    .line 12
    :try_start_2
    iget-object p0, p3, Lx3/a0;->c:Lu3/l0;

    if-eqz p0, :cond_6

    .line 13
    invoke-virtual {p0}, Lu3/l0;->j()Ljava/io/Reader;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    const-class v1, Lcom/truecaller/sdk/oAuth/networking/data/error/OAuthApiError;

    invoke-virtual {p1, p0, v1}, Le/m/e/k;->d(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/sdk/oAuth/networking/data/error/OAuthApiError;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {p0, p2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object p2, p1

    goto :goto_3

    :catchall_0
    move-exception p1

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p2

    :try_start_6
    invoke-static {p0, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    :cond_6
    :goto_3
    if-eqz p2, :cond_7

    .line 14
    iget-object p0, p3, Lx3/a0;->a:Lu3/k0;

    .line 15
    iget p0, p0, Lu3/k0;->e:I

    .line 16
    invoke-virtual {p2, p0}, Le/a/v4/s0/l/e/b/a;->setCode(I)V

    goto :goto_4

    .line 17
    :cond_7
    new-instance p2, Le/a/v4/s0/l/e/b/a;

    .line 18
    iget-object p0, p3, Lx3/a0;->a:Lu3/k0;

    .line 19
    iget p1, p0, Lu3/k0;->e:I

    .line 20
    iget-object p0, p0, Lu3/k0;->d:Ljava/lang/String;

    .line 21
    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1, p0}, Le/a/v4/s0/l/e/b/a;-><init>(ILjava/lang/String;)V

    .line 22
    :goto_4
    new-instance p0, Le/a/v4/s0/l/e/a$a$d;

    invoke-direct {p0, p2}, Le/a/v4/s0/l/e/a$a$d;-><init>(Le/a/v4/s0/l/e/b/b;)V

    goto :goto_7

    :cond_8
    new-instance p0, Ls1/i;

    invoke-direct {p0}, Ls1/i;-><init>()V

    throw p0

    .line 23
    :cond_9
    iget-object p0, p3, Lx3/a0;->c:Lu3/l0;

    if-eqz p0, :cond_a

    .line 24
    invoke-virtual {p0}, Lu3/l0;->j()Ljava/io/Reader;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    const-class v1, Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;

    invoke-virtual {p1, p0, v1}, Le/m/e/k;->d(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-static {p0, p2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-object p2, p1

    goto :goto_5

    :catchall_2
    move-exception p1

    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception p2

    :try_start_a
    invoke-static {p0, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    :cond_a
    :goto_5
    if-eqz p2, :cond_c

    .line 25
    invoke-virtual {p2}, Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;->errorCode()I

    move-result p0

    if-nez p0, :cond_b

    goto :goto_6

    .line 26
    :cond_b
    new-instance p0, Le/a/v4/s0/l/e/a$a$d;

    invoke-direct {p0, p2}, Le/a/v4/s0/l/e/a$a$d;-><init>(Le/a/v4/s0/l/e/b/b;)V

    goto :goto_7

    .line 27
    :cond_c
    :goto_6
    new-instance p0, Le/a/v4/s0/l/e/a$a$d;

    new-instance p1, Le/a/v4/s0/l/e/b/a;

    .line 28
    iget-object p2, p3, Lx3/a0;->a:Lu3/k0;

    .line 29
    iget p3, p2, Lu3/k0;->e:I

    .line 30
    iget-object p2, p2, Lu3/k0;->d:Ljava/lang/String;

    .line 31
    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p3, p2}, Le/a/v4/s0/l/e/b/a;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Le/a/v4/s0/l/e/a$a$d;-><init>(Le/a/v4/s0/l/e/b/b;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :goto_7
    return-object p0

    :catch_0
    move-exception p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    goto :goto_8

    :cond_d
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    .line 33
    :goto_8
    instance-of p2, p0, Ljava/net/UnknownHostException;

    if-eqz p2, :cond_e

    goto :goto_9

    :cond_e
    instance-of p2, p0, Ljava/io/IOException;

    if-eqz p2, :cond_f

    :goto_9
    new-instance p0, Le/a/v4/s0/l/e/a$a$e;

    .line 34
    new-instance p2, Le/a/v4/s0/l/e/b/a;

    const/4 p3, -0x5

    invoke-direct {p2, p3, p1}, Le/a/v4/s0/l/e/b/a;-><init>(ILjava/lang/String;)V

    .line 35
    invoke-direct {p0, p2}, Le/a/v4/s0/l/e/a$a$e;-><init>(Le/a/v4/s0/l/e/b/b;)V

    goto :goto_a

    .line 36
    :cond_f
    instance-of p2, p0, Lx3/l;

    if-eqz p2, :cond_10

    new-instance p2, Le/a/v4/s0/l/e/a$a$b;

    new-instance p3, Le/a/v4/s0/l/e/b/a;

    check-cast p0, Lx3/l;

    .line 37
    iget p0, p0, Lx3/l;->a:I

    .line 38
    invoke-direct {p3, p0, p1}, Le/a/v4/s0/l/e/b/a;-><init>(ILjava/lang/String;)V

    invoke-direct {p2, p3}, Le/a/v4/s0/l/e/a$a$b;-><init>(Le/a/v4/s0/l/e/b/b;)V

    move-object p0, p2

    goto :goto_a

    .line 39
    :cond_10
    instance-of p2, p0, Ljava/net/SocketTimeoutException;

    if-eqz p2, :cond_11

    new-instance p0, Le/a/v4/s0/l/e/a$a$f;

    .line 40
    new-instance p2, Le/a/v4/s0/l/e/b/a;

    const/4 p3, -0x4

    invoke-direct {p2, p3, p1}, Le/a/v4/s0/l/e/b/a;-><init>(ILjava/lang/String;)V

    .line 41
    invoke-direct {p0, p2}, Le/a/v4/s0/l/e/a$a$f;-><init>(Le/a/v4/s0/l/e/b/b;)V

    goto :goto_a

    .line 42
    :cond_11
    instance-of p0, p0, Ljava/util/concurrent/CancellationException;

    if-eqz p0, :cond_12

    new-instance p0, Le/a/v4/s0/l/e/a$a$c;

    .line 43
    new-instance p2, Le/a/v4/s0/l/e/b/a;

    const/4 p3, -0x6

    invoke-direct {p2, p3, p1}, Le/a/v4/s0/l/e/b/a;-><init>(ILjava/lang/String;)V

    .line 44
    invoke-direct {p0, p2}, Le/a/v4/s0/l/e/a$a$c;-><init>(Le/a/v4/s0/l/e/b/b;)V

    goto :goto_a

    .line 45
    :cond_12
    new-instance p0, Le/a/v4/s0/l/e/a$a$g;

    .line 46
    new-instance p2, Le/a/v4/s0/l/e/b/a;

    const/4 p3, -0x3

    invoke-direct {p2, p3, p1}, Le/a/v4/s0/l/e/b/a;-><init>(ILjava/lang/String;)V

    .line 47
    invoke-direct {p0, p2}, Le/a/v4/s0/l/e/a$a$g;-><init>(Le/a/v4/s0/l/e/b/b;)V

    :goto_a
    return-object p0
.end method

.method public static final L(Le/a/a0/n;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a0/n;",
            "Lcom/truecaller/data/entity/Contact;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/SpamCategoryModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/a0/r;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/a0/r;

    iget v1, v0, Le/a/a0/r;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/a0/r;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/a0/r;

    invoke-direct {v0, p2}, Le/a/a0/r;-><init>(Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/a0/r;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/a0/r;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    .line 4
    iput v3, v0, Le/a/a0/r;->e:I

    invoke-interface {p0, p1, v0}, Le/a/a0/n;->c(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2, v3}, Ls1/u/i;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object p0, Ls1/u/s;->a:Ls1/u/s;

    return-object p0
.end method

.method public static final M(Landroid/content/Context;I)I
    .locals 1

    const-string v0, "$this$getTCXThemedColor"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object p0

    invoke-static {p0, p1}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static final N(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "$this$getTCXThemedDrawable"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object p0

    invoke-static {p0, p1, p2}, Le/a/p5/s0/g;->l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const-string p1, "ThemeUtils.getTintedDraw\u2026true), drawableRes, tint)"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final O(Le/a/b0/p/c;)[Ljava/lang/Long;
    .locals 5

    const-string v0, "$this$getTagIds"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v0, p0, Le/a/b0/p/c;->c:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    new-array v0, v3, [Ljava/lang/Long;

    .line 2
    iget-wide v1, p0, Le/a/b0/p/c;->a:J

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v0, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Long;

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v4

    .line 5
    iget-wide v0, p0, Le/a/b0/p/c;->a:J

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v2, v3

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public static final P(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$getUrlWithValidProtocol"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Landroid/webkit/URLUtil;->guessUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "URLUtil.guessUrl(this)"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static final Q(Landroidx/appcompat/widget/SearchView;Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/widget/SearchView;",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/String;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$handleSearchText"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/g5/b0/b;

    invoke-direct {v0, p1}, Le/a/g5/b0/b;-><init>(Ls1/z/b/l;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$l;)V

    .line 2
    new-instance v0, Le/a/g5/b0/c;

    invoke-direct {v0, p1}, Le/a/g5/b0/c;-><init>(Ls1/z/b/l;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->setOnCloseListener(Landroidx/appcompat/widget/SearchView$k;)V

    return-void
.end method

.method public static final R(Landroid/view/ViewGroup;IZZ)Landroid/view/View;
    .locals 2

    const-string v0, "$this$inflate"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "LayoutInflater.from(cont\u2026yout, this, attachToRoot)"

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const-string v1, "LayoutInflater.from(context)"

    invoke-static {p3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p3, v1}, Le/a/l4/k;->u0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;

    move-result-object p3

    invoke-virtual {p3, p1, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    invoke-virtual {p3, p1, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public static synthetic S(Landroid/view/ViewGroup;IZZI)Landroid/view/View;
    .locals 2

    and-int/lit8 v0, p4, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p2, v1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v1

    .line 1
    :cond_1
    invoke-static {p0, p1, p2, p3}, Le/a/l4/k;->R(Landroid/view/ViewGroup;IZZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final T()Z
    .locals 2

    const-string v0, "alphaRelease"

    const-string v1, "release"

    .line 1
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final U(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "key"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Promo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Le/a/l4/k;->v0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "DismissCount"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic V(Le/a/v4/p0/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p5, 0x2

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    move-object p2, p4

    :cond_0
    and-int/lit8 p3, p5, 0x4

    and-int/lit8 p3, p5, 0x8

    .line 1
    invoke-interface {p0, p1, p2, p4, p4}, Le/a/v4/p0/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic W(Le/a/m4/c/i/a/e;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 1
    :cond_1
    invoke-interface {p0, p1, p2}, Le/a/m4/c/i/a/e;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final X(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/SpamCategoryModel;
    .locals 1

    const-string v0, "$this$peekSpamCategoryModel"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/truecaller/data/entity/Contact;->x:Lcom/truecaller/data/entity/SpamData;

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/data/entity/SpamData;->getSpamCategoryModels()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/truecaller/data/entity/SpamCategoryModel;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final Y(Le/a/a0/n;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a0/n;",
            "Lcom/truecaller/data/entity/Contact;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/data/entity/SpamCategoryModel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/a0/s;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/a0/s;

    iget v1, v0, Le/a/a0/s;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/a0/s;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/a0/s;

    invoke-direct {v0, p2}, Le/a/a0/s;-><init>(Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/a0/s;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/a0/s;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput v3, v0, Le/a/a0/s;->e:I

    invoke-static {p0, p1, v0}, Le/a/l4/k;->L(Le/a/a0/n;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final Z(Le/a/a0/n;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a0/n;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/data/entity/SpamCategoryModel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/a0/t;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/a0/t;

    iget v1, v0, Le/a/a0/t;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/a0/t;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/a0/t;

    invoke-direct {v0, p2}, Le/a/a0/t;-><init>(Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/a0/t;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/a0/t;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    invoke-static {p1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    iput v3, v0, Le/a/a0/t;->e:I

    invoke-interface {p0, p1, p2, v0}, Le/a/a0/n;->b(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lcom/truecaller/data/entity/SpamCategoryModel;

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    return-object p2
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_0

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v0, v1, v1}, Ls1/f0/v;->I(Ljava/lang/CharSequence;[CIZ)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, ""

    :goto_1
    return-object p0

    nop

    :array_0
    .array-data 2
        0x7bs
        0x7ds
    .end array-data
.end method

.method public static final a0(Le/a/b0/o/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/OnlineIds;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "$this$persistProfileData"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onlineIds"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileGender"

    .line 1
    invoke-interface {p0, v0, p1}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "profileStreet"

    .line 2
    invoke-interface {p0, p1, p2}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "profileCity"

    .line 3
    invoke-interface {p0, p1, p3}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "profileZip"

    .line 4
    invoke-interface {p0, p1, p4}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p6}, Lcom/truecaller/profile/data/dto/OnlineIds;->getFacebookId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "profileFacebook"

    invoke-interface {p0, p2, p1}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p6}, Lcom/truecaller/profile/data/dto/OnlineIds;->getGoogleIdToken()Ljava/lang/String;

    move-result-object p1

    const-string p2, "profileGoogleIdToken"

    invoke-interface {p0, p2, p1}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p6}, Lcom/truecaller/profile/data/dto/OnlineIds;->getEmail()Ljava/lang/String;

    move-result-object p1

    const-string p2, "profileEmail"

    invoke-interface {p0, p2, p1}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p6}, Lcom/truecaller/profile/data/dto/OnlineIds;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string p2, "profileWeb"

    invoke-interface {p0, p2, p1}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "profileAvatar"

    .line 9
    invoke-interface {p0, p1, p7}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "profileCompanyName"

    .line 10
    invoke-interface {p0, p1, p5}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "profileCompanyJob"

    .line 11
    invoke-interface {p0, p1, p8}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "profileTag"

    .line 12
    invoke-interface {p0, p1, p9}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "profileStatus"

    .line 13
    invoke-interface {p0, p1, p10}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "profileAcceptAuto"

    .line 14
    invoke-interface {p0, p1, p11}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {p12}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result p1

    const-string p2, "profileBusiness"

    invoke-interface {p0, p2, p1}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "profileBirthday"

    .line 16
    invoke-interface {p0, p1, p13}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {p14}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result p1

    const-string p2, "profileIsCredUser"

    invoke-interface {p0, p2, p1}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final b(Ljava/lang/String;Le/a/b0/p/c;Landroid/widget/TextView;I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    .line 1
    invoke-static {p0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-nez v2, :cond_3

    .line 2
    iget-object v2, p1, Le/a/b0/p/c;->b:Ljava/lang/String;

    const-string v3, "$this$getHighlightText"

    .line 3
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "highlightText"

    invoke-static {p0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    .line 4
    invoke-static {v2, p0, v0, v1, v3}, Ls1/f0/v;->H(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v0

    const/4 v3, -0x1

    if-le v0, v3, :cond_2

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, v0

    .line 6
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 7
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 8
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 p3, 0x12

    .line 9
    invoke-virtual {v3, v2, v0, p0, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 10
    invoke-virtual {v3, v1, v0, p0, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_3

    .line 11
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 12
    :cond_3
    iget-object p0, p1, Le/a/b0/p/c;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method

.method public static synthetic b0(Le/a/b0/o/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/OnlineIds;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;I)V
    .locals 16

    move/from16 v0, p15

    and-int/lit16 v0, v0, 0x1000

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v15, p14

    .line 1
    invoke-static/range {v1 .. v15}, Le/a/l4/k;->a0(Le/a/b0/o/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/OnlineIds;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static final c(Le/a/o4/d;)Lcom/truecaller/push/PushIdDto;
    .locals 3

    .line 1
    new-instance v0, Lcom/truecaller/push/PushIdDto;

    .line 2
    iget-object v1, p0, Le/a/o4/d;->a:Ljava/lang/String;

    .line 3
    iget-object p0, p0, Le/a/o4/d;->b:Le/a/d4/e;

    .line 4
    sget-object v2, Le/a/d4/e$a;->c:Le/a/d4/e$a;

    invoke-static {p0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    sget-object v2, Le/a/d4/e$b;->c:Le/a/d4/e$b;

    invoke-static {p0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xd

    .line 6
    :goto_0
    invoke-direct {v0, v1, p0}, Lcom/truecaller/push/PushIdDto;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 7
    :cond_1
    new-instance p0, Ls1/i;

    invoke-direct {p0}, Ls1/i;-><init>()V

    throw p0
.end method

.method public static final c0(Le/a/b0/o/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "$this$persistProfileGeneralData"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firstName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastName"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileFirstName"

    .line 1
    invoke-interface {p0, v0, p1}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "profileLastName"

    .line 2
    invoke-interface {p0, p1, p2}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final d(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/truecaller/social_login/SocialAccountProfile;
    .locals 7

    .line 1
    new-instance v6, Lcom/truecaller/social_login/SocialAccountProfile;

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->k:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->l:Ljava/lang/String;

    .line 4
    iget-object v3, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->d:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->f:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    .line 7
    iget-object v5, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->c:Ljava/lang/String;

    move-object v0, v6

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/truecaller/social_login/SocialAccountProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public static d0(Landroid/content/Intent;Lcom/truecaller/referral/ReferralManager;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "LAUNCH_MODE"

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, -0x1

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "MODE_SHOW_REFERRAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "MODE_REFER_MORE_FRIENDS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "MODE_REFERRAL_ON_BOARDING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "MODE_REFERRAL_GRANTED_VIEW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move v1, v3

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 4
    :pswitch_0
    sget-object p0, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->PUSH_NOTIFICATION:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    invoke-interface {p1, p0}, Lcom/truecaller/referral/ReferralManager;->Xa(Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;)V

    goto :goto_1

    .line 5
    :pswitch_1
    invoke-interface {p1}, Lcom/truecaller/referral/ReferralManager;->j8()V

    goto :goto_1

    .line 6
    :pswitch_2
    invoke-interface {p1}, Lcom/truecaller/referral/ReferralManager;->j8()V

    goto :goto_1

    :pswitch_3
    const-string v0, "REFERRAL_GRANTED_MESSAGE"

    .line 7
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/String;

    .line 8
    invoke-static {p0, v0}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 9
    invoke-interface {p1, p0}, Lcom/truecaller/referral/ReferralManager;->Mf(Ljava/lang/String;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x34e69d8f -> :sswitch_3
        0x4a91dd16 -> :sswitch_2
        0x706e1026 -> :sswitch_1
        0x7770c103 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static e(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Le/a/m0/a1$m;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x4

    .line 3
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-string v4, "search_query = ? AND contact_source = ?"

    .line 4
    invoke-virtual {v0, v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 6
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {}, Le/a/m0/a1$m;->a()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "tc_id"

    .line 9
    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 10
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "contact_search_time"

    invoke-virtual {v2, p4, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    const-string p4, "search_query"

    .line 11
    invoke-virtual {p3, p4, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    const-string p4, "contact_default_number"

    .line 12
    invoke-virtual {p3, p4, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v2, "contact_source"

    invoke-virtual {p3, v2, p4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    .line 14
    invoke-virtual {p3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p3

    .line 15
    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 17
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v5

    .line 18
    invoke-static {}, Le/a/m0/a1$h;->a()Landroid/net/Uri;

    move-result-object p4

    invoke-static {p4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p4

    const-string v2, "data_raw_contact_id"

    .line 19
    invoke-virtual {p4, v2, p3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    .line 20
    invoke-virtual {p3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v0, "data_type"

    invoke-virtual {p3, v0, p4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    const-string p4, "data1"

    .line 22
    invoke-virtual {p3, p4, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p2

    const-string p3, "data9"

    .line 23
    invoke-virtual {p2, p3, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "data4"

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    .line 26
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static e0(Le/a/q4/n0;Le/a/w/c/a;Le/a/h/b/w0/d;Le/a/k3/j/b;Le/a/w/b/b;Le/a/b0/q/z;Le/a/h0/j;Le/a/h0/m;Le/a/w/b/d/a;)Le/a/q4/u;
    .locals 12

    .line 1
    new-instance v11, Le/a/q4/u;

    move-object v0, p0

    iget v2, v0, Le/a/q4/n0;->a:I

    const/16 v3, 0x1f4

    move-object v0, v11

    move-object v1, p2

    move-object v4, p1

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Le/a/q4/u;-><init>(Le/a/h/b/w0/d;IILe/a/w/c/a;Le/a/k3/j/b;Le/a/w/b/b;Le/a/b0/q/z;Le/a/h0/j;Le/a/h0/m;Le/a/w/b/d/a;)V

    return-object v11
.end method

.method public static f(Ljava/util/List;Ljava/util/List;Lcom/truecaller/data/dto/ContactDto$Contact;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/List<",
            "Lcom/truecaller/data/dto/ContactDto$Row;",
            ">;",
            "Lcom/truecaller/data/dto/ContactDto$Contact;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Le/a/m0/a1$m;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3
    iget-object v2, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->id:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v3, "tc_id"

    .line 4
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v2, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->name:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v3, "contact_name"

    .line 6
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v2, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->transliteratedName:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v3, "contact_transliterated_name"

    .line 8
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_2
    iget-object v2, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->handle:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v3, "contact_handle"

    .line 10
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_3
    iget-object v2, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->altName:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string v3, "contact_alt_name"

    .line 12
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_4
    iget-object v2, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->gender:Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string v3, "contact_gender"

    .line 14
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_5
    iget-object v2, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->about:Ljava/lang/String;

    if-eqz v2, :cond_6

    const-string v3, "contact_about"

    .line 16
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_6
    iget-object v2, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->image:Ljava/lang/String;

    if-eqz v2, :cond_7

    const-string v3, "contact_image_url"

    .line 18
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_7
    iget-object v2, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->jobTitle:Ljava/lang/String;

    if-eqz v2, :cond_8

    const-string v3, "contact_job_title"

    .line 20
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_8
    iget-object v2, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->companyName:Ljava/lang/String;

    if-eqz v2, :cond_9

    const-string v3, "contact_company"

    .line 22
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_9
    iget-object v2, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->access:Ljava/lang/String;

    if-eqz v2, :cond_a

    const-string v3, "contact_access"

    .line 24
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_a
    iget-object v2, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->imId:Ljava/lang/String;

    if-eqz v2, :cond_b

    const-string v3, "contact_im_id"

    .line 26
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_b
    iget-object v2, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->badges:Ljava/util/List;

    invoke-static {v2}, Le/a/m0/a1$k;->v(Ljava/util/Collection;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "contact_badges"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 28
    iget v2, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->source:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "contact_source"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 29
    iget v2, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->commonConnections:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "contact_common_connections"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 30
    iget-wide v2, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->searchTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "contact_search_time"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 31
    iget-wide v2, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->aggregatedRowId:J

    const-string v4, "aggregated_contact_id"

    invoke-static {v1, v4, v2, v3}, Le/a/l4/k;->h0(Landroid/content/ContentValues;Ljava/lang/String;J)V

    .line 32
    iget-wide v2, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->phonebookId:J

    const-string v4, "contact_phonebook_id"

    invoke-static {v1, v4, v2, v3}, Le/a/l4/k;->h0(Landroid/content/ContentValues;Ljava/lang/String;J)V

    .line 33
    iget-wide v2, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->phonebookHash:J

    const-string v4, "contact_phonebook_hash"

    invoke-static {v1, v4, v2, v3}, Le/a/l4/k;->h0(Landroid/content/ContentValues;Ljava/lang/String;J)V

    .line 34
    iget-object v2, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->searchQuery:Ljava/lang/String;

    if-eqz v2, :cond_c

    const-string v3, "search_query"

    .line 35
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_c
    iget-object v2, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->cacheTtl:Ljava/lang/Number;

    if-eqz v2, :cond_d

    .line 37
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    const-string v3, "cache_control"

    .line 38
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_d
    iget-object v2, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->spamCategoryIds:Ljava/lang/String;

    if-eqz v2, :cond_e

    const-string v3, "spam_categories"

    .line 40
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_e
    iget-object v2, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->phonebookLookupKey:Ljava/lang/String;

    if-eqz v2, :cond_f

    const-string v3, "contact_phonebook_lookup"

    .line 42
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_f
    iget-object v2, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->defaultNumber:Ljava/lang/String;

    if-eqz v2, :cond_10

    const-string v3, "contact_default_number"

    .line 44
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_10
    iget-object v2, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->spamScore:Ljava/lang/Number;

    if-eqz v2, :cond_11

    .line 46
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "contact_spam_score"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 47
    :cond_11
    iget-object v2, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->spamType:Ljava/lang/String;

    if-eqz v2, :cond_12

    const-string v3, "contact_spam_type"

    .line 48
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_12
    iget v2, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->source:I

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_13

    move v2, v4

    goto :goto_0

    :cond_13
    move v2, v3

    :goto_0
    new-array v5, v3, [Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->isTrue(Z[Ljava/lang/String;)V

    .line 50
    iget-wide v5, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->searchTime:J

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-eqz v2, :cond_14

    move v2, v4

    goto :goto_1

    :cond_14
    move v2, v3

    :goto_1
    new-array v5, v3, [Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->isTrue(Z[Ljava/lang/String;)V

    .line 51
    iget-object v2, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->id:Ljava/lang/String;

    if-eqz v2, :cond_15

    move v2, v4

    goto :goto_2

    :cond_15
    move v2, v3

    :goto_2
    new-array v5, v3, [Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->isTrue(Z[Ljava/lang/String;)V

    .line 52
    iget-object v2, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->phonebookLookupKey:Ljava/lang/String;

    if-nez v2, :cond_16

    move v2, v4

    goto :goto_3

    :cond_16
    move v2, v3

    :goto_3
    iget-wide v5, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->phonebookId:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_17

    move v5, v4

    goto :goto_4

    :cond_17
    move v5, v3

    :goto_4
    if-ne v2, v5, :cond_18

    move v2, v4

    goto :goto_5

    :cond_18
    move v2, v3

    :goto_5
    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->isTrue(Z[Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 55
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    .line 57
    iget-object v1, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->id:Ljava/lang/String;

    .line 58
    iget-object v7, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->phones:Ljava/util/List;

    new-instance v10, Le/a/w4/p;

    const/4 v2, 0x0

    invoke-direct {v10, v2}, Le/a/w4/p;-><init>(Le/a/w4/n;)V

    move-object v5, p0

    move-object v6, p1

    move v8, v0

    move-object v9, v1

    invoke-static/range {v5 .. v10}, Le/a/l4/k;->h(Ljava/util/List;Ljava/util/List;Ljava/lang/Iterable;ILjava/lang/String;Le/a/w4/o;)V

    .line 59
    iget-object v7, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->addresses:Ljava/util/List;

    new-instance v10, Le/a/w4/p;

    invoke-direct {v10, v2}, Le/a/w4/p;-><init>(Le/a/w4/n;)V

    invoke-static/range {v5 .. v10}, Le/a/l4/k;->h(Ljava/util/List;Ljava/util/List;Ljava/lang/Iterable;ILjava/lang/String;Le/a/w4/o;)V

    .line 60
    iget-object v7, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->internetAddresses:Ljava/util/List;

    new-instance v10, Le/a/w4/p;

    invoke-direct {v10, v2}, Le/a/w4/p;-><init>(Le/a/w4/n;)V

    invoke-static/range {v5 .. v10}, Le/a/l4/k;->h(Ljava/util/List;Ljava/util/List;Ljava/lang/Iterable;ILjava/lang/String;Le/a/w4/o;)V

    .line 61
    iget-object v7, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->sources:Ljava/util/List;

    new-instance v10, Le/a/w4/p;

    invoke-direct {v10, v2}, Le/a/w4/p;-><init>(Le/a/w4/n;)V

    invoke-static/range {v5 .. v10}, Le/a/l4/k;->h(Ljava/util/List;Ljava/util/List;Ljava/lang/Iterable;ILjava/lang/String;Le/a/w4/o;)V

    .line 62
    iget-object v7, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->tags:Ljava/util/List;

    new-instance v10, Le/a/w4/p;

    invoke-direct {v10, v2}, Le/a/w4/p;-><init>(Le/a/w4/n;)V

    invoke-static/range {v5 .. v10}, Le/a/l4/k;->h(Ljava/util/List;Ljava/util/List;Ljava/lang/Iterable;ILjava/lang/String;Le/a/w4/o;)V

    .line 63
    iget-object v7, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->business:Lcom/truecaller/data/dto/ContactDto$Contact$Business;

    new-instance v10, Le/a/w4/p;

    invoke-direct {v10, v2}, Le/a/w4/p;-><init>(Le/a/w4/n;)V

    invoke-static/range {v5 .. v10}, Le/a/l4/k;->g(Ljava/util/List;Ljava/util/List;Lcom/truecaller/data/dto/ContactDto$Row;ILjava/lang/String;Le/a/w4/o;)V

    .line 64
    iget-object v7, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->style:Lcom/truecaller/data/dto/ContactDto$Contact$Style;

    new-instance v10, Le/a/w4/p;

    invoke-direct {v10, v2}, Le/a/w4/p;-><init>(Le/a/w4/n;)V

    invoke-static/range {v5 .. v10}, Le/a/l4/k;->g(Ljava/util/List;Ljava/util/List;Lcom/truecaller/data/dto/ContactDto$Row;ILjava/lang/String;Le/a/w4/o;)V

    .line 65
    iget-object v7, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->nameFeedback:Lcom/truecaller/data/dto/ContactDto$Contact$NameFeedback;

    new-instance v10, Le/a/w4/p;

    invoke-direct {v10, v2}, Le/a/w4/p;-><init>(Le/a/w4/n;)V

    invoke-static/range {v5 .. v10}, Le/a/l4/k;->g(Ljava/util/List;Ljava/util/List;Lcom/truecaller/data/dto/ContactDto$Row;ILjava/lang/String;Le/a/w4/o;)V

    .line 66
    iget-object v7, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->spamData:Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;

    new-instance v10, Le/a/w4/p;

    invoke-direct {v10, v2}, Le/a/w4/p;-><init>(Le/a/w4/n;)V

    invoke-static/range {v5 .. v10}, Le/a/l4/k;->g(Ljava/util/List;Ljava/util/List;Lcom/truecaller/data/dto/ContactDto$Row;ILjava/lang/String;Le/a/w4/o;)V

    .line 67
    iget-object v7, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->searchWarnings:Ljava/util/List;

    new-instance v10, Le/a/w4/p;

    invoke-direct {v10, v2}, Le/a/w4/p;-><init>(Le/a/w4/n;)V

    invoke-static/range {v5 .. v10}, Le/a/l4/k;->h(Ljava/util/List;Ljava/util/List;Ljava/lang/Iterable;ILjava/lang/String;Le/a/w4/o;)V

    .line 68
    iget-object v7, p2, Lcom/truecaller/data/dto/ContactDto$Contact;->surveys:Ljava/util/List;

    new-instance v10, Le/a/w4/p;

    invoke-direct {v10, v2}, Le/a/w4/p;-><init>(Le/a/w4/n;)V

    invoke-static/range {v5 .. v10}, Le/a/l4/k;->h(Ljava/util/List;Ljava/util/List;Ljava/lang/Iterable;ILjava/lang/String;Le/a/w4/o;)V

    return-void
.end method

.method public static f0()Le/a/v4/v;
    .locals 1

    .line 1
    sget v0, Le/a/v4/s0/k/b;->a:I

    .line 2
    new-instance v0, Le/a/v4/v;

    invoke-direct {v0}, Le/a/v4/v;-><init>()V

    return-object v0
.end method

.method public static g(Ljava/util/List;Ljava/util/List;Lcom/truecaller/data/dto/ContactDto$Row;ILjava/lang/String;Le/a/w4/o;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/truecaller/data/dto/ContactDto$Row;",
            ">(",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/List<",
            "Lcom/truecaller/data/dto/ContactDto$Row;",
            ">;TT;I",
            "Ljava/lang/String;",
            "Le/a/w4/o<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move-object v2, p2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 2
    invoke-static/range {v0 .. v5}, Le/a/l4/k;->h(Ljava/util/List;Ljava/util/List;Ljava/lang/Iterable;ILjava/lang/String;Le/a/w4/o;)V

    return-void
.end method

.method public static g0()Le/a/a0/k;
    .locals 2

    .line 1
    sget v0, Le/a/a0/d;->a:I

    .line 2
    sget-object v0, Lcom/truecaller/common/network/util/KnownEndpoints;->FILTER:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v1, Le/a/a0/k;

    invoke-static {v0, v1}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a0/k;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public static h(Ljava/util/List;Ljava/util/List;Ljava/lang/Iterable;ILjava/lang/String;Le/a/w4/o;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/truecaller/data/dto/ContactDto$Row;",
            ">(",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/List<",
            "Lcom/truecaller/data/dto/ContactDto$Row;",
            ">;",
            "Ljava/lang/Iterable<",
            "TT;>;I",
            "Ljava/lang/String;",
            "Le/a/w4/o<",
            "TT;>;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/data/dto/ContactDto$Row;

    .line 2
    move-object/from16 v3, p5

    check-cast v3, Le/a/w4/p;

    .line 3
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    instance-of v3, v2, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    const-string v4, "data10"

    const-string v5, "data6"

    const-string v6, "data9"

    const-string v7, "data8"

    const-string v8, "data7"

    const-string v9, "data5"

    const-string v10, "data4"

    const-string v11, "data3"

    const-string v12, "data2"

    const-string v13, "data1"

    const-string v14, "data_type"

    if-eqz v3, :cond_b

    .line 5
    move-object v3, v2

    check-cast v3, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    .line 6
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    const/16 v16, 0x4

    move-object/from16 p2, v1

    .line 7
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8
    iget-object v1, v3, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->rawNumberFormat:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v15, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_1
    iget-object v1, v3, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->e164Format:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {v15, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_2
    iget-object v1, v3, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->nationalFormat:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {v15, v12, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_3
    iget-object v1, v3, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->dialingCode:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 15
    invoke-virtual {v15, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_4
    iget-object v1, v3, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->countryCode:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 17
    invoke-virtual {v15, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_5
    iget-object v1, v3, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->numberType:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 19
    invoke-virtual {v15, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_6
    iget-object v1, v3, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->carrier:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 21
    invoke-virtual {v15, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_7
    iget-object v1, v3, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->telType:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 23
    invoke-virtual {v15, v10, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_8
    iget-object v1, v3, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->telTypeLabel:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 25
    invoke-virtual {v15, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_9
    iget-object v1, v3, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->spamScore:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 27
    invoke-virtual {v15, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_a
    iget-object v1, v3, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->spamType:Ljava/lang/String;

    if-eqz v1, :cond_2a

    const-string v3, "data11"

    .line 29
    invoke-virtual {v15, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    move-object/from16 p2, v1

    .line 30
    instance-of v1, v2, Lcom/truecaller/data/dto/ContactDto$Contact$Address;

    if-eqz v1, :cond_12

    .line 31
    move-object v1, v2

    check-cast v1, Lcom/truecaller/data/dto/ContactDto$Contact$Address;

    .line 32
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x1

    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 34
    iget-object v3, v1, Lcom/truecaller/data/dto/ContactDto$Contact$Address;->type:Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 35
    invoke-virtual {v15, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_c
    iget-object v3, v1, Lcom/truecaller/data/dto/ContactDto$Contact$Address;->street:Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 37
    invoke-virtual {v15, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_d
    iget-object v3, v1, Lcom/truecaller/data/dto/ContactDto$Contact$Address;->zipCode:Ljava/lang/String;

    if-eqz v3, :cond_e

    .line 39
    invoke-virtual {v15, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_e
    iget-object v3, v1, Lcom/truecaller/data/dto/ContactDto$Contact$Address;->city:Ljava/lang/String;

    if-eqz v3, :cond_f

    .line 41
    invoke-virtual {v15, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_f
    iget-object v3, v1, Lcom/truecaller/data/dto/ContactDto$Contact$Address;->area:Ljava/lang/String;

    if-eqz v3, :cond_10

    .line 43
    invoke-virtual {v15, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_10
    iget-object v3, v1, Lcom/truecaller/data/dto/ContactDto$Contact$Address;->countryCode:Ljava/lang/String;

    if-eqz v3, :cond_11

    .line 45
    invoke-virtual {v15, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_11
    iget-object v1, v1, Lcom/truecaller/data/dto/ContactDto$Contact$Address;->timeZone:Ljava/lang/String;

    if-eqz v1, :cond_2a

    .line 47
    invoke-virtual {v15, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 48
    :cond_12
    instance-of v1, v2, Lcom/truecaller/data/dto/ContactDto$Contact$InternetAddress;

    if-eqz v1, :cond_15

    .line 49
    move-object v1, v2

    check-cast v1, Lcom/truecaller/data/dto/ContactDto$Contact$InternetAddress;

    .line 50
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x3

    .line 51
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 52
    iget-object v3, v1, Lcom/truecaller/data/dto/ContactDto$Contact$InternetAddress;->id:Ljava/lang/String;

    if-eqz v3, :cond_13

    .line 53
    invoke-virtual {v15, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_13
    iget-object v3, v1, Lcom/truecaller/data/dto/ContactDto$Contact$InternetAddress;->service:Ljava/lang/String;

    if-eqz v3, :cond_14

    .line 55
    invoke-virtual {v15, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_14
    iget-object v1, v1, Lcom/truecaller/data/dto/ContactDto$Contact$InternetAddress;->caption:Ljava/lang/String;

    if-eqz v1, :cond_2a

    .line 57
    invoke-virtual {v15, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 58
    :cond_15
    instance-of v1, v2, Lcom/truecaller/data/dto/ContactDto$Contact$Source;

    if-eqz v1, :cond_1a

    .line 59
    move-object v1, v2

    check-cast v1, Lcom/truecaller/data/dto/ContactDto$Contact$Source;

    .line 60
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x5

    .line 61
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 62
    iget-object v3, v1, Lcom/truecaller/data/dto/ContactDto$Contact$Source;->id:Ljava/lang/String;

    if-eqz v3, :cond_16

    .line 63
    invoke-virtual {v15, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_16
    iget-object v3, v1, Lcom/truecaller/data/dto/ContactDto$Contact$Source;->url:Ljava/lang/String;

    if-eqz v3, :cond_17

    .line 65
    invoke-virtual {v15, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_17
    iget-object v3, v1, Lcom/truecaller/data/dto/ContactDto$Contact$Source;->logo:Ljava/lang/String;

    if-eqz v3, :cond_18

    .line 67
    invoke-virtual {v15, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_18
    iget-object v3, v1, Lcom/truecaller/data/dto/ContactDto$Contact$Source;->caption:Ljava/lang/String;

    if-eqz v3, :cond_19

    .line 69
    invoke-virtual {v15, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_19
    iget-object v3, v1, Lcom/truecaller/data/dto/ContactDto$Contact$Source;->extra:Ljava/util/Map;

    if-eqz v3, :cond_2a

    .line 71
    new-instance v3, Le/m/e/k;

    invoke-direct {v3}, Le/m/e/k;-><init>()V

    .line 72
    iget-object v1, v1, Lcom/truecaller/data/dto/ContactDto$Contact$Source;->extra:Ljava/util/Map;

    invoke-virtual {v3, v1}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 73
    invoke-virtual {v15, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 74
    :cond_1a
    instance-of v1, v2, Lcom/truecaller/data/dto/ContactDto$Contact$Tag;

    const/4 v15, 0x0

    if-eqz v1, :cond_1c

    .line 75
    move-object v1, v2

    check-cast v1, Lcom/truecaller/data/dto/ContactDto$Contact$Tag;

    .line 76
    iget-object v3, v1, Lcom/truecaller/data/dto/ContactDto$Contact$Tag;->tag:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto/16 :goto_1

    .line 77
    :cond_1b
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x6

    .line 78
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    iget-object v1, v1, Lcom/truecaller/data/dto/ContactDto$Contact$Tag;->tag:Ljava/lang/String;

    invoke-virtual {v15, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 80
    :cond_1c
    instance-of v1, v2, Lcom/truecaller/data/dto/ContactDto$Contact$Business;

    if-eqz v1, :cond_1d

    .line 81
    move-object v1, v2

    check-cast v1, Lcom/truecaller/data/dto/ContactDto$Contact$Business;

    .line 82
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    const/16 v3, 0x9

    .line 83
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    iget-object v3, v1, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->branch:Ljava/lang/String;

    invoke-virtual {v15, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v3, v1, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->department:Ljava/lang/String;

    invoke-virtual {v15, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v3, v1, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->companySize:Ljava/lang/String;

    invoke-virtual {v15, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v3, v1, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->openingHours:Ljava/lang/String;

    invoke-virtual {v15, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v3, v1, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->landline:Ljava/lang/String;

    invoke-virtual {v15, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v3, v1, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->score:Ljava/lang/String;

    invoke-virtual {v15, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v3, v1, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->swishNumber:Ljava/lang/String;

    invoke-virtual {v15, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v3, v1, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->mediaCallerIDs:Ljava/lang/String;

    invoke-virtual {v15, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v3, v1, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->appStores:Ljava/lang/String;

    invoke-virtual {v15, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v1, v1, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->brandedMedia:Ljava/lang/String;

    invoke-virtual {v15, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 94
    :cond_1d
    instance-of v1, v2, Lcom/truecaller/data/dto/ContactDto$Contact$Style;

    if-eqz v1, :cond_1e

    .line 95
    move-object v1, v2

    check-cast v1, Lcom/truecaller/data/dto/ContactDto$Contact$Style;

    .line 96
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    const/16 v3, 0xa

    .line 97
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    iget-object v3, v1, Lcom/truecaller/data/dto/ContactDto$Contact$Style;->backgroundColor:Ljava/lang/String;

    invoke-virtual {v15, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v1, v1, Lcom/truecaller/data/dto/ContactDto$Contact$Style;->imageUrls:Ljava/lang/String;

    invoke-virtual {v15, v12, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 100
    :cond_1e
    instance-of v1, v2, Lcom/truecaller/data/dto/ContactDto$Contact$NameFeedback;

    if-eqz v1, :cond_20

    .line 101
    move-object v1, v2

    check-cast v1, Lcom/truecaller/data/dto/ContactDto$Contact$NameFeedback;

    .line 102
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    const/16 v3, 0xb

    .line 103
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    iget-object v3, v1, Lcom/truecaller/data/dto/ContactDto$Contact$NameFeedback;->nameSource:Ljava/lang/Number;

    if-eqz v3, :cond_1f

    .line 105
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    :cond_1f
    iget-object v1, v1, Lcom/truecaller/data/dto/ContactDto$Contact$NameFeedback;->nameElectionAlgo:Ljava/lang/String;

    invoke-virtual {v15, v12, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 107
    :cond_20
    instance-of v1, v2, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;

    if-eqz v1, :cond_24

    .line 108
    move-object v1, v2

    check-cast v1, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;

    .line 109
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    const/16 v3, 0xc

    .line 110
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    iget-object v3, v1, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;->numReports60days:Ljava/lang/Number;

    if-eqz v3, :cond_21

    .line 112
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 113
    :cond_21
    iget-object v3, v1, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;->numCalls60days:Ljava/lang/Number;

    if-eqz v3, :cond_22

    .line 114
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    :cond_22
    iget-object v3, v1, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;->numCalls60DaysPointerPosition:Ljava/lang/Number;

    if-eqz v3, :cond_23

    .line 116
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    :cond_23
    iget-object v3, v1, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;->numCallsHourly:Ljava/lang/String;

    invoke-virtual {v15, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v1, v1, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;->spamVersion:Ljava/lang/Integer;

    if-eqz v1, :cond_2a

    .line 119
    invoke-virtual {v15, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 120
    :cond_24
    instance-of v1, v2, Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning;

    if-eqz v1, :cond_27

    .line 121
    move-object v1, v2

    check-cast v1, Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning;

    .line 122
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    const/16 v3, 0xd

    .line 123
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    iget-object v3, v1, Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning;->id:Ljava/lang/String;

    if-eqz v3, :cond_25

    .line 125
    invoke-virtual {v15, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_25
    sget-object v3, Le/a/k3/l/j;->b:Le/a/k3/l/j;

    iget-object v4, v1, Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning;->features:Ljava/util/List;

    invoke-virtual {v3, v4}, Le/a/k3/l/j;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_26

    .line 127
    invoke-virtual {v15, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_26
    iget-object v1, v1, Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning;->ruleName:Ljava/lang/String;

    if-eqz v1, :cond_2a

    .line 129
    invoke-virtual {v15, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 130
    :cond_27
    instance-of v1, v2, Lcom/truecaller/data/dto/ContactDto$Contact$Survey;

    if-eqz v1, :cond_29

    .line 131
    move-object v1, v2

    check-cast v1, Lcom/truecaller/data/dto/ContactDto$Contact$Survey;

    .line 132
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    const/16 v3, 0xe

    .line 133
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    iget-object v3, v1, Lcom/truecaller/data/dto/ContactDto$Contact$Survey;->id:Ljava/lang/String;

    if-eqz v3, :cond_28

    .line 135
    invoke-virtual {v15, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_28
    iget-object v3, v1, Lcom/truecaller/data/dto/ContactDto$Contact$Survey;->frequency:Ljava/lang/Long;

    invoke-virtual {v15, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 137
    iget-object v1, v1, Lcom/truecaller/data/dto/ContactDto$Contact$Survey;->passthroughData:Ljava/lang/String;

    if-eqz v1, :cond_2a

    .line 138
    invoke-virtual {v15, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_29
    const/4 v1, 0x0

    new-array v3, v1, [Ljava/lang/String;

    .line 139
    invoke-static {v1, v3}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    :cond_2a
    :goto_1
    if-nez v15, :cond_2b

    move-object/from16 v3, p0

    move/from16 v5, p3

    move-object/from16 v4, p4

    goto :goto_2

    .line 140
    :cond_2b
    invoke-static {}, Le/a/m0/a1$h;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 141
    invoke-virtual {v1, v15}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v3, "tc_id"

    move-object/from16 v4, p4

    .line 142
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v3, "data_raw_contact_id"

    move/from16 v5, p3

    .line 143
    invoke-virtual {v1, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 144
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    move-object/from16 v3, p0

    .line 145
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_2c

    .line 146
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    :goto_2
    move-object/from16 v1, p2

    goto/16 :goto_0

    :cond_2d
    return-void
.end method

.method public static h0(Landroid/content/ContentValues;Ljava/lang/String;J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    return-void
.end method

.method public static i(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/List<",
            "Lcom/truecaller/data/dto/ContactDto$Row;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "com.truecaller"

    :try_start_1
    invoke-virtual {p0, v0, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p0

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    array-length v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 4
    aget-object v1, p0, v0

    iget-object v1, v1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/data/dto/ContactDto$Row;

    if-eqz v1, :cond_0

    .line 6
    aget-object v2, p0, v0

    iget-object v2, v2, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/truecaller/data/dto/ContactDto$Row;->rowId:J
    :try_end_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 7
    :goto_1
    invoke-static {p0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static i0(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 3
    :try_start_0
    invoke-static {v2, v3, p2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-static {}, Le/a/m0/a1$m;->a()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "contact_phonebook_id=? AND contact_phonebook_lookup=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    .line 5
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    aput-object p2, v6, v0

    .line 6
    invoke-virtual {p0, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_0

    move p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    move p0, v1

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "Failed to delete contact"

    .line 7
    invoke-static {p0, p1}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    if-eqz p0, :cond_1

    goto :goto_2

    :cond_1
    move v0, v1

    :goto_2
    return v0
.end method

.method public static final j(Landroid/view/Window;Z)V
    .locals 4

    const-string v0, "$this$applySystemUiFlagLightStatusBar"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "decorView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Le/a/i5/a;->g:Le/a/i5/a;

    invoke-static {}, Le/a/i5/a;->a()Le/a/i5/d;

    move-result-object v2

    .line 2
    instance-of v3, v2, Le/a/i5/d$a;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    instance-of v2, v2, Le/a/i5/d$c;

    if-eqz v2, :cond_2

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    or-int/lit16 p0, p0, 0x2000

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    and-int/lit16 p0, p0, -0x2001

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    .line 5
    :goto_1
    invoke-virtual {v0, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static final j0(Le/a/b0/p/d;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/b0/p/d;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Le/a/b0/p/c;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$searchTags"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0, p1}, Le/a/b0/p/d;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b0/p/c;

    .line 4
    iget-wide v2, v1, Le/a/b0/p/c;->c:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p0, v2, v3}, Le/a/b0/p/d;->h(J)Le/a/b0/p/c;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8
    :goto_1
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b0/p/c;

    .line 13
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {p0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_5
    return-object p0
.end method

.method public static final k(Landroid/view/Window;)V
    .locals 2

    const-string v0, "$this$applyThemeXToStatusBar"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x4000000

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v0, -0x80000000

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 3
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v1, Le/a/i5/a;->g:Le/a/i5/a;

    invoke-static {}, Le/a/i5/a;->a()Le/a/i5/d;

    move-result-object v1

    instance-of v1, v1, Le/a/i5/d$b;

    if-eqz v1, :cond_0

    sget v1, Lcom/truecaller/themes/R$attr;->tcx_backgroundPrimary:I

    goto :goto_0

    .line 5
    :cond_0
    sget v1, Lcom/truecaller/themes/R$attr;->tcx_brandBackgroundBlue:I

    .line 6
    :goto_0
    invoke-static {v0, v1}, Le/a/l4/k;->M(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    const/4 v0, 0x1

    .line 7
    invoke-static {p0, v0}, Le/a/l4/k;->j(Landroid/view/Window;Z)V

    return-void
.end method

.method public static synthetic k0(Le/a/w4/s/r0$a;Ljava/lang/CharSequence;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;ZLjava/util/List;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    .line 1
    sget-object v0, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->DEFAULT:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    and-int/lit8 v1, p8, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v1, p3

    :goto_1
    and-int/lit8 v3, p8, 0x8

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, p4

    :goto_2
    and-int/lit8 v3, p8, 0x10

    if-eqz v3, :cond_3

    move-object v3, v0

    goto :goto_3

    :cond_3
    move-object v3, p5

    :goto_3
    and-int/lit8 v4, p8, 0x20

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    goto :goto_4

    :cond_4
    move v4, p6

    :goto_4
    and-int/lit8 v5, p8, 0x40

    const/4 v5, 0x0

    move-object p2, p0

    move-object p3, p1

    move-object p4, v0

    move-object p5, v1

    move-object p6, v2

    move-object p7, v3

    move p8, v4

    move-object p9, v5

    .line 2
    invoke-interface/range {p2 .. p9}, Le/a/w4/s/r0$a;->f1(Ljava/lang/CharSequence;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;ZLjava/util/List;)V

    return-void
.end method

.method public static final l(Landroid/content/res/Resources$Theme;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Le/a/l4/k;->n(Landroid/content/res/Resources$Theme;ZI)V

    return-void
.end method

.method public static final l0(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Le/a/l4/k;->n0(Landroid/app/Activity;ZI)V

    return-void
.end method

.method public static final m(Landroid/content/res/Resources$Theme;Z)V
    .locals 1

    const-string v0, "$this$applyTruecallerStyle"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Le/a/i5/a;->g:Le/a/i5/a;

    invoke-static {}, Le/a/i5/a;->a()Le/a/i5/d;

    move-result-object p1

    .line 2
    iget p1, p1, Le/a/i5/d;->d:I

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Le/a/i5/a;->g:Le/a/i5/a;

    invoke-static {}, Le/a/i5/a;->a()Le/a/i5/d;

    move-result-object p1

    .line 5
    iget p1, p1, Le/a/i5/d;->c:I

    .line 6
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :goto_0
    return-void
.end method

.method public static final m0(Landroid/app/Activity;Z)V
    .locals 1

    const-string v0, "$this$setTruecallerTheme"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Le/a/i5/a;->g:Le/a/i5/a;

    invoke-static {}, Le/a/i5/a;->a()Le/a/i5/d;

    move-result-object p1

    .line 2
    iget p1, p1, Le/a/i5/d;->d:I

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Le/a/i5/a;->g:Le/a/i5/a;

    invoke-static {}, Le/a/i5/a;->a()Le/a/i5/d;

    move-result-object p1

    .line 5
    iget p1, p1, Le/a/i5/d;->c:I

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    :goto_0
    return-void
.end method

.method public static synthetic n(Landroid/content/res/Resources$Theme;ZI)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Le/a/l4/k;->m(Landroid/content/res/Resources$Theme;Z)V

    return-void
.end method

.method public static synthetic n0(Landroid/app/Activity;ZI)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Le/a/l4/k;->m0(Landroid/app/Activity;Z)V

    return-void
.end method

.method public static o(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 1

    const-string v0, "fromActivity"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final o0(Lcom/truecaller/api/services/survey/Choice;)Lcom/truecaller/surveys/data/entities/Choice;
    .locals 4

    .line 1
    new-instance v0, Lcom/truecaller/surveys/data/entities/Choice;

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/api/services/survey/Choice;->getId()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/api/services/survey/Choice;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/api/services/survey/Choice;->getFollowupQuestionId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 5
    invoke-direct {v0, v1, v2, p0}, Lcom/truecaller/surveys/data/entities/Choice;-><init>(ILjava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static final p(Landroid/content/Context;Lcom/truecaller/data/entity/Contact;IILe/a/u3/g;)Landroid/content/Intent;
    .locals 4

    const-string v0, "context"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "featuresRegistry"

    invoke-static {p4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p4, Le/a/u3/g;->d:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, p4, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p4

    .line 2
    invoke-interface {p4}, Le/a/u3/b;->isEnabled()Z

    move-result p4

    const-string v1, "search_type"

    const-string v2, "tag_context"

    if-eqz p4, :cond_0

    .line 3
    new-instance p4, Landroid/content/Intent;

    const-class v3, Lcom/truecaller/tagger/tagPicker/TaggerActivity;

    invoke-direct {p4, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    invoke-virtual {p4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p4, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    invoke-virtual {p4, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p0, 0x20000

    .line 7
    invoke-virtual {p4, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 8
    :cond_0
    sget p4, Lcom/truecaller/tagger/TagPickActivity;->q:I

    .line 9
    new-instance p4, Landroid/content/Intent;

    const-class v3, Lcom/truecaller/tagger/TagPickActivity;

    invoke-direct {p4, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    invoke-virtual {p4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 11
    invoke-virtual {p4, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 12
    invoke-virtual {p4, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    return-object p4
.end method

.method public static final p0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;
    .locals 2

    const-string v0, "$this$toDarkThemeInflater"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/truecaller/themes/R$style;->ThemeX_Dark:I

    invoke-direct {p1, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const-string p1, "cloneInContext(ContextTh\u2026xt, R.style.ThemeX_Dark))"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/truecaller/themes/R$style;->Theme_Truecaller_Dark:I

    invoke-direct {p1, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const-string p1, "cloneInContext(ContextTh\u2026e.Theme_Truecaller_Dark))"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final q(Landroid/content/Context;)Le/a/j0/m;
    .locals 8

    const-string v0, "$this$buildStatsComponent"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.truecaller.common.app.ApplicationBase"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Le/a/b0/g/a;

    invoke-virtual {v0}, Le/a/b0/g/a;->N()Le/a/b0/c;

    move-result-object v4

    const-string v0, "(this.applicationContext\u2026licationBase).commonGraph"

    invoke-static {v4, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Le/a/b0/g/a;

    invoke-virtual {v0}, Le/a/b0/g/a;->K()Le/a/q2/e;

    move-result-object v6

    const-string v0, "(this.applicationContext\u2026nBase).analyticsComponent"

    invoke-static {v6, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Le/a/b0/g/a;

    invoke-virtual {p0}, Le/a/b0/g/a;->V()Le/a/p5/o0;

    move-result-object v5

    .line 4
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v3, Le/a/j0/o;

    invoke-direct {v3}, Le/a/j0/o;-><init>()V

    .line 6
    const-class p0, Le/a/b0/c;

    invoke-static {v4, p0}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 7
    const-class p0, Le/a/p5/o0;

    invoke-static {v5, p0}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 8
    const-class p0, Le/a/q2/e;

    invoke-static {v6, p0}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 9
    new-instance p0, Le/a/j0/h;

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Le/a/j0/h;-><init>(Le/a/j0/o;Le/a/b0/c;Le/a/p5/o0;Le/a/q2/e;Le/a/j0/h$a;)V

    const-string v0, "DaggerStatsComponent.bui\u2026mponent)\n        .build()"

    .line 10
    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final q0(Lcom/truecaller/spamcategories/SpamCategory;)Lcom/truecaller/data/entity/SpamCategoryModel;
    .locals 4

    const-string v0, "$this$toModel"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/truecaller/data/entity/SpamCategoryModel;

    invoke-virtual {p0}, Lcom/truecaller/spamcategories/SpamCategory;->getId()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/truecaller/spamcategories/SpamCategory;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/truecaller/spamcategories/SpamCategory;->getIcon()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/truecaller/data/entity/SpamCategoryModel;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final r(Landroid/content/Context;Ljava/lang/Long;ILe/a/u3/g;)Landroid/content/Intent;
    .locals 5

    const-string v0, "context"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p3, Le/a/u3/g;->d:Le/a/u3/g$a;

    sget-object v1, Le/a/u3/g;->p6:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p3, v1}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p3

    .line 2
    invoke-interface {p3}, Le/a/u3/b;->isEnabled()Z

    move-result p3

    const-string v0, "tag_context"

    const-string v1, "initial_tag"

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz p3, :cond_1

    .line 3
    new-instance p3, Landroid/content/Intent;

    const-class v4, Lcom/truecaller/tagger/tagPicker/TaggerActivity;

    invoke-direct {p3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_0
    invoke-virtual {p3, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p0, 0x20000

    .line 6
    invoke-virtual {p3, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 7
    :cond_1
    sget p3, Lcom/truecaller/tagger/TagPickActivity;->q:I

    .line 8
    new-instance p3, Landroid/content/Intent;

    const-class v4, Lcom/truecaller/tagger/TagPickActivity;

    invoke-direct {p3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_2
    invoke-virtual {p3, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 10
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    return-object p3
.end method

.method public static final r0(Lcom/truecaller/surveys/data/local/SurveyEntity;Ljava/lang/String;)Lcom/truecaller/surveys/data/entities/Survey;
    .locals 9

    const-string v0, "$this$toSurvey"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/truecaller/surveys/data/entities/Survey;

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/surveys/data/local/SurveyEntity;->getId()Ljava/lang/String;

    move-result-object v2

    .line 3
    sget-object v1, Lq3/b/l/a;->b:Lq3/b/l/a$a;

    sget-object v3, Lcom/truecaller/surveys/data/entities/SurveyFlow;->Companion:Lcom/truecaller/surveys/data/entities/SurveyFlow$a;

    invoke-virtual {v3}, Lcom/truecaller/surveys/data/entities/SurveyFlow$a;->a()Lq3/b/b;

    move-result-object v3

    invoke-virtual {p0}, Lcom/truecaller/surveys/data/local/SurveyEntity;->getFlow()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lq3/b/l/a;->a(Lq3/b/a;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/surveys/data/entities/SurveyFlow;

    .line 4
    sget-object v4, Lcom/truecaller/surveys/data/entities/Question;->Companion:Lcom/truecaller/surveys/data/entities/Question$a;

    invoke-virtual {v4}, Lcom/truecaller/surveys/data/entities/Question$a;->a()Lq3/b/b;

    move-result-object v4

    invoke-static {v4}, Ls1/a/a/a/v0/f/d;->m(Lq3/b/b;)Lq3/b/b;

    move-result-object v4

    invoke-virtual {p0}, Lcom/truecaller/surveys/data/local/SurveyEntity;->getQuestions()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lq3/b/l/a;->a(Lq3/b/a;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 5
    sget-object v5, Ls1/z/c/k;->a:Ls1/z/c/k;

    invoke-static {v5}, Ls1/a/a/a/v0/f/d;->l3(Ls1/z/c/k;)Lq3/b/b;

    sget-object v5, Lq3/b/k/g;->b:Lq3/b/k/g;

    invoke-static {v5}, Ls1/a/a/a/v0/f/d;->m(Lq3/b/b;)Lq3/b/b;

    move-result-object v5

    invoke-virtual {p0}, Lcom/truecaller/surveys/data/local/SurveyEntity;->getBottomSheetQuestionsIds()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lq3/b/l/a;->a(Lq3/b/a;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/util/List;

    .line 6
    invoke-virtual {p0}, Lcom/truecaller/surveys/data/local/SurveyEntity;->getLastTimeSeen()J

    move-result-wide v6

    move-object v1, v0

    move-object v8, p1

    .line 7
    invoke-direct/range {v1 .. v8}, Lcom/truecaller/surveys/data/entities/Survey;-><init>(Ljava/lang/String;Lcom/truecaller/surveys/data/entities/SurveyFlow;Ljava/util/List;Ljava/util/List;JLjava/lang/String;)V

    return-object v0
.end method

.method public static synthetic s(Le/a/a0/p;ILcom/truecaller/data/entity/SpamCategoryModel;IZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 1
    sget p3, Lcom/truecaller/spamcategories/R$string;->BlockCallerIDPeopleReportedThis:I

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x1

    .line 2
    :cond_1
    invoke-interface {p0, p1, p2, p3, p4}, Le/a/a0/p;->a(ILcom/truecaller/data/entity/SpamCategoryModel;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final s0(Lcom/truecaller/api/services/survey/Survey;)Lcom/truecaller/surveys/data/local/SurveyEntity;
    .locals 18

    const-string v0, "$this$toSurveyEntity"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/truecaller/surveys/data/local/SurveyEntity;

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/api/services/survey/Survey;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v3, Lq3/b/l/a;->b:Lq3/b/l/a$a;

    sget-object v4, Lcom/truecaller/surveys/data/entities/SurveyFlow;->Companion:Lcom/truecaller/surveys/data/entities/SurveyFlow$a;

    invoke-virtual {v4}, Lcom/truecaller/surveys/data/entities/SurveyFlow$a;->a()Lq3/b/b;

    move-result-object v4

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/api/services/survey/Survey;->getFlowCase()Lcom/truecaller/api/services/survey/Survey$FlowCase;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v5, :cond_3

    if-eq v5, v9, :cond_2

    if-eq v5, v8, :cond_1

    if-eq v5, v7, :cond_0

    if-eq v5, v6, :cond_c

    .line 5
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    .line 6
    :cond_0
    new-instance v5, Lcom/truecaller/surveys/data/entities/SurveyFlow$AcsBizmon;

    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/api/services/survey/Survey;->getAcsBizmon()Lcom/truecaller/api/services/survey/AcsBizmon;

    move-result-object v6

    const-string v10, "acsBizmon"

    invoke-static {v6, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/truecaller/api/services/survey/AcsBizmon;->getShowIfPickedUp()Z

    move-result v6

    invoke-direct {v5, v6}, Lcom/truecaller/surveys/data/entities/SurveyFlow$AcsBizmon;-><init>(Z)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object v5, Lcom/truecaller/surveys/data/entities/SurveyFlow$ReportProfile;->INSTANCE:Lcom/truecaller/surveys/data/entities/SurveyFlow$ReportProfile;

    goto :goto_0

    .line 8
    :cond_2
    new-instance v5, Lcom/truecaller/surveys/data/entities/SurveyFlow$NameSuggestion;

    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/api/services/survey/Survey;->getAcsNameSuggestion()Lcom/truecaller/api/services/survey/AcsNameSuggestion;

    move-result-object v6

    const-string v10, "acsNameSuggestion"

    invoke-static {v6, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/truecaller/api/services/survey/AcsNameSuggestion;->getShowIfPickedUp()Z

    move-result v6

    invoke-direct {v5, v6}, Lcom/truecaller/surveys/data/entities/SurveyFlow$NameSuggestion;-><init>(Z)V

    goto :goto_0

    .line 9
    :cond_3
    new-instance v5, Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs;

    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/api/services/survey/Survey;->getAcsGeneric()Lcom/truecaller/api/services/survey/AcsGeneric;

    move-result-object v6

    const-string v10, "acsGeneric"

    invoke-static {v6, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/truecaller/api/services/survey/AcsGeneric;->getShowIfPickedUp()Z

    move-result v6

    invoke-direct {v5, v6}, Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs;-><init>(Z)V

    .line 10
    :goto_0
    invoke-virtual {v3, v4, v5}, Lq3/b/l/a;->b(Lq3/b/g;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 11
    sget-object v5, Lcom/truecaller/surveys/data/entities/Question;->Companion:Lcom/truecaller/surveys/data/entities/Question$a;

    invoke-virtual {v5}, Lcom/truecaller/surveys/data/entities/Question$a;->a()Lq3/b/b;

    move-result-object v5

    invoke-static {v5}, Ls1/a/a/a/v0/f/d;->m(Lq3/b/b;)Lq3/b/b;

    move-result-object v5

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/api/services/survey/Survey;->getQuestionsList()Ljava/util/List;

    move-result-object v6

    const-string v10, "questionsList"

    invoke-static {v6, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v6, v11}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 15
    check-cast v11, Lcom/truecaller/api/services/survey/Question;

    const-string v12, "it"

    .line 16
    invoke-static {v11, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v11}, Lcom/truecaller/api/services/survey/Question;->getQuestionTypeCase()Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;

    move-result-object v13

    if-eqz v13, :cond_a

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    const-string v14, "message"

    const-string v15, "headerMessage"

    if-eqz v13, :cond_9

    if-eq v13, v9, :cond_7

    if-eq v13, v8, :cond_5

    if-eq v13, v7, :cond_a

    const/4 v7, 0x4

    if-eq v13, v7, :cond_4

    const/4 v0, 0x5

    if-eq v13, v0, :cond_a

    .line 18
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    .line 19
    :cond_4
    new-instance v7, Lcom/truecaller/surveys/data/entities/Question$FreeText;

    .line 20
    invoke-virtual {v11}, Lcom/truecaller/api/services/survey/Question;->getId()I

    move-result v12

    .line 21
    invoke-virtual {v11}, Lcom/truecaller/api/services/survey/Question;->getHeaderMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v11}, Lcom/truecaller/api/services/survey/Question;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v11}, Lcom/truecaller/api/services/survey/Question;->getFreeText()Lcom/truecaller/api/services/survey/FreeText;

    move-result-object v9

    const-string v14, "freeText"

    invoke-static {v9, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/truecaller/api/services/survey/FreeText;->getHintLabel()Ljava/lang/String;

    move-result-object v15

    const-string v9, "freeText.hintLabel"

    invoke-static {v15, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v11}, Lcom/truecaller/api/services/survey/Question;->getFreeText()Lcom/truecaller/api/services/survey/FreeText;

    move-result-object v9

    invoke-static {v9, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/truecaller/api/services/survey/FreeText;->getButtonLabel()Ljava/lang/String;

    move-result-object v9

    const-string v1, "freeText.buttonLabel"

    invoke-static {v9, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v11}, Lcom/truecaller/api/services/survey/Question;->getFreeText()Lcom/truecaller/api/services/survey/FreeText;

    move-result-object v1

    invoke-static {v1, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/api/services/survey/FreeText;->getFollowupQuestionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object v11, v7

    move-object v14, v8

    move-object/from16 v16, v9

    .line 26
    invoke-direct/range {v11 .. v17}, Lcom/truecaller/surveys/data/entities/Question$FreeText;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_5

    .line 27
    :cond_5
    invoke-virtual {v11}, Lcom/truecaller/api/services/survey/Question;->getId()I

    move-result v1

    invoke-virtual {v11}, Lcom/truecaller/api/services/survey/Question;->getHeaderMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/truecaller/api/services/survey/Question;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/truecaller/api/services/survey/Question;->getSingleAnswer()Lcom/truecaller/api/services/survey/SingleAnswer;

    move-result-object v9

    const-string v11, "singleAnswer"

    invoke-static {v9, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/truecaller/api/services/survey/SingleAnswer;->getChoicesList()Ljava/util/List;

    move-result-object v9

    const-string v11, "singleAnswer.choicesList"

    invoke-static {v9, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v11, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v9, v13}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 30
    check-cast v13, Lcom/truecaller/api/services/survey/Choice;

    .line 31
    invoke-static {v13, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13}, Le/a/l4/k;->o0(Lcom/truecaller/api/services/survey/Choice;)Lcom/truecaller/surveys/data/entities/Choice;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance v9, Lcom/truecaller/surveys/data/entities/Question$SingleChoice;

    invoke-direct {v9, v1, v7, v8, v11}, Lcom/truecaller/surveys/data/entities/Question$SingleChoice;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_4

    .line 32
    :cond_7
    invoke-virtual {v11}, Lcom/truecaller/api/services/survey/Question;->getId()I

    move-result v1

    invoke-virtual {v11}, Lcom/truecaller/api/services/survey/Question;->getHeaderMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/truecaller/api/services/survey/Question;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/truecaller/api/services/survey/Question;->getRating()Lcom/truecaller/api/services/survey/Rating;

    move-result-object v9

    const-string v11, "rating"

    invoke-static {v9, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/truecaller/api/services/survey/Rating;->getChoicesList()Ljava/util/List;

    move-result-object v9

    const-string v11, "rating.choicesList"

    invoke-static {v9, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v11, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v9, v13}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 35
    check-cast v13, Lcom/truecaller/api/services/survey/Choice;

    .line 36
    invoke-static {v13, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13}, Le/a/l4/k;->o0(Lcom/truecaller/api/services/survey/Choice;)Lcom/truecaller/surveys/data/entities/Choice;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    new-instance v9, Lcom/truecaller/surveys/data/entities/Question$Rating;

    invoke-direct {v9, v1, v7, v8, v11}, Lcom/truecaller/surveys/data/entities/Question$Rating;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :goto_4
    move-object v7, v9

    goto :goto_5

    .line 37
    :cond_9
    new-instance v7, Lcom/truecaller/surveys/data/entities/Question$Binary;

    invoke-virtual {v11}, Lcom/truecaller/api/services/survey/Question;->getId()I

    move-result v13

    invoke-virtual {v11}, Lcom/truecaller/api/services/survey/Question;->getHeaderMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/truecaller/api/services/survey/Question;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/truecaller/api/services/survey/Question;->getBool()Lcom/truecaller/api/services/survey/Bool;

    move-result-object v8

    const-string v9, "bool"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/truecaller/api/services/survey/Bool;->getTrue()Lcom/truecaller/api/services/survey/Choice;

    move-result-object v8

    const-string v12, "bool.`true`"

    invoke-static {v8, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Le/a/l4/k;->o0(Lcom/truecaller/api/services/survey/Choice;)Lcom/truecaller/surveys/data/entities/Choice;

    move-result-object v16

    invoke-virtual {v11}, Lcom/truecaller/api/services/survey/Question;->getBool()Lcom/truecaller/api/services/survey/Bool;

    move-result-object v8

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/truecaller/api/services/survey/Bool;->getFalse()Lcom/truecaller/api/services/survey/Choice;

    move-result-object v8

    const-string v9, "bool.`false`"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Le/a/l4/k;->o0(Lcom/truecaller/api/services/survey/Choice;)Lcom/truecaller/surveys/data/entities/Choice;

    move-result-object v17

    move-object v12, v7

    move-object v14, v1

    invoke-direct/range {v12 .. v17}, Lcom/truecaller/surveys/data/entities/Question$Binary;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/truecaller/surveys/data/entities/Choice;Lcom/truecaller/surveys/data/entities/Choice;)V

    .line 38
    :goto_5
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_1

    .line 39
    :cond_a
    new-instance v0, Lq3/b/f;

    const-string v1, "Unexpected question "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/truecaller/api/services/survey/Question;->getQuestionTypeCase()Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lq3/b/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_b
    invoke-virtual {v3, v5, v10}, Lq3/b/l/a;->b(Lq3/b/g;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 41
    sget-object v1, Lq3/b/l/a;->b:Lq3/b/l/a$a;

    sget-object v3, Ls1/z/c/k;->a:Ls1/z/c/k;

    invoke-static {v3}, Ls1/a/a/a/v0/f/d;->l3(Ls1/z/c/k;)Lq3/b/b;

    sget-object v3, Lq3/b/k/g;->b:Lq3/b/k/g;

    invoke-static {v3}, Ls1/a/a/a/v0/f/d;->m(Lq3/b/b;)Lq3/b/b;

    move-result-object v3

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/api/services/survey/Survey;->getBottomSheetQuestionsIdsList()Ljava/util/List;

    move-result-object v6

    const-string v7, "bottomSheetQuestionsIdsList"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1, v3, v6}, Lq3/b/l/a;->b(Lq3/b/g;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    const/16 v9, 0x10

    const/4 v10, 0x0

    move-object v1, v0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-wide v6, v7

    move v8, v9

    move-object v9, v10

    .line 44
    invoke-direct/range {v1 .. v9}, Lcom/truecaller/surveys/data/local/SurveyEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILs1/z/c/f;)V

    return-object v0

    .line 45
    :cond_c
    new-instance v0, Lq3/b/f;

    const-string v1, "Unexpected flow "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/api/services/survey/Survey;->getFlowCase()Lcom/truecaller/api/services/survey/Survey$FlowCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lq3/b/f;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final t(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 1

    const-string v0, "$this$canStartActivity"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final t0(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Le/a/l4/k;->u0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method

.method public static final u(Le/a/b0/o/a;)V
    .locals 1

    const-string v0, "$this$clearBusinessProfileSpecificData"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileTwitter"

    .line 1
    invoke-interface {p0, v0}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    const-string v0, "profileBackgroundColor"

    .line 2
    invoke-interface {p0, v0}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    const-string v0, "profileSize"

    .line 3
    invoke-interface {p0, v0}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    const-string v0, "profileOpeningHours"

    .line 4
    invoke-interface {p0, v0}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    const-string v0, "profileImageUrls"

    .line 5
    invoke-interface {p0, v0}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    const-string v0, "profileLatitude"

    .line 6
    invoke-interface {p0, v0}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    const-string v0, "profileLongitude"

    .line 7
    invoke-interface {p0, v0}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public static final u0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;
    .locals 2

    const-string v0, "$this$toThemeInflater"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const-string p1, "cloneInContext(context.g\u2026tThemeWrapper(useThemeX))"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final v()Lcom/truecaller/social_media/domain/data/TCNewsLinksConfig;
    .locals 12

    .line 1
    new-instance v0, Lcom/truecaller/social_media/domain/data/TCNewsLinksConfig;

    new-instance v11, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;

    const-string v2, "default"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7e

    const/4 v10, 0x0

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILs1/z/c/f;)V

    invoke-static {v11}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/truecaller/social_media/domain/data/TCNewsLinksConfig;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static final v0(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "$this$toTitleCase"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "Locale.ROOT"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {p0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {v0, v1, p0, v0, v2}, Le/d/c/a/a;->p(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static final w(Ljava/lang/String;Ljava/lang/String;)Le/a/f0/i/a;
    .locals 3

    .line 1
    new-instance v0, Le/a/f0/i/a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, p1, v2}, Le/a/f0/i/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static w0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "TruecallerPublicKeys.txt"

    .line 1
    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 2
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "\u00a7"

    const/4 v4, -0x1

    .line 4
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 5
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 6
    aget-object v4, v3, v0

    const/4 v5, 0x1

    .line 7
    aget-object v3, v3, v5

    .line 8
    invoke-static {p1, p2, p3, v3, v4}, Le/a/l4/k;->x0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    if-eqz v1, :cond_1

    .line 9
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return v5

    :cond_2
    if-nez v2, :cond_0

    if-eqz v1, :cond_3

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 10
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_3

    goto :goto_0

    :catch_2
    :cond_3
    :goto_1
    return v0

    :goto_2
    if-eqz v1, :cond_4

    .line 11
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 12
    :catch_3
    :cond_4
    throw p0
.end method

.method public static x(Le/a/x4/j/d/b;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/x4/j/d/b;",
            "Ljava/util/List<",
            "Lcom/truecaller/searchwarnings/data/SearchWarningDTO;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/x4/j/d/a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/x4/j/d/a;

    iget v1, v0, Le/a/x4/j/d/a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/x4/j/d/a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/x4/j/d/a;

    invoke-direct {v0, p0, p2}, Le/a/x4/j/d/a;-><init>(Le/a/x4/j/d/b;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/x4/j/d/a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/x4/j/d/a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    iget-object p0, v0, Le/a/x4/j/d/a;->h:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Ljava/util/List;

    iget-object p0, v0, Le/a/x4/j/d/a;->g:Ljava/lang/Object;

    check-cast p0, Le/a/x4/j/d/b;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Le/a/x4/j/d/a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/x4/j/d/a;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/x4/j/d/a;->e:I

    move-object p2, p0

    check-cast p2, Le/a/x4/j/d/c;

    .line 5
    iget-object v2, p2, Le/a/x4/j/d/c;->a:Ln3/c0/q;

    new-instance v5, Le/a/x4/j/d/d;

    invoke-direct {v5, p2}, Le/a/x4/j/d/d;-><init>(Le/a/x4/j/d/c;)V

    invoke-static {v2, v4, v5, v0}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    const/4 p2, 0x0

    .line 6
    iput-object p2, v0, Le/a/x4/j/d/a;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/x4/j/d/a;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/x4/j/d/a;->e:I

    invoke-interface {p0, p1, v0}, Le/a/x4/j/d/b;->b(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    .line 7
    :cond_5
    :goto_2
    sget-object p0, Ls1/s;->a:Ls1/s;

    return-object p0
.end method

.method public static x0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {p3, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p3

    .line 2
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 3
    :try_start_0
    invoke-static {p4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p3

    .line 4
    invoke-virtual {p3, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p3
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3

    .line 5
    :try_start_1
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 7
    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    .line 8
    invoke-virtual {p2, p3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 9
    invoke-virtual {p2, p0}, Ljava/security/Signature;->update([B)V

    .line 10
    invoke-virtual {p2, p1}, Ljava/security/Signature;->verify([B)Z

    move-result v0
    :try_end_1
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    .line 11
    :goto_0
    invoke-static {p0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    :catch_3
    :goto_1
    return v0
.end method

.method public static y(Le/a/j/c/d/b;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/j/c/d/b;",
            "Ljava/util/List<",
            "Lcom/truecaller/surveys/data/local/SurveyEntity;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/j/c/d/a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/j/c/d/a;

    iget v1, v0, Le/a/j/c/d/a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/j/c/d/a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/j/c/d/a;

    invoke-direct {v0, p0, p2}, Le/a/j/c/d/a;-><init>(Le/a/j/c/d/b;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/j/c/d/a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/j/c/d/a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    iget-object p0, v0, Le/a/j/c/d/a;->h:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Ljava/util/List;

    iget-object p0, v0, Le/a/j/c/d/a;->g:Ljava/lang/Object;

    check-cast p0, Le/a/j/c/d/b;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Le/a/j/c/d/a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/j/c/d/a;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/j/c/d/a;->e:I

    move-object p2, p0

    check-cast p2, Le/a/j/c/d/c;

    .line 5
    iget-object v2, p2, Le/a/j/c/d/c;->a:Ln3/c0/q;

    new-instance v5, Le/a/j/c/d/d;

    invoke-direct {v5, p2}, Le/a/j/c/d/d;-><init>(Le/a/j/c/d/c;)V

    invoke-static {v2, v4, v5, v0}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    const/4 p2, 0x0

    .line 6
    iput-object p2, v0, Le/a/j/c/d/a;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/j/c/d/a;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/j/c/d/a;->e:I

    invoke-interface {p0, p1, v0}, Le/a/j/c/d/b;->b(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    .line 7
    :cond_5
    :goto_2
    sget-object p0, Ls1/s;->a:Ls1/s;

    return-object p0
.end method

.method public static z(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Le/a/w1;

    invoke-interface {v0}, Le/a/w1;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    .line 2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Le/a/w4/g;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
