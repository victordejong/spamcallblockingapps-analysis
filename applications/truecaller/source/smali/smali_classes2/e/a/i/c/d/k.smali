.class public final Le/a/i/c/d/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/c/d/j;
.implements Lq3/a/i0;


# static fields
.field public static final synthetic l:[Ls1/a/l;


# instance fields
.field public a:Lq3/a/y;

.field public final b:Ls1/b0/c;

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/p5/c;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/f0/a;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/u/b;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/p5/u;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/c/c/c;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/e/k/a;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/e/h/a/l;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ls1/w/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/i/c/d/k;

    const-string v2, "pixelUploadResult"

    const-string v3, "getPixelUploadResult()Z"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->e0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/h;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/i/c/d/k;->l:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Ls1/w/f;)V
    .locals 1
    .param p9    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/p5/c;",
            ">;",
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;",
            "Lo3/a<",
            "Le/a/i/f0/a;",
            ">;",
            "Lo3/a<",
            "Le/a/i/u/b;",
            ">;",
            "Lo3/a<",
            "Le/a/p5/u;",
            ">;",
            "Lo3/a<",
            "Le/a/i/c/c/c;",
            ">;",
            "Lo3/a<",
            "Le/a/i/e/k/a;",
            ">;",
            "Lo3/a<",
            "Le/a/i/e/h/a/l;",
            ">;",
            "Ls1/w/f;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "clock"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsAnalytics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsPixelLoggerRepository"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRouterRestManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineAdsManager"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackerDao"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/c/d/k;->c:Lo3/a;

    iput-object p2, p0, Le/a/i/c/d/k;->d:Lo3/a;

    iput-object p3, p0, Le/a/i/c/d/k;->e:Lo3/a;

    iput-object p4, p0, Le/a/i/c/d/k;->f:Lo3/a;

    iput-object p5, p0, Le/a/i/c/d/k;->g:Lo3/a;

    iput-object p6, p0, Le/a/i/c/d/k;->h:Lo3/a;

    iput-object p7, p0, Le/a/i/c/d/k;->i:Lo3/a;

    iput-object p8, p0, Le/a/i/c/d/k;->j:Lo3/a;

    iput-object p9, p0, Le/a/i/c/d/k;->k:Ls1/w/f;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2, p1}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object p1

    iput-object p1, p0, Le/a/i/c/d/k;->a:Lq3/a/y;

    .line 3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    new-instance p2, Le/a/i/c/d/k$a;

    invoke-direct {p2, p1, p1}, Le/a/i/c/d/k$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iput-object p2, p0, Le/a/i/c/d/k;->b:Ls1/b0/c;

    return-void
.end method

