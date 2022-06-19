.class public final Le/a/z/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/z/f;


# instance fields
.field public final a:Ls1/g;

.field public final b:Landroid/content/Context;

.field public final c:Le/a/z/m/a;

.field public final d:Le/a/b0/q/l0;

.field public final e:Le/a/u3/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/z/m/a;Le/a/b0/q/l0;Le/a/u3/g;)V
    .locals 1
    .param p4    # Le/a/u3/g;
        .annotation runtime Ljavax/inject/Named;
            value = "features_registry"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestampUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/z/g;->b:Landroid/content/Context;

    iput-object p2, p0, Le/a/z/g;->c:Le/a/z/m/a;

    iput-object p3, p0, Le/a/z/g;->d:Le/a/b0/q/l0;

    iput-object p4, p0, Le/a/z/g;->e:Le/a/u3/g;

    .line 2
    new-instance p1, Le/a/z/g$a;

    invoke-direct {p1, p0}, Le/a/z/g$a;-><init>(Le/a/z/g;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/z/g;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/z/g;->h()Lcom/truecaller/personalsafety/domain/data/PersonalSafetyHomePromoConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/personalsafety/domain/data/PersonalSafetyHomePromoConfig;->getText()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Le/a/z/g;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    goto :goto_3

    .line 3
    :cond_3
    iget-object v0, p0, Le/a/z/g;->b:Landroid/content/Context;

    sget v1, Lcom/truecaller/personalsafety/R$string;->personal_safety_promo_text:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026rsonal_safety_promo_text)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    return-object v0
.end method

.method public b()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Le/a/z/g;->h()Lcom/truecaller/personalsafety/domain/data/PersonalSafetyHomePromoConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/personalsafety/domain/data/PersonalSafetyHomePromoConfig;->getDurationDays()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-string v4, "com.truecaller.guardians"

    .line 4
    :try_start_0
    iget-object v5, p0, Le/a/z/g;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v2

    goto :goto_2

    :catch_0
    move v4, v3

    :goto_2
    if-nez v4, :cond_2

    .line 5
    iget-object v4, p0, Le/a/z/g;->d:Le/a/b0/q/l0;

    iget-object v5, p0, Le/a/z/g;->c:Le/a/z/m/a;

    invoke-interface {v5}, Le/a/z/m/a;->u1()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v0, v1}, Le/a/b0/q/l0;->b(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    move v2, v3

    :goto_3
    return v2

    :cond_3
    return v3
.end method

.method public c(Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;)Ljava/lang/String;
    .locals 2

    const-string v0, "linkSource"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/z/g;->c:Le/a/z/m/a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/z/m/a;->A1(Z)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p1, "https://grdns.page.link/true1"

    goto :goto_2

    :cond_0
    const-string p1, "https://grdns.page.link/truecaller"

    goto :goto_2

    .line 3
    :cond_1
    invoke-virtual {p0}, Le/a/z/g;->h()Lcom/truecaller/personalsafety/domain/data/PersonalSafetyHomePromoConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/truecaller/personalsafety/domain/data/PersonalSafetyHomePromoConfig;->getLaunchUrl()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const-string p1, "market://details?id=com.truecaller.guardians"

    :goto_2
    return-object p1
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/z/g;->c:Le/a/z/m/a;

    iget-object v1, p0, Le/a/z/g;->d:Le/a/b0/q/l0;

    invoke-virtual {v1}, Le/a/b0/q/l0;->c()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Le/a/z/m/a;->y(J)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/z/g;->h()Lcom/truecaller/personalsafety/domain/data/PersonalSafetyHomePromoConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/personalsafety/domain/data/PersonalSafetyHomePromoConfig;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Le/a/z/g;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    goto :goto_3

    .line 3
    :cond_3
    iget-object v0, p0, Le/a/z/g;->b:Landroid/content/Context;

    sget v1, Lcom/truecaller/personalsafety/R$string;->personal_safety_promo_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026sonal_safety_promo_title)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/z/g;->c:Le/a/z/m/a;

    invoke-interface {v0}, Le/a/z/m/a;->T1()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 3

    const-string v0, "com.truecaller.guardians"

    const/4 v1, 0x1

    .line 1
    :try_start_0
    iget-object v2, p0, Le/a/z/g;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final h()Lcom/truecaller/personalsafety/domain/data/PersonalSafetyHomePromoConfig;
    .locals 1

    iget-object v0, p0, Le/a/z/g;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/personalsafety/domain/data/PersonalSafetyHomePromoConfig;

    return-object v0
.end method

.method public final i()Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "context.resources"

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Le/a/z/g;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string v1, "context.resources.configuration"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/z/g;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :goto_0
    const-string v1, "locale"

    .line 4
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
