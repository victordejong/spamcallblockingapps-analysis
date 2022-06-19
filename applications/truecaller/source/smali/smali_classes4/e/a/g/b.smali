.class public final Le/a/g/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/g/e/e;


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Landroid/content/Context;

.field public final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/b0/e/r/a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/i/f0/d;

.field public final e:Le/a/i/f0/k/a;

.field public final f:Le/a/i/b0/a;

.field public final g:Le/a/u3/g;

.field public final h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/i/f0/a;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/i/f0/j/c;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/i/c/d/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljavax/inject/Provider;Le/a/i/f0/d;Le/a/i/f0/k/a;Le/a/i/b0/a;Le/a/u3/g;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljavax/inject/Provider<",
            "Le/a/b0/e/r/a;",
            ">;",
            "Le/a/i/f0/d;",
            "Le/a/i/f0/k/a;",
            "Le/a/i/b0/a;",
            "Le/a/u3/g;",
            "Ljavax/inject/Provider<",
            "Le/a/i/f0/a;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/i/f0/j/c;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/i/c/d/a;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "campaignReceiver"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adCampaignsManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsAnalyticsProvider"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitIdManagerProvider"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRouterProvider"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/g/b;->b:Landroid/content/Context;

    iput-object p2, p0, Le/a/g/b;->c:Ljavax/inject/Provider;

    iput-object p3, p0, Le/a/g/b;->d:Le/a/i/f0/d;

    iput-object p4, p0, Le/a/g/b;->e:Le/a/i/f0/k/a;

    iput-object p5, p0, Le/a/g/b;->f:Le/a/i/b0/a;

    iput-object p6, p0, Le/a/g/b;->g:Le/a/u3/g;

    iput-object p7, p0, Le/a/g/b;->h:Ljavax/inject/Provider;

    iput-object p8, p0, Le/a/g/b;->i:Ljavax/inject/Provider;

    iput-object p9, p0, Le/a/g/b;->j:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "afterCallScreen"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "popupAfterCallScreen2.0"

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "fullScreenAfterCallScreen"

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/g/b;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07026d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget-object v0, p0, Le/a/g/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "context.resources"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v0

    const/high16 v0, 0x437a0000    # 250.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public b(Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/ads/campaigns/AdCampaigns;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/g/b$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/g/b$a;

    iget v1, v0, Le/a/g/b$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/g/b$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/g/b$a;

    invoke-direct {v0, p0, p1}, Le/a/g/b$a;-><init>(Le/a/g/b;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/g/b$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/g/b$a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    :goto_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/g/b;->g:Le/a/u3/g;

    invoke-virtual {p1}, Le/a/u3/g;->O()Le/a/u3/b;

    move-result-object p1

    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    const-string v2, ""

    const-string v5, "profileNumber"

    const-string v6, "AFTERCALL"

    if-eqz p1, :cond_5

    iput v4, v0, Le/a/g/b$a;->e:I

    .line 5
    sget-object p1, Le/a/i/b0/d/a;->h:Le/a/i/b0/d/a$b;

    .line 6
    new-instance p1, Le/a/i/b0/d/a$a;

    invoke-direct {p1}, Le/a/i/b0/d/a$a;-><init>()V

    .line 7
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Le/a/i/b0/d/a$a;->c([Ljava/lang/String;)Le/a/i/b0/d/a$a;

    .line 8
    iget-object v3, p0, Le/a/g/b;->c:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/b0/e/r/a;

    invoke-interface {v3, v5, v2}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "accountSettings.get().ge\u2026tings.PROFILE_NUMBER, \"\")"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Le/a/i/b0/d/a$a;->b(Ljava/lang/String;)Le/a/i/b0/d/a$a;

    .line 9
    invoke-virtual {p1}, Le/a/i/b0/d/a$a;->a()Le/a/i/b0/d/a;

    move-result-object p1

    .line 10
    iget-object v2, p0, Le/a/g/b;->f:Le/a/i/b0/a;

    invoke-interface {v2, p1, v0}, Le/a/i/b0/a;->a(Le/a/i/b0/d/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 11
    :cond_4
    :goto_2
    check-cast p1, Lcom/truecaller/ads/campaigns/AdCampaigns;

    goto :goto_3

    :cond_5
    iput v3, v0, Le/a/g/b$a;->e:I

    .line 12
    new-instance p1, Le/a/i/o$b;

    invoke-direct {p1, v6}, Le/a/i/o$b;-><init>(Ljava/lang/String;)V

    .line 13
    iget-object v3, p0, Le/a/g/b;->c:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/b0/e/r/a;

    invoke-interface {v3, v5, v2}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 14
    iput-object v2, p1, Le/a/i/o$b;->a:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Le/a/i/o$b;->a()Le/a/i/o;

    move-result-object p1

    const-string v2, "CampaignConfig.Builder(A\u2026\"\"))\n            .build()"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v2, p0, Le/a/g/b;->e:Le/a/i/f0/k/a;

    invoke-interface {v2, p1, v0}, Le/a/i/f0/k/a;->c(Le/a/i/o;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :goto_3
    return-object p1
.end method

.method public c()Le/a/i/c/d/a;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/g/b;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "adRouterProvider.get()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Le/a/i/c/d/a;

    return-object v0
.end method

.method public d()Le/a/i/f0/j/c;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/g/b;->i:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "adUnitIdManagerProvider.get()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Le/a/i/f0/j/c;

    return-object v0
.end method

.method public e(Le/a/i/s;)Z
    .locals 1

    const-string v0, "unitConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/g/b;->d:Le/a/i/f0/d;

    invoke-interface {v0, p1}, Le/a/i/f0/d;->c(Le/a/i/s;)Z

    move-result p1

    return p1
.end method
