.class public Le/h/a/c/q0/v;
.super Le/h/a/c/q0/e;
.source "SourceFile"


# static fields
.field public static s:J


# instance fields
.field public h:Z

.field public i:Landroid/app/Dialog;

.field public j:Landroid/widget/ImageView;

.field public k:Lcom/clevertap/android/sdk/gif/GifImageView;

.field public l:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field public m:Lcom/google/android/exoplayer2/ui/PlayerView;

.field public n:Landroid/widget/RelativeLayout;

.field public o:Landroid/widget/FrameLayout;

.field public p:Landroid/view/ViewGroup$LayoutParams;

.field public q:Landroid/view/ViewGroup$LayoutParams;

.field public r:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/h/a/c/q0/e;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/h/a/c/q0/v;->h:Z

    return-void
.end method


# virtual methods
.method public OA()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/h/a/c/q0/v;->k:Lcom/clevertap/android/sdk/gif/GifImageView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/clevertap/android/sdk/gif/GifImageView;->d()V

    .line 3
    :cond_0
    iget-object v0, p0, Le/h/a/c/q0/v;->l:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Le/m/a/c/t;->stop()V

    .line 5
    iget-object v0, p0, Le/h/a/c/q0/v;->l:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Le/h/a/c/q0/v;->l:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    :cond_1
    return-void
.end method

