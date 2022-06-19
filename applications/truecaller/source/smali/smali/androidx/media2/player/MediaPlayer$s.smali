.class public Landroidx/media2/player/MediaPlayer$s;
.super Ln3/y/c/x0$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "s"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/media2/player/MediaPlayer;


# direct methods
.method public constructor <init>(Landroidx/media2/player/MediaPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$s;->a:Landroidx/media2/player/MediaPlayer;

    invoke-direct {p0}, Ln3/y/c/x0$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln3/y/c/x0;Landroidx/media2/common/MediaItem;II)V
    .locals 4

    .line 1
    iget-object p1, p0, Landroidx/media2/player/MediaPlayer$s;->a:Landroidx/media2/player/MediaPlayer;

    .line 2
    iget-object v0, p1, Landroidx/media2/player/MediaPlayer;->e:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p1, Landroidx/media2/player/MediaPlayer;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/player/MediaPlayer$u;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 5
    :cond_0
    iget v0, v1, Landroidx/media2/player/MediaPlayer$u;->a:I

    if-eq p3, v0, :cond_1

    const/high16 p4, -0x80000000

    :cond_1
    if-nez p4, :cond_7

    const/4 v0, 0x2

    if-eq p3, v0, :cond_6

    const/16 v2, 0x13

    if-eq p3, v2, :cond_5

    const/16 v2, 0x18

    if-eq p3, v2, :cond_4

    const/16 v2, 0x1d

    if-eq p3, v2, :cond_5

    const/4 v2, 0x4

    if-eq p3, v2, :cond_3

    const/4 v2, 0x5

    if-eq p3, v2, :cond_2

    const/4 v0, 0x6

    if-eq p3, v0, :cond_3

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 6
    :pswitch_0
    iget-object v0, p1, Landroidx/media2/player/MediaPlayer;->c:Ln3/y/c/x0;

    invoke-virtual {v0}, Ln3/y/c/x0;->b()Landroidx/media/AudioAttributesCompat;

    move-result-object v0

    .line 7
    new-instance v2, Ln3/y/c/r0;

    invoke-direct {v2, p1, v0}, Ln3/y/c/r0;-><init>(Landroidx/media2/player/MediaPlayer;Landroidx/media/AudioAttributesCompat;)V

    invoke-virtual {p1, v2}, Landroidx/media2/player/MediaPlayer;->W0(Landroidx/media2/player/MediaPlayer$x;)V

    goto :goto_0

    .line 8
    :pswitch_1
    new-instance v0, Ln3/y/c/s0;

    invoke-direct {v0, p1, v1}, Ln3/y/c/s0;-><init>(Landroidx/media2/player/MediaPlayer;Landroidx/media2/player/MediaPlayer$u;)V

    invoke-virtual {p1, v0}, Landroidx/media2/player/MediaPlayer;->W0(Landroidx/media2/player/MediaPlayer$x;)V

    goto :goto_0

    .line 9
    :pswitch_2
    invoke-virtual {p1}, Landroidx/media2/player/MediaPlayer;->l()J

    move-result-wide v2

    .line 10
    new-instance v0, Ln3/y/c/o0;

    invoke-direct {v0, p1, v2, v3}, Ln3/y/c/o0;-><init>(Landroidx/media2/player/MediaPlayer;J)V

    invoke-virtual {p1, v0}, Landroidx/media2/player/MediaPlayer;->W0(Landroidx/media2/player/MediaPlayer$x;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p1, v0}, Landroidx/media2/player/MediaPlayer;->B1(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p1, v0}, Landroidx/media2/player/MediaPlayer;->B1(I)V

    goto :goto_0

    .line 13
    :cond_4
    iget-object v0, p1, Landroidx/media2/player/MediaPlayer;->c:Ln3/y/c/x0;

    invoke-virtual {v0}, Ln3/y/c/x0;->d()Ln3/y/c/z0;

    move-result-object v0

    invoke-virtual {v0}, Ln3/y/c/z0;->a()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 14
    new-instance v2, Ln3/y/c/q0;

    invoke-direct {v2, p1, v0}, Ln3/y/c/q0;-><init>(Landroidx/media2/player/MediaPlayer;F)V

    invoke-virtual {p1, v2}, Landroidx/media2/player/MediaPlayer;->W0(Landroidx/media2/player/MediaPlayer$x;)V

    goto :goto_0

    .line 15
    :cond_5
    new-instance v0, Ln3/y/c/p0;

    invoke-direct {v0, p1, p2}, Ln3/y/c/p0;-><init>(Landroidx/media2/player/MediaPlayer;Landroidx/media2/common/MediaItem;)V

    invoke-virtual {p1, v0}, Landroidx/media2/player/MediaPlayer;->W0(Landroidx/media2/player/MediaPlayer$x;)V

    goto :goto_0

    .line 16
    :cond_6
    new-instance v0, Ln3/y/c/t0;

    invoke-direct {v0, p1, v1}, Ln3/y/c/t0;-><init>(Landroidx/media2/player/MediaPlayer;Landroidx/media2/player/MediaPlayer$u;)V

    invoke-virtual {p1, v0}, Landroidx/media2/player/MediaPlayer;->W0(Landroidx/media2/player/MediaPlayer$x;)V

    :cond_7
    :goto_0
    const/16 v0, 0x3e9

    if-eq p3, v0, :cond_9

    .line 17
    sget-object p3, Landroidx/media2/player/MediaPlayer;->s:Ln3/g/a;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ln3/g/h;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 18
    sget-object p3, Landroidx/media2/player/MediaPlayer;->s:Ln3/g/a;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Ln3/g/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_1

    :cond_8
    const/4 p3, -0x1

    .line 19
    :goto_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 20
    new-instance p4, Landroidx/media2/common/SessionPlayer$b;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-direct {p4, p3, p2}, Landroidx/media2/common/SessionPlayer$b;-><init>(ILandroidx/media2/common/MediaItem;)V

    .line 21
    iget-object p2, v1, Landroidx/media2/player/MediaPlayer$u;->b:Ln3/h/a/f;

    invoke-virtual {p2, p4}, Ln3/h/a/f;->h(Ljava/lang/Object;)Z

    goto :goto_3

    .line 22
    :cond_9
    sget-object p3, Landroidx/media2/player/MediaPlayer;->w:Ln3/g/a;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ln3/g/h;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 23
    sget-object p3, Landroidx/media2/player/MediaPlayer;->w:Ln3/g/a;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Ln3/g/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_2

    :cond_a
    const/16 p3, -0x3eb

    .line 24
    :goto_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 25
    new-instance p4, Landroidx/media2/player/MediaPlayer$p;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-direct {p4, p3, p2}, Landroidx/media2/player/MediaPlayer$p;-><init>(ILandroidx/media2/common/MediaItem;)V

    .line 26
    iget-object p2, v1, Landroidx/media2/player/MediaPlayer$u;->b:Ln3/h/a/f;

    invoke-virtual {p2, p4}, Ln3/h/a/f;->h(Ljava/lang/Object;)Z

    .line 27
    :goto_3
    invoke-virtual {p1}, Landroidx/media2/player/MediaPlayer;->L0()V

    :goto_4
    return-void

    :catchall_0
    move-exception p1

    .line 28
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Ln3/y/c/x0;Landroidx/media2/common/MediaItem;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/media2/player/MediaPlayer$s;->a:Landroidx/media2/player/MediaPlayer;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroidx/media2/player/MediaPlayer;->B1(I)V

    .line 2
    iget-object p1, p0, Landroidx/media2/player/MediaPlayer$s;->a:Landroidx/media2/player/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroidx/media2/player/MediaPlayer;->l1(Landroidx/media2/common/MediaItem;I)V

    .line 3
    iget-object p1, p0, Landroidx/media2/player/MediaPlayer$s;->a:Landroidx/media2/player/MediaPlayer;

    new-instance v0, Landroidx/media2/player/MediaPlayer$s$c;

    invoke-direct {v0, p0, p2, p3, p4}, Landroidx/media2/player/MediaPlayer$s$c;-><init>(Landroidx/media2/player/MediaPlayer$s;Landroidx/media2/common/MediaItem;II)V

    invoke-virtual {p1, v0}, Landroidx/media2/player/MediaPlayer;->U0(Landroidx/media2/player/MediaPlayer$r;)V

    return-void
