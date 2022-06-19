.class public final Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.worker.VideoCallerIdCachingWorker$work$1$downloaded$1"
    f = "VideoCallerIdCachingWorker.kt"
    l = {
        0x66
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;


# direct methods
.method public constructor <init>(Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a$a;->g:Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a$a;

    iget-object v1, p0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a$a;->g:Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;

    invoke-direct {v0, v1, p2}, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a$a;-><init>(Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;Ls1/w/d;)V

    iput-object p1, v0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a$a;

    iget-object v1, p0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a$a;->g:Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;

    invoke-direct {v0, v1, p2}, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a$a;-><init>(Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;Ls1/w/d;)V

    iput-object p1, v0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a$a;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a$a;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_1

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a$a;->e:Ljava/lang/Object;

    check-cast v2, Lq3/a/i0;

    .line 4
    iget-object v4, v0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a$a;->g:Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;

    iget-object v7, v4, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;->f:Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;

    iget-object v8, v4, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;->g:Ljava/lang/String;

    iget-object v9, v4, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;->h:Ljava/lang/String;

    iget-wide v10, v4, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;->i:J

    iget-boolean v12, v4, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;->j:Z

    iput v3, v0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a$a;->f:I

    .line 5
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v14, Lq3/a/o;

    invoke-static/range {p0 .. p0}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v4

    invoke-direct {v14, v4, v3}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 7
    invoke-virtual {v14}, Lq3/a/o;->z()V

    .line 8
    iget-object v3, v7, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;->f:Le/a/k/q/e;

    if-eqz v3, :cond_5

    .line 9
    new-instance v4, Le/a/k/q/a;

    invoke-direct {v4, v8, v9, v10, v11}, Le/a/k/q/a;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v3, v4}, Le/a/k/q/e;->a(Le/a/k/q/a;)Lq3/a/x2/i1;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 10
    new-instance v13, Le/a/k/q/c;

    const/4 v6, 0x0

    move-object v4, v13

    move-object v5, v14

    move-object v15, v13

    move-object v13, v2

    invoke-direct/range {v4 .. v13}, Le/a/k/q/c;-><init>(Lq3/a/n;Ls1/w/d;Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;Ljava/lang/String;Ljava/lang/String;JZLq3/a/i0;)V

    .line 11
    new-instance v4, Lq3/a/x2/u0;

    invoke-direct {v4, v3, v15}, Lq3/a/x2/u0;-><init>(Lq3/a/x2/f;Ls1/z/b/p;)V

    .line 12
    new-instance v3, Le/a/k/q/d;

    const/4 v5, 0x0

    invoke-direct {v3, v14, v5}, Le/a/k/q/d;-><init>(Lq3/a/n;Ls1/w/d;)V

    invoke-static {v4, v3}, Ls1/a/a/a/v0/f/d;->Q3(Lq3/a/x2/f;Ls1/z/b/q;)Lq3/a/x2/f;

    move-result-object v3

    .line 13
    invoke-static {v3, v2}, Ls1/a/a/a/v0/f/d;->x2(Lq3/a/x2/f;Lq3/a/i0;)Lq3/a/p1;

    goto :goto_0

    .line 14
    :cond_2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 15
    invoke-static {v14, v2}, Le/a/p5/s0/g;->f1(Lq3/a/n;Ljava/lang/Object;)V

    .line 16
    :goto_0
    invoke-virtual {v14}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    const-string v3, "frame"

    .line 17
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    return-object v2

    :cond_5
    const-string v1, "videoCallerIdDownloadManager"

    .line 18
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1
.end method
