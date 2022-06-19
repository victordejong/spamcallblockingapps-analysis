.class public final Lcom/hiya/stingray/manager/o4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/location/LocationRequest;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/hiya/stingray/q/d/a;

.field private final d:Landroid/location/Geocoder;

.field private final e:Lcom/google/android/gms/location/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/q/d/a;Landroid/location/Geocoder;Lcom/google/android/gms/location/a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commonSharedPreferences"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "geocoder"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fusedLocationProviderClient"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/o4/b;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/stingray/manager/o4/b;->c:Lcom/hiya/stingray/q/d/a;

    iput-object p3, p0, Lcom/hiya/stingray/manager/o4/b;->d:Landroid/location/Geocoder;

    iput-object p4, p0, Lcom/hiya/stingray/manager/o4/b;->e:Lcom/google/android/gms/location/a;

    .line 2
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->y1()Lcom/google/android/gms/location/LocationRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/manager/o4/b;->a:Lcom/google/android/gms/location/LocationRequest;

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/stingray/manager/o4/b;)Lcom/google/android/gms/location/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/o4/b;->e:Lcom/google/android/gms/location/a;

    return-object p0
.end method

.method public static final synthetic b(Lcom/hiya/stingray/manager/o4/b;)Landroid/location/Geocoder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/o4/b;->d:Landroid/location/Geocoder;

    return-object p0
.end method


# virtual methods
.method public final c(DDI)Li/c/b0/b/v;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI)",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/hiya/stingray/manager/o4/b$d;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/hiya/stingray/manager/o4/b$d;-><init>(Lcom/hiya/stingray/manager/o4/b;DDI)V

    invoke-static {v7}, Li/c/b0/b/v;->defer(Li/c/b0/d/q;)Li/c/b0/b/v;

    move-result-object p1

    const-string p2, "Observable.defer {\n     \u2026e, maxResults))\n        }"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final d(Ljava/lang/String;I)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;>;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/o4/b$e;

    invoke-direct {v0, p0, p1, p2}, Lcom/hiya/stingray/manager/o4/b$e;-><init>(Lcom/hiya/stingray/manager/o4/b;Ljava/lang/String;I)V

    invoke-static {v0}, Li/c/b0/b/v;->defer(Li/c/b0/d/q;)Li/c/b0/b/v;

    move-result-object p1

    .line 2
    sget-object p2, Lcom/hiya/stingray/manager/o4/b$f;->f:Lcom/hiya/stingray/manager/o4/b$f;

    invoke-virtual {p1, p2}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    const-string p2, "Observable.defer {\n     \u2026asLongitude() }\n        }"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final e()Li/c/b0/b/v;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/o4/b$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/manager/o4/b$a;-><init>(Lcom/hiya/stingray/manager/o4/b;)V

    invoke-static {v0}, Li/c/b0/b/v;->create(Li/c/b0/b/y;)Li/c/b0/b/v;

    move-result-object v0

    .line 2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/o4/b;->g()Li/c/b0/b/v;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v3, v4, v1, v2}, Li/c/b0/b/v;->timeout(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object v0

    const-string v1, "Observable.create<Locati\u2026CONDS, lastKnownLocation)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final f()Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Lkotlin/l<",
            "Landroid/location/Location;",
            "Landroid/location/Address;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/o4/b;->e()Li/c/b0/b/v;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/manager/o4/b$b;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/manager/o4/b$b;-><init>(Lcom/hiya/stingray/manager/o4/b;)V

    .line 2
    sget-object v2, Lcom/hiya/stingray/manager/o4/b$c;->a:Lcom/hiya/stingray/manager/o4/b$c;

    .line 3
    invoke-virtual {v0, v1, v2}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;Li/c/b0/d/c;)Li/c/b0/b/v;

    move-result-object v0

    const-string v1, "currentLocation.flatMap(\u2026tOrNull())\n            })"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final g()Li/c/b0/b/v;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/o4/b$h;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/manager/o4/b$h;-><init>(Lcom/hiya/stingray/manager/o4/b;)V

    invoke-static {v0}, Li/c/b0/b/v;->create(Li/c/b0/b/y;)Li/c/b0/b/v;

    move-result-object v0

    .line 2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3, v1}, Li/c/b0/b/v;->timeout(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/v;

    move-result-object v0

    const-string v1, "Observable.create<Locati\u2026T, TimeUnit.MILLISECONDS)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final h()Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Lkotlin/l<",
            "Landroid/location/Location;",
            "Landroid/location/Address;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/o4/b;->g()Li/c/b0/b/v;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/manager/o4/b$i;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/manager/o4/b$i;-><init>(Lcom/hiya/stingray/manager/o4/b;)V

    .line 2
    sget-object v2, Lcom/hiya/stingray/manager/o4/b$j;->a:Lcom/hiya/stingray/manager/o4/b$j;

    .line 3
    invoke-virtual {v0, v1, v2}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;Li/c/b0/d/c;)Li/c/b0/b/v;

    move-result-object v0

    const-string v1, "lastKnownLocation.flatMa\u2026tOrNull())\n            })"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final i()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o4/b;->b:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/location/LocationManager;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/location/LocationManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "gps"

    .line 2
    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final j()Lcom/google/android/gms/location/LocationRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o4/b;->a:Lcom/google/android/gms/location/LocationRequest;

    return-object v0
