.class public final Le/a/k/a/k/z/m;
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
    c = "com.truecaller.videocallerid.ui.videoplayer.playing.VideoPlayingManagerImpl$playInternal$3"
    f = "VideoPlayingManager.kt"
    l = {
        0xce,
        0xce
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/k/a/k/z/h;

.field public final synthetic i:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

.field public final synthetic j:Landroid/net/Uri;

.field public final synthetic k:Le/m/a/c/p1/h;


# direct methods
.method public constructor <init>(Le/a/k/a/k/z/h;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Landroid/net/Uri;Le/m/a/c/p1/h;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/k/z/m;->h:Le/a/k/a/k/z/h;

    iput-object p2, p0, Le/a/k/a/k/z/m;->i:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    iput-object p3, p0, Le/a/k/a/k/z/m;->j:Landroid/net/Uri;

    iput-object p4, p0, Le/a/k/a/k/z/m;->k:Le/m/a/c/p1/h;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
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

    new-instance p1, Le/a/k/a/k/z/m;

    iget-object v1, p0, Le/a/k/a/k/z/m;->h:Le/a/k/a/k/z/h;

    iget-object v2, p0, Le/a/k/a/k/z/m;->i:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    iget-object v3, p0, Le/a/k/a/k/z/m;->j:Landroid/net/Uri;

    iget-object v4, p0, Le/a/k/a/k/z/m;->k:Le/m/a/c/p1/h;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/k/a/k/z/m;-><init>(Le/a/k/a/k/z/h;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Landroid/net/Uri;Le/m/a/c/p1/h;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/k/a/k/z/m;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/k/a/k/z/m;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/k/a/k/z/m;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/k/a/k/z/m;->g:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/k/a/k/z/m;->f:Ljava/lang/Object;

    check-cast v1, Le/a/k/a/k/z/h;

    iget-object v3, p0, Le/a/k/a/k/z/m;->e:Ljava/lang/Object;

    check-cast v3, Le/m/a/c/l1/p;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/k/a/k/z/m;->i:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    .line 5
    instance-of p1, p1, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$a;

    if-eqz p1, :cond_4

    .line 6
    iget-object p1, p0, Le/a/k/a/k/z/m;->h:Le/a/k/a/k/z/h;

    .line 7
    iget-object v1, p0, Le/a/k/a/k/z/m;->j:Landroid/net/Uri;

    iget-object v4, p0, Le/a/k/a/k/z/m;->k:Le/m/a/c/p1/h;

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v5, Le/a/k/a/k/z/e;

    invoke-direct {v5, v4, v1}, Le/a/k/a/k/z/e;-><init>(Le/m/a/c/p1/h;Landroid/net/Uri;)V

    invoke-virtual {p1, v5}, Le/a/k/a/k/z/h;->t(Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/a/c/l1/p;

    if-eqz p1, :cond_4

    .line 10
    iget-object v1, p0, Le/a/k/a/k/z/m;->h:Le/a/k/a/k/z/h;

    .line 11
    iget-object v4, v1, Le/a/k/a/k/z/h;->j:Le/a/k/a/k/d;

    .line 12
    iput-object p1, p0, Le/a/k/a/k/z/m;->e:Ljava/lang/Object;

    iput-object v1, p0, Le/a/k/a/k/z/m;->f:Ljava/lang/Object;

    iput v3, p0, Le/a/k/a/k/z/m;->g:I

    invoke-interface {v4, p0}, Le/a/k/a/k/d;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    return-object v0

    :cond_3
    move-object v6, v3

    move-object v3, p1

    move-object p1, v6

    :goto_0
    check-cast p1, Le/m/a/c/c0;

    iget-object v4, p0, Le/a/k/a/k/z/m;->i:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    .line 13
    iget-boolean v4, v4, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;->a:Z

    const/4 v5, 0x0

    .line 14
    iput-object v5, p0, Le/a/k/a/k/z/m;->e:Ljava/lang/Object;

    iput-object v5, p0, Le/a/k/a/k/z/m;->f:Ljava/lang/Object;

    iput v2, p0, Le/a/k/a/k/z/m;->g:I

    invoke-virtual {v1, p1, v3, v4, p0}, Le/a/k/a/k/z/h;->m(Le/m/a/c/c0;Le/m/a/c/l1/p;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 15
    :cond_4
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
