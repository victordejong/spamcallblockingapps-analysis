.class public final Le/a/k/a/k/z/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k/a/k/z/c;


# instance fields
.field public final a:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Le/a/k/a/k/z/b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lq3/a/x2/z0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/z0<",
            "Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;",
            ">;"
        }
    .end annotation
.end field

.field public c:Le/a/k/a/k/z/a;

.field public d:Ljava/lang/String;

.field public e:Lq3/a/p1;

.field public f:Lq3/a/p1;

.field public g:Le/a/k/c/g;

.field public final h:Ls1/w/f;

.field public final i:Le/a/k/c/q;

.field public final j:Le/a/k/a/k/d;

.field public final k:Le/a/k/q/e;

.field public final l:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/k/c/q;Le/a/k/a/k/d;Le/a/k/q/e;Ljavax/inject/Provider;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Le/a/k/c/q;",
            "Le/a/k/a/k/d;",
            "Le/a/k/q/e;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exoplayerUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exoplayerProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCallerIdDownloadManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "minPartlyCachePercentage"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k/a/k/z/h;->h:Ls1/w/f;

    iput-object p2, p0, Le/a/k/a/k/z/h;->i:Le/a/k/c/q;

    iput-object p3, p0, Le/a/k/a/k/z/h;->j:Le/a/k/a/k/d;

    iput-object p4, p0, Le/a/k/a/k/z/h;->k:Le/a/k/q/e;

    iput-object p5, p0, Le/a/k/a/k/z/h;->l:Ljavax/inject/Provider;

    .line 2
    sget-object p1, Le/a/k/a/k/z/b$c;->a:Le/a/k/a/k/z/b$c;

    invoke-static {p1}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object p1

    iput-object p1, p0, Le/a/k/a/k/z/h;->a:Lq3/a/x2/a1;

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 p3, 0x7

    .line 3
    invoke-static {p1, p1, p2, p3}, Lq3/a/x2/g1;->a(IILq3/a/w2/i;I)Lq3/a/x2/z0;

    move-result-object p1

    iput-object p1, p0, Le/a/k/a/k/z/h;->b:Lq3/a/x2/z0;

    .line 4
    sget-object p1, Le/a/k/a/k/z/a$b;->a:Le/a/k/a/k/z/a$b;

    iput-object p1, p0, Le/a/k/a/k/z/h;->c:Le/a/k/a/k/z/a;

    return-void
.end method

.method public static synthetic i(Le/a/k/a/k/z/h;Le/m/a/c/c0;Ls1/z/b/p;Ls1/w/d;I)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p2, p4, 0x1

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    .line 1
    new-instance p2, Le/a/k/a/k/z/i;

    invoke-direct {p2, p4}, Le/a/k/a/k/z/i;-><init>(Ls1/w/d;)V

    move-object p4, p2

    :cond_0
    invoke-virtual {p0, p1, p4, p3}, Le/a/k/a/k/z/h;->h(Le/m/a/c/c0;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Y()Le/a/k/a/k/z/a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k/a/k/z/h;->c:Le/a/k/a/k/z/a;

    return-object v0
.end method

.method public a(Lq3/a/i0;)V
    .locals 7

    const-string v0, "scope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Le/a/k/a/k/z/h$c;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Le/a/k/a/k/z/h$c;-><init>(Le/a/k/a/k/z/h;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public b()Lq3/a/x2/e1;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k/a/k/z/h;->b:Lq3/a/x2/z0;

    return-object v0
.end method

.method public c(Lq3/a/i0;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;)V
    .locals 11

    const-string v0, "scope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rawDataSource"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "behaviour"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/k/a/k/z/h;->e:Lq3/a/p1;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    :cond_0
    iget-object v4, p0, Le/a/k/a/k/z/h;->h:Ls1/w/f;

    new-instance v0, Le/a/k/a/k/z/l;

    const/4 v10, 0x0

    move-object v5, v0

    move-object v6, p0

    move-object v7, p4

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v5 .. v10}, Le/a/k/a/k/z/l;-><init>(Le/a/k/a/k/z/h;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;Ls1/w/d;)V

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v3, p1

    move-object v6, v0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    .line 3
    iput-object p1, p0, Le/a/k/a/k/z/h;->e:Lq3/a/p1;

    .line 4
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    iput-object p1, p0, Le/a/k/a/k/z/h;->d:Ljava/lang/String;

    return-void
