.class public final Le/a/v4/o;
.super Le/a/v4/h;
.source "SourceFile"


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

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiThread"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkHelperActorRef"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telephonyManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTrackerHolder"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkRepository"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkAccountManager"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkLocaleManager"

    invoke-static {p12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityHelper"

    invoke-static {p13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "themedResourceProvider"

    invoke-static {p14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p14}, Le/a/v4/h;-><init>(Ls1/w/f;Le/a/r2/j;Le/a/r2/f;Landroid/telephony/TelephonyManager;Landroid/content/pm/PackageManager;Landroid/app/NotificationManager;Le/a/v4/l;Le/a/v4/b0;Le/a/v4/v;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/v4/a0;Le/a/v4/a;Le/a/p5/h0;)V

    return-void
.end method


# virtual methods
.method public g()V
    .locals 3

    .line 1
    invoke-super {p0}, Le/a/v4/h;->g()V

    .line 2
    iget-object v0, p0, Le/a/v4/h;->c:Le/a/t/b/c/c;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Le/a/t/b/c/c;->a()Z

    move-result v0

    if-eq v0, v1, :cond_1

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/v4/h;->e:Le/a/v4/u0/g;

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v0}, Le/a/v4/u0/g;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Le/a/v4/e;->a:Ljava/lang/Object;

    const-string v2, "null cannot be cast to non-null type com.truecaller.sdk.views.FullScreenConfirmView"

    .line 7
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Le/a/v4/w0/c;

    .line 8
    iget-boolean v2, p0, Le/a/v4/h;->d:Z

    xor-int/2addr v1, v2

    .line 9
    invoke-interface {v0, v1}, Le/a/v4/w0/c;->m4(Z)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "sdkPartner"

    .line 10
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public m()V
    .locals 3

    .line 1
    invoke-super {p0}, Le/a/v4/h;->m()V

    .line 2
    :try_start_0
    iget-object v0, p0, Le/a/v4/e;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 3
    check-cast v0, Le/a/v4/w0/c;

    .line 4
    iget-object v1, p0, Le/a/v4/h;->j:Landroid/content/pm/PackageManager;

    .line 5
    iget-object v2, p0, Le/a/v4/h;->e:Le/a/v4/u0/g;

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v2}, Le/a/v4/u0/k/a$c;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v2, "mPackageManager.getAppli\u2026tner.getPartnerAppName())"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Le/a/v4/w0/c;->T5(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const-string v0, "sdkPartner"

    .line 7
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    throw v0

    .line 8
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.truecaller.sdk.views.FullScreenConfirmView"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
