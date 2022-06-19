.class public final Le/a/k/c/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k/c/q;


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Ls1/g;

.field public final d:Ls1/g;

.field public final e:Ls1/w/f;

.field public final f:Landroid/content/Context;

.field public final g:Le/a/k/c/s1;

.field public final h:Le/a/k/b/h;


# direct methods
.method public constructor <init>(Ls1/w/f;Landroid/content/Context;Le/a/k/c/s1;Le/a/k/b/h;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoFileUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debuggingUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k/c/r;->e:Ls1/w/f;

    iput-object p2, p0, Le/a/k/c/r;->f:Landroid/content/Context;

    iput-object p3, p0, Le/a/k/c/r;->g:Le/a/k/c/s1;

    iput-object p4, p0, Le/a/k/c/r;->h:Le/a/k/b/h;

    .line 2
    new-instance p1, Le/a/k/c/r$f;

    invoke-direct {p1, p0}, Le/a/k/c/r$f;-><init>(Le/a/k/c/r;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/k/c/r;->a:Ls1/g;

    .line 3
    new-instance p1, Le/a/k/c/r$a;

    invoke-direct {p1, p0}, Le/a/k/c/r$a;-><init>(Le/a/k/c/r;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/k/c/r;->b:Ls1/g;

    .line 4
    new-instance p1, Le/a/k/c/r$b;

    invoke-direct {p1, p0}, Le/a/k/c/r$b;-><init>(Le/a/k/c/r;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/k/c/r;->c:Ls1/g;

    .line 5
    new-instance p1, Le/a/k/c/r$e;

    invoke-direct {p1, p0}, Le/a/k/c/r$e;-><init>(Le/a/k/c/r;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/k/c/r;->d:Ls1/g;

    return-void
.end method

.method public static final l(Le/a/k/c/r;)Le/m/a/c/p1/h0/v;
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/k/c/r;->b:Ls1/g;

    invoke-interface {p0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/m/a/c/p1/h0/v;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/k/c/r;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/p1/h0/v;

    .line 2
    invoke-virtual {v0}, Le/m/a/c/p1/h0/v;->p()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 4
    sget v1, Le/m/a/c/p1/h0/m;->a:I

    .line 5
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/k/c/r;->e:Ls1/w/f;

    new-instance v1, Le/a/k/c/r$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/k/c/r$c;-><init>(Le/a/k/c/r;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public c()Le/m/a/c/l1/r;
    .locals 2

    .line 1
    new-instance v0, Le/m/a/c/l1/t$a;

    .line 2
    iget-object v1, p0, Le/a/k/c/r;->c:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/c/p1/h0/g;

    .line 3
    invoke-direct {v0, v1}, Le/m/a/c/l1/t$a;-><init>(Le/m/a/c/p1/l$a;)V

    return-object v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/offline/DownloadRequest;
    .locals 8

    const-string v0, "url"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identifier"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/offline/DownloadRequest;

    .line 2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 3
    sget-object v5, Ls1/u/s;->a:Ls1/u/s;

    const-string v3, "progressive"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p2

    .line 4
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/offline/DownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;[B)V

    return-object v0
.end method

.method public e(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/k/c/r;->e:Ls1/w/f;

    new-instance v1, Le/a/k/c/r$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/k/c/r$d;-><init>(Le/a/k/c/r;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public f(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/k/c/g;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/k/c/r;->e:Ls1/w/f;

    new-instance v1, Le/a/k/c/r$h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/k/c/r$h;-><init>(Le/a/k/c/r;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Le/m/a/c/c0;)Lq3/a/x2/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/c/c0;",
            ")",
            "Lq3/a/x2/f<",
            "Le/a/k/c/t;",
            ">;"
        }
    .end annotation

    const-string v0, "player"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/k/c/r$i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Le/a/k/c/r$i;-><init>(Le/a/k/c/r;Le/m/a/c/c0;Ls1/w/d;)V

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->P(Ls1/z/b/p;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public h(Lq3/a/i0;Lcom/google/android/exoplayer2/SimpleExoPlayer;Landroid/view/View;Z)V
    .locals 10

    const-string v0, "scope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "player"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v3, Lq3/a/j0;->d:Lq3/a/j0;

    new-instance v0, Le/a/k/c/r$k;

    const/4 v9, 0x0

    move-object v4, v0

    move-object v5, p0

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v4 .. v9}, Le/a/k/c/r$k;-><init>(Le/a/k/c/r;Lcom/google/android/exoplayer2/SimpleExoPlayer;Landroid/view/View;ZLs1/w/d;)V

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public i()Le/m/a/c/j1/g;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k/c/r;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/j1/g;

    return-object v0
.end method

.method public j(Le/m/a/c/c0;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/c/c0;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lq3/a/o;

    invoke-static {p2}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 2
    invoke-virtual {v0}, Lq3/a/o;->z()V

    .line 3
    new-instance v1, Le/a/k/c/r$j;

    invoke-direct {v1, v0, p0, p1}, Le/a/k/c/r$j;-><init>(Lq3/a/n;Le/a/k/c/r;Le/m/a/c/c0;)V

    .line 4
    invoke-interface {p1, v1}, Le/m/a/c/q0;->addListener(Le/m/a/c/q0$b;)V

    .line 5
    invoke-virtual {v0}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object p1

    .line 6
    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v0, :cond_0

    const-string v0, "frame"

    .line 7
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public k(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Le/a/k/c/g;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/k/c/r;->e:Ls1/w/f;

    new-instance v1, Le/a/k/c/r$g;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/k/c/r$g;-><init>(Le/a/k/c/r;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