.end method

.method public d(Lq3/a/i0;Landroid/net/Uri;Le/m/a/c/p1/h;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;)V
    .locals 11

    const-string v0, "scope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentDataSource"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "behaviour"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/k/a/k/z/h;->e:Lq3/a/p1;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    :cond_0
    iget-object v4, p0, Le/a/k/a/k/z/h;->h:Ls1/w/f;

    new-instance v0, Le/a/k/a/k/z/m;

    const/4 v10, 0x0

    move-object v5, v0

    move-object v6, p0

    move-object v7, p4

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v5 .. v10}, Le/a/k/a/k/z/m;-><init>(Le/a/k/a/k/z/h;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Landroid/net/Uri;Le/m/a/c/p1/h;Ls1/w/d;)V

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v3, p1

    move-object v6, v0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    .line 3
    iput-object p1, p0, Le/a/k/a/k/z/h;->e:Lq3/a/p1;

    .line 4
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    iput-object p1, p0, Le/a/k/a/k/z/h;->d:Ljava/lang/String;

    return-void
.end method

.method public e(Lq3/a/i0;)V
    .locals 7

    const-string v0, "scope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Le/a/k/a/k/z/h$n;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Le/a/k/a/k/z/h$n;-><init>(Le/a/k/a/k/z/h;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public f(Lq3/a/i0;Ljava/lang/String;Ljava/lang/Long;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;)V
    .locals 12

    move-object v7, p0

    move-object v8, p2

    const-string v0, "scope"

    move-object v9, p1

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "behaviour"

    move-object/from16 v2, p4

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, v7, Le/a/k/a/k/z/h;->e:Lq3/a/p1;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    :cond_0
    iget-object v10, v7, Le/a/k/a/k/z/h;->h:Ls1/w/f;

    new-instance v11, Le/a/k/a/k/z/k;

    const/4 v6, 0x0

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p4

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Le/a/k/a/k/z/k;-><init>(Le/a/k/a/k/z/h;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Ljava/lang/String;Lq3/a/i0;Ljava/lang/Long;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    move-object v1, p1

    move-object v2, v10

    move-object v4, v11

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    .line 3
    iput-object v0, v7, Le/a/k/a/k/z/h;->e:Lq3/a/p1;

    .line 4
    iput-object v8, v7, Le/a/k/a/k/z/h;->d:Ljava/lang/String;

    return-void
.end method

.method public g(Lq3/a/i0;F)V
    .locals 7

    const-string v0, "scope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Le/a/k/a/k/z/h$o;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p2, v0}, Le/a/k/a/k/z/h$o;-><init>(Le/a/k/a/k/z/h;FLs1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k/a/k/z/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic h(Le/m/a/c/c0;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/c/c0;",
            "Ls1/z/b/p<",
            "-",
            "Le/a/k/c/t;",
            "-",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/k/a/k/z/h;->i:Le/a/k/c/q;

    .line 2
    invoke-interface {v0, p1}, Le/a/k/c/q;->g(Le/m/a/c/c0;)Lq3/a/x2/f;

    move-result-object p1

    .line 3
    new-instance v0, Le/a/k/a/k/z/h$a;

    invoke-direct {v0, p0, p2}, Le/a/k/a/k/z/h$a;-><init>(Le/a/k/a/k/z/h;Ls1/z/b/p;)V

    invoke-interface {p1, v0, p3}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 4
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final j(Le/m/a/c/c0;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/c/c0;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Le/a/k/a/k/z/b$d;->a:Le/a/k/a/k/z/b$d;

    sget-object v1, Ls1/s;->a:Ls1/s;

    instance-of v2, p3, Le/a/k/a/k/z/h$b;

    if-eqz v2, :cond_0

    move-object v2, p3

    check-cast v2, Le/a/k/a/k/z/h$b;

    iget v3, v2, Le/a/k/a/k/z/h$b;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/k/a/k/z/h$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/k/a/k/z/h$b;

    invoke-direct {v2, p0, p3}, Le/a/k/a/k/z/h$b;-><init>(Le/a/k/a/k/z/h;Ls1/w/d;)V

    :goto_0
    iget-object p3, v2, Le/a/k/a/k/z/h$b;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/k/a/k/z/h$b;->e:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v2, Le/a/k/a/k/z/h$b;->i:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    iget-object p1, v2, Le/a/k/a/k/z/h$b;->h:Ljava/lang/Object;

    check-cast p1, Le/m/a/c/c0;

    iget-object v4, v2, Le/a/k/a/k/z/h$b;->g:Ljava/lang/Object;

    check-cast v4, Le/a/k/a/k/z/h;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Le/a/k/a/k/z/h;->i:Le/a/k/c/q;

    iput-object p0, v2, Le/a/k/a/k/z/h$b;->g:Ljava/lang/Object;

    iput-object p1, v2, Le/a/k/a/k/z/h$b;->h:Ljava/lang/Object;

    iput-object p2, v2, Le/a/k/a/k/z/h$b;->i:Ljava/lang/Object;

    iput v6, v2, Le/a/k/a/k/z/h$b;->e:I

    invoke-interface {p3, p2, v2}, Le/a/k/c/q;->f(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v3, :cond_4

    return-object v3

    :cond_4
    move-object v4, p0

    :goto_1
    check-cast p3, Le/a/k/c/g;

    if-eqz p3, :cond_7

    .line 5
    invoke-virtual {p3}, Le/a/k/c/g;->a()I

    move-result v6

    const/16 v7, 0x64

    if-ne v6, v7, :cond_5

    .line 6
    invoke-virtual {v4, p1, p2}, Le/a/k/a/k/z/h;->s(Le/m/a/c/c0;Ljava/lang/String;)V

    goto :goto_2

    .line 7
    :cond_5
    invoke-virtual {p3}, Le/a/k/c/g;->a()I

    move-result p2

    if-lez p2, :cond_6

    .line 8
    iget-object p1, v4, Le/a/k/a/k/z/h;->a:Lq3/a/x2/a1;

    .line 9
    invoke-interface {p1, v0}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    goto :goto_2

    .line 10
    :cond_6
    iget-object p2, v4, Le/a/k/a/k/z/h;->a:Lq3/a/x2/a1;

    .line 11
    invoke-interface {p2, v0}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 12
    iput-object p2, v2, Le/a/k/a/k/z/h$b;->g:Ljava/lang/Object;

    iput-object p2, v2, Le/a/k/a/k/z/h$b;->h:Ljava/lang/Object;

    iput-object p2, v2, Le/a/k/a/k/z/h$b;->i:Ljava/lang/Object;

    iput v5, v2, Le/a/k/a/k/z/h$b;->e:I

    invoke-virtual {v4, p1, v2}, Le/a/k/a/k/z/h;->v(Le/m/a/c/c0;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v3, :cond_7

    return-object v3

    :cond_7
    :goto_2
    return-object v1
.end method

.method public final k(Lq3/a/i0;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/i0;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/k/a/k/z/h$d;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/k/a/k/z/h$d;

    iget v1, v0, Le/a/k/a/k/z/h$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/a/k/z/h$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/a/k/z/h$d;

    invoke-direct {v0, p0, p3}, Le/a/k/a/k/z/h$d;-><init>(Le/a/k/a/k/z/h;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/k/a/k/z/h$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/a/k/z/h$d;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/k/a/k/z/h$d;->i:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    iget-object p1, v0, Le/a/k/a/k/z/h$d;->h:Ljava/lang/Object;

    check-cast p1, Lq3/a/i0;

    iget-object v0, v0, Le/a/k/a/k/z/h$d;->g:Ljava/lang/Object;

    check-cast v0, Le/a/k/a/k/z/h;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v6, v0

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Le/a/k/a/k/z/h;->j:Le/a/k/a/k/d;

    iput-object p0, v0, Le/a/k/a/k/z/h$d;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/k/a/k/z/h$d;->h:Ljava/lang/Object;

    iput-object p2, v0, Le/a/k/a/k/z/h$d;->i:Ljava/lang/Object;

    iput v3, v0, Le/a/k/a/k/z/h$d;->e:I

    invoke-interface {p3, v0}, Le/a/k/a/k/d;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    move-object v6, p0

    .line 5
    :goto_1
    check-cast p3, Le/m/a/c/c0;

    .line 6
    iget-object v7, v6, Le/a/k/a/k/z/h;->k:Le/a/k/q/e;

    new-instance v8, Le/a/k/q/a;

    const-wide/16 v3, 0x0

    const/4 v5, 0x4

    move-object v0, v8

    move-object v1, p2

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Le/a/k/q/a;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-interface {v7, v8}, Le/a/k/q/e;->a(Le/a/k/q/a;)Lq3/a/x2/i1;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 7
    new-instance v1, Le/a/k/a/k/z/h$e;

    const/4 v2, 0x0

    invoke-direct {v1, v6, p3, p2, v2}, Le/a/k/a/k/z/h$e;-><init>(Le/a/k/a/k/z/h;Le/m/a/c/c0;Ljava/lang/String;Ls1/w/d;)V

    .line 8
    new-instance p2, Lq3/a/x2/u0;

    invoke-direct {p2, v0, v1}, Lq3/a/x2/u0;-><init>(Lq3/a/x2/f;Ls1/z/b/p;)V

    .line 9
    invoke-static {p2, p1}, Ls1/a/a/a/v0/f/d;->x2(Lq3/a/x2/f;Lq3/a/i0;)Lq3/a/p1;

    .line 10
    :cond_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final l(Le/m/a/c/c0;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Le/a/k/a/k/z/o;

    invoke-direct {v0, p0, p2}, Le/a/k/a/k/z/o;-><init>(Le/a/k/a/k/z/h;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Le/a/k/a/k/z/h;->t(Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/m/a/c/l1/p;

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p1, p2}, Le/m/a/c/c0;->prepare(Le/m/a/c/l1/p;)V

    :cond_0
    const/4 p2, 0x0

    .line 3
    invoke-interface {p1, p2}, Le/m/a/c/q0;->setRepeatMode(I)V

    .line 4
    invoke-interface {p1, p2}, Le/m/a/c/q0;->setPlayWhenReady(Z)V

    const-wide/16 v0, 0x0

    .line 5
    invoke-interface {p1, v0, v1}, Le/m/a/c/q0;->seekTo(J)V

    return-void
.end method

.method public final m(Le/m/a/c/c0;Le/m/a/c/l1/p;ZLs1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/c/c0;",
            "Le/m/a/c/l1/p;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Le/a/k/a/k/z/h$f;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Le/a/k/a/k/z/h$f;

    iget v1, v0, Le/a/k/a/k/z/h$f;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/a/k/z/h$f;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/a/k/z/h$f;

    invoke-direct {v0, p0, p4}, Le/a/k/a/k/z/h$f;-><init>(Le/a/k/a/k/z/h;Ls1/w/d;)V

    :goto_0
    iget-object p4, v0, Le/a/k/a/k/z/h$f;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/a/k/z/h$f;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/k/a/k/z/h$f;->h:Ljava/lang/Object;

    check-cast p1, Le/m/a/c/c0;

    iget-object p2, v0, Le/a/k/a/k/z/h$f;->g:Ljava/lang/Object;

    check-cast p2, Le/a/k/a/k/z/h;

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1, p2}, Le/m/a/c/c0;->prepare(Le/m/a/c/l1/p;)V

    .line 5
    invoke-interface {p1, v3}, Le/m/a/c/q0;->setRepeatMode(I)V

    .line 6
    invoke-interface {p1, v4}, Le/m/a/c/q0;->setPlayWhenReady(Z)V

    .line 7
    iput-object p0, v0, Le/a/k/a/k/z/h$f;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/k/a/k/z/h$f;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/k/a/k/z/h$f;->e:I

    invoke-virtual {p0, p1, p3, v0}, Le/a/k/a/k/z/h;->u(Le/m/a/c/c0;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object p2, p0

    :goto_1
    const/4 p3, 0x0

    .line 8
    iput-object p3, v0, Le/a/k/a/k/z/h$f;->g:Ljava/lang/Object;

    iput-object p3, v0, Le/a/k/a/k/z/h$f;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/k/a/k/z/h$f;->e:I

    invoke-static {p2, p1, p3, v0, v4}, Le/a/k/a/k/z/h;->i(Le/a/k/a/k/z/h;Le/m/a/c/c0;Ls1/z/b/p;Ls1/w/d;I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 9
    :cond_5
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final synthetic n(Le/m/a/c/c0;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/c/c0;",
            "Ljava/lang/String;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Le/a/k/a/k/z/h$g;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Le/a/k/a/k/z/h$g;

    iget v1, v0, Le/a/k/a/k/z/h$g;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/a/k/z/h$g;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/a/k/z/h$g;

    invoke-direct {v0, p0, p4}, Le/a/k/a/k/z/h$g;-><init>(Le/a/k/a/k/z/h;Ls1/w/d;)V

    :goto_0
    iget-object p4, v0, Le/a/k/a/k/z/h$g;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/a/k/z/h$g;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/k/a/k/z/h$g;->h:Ljava/lang/Object;

    check-cast p1, Le/m/a/c/c0;

    iget-object p2, v0, Le/a/k/a/k/z/h$g;->g:Ljava/lang/Object;

    check-cast p2, Le/a/k/a/k/z/h;

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0, p1, p2}, Le/a/k/a/k/z/h;->l(Le/m/a/c/c0;Ljava/lang/String;)V

    .line 5
    iput-object p0, v0, Le/a/k/a/k/z/h$g;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/k/a/k/z/h$g;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/k/a/k/z/h$g;->e:I

    invoke-virtual {p0, p1, p3, v0}, Le/a/k/a/k/z/h;->u(Le/m/a/c/c0;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object p2, p0

    :goto_1
    const/4 p3, 0x0

    .line 6
    iput-object p3, v0, Le/a/k/a/k/z/h$g;->g:Ljava/lang/Object;

    iput-object p3, v0, Le/a/k/a/k/z/h$g;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/k/a/k/z/h$g;->e:I

    invoke-static {p2, p1, p3, v0, v4}, Le/a/k/a/k/z/h;->i(Le/a/k/a/k/z/h;Le/m/a/c/c0;Ls1/z/b/p;Ls1/w/d;I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 7
    :cond_5
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final synthetic o(Le/m/a/c/c0;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/c/c0;",
            "Ljava/lang/String;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Le/a/k/a/k/z/h$h;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Le/a/k/a/k/z/h$h;

    iget v1, v0, Le/a/k/a/k/z/h$h;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/a/k/z/h$h;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/a/k/z/h$h;

    invoke-direct {v0, p0, p4}, Le/a/k/a/k/z/h$h;-><init>(Le/a/k/a/k/z/h;Ls1/w/d;)V

    :goto_0
    iget-object p4, v0, Le/a/k/a/k/z/h$h;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/a/k/z/h$h;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/k/a/k/z/h$h;->h:Ljava/lang/Object;

    check-cast p1, Le/m/a/c/c0;

    iget-object p2, v0, Le/a/k/a/k/z/h$h;->g:Ljava/lang/Object;

    check-cast p2, Le/a/k/a/k/z/h;

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0, p1, p2}, Le/a/k/a/k/z/h;->s(Le/m/a/c/c0;Ljava/lang/String;)V

    .line 5
    iput-object p0, v0, Le/a/k/a/k/z/h$h;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/k/a/k/z/h$h;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/k/a/k/z/h$h;->e:I

    invoke-virtual {p0, p1, p3, v0}, Le/a/k/a/k/z/h;->u(Le/m/a/c/c0;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object p2, p0

    :goto_1
    const/4 p3, 0x0

    .line 6
    iput-object p3, v0, Le/a/k/a/k/z/h$h;->g:Ljava/lang/Object;

    iput-object p3, v0, Le/a/k/a/k/z/h$h;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/k/a/k/z/h$h;->e:I

    invoke-static {p2, p1, p3, v0, v4}, Le/a/k/a/k/z/h;->i(Le/a/k/a/k/z/h;Le/m/a/c/c0;Ls1/z/b/p;Ls1/w/d;I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 7
    :cond_5
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final p(Le/m/a/c/c0;Lq3/a/i0;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/c/c0;",
            "Lq3/a/i0;",
            "Ljava/lang/String;",
            "Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p5, Le/a/k/a/k/z/h$i;

    if-eqz v1, :cond_0

    move-object v1, p5

    check-cast v1, Le/a/k/a/k/z/h$i;

    iget v2, v1, Le/a/k/a/k/z/h$i;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/k/a/k/z/h$i;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/k/a/k/z/h$i;

    invoke-direct {v1, p0, p5}, Le/a/k/a/k/z/h$i;-><init>(Le/a/k/a/k/z/h;Ls1/w/d;)V

    :goto_0
    iget-object p5, v1, Le/a/k/a/k/z/h$i;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/k/a/k/z/h$i;->e:I

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v7, :cond_2

    if-eq v3, v6, :cond_2

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    :goto_1
    invoke-static {p5}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-static {p5}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p4}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;->a()Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;

    move-result-object p5

    .line 5
    iget-object p5, p5, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;->b:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;

    .line 6
    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p5

    if-eqz p5, :cond_8

    if-eq p5, v7, :cond_6

    if-eq p5, v6, :cond_5

    if-eq p5, v5, :cond_4

    goto :goto_3

    .line 7
    :cond_4
    iput v4, v1, Le/a/k/a/k/z/h$i;->e:I

    invoke-virtual {p0, p1, v1}, Le/a/k/a/k/z/h;->v(Le/m/a/c/c0;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_9

    return-object v2

    .line 8
    :cond_5
    iput v5, v1, Le/a/k/a/k/z/h$i;->e:I

    invoke-virtual {p0, p2, p3, v1}, Le/a/k/a/k/z/h;->k(Lq3/a/i0;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_9

    return-object v2

    .line 9
    :cond_6
    iput v6, v1, Le/a/k/a/k/z/h$i;->e:I

    .line 10
    invoke-virtual {p0, p1, p3}, Le/a/k/a/k/z/h;->s(Le/m/a/c/c0;Ljava/lang/String;)V

    .line 11
    iget-object p4, p0, Le/a/k/a/k/z/h;->i:Le/a/k/c/q;

    .line 12
    invoke-interface {p4, p1}, Le/a/k/c/q;->g(Le/m/a/c/c0;)Lq3/a/x2/f;

    move-result-object p4

    .line 13
    new-instance p5, Le/a/k/a/k/z/n;

    invoke-direct {p5, p0, p1, p2, p3}, Le/a/k/a/k/z/n;-><init>(Le/a/k/a/k/z/h;Le/m/a/c/c0;Lq3/a/i0;Ljava/lang/String;)V

    invoke-interface {p4, p5, v1}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_7

    goto :goto_2

    :cond_7
    move-object p1, v0

    :goto_2
    if-ne p1, v2, :cond_9

    return-object v2

    .line 14
    :cond_8
    iget-boolean p2, p4, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;->a:Z

    .line 15
    iput v7, v1, Le/a/k/a/k/z/h$i;->e:I

    invoke-virtual {p0, p1, p3, p2, v1}, Le/a/k/a/k/z/h;->o(Le/m/a/c/c0;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_9

    return-object v2

    :cond_9
    :goto_3
    return-object v0
.end method

.method public p1()Lq3/a/x2/i1;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k/a/k/z/h;->a:Lq3/a/x2/a1;

    return-object v0
.end method

.method public final synthetic q(Le/m/a/c/c0;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/c/c0;",
            "Ljava/lang/String;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Le/a/k/a/k/z/h$j;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Le/a/k/a/k/z/h$j;

    iget v1, v0, Le/a/k/a/k/z/h$j;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/a/k/z/h$j;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/a/k/z/h$j;

    invoke-direct {v0, p0, p4}, Le/a/k/a/k/z/h$j;-><init>(Le/a/k/a/k/z/h;Ls1/w/d;)V

    :goto_0
    iget-object p4, v0, Le/a/k/a/k/z/h$j;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/a/k/z/h$j;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/k/a/k/z/h$j;->h:Ljava/lang/Object;

    check-cast p1, Le/m/a/c/c0;

    iget-object p2, v0, Le/a/k/a/k/z/h$j;->g:Ljava/lang/Object;

    check-cast p2, Le/a/k/a/k/z/h;

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0, p1, p2}, Le/a/k/a/k/z/h;->s(Le/m/a/c/c0;Ljava/lang/String;)V

    .line 5
    iput-object p0, v0, Le/a/k/a/k/z/h$j;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/k/a/k/z/h$j;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/k/a/k/z/h$j;->e:I

    invoke-virtual {p0, p1, p3, v0}, Le/a/k/a/k/z/h;->u(Le/m/a/c/c0;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object p2, p0

    .line 6
    :goto_1
    new-instance p3, Le/a/k/a/k/z/h$k;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p4}, Le/a/k/a/k/z/h$k;-><init>(Le/m/a/c/c0;Ls1/w/d;)V

    iput-object p4, v0, Le/a/k/a/k/z/h$j;->g:Ljava/lang/Object;

    iput-object p4, v0, Le/a/k/a/k/z/h$j;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/k/a/k/z/h$j;->e:I

    invoke-virtual {p2, p1, p3, v0}, Le/a/k/a/k/z/h;->h(Le/m/a/c/c0;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 7
    :cond_5
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final r(Le/m/a/c/c0;Lq3/a/i0;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/c/c0;",
            "Lq3/a/i0;",
            "Ljava/lang/String;",
            "Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Le/a/k/a/k/z/h$l;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Le/a/k/a/k/z/h$l;

    iget v1, v0, Le/a/k/a/k/z/h$l;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/a/k/z/h$l;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/a/k/z/h$l;

    invoke-direct {v0, p0, p5}, Le/a/k/a/k/z/h$l;-><init>(Le/a/k/a/k/z/h;Ls1/w/d;)V

    :goto_0
    iget-object p5, v0, Le/a/k/a/k/z/h$l;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/a/k/z/h$l;->e:I

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v7, :cond_2

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    :goto_1
    invoke-static {p5}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p5}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p4}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;->a()Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;

    move-result-object p5

    .line 5
    iget-object p5, p5, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;->a:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;

    .line 6
    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p5

    if-eqz p5, :cond_8

    if-eq p5, v7, :cond_7

    if-eq p5, v6, :cond_6

    if-eq p5, v5, :cond_5

    if-eq p5, v4, :cond_4

    goto :goto_2

    .line 7
    :cond_4
    iput v3, v0, Le/a/k/a/k/z/h$l;->e:I

    invoke-virtual {p0, p1, v0}, Le/a/k/a/k/z/h;->v(Le/m/a/c/c0;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    .line 8
    :cond_5
    iput v4, v0, Le/a/k/a/k/z/h$l;->e:I

    invoke-virtual {p0, p2, p3, v0}, Le/a/k/a/k/z/h;->k(Lq3/a/i0;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    .line 9
    :cond_6
    iget-boolean p2, p4, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;->a:Z

    .line 10
    iput v5, v0, Le/a/k/a/k/z/h$l;->e:I

    invoke-virtual {p0, p1, p3, p2, v0}, Le/a/k/a/k/z/h;->n(Le/m/a/c/c0;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    .line 11
    :cond_7
    iget-boolean p2, p4, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;->a:Z

    .line 12
    iput v7, v0, Le/a/k/a/k/z/h$l;->e:I

    invoke-virtual {p0, p1, p3, p2, v0}, Le/a/k/a/k/z/h;->q(Le/m/a/c/c0;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    .line 13
    :cond_8
    iget-boolean p2, p4, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;->a:Z

    .line 14
    iput v6, v0, Le/a/k/a/k/z/h$l;->e:I

    invoke-virtual {p0, p1, p3, p2, v0}, Le/a/k/a/k/z/h;->o(Le/m/a/c/c0;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    .line 15
    :cond_9
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k/a/k/z/h;->j:Le/a/k/a/k/d;

    invoke-interface {v0}, Le/a/k/a/k/d;->release()Lq3/a/p1;

    return-void
.end method

.method public final s(Le/m/a/c/c0;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Le/a/k/a/k/z/o;

    invoke-direct {v0, p0, p2}, Le/a/k/a/k/z/o;-><init>(Le/a/k/a/k/z/h;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Le/a/k/a/k/z/h;->t(Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/m/a/c/l1/p;

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p1, p2}, Le/m/a/c/c0;->prepare(Le/m/a/c/l1/p;)V

    :cond_0
    const/4 p2, 0x2

    .line 3
    invoke-interface {p1, p2}, Le/m/a/c/q0;->setRepeatMode(I)V

    const/4 p2, 0x1

    .line 4
    invoke-interface {p1, p2}, Le/m/a/c/q0;->setPlayWhenReady(Z)V

    return-void
.end method

.method public final t(Ls1/z/b/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ls1/z/b/a<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final u(Le/m/a/c/c0;ZLs1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/c/c0;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/k/a/k/z/h$m;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/k/a/k/z/h$m;

    iget v1, v0, Le/a/k/a/k/z/h$m;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/a/k/z/h$m;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/a/k/z/h$m;

    invoke-direct {v0, p0, p3}, Le/a/k/a/k/z/h$m;-><init>(Le/a/k/a/k/z/h;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/k/a/k/z/h$m;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/a/k/z/h$m;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p2, v0, Le/a/k/a/k/z/h$m;->i:Z

    iget-object p1, v0, Le/a/k/a/k/z/h$m;->h:Ljava/lang/Object;

    check-cast p1, Le/m/a/c/c0;

    iget-object v0, v0, Le/a/k/a/k/z/h$m;->g:Ljava/lang/Object;

    check-cast v0, Le/a/k/a/k/z/h;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Le/a/k/a/k/z/h;->i:Le/a/k/c/q;

    iput-object p0, v0, Le/a/k/a/k/z/h$m;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/k/a/k/z/h$m;->h:Ljava/lang/Object;

    iput-boolean p2, v0, Le/a/k/a/k/z/h$m;->i:Z

    iput v3, v0, Le/a/k/a/k/z/h$m;->e:I

    invoke-interface {p3, p1, v0}, Le/a/k/c/q;->j(Le/m/a/c/c0;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 5
    new-instance p3, Le/a/k/a/k/z/a$a;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    instance-of v1, p1, Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVolume()F

    move-result v1

    goto :goto_2

    :cond_4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    :goto_2
    invoke-direct {p3, p2, v1}, Le/a/k/a/k/z/a$a;-><init>(ZF)V

    goto :goto_3

    :cond_5
    sget-object p3, Le/a/k/a/k/z/a$c;->a:Le/a/k/a/k/z/a$c;

    .line 9
    :goto_3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "<set-?>"

    invoke-static {p3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p3, v0, Le/a/k/a/k/z/h;->c:Le/a/k/a/k/z/a;

    if-eqz p2, :cond_6

    .line 11
    instance-of p2, p1, Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p2, :cond_6

    check-cast p1, Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    .line 12
    :cond_6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final v(Le/m/a/c/c0;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/c/c0;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Le/m/a/c/q0;->stop()V

    .line 2
    iget-object p1, p0, Le/a/k/a/k/z/h;->a:Lq3/a/x2/a1;

    .line 3
    sget-object v0, Le/a/k/a/k/z/b$d;->a:Le/a/k/a/k/z/b$d;

    invoke-interface {p1, v0}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/k/a/k/z/h;->b:Lq3/a/x2/z0;

    .line 5
    sget-object v0, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;->CACHE:Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;

    invoke-interface {p1, v0, p2}, Lq3/a/x2/z0;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 6
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
