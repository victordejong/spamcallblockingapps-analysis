.class public final Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;->r()Landroidx/work/ListenableWorker$a;
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
        "Landroidx/work/ListenableWorker$a;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.worker.VideoCallerIdCachingWorker$work$1"
    f = "VideoCallerIdCachingWorker.kt"
    l = {
        0x65
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:J

.field public final synthetic j:Z

.field public final synthetic k:Ls1/z/c/c0;

.field public final synthetic l:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;Ljava/lang/String;Ljava/lang/String;JZLs1/z/c/c0;Ls1/z/c/c0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;->f:Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;

    iput-object p2, p0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;->h:Ljava/lang/String;

    iput-wide p4, p0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;->i:J

    iput-boolean p6, p0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;->j:Z

    iput-object p7, p0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;->k:Ls1/z/c/c0;

    iput-object p8, p0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;->l:Ls1/z/c/c0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 10
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

    new-instance p1, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;

    iget-object v1, p0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;->f:Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;

    iget-object v2, p0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;->h:Ljava/lang/String;

    iget-wide v4, p0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;->i:J

    iget-boolean v6, p0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;->j:Z

    iget-object v7, p0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;->k:Ls1/z/c/c0;

    iget-object v8, p0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;->l:Ls1/z/c/c0;

    move-object v0, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;-><init>(Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;Ljava/lang/String;Ljava/lang/String;JZLs1/z/c/c0;Ls1/z/c/c0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const-wide/32 v4, 0xea60

    .line 4
    new-instance p1, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a$a;

    invoke-direct {p1, p0, v2}, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a$a;-><init>(Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;Ls1/w/d;)V

    iput v3, p0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;->e:I

    invoke-static {v4, v5, p1, p0}, Lq3/a/j;->c(JLs1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 5
    :goto_1
    iget-object v0, p0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;->f:Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;

    .line 6
    iget-object v0, v0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;->f:Le/a/k/q/e;

    if-eqz v0, :cond_a

    .line 7
    iget-object v1, p0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Le/a/k/q/e;->b(Ljava/lang/String;)V

    const-string v0, "businessVideoCallerIDAnalytics"

    if-eqz p1, :cond_6

    .line 8
    iget-boolean p1, p0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;->j:Z

    if-eqz p1, :cond_5

    .line 9
    iget-object p1, p0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;->f:Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;

    .line 10
    iget-object v1, p1, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;->e:Le/a/k/d;

    if-eqz v1, :cond_4

    .line 11
    iget-object v0, p1, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;->g:Ljava/util/List;

    .line 12
    iget-object v2, p0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;->k:Ls1/z/c/c0;

    iget-object v2, v2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;->l:Ls1/z/c/c0;

    iget-object v3, v3, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/work/ListenableWorker;->getRunAttemptCount()I

    move-result p1

    invoke-interface {v1, v0, v2, v3, p1}, Le/a/k/d;->c(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    .line 13
    iget-object p1, p0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;->f:Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;

    .line 14
    iget-object p1, p1, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;->g:Ljava/util/List;

    .line 15
    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_2

    .line 16
    :cond_4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 17
    :cond_5
    :goto_2
    new-instance p1, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {p1}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    goto :goto_4

    .line 18
    :cond_6
    iget-object p1, p0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;->f:Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;

    invoke-virtual {p1}, Landroidx/work/ListenableWorker;->getRunAttemptCount()I

    move-result p1

    const/4 v1, 0x2

    if-ge p1, v1, :cond_7

    .line 19
    new-instance p1, Landroidx/work/ListenableWorker$a$b;

    invoke-direct {p1}, Landroidx/work/ListenableWorker$a$b;-><init>()V

    goto :goto_4

    .line 20
    :cond_7
    iget-boolean p1, p0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;->j:Z

    if-eqz p1, :cond_9

    .line 21
    iget-object p1, p0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;->f:Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;

    .line 22
    iget-object v1, p1, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;->e:Le/a/k/d;

    if-eqz v1, :cond_8

    .line 23
    iget-object v0, p1, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;->g:Ljava/util/List;

    .line 24
    iget-object v2, p0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;->k:Ls1/z/c/c0;

    iget-object v2, v2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;->l:Ls1/z/c/c0;

    iget-object v3, v3, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/work/ListenableWorker;->getRunAttemptCount()I

    move-result p1

    invoke-interface {v1, v0, v2, v3, p1}, Le/a/k/d;->f(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    .line 25
    iget-object p1, p0, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a;->f:Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;

    .line 26
    iget-object p1, p1, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;->g:Ljava/util/List;

    .line 27
    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_3

    .line 28
    :cond_8
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 29
    :cond_9
    :goto_3
    new-instance p1, Landroidx/work/ListenableWorker$a$a;

    invoke-direct {p1}, Landroidx/work/ListenableWorker$a$a;-><init>()V

    :goto_4
    return-object p1

    :cond_a
    const-string p1, "videoCallerIdDownloadManager"

    .line 30
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method
