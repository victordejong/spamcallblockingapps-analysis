.class public final Lcom/facebook/appevents/m0/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0007J,\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00062\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\nH\u0007J\u0008\u0010\u0015\u001a\u00020\u0010H\u0002J$\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00062\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/facebook/appevents/internal/SessionLogger;",
        "",
        "()V",
        "INACTIVE_SECONDS_QUANTA",
        "",
        "PACKAGE_CHECKSUM",
        "",
        "TAG",
        "computePackageChecksum",
        "context",
        "Landroid/content/Context;",
        "getQuantaIndex",
        "",
        "timeBetweenSessions",
        "",
        "logActivateApp",
        "",
        "activityName",
        "sourceApplicationInfo",
        "Lcom/facebook/appevents/internal/SourceApplicationInfo;",
        "appId",
        "logClockSkewEvent",
        "logDeactivateApp",
        "sessionInfo",
        "Lcom/facebook/appevents/internal/SessionInfo;",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcom/facebook/appevents/m0/m;

.field public static final b:Ljava/lang/String; = "com.facebook.appevents.m0.m"

.field public static final c:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/appevents/m0/m;

    invoke-direct {v0}, Lcom/facebook/appevents/m0/m;-><init>()V

    sput-object v0, Lcom/facebook/appevents/m0/m;->a:Lcom/facebook/appevents/m0/m;

    const/16 v0, 0x13

    new-array v0, v0, [J

    .line 1
    fill-array-data v0, :array_0

    .line 2
    sput-object v0, Lcom/facebook/appevents/m0/m;->c:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x493e0
        0xdbba0
        0x1b7740
        0x36ee80
        0x1499700
        0x2932e00
        0x5265c00
        0xa4cb800
        0xf731400
        0x240c8400
        0x48190800
        0x6c258c00
        0x90321000L
        0x134fd9000L
        0x1cf7c5800L
        0x269fb2000L
        0x30479e800L
        0x39ef8b000L
        0x757b12c00L
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final b(Ljava/lang/String;Lcom/facebook/appevents/m0/n;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    const-string p1, "activityName"

    const-class v0, Lcom/facebook/appevents/m0/m;

    invoke-static {v0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {p3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "Unclassified"

    .line 1
    :try_start_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "fb_mobile_launch_source"

    .line 2
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fb_mobile_pckg_fp"

    .line 3
    sget-object v3, Lcom/facebook/appevents/m0/m;->a:Lcom/facebook/appevents/m0/m;

    invoke-virtual {v3, p3}, Lcom/facebook/appevents/m0/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fb_mobile_app_cert_hash"

    .line 5
    invoke-static {p3}, Lcom/facebook/internal/w0/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 6
    invoke-static {p0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance p1, Lcom/facebook/appevents/x;

    invoke-direct {p1, p0, p2, p3}, Lcom/facebook/appevents/x;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    const-string p0, "loggerImpl"

    .line 8
    invoke-static {p1, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "fb_mobile_activate_app"

    .line 9
    sget-object p2, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->c()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 10
    invoke-virtual {p1, p0, v2}, Lcom/facebook/appevents/x;->e(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 11
    :cond_1
    sget-object p0, Lcom/facebook/appevents/x;->c:Lcom/facebook/appevents/x$a;

    invoke-virtual {p0}, Lcom/facebook/appevents/x$a;->b()Lcom/facebook/appevents/w;

    move-result-object p0

    .line 12
    sget-object p2, Lcom/facebook/appevents/w;->b:Lcom/facebook/appevents/w;

    if-eq p0, p2, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/facebook/appevents/x;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 14
    invoke-static {p0, v0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final d(Ljava/lang/String;Lcom/facebook/appevents/m0/l;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-object v0, Lcom/facebook/appevents/m0/m;->a:Lcom/facebook/appevents/m0/m;

    const-string v3, "activityName"

    const-class v4, Lcom/facebook/appevents/m0/m;

    invoke-static {v4}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v2, :cond_1

    return-void

    .line 1
    :cond_1
    iget-object v5, v2, Lcom/facebook/appevents/m0/l;->e:Ljava/lang/Long;

    const-wide/16 v6, 0x0

    if-nez v5, :cond_2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    :cond_2
    if-nez v5, :cond_4

    .line 2
    iget-object v5, v2, Lcom/facebook/appevents/m0/l;->b:Ljava/lang/Long;

    if-nez v5, :cond_3

    move-wide v8, v6

    goto :goto_0

    .line 3
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :goto_0
    sub-long v8, v6, v8

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :goto_1
    cmp-long v5, v8, v6

    if-gez v5, :cond_5

    .line 4
    invoke-virtual {v0}, Lcom/facebook/appevents/m0/m;->c()V

    move-wide v8, v6

    .line 5
    :cond_5
    iget-object v5, v2, Lcom/facebook/appevents/m0/l;->a:Ljava/lang/Long;

    if-eqz v5, :cond_7

    iget-object v5, v2, Lcom/facebook/appevents/m0/l;->b:Ljava/lang/Long;

    if-nez v5, :cond_6

    goto :goto_2

    .line 6
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    iget-object v5, v2, Lcom/facebook/appevents/m0/l;->a:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long/2addr v10, v12

    goto :goto_3

    :cond_7
    :goto_2
    move-wide v10, v6

    :goto_3
    cmp-long v5, v10, v6

    if-gez v5, :cond_8

    .line 7
    invoke-virtual {v0}, Lcom/facebook/appevents/m0/m;->c()V

    move-wide v10, v6

    .line 8
    :cond_8
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    const-string v0, "fb_mobile_app_interruptions"

    .line 9
    iget v5, v2, Lcom/facebook/appevents/m0/l;->d:I

    .line 10
    invoke-virtual {v15, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "fb_mobile_time_between_sessions"

    .line 11
    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v13, "session_quanta_%d"

    const/4 v14, 0x1

    new-array v6, v14, [Ljava/lang/Object;

    .line 12
    invoke-static {v4}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    .line 13
    :goto_4
    :try_start_1
    sget-object v14, Lcom/facebook/appevents/m0/m;->c:[J

    array-length v7, v14

    if-ge v0, v7, :cond_a

    .line 14
    aget-wide v18, v14, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v7, v18, v8

    if-gez v7, :cond_a

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 15
    :try_start_2
    invoke-static {v0, v4}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :goto_5
    const/4 v0, 0x0

    .line 16
    :cond_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v12, v13, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "java.lang.String.format(locale, format, *args)"

    invoke-static {v0, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v15, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v0, v2, Lcom/facebook/appevents/m0/l;->f:Lcom/facebook/appevents/m0/n;

    if-nez v0, :cond_b

    goto :goto_6

    .line 19
    :cond_b
    invoke-virtual {v0}, Lcom/facebook/appevents/m0/n;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v0, :cond_c

    :goto_6
    const-string v0, "Unclassified"

    :cond_c
    :try_start_3
    const-string v5, "fb_mobile_launch_source"

    .line 20
    invoke-virtual {v15, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_logTime"

    .line 21
    iget-object v2, v2, Lcom/facebook/appevents/m0/l;->b:Ljava/lang/Long;

    if-nez v2, :cond_d

    const-wide/16 v6, 0x0

    goto :goto_7

    .line 22
    :cond_d
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :goto_7
    const/16 v2, 0x3e8

    int-to-long v8, v2

    div-long/2addr v6, v8

    .line 23
    invoke-virtual {v15, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v0, 0x0

    .line 24
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v2, Lcom/facebook/appevents/x;

    move-object/from16 v3, p2

    invoke-direct {v2, v1, v3, v0}, Lcom/facebook/appevents/x;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    const-string v0, "loggerImpl"

    .line 26
    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "fb_mobile_deactivate_app"

    long-to-double v0, v10

    const-wide/16 v5, 0x3e8

    long-to-double v5, v5

    div-double/2addr v0, v5

    .line 27
    sget-object v3, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->c()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 28
    invoke-static {v2}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_e

    goto :goto_8

    .line 29
    :cond_e
    :try_start_4
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    const/16 v16, 0x0

    sget-object v0, Lcom/facebook/appevents/m0/f;->a:Lcom/facebook/appevents/m0/f;

    invoke-static {}, Lcom/facebook/appevents/m0/f;->b()Ljava/util/UUID;

    move-result-object v17

    move-object v12, v2

    invoke-virtual/range {v12 .. v17}, Lcom/facebook/appevents/x;->f(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    .line 30
    :try_start_5
    invoke-static {v0, v2}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_f
    :goto_8
    return-void

    :catchall_2
    move-exception v0

    .line 31
    invoke-static {v0, v4}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    invoke-static {p0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v4, "PCKGCHKSUM;"

    .line 3
    invoke-static {v4, v2}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.facebook.sdk.appEventPreferences"

    .line 4
    invoke-virtual {p1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 5
    invoke-interface {v4, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_1

    return-object v5

    .line 7
    :cond_1
    sget-object v5, Lcom/facebook/appevents/m0/k;->a:Lcom/facebook/appevents/m0/k;

    invoke-static {p1, v1}, Lcom/facebook/appevents/m0/k;->b(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 9
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {p1}, Lcom/facebook/appevents/m0/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 10
    :goto_0
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v5

    :catch_0
    return-object v1

    :catchall_0
    move-exception p1

    .line 11
    invoke-static {p1, p0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final c()V
    .locals 4

    invoke-static {p0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/internal/k0;->e:Lcom/facebook/internal/k0$a;

    sget-object v1, Le/j/n0;->e:Le/j/n0;

    sget-object v2, Lcom/facebook/appevents/m0/m;->b:Ljava/lang/String;

    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    const-string v3, "Clock skew detected"

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/internal/k0$a;->b(Le/j/n0;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {v0, p0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
