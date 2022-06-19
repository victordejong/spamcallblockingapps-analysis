.class public final Le/a/k/a/k/u;
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
    c = "com.truecaller.videocallerid.ui.videoplayer.VideoPlayerPresenter$setConfig$1"
    f = "VideoPlayerPresenter.kt"
    l = {
        0x4d,
        0x54,
        0x58
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/k/a/k/r;

.field public final synthetic h:Le/a/k/a/k/a;


# direct methods
.method public constructor <init>(Le/a/k/a/k/r;Le/a/k/a/k/a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/k/u;->g:Le/a/k/a/k/r;

    iput-object p2, p0, Le/a/k/a/k/u;->h:Le/a/k/a/k/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance v0, Le/a/k/a/k/u;

    iget-object v1, p0, Le/a/k/a/k/u;->g:Le/a/k/a/k/r;

    iget-object v2, p0, Le/a/k/a/k/u;->h:Le/a/k/a/k/a;

    invoke-direct {v0, v1, v2, p2}, Le/a/k/a/k/u;-><init>(Le/a/k/a/k/r;Le/a/k/a/k/a;Ls1/w/d;)V

    iput-object p1, v0, Le/a/k/a/k/u;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/k/a/k/u;

    iget-object v1, p0, Le/a/k/a/k/u;->g:Le/a/k/a/k/r;

    iget-object v2, p0, Le/a/k/a/k/u;->h:Le/a/k/a/k/a;

    invoke-direct {v0, v1, v2, p2}, Le/a/k/a/k/u;-><init>(Le/a/k/a/k/r;Le/a/k/a/k/a;Ls1/w/d;)V

    iput-object p1, v0, Le/a/k/a/k/u;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/k/a/k/u;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/k/a/k/u;->f:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    iget-object v1, p0, Le/a/k/a/k/u;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/i0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/k/a/k/u;->e:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lq3/a/i0;

    .line 4
    iget-object p1, p0, Le/a/k/a/k/u;->g:Le/a/k/a/k/r;

    iput-object v1, p0, Le/a/k/a/k/u;->e:Ljava/lang/Object;

    iput v4, p0, Le/a/k/a/k/u;->f:I

    invoke-virtual {p1, p0}, Le/a/k/a/k/r;->Nj(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 5
    :cond_4
    :goto_1
    iget-object p1, p0, Le/a/k/a/k/u;->g:Le/a/k/a/k/r;

    .line 6
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/k/x;

    if-eqz p1, :cond_5

    .line 7
    iget-object v4, p0, Le/a/k/a/k/u;->h:Le/a/k/a/k/a;

    invoke-virtual {v4}, Le/a/k/a/k/a;->b()Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v4

    invoke-interface {p1, v4}, Le/a/k/a/k/x;->setAvatarXConfig(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 8
    :cond_5
    iget-object p1, p0, Le/a/k/a/k/u;->h:Le/a/k/a/k/a;

    .line 9
    instance-of v4, p1, Le/a/k/a/k/a$a;

    if-eqz v4, :cond_6

    iget-object p1, p0, Le/a/k/a/k/u;->g:Le/a/k/a/k/r;

    .line 10
    iget-object p1, p1, Le/a/k/a/k/r;->p:Le/a/k/a/k/z/c;

    .line 11
    invoke-interface {p1, v1}, Le/a/k/a/k/z/c;->e(Lq3/a/i0;)V

    goto :goto_2

    .line 12
    :cond_6
    instance-of v1, p1, Le/a/k/a/k/a$c;

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    iget-object v5, p0, Le/a/k/a/k/u;->g:Le/a/k/a/k/r;

    .line 13
    check-cast p1, Le/a/k/a/k/a$c;

    .line 14
    iget-object v6, p1, Le/a/k/a/k/a$c;->b:Ljava/lang/String;

    const/4 v7, 0x0

    .line 15
    iget-object v8, p1, Le/a/k/a/k/a$c;->c:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    const/4 v9, 0x0

    .line 16
    iget-object v10, p1, Le/a/k/a/k/a$c;->f:Ljava/lang/String;

    const/4 v11, 0x0

    const/16 v13, 0x2a

    .line 17
    iput-object v4, p0, Le/a/k/a/k/u;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/k/a/k/u;->f:I

    move-object v12, p0

    .line 18
    invoke-static/range {v5 .. v13}, Le/a/k/a/k/r;->Kj(Le/a/k/a/k/r;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;ZLjava/lang/String;Ljava/lang/Long;Ls1/w/d;I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    .line 19
    :cond_7
    instance-of v1, p1, Le/a/k/a/k/a$b;

    if-eqz v1, :cond_8

    iget-object v5, p0, Le/a/k/a/k/u;->g:Le/a/k/a/k/r;

    .line 20
    check-cast p1, Le/a/k/a/k/a$b;

    .line 21
    iget-object v6, p1, Le/a/k/a/k/a$b;->b:Ljava/util/List;

    .line 22
    iget-object v8, p1, Le/a/k/a/k/a$b;->c:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    .line 23
    iput-object v4, p0, Le/a/k/a/k/u;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/k/a/k/u;->f:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v10, p0

    .line 24
    invoke-virtual/range {v5 .. v10}, Le/a/k/a/k/r;->Lj(Ljava/util/List;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    .line 25
    :cond_8
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
