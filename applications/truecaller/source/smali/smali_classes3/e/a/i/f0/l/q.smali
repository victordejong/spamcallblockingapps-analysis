.class public final Le/a/i/f0/l/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/f0/l/p;
.implements Le/a/i/f0/l/r;
.implements Lq3/a/i0;


# instance fields
.field public final a:Lq3/a/y;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/a/i/f0/l/n;",
            ">;"
        }
    .end annotation
.end field

.field public volatile c:Ljava/lang/String;

.field public d:I

.field public final e:Landroid/content/Context;

.field public final f:Le/a/p5/g;

.field public final g:Le/a/p5/c;

.field public final h:Le/a/c3/a;

.field public final i:Ljava/lang/String;

.field public final j:Ls1/w/f;

.field public final k:Le/a/u3/g;

.field public final l:Le/a/z4/a;

.field public final m:Le/a/g/c;

.field public final n:Le/a/p5/u;

.field public final o:Le/a/i/d/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/p5/g;Le/a/p5/c;Le/a/c3/a;Ljava/lang/String;Ls1/w/f;Le/a/u3/g;Le/a/z4/a;Le/a/g/c;Le/a/p5/u;Le/a/i/d/b;)V
    .locals 1
    .param p6    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appVersionName"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundCoroutineContext"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsSettings"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "afterCallScreen"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkUtil"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adCounter"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/f0/l/q;->e:Landroid/content/Context;

    iput-object p2, p0, Le/a/i/f0/l/q;->f:Le/a/p5/g;

    iput-object p3, p0, Le/a/i/f0/l/q;->g:Le/a/p5/c;

    iput-object p4, p0, Le/a/i/f0/l/q;->h:Le/a/c3/a;

    iput-object p5, p0, Le/a/i/f0/l/q;->i:Ljava/lang/String;

    iput-object p6, p0, Le/a/i/f0/l/q;->j:Ls1/w/f;

    iput-object p7, p0, Le/a/i/f0/l/q;->k:Le/a/u3/g;

    iput-object p8, p0, Le/a/i/f0/l/q;->l:Le/a/z4/a;

    iput-object p9, p0, Le/a/i/f0/l/q;->m:Le/a/g/c;

    iput-object p10, p0, Le/a/i/f0/l/q;->n:Le/a/p5/u;

    iput-object p11, p0, Le/a/i/f0/l/q;->o:Le/a/i/d/b;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2, p1}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object p1

    iput-object p1, p0, Le/a/i/f0/l/q;->a:Lq3/a/y;

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/i/f0/l/q;->b:Ljava/util/Map;

    .line 4
    invoke-virtual {p0}, Le/a/i/f0/l/q;->d()Lq3/a/p1;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Le/a/i/f0/l/n;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i/f0/l/q;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public b(Le/a/i/f0/l/c;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/f0/l/c;",
            "Ls1/w/d<",
            "-",
            "Le/a/i/f0/l/e;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/a/i/f0/l/d;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i/f0/l/q;->j:Ls1/w/f;

    new-instance v1, Le/a/i/f0/l/q$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/i/f0/l/q$a;-><init>(Le/a/i/f0/l/q;Le/a/i/f0/l/c;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/content/Context;ZZLjava/util/Map;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keywordsMap"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;-><init>()V

    .line 2
    invoke-static {p1}, Le/a/e/a2;->y(Landroid/content/Context;)Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 3
    :cond_0
    new-instance p1, Lcom/google/ads/mediation/facebook/FacebookExtras;

    invoke-direct {p1}, Lcom/google/ads/mediation/facebook/FacebookExtras;-><init>()V

    .line 4
    invoke-virtual {p1, p3}, Lcom/google/ads/mediation/facebook/FacebookExtras;->setNativeBanner(Z)Lcom/google/ads/mediation/facebook/FacebookExtras;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/ads/mediation/facebook/FacebookExtras;->build()Landroid/os/Bundle;

    move-result-object p1

    .line 6
    const-class p3, Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-virtual {v0, p3, p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 7
    iget-object p1, p0, Le/a/i/f0/l/q;->k:Le/a/u3/g;

    const-string p3, "featuresRegistry"

    .line 8
    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object p3, p1, Le/a/u3/g;->h2:Le/a/u3/g$a;

    sget-object v1, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v2, 0xa3

    aget-object v1, v1, v2

    invoke-virtual {p3, p1, v1}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p1

    check-cast p1, Le/a/u3/i;

    .line 10
    invoke-interface {p1}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object p1

    const-string p3, ","

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p1, p3, v2, v2, v1}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p1

    .line 11
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/String;

    .line 14
    invoke-static {v1}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 15
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x1

    xor-int/2addr p1, p3

    if-eqz p1, :cond_3

    .line 17
    const-class p1, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    .line 18
    new-instance v1, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$BundleBuilder;

    invoke-direct {v1}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$BundleBuilder;-><init>()V

    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$BundleBuilder;->setPrivacyIconSize(I)Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$BundleBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$BundleBuilder;->build()Landroid/os/Bundle;

    move-result-object v1

    .line 19
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 20
    :cond_3
    const-class p1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    .line 21
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_4

    const-string p2, "0"

    goto :goto_1

    :cond_4
    const-string p2, "1"

    :goto_1
    const-string v3, "npa"

    .line 22
    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 24
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_6

    .line 25
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_4

    :cond_6
    :goto_3
    move v1, p3

    :goto_4
    if-eqz v1, :cond_7

    move-object p2, p4

    :cond_7
    invoke-virtual {v0, p4, p2}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;->addCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    goto :goto_2

    .line 26
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;->build()Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    move-result-object p1

    const-string p2, "builder.build()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final d()Lq3/a/p1;
    .locals 6

    .line 1
    new-instance v3, Le/a/i/f0/l/q$b;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/i/f0/l/q$b;-><init>(Le/a/i/f0/l/q;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/i/f0/l/q;->j:Ls1/w/f;

    iget-object v1, p0, Le/a/i/f0/l/q;->a:Lq3/a/y;

    invoke-interface {v0, v1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v0

    return-object v0
.end method
