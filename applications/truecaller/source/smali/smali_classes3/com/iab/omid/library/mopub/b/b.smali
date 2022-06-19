.class public Lcom/iab/omid/library/mopub/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iab/omid/library/mopub/b/b$a;
    }
.end annotation


# static fields
.field private static a:Lcom/iab/omid/library/mopub/b/b;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/content/BroadcastReceiver;

.field private d:Z

.field private e:Z

.field private f:Lcom/iab/omid/library/mopub/b/b$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iab/omid/library/mopub/b/b;

    invoke-direct {v0}, Lcom/iab/omid/library/mopub/b/b;-><init>()V

    sput-object v0, Lcom/iab/omid/library/mopub/b/b;->a:Lcom/iab/omid/library/mopub/b/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/iab/omid/library/mopub/b/b;
    .locals 1

    sget-object v0, Lcom/iab/omid/library/mopub/b/b;->a:Lcom/iab/omid/library/mopub/b/b;

    return-object v0
.end method

.method public static synthetic a(Lcom/iab/omid/library/mopub/b/b;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iab/omid/library/mopub/b/b;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/iab/omid/library/mopub/b/b;->e:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/iab/omid/library/mopub/b/b;->e:Z

    iget-boolean p1, p0, Lcom/iab/omid/library/mopub/b/b;->d:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/iab/omid/library/mopub/b/b;->g()V

    iget-object p1, p0, Lcom/iab/omid/library/mopub/b/b;->f:Lcom/iab/omid/library/mopub/b/b$a;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/iab/omid/library/mopub/b/b;->d()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/iab/omid/library/mopub/b/b$a;->a(Z)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    new-instance v0, Lcom/iab/omid/library/mopub/b/b$1;

    invoke-direct {v0, p0}, Lcom/iab/omid/library/mopub/b/b$1;-><init>(Lcom/iab/omid/library/mopub/b/b;)V

    iput-object v0, p0, Lcom/iab/omid/library/mopub/b/b;->c:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iab/omid/library/mopub/b/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/iab/omid/library/mopub/b/b;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/iab/omid/library/mopub/b/b;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/iab/omid/library/mopub/b/b;->c:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iab/omid/library/mopub/b/b;->c:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method private g()V
    .locals 3

    iget-boolean v0, p0, Lcom/iab/omid/library/mopub/b/b;->e:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {}, Lcom/iab/omid/library/mopub/b/a;->a()Lcom/iab/omid/library/mopub/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iab/omid/library/mopub/b/a;->b()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iab/omid/library/mopub/adsession/a;

    invoke-virtual {v2}, Lcom/iab/omid/library/mopub/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/mopub/publisher/AdSessionStatePublisher;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/iab/omid/library/mopub/publisher/AdSessionStatePublisher;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/iab/omid/library/mopub/b/b;->b:Landroid/content/Context;

    return-void
.end method

.method public a(Lcom/iab/omid/library/mopub/b/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/iab/omid/library/mopub/b/b;->f:Lcom/iab/omid/library/mopub/b/b$a;

    return-void
.end method

.method public b()V
    .locals 1

    invoke-direct {p0}, Lcom/iab/omid/library/mopub/b/b;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iab/omid/library/mopub/b/b;->d:Z

    invoke-direct {p0}, Lcom/iab/omid/library/mopub/b/b;->g()V

    return-void
.end method

.method public c()V
    .locals 1

    invoke-direct {p0}, Lcom/iab/omid/library/mopub/b/b;->f()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iab/omid/library/mopub/b/b;->d:Z

    iput-boolean v0, p0, Lcom/iab/omid/library/mopub/b/b;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iab/omid/library/mopub/b/b;->f:Lcom/iab/omid/library/mopub/b/b$a;

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iab/omid/library/mopub/b/b;->e:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
