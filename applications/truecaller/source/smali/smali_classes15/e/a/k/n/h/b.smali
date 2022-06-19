.class public final Le/a/k/n/h/b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Le/a/k/q/b;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.db.predefinedVideos.PredefinedVideosRepositoryImpl$downloadPredefinedVideos$5$1"
    f = "PredefinedVideosRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/k/n/h/d;

.field public final synthetic g:Ljava/util/Map;

.field public final synthetic h:Ljava/util/List;

.field public final synthetic i:Lq3/a/i0;


# direct methods
.method public constructor <init>(Ls1/w/d;Le/a/k/n/h/d;Ljava/util/Map;Ljava/util/List;Lq3/a/i0;)V
    .locals 0

    iput-object p2, p0, Le/a/k/n/h/b;->f:Le/a/k/n/h/d;

    iput-object p3, p0, Le/a/k/n/h/b;->g:Ljava/util/Map;

    iput-object p4, p0, Le/a/k/n/h/b;->h:Ljava/util/List;

    iput-object p5, p0, Le/a/k/n/h/b;->i:Lq3/a/i0;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 7
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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/k/n/h/b;

    iget-object v3, p0, Le/a/k/n/h/b;->f:Le/a/k/n/h/d;

    iget-object v4, p0, Le/a/k/n/h/b;->g:Ljava/util/Map;

    iget-object v5, p0, Le/a/k/n/h/b;->h:Ljava/util/List;

    iget-object v6, p0, Le/a/k/n/h/b;->i:Lq3/a/i0;

    move-object v1, v0

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Le/a/k/n/h/b;-><init>(Ls1/w/d;Le/a/k/n/h/d;Ljava/util/Map;Ljava/util/List;Lq3/a/i0;)V

    iput-object p1, v0, Le/a/k/n/h/b;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/k/n/h/b;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/k/n/h/b;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/k/n/h/b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/k/n/h/b;->e:Ljava/lang/Object;

    check-cast p1, Le/a/k/q/b;

    .line 2
    iget-object v0, p0, Le/a/k/n/h/b;->f:Le/a/k/n/h/d;

    iget-object v1, p0, Le/a/k/n/h/b;->g:Ljava/util/Map;

    iget-object v2, p0, Le/a/k/n/h/b;->h:Ljava/util/List;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    instance-of v3, p1, Le/a/k/q/b$a;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 5
    check-cast p1, Le/a/k/q/b$a;

    .line 6
    iget-object p1, p1, Le/a/k/q/b$a;->b:Le/m/a/c/j1/f;

    .line 7
    iget-object p1, p1, Le/m/a/c/j1/f;->a:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object p1, p1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->a:Ljava/lang/String;

    const-string v3, "downloadState.download.request.id"

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/truecaller/videocallerid/data/PredefinedVideoResult;

    invoke-virtual {v5}, Lcom/truecaller/videocallerid/data/PredefinedVideoResult;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v4, v3

    :cond_1
    check-cast v4, Lcom/truecaller/videocallerid/data/PredefinedVideoResult;

    if-eqz v4, :cond_2

    .line 9
    new-instance v2, Le/a/k/l/c$a;

    invoke-direct {v2, v4}, Le/a/k/l/c$a;-><init>(Lcom/truecaller/videocallerid/data/PredefinedVideoResult;)V

    invoke-virtual {v0, v1, p1, v2}, Le/a/k/n/h/d;->a(Ljava/util/Map;Ljava/lang/String;Le/a/k/l/c;)V

    .line 10
    :cond_2
    iget-object v0, v0, Le/a/k/n/h/d;->c:Le/a/k/q/e;

    invoke-interface {v0, p1}, Le/a/k/q/e;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 11
    :cond_3
    instance-of v3, p1, Le/a/k/q/b$b;

    if-eqz v3, :cond_8

    .line 12
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/truecaller/videocallerid/data/PredefinedVideoResult;

    invoke-virtual {v5}, Lcom/truecaller/videocallerid/data/PredefinedVideoResult;->getId()Ljava/lang/String;

    move-result-object v5

    move-object v6, p1

    check-cast v6, Le/a/k/q/b$b;

    .line 13
    iget-object v6, v6, Le/a/k/q/b$b;->a:Ljava/lang/String;

    .line 14
    invoke-static {v5, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v4, v3

    :cond_5
    check-cast v4, Lcom/truecaller/videocallerid/data/PredefinedVideoResult;

    if-eqz v4, :cond_7

    .line 15
    invoke-virtual {v4}, Lcom/truecaller/videocallerid/data/PredefinedVideoResult;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Le/a/k/l/c$b;

    .line 16
    iget-object v5, v0, Le/a/k/n/h/d;->e:Le/a/p5/u;

    invoke-interface {v5}, Le/a/p5/u;->d()Z

    move-result v5

    if-nez v5, :cond_6

    .line 17
    sget-object v5, Lcom/truecaller/videocallerid/data/PredefinedVideoDownloadErrorType;->NO_INTERNET:Lcom/truecaller/videocallerid/data/PredefinedVideoDownloadErrorType;

    goto :goto_0

    .line 18
    :cond_6
    sget-object v5, Lcom/truecaller/videocallerid/data/PredefinedVideoDownloadErrorType;->UNKNOWN:Lcom/truecaller/videocallerid/data/PredefinedVideoDownloadErrorType;

    .line 19
    :goto_0
    invoke-direct {v3, v4, v5}, Le/a/k/l/c$b;-><init>(Lcom/truecaller/videocallerid/data/PredefinedVideoResult;Lcom/truecaller/videocallerid/data/PredefinedVideoDownloadErrorType;)V

    invoke-virtual {v0, v1, v2, v3}, Le/a/k/n/h/d;->a(Ljava/util/Map;Ljava/lang/String;Le/a/k/l/c;)V

    .line 20
    :cond_7
    iget-object v0, v0, Le/a/k/n/h/d;->c:Le/a/k/q/e;

    check-cast p1, Le/a/k/q/b$b;

    .line 21
    iget-object p1, p1, Le/a/k/q/b$b;->a:Ljava/lang/String;

    .line 22
    invoke-interface {v0, p1}, Le/a/k/q/e;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 23
    :cond_8
    instance-of v3, p1, Le/a/k/q/b$c;

    if-eqz v3, :cond_b

    .line 24
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/truecaller/videocallerid/data/PredefinedVideoResult;

    invoke-virtual {v5}, Lcom/truecaller/videocallerid/data/PredefinedVideoResult;->getId()Ljava/lang/String;

    move-result-object v5

    move-object v6, p1

    check-cast v6, Le/a/k/q/b$c;

    .line 25
    iget-object v6, v6, Le/a/k/q/b$c;->a:Ljava/lang/String;

    .line 26
    invoke-static {v5, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move-object v4, v3

    :cond_a
    check-cast v4, Lcom/truecaller/videocallerid/data/PredefinedVideoResult;

    if-eqz v4, :cond_b

    .line 27
    invoke-virtual {v4}, Lcom/truecaller/videocallerid/data/PredefinedVideoResult;->getId()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Le/a/k/l/c$d;

    invoke-direct {v2, v4}, Le/a/k/l/c$d;-><init>(Lcom/truecaller/videocallerid/data/PredefinedVideoResult;)V

    invoke-virtual {v0, v1, p1, v2}, Le/a/k/n/h/d;->a(Ljava/util/Map;Ljava/lang/String;Le/a/k/l/c;)V

    .line 28
    :cond_b
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
