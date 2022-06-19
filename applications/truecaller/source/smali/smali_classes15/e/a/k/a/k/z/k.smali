.class public final Le/a/k/a/k/z/k;
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
    c = "com.truecaller.videocallerid.ui.videoplayer.playing.VideoPlayingManagerImpl$playInternal$1"
    f = "VideoPlayingManager.kt"
    l = {
        0x9d,
        0x9d,
        0xa3,
        0xa4,
        0xa8,
        0xaa,
        0xad,
        0xaf,
        0xb1
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/k/a/k/z/h;

.field public final synthetic h:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Lq3/a/i0;

.field public final synthetic k:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Le/a/k/a/k/z/h;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Ljava/lang/String;Lq3/a/i0;Ljava/lang/Long;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/k/z/k;->g:Le/a/k/a/k/z/h;

    iput-object p2, p0, Le/a/k/a/k/z/k;->h:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    iput-object p3, p0, Le/a/k/a/k/z/k;->i:Ljava/lang/String;

    iput-object p4, p0, Le/a/k/a/k/z/k;->j:Lq3/a/i0;

    iput-object p5, p0, Le/a/k/a/k/z/k;->k:Ljava/lang/Long;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/k/a/k/z/k;

    iget-object v1, p0, Le/a/k/a/k/z/k;->g:Le/a/k/a/k/z/h;

    iget-object v2, p0, Le/a/k/a/k/z/k;->h:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    iget-object v3, p0, Le/a/k/a/k/z/k;->i:Ljava/lang/String;

    iget-object v4, p0, Le/a/k/a/k/z/k;->j:Lq3/a/i0;

    iget-object v5, p0, Le/a/k/a/k/z/k;->k:Ljava/lang/Long;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Le/a/k/a/k/z/k;-><init>(Le/a/k/a/k/z/h;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Ljava/lang/String;Lq3/a/i0;Ljava/lang/Long;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/k/a/k/z/k;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/k/a/k/z/k;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/k/a/k/z/k;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/k/a/k/z/k;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_1
    iget-object v2, p0, Le/a/k/a/k/z/k;->e:Ljava/lang/Object;

    check-cast v2, Le/m/a/c/c0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    :cond_0
    move-object v6, v2

    goto :goto_3

    :pswitch_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_4
    iget-object v2, p0, Le/a/k/a/k/z/k;->e:Ljava/lang/Object;

    check-cast v2, Le/a/k/a/k/z/h;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_5
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/k/a/k/z/k;->h:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    .line 5
    instance-of p1, p1, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$d;

    if-eqz p1, :cond_3

    .line 6
    iget-object v2, p0, Le/a/k/a/k/z/k;->g:Le/a/k/a/k/z/h;

    .line 7
    iget-object p1, v2, Le/a/k/a/k/z/h;->j:Le/a/k/a/k/d;

    .line 8
    iput-object v2, p0, Le/a/k/a/k/z/k;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/k/a/k/z/k;->f:I

    invoke-interface {p1, p0}, Le/a/k/a/k/d;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_1

    return-object v1

    :cond_1
    :goto_0
    check-cast p1, Le/m/a/c/c0;

    iput-object v4, p0, Le/a/k/a/k/z/k;->e:Ljava/lang/Object;

    const/4 v5, 0x2

    iput v5, p0, Le/a/k/a/k/z/k;->f:I

    invoke-static {v2, p1, v4, p0, v3}, Le/a/k/a/k/z/h;->i(Le/a/k/a/k/z/h;Le/m/a/c/c0;Ls1/z/b/p;Ls1/w/d;I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    :cond_2
    :goto_1
    return-object v0

    .line 9
    :cond_3
    iget-object p1, p0, Le/a/k/a/k/z/k;->g:Le/a/k/a/k/z/h;

    .line 10
    iget-object p1, p1, Le/a/k/a/k/z/h;->j:Le/a/k/a/k/d;

    const/4 v2, 0x3

    .line 11
    iput v2, p0, Le/a/k/a/k/z/k;->f:I

    invoke-interface {p1, p0}, Le/a/k/a/k/d;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 12
    :cond_4
    :goto_2
    move-object v2, p1

    check-cast v2, Le/m/a/c/c0;

    .line 13
    iget-object p1, p0, Le/a/k/a/k/z/k;->g:Le/a/k/a/k/z/h;

    .line 14
    iget-object p1, p1, Le/a/k/a/k/z/h;->i:Le/a/k/c/q;

    .line 15
    iget-object v5, p0, Le/a/k/a/k/z/k;->i:Ljava/lang/String;

    iput-object v2, p0, Le/a/k/a/k/z/k;->e:Ljava/lang/Object;

    const/4 v6, 0x4

    iput v6, p0, Le/a/k/a/k/z/k;->f:I

    invoke-interface {p1, v5, p0}, Le/a/k/c/q;->f(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_0

    return-object v1

    .line 16
    :goto_3
    check-cast p1, Le/a/k/c/g;

    .line 17
    iget-object v5, p0, Le/a/k/a/k/z/k;->g:Le/a/k/a/k/z/h;

    .line 18
    iput-object p1, v5, Le/a/k/a/k/z/h;->g:Le/a/k/c/g;

    if-nez p1, :cond_5

    .line 19
    iget-object v7, p0, Le/a/k/a/k/z/k;->j:Lq3/a/i0;

    iget-object v8, p0, Le/a/k/a/k/z/k;->i:Ljava/lang/String;

    iget-object v9, p0, Le/a/k/a/k/z/k;->h:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    iput-object v4, p0, Le/a/k/a/k/z/k;->e:Ljava/lang/Object;

    const/4 p1, 0x5

    iput p1, p0, Le/a/k/a/k/z/k;->f:I

    move-object v10, p0

    invoke-virtual/range {v5 .. v10}, Le/a/k/a/k/z/h;->p(Le/m/a/c/c0;Lq3/a/i0;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_d

    return-object v1

    .line 20
    :cond_5
    invoke-virtual {p1}, Le/a/k/c/g;->a()I

    move-result v2

    const/4 v5, 0x0

    const/16 v7, 0x64

    if-ne v2, v7, :cond_6

    move v2, v3

    goto :goto_4

    :cond_6
    move v2, v5

    :goto_4
    if-eqz v2, :cond_9

    .line 21
    iget-object p1, p0, Le/a/k/a/k/z/k;->g:Le/a/k/a/k/z/h;

    iget-object v2, p0, Le/a/k/a/k/z/k;->i:Ljava/lang/String;

    iget-object v3, p0, Le/a/k/a/k/z/k;->h:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    iput-object v4, p0, Le/a/k/a/k/z/k;->e:Ljava/lang/Object;

    const/4 v4, 0x6

    iput v4, p0, Le/a/k/a/k/z/k;->f:I

    .line 22
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    instance-of v4, v3, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$b;

    if-eqz v4, :cond_7

    .line 24
    iget-boolean v3, v3, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;->a:Z

    .line 25
    invoke-virtual {p1, v6, v2, v3, p0}, Le/a/k/a/k/z/h;->n(Le/m/a/c/c0;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    goto :goto_5

    .line 26
    :cond_7
    iget-boolean v3, v3, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;->a:Z

    .line 27
    invoke-virtual {p1, v6, v2, v3, p0}, Le/a/k/a/k/z/h;->o(Le/m/a/c/c0;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    goto :goto_5

    :cond_8
    move-object p1, v0

    :goto_5
    if-ne p1, v1, :cond_d

    return-object v1

    .line 28
    :cond_9
    iget-object v2, p0, Le/a/k/a/k/z/k;->k:Ljava/lang/Long;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/16 v2, 0x1388

    int-to-long v10, v2

    cmp-long v2, v8, v10

    if-gtz v2, :cond_b

    iget-object v2, p0, Le/a/k/a/k/z/k;->g:Le/a/k/a/k/z/h;

    .line 29
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-virtual {p1}, Le/a/k/c/g;->a()I

    move-result v2

    if-ne v2, v7, :cond_a

    goto :goto_6

    :cond_a
    move v3, v5

    :goto_6
    if-nez v3, :cond_b

    .line 31
    iget-object v5, p0, Le/a/k/a/k/z/k;->g:Le/a/k/a/k/z/h;

    iget-object v7, p0, Le/a/k/a/k/z/k;->j:Lq3/a/i0;

    iget-object v8, p0, Le/a/k/a/k/z/k;->i:Ljava/lang/String;

    iget-object v9, p0, Le/a/k/a/k/z/k;->h:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    iput-object v4, p0, Le/a/k/a/k/z/k;->e:Ljava/lang/Object;

    const/4 p1, 0x7

    iput p1, p0, Le/a/k/a/k/z/k;->f:I

    move-object v10, p0

    invoke-virtual/range {v5 .. v10}, Le/a/k/a/k/z/h;->p(Le/m/a/c/c0;Lq3/a/i0;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_d

    return-object v1

    .line 32
    :cond_b
    invoke-virtual {p1}, Le/a/k/c/g;->a()I

    move-result p1

    iget-object v2, p0, Le/a/k/a/k/z/k;->g:Le/a/k/a/k/z/h;

    .line 33
    iget-object v2, v2, Le/a/k/a/k/z/h;->l:Ljavax/inject/Provider;

    .line 34
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "minPartlyCachePercentage.get()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-lt p1, v2, :cond_c

    iget-object v5, p0, Le/a/k/a/k/z/k;->g:Le/a/k/a/k/z/h;

    iget-object v7, p0, Le/a/k/a/k/z/k;->j:Lq3/a/i0;

    iget-object v8, p0, Le/a/k/a/k/z/k;->i:Ljava/lang/String;

    iget-object v9, p0, Le/a/k/a/k/z/k;->h:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    iput-object v4, p0, Le/a/k/a/k/z/k;->e:Ljava/lang/Object;

    const/16 p1, 0x8

    iput p1, p0, Le/a/k/a/k/z/k;->f:I

    move-object v10, p0

    invoke-virtual/range {v5 .. v10}, Le/a/k/a/k/z/h;->r(Le/m/a/c/c0;Lq3/a/i0;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_d

    return-object v1

    .line 35
    :cond_c
    iget-object v5, p0, Le/a/k/a/k/z/k;->g:Le/a/k/a/k/z/h;

    iget-object v7, p0, Le/a/k/a/k/z/k;->j:Lq3/a/i0;

    iget-object v8, p0, Le/a/k/a/k/z/k;->i:Ljava/lang/String;

    iget-object v9, p0, Le/a/k/a/k/z/k;->h:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    iput-object v4, p0, Le/a/k/a/k/z/k;->e:Ljava/lang/Object;

    const/16 p1, 0x9

    iput p1, p0, Le/a/k/a/k/z/k;->f:I

    move-object v10, p0

    invoke-virtual/range {v5 .. v10}, Le/a/k/a/k/z/h;->p(Le/m/a/c/c0;Lq3/a/i0;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_d

    return-object v1

    :cond_d
    :goto_7
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
