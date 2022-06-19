.class public final Le/a/i/f0/l/q$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/f0/l/q;->b(Le/a/i/f0/l/c;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Le/a/i/f0/l/e;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ads.provider.fetch.AdsRequesterImpl$requestAd$2"
    f = "AdsRequesterImpl.kt"
    l = {
        0x165
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/i/f0/l/q;

.field public final synthetic h:Le/a/i/f0/l/c;


# direct methods
.method public constructor <init>(Le/a/i/f0/l/q;Le/a/i/f0/l/c;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/f0/l/q$a;->g:Le/a/i/f0/l/q;

    iput-object p2, p0, Le/a/i/f0/l/q$a;->h:Le/a/i/f0/l/c;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/i/f0/l/q$a;

    iget-object v0, p0, Le/a/i/f0/l/q$a;->g:Le/a/i/f0/l/q;

    iget-object v1, p0, Le/a/i/f0/l/q$a;->h:Le/a/i/f0/l/c;

    invoke-direct {p1, v0, v1, p2}, Le/a/i/f0/l/q$a;-><init>(Le/a/i/f0/l/q;Le/a/i/f0/l/c;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/i/f0/l/q$a;

    iget-object v0, p0, Le/a/i/f0/l/q$a;->g:Le/a/i/f0/l/q;

    iget-object v1, p0, Le/a/i/f0/l/q$a;->h:Le/a/i/f0/l/c;

    invoke-direct {p1, v0, v1, p2}, Le/a/i/f0/l/q$a;-><init>(Le/a/i/f0/l/q;Le/a/i/f0/l/c;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/i/f0/l/q$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/f0/l/q$a;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, v0, Le/a/i/f0/l/q$a;->e:Ljava/lang/Object;

    check-cast v1, Le/a/i/f0/l/q$a;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    goto/16 :goto_15

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object v0, v0, Le/a/i/f0/l/q$a;->e:Ljava/lang/Object;

    iput v3, v0, Le/a/i/f0/l/q$a;->f:I

    .line 5
    new-instance v2, Lq3/a/o;

    invoke-static/range {p0 .. p0}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 6
    invoke-virtual {v2}, Lq3/a/o;->z()V

    .line 7
    iget-object v4, v0, Le/a/i/f0/l/q$a;->h:Le/a/i/f0/l/c;

    .line 8
    iget-object v5, v4, Le/a/i/f0/l/c;->a:Le/a/i/s;

    .line 9
    :try_start_0
    new-instance v6, Lcom/google/android/gms/ads/AdLoader$Builder;

    iget-object v7, v0, Le/a/i/f0/l/q$a;->g:Le/a/i/f0/l/q;

    .line 10
    iget-object v7, v7, Le/a/i/f0/l/q;->e:Landroid/content/Context;

    .line 11
    iget-object v4, v4, Le/a/i/f0/l/c;->b:Ljava/lang/String;

    .line 12
    invoke-direct {v6, v7, v4}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 13
    new-instance v4, Le/a/i/f0/l/b;

    invoke-direct {v4}, Le/a/i/f0/l/b;-><init>()V

    new-instance v7, Le/a/i/f0/l/q$a$a;

    invoke-direct {v7, v2}, Le/a/i/f0/l/q$a$a;-><init>(Lq3/a/n;)V

    .line 14
    iput-object v7, v4, Le/a/i/f0/l/b;->a:Ls1/z/b/l;

    .line 15
    invoke-virtual {v6, v4}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    .line 16
    new-instance v7, Le/a/i/f0/l/q$a$b;

    invoke-direct {v7, v2, v4, v0}, Le/a/i/f0/l/q$a$b;-><init>(Lq3/a/n;Le/a/i/f0/l/b;Le/a/i/f0/l/q$a;)V

    invoke-virtual {v6, v7}, Lcom/google/android/gms/ads/AdLoader$Builder;->forNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v7

    .line 17
    new-instance v8, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    invoke-direct {v8}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;-><init>()V

    const/4 v9, 0x0

    .line 18
    invoke-virtual {v8, v9}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->setRequestMultipleImages(Z)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    .line 19
    iget-boolean v10, v5, Le/a/i/s;->o:Z

    xor-int/2addr v10, v3

    .line 20
    invoke-virtual {v8, v10}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->setReturnUrlsForImageAssets(Z)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    .line 21
    iget v10, v5, Le/a/i/s;->i:I

    .line 22
    invoke-static {}, Le/a/b0/k/h;->a()Z

    move-result v11

    const/4 v12, 0x3

    const/4 v13, 0x2

    if-eqz v11, :cond_6

    if-eqz v10, :cond_5

    if-eq v10, v3, :cond_4

    if-eq v10, v13, :cond_3

    if-eq v10, v12, :cond_2

    goto :goto_0

    :cond_2
    move v10, v13

    goto :goto_0

    :cond_3
    move v10, v12

    goto :goto_0

    :cond_4
    move v10, v9

    goto :goto_0

    :cond_5
    move v10, v3

    .line 23
    :cond_6
    :goto_0
    invoke-virtual {v8, v10}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->setAdChoicesPlacement(I)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    .line 24
    invoke-virtual {v8, v13}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->setMediaAspectRatio(I)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    .line 25
    new-instance v10, Lcom/google/android/gms/ads/VideoOptions$Builder;

    invoke-direct {v10}, Lcom/google/android/gms/ads/VideoOptions$Builder;-><init>()V

    .line 26
    iget-boolean v11, v5, Le/a/i/s;->k:Z

    xor-int/2addr v11, v3

    .line 27
    invoke-virtual {v10, v11}, Lcom/google/android/gms/ads/VideoOptions$Builder;->setStartMuted(Z)Lcom/google/android/gms/ads/VideoOptions$Builder;

    move-result-object v10

    .line 28
    iget-boolean v11, v5, Le/a/i/s;->l:Z

    .line 29
    invoke-virtual {v10, v11}, Lcom/google/android/gms/ads/VideoOptions$Builder;->setCustomControlsRequested(Z)Lcom/google/android/gms/ads/VideoOptions$Builder;

    move-result-object v10

    .line 30
    invoke-virtual {v10}, Lcom/google/android/gms/ads/VideoOptions$Builder;->build()Lcom/google/android/gms/ads/VideoOptions;

    move-result-object v10

    .line 31
    invoke-virtual {v8, v10}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->setVideoOptions(Lcom/google/android/gms/ads/VideoOptions;)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    .line 32
    invoke-virtual {v8}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    move-result-object v8

    .line 33
    invoke-virtual {v7, v8}, Lcom/google/android/gms/ads/AdLoader$Builder;->withNativeAdOptions(Lcom/google/android/gms/ads/nativead/NativeAdOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;

    .line 34
    iget-object v7, v5, Le/a/i/s;->e:Ljava/util/List;

    .line 35
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v3

    const-string v8, "null cannot be cast to non-null type kotlin.Array<T>"

    if-eqz v7, :cond_7

    .line 36
    new-instance v7, Le/a/i/f0/l/q$a$c;

    invoke-direct {v7, v2, v4, v0}, Le/a/i/f0/l/q$a$c;-><init>(Lq3/a/n;Le/a/i/f0/l/b;Le/a/i/f0/l/q$a;)V

    .line 37
    iget-object v10, v5, Le/a/i/s;->e:Ljava/util/List;

    new-array v9, v9, [Lcom/google/android/gms/ads/AdSize;

    .line 38
    invoke-interface {v10, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v9, [Lcom/google/android/gms/ads/AdSize;

    array-length v10, v9

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/google/android/gms/ads/AdSize;

    .line 39
    invoke-virtual {v6, v7, v9}, Lcom/google/android/gms/ads/AdLoader$Builder;->forAdManagerAdView(Lcom/google/android/gms/ads/formats/OnAdManagerAdViewLoadedListener;[Lcom/google/android/gms/ads/AdSize;)Lcom/google/android/gms/ads/AdLoader$Builder;

    .line 40
    :cond_7
    iget-object v7, v5, Le/a/i/s;->f:Ljava/util/List;

    .line 41
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/truecaller/ads/CustomTemplate;

    .line 42
    iget-boolean v10, v9, Lcom/truecaller/ads/CustomTemplate;->openUrl:Z

    if-ne v10, v3, :cond_8

    const/4 v10, 0x0

    goto :goto_2

    :cond_8
    if-nez v10, :cond_9

    .line 43
    new-instance v10, Le/a/i/f0/l/q$a$d;

    invoke-direct {v10, v4, v6, v2, v0}, Le/a/i/f0/l/q$a$d;-><init>(Le/a/i/f0/l/b;Lcom/google/android/gms/ads/AdLoader$Builder;Lq3/a/n;Le/a/i/f0/l/q$a;)V

    .line 44
    :goto_2
    iget-object v9, v9, Lcom/truecaller/ads/CustomTemplate;->templateId:Ljava/lang/String;

    new-instance v11, Le/a/i/f0/l/q$a$e;

    invoke-direct {v11, v4, v6, v2, v0}, Le/a/i/f0/l/q$a$e;-><init>(Le/a/i/f0/l/b;Lcom/google/android/gms/ads/AdLoader$Builder;Lq3/a/n;Le/a/i/f0/l/q$a;)V

    .line 45
    invoke-virtual {v6, v9, v11, v10}, Lcom/google/android/gms/ads/AdLoader$Builder;->forCustomFormatAd(Ljava/lang/String;Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    goto :goto_1

    .line 46
    :cond_9
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    .line 47
    :cond_a
    iget-object v4, v0, Le/a/i/f0/l/q$a;->g:Le/a/i/f0/l/q;

    .line 48
    iget-object v7, v4, Le/a/i/f0/l/q;->l:Le/a/z4/a;

    const-string v9, "adsRequestTimestamp"

    const-wide/16 v10, 0x0

    invoke-interface {v7, v9, v10, v11}, Le/a/z4/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 49
    iget-object v7, v4, Le/a/i/f0/l/q;->g:Le/a/p5/c;

    invoke-interface {v7}, Le/a/p5/c;->c()J

    move-result-wide v14

    cmp-long v7, v12, v10

    const-string v10, "adsRequestedCounter"

    if-nez v7, :cond_b

    .line 50
    iget-object v7, v4, Le/a/i/f0/l/q;->l:Le/a/z4/a;

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Le/a/z4/a;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    .line 51
    :cond_b
    new-instance v7, Lw3/b/a/q;

    .line 52
    invoke-static {}, Lw3/b/a/f0/t;->Y()Lw3/b/a/f0/t;

    move-result-object v11

    invoke-direct {v7, v12, v13, v11}, Lw3/b/a/q;-><init>(JLw3/b/a/a;)V

    .line 53
    new-instance v11, Lw3/b/a/p;

    .line 54
    iget-wide v12, v7, Lw3/b/a/q;->a:J

    .line 55
    iget-object v7, v7, Lw3/b/a/q;->b:Lw3/b/a/a;

    .line 56
    invoke-direct {v11, v12, v13, v7}, Lw3/b/a/p;-><init>(JLw3/b/a/a;)V

    .line 57
    invoke-static {}, Lw3/b/a/p;->h()Lw3/b/a/p;

    move-result-object v7

    .line 58
    invoke-static {v11, v7}, Lw3/b/a/h;->r(Lw3/b/a/b0;Lw3/b/a/b0;)Lw3/b/a/h;

    move-result-object v7

    const-string v11, "Days.daysBetween(lastDateTime, currentDateTime)"

    invoke-static {v7, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget v7, v7, Lw3/b/a/e0/i;->a:I

    if-eqz v7, :cond_c

    .line 60
    iget-object v7, v4, Le/a/i/f0/l/q;->l:Le/a/z4/a;

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Le/a/z4/a;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    :cond_c
    const/4 v11, 0x0

    .line 61
    :goto_3
    iget-object v4, v4, Le/a/i/f0/l/q;->l:Le/a/z4/a;

    invoke-interface {v4, v9, v14, v15}, Le/a/z4/a;->putLong(Ljava/lang/String;J)V

    .line 62
    iget-object v4, v0, Le/a/i/f0/l/q$a;->g:Le/a/i/f0/l/q;

    .line 63
    iget-object v7, v4, Le/a/i/f0/l/q;->l:Le/a/z4/a;

    .line 64
    invoke-interface {v7, v10, v11}, Le/a/z4/a;->getInt(Ljava/lang/String;I)I

    move-result v7

    add-int/2addr v7, v3

    .line 65
    iput v7, v4, Le/a/i/f0/l/q;->d:I

    .line 66
    iget-object v3, v0, Le/a/i/f0/l/q$a;->g:Le/a/i/f0/l/q;

    .line 67
    iget-object v4, v3, Le/a/i/f0/l/q;->e:Landroid/content/Context;

    .line 68
    iget-object v7, v0, Le/a/i/f0/l/q$a;->h:Le/a/i/f0/l/c;

    .line 69
    iget-object v9, v7, Le/a/i/f0/l/c;->c:[Ljava/lang/String;

    .line 70
    iget-object v11, v7, Le/a/i/f0/l/c;->h:Ljava/lang/String;

    .line 71
    iget-boolean v12, v7, Le/a/i/f0/l/c;->e:Z

    .line 72
    iget-object v7, v7, Le/a/i/f0/l/c;->g:Ljava/lang/String;

    const/16 v13, 0xa

    new-array v13, v13, [Ls1/k;

    .line 73
    iget-object v14, v3, Le/a/i/f0/l/q;->h:Le/a/c3/a;

    invoke-interface {v14}, Le/a/c3/a;->getName()Ljava/lang/String;

    move-result-object v14

    .line 74
    new-instance v15, Ls1/k;

    move-object/from16 v16, v1

    const-string v1, "buildname"

    invoke-direct {v15, v1, v14}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v15, v13, v1

    .line 75
    iget-object v1, v3, Le/a/i/f0/l/q;->i:Ljava/lang/String;

    .line 76
    new-instance v14, Ls1/k;

    const-string v15, "appversion"

    invoke-direct {v14, v15, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aput-object v14, v13, v1

    .line 77
    iget-object v1, v3, Le/a/i/f0/l/q;->f:Le/a/p5/g;

    invoke-interface {v1}, Le/a/p5/g;->B()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "t"

    goto :goto_4

    :cond_d
    const-string v1, "f"

    .line 78
    :goto_4
    new-instance v14, Ls1/k;

    const-string v15, "sms"

    invoke-direct {v14, v15, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x2

    aput-object v14, v13, v1

    .line 79
    iget-object v1, v3, Le/a/i/f0/l/q;->m:Le/a/g/c;

    invoke-interface {v1}, Le/a/g/c;->c()Z

    move-result v1

    const-string v14, "0"

    const-string v15, "1"

    move-object/from16 p1, v14

    if-eqz v1, :cond_e

    move-object v1, v15

    goto :goto_5

    :cond_e
    move-object/from16 v1, p1

    .line 80
    :goto_5
    new-instance v14, Ls1/k;

    move-object/from16 v17, v2

    const-string v2, "facs_enabled"

    invoke-direct {v14, v2, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x3

    aput-object v14, v13, v1

    const/4 v1, 0x4

    .line 81
    new-instance v2, Ls1/k;

    const-string v14, "new_pacs_enabled"

    invoke-direct {v2, v14, v15}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v13, v1

    const/4 v1, 0x5

    .line 82
    iget v2, v3, Le/a/i/f0/l/q;->d:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 83
    new-instance v14, Ls1/k;

    move-object/from16 v18, v15

    const-string v15, "ad_request_count"

    invoke-direct {v14, v15, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v14, v13, v1

    const/4 v1, 0x6

    .line 84
    iget-object v2, v3, Le/a/i/f0/l/q;->k:Le/a/u3/g;

    invoke-virtual {v2}, Le/a/u3/g;->V()Le/a/u3/b;

    move-result-object v2

    invoke-interface {v2}, Le/a/u3/b;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v2, v18

    goto :goto_6

    :cond_f
    move-object/from16 v2, p1

    .line 85
    :goto_6
    new-instance v14, Ls1/k;

    const-string v15, "fallback_acs"

    invoke-direct {v14, v15, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v14, v13, v1

    const/4 v1, 0x7

    .line 86
    iget-object v2, v3, Le/a/i/f0/l/q;->n:Le/a/p5/u;

    invoke-interface {v2}, Le/a/p5/u;->d()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v2, v18

    goto :goto_7

    :cond_10
    move-object/from16 v2, p1

    .line 87
    :goto_7
    new-instance v14, Ls1/k;

    const-string v15, "connection"

    invoke-direct {v14, v15, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v14, v13, v1

    const/16 v1, 0x8

    if-eqz v12, :cond_11

    move-object/from16 v2, p1

    goto :goto_8

    :cond_11
    move-object/from16 v2, v18

    .line 88
    :goto_8
    new-instance v12, Ls1/k;

    const-string v14, "npa"

    invoke-direct {v12, v14, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v13, v1

    const/16 v1, 0x9

    .line 89
    new-instance v2, Ls1/k;

    const-string v12, "request_id"

    invoke-direct {v2, v12, v7}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v13, v1

    .line 90
    invoke-static {v13}, Ls1/u/i;->e0([Ls1/k;)Ljava/util/Map;

    move-result-object v1

    if-eqz v11, :cond_13

    const-string v2, "request_source"

    .line 91
    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v2, v3, Le/a/i/f0/l/q;->k:Le/a/u3/g;

    invoke-virtual {v2}, Le/a/u3/g;->R()Le/a/u3/b;

    move-result-object v2

    invoke-interface {v2}, Le/a/u3/b;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v14, v18

    goto :goto_9

    :cond_12
    move-object/from16 v14, p1

    :goto_9
    const-string v2, "offline_ads_enabled"

    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_13
    iget-object v2, v3, Le/a/i/f0/l/q;->h:Le/a/c3/a;

    invoke-interface {v2}, Le/a/c3/a;->a()Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "OEM_build"

    const/4 v7, 0x0

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_14
    const/4 v7, 0x0

    :goto_a
    :try_start_1
    const-string v2, "phone"

    .line 94
    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "carrier"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    :catch_0
    :cond_15
    iget-object v2, v3, Le/a/i/f0/l/q;->c:Ljava/lang/String;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_16

    goto :goto_b

    :cond_16
    const/4 v2, 0x0

    goto :goto_c

    :cond_17
    :goto_b
    const/4 v2, 0x1

    :goto_c
    if-eqz v2, :cond_18

    .line 97
    iget-object v2, v3, Le/a/i/f0/l/q;->a:Lq3/a/y;

    invoke-interface {v2}, Lq3/a/p1;->j()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 98
    invoke-virtual {v3}, Le/a/i/f0/l/q;->d()Lq3/a/p1;

    goto :goto_d

    .line 99
    :cond_18
    iget-object v2, v3, Le/a/i/f0/l/q;->c:Ljava/lang/String;

    const-string v4, "adId"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_19
    :goto_d
    invoke-static {}, Le/a/b0/q/n;->b()Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1a

    const-string v4, "device"

    .line 102
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    if-eqz v9, :cond_1b

    goto :goto_e

    :cond_1b
    const/4 v2, 0x0

    new-array v9, v2, [Ljava/lang/String;

    .line 103
    :goto_e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 104
    array-length v4, v9

    const/4 v11, 0x0

    :goto_f
    if-ge v11, v4, :cond_1e

    aget-object v12, v9, v11

    .line 105
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_1c

    const/4 v13, 0x1

    goto :goto_10

    :cond_1c
    const/4 v13, 0x0

    :goto_10
    if-nez v13, :cond_1d

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    .line 106
    :cond_1e
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 107
    :cond_1f
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v9, ":"

    const/4 v11, 0x2

    .line 108
    invoke-static {v9, v4, v11}, Le/d/c/a/a;->b0(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    const/4 v9, 0x0

    new-array v11, v9, [Ljava/lang/String;

    .line 109
    invoke-interface {v4, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    check-cast v4, [Ljava/lang/String;

    .line 111
    aget-object v11, v4, v9

    .line 112
    array-length v12, v4

    const/4 v13, 0x1

    if-le v12, v13, :cond_20

    aget-object v4, v4, v13

    goto :goto_12

    :cond_20
    move-object v4, v7

    .line 113
    :goto_12
    invoke-interface {v1, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_23

    if-eqz v4, :cond_21

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_22

    :cond_21
    move v9, v13

    :cond_22
    if-nez v9, :cond_23

    .line 114
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    move-object v12, v1

    check-cast v12, Ljava/util/LinkedHashMap;

    invoke-virtual {v12, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ","

    .line 116
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v9, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v4, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_23
    if-eqz v4, :cond_1f

    .line 119
    invoke-interface {v1, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 120
    :cond_24
    iget-object v2, v3, Le/a/i/f0/l/q;->o:Le/a/i/d/b;

    invoke-interface {v2}, Le/a/i/d/b;->F3()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_25

    const-string v3, "tile_count"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_25
    iget-object v2, v0, Le/a/i/f0/l/q$a;->g:Le/a/i/f0/l/q;

    iget-object v3, v0, Le/a/i/f0/l/q$a;->h:Le/a/i/f0/l/c;

    .line 122
    iget-object v3, v3, Le/a/i/f0/l/c;->b:Ljava/lang/String;

    .line 123
    iget-object v4, v2, Le/a/i/f0/l/q;->b:Ljava/util/Map;

    new-instance v7, Le/a/i/f0/l/n;

    .line 124
    iget-object v2, v2, Le/a/i/f0/l/q;->g:Le/a/p5/c;

    invoke-interface {v2}, Le/a/p5/c;->c()J

    move-result-wide v8

    .line 125
    invoke-direct {v7, v8, v9, v3, v1}, Le/a/i/f0/l/n;-><init>(JLjava/lang/String;Ljava/util/Map;)V

    invoke-interface {v4, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :try_start_2
    invoke-virtual {v6}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object v2

    .line 127
    iget-object v3, v0, Le/a/i/f0/l/q$a;->g:Le/a/i/f0/l/q;

    .line 128
    iget-object v4, v3, Le/a/i/f0/l/q;->e:Landroid/content/Context;

    .line 129
    iget-object v6, v0, Le/a/i/f0/l/q$a;->h:Le/a/i/f0/l/c;

    .line 130
    iget-boolean v6, v6, Le/a/i/f0/l/c;->e:Z

    .line 131
    iget-boolean v5, v5, Le/a/i/s;->p:Z

    .line 132
    invoke-virtual {v3, v4, v6, v5, v1}, Le/a/i/f0/l/q;->c(Landroid/content/Context;ZZLjava/util/Map;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    move-result-object v1

    .line 133
    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 134
    iget-object v1, v0, Le/a/i/f0/l/q$a;->g:Le/a/i/f0/l/q;

    .line 135
    iget-object v2, v1, Le/a/i/f0/l/q;->l:Le/a/z4/a;

    .line 136
    iget v1, v1, Le/a/i/f0/l/q;->d:I

    .line 137
    invoke-interface {v2, v10, v1}, Le/a/z4/a;->putInt(Ljava/lang/String;I)V

    goto :goto_13

    .line 138
    :catch_1
    new-instance v1, Le/a/i/f0/l/d;

    const/4 v2, -0x5

    const-string v3, "Error while requesting an ad"

    invoke-direct {v1, v2, v3}, Le/a/i/f0/l/d;-><init>(ILjava/lang/String;)V

    .line 139
    invoke-virtual/range {v17 .. v17}, Lq3/a/o;->b()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 140
    invoke-static {v1}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-virtual {v2, v1}, Lq3/a/o;->c(Ljava/lang/Object;)V

    goto :goto_14

    :cond_26
    :goto_13
    move-object/from16 v2, v17

    goto :goto_14

    :catch_2
    move-object/from16 v16, v1

    .line 141
    new-instance v1, Le/a/i/f0/l/d;

    const/4 v3, -0x3

    const-string v4, "Error creating AdLoader"

    invoke-direct {v1, v3, v4}, Le/a/i/f0/l/d;-><init>(ILjava/lang/String;)V

    .line 142
    invoke-virtual {v2}, Lq3/a/o;->b()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 143
    invoke-static {v1}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Lq3/a/o;->c(Ljava/lang/Object;)V

    .line 144
    :cond_27
    :goto_14
    invoke-virtual {v2}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v2, v16

    if-ne v1, v2, :cond_28

    const-string v3, "frame"

    .line 145
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_28
    if-ne v1, v2, :cond_29

    return-object v2

    :cond_29
    :goto_15
    return-object v1
.end method
