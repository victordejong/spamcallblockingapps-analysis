.class public Lcom/appnext/core/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/core/q$a;
    }
.end annotation


# instance fields
.field private banner:Ljava/lang/String;

.field private click:Lcom/appnext/core/f;

.field private context:Landroid/content/Context;

.field private da:Ljava/lang/String;

.field private el:Lcom/appnext/core/q$a;

.field private em:Lcom/appnext/core/f$a;

.field private guid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/appnext/core/q$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/appnext/core/q;->da:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/appnext/core/q;->guid:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/appnext/core/q;->banner:Ljava/lang/String;

    .line 5
    new-instance v0, Lcom/appnext/core/q$3;

    invoke-direct {v0, p0}, Lcom/appnext/core/q$3;-><init>(Lcom/appnext/core/q;)V

    iput-object v0, p0, Lcom/appnext/core/q;->em:Lcom/appnext/core/f$a;

    .line 6
    iput-object p1, p0, Lcom/appnext/core/q;->context:Landroid/content/Context;

    .line 7
    invoke-static {p1}, Lcom/appnext/core/f;->f(Landroid/content/Context;)Lcom/appnext/core/f;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/core/q;->click:Lcom/appnext/core/f;

    .line 8
    iput-object p2, p0, Lcom/appnext/core/q;->el:Lcom/appnext/core/q$a;

    return-void
.end method

.method public static synthetic a(Lcom/appnext/core/q;)Lcom/appnext/core/f$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/core/q;->em:Lcom/appnext/core/f$a;

    return-object p0
.end method

.method public static synthetic a(Lcom/appnext/core/q;Ljava/lang/String;)V
    .locals 2

    .line 32
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 34
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 35
    iget-object p0, p0, Lcom/appnext/core/q;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic b(Lcom/appnext/core/q;)Lcom/appnext/core/q$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/core/q;->el:Lcom/appnext/core/q$a;

    return-object p0
.end method

