.class public final Le/a/h/b/d/a/a/c0;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/d/a/a/a0;


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Ls1/g;

.field public d:Lcom/google/android/exoplayer2/SimpleExoPlayer;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/o2/m;)V
    .locals 13

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemEventReceiver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    .line 2
    new-instance v0, Le/a/h/b/d/a/a/c0$a;

    invoke-direct {v0, p1}, Le/a/h/b/d/a/a/c0$a;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/h/b/d/a/a/c0;->a:Ls1/g;

    .line 3
    new-instance v0, Le/a/h/b/d/a/a/c0$b;

    invoke-direct {v0, p1}, Le/a/h/b/d/a/a/c0$b;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/h/b/d/a/a/c0;->b:Ls1/g;

    .line 4
    new-instance v0, Le/a/h/b/d/a/a/c0$c;

    invoke-direct {v0, p1}, Le/a/h/b/d/a/a/c0$c;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/h/b/d/a/a/c0;->c:Ls1/g;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    .line 5
    invoke-static/range {v1 .. v6}, Le/m/d/y/n;->d1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xc

    move-object v7, p1

    move-object v8, p2

    move-object v9, p0

    .line 6
    invoke-static/range {v7 .. v12}, Le/m/d/y/n;->f1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public final N4()Lcom/google/android/exoplayer2/ui/PlayerView;
    .locals 1

    iget-object v0, p0, Le/a/h/b/d/a/a/c0;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    return-object v0
.end method

.method public S1(Le/m/a/c/l1/p;)V
    .locals 5

    const-string v0, "mediaSource"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/b/d/a/a/c0;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 3
    invoke-virtual {p0}, Le/a/h/b/d/a/a/c0;->N4()Lcom/google/android/exoplayer2/ui/PlayerView;

    move-result-object v0

    .line 4
    new-instance v2, Lcom/google/android/exoplayer2/SimpleExoPlayer$b;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer$b;->a()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v2

    const-string v3, "SimpleExoPlayer.Builder(context).build()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Le/a/h/b/d/a/a/c0;->d:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 5
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Le/m/a/c/q0;)V

    .line 6
    iget-object v0, p0, Le/a/h/b/d/a/a/c0;->d:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v2, 0x0

    const-string v3, "playbackPlayer"

    if-eqz v0, :cond_3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setRepeatMode(I)V

    .line 7
    iget-object v0, p0, Le/a/h/b/d/a/a/c0;->d:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Le/m/a/c/l1/p;)V

    .line 8
    iget-object v0, p0, Le/a/h/b/d/a/a/c0;->d:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 9
    iget-object v0, p0, Le/a/h/b/d/a/a/c0;->d:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    new-instance v1, Le/a/h/b/d/a/a/d0;

    invoke-direct {v1, p0, p1}, Le/a/h/b/d/a/a/d0;-><init>(Le/a/h/b/d/a/a/c0;Le/m/a/c/l1/p;)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Le/m/a/c/q0$b;)V

    return-void

    :cond_0
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 10
    :cond_1
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 11
    :cond_2
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 12
    :cond_3
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public g1()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/h/b/d/a/a/c0;->N4()Lcom/google/android/exoplayer2/ui/PlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Le/m/a/c/q0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/m/a/c/q0;->stop()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/a/h/b/d/a/a/c0;->N4()Lcom/google/android/exoplayer2/ui/PlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Le/m/a/c/q0;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/m/a/c/q0;->release()V

    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "titleRes"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/b/d/a/a/c0;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
