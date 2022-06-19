.class public Le/a/v4/h;
.super Le/a/v4/g;
.source "SourceFile"


# instance fields
.field public b:Ljava/util/Locale;

.field public c:Le/a/t/b/c/c;

.field public d:Z

.field public e:Le/a/v4/u0/g;

.field public final f:Ls1/w/f;

.field public final g:Le/a/r2/j;

.field public final h:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/v4/y;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Landroid/telephony/TelephonyManager;

.field public final j:Landroid/content/pm/PackageManager;

.field public final k:Landroid/app/NotificationManager;

.field public final l:Le/a/v4/l;

.field public final m:Le/a/v4/b0;

.field public final n:Le/a/v4/v;

.field public final o:Le/a/b0/o/a;

.field public final p:Le/a/b0/e/r/a;

.field public final q:Le/a/v4/a0;

.field public final r:Le/a/v4/a;

.field public final s:Le/a/p5/h0;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/r2/j;Le/a/r2/f;Landroid/telephony/TelephonyManager;Landroid/content/pm/PackageManager;Landroid/app/NotificationManager;Le/a/v4/l;Le/a/v4/b0;Le/a/v4/v;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/v4/a0;Le/a/v4/a;Le/a/p5/h0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Le/a/r2/j;",
            "Le/a/r2/f<",
            "Le/a/v4/y;",
            ">;",
            "Landroid/telephony/TelephonyManager;",
            "Landroid/content/pm/PackageManager;",
            "Landroid/app/NotificationManager;",
            "Le/a/v4/l;",
            "Le/a/v4/b0;",
            "Le/a/v4/v;",
            "Le/a/b0/o/a;",
            "Le/a/b0/e/r/a;",
            "Le/a/v4/a0;",
            "Le/a/v4/a;",
            "Le/a/p5/h0;",
            ")V"
        }
    .end annotation

    const-string v0, "mUiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mUiThread"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mSdkHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mPackageManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mNotificationManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mEventsTrackHolder"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mSdkRepository"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mSdkAccountManager"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mCoreSettings"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mSdkLocaleManager"

    invoke-static {p12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mActivityHelper"

    invoke-static {p13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "themedResourceProvider"

    invoke-static {p14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/v4/g;-><init>()V

    iput-object p1, p0, Le/a/v4/h;->f:Ls1/w/f;

    iput-object p2, p0, Le/a/v4/h;->g:Le/a/r2/j;

    iput-object p3, p0, Le/a/v4/h;->h:Le/a/r2/f;

    iput-object p4, p0, Le/a/v4/h;->i:Landroid/telephony/TelephonyManager;

    iput-object p5, p0, Le/a/v4/h;->j:Landroid/content/pm/PackageManager;

    iput-object p6, p0, Le/a/v4/h;->k:Landroid/app/NotificationManager;

    iput-object p7, p0, Le/a/v4/h;->l:Le/a/v4/l;

    iput-object p8, p0, Le/a/v4/h;->m:Le/a/v4/b0;

    iput-object p9, p0, Le/a/v4/h;->n:Le/a/v4/v;

    iput-object p10, p0, Le/a/v4/h;->o:Le/a/b0/o/a;

    iput-object p11, p0, Le/a/v4/h;->p:Le/a/b0/e/r/a;

    iput-object p12, p0, Le/a/v4/h;->q:Le/a/v4/a0;

    iput-object p13, p0, Le/a/v4/h;->r:Le/a/v4/a;

    iput-object p14, p0, Le/a/v4/h;->s:Le/a/p5/h0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/v4/w0/b;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/v4/e;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/v4/h;->e:Le/a/v4/u0/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/v4/u0/g;->t(Le/a/v4/w0/b;)V

    return-void

    :cond_0
    const-string p1, "sdkPartner"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/v4/e;->a:Ljava/lang/Object;

    .line 2
    iget-object v1, p0, Le/a/v4/h;->e:Le/a/v4/u0/g;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Le/a/v4/u0/g;->c()V

    return-void

    :cond_0
    const-string v1, "sdkPartner"

    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Lcom/truecaller/android/sdk/TrueProfile;)V
    .locals 4

    const-string v0, "trueProfile"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v4/h;->o:Le/a/b0/o/a;

    const-string v1, "profileVerificationDate"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/truecaller/android/sdk/TrueProfile;->verificationTimestamp:J

    .line 2
    iget-object v0, p0, Le/a/v4/h;->o:Le/a/b0/o/a;

    const-string v1, "profileVerificationMode"

    invoke-interface {v0, v1}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/truecaller/android/sdk/TrueProfile;->verificationMode:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Le/a/v4/h;->r()Z

    move-result v0

    iput-boolean v0, p1, Lcom/truecaller/android/sdk/TrueProfile;->isSimChanged:Z

    .line 4
    iget-object v0, p0, Le/a/v4/h;->b:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 5
    iput-object v0, p1, Lcom/truecaller/android/sdk/TrueProfile;->userLocale:Ljava/util/Locale;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/h;->e:Le/a/v4/u0/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/v4/u0/g;->onBackPressed()V

    return-void

    :cond_0
    const-string v0, "sdkPartner"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/h;->e:Le/a/v4/u0/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/v4/u0/g;->u()V

    return-void

    :cond_0
    const-string v0, "sdkPartner"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public f(Landroid/os/Bundle;)Z
    .locals 14

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Le/a/v4/h;->r:Le/a/v4/a;

    .line 2
    iget-object p1, p1, Le/a/v4/a;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_6

    .line 3
    iget-object v1, p0, Le/a/v4/h;->f:Ls1/w/f;

    .line 4
    iget-object v2, p0, Le/a/v4/h;->k:Landroid/app/NotificationManager;

    .line 5
    iget-object v5, p0, Le/a/v4/h;->m:Le/a/v4/b0;

    .line 6
    iget-object v6, p0, Le/a/v4/h;->h:Le/a/r2/f;

    .line 7
    iget-object v7, p0, Le/a/v4/h;->g:Le/a/r2/j;

    .line 8
    iget-object v4, p0, Le/a/v4/h;->o:Le/a/b0/o/a;

    .line 9
    iget-object v8, p0, Le/a/v4/h;->p:Le/a/b0/e/r/a;

    .line 10
    iget-object v9, p0, Le/a/v4/h;->j:Landroid/content/pm/PackageManager;

    .line 11
    iget-object v10, p0, Le/a/v4/h;->l:Le/a/v4/l;

    .line 12
    iget-object v11, p0, Le/a/v4/h;->n:Le/a/v4/v;

    .line 13
    iget-object v0, p0, Le/a/v4/h;->r:Le/a/v4/a;

    .line 14
    iget-object v3, v0, Le/a/v4/a;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Le/a/v4/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "uiContext"

    .line 15
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "extras"

    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "notificationManager"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "sdkRepository"

    invoke-static {v5, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "sdkHelper"

    invoke-static {v6, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "uiThread"

    invoke-static {v7, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "coreSettings"

    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "accountSettings"

    invoke-static {v8, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "packageManager"

    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "eventsTrackerHolder"

    invoke-static {v10, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "sdkAccountManager"

    invoke-static {v11, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "PARTNERINFO_TRUESDK_VERSION"

    .line 16
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 17
    new-instance v12, Le/a/v4/u0/e;

    move-object v0, v12

    move-object v2, p1

    move-object v3, v4

    move-object v4, v8

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    invoke-direct/range {v0 .. v9}, Le/a/v4/u0/e;-><init>(Ls1/w/f;Landroid/os/Bundle;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/r2/f;Le/a/r2/j;Landroid/content/pm/PackageManager;Le/a/v4/l;Le/a/v4/v;)V

    goto/16 :goto_1

    :cond_2
    const-string v1, "a"

    .line 18
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 19
    new-instance v12, Le/a/v4/u0/i;

    const/4 v9, 0x0

    const/16 v13, 0x80

    move-object v0, v12

    move-object v1, p1

    move-object v3, v5

    move-object v5, v8

    move-object v6, v10

    move-object v7, v11

    move-object v8, v9

    move v9, v13

    invoke-direct/range {v0 .. v9}, Le/a/v4/u0/i;-><init>(Landroid/os/Bundle;Landroid/app/NotificationManager;Le/a/v4/b0;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/v4/l;Le/a/v4/v;Landroid/os/Handler;I)V

    goto :goto_1

    :cond_3
    const-string v1, "qr_scan_code"

    .line 20
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v12, Le/a/v4/u0/f;

    const/4 v2, 0x0

    const/4 v9, 0x2

    move-object v0, v12

    move-object v1, p1

    move-object v3, v4

    move-object v4, v8

    move-object v6, v10

    move-object v7, v11

    move v8, v9

    invoke-direct/range {v0 .. v8}, Le/a/v4/u0/f;-><init>(Landroid/os/Bundle;Le/a/t/b/c/c;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/v4/b0;Le/a/v4/l;Le/a/v4/v;I)V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    .line 21
    new-instance v12, Le/a/v4/u0/d;

    move-object v0, v12

    move-object v1, p1

    move-object v2, v4

    move-object v3, v8

    move-object v4, v10

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Le/a/v4/u0/d;-><init>(Landroid/os/Bundle;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/v4/l;Le/a/v4/v;)V

    goto :goto_1

    .line 22
    :cond_5
    new-instance v12, Le/a/v4/u0/b;

    move-object v0, v12

    move-object v1, p1

    move-object v2, v4

    move-object v3, v8

    move-object v4, v5

    move-object v5, v10

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Le/a/v4/u0/b;-><init>(Landroid/os/Bundle;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/v4/b0;Le/a/v4/l;Le/a/v4/v;)V

    .line 23
    :goto_1
    iput-object v12, p0, Le/a/v4/h;->e:Le/a/v4/u0/g;

    .line 24
    invoke-interface {v12}, Le/a/v4/u0/g;->m()Le/a/t/b/c/c;

    move-result-object p1

    iput-object p1, p0, Le/a/v4/h;->c:Le/a/t/b/c/c;

    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v4/e;->a:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v1, p0, Le/a/v4/h;->d:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Le/a/v4/h;->d:Z

    .line 3
    check-cast v0, Le/a/v4/w0/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Le/a/v4/w0/b;->M5(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/v4/h;->e:Le/a/v4/u0/g;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Le/a/v4/h;->d:Z

    invoke-interface {v0, v1}, Le/a/v4/u0/g;->q(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "sdkPartner"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public h()V
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/v4/e;->a:Ljava/lang/Object;

    .line 2
    check-cast v0, Le/a/v4/w0/b;

    if-eqz v0, :cond_d

    .line 3
    iget-object v1, p0, Le/a/v4/h;->e:Le/a/v4/u0/g;

    const-string v2, "sdkPartner"

    const/4 v3, 0x0

    if-eqz v1, :cond_c

    invoke-interface {v1}, Le/a/v4/u0/k/a$c;->o()I

    move-result v1

    .line 4
    iget-object v4, p0, Le/a/v4/e;->a:Ljava/lang/Object;

    .line 5
    instance-of v5, v4, Le/a/v4/w0/d;

    if-eqz v5, :cond_0

    const-string v5, "null cannot be cast to non-null type com.truecaller.sdk.views.PopupConfirmActivityView"

    .line 6
    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Le/a/v4/w0/d;

    invoke-interface {v4, v1}, Le/a/v4/w0/d;->r(I)V

    goto :goto_0

    .line 7
    :cond_0
    instance-of v5, v4, Le/a/v4/w0/c;

    if-eqz v5, :cond_1

    const-string v5, "null cannot be cast to non-null type com.truecaller.sdk.views.FullScreenConfirmView"

    .line 8
    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Le/a/v4/w0/c;

    invoke-interface {v4, v1}, Le/a/v4/w0/c;->r(I)V

    .line 9
    :cond_1
    :goto_0
    sget-object v1, Ls1/s;->a:Ls1/s;

    iget-object v4, p0, Le/a/v4/h;->q:Le/a/v4/a0;

    invoke-virtual {v4}, Le/a/v4/a0;->a()Ljava/util/Locale;

    move-result-object v4

    iput-object v4, p0, Le/a/v4/h;->b:Ljava/util/Locale;

    .line 10
    iget-object v4, p0, Le/a/v4/h;->e:Le/a/v4/u0/g;

    if-eqz v4, :cond_b

    invoke-interface {v4}, Le/a/v4/u0/k/a$c;->l()Ljava/util/Locale;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    .line 11
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "it.language"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    if-eqz v6, :cond_3

    .line 12
    iget-object v6, p0, Le/a/v4/h;->q:Le/a/v4/a0;

    invoke-virtual {v6, v4}, Le/a/v4/a0;->b(Ljava/util/Locale;)V

    goto :goto_2

    .line 13
    :cond_3
    iget-object v4, p0, Le/a/v4/h;->b:Ljava/util/Locale;

    if-eqz v4, :cond_4

    iget-object v6, p0, Le/a/v4/h;->q:Le/a/v4/a0;

    invoke-virtual {v6, v4}, Le/a/v4/a0;->b(Ljava/util/Locale;)V

    goto :goto_2

    :cond_4
    move-object v1, v3

    :goto_2
    if-eqz v1, :cond_5

    goto :goto_3

    .line 14
    :cond_5
    iget-object v1, p0, Le/a/v4/h;->b:Ljava/util/Locale;

    if-eqz v1, :cond_6

    iget-object v4, p0, Le/a/v4/h;->q:Le/a/v4/a0;

    invoke-virtual {v4, v1}, Le/a/v4/a0;->b(Ljava/util/Locale;)V

    .line 15
    :cond_6
    :goto_3
    invoke-interface {v0}, Le/a/v4/w0/b;->g0()V

    .line 16
    iget-object v1, p0, Le/a/v4/e;->a:Ljava/lang/Object;

    .line 17
    instance-of v1, v1, Le/a/v4/w0/a;

    if-eqz v1, :cond_7

    .line 18
    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Le/a/v4/h;->s:Le/a/p5/h0;

    sget v6, Lcom/truecaller/sdk/R$string;->SdkVerifiedByNew:I

    new-array v7, v5, [Ljava/lang/Object;

    invoke-interface {v4, v6, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 19
    :cond_7
    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Le/a/v4/h;->s:Le/a/p5/h0;

    sget v6, Lcom/truecaller/sdk/R$string;->SdkVerifiedBy:I

    new-array v7, v5, [Ljava/lang/Object;

    invoke-interface {v4, v6, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 20
    :goto_4
    iget-object v4, p0, Le/a/v4/h;->s:Le/a/p5/h0;

    sget v6, Lcom/truecaller/sdk/R$drawable;->ic_sdk_tc_logo:I

    invoke-interface {v4, v6}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string v6, "themedResourceProvider.g\u2026.ic_sdk_tc_logo).mutate()"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v4, v5, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 22
    iget-object v6, p0, Le/a/v4/e;->a:Ljava/lang/Object;

    .line 23
    instance-of v6, v6, Le/a/v4/w0/a;

    if-eqz v6, :cond_8

    .line 24
    iget-object v6, p0, Le/a/v4/h;->s:Le/a/p5/h0;

    sget v7, Lcom/truecaller/sdk/R$color;->blue_grey:I

    invoke-interface {v6, v7}, Le/a/p5/c0;->a(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_5

    .line 25
    :cond_8
    iget-object v6, p0, Le/a/v4/h;->s:Le/a/p5/h0;

    sget v7, Lcom/truecaller/sdk/R$attr;->tcx_brandBackgroundBlue:I

    invoke-interface {v6, v7}, Le/a/p5/h0;->l(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 26
    :goto_5
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "brandingTextBuilder.toString()"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x6

    const-string v8, "**"

    invoke-static {v6, v8, v5, v5, v7}, Ls1/f0/v;->H(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v5

    const/16 v6, 0x12

    const/4 v7, -0x1

    if-ne v5, v7, :cond_9

    const-string v5, " "

    .line 27
    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    .line 28
    new-instance v8, Landroid/text/style/ImageSpan;

    invoke-direct {v8, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 29
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    add-int/2addr v4, v7

    .line 30
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    .line 31
    invoke-virtual {v5, v8, v4, v7, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_6

    .line 32
    :cond_9
    new-instance v7, Landroid/text/style/ImageSpan;

    invoke-direct {v7, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v4, v5, 0x2

    .line 33
    invoke-virtual {v1, v7, v5, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 34
    :goto_6
    invoke-interface {v0, v1}, Le/a/v4/w0/b;->B(Landroid/text/SpannableStringBuilder;)V

    .line 35
    iget-object v0, p0, Le/a/v4/h;->e:Le/a/v4/u0/g;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Le/a/v4/u0/g;->h()V

    return-void

    :cond_a
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 36
    :cond_b
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 37
    :cond_c
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    :cond_d
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/h;->e:Le/a/v4/u0/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/v4/u0/g;->a()V

    return-void

    :cond_0
    const-string v0, "sdkPartner"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public j(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "outState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v4/h;->e:Le/a/v4/u0/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/v4/u0/g;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void

    :cond_0
    const-string p1, "sdkPartner"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v4/h;->b:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/v4/h;->q:Le/a/v4/a0;

    invoke-virtual {v1, v0}, Le/a/v4/a0;->b(Ljava/util/Locale;)V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/h;->e:Le/a/v4/u0/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/v4/u0/g;->e()V

    return-void

    :cond_0
    const-string v0, "sdkPartner"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public m()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/v4/e;->a:Ljava/lang/Object;

    .line 2
    check-cast v1, Le/a/v4/w0/b;

    if-eqz v1, :cond_2c

    .line 3
    iget-object v8, v0, Le/a/v4/h;->c:Le/a/t/b/c/c;

    if-eqz v8, :cond_2c

    .line 4
    iget-object v2, v0, Le/a/v4/h;->e:Le/a/v4/u0/g;

    const-string v9, "sdkPartner"

    if-eqz v2, :cond_2b

    invoke-interface {v2}, Le/a/v4/u0/g;->g()Lcom/truecaller/android/sdk/TrueProfile;

    move-result-object v10

    .line 5
    iget-object v2, v0, Le/a/v4/h;->o:Le/a/b0/o/a;

    const-wide/16 v3, 0x0

    const-string v5, "profileVerificationDate"

    invoke-interface {v2, v5, v3, v4}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/truecaller/android/sdk/TrueProfile;->verificationTimestamp:J

    .line 6
    iget-object v2, v0, Le/a/v4/h;->o:Le/a/b0/o/a;

    const-string v3, "profileVerificationMode"

    invoke-interface {v2, v3}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/truecaller/android/sdk/TrueProfile;->verificationMode:Ljava/lang/String;

    .line 7
    invoke-virtual/range {p0 .. p0}, Le/a/v4/h;->r()Z

    move-result v2

    iput-boolean v2, v10, Lcom/truecaller/android/sdk/TrueProfile;->isSimChanged:Z

    .line 8
    iget-object v2, v0, Le/a/v4/h;->b:Ljava/util/Locale;

    if-eqz v2, :cond_0

    .line 9
    iput-object v2, v10, Lcom/truecaller/android/sdk/TrueProfile;->userLocale:Ljava/util/Locale;

    .line 10
    :cond_0
    invoke-virtual {v0, v10}, Le/a/v4/h;->n(Lcom/truecaller/android/sdk/TrueProfile;)Ljava/lang/String;

    move-result-object v5

    .line 11
    iget-object v2, v0, Le/a/v4/h;->e:Le/a/v4/u0/g;

    if-eqz v2, :cond_2a

    invoke-interface {v2}, Le/a/v4/u0/k/a$c;->z()Ljava/lang/String;

    move-result-object v11

    .line 12
    instance-of v2, v1, Le/a/v4/w0/a;

    const-string v12, "trueProfile.phoneNumber"

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v2, :cond_a

    .line 13
    invoke-virtual {v0, v10}, Le/a/v4/h;->q(Lcom/truecaller/android/sdk/TrueProfile;)Ljava/lang/String;

    move-result-object v15

    .line 14
    invoke-virtual {v0, v11}, Le/a/v4/h;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, v15

    move-object v4, v11

    .line 15
    invoke-interface/range {v2 .. v7}, Le/a/v4/w0/b;->g8(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 16
    move-object v2, v1

    check-cast v2, Le/a/v4/w0/a;

    const/16 v3, 0x800

    .line 17
    invoke-virtual {v8, v3}, Le/a/t/b/c/c;->b(I)Z

    move-result v3

    .line 18
    invoke-interface {v2, v3}, Le/a/v4/w0/a;->a4(Z)V

    .line 19
    iget-object v3, v8, Le/a/t/b/c/c;->c:Lcom/truecaller/android/sdk/clients/CustomDataBundle;

    .line 20
    invoke-interface {v2, v3, v15}, Le/a/v4/w0/a;->T(Lcom/truecaller/android/sdk/clients/CustomDataBundle;Ljava/lang/String;)V

    .line 21
    iget-object v3, v8, Le/a/t/b/c/c;->c:Lcom/truecaller/android/sdk/clients/CustomDataBundle;

    .line 22
    iget-object v4, v10, Lcom/truecaller/android/sdk/TrueProfile;->gender:Ljava/lang/String;

    invoke-static {v4}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "java.lang.String.format(format, *args)"

    if-nez v4, :cond_1

    iget-object v4, v10, Lcom/truecaller/android/sdk/TrueProfile;->gender:Ljava/lang/String;

    const-string v6, "N"

    invoke-static {v4, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v14

    if-nez v4, :cond_2

    .line 23
    :cond_1
    iget-object v4, v10, Lcom/truecaller/android/sdk/TrueProfile;->email:Ljava/lang/String;

    invoke-static {v4}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 24
    :cond_2
    iget-object v4, v0, Le/a/v4/h;->s:Le/a/p5/h0;

    sget v6, Lcom/truecaller/sdk/R$string;->SdkProfileShareTerms:I

    new-array v7, v14, [Ljava/lang/Object;

    aput-object v11, v7, v13

    invoke-interface {v4, v6, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "themedResourceProvider.g\u2026eShareTerms, partnerName)"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v6, v13, [Ljava/lang/Object;

    invoke-static {v6, v13, v4, v5}, Le/d/c/a/a;->v([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 25
    :cond_3
    iget-object v4, v0, Le/a/v4/h;->s:Le/a/p5/h0;

    sget v6, Lcom/truecaller/sdk/R$string;->SdkProfileShareTermsNameAndNumber:I

    new-array v7, v14, [Ljava/lang/Object;

    aput-object v11, v7, v13

    invoke-interface {v4, v6, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "themedResourceProvider.g\u2026meAndNumber, partnerName)"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v6, v13, [Ljava/lang/Object;

    invoke-static {v6, v13, v4, v5}, Le/d/c/a/a;->v([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    if-eqz v3, :cond_6

    .line 26
    iget-object v6, v3, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->c:Ljava/lang/String;

    .line 27
    invoke-static {v6}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "StringUtils.combine(\n   \u2026rName))\n                )"

    const-string v15, ""

    if-nez v6, :cond_4

    .line 28
    iget-object v6, v3, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->d:Ljava/lang/String;

    .line 29
    invoke-static {v6}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    aput-object v4, v3, v13

    .line 30
    iget-object v4, v0, Le/a/v4/h;->s:Le/a/p5/h0;

    sget v6, Lcom/truecaller/sdk/R$string;->SdkProfileShareTermsSuffixPpTos:I

    move-object/from16 v16, v9

    new-array v9, v14, [Ljava/lang/Object;

    aput-object v11, v9, v13

    invoke-interface {v4, v6, v9}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "themedResourceProvider.g\u2026SuffixPpTos, partnerName)"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v6, v13, [Ljava/lang/Object;

    invoke-static {v6, v13, v4, v5}, Le/d/c/a/a;->v([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v14

    .line 31
    invoke-static {v15, v3}, Le/a/p5/g0;->D(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object/from16 v16, v9

    .line 32
    iget-object v6, v3, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->c:Ljava/lang/String;

    .line 33
    invoke-static {v6}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    aput-object v4, v3, v13

    .line 34
    iget-object v4, v0, Le/a/v4/h;->s:Le/a/p5/h0;

    sget v6, Lcom/truecaller/sdk/R$string;->SdkProfileShareTermsSuffixPp:I

    new-array v9, v14, [Ljava/lang/Object;

    aput-object v11, v9, v13

    invoke-interface {v4, v6, v9}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "themedResourceProvider.g\u2026rmsSuffixPp, partnerName)"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v6, v13, [Ljava/lang/Object;

    invoke-static {v6, v13, v4, v5}, Le/d/c/a/a;->v([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v14

    .line 35
    invoke-static {v15, v3}, Le/a/p5/g0;->D(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    move-object v4, v3

    goto :goto_2

    .line 36
    :cond_5
    iget-object v3, v3, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->d:Ljava/lang/String;

    .line 37
    invoke-static {v3}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    aput-object v4, v3, v13

    .line 38
    iget-object v4, v0, Le/a/v4/h;->s:Le/a/p5/h0;

    sget v6, Lcom/truecaller/sdk/R$string;->SdkProfileShareTermsSuffixTos:I

    new-array v9, v14, [Ljava/lang/Object;

    aput-object v11, v9, v13

    invoke-interface {v4, v6, v9}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "themedResourceProvider.g\u2026msSuffixTos, partnerName)"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v6, v13, [Ljava/lang/Object;

    invoke-static {v6, v13, v4, v5}, Le/d/c/a/a;->v([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v14

    .line 39
    invoke-static {v15, v3}, Le/a/p5/g0;->D(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object/from16 v16, v9

    .line 40
    :cond_7
    :goto_2
    iget-object v3, v8, Le/a/t/b/c/c;->c:Lcom/truecaller/android/sdk/clients/CustomDataBundle;

    if-eqz v3, :cond_8

    .line 41
    iget-object v3, v3, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->c:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 42
    invoke-static {v3}, Le/a/l4/k;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    .line 43
    :goto_3
    iget-object v5, v8, Le/a/t/b/c/c;->c:Lcom/truecaller/android/sdk/clients/CustomDataBundle;

    if-eqz v5, :cond_9

    .line 44
    iget-object v5, v5, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->d:Ljava/lang/String;

    if-eqz v5, :cond_9

    .line 45
    invoke-static {v5}, Le/a/l4/k;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_9
    const/4 v5, 0x0

    .line 46
    :goto_4
    invoke-interface {v2, v4, v3, v5}, Le/a/v4/w0/a;->u7(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    goto :goto_5

    :cond_a
    move-object/from16 v16, v9

    .line 47
    iget-object v3, v10, Lcom/truecaller/android/sdk/TrueProfile;->phoneNumber:Ljava/lang/String;

    invoke-static {v3, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, v11}, Le/a/v4/h;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x2

    move-object v2, v1

    move-object v4, v11

    .line 49
    invoke-interface/range {v2 .. v7}, Le/a/v4/w0/b;->g8(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move v2, v9

    .line 50
    :goto_5
    invoke-virtual {v8}, Le/a/t/b/c/c;->a()Z

    move-result v3

    if-nez v3, :cond_10

    iget-object v3, v0, Le/a/v4/h;->e:Le/a/v4/u0/g;

    if-eqz v3, :cond_f

    invoke-interface {v3}, Le/a/v4/u0/g;->v()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 51
    iget-object v3, v0, Le/a/v4/h;->s:Le/a/p5/h0;

    .line 52
    invoke-virtual {v8, v14}, Le/a/t/b/c/c;->b(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 53
    sget v4, Lcom/truecaller/sdk/R$string;->SdkSkip:I

    goto :goto_6

    :cond_b
    const/16 v4, 0x100

    .line 54
    invoke-virtual {v8, v4}, Le/a/t/b/c/c;->b(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 55
    sget v4, Lcom/truecaller/sdk/R$string;->SdkUseAnotherMethod:I

    goto :goto_6

    :cond_c
    const/16 v4, 0x200

    .line 56
    invoke-virtual {v8, v4}, Le/a/t/b/c/c;->b(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 57
    sget v4, Lcom/truecaller/sdk/R$string;->SdkEnterDetailsManually:I

    goto :goto_6

    :cond_d
    const/16 v4, 0x1000

    .line 58
    invoke-virtual {v8, v4}, Le/a/t/b/c/c;->b(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 59
    sget v4, Lcom/truecaller/sdk/R$string;->SdkWillDoLater:I

    goto :goto_6

    .line 60
    :cond_e
    sget v4, Lcom/truecaller/sdk/R$string;->SdkUseDifferentNumber:I

    :goto_6
    new-array v5, v13, [Ljava/lang/Object;

    .line 61
    invoke-interface {v3, v4, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "themedResourceProvider.g\u2026          }\n            )"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-interface {v1, v3}, Le/a/v4/w0/b;->R1(Ljava/lang/String;)V

    goto :goto_7

    .line 63
    :cond_f
    invoke-static/range {v16 .. v16}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    .line 64
    :cond_10
    :goto_7
    iget-object v3, v10, Lcom/truecaller/android/sdk/TrueProfile;->avatarUrl:Ljava/lang/String;

    invoke-static {v3}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 65
    iget-object v3, v10, Lcom/truecaller/android/sdk/TrueProfile;->avatarUrl:Ljava/lang/String;

    const-string v4, "trueProfile.avatarUrl"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Le/a/v4/w0/b;->U2(Ljava/lang/String;)V

    .line 66
    :cond_11
    iget-object v1, v0, Le/a/v4/e;->a:Ljava/lang/Object;

    if-eqz v1, :cond_29

    .line 67
    instance-of v3, v1, Le/a/v4/w0/d;

    const-string v4, "trueProfile.firstName"

    const-string v5, ", "

    const/4 v6, 0x3

    const-string v7, " @ "

    if-eqz v3, :cond_1b

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    new-instance v3, Le/a/v4/o0/g;

    iget-object v8, v10, Lcom/truecaller/android/sdk/TrueProfile;->phoneNumber:Ljava/lang/String;

    invoke-static {v8, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v8}, Le/a/v4/o0/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v3, Le/a/v4/o0/b;

    invoke-virtual {v0, v10}, Le/a/v4/h;->n(Lcom/truecaller/android/sdk/TrueProfile;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Le/a/v4/o0/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v3, v10, Lcom/truecaller/android/sdk/TrueProfile;->jobTitle:Ljava/lang/String;

    invoke-static {v3}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, v10, Lcom/truecaller/android/sdk/TrueProfile;->companyName:Ljava/lang/String;

    invoke-static {v3}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 72
    :cond_12
    new-instance v3, Le/a/v4/o0/b;

    new-array v8, v2, [Ljava/lang/CharSequence;

    iget-object v9, v10, Lcom/truecaller/android/sdk/TrueProfile;->jobTitle:Ljava/lang/String;

    aput-object v9, v8, v13

    iget-object v9, v10, Lcom/truecaller/android/sdk/TrueProfile;->companyName:Ljava/lang/String;

    aput-object v9, v8, v14

    invoke-static {v7, v8}, Le/a/p5/g0;->D(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "StringUtils.combine(\" @ \u2026 trueProfile.companyName)"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v7}, Le/a/v4/o0/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_13
    iget-object v3, v10, Lcom/truecaller/android/sdk/TrueProfile;->email:Ljava/lang/String;

    invoke-static {v3}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 74
    new-instance v3, Le/a/v4/o0/b;

    iget-object v7, v10, Lcom/truecaller/android/sdk/TrueProfile;->email:Ljava/lang/String;

    const-string v8, "trueProfile.email"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v7}, Le/a/v4/o0/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_14
    iget-object v3, v10, Lcom/truecaller/android/sdk/TrueProfile;->street:Ljava/lang/String;

    invoke-static {v3}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, v10, Lcom/truecaller/android/sdk/TrueProfile;->zipcode:Ljava/lang/String;

    invoke-static {v3}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, v10, Lcom/truecaller/android/sdk/TrueProfile;->city:Ljava/lang/String;

    invoke-static {v3}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 76
    :cond_15
    new-instance v3, Le/a/v4/o0/b;

    new-array v6, v6, [Ljava/lang/CharSequence;

    iget-object v7, v10, Lcom/truecaller/android/sdk/TrueProfile;->street:Ljava/lang/String;

    aput-object v7, v6, v13

    iget-object v7, v10, Lcom/truecaller/android/sdk/TrueProfile;->city:Ljava/lang/String;

    aput-object v7, v6, v14

    iget-object v7, v10, Lcom/truecaller/android/sdk/TrueProfile;->zipcode:Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Le/a/p5/g0;->D(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "StringUtils.combine(\", \"\u2026ity, trueProfile.zipcode)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v5}, Le/a/v4/o0/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_16
    iget-object v3, v10, Lcom/truecaller/android/sdk/TrueProfile;->facebookId:Ljava/lang/String;

    invoke-static {v3}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 78
    new-instance v3, Le/a/v4/o0/b;

    iget-object v5, v10, Lcom/truecaller/android/sdk/TrueProfile;->facebookId:Ljava/lang/String;

    const-string v6, "trueProfile.facebookId"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v5}, Le/a/v4/o0/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_17
    iget-object v3, v10, Lcom/truecaller/android/sdk/TrueProfile;->twitterId:Ljava/lang/String;

    invoke-static {v3}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 80
    new-instance v3, Le/a/v4/o0/b;

    iget-object v5, v10, Lcom/truecaller/android/sdk/TrueProfile;->twitterId:Ljava/lang/String;

    const-string v6, "trueProfile.twitterId"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v5}, Le/a/v4/o0/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_18
    iget-object v3, v10, Lcom/truecaller/android/sdk/TrueProfile;->url:Ljava/lang/String;

    invoke-static {v3}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 82
    new-instance v3, Le/a/v4/o0/b;

    iget-object v5, v10, Lcom/truecaller/android/sdk/TrueProfile;->url:Ljava/lang/String;

    const-string v6, "trueProfile.url"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v5}, Le/a/v4/o0/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_19
    invoke-virtual {v0, v10}, Le/a/v4/h;->o(Lcom/truecaller/android/sdk/TrueProfile;)Ls1/k;

    move-result-object v3

    .line 84
    iget-object v3, v3, Ls1/k;->a:Ljava/lang/Object;

    .line 85
    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1a

    .line 86
    invoke-static {v3}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 87
    new-instance v5, Le/a/v4/o0/b;

    invoke-direct {v5, v3}, Le/a/v4/o0/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_1a
    iget-object v3, v0, Le/a/v4/e;->a:Ljava/lang/Object;

    const-string v5, "null cannot be cast to non-null type com.truecaller.sdk.views.PopupConfirmActivityView"

    .line 89
    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Le/a/v4/w0/d;

    invoke-interface {v3, v1}, Le/a/v4/w0/d;->p(Ljava/util/List;)V

    .line 90
    iget-object v3, v0, Le/a/v4/e;->a:Ljava/lang/Object;

    .line 91
    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Le/a/v4/w0/d;

    iget-object v6, v10, Lcom/truecaller/android/sdk/TrueProfile;->firstName:Ljava/lang/String;

    invoke-static {v6, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Le/a/l4/k;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Le/a/v4/w0/d;->n(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_29

    .line 93
    iget-object v1, v0, Le/a/v4/e;->a:Ljava/lang/Object;

    .line 94
    invoke-static {v1, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Le/a/v4/w0/d;

    invoke-interface {v1}, Le/a/v4/w0/d;->h1()V

    goto/16 :goto_9

    .line 95
    :cond_1b
    instance-of v1, v1, Le/a/v4/w0/c;

    if-eqz v1, :cond_25

    const-string v1, "trueProfile"

    .line 96
    invoke-static {v10, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    new-instance v3, Le/a/v4/o0/e;

    iget-object v8, v10, Lcom/truecaller/android/sdk/TrueProfile;->phoneNumber:Ljava/lang/String;

    sget v9, Lcom/truecaller/sdk/R$drawable;->ic_sdk_phone:I

    invoke-direct {v3, v8, v9}, Le/a/v4/o0/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v3, v10, Lcom/truecaller/android/sdk/TrueProfile;->jobTitle:Ljava/lang/String;

    invoke-static {v3}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-object v3, v10, Lcom/truecaller/android/sdk/TrueProfile;->companyName:Ljava/lang/String;

    invoke-static {v3}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 100
    :cond_1c
    new-instance v3, Le/a/v4/o0/e;

    new-array v8, v2, [Ljava/lang/CharSequence;

    iget-object v9, v10, Lcom/truecaller/android/sdk/TrueProfile;->jobTitle:Ljava/lang/String;

    aput-object v9, v8, v13

    iget-object v9, v10, Lcom/truecaller/android/sdk/TrueProfile;->companyName:Ljava/lang/String;

    aput-object v9, v8, v14

    invoke-static {v7, v8}, Le/a/p5/g0;->D(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/truecaller/sdk/R$drawable;->ic_sdk_work:I

    invoke-direct {v3, v7, v8}, Le/a/v4/o0/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_1d
    iget-object v3, v10, Lcom/truecaller/android/sdk/TrueProfile;->email:Ljava/lang/String;

    invoke-static {v3}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 102
    new-instance v3, Le/a/v4/o0/e;

    iget-object v7, v10, Lcom/truecaller/android/sdk/TrueProfile;->email:Ljava/lang/String;

    sget v8, Lcom/truecaller/sdk/R$drawable;->ic_sdk_mail:I

    invoke-direct {v3, v7, v8}, Le/a/v4/o0/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_1e
    iget-object v3, v10, Lcom/truecaller/android/sdk/TrueProfile;->street:Ljava/lang/String;

    invoke-static {v3}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v3, v10, Lcom/truecaller/android/sdk/TrueProfile;->zipcode:Ljava/lang/String;

    invoke-static {v3}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v3, v10, Lcom/truecaller/android/sdk/TrueProfile;->city:Ljava/lang/String;

    invoke-static {v3}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 104
    :cond_1f
    new-instance v3, Le/a/v4/o0/e;

    new-array v6, v6, [Ljava/lang/CharSequence;

    .line 105
    iget-object v7, v10, Lcom/truecaller/android/sdk/TrueProfile;->street:Ljava/lang/String;

    aput-object v7, v6, v13

    iget-object v7, v10, Lcom/truecaller/android/sdk/TrueProfile;->city:Ljava/lang/String;

    aput-object v7, v6, v14

    iget-object v7, v10, Lcom/truecaller/android/sdk/TrueProfile;->zipcode:Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Le/a/p5/g0;->D(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 106
    sget v5, Lcom/truecaller/sdk/R$drawable;->ic_sdk_address:I

    .line 107
    invoke-direct {v3, v2, v5}, Le/a/v4/o0/e;-><init>(Ljava/lang/String;I)V

    .line 108
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_20
    iget-object v2, v10, Lcom/truecaller/android/sdk/TrueProfile;->facebookId:Ljava/lang/String;

    invoke-static {v2}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 110
    new-instance v2, Le/a/v4/o0/e;

    iget-object v3, v10, Lcom/truecaller/android/sdk/TrueProfile;->facebookId:Ljava/lang/String;

    sget v5, Lcom/truecaller/sdk/R$drawable;->ic_sdk_facebook:I

    invoke-direct {v2, v3, v5}, Le/a/v4/o0/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_21
    iget-object v2, v10, Lcom/truecaller/android/sdk/TrueProfile;->twitterId:Ljava/lang/String;

    invoke-static {v2}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 112
    new-instance v2, Le/a/v4/o0/e;

    iget-object v3, v10, Lcom/truecaller/android/sdk/TrueProfile;->twitterId:Ljava/lang/String;

    sget v5, Lcom/truecaller/sdk/R$drawable;->ic_sdk_twitter:I

    invoke-direct {v2, v3, v5}, Le/a/v4/o0/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_22
    iget-object v2, v10, Lcom/truecaller/android/sdk/TrueProfile;->url:Ljava/lang/String;

    invoke-static {v2}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 114
    new-instance v2, Le/a/v4/o0/e;

    iget-object v3, v10, Lcom/truecaller/android/sdk/TrueProfile;->url:Ljava/lang/String;

    sget v5, Lcom/truecaller/sdk/R$drawable;->ic_sdk_link:I

    invoke-direct {v2, v3, v5}, Le/a/v4/o0/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_23
    invoke-virtual {v0, v10}, Le/a/v4/h;->o(Lcom/truecaller/android/sdk/TrueProfile;)Ls1/k;

    move-result-object v2

    .line 116
    iget-object v3, v2, Ls1/k;->a:Ljava/lang/Object;

    .line 117
    check-cast v3, Ljava/lang/String;

    .line 118
    iget-object v2, v2, Ls1/k;->b:Ljava/lang/Object;

    .line 119
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-eqz v2, :cond_24

    .line 120
    new-instance v5, Le/a/v4/o0/e;

    invoke-direct {v5, v3, v2}, Le/a/v4/o0/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_24
    iget-object v2, v0, Le/a/v4/e;->a:Ljava/lang/Object;

    const-string v3, "null cannot be cast to non-null type com.truecaller.sdk.views.FullScreenConfirmView"

    .line 122
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Le/a/v4/w0/c;

    invoke-interface {v2, v1}, Le/a/v4/w0/c;->p(Ljava/util/List;)V

    .line 123
    iget-object v1, v0, Le/a/v4/e;->a:Ljava/lang/Object;

    .line 124
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Le/a/v4/w0/c;

    iget-object v2, v10, Lcom/truecaller/android/sdk/TrueProfile;->firstName:Ljava/lang/String;

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Le/a/l4/k;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Le/a/v4/w0/c;->n(Ljava/lang/String;)V

    goto :goto_9

    .line 125
    :cond_25
    iget-object v1, v10, Lcom/truecaller/android/sdk/TrueProfile;->city:Ljava/lang/String;

    if-eqz v1, :cond_26

    invoke-static {v1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    :cond_26
    move v13, v14

    :cond_27
    if-nez v13, :cond_28

    .line 126
    iget-object v1, v10, Lcom/truecaller/android/sdk/TrueProfile;->city:Ljava/lang/String;

    goto :goto_8

    :cond_28
    const/4 v1, 0x0

    .line 127
    :goto_8
    new-instance v2, Le/a/v4/q0/a;

    .line 128
    invoke-virtual {v0, v10}, Le/a/v4/h;->n(Lcom/truecaller/android/sdk/TrueProfile;)Ljava/lang/String;

    move-result-object v3

    .line 129
    invoke-virtual {v0, v10}, Le/a/v4/h;->q(Lcom/truecaller/android/sdk/TrueProfile;)Ljava/lang/String;

    move-result-object v4

    .line 130
    iget-object v5, v10, Lcom/truecaller/android/sdk/TrueProfile;->email:Ljava/lang/String;

    .line 131
    invoke-direct {v2, v3, v4, v5, v1}, Le/a/v4/q0/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v1, v0, Le/a/v4/e;->a:Ljava/lang/Object;

    const-string v3, "null cannot be cast to non-null type com.truecaller.sdk.views.BottomSheetConfirmView"

    .line 133
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Le/a/v4/w0/a;

    invoke-interface {v1, v2}, Le/a/v4/w0/a;->S8(Le/a/v4/q0/a;)V

    :cond_29
    :goto_9
    return-void

    :cond_2a
    move-object/from16 v16, v9

    .line 134
    invoke-static/range {v16 .. v16}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_2b
    move-object/from16 v16, v9

    const/4 v1, 0x0

    .line 135
    invoke-static/range {v16 .. v16}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_2c
    return-void
.end method

.method public final n(Lcom/truecaller/android/sdk/TrueProfile;)Ljava/lang/String;
    .locals 3

    const-string v0, "trueProfile"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 1
    iget-object v1, p1, Lcom/truecaller/android/sdk/TrueProfile;->firstName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p1, p1, Lcom/truecaller/android/sdk/TrueProfile;->lastName:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, " "

    invoke-static {p1, v0}, Le/a/p5/g0;->D(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringUtils.combine(\" \",\u2026me, trueProfile.lastName)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final o(Lcom/truecaller/android/sdk/TrueProfile;)Ls1/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/android/sdk/TrueProfile;",
            ")",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/v4/e;->a:Ljava/lang/Object;

    .line 2
    check-cast v0, Le/a/v4/w0/b;

    if-eqz v0, :cond_3

    .line 3
    iget-object v1, p1, Lcom/truecaller/android/sdk/TrueProfile;->gender:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4
    iget-object p1, p1, Lcom/truecaller/android/sdk/TrueProfile;->gender:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x46

    if-eq v1, v2, :cond_2

    const/16 v2, 0x4d

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "M"

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    sget p1, Lcom/truecaller/sdk/R$drawable;->ic_sdk_male:I

    .line 7
    sget v1, Lcom/truecaller/sdk/R$string;->ProfileEditGenderMale:I

    invoke-interface {v0, v1}, Le/a/v4/w0/b;->Q(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v1, "F"

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    sget p1, Lcom/truecaller/sdk/R$drawable;->ic_sdk_female:I

    .line 10
    sget v1, Lcom/truecaller/sdk/R$string;->ProfileEditGenderFemale:I

    invoke-interface {v0, v1}, Le/a/v4/w0/b;->Q(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    const-string v0, ""

    .line 11
    :goto_1
    new-instance v1, Ls1/k;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final p(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/v4/h;->s:Le/a/p5/h0;

    .line 2
    sget v1, Lcom/truecaller/sdk/R$array;->SdkPartnerLoginIntentOptionsArray:I

    invoke-interface {v0, v1}, Le/a/p5/c0;->i(I)[Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Le/a/v4/h;->c:Le/a/t/b/c/c;

    if-eqz v1, :cond_0

    .line 4
    iget v1, v1, Le/a/t/b/c/c;->b:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 5
    :goto_0
    aget-object v0, v0, v1

    const-string v1, "themedResourceProvider\n \u2026)[getConsentTitleIndex()]"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "java.lang.String.format(format, *args)"

    .line 6
    invoke-static {v2, v1, v0, p1}, Le/d/c/a/a;->v([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final q(Lcom/truecaller/android/sdk/TrueProfile;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Le/m/f/a/j;->q()Le/m/f/a/j;

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v1, p1, Lcom/truecaller/android/sdk/TrueProfile;->phoneNumber:Ljava/lang/String;

    iget-object v2, p1, Lcom/truecaller/android/sdk/TrueProfile;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Le/m/f/a/j;->R(Ljava/lang/CharSequence;Ljava/lang/String;)Le/m/f/a/o;

    move-result-object v0

    const-string v1, "phoneNumberUtil.parse(tr\u2026 trueProfile.countryCode)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Le/m/f/a/e; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iget-wide v0, v0, Le/m/f/a/o;->d:J

    .line 4
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :catch_0
    iget-object p1, p1, Lcom/truecaller/android/sdk/TrueProfile;->phoneNumber:Ljava/lang/String;

    const-string v0, "trueProfile.phoneNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final r()Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/a/v4/h;->i:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :catch_0
    :cond_0
    iget-object v1, p0, Le/a/v4/h;->o:Le/a/b0/o/a;

    const-string v2, "profileSimNumber"

    invoke-interface {v1, v2}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Le/a/v4/e;->a:Ljava/lang/Object;

    .line 4
    check-cast v2, Le/a/v4/w0/b;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v2}, Le/a/v4/w0/b;->U8()Z

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    if-eqz v2, :cond_2

    invoke-static {v1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 6
    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    .line 7
    invoke-static {v1, v0, v3, v2}, Ls1/f0/r;->o(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3
.end method
