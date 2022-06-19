.class public final Lcom/google/android/gms/measurement/internal/zzdy;
.super Le/m/a/f/l/a/w;
.source "SourceFile"


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:J

.field public final h:J

.field public i:Ljava/util/List;

.field public j:I

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzfr;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/m/a/f/l/a/w;-><init>(Lcom/google/android/gms/measurement/internal/zzfr;)V

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzdy;->h:J

    return-void
.end method


# virtual methods
.method public final g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final h()V
    .locals 11
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "appId",
            "appStore",
            "appName",
            "gmpAppId",
            "gaAppId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "unknown"

    const-string v3, "Unknown"

    const/high16 v4, -0x80000000

    const-string v5, ""

    const/4 v6, 0x0

    if-nez v1, :cond_0

    iget-object v7, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 6
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v7

    .line 7
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "PackageManager is null, app identity information might be inaccurate. appId"

    .line 9
    invoke-virtual {v7, v9, v8}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :catch_0
    iget-object v7, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 12
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v7

    .line 13
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Error retrieving app installer package name. appId"

    .line 15
    invoke-virtual {v7, v9, v8}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    if-nez v2, :cond_1

    const-string v2, "manual_install"

    goto :goto_1

    :cond_1
    const-string v7, "com.android.vending"

    .line 16
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v2, v5

    .line 17
    :cond_2
    :goto_1
    :try_start_1
    iget-object v7, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 18
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    .line 19
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 20
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 21
    invoke-virtual {v1, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 22
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 23
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :cond_3
    move-object v8, v3

    .line 24
    :goto_2
    :try_start_2
    iget-object v3, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 25
    iget v4, v7, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-object v7, v3

    move-object v3, v8

    goto :goto_3

    :catch_2
    move-object v7, v3

    .line 26
    :goto_3
    iget-object v8, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 27
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v8

    .line 28
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    .line 29
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "Error retrieving package info. appId, appName"

    .line 30
    invoke-virtual {v8, v10, v9, v3}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v7

    .line 31
    :cond_4
    :goto_4
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdy;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzdy;->f:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzdy;->d:Ljava/lang/String;

    iput v4, p0, Lcom/google/android/gms/measurement/internal/zzdy;->e:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzdy;->g:J

    iget-object v2, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 32
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfr;->b:Ljava/lang/String;

    .line 33
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_5

    iget-object v2, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 34
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfr;->c:Ljava/lang/String;

    const-string v4, "am"

    .line 35
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    goto :goto_5

    :cond_5
    move v2, v6

    :goto_5
    iget-object v4, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 36
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfr;->i()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    iget-object v7, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 37
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v7

    goto/16 :goto_6

    .line 38
    :pswitch_0
    iget-object v7, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 39
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v7

    .line 40
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzeh;->l:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v8, "App measurement disabled via the global data collection setting"

    .line 41
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 42
    :pswitch_1
    iget-object v7, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 43
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v7

    .line 44
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzeh;->k:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v8, "App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics"

    .line 45
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 46
    :pswitch_2
    iget-object v7, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 47
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v7

    .line 48
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v8, "App measurement disabled via the init parameters"

    .line 49
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 50
    :pswitch_3
    iget-object v7, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 51
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v7

    .line 52
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzeh;->l:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v8, "App measurement disabled via the manifest"

    .line 53
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 54
    :pswitch_4
    iget-object v7, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 55
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v7

    .line 56
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzeh;->l:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v8, "App measurement disabled by setAnalyticsCollectionEnabled(false)"

    .line 57
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 58
    :pswitch_5
    iget-object v7, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 59
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v7

    .line 60
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v8, "App measurement deactivated via the init parameters"

    .line 61
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 62
    :pswitch_6
    iget-object v7, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 63
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v7

    .line 64
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzeh;->l:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v8, "App measurement deactivated via the manifest"

    .line 65
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 66
    :pswitch_7
    iget-object v7, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 67
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v7

    .line 68
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v8, "App measurement collection enabled"

    .line 69
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 70
    :goto_6
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzeh;->l:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v8, "App measurement disabled due to denied storage consent"

    .line 71
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    :goto_7
    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/zzdy;->k:Ljava/lang/String;

    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/zzdy;->l:Ljava/lang/String;

    iget-object v7, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 72
    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/zzfr;->f:Lcom/google/android/gms/measurement/internal/zzaa;

    if-eqz v2, :cond_6

    .line 73
    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/zzfr;->b:Ljava/lang/String;

    .line 74
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzdy;->l:Ljava/lang/String;

    :cond_6
    const/4 v2, 0x0

    .line 75
    :try_start_3
    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    .line 76
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzfr;->s:Ljava/lang/String;

    const-string v9, "google_app_id"

    .line 77
    invoke-static {v8, v9, v7}, Lcom/google/android/gms/measurement/internal/zzic;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 78
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eq v3, v8, :cond_7

    move-object v5, v7

    :cond_7
    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/zzdy;->k:Ljava/lang/String;

    .line 79
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 80
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    .line 81
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzfr;->s:Ljava/lang/String;

    const-string v7, "null reference"

    .line 82
    invoke-static {v5, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 84
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_8

    .line 85
    :cond_8
    invoke-static {v5}, Ln3/g0/y;->q2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    :goto_8
    const-string v5, "admob_app_id"

    const-string v8, "string"

    .line 86
    invoke-virtual {v7, v5, v8, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4

    if-nez v3, :cond_9

    goto :goto_9

    .line 87
    :cond_9
    :try_start_4
    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_a

    :catch_3
    :goto_9
    move-object v3, v2

    .line 88
    :goto_a
    :try_start_5
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzdy;->l:Ljava/lang/String;

    :cond_a
    if-nez v4, :cond_c

    iget-object v3, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 89
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v3

    .line 90
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v4, "App measurement enabled for app package, google app id"

    .line 91
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzdy;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzdy;->k:Ljava/lang/String;

    .line 92
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzdy;->l:Ljava/lang/String;

    goto :goto_b

    .line 93
    :cond_b
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzdy;->k:Ljava/lang/String;

    .line 94
    :goto_b
    invoke-virtual {v3, v4, v5, v7}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_c

    :catch_4
    move-exception v3

    .line 95
    iget-object v4, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 96
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v4

    .line 97
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    .line 98
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v5, "Fetching Google App Id failed with exception. appId"

    .line 99
    invoke-virtual {v4, v5, v0, v3}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    :cond_c
    :goto_c
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzdy;->i:Ljava/util/List;

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 101
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzfr;->f:Lcom/google/android/gms/measurement/internal/zzaa;

    .line 102
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 103
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "analytics.safelisted_events"

    .line 104
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->o()Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_d

    iget-object v3, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 106
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v3

    .line 107
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v4, "Failed to load metadata: Metadata bundle is null"

    .line 108
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    goto :goto_d

    .line 109
    :cond_d
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    :goto_d
    move-object v3, v2

    goto :goto_e

    .line 110
    :cond_e
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_e
    if-eqz v3, :cond_10

    .line 111
    :try_start_6
    iget-object v4, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 112
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    .line 113
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_f

    goto :goto_f

    .line 114
    :cond_f
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_f

    :catch_5
    move-exception v3

    .line 115
    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 116
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 117
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v4, "Failed to load string array from metadata: resource not found"

    .line 118
    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_10
    :goto_f
    if-nez v2, :cond_11

    goto :goto_10

    .line 119
    :cond_11
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 120
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 121
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->k:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v2, "Safelisted event list is empty. Ignoring"

    .line 122
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    goto :goto_11

    .line 123
    :cond_12
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 124
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v4

    const-string v5, "safelisted event"

    .line 125
    invoke-virtual {v4, v5, v3}, Lcom/google/android/gms/measurement/internal/zzkw;->K(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    goto :goto_11

    .line 126
    :cond_14
    :goto_10
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzdy;->i:Ljava/util/List;

    :goto_11
    if-eqz v1, :cond_15

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 127
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    .line 128
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/InstantApps;->a(Landroid/content/Context;)Z

    move-result v0

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzdy;->j:I

    return-void

    :cond_15
    iput v6, p0, Lcom/google/android/gms/measurement/internal/zzdy;->j:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/m/a/f/l/a/w;->e()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdy;->c:Ljava/lang/String;

    const-string v1, "null reference"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdy;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznx;->zzc()Z

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    const/4 v1, 0x0

    .line 3
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzdu;->j0:Lcom/google/android/gms/measurement/internal/zzdt;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Le/m/a/f/l/a/m;->d()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Le/m/a/f/l/a/w;->e()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdy;->k:Ljava/lang/String;

    const-string v1, "null reference"

    .line 6
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdy;->k:Ljava/lang/String;

    return-object v0
.end method
