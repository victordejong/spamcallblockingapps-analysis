.class public final Le/a/k0/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k0/a/j;


# instance fields
.field public final a:Landroid/content/ComponentName;

.field public final b:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/k0/a/k$a;

.field public final d:Le/a/o5/f0;

.field public final e:Landroid/content/Context;

.field public final f:Le/a/f/b;

.field public final g:Lcom/truecaller/settings/CallingSettings;

.field public final h:Le/a/p5/a0;


# direct methods
.method public constructor <init>(Le/a/o5/f0;Landroid/content/Context;Le/a/f/b;Lcom/truecaller/settings/CallingSettings;Le/a/p5/a0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "deviceManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inCallUi"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k0/a/k;->d:Le/a/o5/f0;

    iput-object p2, p0, Le/a/k0/a/k;->e:Landroid/content/Context;

    iput-object p3, p0, Le/a/k0/a/k;->f:Le/a/f/b;

    iput-object p4, p0, Le/a/k0/a/k;->g:Lcom/truecaller/settings/CallingSettings;

    iput-object p5, p0, Le/a/k0/a/k;->h:Le/a/p5/a0;

    .line 2
    new-instance p1, Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/truecaller/callrecording/service/TrueAccessibilityService;

    invoke-direct {p1, p2, p3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Le/a/k0/a/k;->a:Landroid/content/ComponentName;

    .line 3
    invoke-virtual {p0}, Le/a/k0/a/k;->d()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object p1

    iput-object p1, p0, Le/a/k0/a/k;->b:Lq3/a/x2/a1;

    .line 4
    new-instance p1, Le/a/k0/a/k$a;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Le/a/k0/a/k$a;-><init>(Le/a/k0/a/k;Landroid/os/Handler;)V

    iput-object p1, p0, Le/a/k0/a/k;->c:Le/a/k0/a/k$a;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k0/a/k;->d:Le/a/o5/f0;

    invoke-interface {v0}, Le/a/o5/f0;->a()Z

    move-result v0

    return v0
.end method

.method public c(Z)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 1
    :goto_0
    iget-object v1, p0, Le/a/k0/a/k;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context.applicationContext"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Le/a/k0/a/k;->a:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p1, v0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k0/a/k;->e:Landroid/content/Context;

    invoke-static {v0}, Le/a/n/g0;->Z(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k0/a/k;->f:Le/a/f/b;

    invoke-interface {v0}, Le/a/f/b;->f()Z

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k0/a/k;->h:Le/a/p5/a0;

    invoke-static {v0}, Le/a/d0/a/y;->g(Le/a/p5/a0;)I

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/k0/a/k;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context.applicationContext"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Le/a/k0/a/k;->a:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public i()V
    .locals 4

    const-string v0, "enabled_accessibility_services"

    .line 1
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/k0/a/k;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iget-object v3, p0, Le/a/k0/a/k;->c:Le/a/k0/a/k$a;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public j()Lq3/a/x2/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k0/a/k;->b:Lq3/a/x2/a1;

    return-object v0
.end method

.method public k()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/k0/a/k;->g:Lcom/truecaller/settings/CallingSettings;

    const-string v1, "callerIdLastYPosition"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/truecaller/settings/CallingSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
