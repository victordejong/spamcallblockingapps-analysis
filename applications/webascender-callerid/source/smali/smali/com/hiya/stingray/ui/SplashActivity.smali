.class public final Lcom/hiya/stingray/ui/SplashActivity;
.super Lcom/hiya/stingray/ui/common/e;
.source "SourceFile"


# instance fields
.field public r:Lcom/hiya/stingray/util/b0;

.field public s:Lcom/hiya/stingray/manager/x3;

.field public t:Lcom/hiya/stingray/manager/i1;

.field public u:Lcom/hiya/stingray/manager/i2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/e;-><init>()V

    return-void
.end method

.method public static final synthetic O(Lcom/hiya/stingray/ui/SplashActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/SplashActivity;->P()V

    return-void
.end method

.method private final P()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/SplashActivity;->u:Lcom/hiya/stingray/manager/i2;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/hiya/stingray/manager/i2;->d(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hiya/stingray/ui/LauncherActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const-string v0, "deepLinkingManager"

    .line 4
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/e;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/e;->z()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->d(Lcom/hiya/stingray/ui/SplashActivity;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/SplashActivity;->t:Lcom/hiya/stingray/manager/i1;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/i1;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/hiya/stingray/ui/SplashActivity;->s:Lcom/hiya/stingray/manager/x3;

    const-string v1, "remoteConfigManager"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/x3;->k()Z

    move-result p1

    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/SplashActivity;->s:Lcom/hiya/stingray/manager/x3;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lcom/hiya/stingray/manager/x3;->g(Lcom/hiya/stingray/manager/x3;Ljava/lang/Long;ILjava/lang/Object;)Li/c/b0/b/e;

    move-result-object p1

    const-wide/16 v0, 0x2

    .line 5
    invoke-virtual {p1, v0, v1}, Li/c/b0/b/e;->C(J)Li/c/b0/b/e;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    .line 6
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Li/c/b0/b/e;->I(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/e;

    move-result-object p1

    .line 7
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/e;->G(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object p1

    .line 8
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/e;->y(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object p1

    .line 9
    new-instance v0, Lcom/hiya/stingray/ui/SplashActivity$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/SplashActivity$a;-><init>(Lcom/hiya/stingray/ui/SplashActivity;)V

    .line 10
    new-instance v1, Lcom/hiya/stingray/ui/SplashActivity$b;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/SplashActivity$b;-><init>(Lcom/hiya/stingray/ui/SplashActivity;)V

    .line 11
    invoke-virtual {p1, v0, v1}, Li/c/b0/b/e;->E(Li/c/b0/d/a;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 12
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/e;->A()Li/c/b0/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_1
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_2
    invoke-direct {p0}, Lcom/hiya/stingray/ui/SplashActivity;->P()V

    :goto_0
    return-void

    :cond_3
    const-string p1, "appSettingsManager"

    .line 16
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0
.end method
