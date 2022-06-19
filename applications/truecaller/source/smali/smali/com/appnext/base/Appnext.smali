.class public Lcom/appnext/base/Appnext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final bN:Lcom/appnext/base/Appnext;


# instance fields
.field private bM:Landroid/content/Context;

.field private bO:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/appnext/base/Appnext;

    invoke-direct {v0}, Lcom/appnext/base/Appnext;-><init>()V

    sput-object v0, Lcom/appnext/base/Appnext;->bN:Lcom/appnext/base/Appnext;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/appnext/base/Appnext;->bM:Landroid/content/Context;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/appnext/base/Appnext;->bO:Z

    return-void
.end method

.method public static synthetic a(Lcom/appnext/base/Appnext;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/base/Appnext;->bM:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic a(Lcom/appnext/base/Appnext;Z)Z
    .locals 0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/appnext/base/Appnext;->bO:Z

    return p1
.end method

.method public static synthetic b(Lcom/appnext/base/Appnext;)V
    .locals 3

    const-string v0, "google_ads_id"

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/appnext/base/Appnext;->bM:Landroid/content/Context;

    const/4 v1, 0x1

    .line 2
    invoke-static {p0, v1}, Lcom/appnext/core/g;->b(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/appnext/base/b/b;->ak()Lcom/appnext/base/b/b;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/appnext/base/b/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lcom/appnext/base/b/b;->ak()Lcom/appnext/base/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/base/b/b;->al()V

    .line 6
    invoke-static {}, Lcom/appnext/base/b/b;->ak()Lcom/appnext/base/b/b;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/appnext/base/b/b;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "Appnext$checkAdsID"

    .line 7
    invoke-static {v0, p0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/appnext/base/Appnext;->bN:Lcom/appnext/base/Appnext;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-boolean v1, v0, Lcom/appnext/base/Appnext;->bO:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/appnext/base/Appnext;->bM:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iput-object p0, v0, Lcom/appnext/base/Appnext;->bM:Landroid/content/Context;

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/appnext/base/Appnext;->bO:Z

    .line 5
    invoke-static {p0}, Lcom/appnext/base/b/a;->init(Landroid/content/Context;)V

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iput-object p0, v0, Lcom/appnext/base/Appnext;->bM:Landroid/content/Context;

    .line 7
    invoke-static {}, Lcom/appnext/core/o;->az()Lcom/appnext/core/o;

    move-result-object p0

    new-instance v1, Lcom/appnext/base/Appnext$1;

    invoke-direct {v1, v0}, Lcom/appnext/base/Appnext$1;-><init>(Lcom/appnext/base/Appnext;)V

    invoke-virtual {p0, v1}, Lcom/appnext/core/o;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "Appnext$libInit"

    .line 8
    invoke-static {v0, p0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/appnext/base/b/a;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v0, 0x38b6c01a

    if-ne p0, v0, :cond_1

    const-string p0, "isAidDisabled"

    .line 3
    sget-object v0, Lcom/appnext/base/moments/b/b$a;->Boolean:Lcom/appnext/base/moments/b/b$a;

    invoke-static {p0, p1, v0}, Lcom/appnext/base/moments/b/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/appnext/base/moments/b/b$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    const-string p1, "Appnext$setParam"

    .line 4
    invoke-static {p1, p0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