.method public final eB()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/h/a/c/q0/v;->m:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Le/h/a/c/q0/v;->m:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Le/h/a/c/q0/v;->m:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v1, p0, Le/h/a/c/q0/v;->q:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    iget-object v0, p0, Le/h/a/c/q0/v;->o:Landroid/widget/FrameLayout;

    sget v1, Lcom/clevertap/android/sdk/R$id;->video_frame:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Le/h/a/c/q0/v;->m:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Le/h/a/c/q0/v;->j:Landroid/widget/ImageView;

    iget-object v2, p0, Le/h/a/c/q0/v;->r:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object v0, p0, Le/h/a/c/q0/v;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Le/h/a/c/q0/v;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Le/h/a/c/q0/v;->o:Landroid/widget/FrameLayout;

    iget-object v1, p0, Le/h/a/c/q0/v;->p:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object v0, p0, Le/h/a/c/q0/v;->n:Landroid/widget/RelativeLayout;

    sget v1, Lcom/clevertap/android/sdk/R$id;->interstitial_relative_layout:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Le/h/a/c/q0/v;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Le/h/a/c/q0/v;->h:Z

    .line 9
    iget-object v0, p0, Le/h/a/c/q0/v;->i:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 10
    iget-object v0, p0, Le/h/a/c/q0/v;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Le/h/a/c/q0/a;->c:Landroid/content/Context;

    sget v2, Lcom/clevertap/android/sdk/R$drawable;->ct_ic_fullscreen_expand:I

    .line 11
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 12
    invoke-static {v1, v2}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final fB()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/h/a/c/q0/v;->m:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 2
    iget-object v0, p0, Le/h/a/c/q0/v;->m:Lcom/google/android/exoplayer2/ui/PlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Le/h/a/c/q0/v;->m:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v1, p0, Le/h/a/c/q0/v;->l:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Le/m/a/c/q0;)V

    .line 4
    iget-object v0, p0, Le/h/a/c/q0/v;->l:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public final gB()V
    .locals 10

    .line 1
    iget-object v0, p0, Le/h/a/c/q0/v;->n:Landroid/widget/RelativeLayout;

    sget v1, Lcom/clevertap/android/sdk/R$id;->video_frame:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Le/h/a/c/q0/v;->o:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v2, p0, Le/h/a/c/q0/a;->c:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Le/h/a/c/q0/v;->m:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 4
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Le/h/a/c/q0/a;->c:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Le/h/a/c/q0/v;->j:Landroid/widget/ImageView;

    .line 5
    iget-object v2, p0, Le/h/a/c/q0/a;->c:Landroid/content/Context;

    .line 6
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/clevertap/android/sdk/R$drawable;->ct_ic_fullscreen_expand:I

    .line 7
    sget-object v4, Ln3/k/b/d/h;->a:Ljava/lang/ThreadLocal;

    const/4 v4, 0x0

    .line 8
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 9
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    iget-object v0, p0, Le/h/a/c/q0/v;->j:Landroid/widget/ImageView;

    new-instance v2, Le/h/a/c/q0/v$d;

    invoke-direct {v2, p0}, Le/h/a/c/q0/v$d;-><init>(Le/h/a/c/q0/v;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 12
    iget-boolean v0, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->u:Z

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x40800000    # 4.0f

    const v5, 0x800005

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p0}, Le/h/a/c/q0/b;->VA()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x43cc0000    # 408.0f

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v6, v0, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    const/high16 v7, 0x43650000    # 229.0f

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    .line 16
    iget-object v8, p0, Le/h/a/c/q0/v;->m:Lcom/google/android/exoplayer2/ui/PlayerView;

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v0, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-static {v6, v7, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    .line 19
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v0, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 20
    iput v5, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v6, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v6, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 23
    invoke-virtual {v8, v1, v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 24
    iget-object v0, p0, Le/h/a/c/q0/v;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x43700000    # 240.0f

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v6, v0, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    const/high16 v7, 0x43060000    # 134.0f

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    .line 27
    iget-object v8, p0, Le/h/a/c/q0/v;->m:Lcom/google/android/exoplayer2/ui/PlayerView;

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v0, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v6, v7, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    .line 30
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v0, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 31
    iput v5, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v6, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v6, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 34
    invoke-virtual {v8, v1, v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 35
    iget-object v0, p0, Le/h/a/c/q0/v;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    :goto_0
    iget-object v0, p0, Le/h/a/c/q0/v;->m:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/ui/PlayerView;->setShowBuffering(I)V

    .line 37
    iget-object v0, p0, Le/h/a/c/q0/v;->m:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/ui/PlayerView;->setUseArtwork(Z)V

    .line 38
    iget-object v0, p0, Le/h/a/c/q0/v;->m:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setControllerAutoShow(Z)V

    .line 39
    iget-object v0, p0, Le/h/a/c/q0/v;->o:Landroid/widget/FrameLayout;

    iget-object v2, p0, Le/h/a/c/q0/v;->m:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 40
    iget-object v0, p0, Le/h/a/c/q0/v;->o:Landroid/widget/FrameLayout;

    iget-object v2, p0, Le/h/a/c/q0/v;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 41
    iget-object v0, p0, Le/h/a/c/q0/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/clevertap/android/sdk/R$drawable;->ct_audio:I

    .line 42
    invoke-virtual {v0, v2, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 43
    iget-object v2, p0, Le/h/a/c/q0/v;->m:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setDefaultArtwork(Landroid/graphics/drawable/Drawable;)V

    .line 44
    new-instance v0, Le/m/a/c/p1/p$a;

    iget-object v2, p0, Le/h/a/c/q0/a;->c:Landroid/content/Context;

    invoke-direct {v0, v2}, Le/m/a/c/p1/p$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Le/m/a/c/p1/p$a;->a()Le/m/a/c/p1/p;

    move-result-object v0

    .line 45
    new-instance v2, Le/m/a/c/n1/a$d;

    invoke-direct {v2}, Le/m/a/c/n1/a$d;-><init>()V

    .line 46
    new-instance v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object v4, p0, Le/h/a/c/q0/a;->c:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;)V

    .line 47
    new-instance v2, Lcom/google/android/exoplayer2/SimpleExoPlayer$b;

    iget-object v4, p0, Le/h/a/c/q0/a;->c:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer2/SimpleExoPlayer$b;-><init>(Landroid/content/Context;)V

    .line 48
    iget-boolean v4, v2, Lcom/google/android/exoplayer2/SimpleExoPlayer$b;->i:Z

    xor-int/2addr v4, v6

    invoke-static {v4}, Ln3/g0/y;->x(Z)V

    .line 49
    iput-object v3, v2, Lcom/google/android/exoplayer2/SimpleExoPlayer$b;->d:Le/m/a/c/n1/h;

    .line 50
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer$b;->a()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v2

    iput-object v2, p0, Le/h/a/c/q0/v;->l:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 51
    new-instance v2, Le/m/a/c/p1/r;

    iget-object v3, p0, Le/h/a/c/q0/a;->c:Landroid/content/Context;

    .line 52
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Le/m/a/c/q1/d0;->q(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Le/m/a/c/p1/r;-><init>(Landroid/content/Context;Ljava/lang/String;Le/m/a/c/p1/f0;)V

    .line 53
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Le/m/a/c/p1/l$a;)V

    iget-object v2, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 54
    iget-object v2, v2, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->z:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;

    .line 56
    iget-object v1, v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;->d:Ljava/lang/String;

    .line 57
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object v0

    .line 58
    iget-object v1, p0, Le/h/a/c/q0/v;->l:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Le/m/a/c/l1/p;)V

    .line 59
    iget-object v0, p0, Le/h/a/c/q0/v;->l:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setRepeatMode(I)V

    .line 60
    iget-object v0, p0, Le/h/a/c/q0/v;->l:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    sget-wide v1, Le/h/a/c/q0/v;->s:J

    invoke-virtual {v0, v1, v2}, Le/m/a/c/t;->seekTo(J)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .line 1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v0, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 3
    iget-boolean v0, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->u:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Le/h/a/c/q0/b;->VA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget v0, Lcom/clevertap/android/sdk/R$layout;->tab_inapp_interstitial:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_0
    sget v0, Lcom/clevertap/android/sdk/R$layout;->inapp_interstitial:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 7
    :goto_0
    sget p2, Lcom/clevertap/android/sdk/R$id;->inapp_interstitial_frame_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    const v0, 0x30a68

    .line 8
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/clevertap/android/sdk/customviews/CloseImageView;

    .line 9
    sget v2, Lcom/clevertap/android/sdk/R$id;->interstitial_relative_layout:I

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Le/h/a/c/q0/v;->n:Landroid/widget/RelativeLayout;

    .line 10
    iget-object v3, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 11
    iget-object v3, v3, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->d:Ljava/lang/String;

    .line 12
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 13
    iget v2, p0, Le/h/a/c/q0/a;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    iget-object v2, p0, Le/h/a/c/q0/v;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v5, Le/h/a/c/q0/v$b;

    invoke-direct {v5, p0, p2, v0}, Le/h/a/c/q0/v$b;-><init>(Le/h/a/c/q0/v;Landroid/widget/FrameLayout;Lcom/clevertap/android/sdk/customviews/CloseImageView;)V

    .line 15
    invoke-virtual {v2, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1

    .line 16
    :cond_2
    iget-object v2, p0, Le/h/a/c/q0/v;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v5, Le/h/a/c/q0/v$a;

    invoke-direct {v5, p0, p2, v0}, Le/h/a/c/q0/v$a;-><init>(Le/h/a/c/q0/v;Landroid/widget/FrameLayout;Lcom/clevertap/android/sdk/customviews/CloseImageView;)V

    .line 17
    invoke-virtual {v2, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 18
    :goto_1
    iget-object v2, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 19
    iget-object v2, v2, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->z:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/16 v5, 0x8

    if-nez v2, :cond_6

    .line 21
    iget-object v2, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 22
    iget-object v2, v2, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->z:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;

    invoke-virtual {v2}, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 24
    iget-object v2, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 25
    iget-object v6, v2, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->z:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;

    invoke-virtual {v2, v6}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->d(Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 27
    iget-object v2, p0, Le/h/a/c/q0/v;->n:Landroid/widget/RelativeLayout;

    sget v6, Lcom/clevertap/android/sdk/R$id;->backgroundImage:I

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 28
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    iget-object v6, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 30
    iget-object v7, v6, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->z:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;

    invoke-virtual {v6, v7}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->d(Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 32
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 33
    :cond_3
    iget-object v2, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 34
    iget-object v2, v2, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->z:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;

    invoke-virtual {v2}, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 36
    iget-object v2, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 37
    iget-object v6, v2, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->z:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;

    invoke-virtual {v2, v6}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->c(Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;)[B

    move-result-object v2

    if-eqz v2, :cond_6

    .line 39
    iget-object v2, p0, Le/h/a/c/q0/v;->n:Landroid/widget/RelativeLayout;

    sget v6, Lcom/clevertap/android/sdk/R$id;->gifImage:I

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/clevertap/android/sdk/gif/GifImageView;

    iput-object v2, p0, Le/h/a/c/q0/v;->k:Lcom/clevertap/android/sdk/gif/GifImageView;

    .line 40
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    iget-object v2, p0, Le/h/a/c/q0/v;->k:Lcom/clevertap/android/sdk/gif/GifImageView;

    iget-object v6, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 42
    iget-object v7, v6, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->z:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;

    invoke-virtual {v6, v7}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->c(Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;)[B

    move-result-object v6

    .line 44
    invoke-virtual {v2, v6}, Lcom/clevertap/android/sdk/gif/GifImageView;->setBytes([B)V

    .line 45
    iget-object v2, p0, Le/h/a/c/q0/v;->k:Lcom/clevertap/android/sdk/gif/GifImageView;

    .line 46
    iput-boolean v4, v2, Lcom/clevertap/android/sdk/gif/GifImageView;->c:Z

    .line 47
    invoke-virtual {v2}, Lcom/clevertap/android/sdk/gif/GifImageView;->e()V

    goto :goto_2

    .line 48
    :cond_4
    iget-object v2, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 49
    iget-object v2, v2, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->z:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;

    invoke-virtual {v2}, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 51
    new-instance v2, Le/h/a/c/q0/w;

    iget-object v6, p0, Le/h/a/c/q0/a;->c:Landroid/content/Context;

    const v7, 0x103000a

    invoke-direct {v2, p0, v6, v7}, Le/h/a/c/q0/w;-><init>(Le/h/a/c/q0/v;Landroid/content/Context;I)V

    iput-object v2, p0, Le/h/a/c/q0/v;->i:Landroid/app/Dialog;

    .line 52
    invoke-virtual {p0}, Le/h/a/c/q0/v;->gB()V

    .line 53
    invoke-virtual {p0}, Le/h/a/c/q0/v;->fB()V

    goto :goto_2

    .line 54
    :cond_5
    iget-object v2, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 55
    iget-object v2, v2, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->z:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;

    invoke-virtual {v2}, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;->b()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 57
    invoke-virtual {p0}, Le/h/a/c/q0/v;->gB()V

    .line 58
    invoke-virtual {p0}, Le/h/a/c/q0/v;->fB()V

    .line 59
    iget-object v2, p0, Le/h/a/c/q0/v;->j:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    :cond_6
    :goto_2
    iget-object v2, p0, Le/h/a/c/q0/v;->n:Landroid/widget/RelativeLayout;

    sget v6, Lcom/clevertap/android/sdk/R$id;->interstitial_linear_layout:I

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 61
    sget v6, Lcom/clevertap/android/sdk/R$id;->interstitial_button1:I

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 62
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    sget v7, Lcom/clevertap/android/sdk/R$id;->interstitial_button2:I

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 64
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v7, p0, Le/h/a/c/q0/v;->n:Landroid/widget/RelativeLayout;

    sget v8, Lcom/clevertap/android/sdk/R$id;->interstitial_title:I

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 66
    iget-object v8, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 67
    iget-object v8, v8, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->J:Ljava/lang/String;

    .line 68
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v8, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 70
    iget-object v8, v8, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->K:Ljava/lang/String;

    .line 71
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    iget-object v7, p0, Le/h/a/c/q0/v;->n:Landroid/widget/RelativeLayout;

    sget v8, Lcom/clevertap/android/sdk/R$id;->interstitial_message:I

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 73
    iget-object v8, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 74
    iget-object v8, v8, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->A:Ljava/lang/String;

    .line 75
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v8, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 77
    iget-object v8, v8, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->B:Ljava/lang/String;

    .line 78
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    iget-object v7, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 80
    iget-object v7, v7, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->f:Ljava/util/ArrayList;

    .line 81
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v4, :cond_9

    .line 82
    iget p3, p0, Le/h/a/c/q0/a;->d:I

    if-ne p3, v3, :cond_7

    .line 83
    invoke-virtual {v6, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    :cond_7
    if-ne p3, v4, :cond_8

    const/4 p3, 0x4

    .line 84
    invoke-virtual {v6, p3}, Landroid/widget/Button;->setVisibility(I)V

    .line 85
    :cond_8
    :goto_3
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;

    invoke-virtual {p0, v2, p3, v1}, Le/h/a/c/q0/e;->dB(Landroid/widget/Button;Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;I)V

    goto :goto_6

    .line 86
    :cond_9
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    move v2, v1

    .line 87
    :goto_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_b

    if-lt v2, v3, :cond_a

    goto :goto_5

    .line 88
    :cond_a
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;

    .line 89
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 90
    invoke-virtual {p0, v6, v4, v2}, Le/h/a/c/q0/e;->dB(Landroid/widget/Button;Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;I)V

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 91
    :cond_b
    :goto_6
    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x45000000    # -0.001953125f

    invoke-direct {p3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 92
    new-instance p2, Le/h/a/c/q0/v$c;

    invoke-direct {p2, p0}, Le/h/a/c/q0/v$c;-><init>(Le/h/a/c/q0/v;)V

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object p2, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 94
    iget-boolean p2, p2, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->o:Z

    if-nez p2, :cond_c

    .line 95
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    .line 96
    :cond_c
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_7
    return-object p1
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Le/h/a/c/q0/v;->k:Lcom/clevertap/android/sdk/gif/GifImageView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/clevertap/android/sdk/gif/GifImageView;->d()V

    .line 4
    :cond_0
    iget-boolean v0, p0, Le/h/a/c/q0/v;->h:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Le/h/a/c/q0/v;->eB()V

    .line 6
    :cond_1
    iget-object v0, p0, Le/h/a/c/q0/v;->l:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    sput-wide v0, Le/h/a/c/q0/v;->s:J

    .line 8
    iget-object v0, p0, Le/h/a/c/q0/v;->l:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Le/m/a/c/t;->stop()V

    .line 9
    iget-object v0, p0, Le/h/a/c/q0/v;->l:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Le/h/a/c/q0/v;->l:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 3
    iget-object v0, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->z:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Le/h/a/c/q0/v;->l:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_1

    iget-object v0, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 6
    iget-object v0, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->z:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;

    invoke-virtual {v0}, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 8
    iget-object v0, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->z:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;

    invoke-virtual {v0}, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    :cond_0
    invoke-virtual {p0}, Le/h/a/c/q0/v;->gB()V

    .line 11
    invoke-virtual {p0}, Le/h/a/c/q0/v;->fB()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Le/h/a/c/q0/v;->k:Lcom/clevertap/android/sdk/gif/GifImageView;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 4
    iget-object v2, v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->z:Ljava/util/ArrayList;

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;

    invoke-virtual {v1, v2}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->c(Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clevertap/android/sdk/gif/GifImageView;->setBytes([B)V

    .line 6
    iget-object v0, p0, Le/h/a/c/q0/v;->k:Lcom/clevertap/android/sdk/gif/GifImageView;

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lcom/clevertap/android/sdk/gif/GifImageView;->c:Z

    .line 8
    invoke-virtual {v0}, Lcom/clevertap/android/sdk/gif/GifImageView;->e()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2
    iget-object v0, p0, Le/h/a/c/q0/v;->k:Lcom/clevertap/android/sdk/gif/GifImageView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/clevertap/android/sdk/gif/GifImageView;->d()V

    .line 4
    :cond_0
    iget-object v0, p0, Le/h/a/c/q0/v;->l:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Le/m/a/c/t;->stop()V

    .line 6
    iget-object v0, p0, Le/h/a/c/q0/v;->l:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    :cond_1
    return-void
.end method
