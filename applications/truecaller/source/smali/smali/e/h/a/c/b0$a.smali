.class public Le/h/a/c/b0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/h/a/c/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:D

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Z

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:I

.field public final n:Ljava/lang/String;

.field public final o:D

.field public p:Ljava/lang/String;

.field public final synthetic q:Le/h/a/c/b0;


# direct methods
.method public constructor <init>(Le/h/a/c/b0;)V
    .locals 12

    const-string v0, "phone"

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iput-object p1, p0, Le/h/a/c/b0$a;->q:Le/h/a/c/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    :try_start_0
    iget-object v4, p1, Le/h/a/c/b0;->e:Landroid/content/Context;

    .line 3
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 4
    iget-object p1, p1, Le/h/a/c/b0;->e:Landroid/content/Context;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 6
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v2

    .line 7
    :goto_0
    iput-object p1, p0, Le/h/a/c/b0$a;->n:Ljava/lang/String;

    const-string p1, "Android"

    .line 8
    iput-object p1, p0, Le/h/a/c/b0$a;->k:Ljava/lang/String;

    .line 9
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Le/h/a/c/b0$a;->l:Ljava/lang/String;

    .line 11
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Le/h/a/c/b0$a;->g:Ljava/lang/String;

    .line 13
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, ""

    .line 14
    invoke-virtual {v4, p1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 15
    iput-object p1, p0, Le/h/a/c/b0$a;->h:Ljava/lang/String;

    .line 16
    :try_start_1
    iget-object p1, p0, Le/h/a/c/b0$a;->q:Le/h/a/c/b0;

    .line 17
    iget-object p1, p1, Le/h/a/c/b0;->e:Landroid/content/Context;

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 20
    :catch_1
    :cond_0
    iput-object v2, p0, Le/h/a/c/b0$a;->c:Ljava/lang/String;

    .line 21
    :try_start_2
    iget-object p1, p0, Le/h/a/c/b0$a;->q:Le/h/a/c/b0;

    .line 22
    iget-object p1, p1, Le/h/a/c/b0;->e:Landroid/content/Context;

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v2, p0, Le/h/a/c/b0$a;->q:Le/h/a/c/b0;

    .line 24
    iget-object v2, v2, Le/h/a/c/b0;->e:Landroid/content/Context;

    .line 25
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 26
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move p1, v3

    .line 27
    :goto_1
    iput p1, p0, Le/h/a/c/b0$a;->b:I

    .line 28
    iget-object p1, p0, Le/h/a/c/b0$a;->q:Le/h/a/c/b0;

    .line 29
    iget-object p1, p1, Le/h/a/c/b0;->e:Landroid/content/Context;

    .line 30
    invoke-static {p1}, Le/h/a/c/j0;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 31
    iput-object p1, p0, Le/h/a/c/b0$a;->i:Ljava/lang/String;

    .line 32
    iget-object p1, p0, Le/h/a/c/b0$a;->q:Le/h/a/c/b0;

    .line 33
    iget-object p1, p1, Le/h/a/c/b0;->e:Landroid/content/Context;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v2, "android.hardware.bluetooth_le"

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "ble"

    goto :goto_2

    .line 35
    :cond_1
    iget-object p1, p0, Le/h/a/c/b0$a;->q:Le/h/a/c/b0;

    .line 36
    iget-object p1, p1, Le/h/a/c/b0;->e:Landroid/content/Context;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v2, "android.hardware.bluetooth"

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "classic"

    goto :goto_2

    :cond_2
    const-string p1, "none"

    .line 38
    :goto_2
    iput-object p1, p0, Le/h/a/c/b0$a;->a:Ljava/lang/String;

    .line 39
    :try_start_3
    iget-object p1, p0, Le/h/a/c/b0$a;->q:Le/h/a/c/b0;

    .line 40
    iget-object p1, p1, Le/h/a/c/b0;->e:Landroid/content/Context;

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_3

    .line 42
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    :cond_3
    move-object p1, v5

    .line 43
    :goto_3
    iput-object p1, p0, Le/h/a/c/b0$a;->d:Ljava/lang/String;

    const p1, 0x9dd0

    .line 44
    iput p1, p0, Le/h/a/c/b0$a;->m:I

    .line 45
    iget-object p1, p0, Le/h/a/c/b0$a;->q:Le/h/a/c/b0;

    .line 46
    iget-object p1, p1, Le/h/a/c/b0;->e:Landroid/content/Context;

    const-string v0, "window"

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    const-wide/16 v8, 0x0

    const/16 v2, 0x1e

    if-nez p1, :cond_4

    move-wide v10, v8

    goto :goto_5

    :cond_4
    if-lt v1, v2, :cond_5

    .line 48
    invoke-interface {p1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p1

    .line 49
    iget-object v4, p0, Le/h/a/c/b0$a;->q:Le/h/a/c/b0;

    .line 50
    iget-object v4, v4, Le/h/a/c/b0;->e:Landroid/content/Context;

    .line 51
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 52
    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v10

    .line 53
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v10

    .line 54
    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget v11, v10, Landroid/graphics/Insets;->top:I

    sub-int/2addr p1, v11

    iget v10, v10, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr p1, v10

    .line 55
    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v4, v4

    goto :goto_4

    .line 56
    :cond_5
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 57
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 58
    iget p1, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 59
    iget v4, v4, Landroid/util/DisplayMetrics;->ydpi:F

    :goto_4
    int-to-float p1, p1

    div-float/2addr p1, v4

    float-to-double v10, p1

    mul-double/2addr v10, v6

    .line 60
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-double v10, v10

    div-double/2addr v10, v6

    .line 61
    :goto_5
    iput-wide v10, p0, Le/h/a/c/b0$a;->f:D

    .line 62
    iget-object p1, p0, Le/h/a/c/b0$a;->q:Le/h/a/c/b0;

    .line 63
    iget-object p1, p1, Le/h/a/c/b0;->e:Landroid/content/Context;

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    if-nez p1, :cond_6

    goto :goto_6

    :cond_6
    if-lt v1, v2, :cond_7

    .line 65
    invoke-interface {p1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v4

    .line 67
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v4

    .line 68
    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    iget p1, v4, Landroid/graphics/Insets;->top:I

    goto :goto_6

    .line 69
    :cond_7
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 70
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 71
    :goto_6
    iget-object p1, p0, Le/h/a/c/b0$a;->q:Le/h/a/c/b0;

    .line 72
    iget-object p1, p1, Le/h/a/c/b0;->e:Landroid/content/Context;

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    if-nez p1, :cond_8

    goto :goto_8

    :cond_8
    if-lt v1, v2, :cond_9

    .line 74
    invoke-interface {p1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p1

    .line 75
    iget-object v4, p0, Le/h/a/c/b0$a;->q:Le/h/a/c/b0;

    .line 76
    iget-object v4, v4, Le/h/a/c/b0;->e:Landroid/content/Context;

    .line 77
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 78
    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v8

    .line 79
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v8

    .line 80
    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget v9, v8, Landroid/graphics/Insets;->right:I

    sub-int/2addr p1, v9

    iget v8, v8, Landroid/graphics/Insets;->left:I

    sub-int/2addr p1, v8

    .line 81
    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v4, v4

    goto :goto_7

    .line 82
    :cond_9
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 83
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 84
    iget p1, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 85
    iget v4, v4, Landroid/util/DisplayMetrics;->xdpi:F

    :goto_7
    int-to-float p1, p1

    div-float/2addr p1, v4

    float-to-double v8, p1

    mul-double/2addr v8, v6

    .line 86
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-double v8, v8

    div-double/2addr v8, v6

    .line 87
    :goto_8
    iput-wide v8, p0, Le/h/a/c/b0$a;->o:D

    .line 88
    iget-object p1, p0, Le/h/a/c/b0$a;->q:Le/h/a/c/b0;

    .line 89
    iget-object p1, p1, Le/h/a/c/b0;->e:Landroid/content/Context;

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    if-nez p1, :cond_a

    goto :goto_9

    :cond_a
    if-lt v1, v2, :cond_b

    .line 91
    invoke-interface {p1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v4

    .line 93
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v4

    .line 94
    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    iget p1, v4, Landroid/graphics/Insets;->right:I

    goto :goto_9

    .line 95
    :cond_b
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 96
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 97
    :goto_9
    iget-object p1, p0, Le/h/a/c/b0$a;->q:Le/h/a/c/b0;

    .line 98
    iget-object p1, p1, Le/h/a/c/b0;->e:Landroid/content/Context;

    .line 99
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    if-nez p1, :cond_c

    goto :goto_a

    :cond_c
    if-lt v1, v2, :cond_d

    .line 100
    iget-object p1, p0, Le/h/a/c/b0$a;->q:Le/h/a/c/b0;

    .line 101
    iget-object p1, p1, Le/h/a/c/b0;->e:Landroid/content/Context;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 103
    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    goto :goto_a

    .line 104
    :cond_d
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 105
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 106
    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 107
    :goto_a
    iput v3, p0, Le/h/a/c/b0$a;->e:I

    .line 108
    :try_start_4
    iget-object p1, p0, Le/h/a/c/b0$a;->q:Le/h/a/c/b0;

    .line 109
    iget-object p1, p1, Le/h/a/c/b0;->e:Landroid/content/Context;

    .line 110
    new-instance v0, Ln3/k/a/x;

    invoke-direct {v0, p1}, Ln3/k/a/x;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-virtual {v0}, Ln3/k/a/x;->a()Z

    move-result p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_b

    :catch_3
    move-exception p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    const/4 p1, 0x1

    .line 113
    :goto_b
    iput-boolean p1, p0, Le/h/a/c/b0$a;->j:Z

    const/16 p1, 0x1c

    if-lt v1, p1, :cond_13

    .line 114
    iget-object p1, p0, Le/h/a/c/b0$a;->q:Le/h/a/c/b0;

    .line 115
    iget-object p1, p1, Le/h/a/c/b0;->e:Landroid/content/Context;

    const-string v0, "usagestats"

    .line 116
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManager;

    .line 117
    invoke-virtual {p1}, Landroid/app/usage/UsageStatsManager;->getAppStandbyBucket()I

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_12

    const/16 v0, 0x14

    if-eq p1, v0, :cond_11

    if-eq p1, v2, :cond_10

    const/16 v0, 0x28

    if-eq p1, v0, :cond_f

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_e

    goto :goto_c

    :cond_e
    const-string v5, "restricted"

    goto :goto_c

    :cond_f
    const-string v5, "rare"

    goto :goto_c

    :cond_10
    const-string v5, "frequent"

    goto :goto_c

    :cond_11
    const-string v5, "working_set"

    goto :goto_c

    :cond_12
    const-string v5, "active"

    .line 118
    :goto_c
    iput-object v5, p0, Le/h/a/c/b0$a;->p:Ljava/lang/String;

    :cond_13
    return-void
.end method
