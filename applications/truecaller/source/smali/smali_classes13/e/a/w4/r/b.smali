.class public final Le/a/w4/r/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/w4/r/a;
.implements Le/a/i/m;


# instance fields
.field public final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Le/a/i/f0/m/d;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Le/a/w4/r/c;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/a/i/f0/d;

.field public final f:Le/a/i/f0/j/c;

.field public final g:Le/a/u3/g;


# direct methods
.method public constructor <init>(Le/a/i/f0/d;Le/a/i/f0/j/c;Le/a/u3/g;)V
    .locals 2

    const-string v0, "adsProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitIdManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/w4/r/b;->e:Le/a/i/f0/d;

    iput-object p2, p0, Le/a/w4/r/b;->f:Le/a/i/f0/j/c;

    iput-object p3, p0, Le/a/w4/r/b;->g:Le/a/u3/g;

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Le/a/w4/r/b;->a:Ljava/util/HashMap;

    .line 3
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Le/a/w4/r/b;->b:Ljava/util/Set;

    const/16 p1, 0xc

    new-array p1, p1, [Ls1/k;

    .line 4
    new-instance p2, Ls1/k;

    const-string p3, "emergency"

    const-string v0, "/43067329/A*Fast_emergency*Native*GPS"

    invoke-direct {p2, p3, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const/4 p2, 0x1

    .line 5
    new-instance p3, Ls1/k;

    const-string v0, "bank_balance"

    const-string v1, "/43067329/A*Fast_bank_balance*Native*GPS"

    invoke-direct {p3, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 6
    new-instance p3, Ls1/k;

    const-string v0, "airlines"

    const-string v1, "/43067329/A*Fast_airlines*Native*GPS"

    invoke-direct {p3, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 7
    new-instance p3, Ls1/k;

    const-string v0, "indian_railways"

    const-string v1, "/43067329/A*Fast_indian_railway*Native*GPS"

    invoke-direct {p3, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 8
    new-instance p3, Ls1/k;

    const-string v0, "packers"

    const-string v1, "/43067329/A*Fast_courier*Native*GPS"

    invoke-direct {p3, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p3, p1, p2

    const/4 p2, 0x5

    .line 9
    new-instance p3, Ls1/k;

    const-string v0, "electronics"

    const-string v1, "/43067329/A*Fast_electronics*Native*GPS"

    invoke-direct {p3, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p3, p1, p2

    const/4 p2, 0x6

    .line 10
    new-instance p3, Ls1/k;

    const-string v0, "banks"

    const-string v1, "/43067329/A*Fast_banks*Native*GPS"

    invoke-direct {p3, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p3, p1, p2

    const/4 p2, 0x7

    .line 11
    new-instance p3, Ls1/k;

    const-string v0, "dth"

    const-string v1, "/43067329/A*Fast_dth*Native*GPS"

    invoke-direct {p3, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p3, p1, p2

    const/16 p2, 0x8

    .line 12
    new-instance p3, Ls1/k;

    const-string v0, "automobiles"

    const-string v1, "/43067329/A*Fast_automobiles*Native*GPS"

    invoke-direct {p3, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p3, p1, p2

    const/16 p2, 0x9

    .line 13
    new-instance p3, Ls1/k;

    const-string v0, "health"

    const-string v1, "/43067329/A*Fast_healthcare*Native*GPS"

    invoke-direct {p3, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p3, p1, p2

    const/16 p2, 0xa

    .line 14
    new-instance p3, Ls1/k;

    const-string v0, "hotels"

    const-string v1, "/43067329/A*Fast_hotel*Native*GPS"

    invoke-direct {p3, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p3, p1, p2

    const/16 p2, 0xb

    .line 15
    new-instance p3, Ls1/k;

    const-string v0, "insurance"

    const-string v1, "/43067329/A*Fast_insurance*Native*GPS"

    invoke-direct {p3, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p3, p1, p2

    .line 16
    invoke-static {p1}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Le/a/w4/r/b;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/w4/r/b;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    iget-object v2, p0, Le/a/w4/r/b;->e:Le/a/i/f0/d;

    invoke-virtual {p0, v1}, Le/a/w4/r/b;->e(Ljava/lang/String;)Le/a/i/s;

    move-result-object v1

    invoke-interface {v2, v1, p0}, Le/a/i/f0/d;->h(Le/a/i/s;Le/a/i/m;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/w4/r/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "ads.values"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/f0/m/d;

    .line 5
    invoke-interface {v1}, Le/a/i/f0/m/d;->destroy()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Le/a/w4/r/b;->c:Le/a/w4/r/c;

    return-void
.end method

.method public b(Le/a/w4/r/c;)V
    .locals 1

    const-string v0, "adsHelperListener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/w4/r/b;->c:Le/a/w4/r/c;

    return-void
.end method

.method public c(Ljava/lang/String;I)Le/a/i/f0/m/d;
    .locals 2

    const-string v0, "adId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/w4/r/b;->a:Ljava/util/HashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Le/a/w4/r/b;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/i/f0/m/d;

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/w4/r/b;->e:Le/a/i/f0/d;

    invoke-virtual {p0, p1}, Le/a/w4/r/b;->e(Ljava/lang/String;)Le/a/i/s;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Le/a/i/f0/d;->f(Le/a/i/s;I)Le/a/i/f0/m/d;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 3
    iget-object v0, p0, Le/a/w4/r/b;->a:Ljava/util/HashMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p2
.end method

.method public d(Ljava/lang/String;)V
    .locals 7

    const-string v0, "adId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/w4/r/b;->e:Le/a/i/f0/d;

    invoke-virtual {p0, p1}, Le/a/w4/r/b;->e(Ljava/lang/String;)Le/a/i/s;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Le/m/d/y/n;->l1(Le/a/i/f0/d;Le/a/i/s;Le/a/i/m;Ljava/lang/String;ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Le/a/w4/r/b;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e(Ljava/lang/String;)Le/a/i/s;
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/w4/r/b;->g:Le/a/u3/g;

    const-string v1, "adUnitId"

    .line 2
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "placement"

    const-string v2, "SEARCHRESULTS"

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "featuresRegistry"

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v3, Le/a/i/s$a;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Le/a/i/s$a;-><init>(Le/a/i/s;I)V

    .line 4
    invoke-virtual {v3, p1, v4}, Le/a/i/s$a;->b(Ljava/lang/String;Ljava/lang/String;)Le/a/i/s$a;

    .line 5
    invoke-virtual {v0}, Le/a/u3/g;->O()Le/a/u3/b;

    move-result-object p1

    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 6
    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object p1, Le/a/i/b0/d/a;->h:Le/a/i/b0/d/a$b;

    .line 8
    new-instance p1, Le/a/i/b0/d/a$a;

    invoke-direct {p1}, Le/a/i/b0/d/a$a;-><init>()V

    new-array v1, v5, [Ljava/lang/String;

    aput-object v2, v1, v0

    .line 9
    invoke-virtual {p1, v1}, Le/a/i/b0/d/a$a;->c([Ljava/lang/String;)Le/a/i/b0/d/a$a;

    invoke-virtual {p1}, Le/a/i/b0/d/a$a;->a()Le/a/i/b0/d/a;

    move-result-object p1

    iput-object p1, v3, Le/a/i/s$a;->c:Le/a/i/b0/d/a;

    goto :goto_0

    :cond_0
    const-string p1, "campaign"

    const-string v1, "CampaignConfig.Builder(campaign).build()"

    .line 10
    invoke-static {v2, p1, v2, v1}, Le/d/c/a/a;->k1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/a/i/o;

    move-result-object p1

    .line 11
    iput-object p1, v3, Le/a/i/s$a;->b:Le/a/i/o;

    :goto_0
    const-string p1, "globalSearch"

    .line 12
    iput-object p1, v3, Le/a/i/s$a;->i:Ljava/lang/String;

    new-array p1, v5, [Lcom/truecaller/ads/CustomTemplate;

    .line 13
    sget-object v1, Lcom/truecaller/ads/CustomTemplate;->NATIVE_CONTENT_DUAL_TRACKER:Lcom/truecaller/ads/CustomTemplate;

    aput-object v1, p1, v0

    invoke-virtual {v3, p1}, Le/a/i/s$a;->f([Lcom/truecaller/ads/CustomTemplate;)Le/a/i/s$a;

    .line 14
    new-instance p1, Le/a/i/s;

    invoke-direct {p1, v3}, Le/a/i/s;-><init>(Le/a/i/s$a;)V

    return-object p1
.end method

.method public ed(I)V
    .locals 0

    return-void
.end method

.method public onAdLoaded()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/w4/r/b;->c:Le/a/w4/r/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/w4/r/c;->onAdLoaded()V

    :cond_0
    return-void
.end method

.method public xe(Le/a/i/f0/m/d;I)V
    .locals 0

    const-string p2, "ad"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
