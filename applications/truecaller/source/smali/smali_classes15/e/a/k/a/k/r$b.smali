.class public final Le/a/k/a/k/r$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/a/k/r;->Jj(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;ZLjava/lang/String;Ljava/lang/Long;Ls1/w/d;)Ljava/lang/Object;
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.ui.videoplayer.VideoPlayerPresenter$configureVideoUrl$2"
    f = "VideoPlayerPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/k/a/k/r;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;


# direct methods
.method public constructor <init>(Le/a/k/a/k/r;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/k/r$b;->f:Le/a/k/a/k/r;

    iput-object p2, p0, Le/a/k/a/k/r$b;->g:Ljava/lang/String;

    iput-object p3, p0, Le/a/k/a/k/r$b;->h:Ljava/lang/String;

    iput-object p4, p0, Le/a/k/a/k/r$b;->i:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    new-instance v0, Le/a/k/a/k/r$b;

    iget-object v2, p0, Le/a/k/a/k/r$b;->f:Le/a/k/a/k/r;

    iget-object v3, p0, Le/a/k/a/k/r$b;->g:Ljava/lang/String;

    iget-object v4, p0, Le/a/k/a/k/r$b;->h:Ljava/lang/String;

    iget-object v5, p0, Le/a/k/a/k/r$b;->i:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    move-object v1, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Le/a/k/a/k/r$b;-><init>(Le/a/k/a/k/r;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Ls1/w/d;)V

    iput-object p1, v0, Le/a/k/a/k/r$b;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/k/a/k/r$b;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/k/a/k/r$b;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/k/a/k/r$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/k/a/k/r$b;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/i0;

    .line 2
    iget-object v0, p0, Le/a/k/a/k/r$b;->f:Le/a/k/a/k/r;

    .line 3
    iget-object v0, v0, Le/a/k/a/k/r;->n:Le/a/k/c/u0;

    .line 4
    invoke-interface {v0}, Le/a/k/c/u0;->j()Lq3/a/w2/h;

    move-result-object v0

    .line 5
    iget-object v1, p0, Le/a/k/a/k/r$b;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Le/a/k/a/k/r$b;->h:Ljava/lang/String;

    .line 6
    :goto_0
    iget-object v2, p0, Le/a/k/a/k/r$b;->i:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    check-cast v2, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$a;

    .line 7
    iget v2, v2, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$a;->c:F

    .line 8
    new-instance v3, Le/a/k/a/k/r$b$a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, Le/a/k/a/k/r$b$a;-><init>(Le/a/k/a/k/r$b;Lq3/a/i0;Ls1/w/d;)V

    const-string v5, "$this$subscribeVideoCallerIdDownloaded"

    .line 9
    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "downloadChannel"

    invoke-static {v0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "callback"

    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v5, Le/a/k/c/w0;

    invoke-direct {v5, v1, v2, v3, v4}, Le/a/k/c/w0;-><init>(Ljava/lang/String;FLs1/z/b/p;Ls1/w/d;)V

    invoke-static {p1, v0, v5}, Le/a/p5/s0/g;->P0(Lq3/a/i0;Lq3/a/w2/h;Ls1/z/b/p;)V

    .line 11
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
