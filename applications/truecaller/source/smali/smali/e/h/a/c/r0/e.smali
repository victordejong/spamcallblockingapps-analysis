.class public Le/h/a/c/r0/e;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/widget/LinearLayout;

.field public c:Landroid/widget/LinearLayout;

.field public d:Landroid/widget/FrameLayout;

.field public e:Landroid/widget/ImageView;

.field public f:Landroid/widget/ImageView;

.field public g:Landroid/widget/RelativeLayout;

.field public h:Landroid/widget/FrameLayout;

.field public i:Landroid/widget/RelativeLayout;

.field public j:Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;

.field public k:Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

.field public l:Landroid/widget/ImageView;

.field public m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Le/h/a/c/r0/i;",
            ">;"
        }
    .end annotation
.end field

.field public n:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public N4(Lcom/google/android/exoplayer2/ui/PlayerView;)Z
    .locals 11

    .line 1
    iget-boolean v0, p0, Le/h/a/c/r0/e;->n:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Le/h/a/c/r0/e;->d:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/16 v2, 0x8

    .line 4
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    iget-object v3, p0, Le/h/a/c/r0/e;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 7
    sget v5, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->g:I

    const/4 v6, 0x2

    const-string v7, "l"

    if-ne v5, v6, :cond_3

    .line 8
    iget-object v3, p0, Le/h/a/c/r0/e;->k:Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

    .line 9
    iget-object v3, v3, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->m:Ljava/lang/String;

    .line 10
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11
    iget-object v3, p0, Le/h/a/c/r0/e;->e:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    const v5, 0x3fe147ae    # 1.76f

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 12
    iget-object v5, p0, Le/h/a/c/r0/e;->e:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    goto :goto_1

    .line 13
    :cond_2
    iget-object v3, p0, Le/h/a/c/r0/e;->f:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 15
    iget-object v5, p0, Le/h/a/c/r0/e;->k:Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

    .line 16
    iget-object v5, v5, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->m:Ljava/lang/String;

    .line 17
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    int-to-float v5, v3

    const/high16 v6, 0x3f100000    # 0.5625f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    goto :goto_1

    :cond_4
    :goto_0
    move v5, v3

    .line 18
    :goto_1
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 20
    iget-object v3, p0, Le/h/a/c/r0/e;->k:Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

    .line 21
    iget-object v3, v3, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->b:Ljava/lang/String;

    .line 22
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 23
    iget-object v3, p0, Le/h/a/c/r0/e;->h:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_5

    .line 24
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 25
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Le/m/a/c/q0;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v5, 0x0

    if-eqz v3, :cond_6

    .line 26
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVolume()F

    move-result v6

    goto :goto_2

    :cond_6
    move v6, v5

    .line 27
    :goto_2
    iget-object v7, p0, Le/h/a/c/r0/e;->j:Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;

    invoke-virtual {v7}, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->i()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_8

    .line 28
    new-instance v7, Landroid/widget/ImageView;

    iget-object v9, p0, Le/h/a/c/r0/e;->a:Landroid/content/Context;

    invoke-direct {v7, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Le/h/a/c/r0/e;->l:Landroid/widget/ImageView;

    .line 29
    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    cmpl-float v2, v6, v5

    const/4 v5, 0x0

    if-lez v2, :cond_7

    .line 30
    iget-object v2, p0, Le/h/a/c/r0/e;->l:Landroid/widget/ImageView;

    iget-object v7, p0, Le/h/a/c/r0/e;->a:Landroid/content/Context;

    .line 31
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lcom/clevertap/android/sdk/R$drawable;->ct_volume_on:I

    .line 32
    sget-object v10, Ln3/k/b/d/h;->a:Ljava/lang/ThreadLocal;

    .line 33
    invoke-virtual {v7, v9, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 34
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 35
    :cond_7
    iget-object v2, p0, Le/h/a/c/r0/e;->l:Landroid/widget/ImageView;

    iget-object v7, p0, Le/h/a/c/r0/e;->a:Landroid/content/Context;

    .line 36
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lcom/clevertap/android/sdk/R$drawable;->ct_volume_off:I

    .line 37
    sget-object v10, Ln3/k/b/d/h;->a:Ljava/lang/ThreadLocal;

    .line 38
    invoke-virtual {v7, v9, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 39
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    const/high16 v2, 0x41f00000    # 30.0f

    .line 40
    invoke-static {v8, v2, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    .line 41
    invoke-static {v8, v2, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 42
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v5, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x40800000    # 4.0f

    .line 43
    invoke-static {v8, v2, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    const/high16 v5, 0x40000000    # 2.0f

    .line 44
    invoke-static {v8, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    .line 45
    invoke-virtual {v7, v1, v2, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const v2, 0x800005

    .line 46
    iput v2, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 47
    iget-object v2, p0, Le/h/a/c/r0/e;->l:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object v2, p0, Le/h/a/c/r0/e;->l:Landroid/widget/ImageView;

    new-instance v4, Le/h/a/c/r0/e$a;

    invoke-direct {v4, p0, v3}, Le/h/a/c/r0/e$a;-><init>(Le/h/a/c/r0/e;Lcom/google/android/exoplayer2/SimpleExoPlayer;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v2, p0, Le/h/a/c/r0/e;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 50
    :cond_8
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 51
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setShowBuffering(I)V

    .line 52
    new-instance v0, Le/m/a/c/p1/p$a;

    iget-object v2, p0, Le/h/a/c/r0/e;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Le/m/a/c/p1/p$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Le/m/a/c/p1/p$a;->a()Le/m/a/c/p1/p;

    move-result-object v0

    .line 53
    new-instance v2, Le/m/a/c/p1/r;

    iget-object v4, p0, Le/h/a/c/r0/e;->a:Landroid/content/Context;

    .line 54
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Le/m/a/c/q1/d0;->q(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5, v0}, Le/m/a/c/p1/r;-><init>(Landroid/content/Context;Ljava/lang/String;Le/m/a/c/p1/f0;)V

    .line 55
    iget-object v0, p0, Le/h/a/c/r0/e;->j:Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;

    .line 56
    iget-object v0, v0, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->g:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 57
    new-instance v4, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    invoke-direct {v4, v2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Le/m/a/c/p1/l$a;)V

    .line 58
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object v0

    if-eqz v3, :cond_a

    .line 59
    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Le/m/a/c/l1/p;)V

    .line 60
    iget-object v0, p0, Le/h/a/c/r0/e;->j:Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;

    invoke-virtual {v0}, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 61
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->showController()V

    .line 62
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 63
    invoke-virtual {v3, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    goto :goto_4

    .line 64
    :cond_9
    iget-object p1, p0, Le/h/a/c/r0/e;->j:Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;

    invoke-virtual {p1}, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->i()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 65
    invoke-virtual {v3, v8}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 66
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    :cond_a
    :goto_4
    return v8
.end method

.method public O4(J)Ljava/lang/String;
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sub-long/2addr v0, p1

    const-wide/16 v4, 0x3c

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    const-string p1, "Just Now"

    return-object p1

    :cond_0
    const-wide/16 v7, 0xdd4

    if-lez v6, :cond_1

    cmp-long v6, v0, v7

    if-gez v6, :cond_1

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " mins ago"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    cmp-long v4, v0, v7

    if-lez v4, :cond_3

    const-wide/32 v4, 0x13e0c

    cmp-long v4, v0, v4

    if-gez v4, :cond_3

    const-wide/16 p1, 0xe10

    .line 3
    div-long/2addr v0, p1

    const-wide/16 p1, 0x1

    cmp-long p1, v0, p1

    if-lez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " hours ago"

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " hour ago"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-wide/32 v4, 0x15180

    cmp-long v4, v0, v4

    if-lez v4, :cond_4

    const-wide/32 v4, 0x2a300

    cmp-long v0, v0, v4

    if-gez v0, :cond_4

    const-string p1, "Yesterday"

    return-object p1

    .line 4
    :cond_4
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v1, Ljava/util/Date;

    mul-long/2addr p1, v2

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public P4(Lcom/clevertap/android/sdk/inbox/CTInboxMessage;Le/h/a/c/r0/i;I)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Le/h/a/c/r0/e;->a:Landroid/content/Context;

    .line 2
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Le/h/a/c/r0/e;->m:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object p1, p0, Le/h/a/c/r0/e;->k:Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

    .line 4
    iget-object p1, p1, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->j:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;

    iput-object p1, p0, Le/h/a/c/r0/e;->j:Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;

    .line 6
    invoke-virtual {p1}, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->f()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Le/h/a/c/r0/e;->j:Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;

    invoke-virtual {p1}, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p2, 0x1

    :cond_1
    iput-boolean p2, p0, Le/h/a/c/r0/e;->n:Z

    return-void
.end method

.method public Q4()Le/h/a/c/r0/i;
    .locals 1

    .line 1
    iget-object v0, p0, Le/h/a/c/r0/e;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/h/a/c/r0/i;

    return-object v0
.end method

.method public R4(Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 4

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 2
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/high16 v3, 0x40400000    # 3.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 5
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, 0x0

    invoke-direct {p1, v1, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 7
    invoke-virtual {p3, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public S4(Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 4

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 2
    invoke-virtual {p3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 3
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x0

    invoke-direct {p1, v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 6
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 8
    invoke-virtual {p3, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public T4([Landroid/widget/ImageView;ILandroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 1
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v2, p1, v1

    .line 2
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    aget-object v2, p1, v1

    .line 4
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/clevertap/android/sdk/R$drawable;->ct_unselected_dot:I

    const/4 v5, 0x0

    .line 5
    sget-object v6, Ln3/k/b/d/h;->a:Ljava/lang/ThreadLocal;

    .line 6
    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 7
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x8

    const/4 v4, 0x4

    const/4 v5, 0x6

    .line 9
    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/16 v3, 0x11

    .line 10
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 11
    invoke-virtual {p4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v3, p2, :cond_0

    .line 12
    aget-object v3, p1, v1

    invoke-virtual {p4, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
