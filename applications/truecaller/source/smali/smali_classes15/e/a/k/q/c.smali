.class public final Le/a/k/q/c;
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
    c = "com.truecaller.videocallerid.worker.VideoCallerIdCachingWorker$downloadVideo$2$1"
    f = "VideoCallerIdCachingWorker.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lq3/a/n;

.field public final synthetic g:Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:J

.field public final synthetic k:Z

.field public final synthetic l:Lq3/a/i0;


# direct methods
.method public constructor <init>(Lq3/a/n;Ls1/w/d;Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;Ljava/lang/String;Ljava/lang/String;JZLq3/a/i0;)V
    .locals 0

    iput-object p1, p0, Le/a/k/q/c;->f:Lq3/a/n;

    iput-object p3, p0, Le/a/k/q/c;->g:Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;

    iput-object p4, p0, Le/a/k/q/c;->h:Ljava/lang/String;

    iput-object p5, p0, Le/a/k/q/c;->i:Ljava/lang/String;

    iput-wide p6, p0, Le/a/k/q/c;->j:J

    iput-boolean p8, p0, Le/a/k/q/c;->k:Z

    iput-object p9, p0, Le/a/k/q/c;->l:Lq3/a/i0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 11
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

    new-instance v0, Le/a/k/q/c;

    iget-object v2, p0, Le/a/k/q/c;->f:Lq3/a/n;

    iget-object v4, p0, Le/a/k/q/c;->g:Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;

    iget-object v5, p0, Le/a/k/q/c;->h:Ljava/lang/String;

    iget-object v6, p0, Le/a/k/q/c;->i:Ljava/lang/String;

    iget-wide v7, p0, Le/a/k/q/c;->j:J

    iget-boolean v9, p0, Le/a/k/q/c;->k:Z

    iget-object v10, p0, Le/a/k/q/c;->l:Lq3/a/i0;

    move-object v1, v0

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Le/a/k/q/c;-><init>(Lq3/a/n;Ls1/w/d;Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;Ljava/lang/String;Ljava/lang/String;JZLq3/a/i0;)V

    iput-object p1, v0, Le/a/k/q/c;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/k/q/c;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/k/q/c;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/k/q/c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/k/q/c;->e:Ljava/lang/Object;

    check-cast p1, Le/a/k/q/b;

    .line 2
    instance-of v0, p1, Le/a/k/q/b$a;

    if-eqz v0, :cond_2

    .line 3
    iget-boolean v0, p0, Le/a/k/q/c;->k:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Le/a/k/q/c;->g:Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;

    .line 5
    iget-object v0, v0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;->d:Le/a/k/h;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Le/a/k/h;->j()Lq3/a/w2/h;

    move-result-object v0

    .line 7
    new-instance v1, Le/a/k/c/t0$a;

    iget-object v2, p0, Le/a/k/q/c;->h:Ljava/lang/String;

    check-cast p1, Le/a/k/q/b$a;

    .line 8
    iget-object v3, p1, Le/a/k/q/b$a;->b:Le/m/a/c/j1/f;

    .line 9
    iget-object v3, v3, Le/m/a/c/j1/f;->a:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v3, v3, Lcom/google/android/exoplayer2/offline/DownloadRequest;->a:Ljava/lang/String;

    .line 10
    iget v4, p1, Le/a/k/q/b$a;->a:F

    .line 11
    invoke-direct {v1, v2, v3, v4}, Le/a/k/c/t0$a;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    .line 12
    iget-object v0, p0, Le/a/k/q/c;->g:Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;

    .line 13
    iget-object v0, v0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;->g:Ljava/util/List;

    .line 14
    iget-object p1, p1, Le/a/k/q/b$a;->b:Le/m/a/c/j1/f;

    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p1, "videoCallerId"

    .line 16
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 17
    :cond_1
    :goto_0
    iget-object p1, p0, Le/a/k/q/c;->f:Lq3/a/n;

    .line 18
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 19
    invoke-static {p1, v0}, Le/a/p5/s0/g;->f1(Lq3/a/n;Ljava/lang/Object;)V

    goto :goto_1

    .line 20
    :cond_2
    instance-of v0, p1, Le/a/k/q/b$b;

    if-eqz v0, :cond_3

    .line 21
    iget-object p1, p0, Le/a/k/q/c;->f:Lq3/a/n;

    .line 22
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    invoke-static {p1, v0}, Le/a/p5/s0/g;->f1(Lq3/a/n;Ljava/lang/Object;)V

    goto :goto_1

    .line 24
    :cond_3
    instance-of p1, p1, Le/a/k/q/b$c;

    .line 25
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
