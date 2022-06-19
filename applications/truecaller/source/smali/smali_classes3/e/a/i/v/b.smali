.class public final Le/a/i/v/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/v/a;


# instance fields
.field public final a:Le/a/i/f0/d;

.field public final b:Le/a/u3/g;

.field public final c:Le/a/b0/o/a;

.field public final d:Le/a/b0/e/r/a;

.field public final e:Le/a/p5/g;

.field public final f:Le/a/i/f0/j/c;

.field public final g:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/h0/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/i/f0/d;Le/a/u3/g;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/p5/g;Le/a/i/f0/j/c;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/f0/d;",
            "Le/a/u3/g;",
            "Le/a/b0/o/a;",
            "Le/a/b0/e/r/a;",
            "Le/a/p5/g;",
            "Le/a/i/f0/j/c;",
            "Lo3/a<",
            "Le/a/i/h0/a;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "adsProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitIdManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "acsCallIdHelper"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/v/b;->a:Le/a/i/f0/d;

    iput-object p2, p0, Le/a/i/v/b;->b:Le/a/u3/g;

    iput-object p3, p0, Le/a/i/v/b;->c:Le/a/b0/o/a;

    iput-object p4, p0, Le/a/i/v/b;->d:Le/a/b0/e/r/a;

    iput-object p5, p0, Le/a/i/v/b;->e:Le/a/p5/g;

    iput-object p6, p0, Le/a/i/v/b;->f:Le/a/i/f0/j/c;

    iput-object p7, p0, Le/a/i/v/b;->g:Lo3/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 10

    const-string v0, "requestSource"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i/v/b;->c:Le/a/b0/o/a;

    const-string v1, "featureCacheAdAfterCall"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/i/v/b;->e:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->F()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_5

    const-string v0, "fullScreenAfterCallScreen"

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "fullscreenAfterCallAdUnitId"

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Le/a/i/v/b;->b:Le/a/u3/g;

    .line 5
    iget-object v3, v0, Le/a/u3/g;->D3:Le/a/u3/g$a;

    sget-object v4, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v5, 0xef

    aget-object v4, v4, v5

    invoke-virtual {v3, v0, v4}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "afterCallCachingAdUnitId"

    goto :goto_1

    :cond_2
    const-string v0, "afterCallUnifiedAdUnitId"

    .line 7
    :goto_1
    iget-object v3, p0, Le/a/i/v/b;->f:Le/a/i/f0/j/c;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Le/a/i/f0/j/c;->b(Lcom/truecaller/ads/provider/adunitid/PriceFloor;Ljava/lang/String;)Le/a/i/l;

    move-result-object v0

    .line 8
    new-instance v3, Le/a/i/s$a;

    invoke-direct {v3, v4, v1}, Le/a/i/s$a;-><init>(Le/a/i/s;I)V

    .line 9
    iget-object v0, v0, Le/a/i/l;->a:Ljava/lang/String;

    .line 10
    invoke-virtual {v3, v0}, Le/a/i/s$a;->c(Ljava/lang/String;)Le/a/i/s$b;

    .line 11
    iget-object v0, p0, Le/a/i/v/b;->d:Le/a/b0/e/r/a;

    const-string v5, "profileNumber"

    invoke-interface {v0, v5}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, ""

    :goto_2
    const-string v5, "accountSettings.getStrin\u2026ngs.PROFILE_NUMBER) ?: \"\""

    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v5, p0, Le/a/i/v/b;->b:Le/a/u3/g;

    invoke-virtual {v5}, Le/a/u3/g;->O()Le/a/u3/b;

    move-result-object v5

    invoke-interface {v5}, Le/a/u3/b;->isEnabled()Z

    move-result v5

    const-string v6, "AFTERCALL"

    if-eqz v5, :cond_4

    .line 13
    sget-object v5, Le/a/i/b0/d/a;->h:Le/a/i/b0/d/a$b;

    .line 14
    new-instance v5, Le/a/i/b0/d/a$a;

    invoke-direct {v5}, Le/a/i/b0/d/a$a;-><init>()V

    .line 15
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Le/a/i/b0/d/a$a;->c([Ljava/lang/String;)Le/a/i/b0/d/a$a;

    .line 16
    invoke-virtual {v5, v0}, Le/a/i/b0/d/a$a;->b(Ljava/lang/String;)Le/a/i/b0/d/a$a;

    .line 17
    invoke-virtual {v5}, Le/a/i/b0/d/a$a;->a()Le/a/i/b0/d/a;

    move-result-object v0

    .line 18
    invoke-virtual {v3, v0}, Le/a/i/s$a;->a(Le/a/i/b0/d/a;)Le/a/i/s$a;

    goto :goto_3

    .line 19
    :cond_4
    new-instance v5, Le/a/i/o$b;

    invoke-direct {v5, v6}, Le/a/i/o$b;-><init>(Ljava/lang/String;)V

    .line 20
    iput-object v0, v5, Le/a/i/o$b;->a:Ljava/lang/String;

    .line 21
    invoke-virtual {v5}, Le/a/i/o$b;->a()Le/a/i/o;

    move-result-object v0

    const-string v5, "CampaignConfig.Builder(A\u2026                 .build()"

    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v3, v0}, Le/a/i/s$a;->d(Le/a/i/o;)Le/a/i/s$a;

    :goto_3
    const/4 v0, 0x5

    new-array v5, v0, [Lcom/google/android/gms/ads/AdSize;

    .line 23
    sget-object v6, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    const-string v7, "AdSize.BANNER"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v6, v5, v2

    .line 24
    sget-object v6, Lcom/google/android/gms/ads/AdSize;->LARGE_BANNER:Lcom/google/android/gms/ads/AdSize;

    const-string v7, "AdSize.LARGE_BANNER"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v6, v5, v1

    .line 25
    sget-object v6, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    const-string v7, "AdSize.MEDIUM_RECTANGLE"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 26
    sget-object v6, Le/a/i/f0/f;->c:Le/a/i/f0/f;

    .line 27
    sget-object v6, Le/a/i/f0/f;->a:Lcom/google/android/gms/ads/AdSize;

    const/4 v8, 0x3

    aput-object v6, v5, v8

    .line 28
    sget-object v6, Le/a/i/f0/f;->b:Lcom/google/android/gms/ads/AdSize;

    const/4 v9, 0x4

    aput-object v6, v5, v9

    .line 29
    invoke-virtual {v3, v5}, Le/a/i/s$a;->e([Lcom/google/android/gms/ads/AdSize;)Le/a/i/s$a;

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/truecaller/ads/CustomTemplate;

    .line 30
    sget-object v6, Lcom/truecaller/ads/CustomTemplate;->NATIVE_BANNER:Lcom/truecaller/ads/CustomTemplate;

    aput-object v6, v5, v2

    .line 31
    sget-object v6, Lcom/truecaller/ads/CustomTemplate;->NATIVE_BANNER_DUAL_TRACKER:Lcom/truecaller/ads/CustomTemplate;

    aput-object v6, v5, v1

    .line 32
    sget-object v6, Lcom/truecaller/ads/CustomTemplate;->CLICK_TO_PLAY_VIDEO:Lcom/truecaller/ads/CustomTemplate;

    aput-object v6, v5, v7

    .line 33
    sget-object v6, Lcom/truecaller/ads/CustomTemplate;->VIDEO_WITH_FALLBACK_IMAGE:Lcom/truecaller/ads/CustomTemplate;

    aput-object v6, v5, v8

    .line 34
    sget-object v6, Lcom/truecaller/ads/CustomTemplate;->NATIVE_CONTENT_DUAL_TRACKER:Lcom/truecaller/ads/CustomTemplate;

    aput-object v6, v5, v9

    .line 35
    sget-object v6, Lcom/truecaller/ads/CustomTemplate;->MEGA_NATIVE_BANNER_DUAL_TRACKER:Lcom/truecaller/ads/CustomTemplate;

    aput-object v6, v5, v0

    .line 36
    invoke-virtual {v3, v5}, Le/a/i/s$a;->f([Lcom/truecaller/ads/CustomTemplate;)Le/a/i/s$a;

    const-string v0, "afterCall"

    .line 37
    iput-object v0, v3, Le/a/i/s$a;->i:Ljava/lang/String;

    .line 38
    iput-boolean v1, v3, Le/a/i/s$a;->m:Z

    .line 39
    iput-boolean v2, v3, Le/a/i/s$a;->n:Z

    .line 40
    new-instance v0, Le/a/i/f;

    .line 41
    iget-object v1, p0, Le/a/i/v/b;->g:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/h0/a;

    invoke-interface {v1}, Le/a/i/h0/a;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "call"

    .line 42
    invoke-direct {v0, v1, v2, v4, v9}, Le/a/i/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)V

    const-string v1, "adExtraConfig"

    .line 43
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object v0, v3, Le/a/i/s$a;->o:Le/a/i/f;

    .line 45
    iget-object v0, p0, Le/a/i/v/b;->a:Le/a/i/f0/d;

    .line 46
    new-instance v1, Le/a/i/s;

    invoke-direct {v1, v3}, Le/a/i/s;-><init>(Le/a/i/s$a;)V

    .line 47
    invoke-interface {v0, v1, p1}, Le/a/i/f0/d;->m(Le/a/i/s;Ljava/lang/String;)V

    :cond_5
    return-void
.end method
