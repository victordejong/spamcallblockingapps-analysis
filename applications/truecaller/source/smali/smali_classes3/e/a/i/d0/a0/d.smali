.class public final Le/a/i/d0/a0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/d0/a0/q;
.implements Le/a/i/d0/a0/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/i/d0/a0/d$a;
    }
.end annotation


# instance fields
.field public a:Lcom/appnext/nativeads/NativeAd;

.field public b:Lcom/appnext/nativeads/MediaView;

.field public c:Lcom/appnext/nativeads/NativeAdListener;

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/p5/h0;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ls1/w/f;


# direct methods
.method public constructor <init>(Lo3/a;Ls1/w/f;)V
    .locals 1
    .param p1    # Lo3/a;
        .annotation runtime Ljavax/inject/Named;
            value = "adThemedResource"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/p5/h0;",
            ">;",
            "Ls1/w/f;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "themedResourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/d0/a0/d;->d:Lo3/a;

    iput-object p2, p0, Le/a/i/d0/a0/d;->e:Ls1/w/f;

    return-void
.end method

.method public static final synthetic d(Le/a/i/d0/a0/d;)Lcom/appnext/nativeads/MediaView;
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/i/d0/a0/d;->b:Lcom/appnext/nativeads/MediaView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "appNextMediaView"

    invoke-static {p0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic e(Le/a/i/d0/a0/d;)Lcom/appnext/nativeads/NativeAd;
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/i/d0/a0/d;->a:Lcom/appnext/nativeads/NativeAd;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "nativeAd"

    invoke-static {p0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/i/d0/j<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object p2, Le/a/i/d0/e0/b;->b:Le/a/i/d0/e0/b;

    .line 2
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-boolean v0, Le/a/i/d0/e0/b;->a:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-instance p1, Le/a/i/d0/k;

    invoke-direct {p1, p3, v2, v1}, Le/a/i/d0/k;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    goto :goto_0

    .line 4
    :cond_0
    monitor-enter p2

    .line 5
    :try_start_0
    sget-boolean v0, Le/a/i/d0/e0/b;->a:Z

    if-eqz v0, :cond_1

    new-instance p1, Le/a/i/d0/k;

    invoke-direct {p1, p3, v2, v1}, Le/a/i/d0/k;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    goto :goto_0

    .line 6
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/appnext/base/Appnext;->init(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 7
    sput-boolean p1, Le/a/i/d0/e0/b;->a:Z

    .line 8
    new-instance p1, Le/a/i/d0/k;

    invoke-direct {p1, p3, v2, v1}, Le/a/i/d0/k;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p2

    :goto_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p2

    throw p1
.end method

.method public b(Landroid/content/Context;Le/a/i/d0/a0/p;Ls1/w/d;)Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/a/i/d0/a0/p;",
            "Ls1/w/d<",
            "-",
            "Le/a/i/d0/j<",
            "+",
            "Le/a/i/d0/h0/a;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    sget-object v4, Ls1/w/j/a;->a:Ls1/w/j/a;

    instance-of v5, v3, Le/a/i/d0/a0/d$b;

    if-eqz v5, :cond_0

    move-object v5, v3

    check-cast v5, Le/a/i/d0/a0/d$b;

    iget v6, v5, Le/a/i/d0/a0/d$b;->e:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_0

    sub-int/2addr v6, v7

    iput v6, v5, Le/a/i/d0/a0/d$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v5, Le/a/i/d0/a0/d$b;

    invoke-direct {v5, v0, v3}, Le/a/i/d0/a0/d$b;-><init>(Le/a/i/d0/a0/d;Ls1/w/d;)V

    :goto_0
    iget-object v3, v5, Le/a/i/d0/a0/d$b;->d:Ljava/lang/Object;

    .line 1
    iget v6, v5, Le/a/i/d0/a0/d$b;->e:I

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v6, :cond_3

    if-eq v6, v8, :cond_2

    if-ne v6, v7, :cond_1

    invoke-static {v3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v1, v5, Le/a/i/d0/a0/d$b;->j:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v5, Le/a/i/d0/a0/d$b;->i:Ljava/lang/Object;

    check-cast v2, Le/a/i/d0/a0/p;

    iget-object v6, v5, Le/a/i/d0/a0/d$b;->h:Ljava/lang/Object;

    check-cast v6, Landroid/content/Context;

    iget-object v10, v5, Le/a/i/d0/a0/d$b;->g:Ljava/lang/Object;

    check-cast v10, Le/a/i/d0/a0/d;

    invoke-static {v3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v3, v1

    move-object v15, v2

    move-object v1, v6

    move-object v12, v10

    goto :goto_2

    :cond_3
    invoke-static {v3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v3, v2, Le/a/i/d0/a0/p;->c:Ljava/util/List;

    .line 5
    invoke-static {v3}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/ads/mediation/model/AdSize;

    const-string v6, "AppNext"

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/truecaller/ads/mediation/model/AdSize;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 6
    iget-object v10, v2, Le/a/i/d0/a0/p;->c:Ljava/util/List;

    .line 7
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Lcom/truecaller/ads/mediation/model/AdSize;

    .line 8
    invoke-static {v12}, Le/m/d/y/n;->e(Lcom/truecaller/ads/mediation/model/AdSize;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "html_300x250"

    invoke-static {v12, v13}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .line 9
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 10
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_1

    :cond_5
    move-object v11, v9

    .line 11
    :goto_1
    check-cast v11, Lcom/truecaller/ads/mediation/model/AdSize;

    if-eqz v11, :cond_9

    .line 12
    iget-object v6, v2, Le/a/i/d0/a0/p;->b:Ljava/lang/String;

    .line 13
    iput-object v0, v5, Le/a/i/d0/a0/d$b;->g:Ljava/lang/Object;

    iput-object v1, v5, Le/a/i/d0/a0/d$b;->h:Ljava/lang/Object;

    iput-object v2, v5, Le/a/i/d0/a0/d$b;->i:Ljava/lang/Object;

    iput-object v3, v5, Le/a/i/d0/a0/d$b;->j:Ljava/lang/Object;

    iput v8, v5, Le/a/i/d0/a0/d$b;->e:I

    invoke-virtual {v0, v1, v6, v5}, Le/a/i/d0/a0/d;->a(Landroid/content/Context;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_6

    return-object v4

    :cond_6
    move-object v12, v0

    move-object v15, v2

    .line 14
    :goto_2
    iput-object v9, v5, Le/a/i/d0/a0/d$b;->g:Ljava/lang/Object;

    iput-object v9, v5, Le/a/i/d0/a0/d$b;->h:Ljava/lang/Object;

    iput-object v9, v5, Le/a/i/d0/a0/d$b;->i:Ljava/lang/Object;

    iput-object v9, v5, Le/a/i/d0/a0/d$b;->j:Ljava/lang/Object;

    iput v7, v5, Le/a/i/d0/a0/d$b;->e:I

    .line 15
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v2, Lq3/a/o;

    invoke-static {v5}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v6

    invoke-direct {v2, v6, v8}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 17
    invoke-virtual {v2}, Lq3/a/o;->z()V

    .line 18
    sget-object v16, Le/a/i/d0/g;->a:Le/a/i/d0/g;

    .line 19
    iget-object v6, v15, Le/a/i/d0/a0/p;->a:Ljava/lang/String;

    .line 20
    iget-object v7, v15, Le/a/i/d0/a0/p;->b:Ljava/lang/String;

    const/16 v22, 0x7

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v20, v7

    move-object/from16 v21, v6

    .line 21
    invoke-static/range {v16 .. v22}, Le/a/i/d0/g;->a(Le/a/i/d0/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 22
    new-instance v7, Le/a/i/d0/a0/f;

    move-object v10, v7

    move-object v11, v2

    move-object v13, v1

    move-object v14, v3

    invoke-direct/range {v10 .. v15}, Le/a/i/d0/a0/f;-><init>(Lq3/a/n;Le/a/i/d0/a0/d;Landroid/content/Context;Ljava/lang/String;Le/a/i/d0/a0/p;)V

    .line 23
    invoke-static {v1, v3, v6, v7}, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader;->loadAds(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoaderCallbacks;)V

    .line 24
    invoke-virtual {v2}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_7

    const-string v1, "frame"

    .line 25
    invoke-static {v5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    if-ne v3, v4, :cond_8

    return-object v4

    :cond_8
    :goto_3
    return-object v3

    .line 26
    :cond_9
    new-instance v1, Le/a/i/d0/i;

    new-instance v2, Le/a/i/d0/s;

    const-string v3, "Suggested_300x250"

    invoke-direct {v2, v3, v6}, Le/a/i/d0/s;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Le/a/i/d0/i;-><init>(Le/a/i/c/b/a;)V

    return-object v1

    .line 27
    :cond_a
    new-instance v1, Le/a/i/d0/i;

    new-instance v2, Le/a/i/d0/w;

    invoke-direct {v2, v6}, Le/a/i/d0/w;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Le/a/i/d0/i;-><init>(Le/a/i/c/b/a;)V

    return-object v1
.end method

.method public c(Landroid/content/Context;Le/a/i/d0/a0/r;Le/a/i/d0/z;Ls1/w/d;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/a/i/d0/a0/r;",
            "Le/a/i/d0/z;",
            "Ls1/w/d<",
            "-",
            "Le/a/i/d0/j<",
            "+",
            "Le/a/i/d0/h0/a;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    instance-of v4, v3, Le/a/i/d0/a0/d$c;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Le/a/i/d0/a0/d$c;

    iget v5, v4, Le/a/i/d0/a0/d$c;->e:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Le/a/i/d0/a0/d$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v4, Le/a/i/d0/a0/d$c;

    invoke-direct {v4, v0, v3}, Le/a/i/d0/a0/d$c;-><init>(Le/a/i/d0/a0/d;Ls1/w/d;)V

    :goto_0
    iget-object v3, v4, Le/a/i/d0/a0/d$c;->d:Ljava/lang/Object;

    sget-object v5, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v6, v4, Le/a/i/d0/a0/d$c;->e:I

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v6, :cond_3

    if-eq v6, v8, :cond_2

    if-ne v6, v7, :cond_1

    invoke-static {v3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v1, v4, Le/a/i/d0/a0/d$c;->j:Ljava/lang/Object;

    check-cast v1, Le/a/i/d0/z;

    iget-object v2, v4, Le/a/i/d0/a0/d$c;->i:Ljava/lang/Object;

    check-cast v2, Le/a/i/d0/a0/r;

    iget-object v6, v4, Le/a/i/d0/a0/d$c;->h:Ljava/lang/Object;

    check-cast v6, Landroid/content/Context;

    iget-object v8, v4, Le/a/i/d0/a0/d$c;->g:Ljava/lang/Object;

    check-cast v8, Le/a/i/d0/a0/d;

    invoke-static {v3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v11, v1

    move-object v10, v6

    move-object v9, v8

    goto :goto_1

    :cond_3
    invoke-static {v3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v3, v2, Le/a/i/d0/a0/r;->b:Ljava/lang/String;

    .line 5
    iput-object v0, v4, Le/a/i/d0/a0/d$c;->g:Ljava/lang/Object;

    iput-object v1, v4, Le/a/i/d0/a0/d$c;->h:Ljava/lang/Object;

    iput-object v2, v4, Le/a/i/d0/a0/d$c;->i:Ljava/lang/Object;

    move-object/from16 v6, p3

    iput-object v6, v4, Le/a/i/d0/a0/d$c;->j:Ljava/lang/Object;

    iput v8, v4, Le/a/i/d0/a0/d$c;->e:I

    invoke-virtual {v0, v1, v3, v4}, Le/a/i/d0/a0/d;->a(Landroid/content/Context;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_4

    return-object v5

    :cond_4
    move-object v9, v0

    move-object v10, v1

    move-object v11, v6

    .line 6
    :goto_1
    iget-object v12, v2, Le/a/i/d0/a0/r;->b:Ljava/lang/String;

    .line 7
    iget-object v14, v2, Le/a/i/d0/a0/r;->a:Ljava/lang/String;

    .line 8
    iget-object v13, v2, Le/a/i/d0/a0/r;->c:Ljava/lang/String;

    const/4 v1, 0x0

    .line 9
    iput-object v1, v4, Le/a/i/d0/a0/d$c;->g:Ljava/lang/Object;

    iput-object v1, v4, Le/a/i/d0/a0/d$c;->h:Ljava/lang/Object;

    iput-object v1, v4, Le/a/i/d0/a0/d$c;->i:Ljava/lang/Object;

    iput-object v1, v4, Le/a/i/d0/a0/d$c;->j:Ljava/lang/Object;

    iput v7, v4, Le/a/i/d0/a0/d$c;->e:I

    .line 10
    iget-object v1, v9, Le/a/i/d0/a0/d;->e:Ls1/w/f;

    new-instance v2, Le/a/i/d0/a0/e;

    const/4 v15, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v15}, Le/a/i/d0/a0/e;-><init>(Le/a/i/d0/a0/d;Landroid/content/Context;Le/a/i/d0/z;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v1, v2, v4}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_5

    return-object v5

    :cond_5
    :goto_2
    return-object v3
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/i/d0/a0/d;->a:Lcom/appnext/nativeads/NativeAd;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appnext/nativeads/NativeAd;->destroy()V

    goto :goto_0

    :cond_0
    const-string v0, "nativeAd"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 2
    :cond_1
    :goto_0
    iput-object v1, p0, Le/a/i/d0/a0/d;->c:Lcom/appnext/nativeads/NativeAdListener;

    return-void
.end method
