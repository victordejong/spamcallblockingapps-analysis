.class public final Le/a/g/e/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Le/a/i/l;

.field public final b:Le/a/g/e/e;

.field public final c:Le/a/b0/e/r/a;

.field public final d:Le/a/u3/g;

.field public final e:Le/a/i/h0/a;


# direct methods
.method public constructor <init>(Le/a/g/e/e;Le/a/b0/e/r/a;Le/a/u3/g;Le/a/i/h0/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "adsProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "acsCallIdHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/g/e/f;->b:Le/a/g/e/e;

    iput-object p2, p0, Le/a/g/e/f;->c:Le/a/b0/e/r/a;

    iput-object p3, p0, Le/a/g/e/f;->d:Le/a/u3/g;

    iput-object p4, p0, Le/a/g/e/f;->e:Le/a/i/h0/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Le/a/i/l;
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x7f8be60b

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "fullScreenAfterCallScreen"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "fullscreenAfterCallAdUnitId"

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "afterCallUnifiedAdUnitId"

    .line 3
    :goto_1
    iget-object v0, p0, Le/a/g/e/f;->b:Le/a/g/e/e;

    check-cast v0, Le/a/g/b;

    invoke-virtual {v0}, Le/a/g/b;->d()Le/a/i/f0/j/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Le/a/i/f0/j/c;->b(Lcom/truecaller/ads/provider/adunitid/PriceFloor;Ljava/lang/String;)Le/a/i/l;

    move-result-object p1

    .line 4
    iput-object p1, p0, Le/a/g/e/f;->a:Le/a/i/l;

    return-object p1
.end method

.method public final varargs b(Le/a/i/l;Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/ads/AdSize;)Le/a/i/s;
    .locals 6

    .line 1
    new-instance v0, Le/a/i/s$a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Le/a/i/s$a;-><init>(Le/a/i/s;I)V

    .line 2
    iget-object p1, p1, Le/a/i/l;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, p1, v1}, Le/a/i/s$a;->b(Ljava/lang/String;Ljava/lang/String;)Le/a/i/s$a;

    .line 4
    iget-object p1, p0, Le/a/g/e/f;->d:Le/a/u3/g;

    invoke-virtual {p1}, Le/a/u3/g;->O()Le/a/u3/b;

    move-result-object p1

    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    const-string v3, "AFTERCALL"

    if-eqz p1, :cond_0

    .line 5
    sget-object p1, Le/a/i/b0/d/a;->h:Le/a/i/b0/d/a$b;

    .line 6
    new-instance p1, Le/a/i/b0/d/a$a;

    invoke-direct {p1}, Le/a/i/b0/d/a$a;-><init>()V

    .line 7
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Le/a/i/b0/d/a$a;->c([Ljava/lang/String;)Le/a/i/b0/d/a$a;

    .line 8
    invoke-virtual {p1, p2}, Le/a/i/b0/d/a$a;->b(Ljava/lang/String;)Le/a/i/b0/d/a$a;

    .line 9
    invoke-virtual {p1}, Le/a/i/b0/d/a$a;->a()Le/a/i/b0/d/a;

    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Le/a/i/s$a;->a(Le/a/i/b0/d/a;)Le/a/i/s$a;

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Le/a/i/o$b;

    invoke-direct {p1, v3}, Le/a/i/o$b;-><init>(Ljava/lang/String;)V

    .line 12
    iput-object p2, p1, Le/a/i/o$b;->a:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Le/a/i/o$b;->a()Le/a/i/o;

    move-result-object p1

    const-string p2, "CampaignConfig.Builder(A\u2026                 .build()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, p1}, Le/a/i/s$a;->d(Le/a/i/o;)Le/a/i/s$a;

    :goto_0
    const-string p1, "afterCall"

    .line 15
    iput-object p1, v0, Le/a/i/s$a;->i:Ljava/lang/String;

    .line 16
    iput-boolean v2, v0, Le/a/i/s$a;->m:Z

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, v0, Le/a/i/s$a;->n:Z

    .line 18
    array-length p2, p4

    invoke-static {p4, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, p2}, Le/a/i/s$a;->e([Lcom/google/android/gms/ads/AdSize;)Le/a/i/s$a;

    .line 19
    new-instance p2, Le/a/i/f;

    iget-object p4, p0, Le/a/g/e/f;->e:Le/a/i/h0/a;

    invoke-interface {p4}, Le/a/i/h0/a;->a()Ljava/lang/String;

    move-result-object p4

    const/4 v3, 0x4

    const-string v4, "call"

    invoke-direct {p2, p4, v4, v1, v3}, Le/a/i/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)V

    const-string p4, "adExtraConfig"

    .line 20
    invoke-static {p2, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p2, v0, Le/a/i/s$a;->o:Le/a/i/f;

    const/4 p2, 0x2

    new-array p4, p2, [Ls1/k;

    .line 22
    iget-object v1, p0, Le/a/g/e/f;->b:Le/a/g/e/e;

    check-cast v1, Le/a/g/b;

    invoke-virtual {v1}, Le/a/g/b;->d()Le/a/i/f0/j/c;

    move-result-object v1

    const-string v4, "afterCallOfflineAdUnitId"

    invoke-interface {v1, v4}, Le/a/i/f0/j/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    new-instance v5, Ls1/k;

    invoke-direct {v5, v4, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, p4, p1

    .line 24
    iget-object v1, p0, Le/a/g/e/f;->b:Le/a/g/e/e;

    check-cast v1, Le/a/g/b;

    invoke-virtual {v1}, Le/a/g/b;->d()Le/a/i/f0/j/c;

    move-result-object v1

    const-string v4, "afterCallOfflineToOnlineAdUnitId"

    invoke-interface {v1, v4}, Le/a/i/f0/j/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    new-instance v5, Ls1/k;

    invoke-direct {v5, v4, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, p4, v2

    .line 26
    invoke-static {p4}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object p4

    const-string v1, "adUnitIds"

    .line 27
    invoke-static {p4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p4, v0, Le/a/i/s$a;->g:Ljava/util/Map;

    const/4 p4, 0x5

    new-array p4, p4, [Lcom/truecaller/ads/CustomTemplate;

    .line 29
    sget-object v1, Lcom/truecaller/ads/CustomTemplate;->NATIVE_BANNER:Lcom/truecaller/ads/CustomTemplate;

    aput-object v1, p4, p1

    .line 30
    iget-object v1, p0, Le/a/g/e/f;->b:Le/a/g/e/e;

    check-cast v1, Le/a/g/b;

    invoke-virtual {v1, p3}, Le/a/g/b;->a(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Le/a/g/e/f;->d:Le/a/u3/g;

    .line 31
    iget-object v1, p3, Le/a/u3/g;->K3:Le/a/u3/g$a;

    sget-object v4, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v5, 0xf6

    aget-object v4, v4, v5

    invoke-virtual {v1, p3, v4}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p3

    .line 32
    invoke-interface {p3}, Le/a/u3/b;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 33
    sget-object p3, Lcom/truecaller/ads/CustomTemplate;->MEGA_NATIVE_BANNER_DUAL_TRACKER:Lcom/truecaller/ads/CustomTemplate;

    goto :goto_1

    .line 34
    :cond_1
    sget-object p3, Lcom/truecaller/ads/CustomTemplate;->NATIVE_BANNER_DUAL_TRACKER:Lcom/truecaller/ads/CustomTemplate;

    :goto_1
    aput-object p3, p4, v2

    .line 35
    sget-object p3, Lcom/truecaller/ads/CustomTemplate;->NATIVE_CONTENT_DUAL_TRACKER:Lcom/truecaller/ads/CustomTemplate;

    aput-object p3, p4, p2

    const/4 p2, 0x3

    .line 36
    sget-object p3, Lcom/truecaller/ads/CustomTemplate;->CLICK_TO_PLAY_VIDEO:Lcom/truecaller/ads/CustomTemplate;

    aput-object p3, p4, p2

    .line 37
    sget-object p2, Lcom/truecaller/ads/CustomTemplate;->VIDEO_WITH_FALLBACK_IMAGE:Lcom/truecaller/ads/CustomTemplate;

    aput-object p2, p4, v3

    .line 38
    invoke-static {p4}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    new-array p1, p1, [Lcom/truecaller/ads/CustomTemplate;

    .line 39
    invoke-interface {p2, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, [Lcom/truecaller/ads/CustomTemplate;

    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/truecaller/ads/CustomTemplate;

    .line 40
    invoke-virtual {v0, p1}, Le/a/i/s$a;->f([Lcom/truecaller/ads/CustomTemplate;)Le/a/i/s$a;

    .line 41
    new-instance p1, Le/a/i/s;

    invoke-direct {p1, v0}, Le/a/i/s;-><init>(Le/a/i/s$a;)V

    return-object p1
.end method
