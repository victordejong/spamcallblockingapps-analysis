.class public final Ly2;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Ly2;->b:I

    iput-object p2, p0, Ly2;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Ly2;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    throw v3

    .line 1
    :pswitch_0
    iget-object v1, p0, Ly2;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a4/i0;

    .line 2
    iget-object v1, v1, Le/a/a4/i0;->N:Lo3/a;

    .line 3
    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v1}, Le/a/k0/a/e;->H()V

    return-object v0

    .line 4
    :pswitch_1
    iget-object v1, p0, Ly2;->c:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/TrueApp;

    new-instance v2, Lcom/truecaller/util/ScreenUnlockedBroadcastReceiver;

    invoke-direct {v2}, Lcom/truecaller/util/ScreenUnlockedBroadcastReceiver;-><init>()V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.USER_PRESENT"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-object v0

    .line 5
    :pswitch_2
    sput-boolean v4, Le/a/c/p/a;->a:Z

    .line 6
    iget-object v1, p0, Ly2;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a4/i0;

    .line 7
    iget-object v1, v1, Le/a/a4/i0;->R:Le/a/c4/d;

    .line 8
    sput-object v1, Le/a/c/p/a;->b:Le/a/c4/d;

    .line 9
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 10
    new-instance v2, Le/a/s3/a;

    .line 11
    iget-object v3, p0, Ly2;->c:Ljava/lang/Object;

    check-cast v3, Le/a/a4/i0;

    .line 12
    iget-object v3, v3, Le/a/a4/i0;->R:Le/a/c4/d;

    .line 13
    sget-object v4, Le/a/a4/u;->h:Ls1/a/g;

    .line 14
    invoke-direct {v2, v1, v3, v4}, Le/a/s3/a;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Le/a/c4/d;Ls1/z/b/a;)V

    .line 15
    invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-object v0

    .line 16
    :pswitch_3
    iget-object v1, p0, Ly2;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a4/i0;

    .line 17
    iget-object v1, v1, Le/a/a4/i0;->z:Lo3/a;

    .line 18
    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/f;

    invoke-interface {v1}, Le/a/d/f;->c()V

    return-object v0

    .line 19
    :pswitch_4
    iget-object v1, p0, Ly2;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a4/i0;

    .line 20
    iget-object v1, v1, Le/a/a4/i0;->y:Lo3/a;

    .line 21
    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/clevertap/CleverTapManager;

    invoke-interface {v1}, Lcom/truecaller/clevertap/CleverTapManager;->initWithoutActivityLifeCycleCallBacks()V

    .line 22
    iget-object v1, p0, Ly2;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a4/i0;

    .line 23
    iget-object v1, v1, Le/a/a4/i0;->H:Lo3/a;

    .line 24
    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b0/o/a;

    const-string v3, "shouldInitClevertapSDK"

    invoke-interface {v1, v3, v2}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    .line 25
    :pswitch_5
    sget-object v1, Le/a/b/f;->b:Le/a/b/f;

    iget-object v1, p0, Ly2;->c:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/TrueApp;

    .line 26
    sget-object v2, Le/a/b/f;->a:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/b/e;

    .line 27
    instance-of v4, v2, Le/a/b/g;

    if-nez v4, :cond_0

    move-object v2, v3

    :cond_0
    check-cast v2, Le/a/b/g;

    if-eqz v2, :cond_3

    .line 28
    instance-of v4, v1, Landroid/content/Context;

    if-nez v4, :cond_1

    move-object v1, v3

    :cond_1
    if-eqz v1, :cond_2

    invoke-static {v1}, Le/a/n/g0;->l(Landroid/content/Context;)Le/a/b/a/g/b;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_3

    .line 29
    check-cast v3, Le/a/b/a/g/e;

    .line 30
    iget-object v1, v3, Le/a/b/a/g/e;->j:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b/p/c;

    .line 31
    iput-object v1, v2, Le/a/b/g;->a:Le/a/b/p/c;

    .line 32
    iget-object v1, v3, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v1}, Le/a/b0/c;->i5()Le/a/u3/g;

    move-result-object v1

    const-string v4, "Cannot return null from a non-@Nullable component method"

    .line 33
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    iget-object v1, v3, Le/a/b/a/g/e;->c:Le/a/p5/o0;

    invoke-interface {v1}, Le/a/p5/o0;->i()Le/a/p5/c0;

    move-result-object v1

    .line 35
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    iput-object v1, v2, Le/a/b/g;->b:Le/a/p5/c0;

    :cond_3
    return-object v0

    .line 37
    :pswitch_6
    iget-object v1, p0, Ly2;->c:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/TrueApp;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "tc.settings"

    .line 38
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Le/a/n/g0;->a:Landroid/content/SharedPreferences;

    .line 39
    iget-object v1, p0, Ly2;->c:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/TrueApp;

    invoke-static {v1}, Le/a/j4/b/a/h;->n(Landroid/content/Context;)V

    return-object v0

    .line 40
    :pswitch_7
    iget-object v1, p0, Ly2;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a4/i0;

    .line 41
    iget-object v1, v1, Le/a/a4/i0;->t:Lo3/a;

    .line 42
    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/c/i/h/a;

    invoke-interface {v1}, Le/a/c/i/h/a;->a()V

    return-object v0

    .line 43
    :pswitch_8
    iget-object v1, p0, Ly2;->c:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/TrueApp;

    .line 44
    sget v3, Lcom/truecaller/common/tag/TagService;->a:I

    .line 45
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "action"

    .line 46
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/truecaller/common/tag/TagService;

    sget v4, Lcom/truecaller/common/R$id;->tag_service_job_id:I

    invoke-static {v1, v2, v4, v3}, Ln3/k/a/i;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-object v0

    .line 48
    :pswitch_9
    iget-object v1, p0, Ly2;->c:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/TrueApp;

    const-string v2, "trueApp"

    .line 49
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v4, Lq3/a/h1;->a:Lq3/a/h1;

    invoke-virtual {v1}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v2

    invoke-interface {v2}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v5

    const-string v2, "trueApp.objectsGraph.asyncIoCoroutineContext()"

    invoke-static {v5, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Le/a/y4/g/h;

    invoke-direct {v7, v1, v3}, Le/a/y4/g/h;-><init>(Lcom/truecaller/TrueApp;Ls1/w/d;)V

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-object v0

    .line 51
    :pswitch_a
    iget-object v1, p0, Ly2;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a4/i0;

    .line 52
    iget-object v1, v1, Le/a/a4/i0;->s:Lo3/a;

    .line 53
    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l/p2/l;

    invoke-interface {v1}, Le/a/l/p2/l;->init()V

    return-object v0

    .line 54
    :pswitch_b
    iget-object v1, p0, Ly2;->c:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/TrueApp;

    invoke-static {v1}, Lcom/truecaller/presence/RingerModeListenerWorker;->n(Landroid/content/Context;)V

    return-object v0

    .line 55
    :pswitch_c
    iget-object v1, p0, Ly2;->c:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/TrueApp;

    .line 56
    sget v2, Lcom/truecaller/clipboard/ClipboardService;->g:I

    .line 57
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/truecaller/clipboard/ClipboardService;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0

    .line 58
    :pswitch_d
    sget-object v1, Le/a/o5/o;->g:Le/a/o5/o$a;

    iget-object v2, p0, Ly2;->c:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/TrueApp;

    invoke-virtual {v1, v2}, Le/a/o5/o$a;->a(Landroid/content/Context;)V

    return-object v0

    .line 59
    :pswitch_e
    iget-object v1, p0, Ly2;->c:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/TrueApp;

    invoke-static {v1}, Lcom/truecaller/callerid/callstate/CallStateService;->b(Landroid/content/Context;)V

    return-object v0

    .line 60
    :pswitch_f
    iget-object v1, p0, Ly2;->c:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/TrueApp;

    .line 61
    sget-boolean v2, Ls3/a/a/a/a;->a:Z

    if-eqz v2, :cond_4

    goto :goto_0

    .line 62
    :cond_4
    sput-boolean v4, Ls3/a/a/a/a;->a:Z

    .line 63
    :try_start_1
    new-instance v2, Ls3/a/a/a/c;

    invoke-direct {v2, v1}, Ls3/a/a/a/c;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 65
    new-instance v4, Lw3/b/a/o;

    const-string v5, "DateTimeZone.setProvider"

    invoke-direct {v4, v5}, Lw3/b/a/o;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 66
    :cond_5
    invoke-static {v2}, Lw3/b/a/g;->u(Lw3/b/a/j0/i;)Lw3/b/a/j0/i;

    .line 67
    sget-object v3, Lw3/b/a/g;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ls3/a/a/a/d;

    invoke-direct {v2}, Ls3/a/a/a/d;-><init>()V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-object v0

    :catch_1
    move-exception v0

    .line 70
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not read ZoneInfoMap. You are probably using Proguard wrong."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 71
    :pswitch_10
    iget-object v1, p0, Ly2;->c:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/TrueApp;

    invoke-static {v1}, Le/m/d/g;->e(Landroid/content/Context;)Le/m/d/g;

    return-object v0

    .line 72
    :pswitch_11
    iget-object v1, p0, Ly2;->c:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/TrueApp;

    invoke-static {v1}, Le/a/j4/b/a/h;->D(Landroid/content/Context;)V

    return-object v0

    .line 73
    :pswitch_12
    :try_start_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 74
    iget-object v2, p0, Ly2;->c:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    check-cast v2, Lcom/truecaller/TrueApp;

    :try_start_3
    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "app.resources"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 76
    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 77
    :cond_6
    sget-object v2, Le/a/j4/b/a/c;->d:Ljava/util/Locale;

    if-nez v2, :cond_7

    .line 78
    sput-object v1, Le/a/j4/b/a/c;->d:Ljava/util/Locale;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    .line 79
    invoke-static {v1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    return-object v0

    .line 80
    :pswitch_13
    sget-object v1, Le/a/i5/a;->g:Le/a/i5/a;

    iget-object v1, p0, Ly2;->c:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/TrueApp;

    const-string v2, "context"

    .line 81
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "context.resources"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    const-string v4, "context.resources.configuration"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v2, Le/a/i5/a;->f:Landroid/content/res/Configuration;

    .line 83
    new-instance v2, Le/a/i5/c;

    invoke-direct {v2, v1}, Le/a/i5/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Le/a/p5/t0/a;->n3(Landroid/content/Context;)V

    sput-object v2, Le/a/i5/a;->a:Le/a/i5/b;

    .line 84
    new-instance v2, Le/a/i5/d$c;

    const v5, 0x7f1303b7

    invoke-direct {v2, v5}, Le/a/i5/d$c;-><init>(I)V

    .line 85
    sget-object v6, Le/a/i5/a;->b:Ljava/util/Map;

    const-string v7, "INHERIT_BRIGHT"

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sput-object v2, Le/a/i5/a;->c:Le/a/i5/d;

    .line 87
    new-instance v2, Le/a/i5/d$d;

    const v7, 0x7f1303b0

    invoke-direct {v2, v7}, Le/a/i5/d$d;-><init>(I)V

    const-string v8, "INHERIT_DARK"

    .line 88
    invoke-interface {v6, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sput-object v2, Le/a/i5/a;->d:Le/a/i5/d;

    .line 90
    new-instance v2, Le/a/i5/d$a;

    invoke-direct {v2, v5}, Le/a/i5/d$a;-><init>(I)V

    const-string v5, "BRIGHT"

    .line 91
    invoke-interface {v6, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v2, Le/a/i5/d$b;

    invoke-direct {v2, v7}, Le/a/i5/d$b;-><init>(I)V

    const-string v5, "DARK"

    .line 93
    invoke-interface {v6, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sput-object v2, Le/a/i5/a;->e:Le/a/i5/d;

    .line 95
    invoke-static {}, Le/a/i5/a;->h()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 96
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/i5/a;->j(Landroid/content/res/Configuration;)V

    :cond_8
    return-object v0

    .line 97
    :pswitch_14
    iget-object v1, p0, Ly2;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a4/i0;

    .line 98
    iget-object v1, v1, Le/a/a4/i0;->Q:Le/a/b0/l/a;

    .line 99
    invoke-interface {v1}, Le/a/b0/l/a;->c()V

    return-object v0

    .line 100
    :pswitch_15
    sget-object v1, Le/a/o5/m0;->b:Le/a/o5/m0;

    iget-object v2, p0, Ly2;->c:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/TrueApp;

    const-string v3, "context"

    .line 101
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    sget-boolean v3, Le/a/o5/m0;->a:Z

    if-eqz v3, :cond_9

    goto :goto_2

    .line 103
    :cond_9
    monitor-enter v1

    .line 104
    :try_start_4
    sget-boolean v3, Le/a/o5/m0;->a:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_a

    .line 105
    monitor-exit v1

    goto :goto_2

    .line 106
    :cond_a
    :try_start_5
    invoke-static {v2}, Lcom/huawei/hms/aaid/init/AutoInitHelper;->doAutoInit(Landroid/content/Context;)V

    .line 107
    invoke-static {}, Lcom/huawei/agconnect/AGConnectInstance;->getInstance()Lcom/huawei/agconnect/AGConnectInstance;

    move-result-object v3

    if-nez v3, :cond_b

    .line 108
    invoke-static {v2}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->fromContext(Landroid/content/Context;)Lcom/huawei/agconnect/config/AGConnectServicesConfig;

    move-result-object v3

    .line 109
    new-instance v5, Le/a/o5/l0;

    invoke-direct {v5, v2, v2}, Le/a/o5/l0;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->overlayWith(Lcom/huawei/agconnect/config/LazyInputStream;)V

    .line 110
    invoke-static {v2}, Lcom/huawei/agconnect/AGConnectInstance;->initialize(Landroid/content/Context;)V

    .line 111
    :cond_b
    sput-boolean v4, Le/a/o5/m0;->a:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 112
    monitor-exit v1

    :goto_2
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
