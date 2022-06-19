.class public Le/a/o5/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o5/f0;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/o5/g0;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public Q0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o5/g0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Le/a/b0/g/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o5/g0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Le/a/b0/g/a;

    invoke-virtual {v0}, Le/a/b0/g/a;->W()Z

    move-result v0

    return v0
.end method

.method public b()J
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/o5/g0;->a:Landroid/content/Context;

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public c()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/truecaller/util/CallMonitoringReceiver;->a:Ljava/lang/String;

    .line 2
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/o5/g0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 5
    :goto_0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs e(Landroid/content/BroadcastReceiver;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o5/g0;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Le/a/p5/s0/g;->Y0(Landroid/content/Context;Landroid/content/BroadcastReceiver;[Ljava/lang/String;)V

    return-void
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o5/g0;->a:Landroid/content/Context;

    invoke-static {v0}, Le/a/b0/q/n;->e(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 3

    .line 1
    sget v0, Lcom/truecaller/notifications/NotificationHandlerService;->j:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public h(Landroid/content/BroadcastReceiver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o5/g0;->a:Landroid/content/Context;

    invoke-static {v0}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Ln3/x/a/a;->e(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/o5/g0;->a:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public j(Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o5/g0;->a:Landroid/content/Context;

    invoke-static {v0}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Ln3/x/a/a;->d(Landroid/content/Intent;)Z

    return-void
.end method

.method public k(JLjava/lang/String;Z)Landroid/net/Uri;
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Le/a/e/a2;->A(JLjava/lang/String;Z)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o5/g0;->a:Landroid/content/Context;

    invoke-static {v0, p2, p1}, Le/a/e/a2;->d0(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public m()Z
    .locals 1

    const-string v0, "initialContactsSyncComplete"

    .line 1
    invoke-static {v0}, Le/a/j4/b/a/h;->o(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public n()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/o5/g0;->a:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    return v0
.end method
