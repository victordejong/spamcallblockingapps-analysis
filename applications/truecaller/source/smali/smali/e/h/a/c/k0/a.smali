.class public Le/h/a/c/k0/a;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field public b:Landroid/content/Context;

.field public c:Le/h/a/c/r0/e;

.field public d:Lcom/google/android/exoplayer2/ui/PlayerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0, p1}, Le/h/a/c/k0/a;->e(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final e(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Le/h/a/c/k0/a;->b:Landroid/content/Context;

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v1, p0, Le/h/a/c/k0/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Le/h/a/c/k0/a;->d:Lcom/google/android/exoplayer2/ui/PlayerView;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 4
    sget v0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->g:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 5
    iget-object v0, p0, Le/h/a/c/k0/a;->d:Lcom/google/android/exoplayer2/ui/PlayerView;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->setResizeMode(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Le/h/a/c/k0/a;->d:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setResizeMode(I)V

    .line 7
    :goto_0
    iget-object v0, p0, Le/h/a/c/k0/a;->d:Lcom/google/android/exoplayer2/ui/PlayerView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->setUseArtwork(Z)V

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/clevertap/android/sdk/R$drawable;->ct_audio:I

    const/4 v4, 0x0

    .line 9
    sget-object v5, Ln3/k/b/d/h;->a:Ljava/lang/ThreadLocal;

    .line 10
    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 11
    iget-object v3, p0, Le/h/a/c/k0/a;->d:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setDefaultArtwork(Landroid/graphics/drawable/Drawable;)V

    .line 12
    new-instance v0, Le/m/a/c/n1/a$d;

    invoke-direct {v0}, Le/m/a/c/n1/a$d;-><init>()V

    .line 13
    new-instance v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object v4, p0, Le/h/a/c/k0/a;->b:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;)V

    .line 14
    new-instance v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$b;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$b;-><init>(Landroid/content/Context;)V

    .line 15
    iget-boolean p1, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$b;->i:Z

    xor-int/2addr p1, v2

    invoke-static {p1}, Ln3/g0/y;->x(Z)V

    .line 16
    iput-object v3, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$b;->d:Le/m/a/c/n1/h;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer$b;->a()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    iput-object p1, p0, Le/h/a/c/k0/a;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    .line 19
    iget-object p1, p0, Le/h/a/c/k0/a;->d:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->setUseController(Z)V

    .line 20
    iget-object p1, p0, Le/h/a/c/k0/a;->d:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setControllerAutoShow(Z)V

    .line 21
    iget-object p1, p0, Le/h/a/c/k0/a;->d:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v0, p0, Le/h/a/c/k0/a;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Le/m/a/c/q0;)V

    .line 22
    new-instance p1, Le/h/a/c/k0/a$a;

    invoke-direct {p1, p0}, Le/h/a/c/k0/a$a;-><init>(Le/h/a/c/k0/a;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$t;)V

    .line 23
    new-instance p1, Le/h/a/c/k0/a$b;

    invoke-direct {p1, p0}, Le/h/a/c/k0/a$b;-><init>(Le/h/a/c/k0/a;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$q;)V

    .line 24
    iget-object p1, p0, Le/h/a/c/k0/a;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    new-instance v0, Le/h/a/c/k0/a$c;

    invoke-direct {v0, p0}, Le/h/a/c/k0/a$c;-><init>(Le/h/a/c/k0/a;)V

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public f()V
    .locals 10

    .line 1
    iget-object v0, p0, Le/h/a/c/k0/a;->d:Lcom/google/android/exoplayer2/ui/PlayerView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v0

    move-object v5, v2

    move v6, v3

    :goto_0
    if-gt v4, v1, :cond_5

    sub-int v7, v4, v0

    .line 4
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/h/a/c/r0/e;

    if-eqz v7, :cond_4

    .line 6
    iget-boolean v8, v7, Le/h/a/c/r0/e;->n:Z

    if-nez v8, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 8
    iget-object v9, v7, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v9, v8}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 9
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    goto :goto_1

    :cond_3
    move v8, v3

    :goto_1
    if-le v8, v6, :cond_4

    move-object v5, v7

    move v6, v8

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    if-nez v5, :cond_7

    .line 10
    iget-object v0, p0, Le/h/a/c/k0/a;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_6

    .line 11
    invoke-virtual {v0}, Le/m/a/c/t;->stop()V

    .line 12
    :cond_6
    iput-object v2, p0, Le/h/a/c/k0/a;->c:Le/h/a/c/r0/e;

    .line 13
    invoke-virtual {p0}, Le/h/a/c/k0/a;->g()V

    return-void

    .line 14
    :cond_7
    iget-object v0, p0, Le/h/a/c/k0/a;->c:Le/h/a/c/r0/e;

    if-eqz v0, :cond_c

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    iget-object v1, v5, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 15
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 16
    iget-object v1, p0, Le/h/a/c/k0/a;->c:Le/h/a/c/r0/e;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 17
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_3

    :cond_8
    move v0, v3

    .line 18
    :goto_3
    iget-object v1, p0, Le/h/a/c/k0/a;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v1, :cond_b

    const/16 v2, 0x190

    const/4 v4, 0x1

    if-lt v0, v2, :cond_9

    move v0, v4

    goto :goto_4

    :cond_9
    move v0, v3

    :goto_4
    if-eqz v0, :cond_a

    .line 19
    iget-object v0, p0, Le/h/a/c/k0/a;->c:Le/h/a/c/r0/e;

    .line 20
    iget-object v0, v0, Le/h/a/c/r0/e;->j:Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;

    invoke-virtual {v0}, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->i()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 21
    iget-object v0, p0, Le/h/a/c/k0/a;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    goto :goto_5

    .line 22
    :cond_a
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    :cond_b
    :goto_5
    return-void

    .line 23
    :cond_c
    invoke-virtual {p0}, Le/h/a/c/k0/a;->g()V

    .line 24
    iget-object v0, p0, Le/h/a/c/k0/a;->d:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v5, v0}, Le/h/a/c/r0/e;->N4(Lcom/google/android/exoplayer2/ui/PlayerView;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 25
    iput-object v5, p0, Le/h/a/c/k0/a;->c:Le/h/a/c/r0/e;

    :cond_d
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/h/a/c/k0/a;->d:Lcom/google/android/exoplayer2/ui/PlayerView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, p0, Le/h/a/c/k0/a;->d:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_6

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 5
    iget-object v0, p0, Le/h/a/c/k0/a;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Le/m/a/c/t;->stop()V

    .line 7
    :cond_2
    iget-object v0, p0, Le/h/a/c/k0/a;->c:Le/h/a/c/r0/e;

    if-eqz v0, :cond_6

    .line 8
    iget-object v1, v0, Le/h/a/c/r0/e;->h:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10
    :cond_3
    iget-object v1, v0, Le/h/a/c/r0/e;->l:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    :cond_4
    iget-object v0, v0, Le/h/a/c/r0/e;->d:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_5
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Le/h/a/c/k0/a;->c:Le/h/a/c/r0/e;

    :cond_6
    return-void
.end method