.end method

.method public c(Ln3/y/c/x0;Landroidx/media2/common/MediaItem;II)V
    .locals 3

    const/4 p1, 0x2

    const/4 v0, 0x1

    if-eq p3, p1, :cond_5

    const/4 v1, 0x6

    if-eq p3, v1, :cond_3

    const/16 v1, 0x64

    if-eq p3, v1, :cond_2

    const/16 v2, 0x2c0

    if-eq p3, v2, :cond_1

    const/16 v1, 0x2bd

    if-eq p3, v1, :cond_0

    const/16 p1, 0x2be

    if-eq p3, p1, :cond_2

    goto/16 :goto_1

    .line 1
    :cond_0
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$s;->a:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v0, p2, p1}, Landroidx/media2/player/MediaPlayer;->l1(Landroidx/media2/common/MediaItem;I)V

    goto/16 :goto_1

    :cond_1
    if-lt p4, v1, :cond_7

    .line 2
    iget-object p1, p0, Landroidx/media2/player/MediaPlayer$s;->a:Landroidx/media2/player/MediaPlayer;

    const/4 v0, 0x3

    invoke-virtual {p1, p2, v0}, Landroidx/media2/player/MediaPlayer;->l1(Landroidx/media2/common/MediaItem;I)V

    goto :goto_1

    .line 3
    :cond_2
    iget-object p1, p0, Landroidx/media2/player/MediaPlayer$s;->a:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {p1, p2, v0}, Landroidx/media2/player/MediaPlayer;->l1(Landroidx/media2/common/MediaItem;I)V

    goto :goto_1

    .line 4
    :cond_3
    iget-object p1, p0, Landroidx/media2/player/MediaPlayer$s;->a:Landroidx/media2/player/MediaPlayer;

    iget-object p1, p1, Landroidx/media2/player/MediaPlayer;->l:Ljava/lang/Object;

    monitor-enter p1

    .line 5
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$s;->a:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v1, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, v1, Landroidx/media2/player/MediaPlayer;->o:I

    .line 6
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$s;->a:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v1, Landroidx/media2/player/MediaPlayer;->q:Landroidx/media2/common/MediaItem;

    .line 7
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    .line 8
    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer;->B0()Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_1

    .line 9
    :cond_4
    invoke-virtual {v1, v0}, Landroidx/media2/player/MediaPlayer;->B1(I)V

    .line 10
    iget-object p1, p0, Landroidx/media2/player/MediaPlayer$s;->a:Landroidx/media2/player/MediaPlayer;

    new-instance v0, Landroidx/media2/player/MediaPlayer$s$f;

    invoke-direct {v0, p0}, Landroidx/media2/player/MediaPlayer$s$f;-><init>(Landroidx/media2/player/MediaPlayer$s;)V

    invoke-virtual {p1, v0}, Landroidx/media2/player/MediaPlayer;->W0(Landroidx/media2/player/MediaPlayer$x;)V

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 11
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 12
    :cond_5
    iget-object p1, p0, Landroidx/media2/player/MediaPlayer$s;->a:Landroidx/media2/player/MediaPlayer;

    iget-object p1, p1, Landroidx/media2/player/MediaPlayer;->l:Ljava/lang/Object;

    monitor-enter p1

    .line 13
    :try_start_2
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$s;->a:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v1, Landroidx/media2/player/MediaPlayer;->p:Landroidx/media2/common/MediaItem;

    if-ne v2, p2, :cond_6

    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_0

    .line 14
    :cond_6
    iget-object v2, v1, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, v1, Landroidx/media2/player/MediaPlayer;->o:I

    .line 15
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$s;->a:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer;->F1()Ln3/k/h/c;

    .line 16
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$s;->a:Landroidx/media2/player/MediaPlayer;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer;->q:Landroidx/media2/common/MediaItem;

    .line 17
    :goto_0
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_7

    .line 18
    iget-object p1, p0, Landroidx/media2/player/MediaPlayer$s;->a:Landroidx/media2/player/MediaPlayer;

    new-instance v0, Landroidx/media2/player/MediaPlayer$s$d;

    invoke-direct {v0, p0, p2}, Landroidx/media2/player/MediaPlayer$s$d;-><init>(Landroidx/media2/player/MediaPlayer$s;Landroidx/media2/common/MediaItem;)V

    invoke-virtual {p1, v0}, Landroidx/media2/player/MediaPlayer;->W0(Landroidx/media2/player/MediaPlayer$x;)V

    if-eqz v1, :cond_7

    .line 19
    new-instance p1, Landroidx/media2/player/MediaPlayer$s$e;

    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$s;->a:Landroidx/media2/player/MediaPlayer;

    iget-object v0, v0, Landroidx/media2/player/MediaPlayer;->d:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p1, p0, v0, v1}, Landroidx/media2/player/MediaPlayer$s$e;-><init>(Landroidx/media2/player/MediaPlayer$s;Ljava/util/concurrent/Executor;Landroidx/media2/common/MediaItem;)V

    .line 20
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$s;->a:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v0, p1}, Landroidx/media2/player/MediaPlayer;->G0(Landroidx/media2/player/MediaPlayer$v;)V

    .line 21
    :cond_7
    :goto_1
    sget-object p1, Landroidx/media2/player/MediaPlayer;->u:Ln3/g/a;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln3/g/h;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 22
    sget-object p1, Landroidx/media2/player/MediaPlayer;->u:Ln3/g/a;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ln3/g/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 23
    iget-object p3, p0, Landroidx/media2/player/MediaPlayer$s;->a:Landroidx/media2/player/MediaPlayer;

    new-instance v0, Landroidx/media2/player/MediaPlayer$s$g;

    invoke-direct {v0, p0, p2, p1, p4}, Landroidx/media2/player/MediaPlayer$s$g;-><init>(Landroidx/media2/player/MediaPlayer$s;Landroidx/media2/common/MediaItem;II)V

    invoke-virtual {p3, v0}, Landroidx/media2/player/MediaPlayer;->U0(Landroidx/media2/player/MediaPlayer$r;)V

    :cond_8
    return-void

    :catchall_1
    move-exception p2

    .line 24
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p2
.end method

