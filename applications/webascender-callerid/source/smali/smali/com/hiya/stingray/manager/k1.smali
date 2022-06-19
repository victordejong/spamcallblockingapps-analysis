.class public Lcom/hiya/stingray/manager/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appsflyer/AppsFlyerConversionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/manager/k1$b;,
        Lcom/hiya/stingray/manager/k1$a;
    }
.end annotation


# instance fields
.field private final a:Li/c/b0/c/a;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/hiya/stingray/manager/u3;

.field private final d:Lcom/hiya/stingray/util/a0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/manager/u3;Lcom/hiya/stingray/util/a0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumManager"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/k1;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/stingray/manager/k1;->c:Lcom/hiya/stingray/manager/u3;

    iput-object p3, p0, Lcom/hiya/stingray/manager/k1;->d:Lcom/hiya/stingray/util/a0;

    .line 2
    new-instance p1, Li/c/b0/c/a;

    invoke-direct {p1}, Li/c/b0/c/a;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/k1;->a:Li/c/b0/c/a;

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/stingray/manager/k1;)Lcom/hiya/stingray/manager/u3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/k1;->c:Lcom/hiya/stingray/manager/u3;

    return-object p0
.end method


# virtual methods
.method public final b(Landroid/app/Application;)V
    .locals 3

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/manager/k1;->b:Landroid/content/Context;

    const v2, 0x7f11002a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hiya/stingray/manager/k1;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, v2}, Lcom/appsflyer/AppsFlyerLib;->init(Ljava/lang/String;Lcom/appsflyer/AppsFlyerConversionListener;Landroid/content/Context;)Lcom/appsflyer/AppsFlyerLib;

    .line 2
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    const-string v1, "FirebaseAuth.getInstance()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/firebase/auth/FirebaseAuth;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->setCustomerUserId(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;)V

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/manager/k1;->d:Lcom/hiya/stingray/util/a0;

    .line 6
    const-class v0, Lcom/hiya/stingray/manager/e1$a;

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/util/a0;->b(Ljava/lang/Class;)Li/c/b0/b/v;

    move-result-object p1

    .line 7
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->observeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p1

    .line 8
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p1

    .line 9
    new-instance v0, Lcom/hiya/stingray/manager/k1$c;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/manager/k1$c;-><init>(Lcom/hiya/stingray/manager/k1;)V

    .line 10
    sget-object v1, Lcom/hiya/stingray/manager/k1$d;->f:Lcom/hiya/stingray/manager/k1$d;

    .line 11
    invoke-virtual {p1, v0, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/hiya/stingray/manager/k1;->a:Li/c/b0/c/a;

    invoke-virtual {v0, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    .line 13
    iget-object p1, p0, Lcom/hiya/stingray/manager/k1;->d:Lcom/hiya/stingray/util/a0;

    .line 14
    const-class v0, Lcom/hiya/stingray/manager/u3$h;

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/util/a0;->b(Ljava/lang/Class;)Li/c/b0/b/v;

    move-result-object p1

    .line 15
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->observeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p1

    .line 16
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p1

    .line 17
    new-instance v0, Lcom/hiya/stingray/manager/k1$e;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/manager/k1$e;-><init>(Lcom/hiya/stingray/manager/k1;)V

    .line 18
    sget-object v1, Lcom/hiya/stingray/manager/k1$f;->f:Lcom/hiya/stingray/manager/k1$f;

    .line 19
    invoke-virtual {p1, v0, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/hiya/stingray/manager/k1;->a:Li/c/b0/c/a;

    invoke-virtual {v0, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public final c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V
    .locals 5

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view_screen"

    .line 1
    invoke-static {p1, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/manager/k1;->b:Landroid/content/Context;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/l;

    const/4 v2, 0x0

    .line 3
    sget-object v3, Lcom/hiya/stingray/manager/k1$b;->TYPE_SCREEN:Lcom/hiya/stingray/manager/k1$b;

    invoke-virtual {v3}, Lcom/hiya/stingray/manager/k1$b;->getParameterName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "af_content_type"

    invoke-static {v4, v3}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/hiya/stingray/util/g0/c;->c()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v3, "name"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v3, "af_content_id"

    invoke-static {v3, p2}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object p2

    aput-object p2, v1, v2

    .line 5
    invoke-static {v1}, Lkotlin/s/b0;->h([Lkotlin/l;)Ljava/util/Map;

    move-result-object p2

    const-string v1, "af_content_view"

    .line 6
    invoke-virtual {p1, v0, v1, p2}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/manager/k1;->b:Landroid/content/Context;

    const-string v2, "af_content_type"

    .line 2
    invoke-static {v2, p1}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lkotlin/s/b0;->c(Lkotlin/l;)Ljava/util/Map;

    move-result-object p1

    const-string v2, "af_search"

    invoke-virtual {v0, v1, v2, p1}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/manager/k1;->b:Landroid/content/Context;

    .line 2
    sget-object v2, Lcom/hiya/stingray/manager/k1$b;->NAME_TERMS_OF_USE:Lcom/hiya/stingray/manager/k1$b;

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/k1$b;->getParameterName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "af_registration_method"

    invoke-static {v3, v2}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v2

    .line 3
    invoke-static {v2}, Lkotlin/s/b0;->c(Lkotlin/l;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "af_tutorial_completion"

    invoke-virtual {v0, v1, v3, v2}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final f(Ljava/lang/String;JLjava/lang/String;)V
    .locals 4

    const-string v0, "product"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currency"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/manager/k1;->b:Landroid/content/Context;

    const/4 v2, 0x3

    new-array v2, v2, [Lkotlin/l;

    const-string v3, "af_content_id"

    .line 2
    invoke-static {v3, p1}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "af_revenue"

    invoke-static {p2, p1}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const-string p1, "af_currency"

    .line 4
    invoke-static {p1, p4}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v2, p2

    .line 5
    invoke-static {v2}, Lkotlin/s/b0;->h([Lkotlin/l;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "af_subscribe"

    invoke-virtual {v0, v1, p2, p1}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final g(Ljava/lang/String;JLjava/lang/String;)V
    .locals 4

    const-string v0, "product"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currency"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/manager/k1;->b:Landroid/content/Context;

    const/4 v2, 0x3

    new-array v2, v2, [Lkotlin/l;

    const-string v3, "af_content_id"

    .line 2
    invoke-static {v3, p1}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "af_revenue"

    invoke-static {p2, p1}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const-string p1, "af_currency"

    .line 4
    invoke-static {p1, p4}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v2, p2

    .line 5
    invoke-static {v2}, Lkotlin/s/b0;->h([Lkotlin/l;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "af_start_trial"

    invoke-virtual {v0, v1, p2, p1}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screen"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/manager/k1;->b:Landroid/content/Context;

    const/4 v2, 0x3

    new-array v2, v2, [Lkotlin/l;

    const-string v3, "af_content_id"

    .line 2
    invoke-static {v3, p1}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "af_content_type"

    .line 3
    invoke-static {p1, p2}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const-string p1, "af_adrev_ad_type"

    .line 4
    invoke-static {p1, p3}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v2, p2

    .line 5
    invoke-static {v2}, Lkotlin/s/b0;->h([Lkotlin/l;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "af_ad_click"

    invoke-virtual {v0, v1, p2, p1}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/manager/k1;->b:Landroid/content/Context;

    const-string v2, "af_adrev_ad_type"

    .line 2
    invoke-static {v2, p1}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lkotlin/s/b0;->c(Lkotlin/l;)Ljava/util/Map;

    move-result-object p1

    const-string v2, "af_ad_view"

    invoke-virtual {v0, v1, v2, p1}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onAppOpenAttribution(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onAttributionFailure(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/k1$a;

    invoke-direct {v0, p1}, Lcom/hiya/stingray/manager/k1$a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lr/a/a;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onConversionDataFail(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/k1$a;

    invoke-direct {v0, p1}, Lcom/hiya/stingray/manager/k1$a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lr/a/a;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onConversionDataSuccess(Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/hiya/stingray/manager/k1;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConversionDataSuccess:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "af_status"

    .line 4
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Ljava/lang/String;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    move-object v2, v5

    :cond_1
    check-cast v2, Ljava/lang/String;

    const-string v4, "media_source"

    .line 5
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/lang/String;

    if-nez v7, :cond_2

    move-object v6, v5

    :cond_2
    check-cast v6, Ljava/lang/String;

    const-string v7, "campaign"

    .line 6
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Ljava/lang/String;

    if-nez v9, :cond_3

    move-object v8, v5

    :cond_3
    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x3

    new-array v10, v9, [Ljava/lang/String;

    aput-object v2, v10, v3

    const/4 v11, 0x1

    aput-object v6, v10, v11

    const/4 v11, 0x2

    aput-object v8, v10, v11

    .line 7
    invoke-static {v10}, Lkotlin/s/e;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v9, :cond_4

    const-string v9, "Non-organic"

    invoke-static {v2, v9}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "attribution"

    invoke-static {v6, v2}, Lcom/hiya/stingray/manager/e1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_4
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Ljava/lang/String;

    if-nez v4, :cond_5

    move-object v2, v5

    :cond_5
    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_6

    const-string v4, "$mediaSource"

    .line 10
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_6
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Ljava/lang/String;

    if-nez v4, :cond_7

    move-object v2, v5

    :cond_7
    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_8

    const-string v4, "$campaign"

    .line 12
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string v2, "adgroup_id"

    .line 13
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Ljava/lang/String;

    if-nez v4, :cond_9

    move-object v2, v5

    :cond_9
    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_a

    const-string v4, "$adGroup"

    .line 14
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_a
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v6, v4, Ljava/lang/String;

    if-nez v6, :cond_c

    move-object v4, v5

    :cond_c
    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 17
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "premiumManagerConversionData:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    iget-object p1, p0, Lcom/hiya/stingray/manager/k1;->c:Lcom/hiya/stingray/manager/u3;

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    iget-object v2, p0, Lcom/hiya/stingray/manager/k1;->b:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/appsflyer/AppsFlyerLib;->getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppsFlyerLib.getInstance\u2026.getAppsFlyerUID(context)"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/hiya/stingray/manager/u3;->O(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