.method public static final d(Le/a/i/c/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    const/4 v0, 0x4

    const-string v1, "%%event%%"

    .line 2
    invoke-static {p1, v1, p2, p0, v0}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%%timestamp%%"

    .line 3
    invoke-static {p1, p2, p4, p0, v0}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%%uuid%%"

    .line 4
    invoke-static {p1, p2, p3, p0, v0}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Le/a/i/c/d/l;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unitConfig"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "partnerId"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adType"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i/c/d/k;->d:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->O3:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0xfa

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    new-instance v0, Le/a/i/c/d/k$b;

    const/4 v10, 0x0

    move-object v4, v0

    move-object v5, p0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p1

    invoke-direct/range {v4 .. v10}, Le/a/i/c/d/k$b;-><init>(Le/a/i/c/d/k;Le/a/i/c/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public b(Le/a/i/c/a/u;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/c/a/u;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "adSource"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pixelType"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackingUrls"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/i/c/d/k$c;

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p5

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v8}, Le/a/i/c/d/k$c;-><init>(Le/a/i/c/d/k;Le/a/i/c/a/u;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public c(Ls1/w/d;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    instance-of v3, v1, Le/a/i/c/d/k$e;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Le/a/i/c/d/k$e;

    iget v4, v3, Le/a/i/c/d/k$e;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/i/c/d/k$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/i/c/d/k$e;

    invoke-direct {v3, v0, v1}, Le/a/i/c/d/k$e;-><init>(Le/a/i/c/d/k;Ls1/w/d;)V

    :goto_0
    iget-object v1, v3, Le/a/i/c/d/k$e;->d:Ljava/lang/Object;

    sget-object v4, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v5, v3, Le/a/i/c/d/k$e;->e:I

    const/16 v6, 0xa

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x3

    if-eqz v5, :cond_4

    if-eq v5, v7, :cond_3

    if-eq v5, v8, :cond_2

    if-ne v5, v9, :cond_1

    iget-object v5, v3, Le/a/i/c/d/k$e;->j:Ljava/lang/Object;

    check-cast v5, Le/a/i/c/d/k;

    iget-object v11, v3, Le/a/i/c/d/k$e;->i:Ljava/lang/Object;

    check-cast v11, Ljava/util/Iterator;

    iget-object v12, v3, Le/a/i/c/d/k$e;->h:Ljava/lang/Object;

    check-cast v12, Le/a/i/e/h/a/l;

    iget-object v13, v3, Le/a/i/c/d/k$e;->g:Ljava/lang/Object;

    check-cast v13, Le/a/i/c/d/k;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v5, v3, Le/a/i/c/d/k$e;->k:Ljava/lang/Object;

    check-cast v5, Le/a/i/c/d/k;

    iget-object v11, v3, Le/a/i/c/d/k$e;->j:Ljava/lang/Object;

    check-cast v11, Ljava/util/Map$Entry;

    iget-object v12, v3, Le/a/i/c/d/k$e;->i:Ljava/lang/Object;

    check-cast v12, Ljava/util/Iterator;

    iget-object v13, v3, Le/a/i/c/d/k$e;->h:Ljava/lang/Object;

    check-cast v13, Le/a/i/e/h/a/l;

    iget-object v14, v3, Le/a/i/c/d/k$e;->g:Ljava/lang/Object;

    check-cast v14, Le/a/i/c/d/k;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    goto/16 :goto_7

    :cond_3
    iget-object v5, v3, Le/a/i/c/d/k$e;->h:Ljava/lang/Object;

    check-cast v5, Le/a/i/e/h/a/l;

    iget-object v11, v3, Le/a/i/c/d/k$e;->g:Ljava/lang/Object;

    check-cast v11, Le/a/i/c/d/k;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/i/c/d/k;->g:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/p5/u;

    invoke-interface {v1}, Le/a/p5/u;->d()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 5
    iget-object v1, v0, Le/a/i/c/d/k;->j:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Le/a/i/e/h/a/l;

    .line 6
    iput-object v0, v3, Le/a/i/c/d/k$e;->g:Ljava/lang/Object;

    iput-object v5, v3, Le/a/i/c/d/k$e;->h:Ljava/lang/Object;

    iput v7, v3, Le/a/i/c/d/k$e;->e:I

    invoke-interface {v5, v3}, Le/a/i/e/h/a/l;->v(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_5

    return-object v4

    :cond_5
    move-object v11, v0

    .line 7
    :goto_1
    move-object v12, v1

    check-cast v12, Ljava/util/List;

    if-eqz v12, :cond_7

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_6

    goto :goto_2

    :cond_6
    const/4 v12, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    move v12, v7

    :goto_3
    if-eqz v12, :cond_8

    return-object v2

    :cond_8
    check-cast v1, Ljava/lang/Iterable;

    .line 8
    invoke-static {v1}, Ls1/u/i;->h1(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v1

    .line 9
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    .line 10
    check-cast v1, Ls1/u/x;

    invoke-virtual {v1}, Ls1/u/x;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    move-object v13, v1

    check-cast v13, Ls1/u/y;

    invoke-virtual {v13}, Ls1/u/y;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-virtual {v13}, Ls1/u/y;->next()Ljava/lang/Object;

    move-result-object v13

    .line 11
    move-object v14, v13

    check-cast v14, Ls1/u/w;

    .line 12
    iget v14, v14, Ls1/u/w;->a:I

    .line 13
    div-int/lit8 v14, v14, 0x19

    .line 14
    new-instance v15, Ljava/lang/Integer;

    invoke-direct {v15, v14}, Ljava/lang/Integer;-><init>(I)V

    .line 15
    invoke-virtual {v12, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_9

    .line 16
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {v12, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_9
    check-cast v14, Ljava/util/List;

    .line 19
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 20
    :cond_a
    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v15, v11

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v14, v11

    check-cast v14, Ljava/util/Map$Entry;

    .line 21
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Iterable;

    .line 22
    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v11, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 24
    check-cast v13, Ls1/u/w;

    .line 25
    new-instance v7, Lcom/truecaller/ads/adslogger/AdsPixelData;

    .line 26
    iget-object v13, v13, Ls1/u/w;->b:Ljava/lang/Object;

    .line 27
    check-cast v13, Le/a/i/e/h/b/d;

    .line 28
    iget-object v10, v13, Le/a/i/e/h/b/d;->b:Ljava/lang/String;

    .line 29
    iget-object v13, v13, Le/a/i/e/h/b/d;->c:Ljava/lang/String;

    .line 30
    invoke-direct {v7, v10, v13}, Lcom/truecaller/ads/adslogger/AdsPixelData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    goto :goto_6

    .line 31
    :cond_b
    new-instance v7, Le/a/i/c/d/k$d;

    const/4 v13, 0x0

    move-object v11, v7

    move-object v10, v14

    move-object v14, v5

    move-object/from16 v17, v15

    move-object/from16 v16, v3

    invoke-direct/range {v11 .. v16}, Le/a/i/c/d/k$d;-><init>(Ljava/util/List;Ls1/w/d;Le/a/i/e/h/a/l;Le/a/i/c/d/k;Ls1/w/d;)V

    move-object/from16 v11, v17

    iput-object v11, v3, Le/a/i/c/d/k$e;->g:Ljava/lang/Object;

    iput-object v5, v3, Le/a/i/c/d/k$e;->h:Ljava/lang/Object;

    iput-object v1, v3, Le/a/i/c/d/k$e;->i:Ljava/lang/Object;

    iput-object v10, v3, Le/a/i/c/d/k$e;->j:Ljava/lang/Object;

    iput-object v11, v3, Le/a/i/c/d/k$e;->k:Ljava/lang/Object;

    iput v8, v3, Le/a/i/c/d/k$e;->e:I

    invoke-static {v7, v3}, Le/m/d/y/n;->m1(Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_c

    return-object v4

    :cond_c
    move-object v12, v5

    move-object v5, v11

    move-object v13, v5

    move-object v11, v1

    move-object v1, v7

    .line 32
    :goto_7
    check-cast v1, Ljava/lang/Boolean;

    .line 33
    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 34
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 35
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v1, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 37
    check-cast v10, Ls1/u/w;

    .line 38
    iget-object v10, v10, Ls1/u/w;->b:Ljava/lang/Object;

    .line 39
    check-cast v10, Le/a/i/e/h/b/d;

    .line 40
    iget-wide v14, v10, Le/a/i/e/h/b/d;->a:J

    .line 41
    new-instance v10, Ljava/lang/Long;

    invoke-direct {v10, v14, v15}, Ljava/lang/Long;-><init>(J)V

    .line 42
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 43
    :cond_d
    iput-object v13, v3, Le/a/i/c/d/k$e;->g:Ljava/lang/Object;

    iput-object v12, v3, Le/a/i/c/d/k$e;->h:Ljava/lang/Object;

    iput-object v11, v3, Le/a/i/c/d/k$e;->i:Ljava/lang/Object;

    iput-object v5, v3, Le/a/i/c/d/k$e;->j:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v3, Le/a/i/c/d/k$e;->k:Ljava/lang/Object;

    iput v9, v3, Le/a/i/c/d/k$e;->e:I

    .line 44
    invoke-interface {v12, v7, v3}, Le/a/i/e/h/a/l;->C(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_e

    return-object v4

    :cond_e
    :goto_9
    move-object v1, v11

    move-object v15, v13

    const/4 v7, 0x1

    goto :goto_a

    :cond_f
    move-object v1, v11

    move-object v15, v13

    const/4 v7, 0x0

    .line 45
    :goto_a
    iget-object v10, v5, Le/a/i/c/d/k;->b:Ls1/b0/c;

    sget-object v11, Le/a/i/c/d/k;->l:[Ls1/a/l;

    const/4 v13, 0x0

    aget-object v11, v11, v13

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v10, v5, v11, v7}, Ls1/b0/c;->a(Ljava/lang/Object;Ls1/a/l;Ljava/lang/Object;)V

    move-object v5, v12

    const/4 v7, 0x1

    goto/16 :goto_5

    :cond_10
    move-object v11, v15

    const/4 v13, 0x0

    .line 46
    iget-object v1, v11, Le/a/i/c/d/k;->b:Ls1/b0/c;

    sget-object v2, Le/a/i/c/d/k;->l:[Ls1/a/l;

    aget-object v2, v2, v13

    invoke-interface {v1, v11, v2}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 47
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 48
    :cond_11
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/i/c/d/k;->k:Ls1/w/f;

    iget-object v1, p0, Le/a/i/c/d/k;->a:Lq3/a/y;

    invoke-interface {v0, v1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v0

    return-object v0
.end method
