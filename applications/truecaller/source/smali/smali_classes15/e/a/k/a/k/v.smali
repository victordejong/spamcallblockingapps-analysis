.class public final Le/a/k/a/k/v;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
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
    c = "com.truecaller.videocallerid.ui.videoplayer.VideoPlayerPresenter$setConfig$2"
    f = "VideoPlayerPresenter.kt"
    l = {
        0x6a,
        0x71
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/k/a/k/r;

.field public final synthetic g:Le/a/k/a/k/l;


# direct methods
.method public constructor <init>(Le/a/k/a/k/r;Le/a/k/a/k/l;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/k/v;->f:Le/a/k/a/k/r;

    iput-object p2, p0, Le/a/k/a/k/v;->g:Le/a/k/a/k/l;

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

    new-instance p1, Le/a/k/a/k/v;

    iget-object v0, p0, Le/a/k/a/k/v;->f:Le/a/k/a/k/r;

    iget-object v1, p0, Le/a/k/a/k/v;->g:Le/a/k/a/k/l;

    invoke-direct {p1, v0, v1, p2}, Le/a/k/a/k/v;-><init>(Le/a/k/a/k/r;Le/a/k/a/k/l;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/k/a/k/v;

    iget-object v0, p0, Le/a/k/a/k/v;->f:Le/a/k/a/k/r;

    iget-object v1, p0, Le/a/k/a/k/v;->g:Le/a/k/a/k/l;

    invoke-direct {p1, v0, v1, p2}, Le/a/k/a/k/v;-><init>(Le/a/k/a/k/r;Le/a/k/a/k/l;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/k/a/k/v;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/k/a/k/v;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/k/a/k/v;->f:Le/a/k/a/k/r;

    iput v3, p0, Le/a/k/a/k/v;->e:I

    invoke-virtual {p1, p0}, Le/a/k/a/k/r;->Nj(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 5
    :cond_3
    :goto_0
    iget-object p1, p0, Le/a/k/a/k/v;->g:Le/a/k/a/k/l;

    .line 6
    instance-of v1, p1, Le/a/k/a/k/l$c;

    if-eqz v1, :cond_4

    iget-object v3, p0, Le/a/k/a/k/v;->f:Le/a/k/a/k/r;

    .line 7
    move-object v1, p1

    check-cast v1, Le/a/k/a/k/l$c;

    .line 8
    iget-object v4, v1, Le/a/k/a/k/l$c;->b:Ljava/lang/String;

    .line 9
    iget-object v5, v1, Le/a/k/a/k/l$c;->c:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Le/a/k/a/k/l;->b()Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    move-result-object v6

    .line 11
    iget-object p1, p0, Le/a/k/a/k/v;->g:Le/a/k/a/k/l;

    check-cast p1, Le/a/k/a/k/l$c;

    .line 12
    iget-boolean v7, p1, Le/a/k/a/k/l$c;->d:Z

    .line 13
    iget-object v8, p1, Le/a/k/a/k/l$c;->e:Ljava/lang/String;

    const/4 v9, 0x0

    const/16 v11, 0x20

    .line 14
    iput v2, p0, Le/a/k/a/k/v;->e:I

    move-object v10, p0

    .line 15
    invoke-static/range {v3 .. v11}, Le/a/k/a/k/r;->Kj(Le/a/k/a/k/r;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;ZLjava/lang/String;Ljava/lang/Long;Ls1/w/d;I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 16
    :cond_4
    instance-of v0, p1, Le/a/k/a/k/l$b;

    if-eqz v0, :cond_5

    iget-object v0, p0, Le/a/k/a/k/v;->f:Le/a/k/a/k/r;

    check-cast p1, Le/a/k/a/k/l$b;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Le/a/k/a/k/v;->g:Le/a/k/a/k/l;

    check-cast p1, Le/a/k/a/k/l$b;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Le/a/k/a/k/v;->g:Le/a/k/a/k/l;

    invoke-virtual {p1}, Le/a/k/a/k/l;->b()Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    move-result-object p1

    .line 17
    iget-object v1, v0, Le/a/k/a/k/r;->p:Le/a/k/a/k/z/c;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, v2, p1}, Le/a/k/a/k/z/c;->c(Lq3/a/i0;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;)V

    goto :goto_1

    .line 18
    :cond_5
    instance-of v0, p1, Le/a/k/a/k/l$a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Le/a/k/a/k/v;->f:Le/a/k/a/k/r;

    move-object v1, p1

    check-cast v1, Le/a/k/a/k/l$a;

    .line 19
    iget-object v2, v1, Le/a/k/a/k/l$a;->b:Landroid/net/Uri;

    .line 20
    iget-object v1, v1, Le/a/k/a/k/l$a;->c:Le/m/a/c/p1/h;

    .line 21
    invoke-virtual {p1}, Le/a/k/a/k/l;->b()Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    move-result-object p1

    .line 22
    iget-object v3, v0, Le/a/k/a/k/r;->p:Le/a/k/a/k/z/c;

    invoke-interface {v3, v0, v2, v1, p1}, Le/a/k/a/k/z/c;->d(Lq3/a/i0;Landroid/net/Uri;Le/m/a/c/p1/h;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;)V

    .line 23
    :cond_6
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
