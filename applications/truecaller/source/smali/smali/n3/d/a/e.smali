.class public Ln3/d/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lm3/a/a/b;

.field public final b:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Lm3/a/a/b;Landroid/content/ComponentName;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/d/a/e;->a:Lm3/a/a/b;

    .line 3
    iput-object p2, p0, Ln3/d/a/e;->b:Landroid/content/ComponentName;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ln3/d/a/g;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Ln3/d/a/g;->setApplicationContext(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/16 p1, 0x21

    .line 4
    invoke-virtual {p0, v0, p2, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public b(Ln3/d/a/b;)Ln3/d/a/h;
    .locals 4

    .line 1
    new-instance p1, Ln3/d/a/d;

    invoke-direct {p1, p0}, Ln3/d/a/d;-><init>(Ln3/d/a/e;)V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln3/d/a/e;->a:Lm3/a/a/b;

    invoke-interface {v1, p1}, Lm3/a/a/b;->i0(Lm3/a/a/a;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ln3/d/a/h;

    iget-object v2, p0, Ln3/d/a/e;->a:Lm3/a/a/b;

    iget-object v3, p0, Ln3/d/a/e;->b:Landroid/content/ComponentName;

    invoke-direct {v1, v2, p1, v3, v0}, Ln3/d/a/h;-><init>(Lm3/a/a/b;Lm3/a/a/a;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    move-object v0, v1

    :catch_0
    :goto_0
    return-object v0
.end method

.method public c(J)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Ln3/d/a/e;->a:Lm3/a/a/b;

    invoke-interface {v0, p1, p2}, Lm3/a/a/b;->Y(J)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