.end method

.method public final k(Ljava/lang/String;I)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/h1/i;",
            ">;>;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/manager/o4/b;->d(Ljava/lang/String;I)Li/c/b0/b/v;

    move-result-object p1

    sget-object p2, Lcom/hiya/stingray/manager/o4/b$g;->f:Lcom/hiya/stingray/manager/o4/b$g;

    invoke-virtual {p1, p2}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    const-string p2, "getAddressesByName(name,\u2026ePlace.Source.SEARCH) } }"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final l()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/h1/i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o4/b;->c:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/a;->w()Ljava/util/List;

    move-result-object v0

    const-string v1, "commonSharedPreferences.recentSelectablePlaces"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final m()Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Lcom/hiya/stingray/t/h1/i;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/o4/b;->n()Lcom/hiya/stingray/t/h1/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object v0

    const-string v1, "Observable.just(it)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/o4/b;->f()Li/c/b0/b/v;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/hiya/stingray/manager/o4/b$k;->f:Lcom/hiya/stingray/manager/o4/b$k;

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    const-string v1, "currentLocationWithAddre\u2026PS)\n                    }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final n()Lcom/hiya/stingray/t/h1/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o4/b;->c:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/a;->A()Lcom/hiya/stingray/t/h1/i;

    move-result-object v0

    return-object v0
.end method

.method public final o(Lcom/hiya/stingray/t/h1/i;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o4/b;->c:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/d/a;->n0(Lcom/hiya/stingray/t/h1/i;)V

    if-eqz p1, :cond_5

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/t/h1/i;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/hiya/stingray/manager/o4/b;->c:Lcom/hiya/stingray/q/d/a;

    .line 4
    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/a;->w()Ljava/util/List;

    move-result-object v3

    const-string v4, "commonSharedPreferences.recentSelectablePlaces"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {v3}, Lkotlin/s/k;->k0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    .line 6
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3}, Lkotlin/s/k;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hiya/stingray/t/h1/i;

    invoke-virtual {v4}, Lcom/hiya/stingray/t/h1/i;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/hiya/stingray/t/h1/i;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v2, v4

    if-eqz v2, :cond_4

    :cond_3
    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 7
    sget-object v10, Lcom/hiya/stingray/t/h1/i$a;->RECENT:Lcom/hiya/stingray/t/h1/i$a;

    const/4 v11, 0x7

    const/4 v12, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v12}, Lcom/hiya/stingray/t/h1/i;->b(Lcom/hiya/stingray/t/h1/i;DDLjava/lang/String;Lcom/hiya/stingray/t/h1/i$a;ILjava/lang/Object;)Lcom/hiya/stingray/t/h1/i;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    const/16 v2, 0xa

    if-le p1, v2, :cond_4

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 9
    :cond_4
    invoke-virtual {v0, v3}, Lcom/hiya/stingray/q/d/a;->j0(Ljava/util/List;)V

    :cond_5
    :goto_2
    return-void
.end method