.method public static synthetic c(Lcom/appnext/core/q;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/core/q;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/appnext/core/AppnextAd;Ljava/lang/String;Lcom/appnext/core/f$a;)V
    .locals 1

    .line 4
    iget-object p2, p0, Lcom/appnext/core/q;->click:Lcom/appnext/core/f;

    if-nez p2, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/appnext/core/o;->az()Lcom/appnext/core/o;

    move-result-object p3

    new-instance v0, Lcom/appnext/core/f$6;

    invoke-direct {v0, p2, p1}, Lcom/appnext/core/f$6;-><init>(Lcom/appnext/core/f;Lcom/appnext/core/AppnextAd;)V

    invoke-virtual {p3, v0}, Lcom/appnext/core/o;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/appnext/core/AppnextAd;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/core/f$a;)V
    .locals 9

    const-string v0, "UserAction$doClick"

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/appnext/core/q;->aB()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p3, Lcom/appnext/core/q$1;

    invoke-direct {p3, p0, p2, p4}, Lcom/appnext/core/q$1;-><init>(Lcom/appnext/core/q;Ljava/lang/String;Lcom/appnext/core/f$a;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 8
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/appnext/core/q;->da:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/appnext/core/q;->da:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getAdPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_3

    .line 9
    :try_start_2
    iget-object p1, p0, Lcom/appnext/core/q;->context:Landroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "https://admin.appnext.com/AdminService.asmx/SetRL?guid="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appnext/core/q;->guid:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&bid="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appnext/core/q;->banner:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&pid="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/appnext/core/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 10
    :try_start_3
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/appnext/core/q;->em:Lcom/appnext/core/f$a;

    iget-object p2, p0, Lcom/appnext/core/q;->da:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/appnext/core/f$a;->onMarket(Ljava/lang/String;)V

    if-eqz p4, :cond_2

    .line 12
    iget-object p1, p0, Lcom/appnext/core/q;->da:Ljava/lang/String;

    invoke-interface {p4, p1}, Lcom/appnext/core/f$a;->onMarket(Ljava/lang/String;)V

    :cond_2
    const-string p1, ""

    .line 13
    iput-object p1, p0, Lcom/appnext/core/q;->da:Ljava/lang/String;

    goto/16 :goto_2

    .line 14
    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "click url "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&device="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/appnext/core/g;->au()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getWebview()Ljava/lang/String;

    move-result-object p2

    const/4 p3, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v1, "2"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p3, 0x0

    goto :goto_1

    :pswitch_1
    const-string v1, "1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    move p3, v2

    goto :goto_1

    :pswitch_2
    const-string v1, "0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p3, 0x2

    :cond_4
    :goto_1
    if-eqz p3, :cond_7

    if-eq p3, v2, :cond_6

    .line 17
    iget-object v1, p0, Lcom/appnext/core/q;->click:Lcom/appnext/core/f;

    if-nez v1, :cond_5

    return-void

    .line 18
    :cond_5
    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getAppURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getMarketUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/appnext/core/q$2;

    invoke-direct {v6, p0, p4}, Lcom/appnext/core/q$2;-><init>(Lcom/appnext/core/q;Lcom/appnext/core/f$a;)V

    iget-object p1, p0, Lcom/appnext/core/q;->el:Lcom/appnext/core/q$a;

    .line 19
    invoke-interface {p1}, Lcom/appnext/core/q$a;->e()Lcom/appnext/core/SettingsManager;

    move-result-object p1

    const-string p2, "resolve_timeout"

    invoke-virtual {p1, p2}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    mul-long v7, p1, p3

    .line 20
    invoke-virtual/range {v1 .. v8}, Lcom/appnext/core/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/core/f$a;J)V

    goto :goto_3

    .line 21
    :cond_6
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/appnext/core/q;->context:Landroid/content/Context;

    const-class v1, Lcom/appnext/core/ResultActivity;

    invoke-direct {p2, p3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "url"

    .line 22
    invoke-virtual {p2, p3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "title"

    .line 23
    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getAdTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 24
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 25
    iget-object p1, p0, Lcom/appnext/core/q;->context:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    if-eqz p4, :cond_9

    .line 26
    invoke-interface {p4, v4}, Lcom/appnext/core/f$a;->onMarket(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    .line 27
    :cond_7
    :try_start_4
    iget-object p1, p0, Lcom/appnext/core/q;->em:Lcom/appnext/core/f$a;

    invoke-interface {p1, v4}, Lcom/appnext/core/f$a;->onMarket(Ljava/lang/String;)V

    if-eqz p4, :cond_8

    .line 28
    invoke-interface {p4, v4}, Lcom/appnext/core/f$a;->onMarket(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 29
    :try_start_5
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    .line 30
    :try_start_6
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_8
    :goto_2
    return-void

    :catchall_3
    move-exception p1

    .line 31
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    move-object v0, p0

    .line 2
    iget-object v2, v0, Lcom/appnext/core/q;->click:Lcom/appnext/core/f;

    if-nez v2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/appnext/core/o;->az()Lcom/appnext/core/o;

    move-result-object v9

    new-instance v10, Lcom/appnext/core/f$7;

    move-object v1, v10

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/appnext/core/f$7;-><init>(Lcom/appnext/core/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/appnext/core/o;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final aB()Z
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/q;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/appnext/core/q;->context:Landroid/content/Context;

    const-string v1, "http://www.appnext.com/myid.html"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/appnext/core/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/appnext/core/q;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 4
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const/4 v0, 0x1

    return v0

    .line 6
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "UserAction$checkConnection"

    .line 7
    invoke-static {v1, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final c(Lcom/appnext/core/AppnextAd;Lcom/appnext/core/f$a;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/appnext/core/q;->click:Lcom/appnext/core/f;

    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getMarketUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/appnext/core/f;->a(Ljava/lang/String;Lcom/appnext/core/f$a;)V

    return-void
.end method

.method public final d(Lcom/appnext/core/AppnextAd;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/q;->click:Lcom/appnext/core/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/appnext/core/f;->d(Lcom/appnext/core/AppnextAd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "UserAction$adImpression"

    .line 3
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final destroy()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/appnext/core/q;->context:Landroid/content/Context;

    .line 2
    iget-object v1, p0, Lcom/appnext/core/q;->click:Lcom/appnext/core/f;

    if-eqz v1, :cond_0

    .line 3
    iput-object v0, p0, Lcom/appnext/core/q;->click:Lcom/appnext/core/f;

    :cond_0
    return-void
.end method
