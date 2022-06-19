.class public Lcom/appnext/core/AdsService;
.super Landroid/app/IntentService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/core/AdsService$a;
    }
.end annotation


# static fields
.field public static final ADD_PACK:I = 0x209c

.field public static final START_APP:I = 0x209a

.field private static cW:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/appnext/core/l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cX:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field public mMessenger:Landroid/os/Messenger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/appnext/core/AdsService;->cW:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "AdsService"

    .line 1
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/appnext/core/AdsService$a;

    invoke-direct {v1, p0}, Lcom/appnext/core/AdsService$a;-><init>(Lcom/appnext/core/AdsService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/appnext/core/AdsService;->mMessenger:Landroid/os/Messenger;

    .line 3
    new-instance v0, Lcom/appnext/core/AdsService$2;

    invoke-direct {v0, p0}, Lcom/appnext/core/AdsService$2;-><init>(Lcom/appnext/core/AdsService;)V

    iput-object v0, p0, Lcom/appnext/core/AdsService;->cX:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/appnext/core/AdsService;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/core/AdsService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic a(Lcom/appnext/core/AdsService;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/appnext/core/AdsService;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method public static synthetic a(Lcom/appnext/core/AdsService;Ljava/lang/String;)Z
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/appnext/core/AdsService;->r(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic aq()Ljava/util/HashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/appnext/core/AdsService;->cW:Ljava/util/HashMap;

    return-object v0
.end method

.method public static synthetic b(Lcom/appnext/core/AdsService;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/core/AdsService;->cX:Ljava/lang/Runnable;

    return-object p0
.end method

.method private r(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/IntentService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    .line 2
    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/appnext/core/l;)V
    .locals 2

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/appnext/core/o;->az()Lcom/appnext/core/o;

    move-result-object v0

    new-instance v1, Lcom/appnext/core/AdsService$1;

    invoke-direct {v1, p0, p1}, Lcom/appnext/core/AdsService$1;-><init>(Lcom/appnext/core/AdsService;Lcom/appnext/core/l;)V

    invoke-virtual {v0, v1}, Lcom/appnext/core/o;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addPack(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/appnext/core/AdsService;->cW:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/appnext/core/AdsService;->cW:Ljava/util/HashMap;

    .line 3
    :cond_0
    sget-object v0, Lcom/appnext/core/AdsService;->cW:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    sget-object v0, Lcom/appnext/core/AdsService;->cW:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appnext/core/l;

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/appnext/core/AdsService;->addPack(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void

    .line 6
    :cond_1
    iput-object p2, v0, Lcom/appnext/core/l;->dW:Landroid/os/Bundle;

    .line 7
    sget-object p2, Lcom/appnext/core/AdsService;->cW:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 8
    :cond_2
    new-instance p3, Lcom/appnext/core/l;

    invoke-direct {p3}, Lcom/appnext/core/l;-><init>()V

    .line 9
    iput-object p1, p3, Lcom/appnext/core/l;->dV:Ljava/lang/String;

    .line 10
    iput-object p2, p3, Lcom/appnext/core/l;->dW:Landroid/os/Bundle;

    .line 11
    sget-object p2, Lcom/appnext/core/AdsService;->cW:Ljava/util/HashMap;

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object p1, p0, Lcom/appnext/core/AdsService;->mHandler:Landroid/os/Handler;

    if-nez p1, :cond_3

    .line 13
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/appnext/core/AdsService;->mHandler:Landroid/os/Handler;

    .line 14
    iget-object p2, p0, Lcom/appnext/core/AdsService;->cX:Ljava/lang/Runnable;

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/appnext/core/AdsService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 2
    sget-object v0, Lcom/appnext/core/AdsService;->cW:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3
    iget-object v0, p0, Lcom/appnext/core/AdsService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    :cond_0
    iput-object v1, p0, Lcom/appnext/core/AdsService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "added_info"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x209c

    if-ne v0, v1, :cond_0

    const-string v0, "package"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "receiver"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    invoke-virtual {p0, v1, v2, v3}, Lcom/appnext/core/AdsService;->addPack(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Package added: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
