.class public Lcom/hiya/stingray/s/e/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/s/e/m;->a:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method A()Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/s/e/m;->a:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method B()Lcom/hiya/stingray/util/b0;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/util/b0;

    invoke-direct {v0}, Lcom/hiya/stingray/util/b0;-><init>()V

    return-object v0
.end method

.method C(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "phone"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 3
    :goto_0
    invoke-static {p1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v0, p1

    :cond_1
    return-object v0
.end method

.method D(Landroid/content/Context;)Landroid/app/job/JobInfo$Builder;
    .locals 3

    .line 1
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    new-instance v1, Landroid/content/ComponentName;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-class v2, Lcom/hiya/stingray/data/sync/RemoteConfigSyncService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x2329

    invoke-direct {v0, p1, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget p1, Lcom/hiya/stingray/util/m;->a:I

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v1, p1

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method E(Landroid/content/Context;Lcom/hiya/stingray/manager/x3;)Landroid/app/job/JobInfo$Builder;
    .locals 5

    const-string v0, "jitter_request_queue_min"

    .line 1
    invoke-virtual {p2, v0}, Lcom/hiya/stingray/manager/x3;->l(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v1, v0

    const-string v0, "period_request_queue_hrs"

    .line 2
    invoke-virtual {p2, v0}, Lcom/hiya/stingray/manager/x3;->l(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int p2, v2

    .line 3
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const v1, 0xea60

    mul-int v0, v0, v1

    int-to-long v0, v0

    .line 4
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    new-instance v3, Landroid/content/ComponentName;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-class v4, Lcom/hiya/stingray/data/sync/RequestsQueueService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x232a

    invoke-direct {v2, p1, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const p1, 0x36ee80

    mul-int p2, p2, p1

    int-to-long p1, p2

    add-long/2addr p1, v0

    .line 6
    invoke-virtual {v2, p1, p2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 7
    invoke-virtual {p1, p2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method a()Li/c/b0/c/a;
    .locals 1

    .line 1
    new-instance v0, Li/c/b0/c/a;

    invoke-direct {v0}, Li/c/b0/c/a;-><init>()V

    return-object v0
.end method

.method b()Landroid/app/Application;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/s/e/m;->a:Landroid/app/Application;

    return-object v0
.end method

.method c(Landroid/content/Context;)Landroid/app/job/JobInfo$Builder;
    .locals 3

    .line 1
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    new-instance v1, Landroid/content/ComponentName;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-class v2, Lcom/hiya/stingray/data/sync/CallerGridRankingService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x232d

    invoke-direct {v0, p1, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget p1, Lcom/hiya/stingray/util/m;->c:I

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v1, p1

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method d()Lcom/hiya/stingray/manager/v1;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/v1;

    invoke-direct {v0}, Lcom/hiya/stingray/manager/v1;-><init>()V

    return-object v0
.end method

.method e()Lg/g/b/a/a;
    .locals 8

    .line 1
    new-instance v7, Lg/g/b/a/a;

    invoke-static {}, Lcom/hiya/stingray/util/p;->k()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v6, Lg/g/b/a/g/b/a;

    sget-object v0, Lg/g/b/a/g/b/a$a;->WIFI_ONLY:Lg/g/b/a/g/b/a$a;

    const/4 v2, 0x1

    invoke-direct {v6, v2, v0}, Lg/g/b/a/g/b/a;-><init>(ZLg/g/b/a/g/b/a$a;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lg/g/b/a/a;-><init>(Ljava/lang/String;ZZZLjava/lang/Boolean;Lg/g/b/a/g/b/a;)V

    return-object v7
.end method

.method f()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/s/e/m;->a:Landroid/app/Application;

    return-object v0
.end method

.method g(Lcom/hiya/stingray/manager/n2;)Lcom/hiya/stingray/manager/b2;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/b2;

    invoke-direct {v0, p1}, Lcom/hiya/stingray/manager/b2;-><init>(Lcom/hiya/stingray/manager/n2;)V

    return-object v0
.end method

.method h()Lcom/hiya/stingray/q/b/w;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/q/b/w;

    iget-object v1, p0, Lcom/hiya/stingray/s/e/m;->a:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/hiya/stingray/q/b/w;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method i(Lcom/hiya/stingray/q/d/f;)Lcom/hiya/stingray/manager/o2;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/o2;

    invoke-direct {v0, p1}, Lcom/hiya/stingray/manager/o2;-><init>(Lcom/hiya/stingray/q/d/f;)V

    return-object v0
.end method

.method j(Landroid/app/Application;)Lcom/hiya/stingray/manager/n2;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/n2;

    invoke-direct {v0, p1}, Lcom/hiya/stingray/manager/n2;-><init>(Landroid/app/Application;)V

    return-object v0
.end method

.method k(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "phone"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 3
    :goto_0
    invoke-static {p1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/hiya/stingray/util/p;->l()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method l(Landroid/content/Context;)Lcom/hiya/stingray/q/d/e;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/hiya/stingray/q/d/e;

    new-instance v1, Lcom/hiya/stingray/q/d/b;

    invoke-direct {v1, p1}, Lcom/hiya/stingray/q/d/b;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/hiya/stingray/q/d/e;-><init>(Lcom/hiya/stingray/q/d/c;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/hiya/stingray/q/d/e;

    new-instance v1, Lcom/hiya/stingray/q/d/d;

    invoke-direct {v1, p1}, Lcom/hiya/stingray/q/d/d;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/hiya/stingray/q/d/e;-><init>(Lcom/hiya/stingray/q/d/c;)V

    :goto_0
    return-object v0
.end method

.method m()Lcom/hiya/stingray/q/a/k;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/q/a/l;

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hiya/stingray/q/a/l;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    return-object v0
.end method

.method n(Lcom/hiya/stingray/manager/x3;)Lcom/hiya/stingray/h;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/h;

    invoke-direct {v0, p1}, Lcom/hiya/stingray/h;-><init>(Lcom/hiya/stingray/manager/x3;)V

    return-object v0
.end method

.method o()Lcom/google/android/gms/location/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/s/e/m;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/google/android/gms/location/d;->a(Landroid/content/Context;)Lcom/google/android/gms/location/a;

    move-result-object v0

    return-object v0
.end method

.method p()Landroid/location/Geocoder;
    .locals 2

    .line 1
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/hiya/stingray/s/e/m;->a:Landroid/app/Application;

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method q(Landroid/content/Context;Lcom/hiya/stingray/j;Lg/g/b/a/a;)Lg/g/b/a/b;
    .locals 1

    .line 1
    sget-object v0, Lg/g/b/a/b;->o:Lg/g/b/a/b$a;

    invoke-virtual {v0, p1, p2}, Lg/g/b/a/b$a;->a(Landroid/content/Context;Lg/g/a/b/j1/c;)Lg/g/b/a/b;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p3}, Lg/g/b/a/b;->H(Lg/g/b/a/a;)V

    return-object p1
.end method

.method r()Lcom/hiya/stingray/j;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/j;

    iget-object v1, p0, Lcom/hiya/stingray/s/e/m;->a:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/hiya/stingray/j;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/HiyaApplication;

    invoke-virtual {v1}, Lcom/hiya/stingray/HiyaApplication;->c()Lcom/hiya/stingray/s/d/h;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/hiya/stingray/s/d/h;->q(Lcom/hiya/stingray/j;)V

    return-object v0
.end method

.method s(Landroid/app/job/JobInfo$Builder;Landroid/app/job/JobInfo$Builder;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/job/JobInfo$Builder;",
            "Landroid/app/job/JobInfo$Builder;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/job/JobInfo$Builder;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/g0;->e()Ljava/util/HashMap;

    move-result-object v0

    const/16 v1, 0x232a

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x2329

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method t(Landroid/content/Context;Lcom/hiya/stingray/q/d/a;Lcom/hiya/stingray/manager/x3;Ljava/util/Map;Landroid/app/job/JobScheduler;Lcom/hiya/stingray/util/a0;Lcom/hiya/stingray/manager/i1;)Lcom/hiya/stingray/manager/v2;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/hiya/stingray/q/d/a;",
            "Lcom/hiya/stingray/manager/x3;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/job/JobInfo$Builder;",
            ">;",
            "Landroid/app/job/JobScheduler;",
            "Lcom/hiya/stingray/util/a0;",
            "Lcom/hiya/stingray/manager/i1;",
            ")",
            "Lcom/hiya/stingray/manager/v2;"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/hiya/stingray/manager/v2;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/hiya/stingray/manager/v2;-><init>(Landroid/content/Context;Lcom/hiya/stingray/q/d/a;Lcom/hiya/stingray/manager/x3;Ljava/util/Map;Landroid/app/job/JobScheduler;Lcom/hiya/stingray/util/a0;Lcom/hiya/stingray/manager/i1;)V

    return-object v8
.end method

.method u()Landroid/app/job/JobScheduler;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/s/e/m;->a:Landroid/app/Application;

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    return-object v0
.end method

.method v()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/hiya/stingray/util/p;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method w()Lcom/hiya/stingray/manager/i3;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/i3;

    invoke-direct {v0}, Lcom/hiya/stingray/manager/i3;-><init>()V

    return-object v0
.end method

.method x(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;
    .locals 2

    .line 1
    new-instance v0, Lcom/squareup/picasso/Picasso$b;

    invoke-direct {v0, p1}, Lcom/squareup/picasso/Picasso$b;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/squareup/picasso/s;

    invoke-direct {v1, p1}, Lcom/squareup/picasso/s;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso$b;->c(Lcom/squareup/picasso/j;)Lcom/squareup/picasso/Picasso$b;

    .line 3
    invoke-virtual {v0}, Lcom/squareup/picasso/Picasso$b;->a()Lcom/squareup/picasso/Picasso;

    move-result-object p1

    return-object p1
.end method

.method y(Landroid/content/Context;Lcom/hiya/stingray/q/d/a;Lcom/hiya/stingray/util/a0;)Lcom/hiya/stingray/manager/x3;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/x3;

    invoke-direct {v0, p1, p2, p3}, Lcom/hiya/stingray/manager/x3;-><init>(Landroid/content/Context;Lcom/hiya/stingray/q/d/a;Lcom/hiya/stingray/util/a0;)V

    return-object v0
.end method

.method z()Lcom/hiya/stingray/util/a0;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/util/a0;

    invoke-direct {v0}, Lcom/hiya/stingray/util/a0;-><init>()V

    return-object v0
.end method