.method public d(Ln3/y/c/x0;Landroidx/media2/common/MediaItem;Ln3/y/c/y0;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/media2/player/MediaPlayer$s;->a:Landroidx/media2/player/MediaPlayer;

    new-instance v0, Landroidx/media2/player/MediaPlayer$s$h;

    invoke-direct {v0, p0, p2, p3}, Landroidx/media2/player/MediaPlayer$s$h;-><init>(Landroidx/media2/player/MediaPlayer$s;Landroidx/media2/common/MediaItem;Ln3/y/c/y0;)V

    invoke-virtual {p1, v0}, Landroidx/media2/player/MediaPlayer;->U0(Landroidx/media2/player/MediaPlayer$r;)V

    return-void
.end method

.method public e(Ln3/y/c/x0;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/media2/player/MediaPlayer$s;->a:Landroidx/media2/player/MediaPlayer;

    new-instance v0, Landroidx/media2/player/MediaPlayer$s$i;

    invoke-direct {v0, p0, p2, p3, p4}, Landroidx/media2/player/MediaPlayer$s$i;-><init>(Landroidx/media2/player/MediaPlayer$s;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V

    invoke-virtual {p1, v0}, Landroidx/media2/player/MediaPlayer;->W0(Landroidx/media2/player/MediaPlayer$x;)V

    return-void
.end method

.method public f(Ln3/y/c/x0;Landroidx/media2/common/MediaItem;Ln3/y/c/c1;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/media2/player/MediaPlayer$s;->a:Landroidx/media2/player/MediaPlayer;

    new-instance v0, Landroidx/media2/player/MediaPlayer$s$b;

    invoke-direct {v0, p0, p2, p3}, Landroidx/media2/player/MediaPlayer$s$b;-><init>(Landroidx/media2/player/MediaPlayer$s;Landroidx/media2/common/MediaItem;Ln3/y/c/c1;)V

    invoke-virtual {p1, v0}, Landroidx/media2/player/MediaPlayer;->U0(Landroidx/media2/player/MediaPlayer$r;)V

    return-void
.end method

.method public g(Ln3/y/c/x0;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/y/c/x0;",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Landroidx/media2/player/MediaPlayer$s;->a:Landroidx/media2/player/MediaPlayer;

    new-instance v0, Ln3/y/c/c;

    invoke-direct {v0, p0, p2}, Ln3/y/c/c;-><init>(Landroidx/media2/player/MediaPlayer$s;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroidx/media2/player/MediaPlayer;->W0(Landroidx/media2/player/MediaPlayer$x;)V

    return-void
.end method

.method public h(Ln3/y/c/x0;Landroidx/media2/common/MediaItem;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/media2/player/MediaPlayer$s;->a:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {p1}, Landroidx/media2/player/MediaPlayer;->k()Landroidx/media2/common/MediaItem;

    move-result-object p1

    if-eqz p1, :cond_0

    if-ne p1, p2, :cond_0

    .line 2
    new-instance p1, Landroidx/media2/common/VideoSize;

    invoke-direct {p1, p3, p4}, Landroidx/media2/common/VideoSize;-><init>(II)V

    .line 3
    iget-object p2, p0, Landroidx/media2/player/MediaPlayer$s;->a:Landroidx/media2/player/MediaPlayer;

    new-instance p3, Landroidx/media2/player/MediaPlayer$s$a;

    invoke-direct {p3, p0, p1}, Landroidx/media2/player/MediaPlayer$s$a;-><init>(Landroidx/media2/player/MediaPlayer$s;Landroidx/media2/common/VideoSize;)V

    invoke-virtual {p2, p3}, Landroidx/media2/player/MediaPlayer;->W0(Landroidx/media2/player/MediaPlayer$x;)V

    :cond_0
    return-void
.end method
