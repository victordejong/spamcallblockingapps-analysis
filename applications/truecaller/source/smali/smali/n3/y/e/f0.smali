.class public Ln3/y/e/f0;
.super Ln3/y/e/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/e/f0$c;,
        Ln3/y/e/f0$d;
    }
.end annotation


# static fields
.field public static final r:Z


# instance fields
.field public b:Ln3/y/e/f0$c;

.field public c:Ln3/y/e/i0;

.field public d:Ln3/y/e/i0;

.field public e:Ln3/y/e/e0;

.field public f:Ln3/y/e/d0;

.field public g:Ln3/y/e/x;

.field public h:Ln3/y/e/k;

.field public i:Ln3/y/e/w;

.field public j:Ln3/y/e/y$a;

.field public k:I

.field public l:I

.field public m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            "Ln3/y/e/b0;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ln3/y/e/a0;

.field public o:Landroidx/media2/common/SessionPlayer$TrackInfo;

.field public p:Ln3/y/e/z;

.field public final q:Ln3/y/e/i0$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "VideoView"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Ln3/y/e/f0;->r:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Ln3/y/e/y;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance v2, Ln3/y/e/f0$a;

    invoke-direct {v2, p0}, Ln3/y/e/f0$a;-><init>(Ln3/y/e/f0;)V

    iput-object v2, p0, Ln3/y/e/f0;->q:Ln3/y/e/i0$a;

    .line 3
    iput-object v0, p0, Ln3/y/e/f0;->o:Landroidx/media2/common/SessionPlayer$TrackInfo;

    const/4 v3, 0x1

    .line 4
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 5
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 7
    new-instance v4, Ln3/y/e/e0;

    invoke-direct {v4, p1}, Ln3/y/e/e0;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Ln3/y/e/f0;->e:Ln3/y/e/e0;

    .line 8
    new-instance v4, Ln3/y/e/d0;

    invoke-direct {v4, p1}, Ln3/y/e/d0;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Ln3/y/e/f0;->f:Ln3/y/e/d0;

    .line 9
    iget-object v5, p0, Ln3/y/e/f0;->e:Ln3/y/e/e0;

    .line 10
    iput-object v2, v5, Ln3/y/e/e0;->b:Ln3/y/e/i0$a;

    .line 11
    iput-object v2, v4, Ln3/y/e/d0;->b:Ln3/y/e/i0$a;

    .line 12
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 13
    iget-object v2, p0, Ln3/y/e/f0;->f:Ln3/y/e/d0;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 14
    new-instance v2, Ln3/y/e/y$a;

    invoke-direct {v2}, Ln3/y/e/y$a;-><init>()V

    iput-object v2, p0, Ln3/y/e/f0;->j:Ln3/y/e/y$a;

    .line 15
    iput-boolean v3, v2, Ln3/y/e/y$a;->a:Z

    .line 16
    new-instance v2, Ln3/y/e/z;

    invoke-direct {v2, p1}, Ln3/y/e/z;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Ln3/y/e/f0;->p:Ln3/y/e/z;

    .line 17
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 18
    iget-object v2, p0, Ln3/y/e/f0;->p:Ln3/y/e/z;

    iget-object v4, p0, Ln3/y/e/f0;->j:Ln3/y/e/y$a;

    invoke-virtual {p0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    new-instance v2, Ln3/y/e/g0;

    invoke-direct {v2, p0}, Ln3/y/e/g0;-><init>(Ln3/y/e/f0;)V

    .line 20
    new-instance v4, Ln3/y/e/a0;

    invoke-direct {v4, p1, v0, v2}, Ln3/y/e/a0;-><init>(Landroid/content/Context;Ln3/y/e/u;Ln3/y/e/a0$d;)V

    iput-object v4, p0, Ln3/y/e/f0;->n:Ln3/y/e/a0;

    .line 21
    new-instance v2, Ln3/y/e/c;

    invoke-direct {v2, p1}, Ln3/y/e/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Ln3/y/e/a0;->b(Ln3/y/e/a0$e;)V

    .line 22
    iget-object v2, p0, Ln3/y/e/f0;->n:Ln3/y/e/a0;

    new-instance v4, Ln3/y/e/e;

    invoke-direct {v4, p1}, Ln3/y/e/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Ln3/y/e/a0;->b(Ln3/y/e/a0$e;)V

    .line 23
    iget-object v2, p0, Ln3/y/e/f0;->n:Ln3/y/e/a0;

    iget-object v4, p0, Ln3/y/e/f0;->p:Ln3/y/e/z;

    .line 24
    iget-object v5, v2, Ln3/y/e/a0;->m:Ln3/y/e/a0$c;

    if-ne v5, v4, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v5, :cond_1

    .line 25
    check-cast v5, Ln3/y/e/z;

    invoke-virtual {v5, v0}, Ln3/y/e/z;->a(Ln3/y/e/b0$b;)V

    .line 26
    :cond_1
    iput-object v4, v2, Ln3/y/e/a0;->m:Ln3/y/e/a0$c;

    .line 27
    iput-object v0, v2, Ln3/y/e/a0;->i:Landroid/os/Handler;

    if-eqz v4, :cond_3

    .line 28
    new-instance v4, Landroid/os/Handler;

    iget-object v5, v2, Ln3/y/e/a0;->m:Ln3/y/e/a0$c;

    check-cast v5, Ln3/y/e/z;

    .line 29
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    .line 31
    iget-object v6, v2, Ln3/y/e/a0;->j:Landroid/os/Handler$Callback;

    invoke-direct {v4, v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v4, v2, Ln3/y/e/a0;->i:Landroid/os/Handler;

    .line 32
    iget-object v4, v2, Ln3/y/e/a0;->m:Ln3/y/e/a0$c;

    .line 33
    iget-object v2, v2, Ln3/y/e/a0;->f:Ln3/y/e/b0;

    if-nez v2, :cond_2

    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {v2}, Ln3/y/e/b0;->a()Ln3/y/e/b0$b;

    move-result-object v0

    .line 35
    :goto_0
    check-cast v4, Ln3/y/e/z;

    invoke-virtual {v4, v0}, Ln3/y/e/z;->a(Ln3/y/e/b0$b;)V

    .line 36
    :cond_3
    :goto_1
    new-instance v0, Ln3/y/e/w;

    invoke-direct {v0, p1}, Ln3/y/e/w;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ln3/y/e/f0;->i:Ln3/y/e/w;

    const/16 v2, 0x8

    .line 37
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 38
    iget-object v0, p0, Ln3/y/e/f0;->i:Ln3/y/e/w;

    iget-object v4, p0, Ln3/y/e/f0;->j:Ln3/y/e/y$a;

    invoke-virtual {p0, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    new-instance v0, Ln3/y/e/k;

    invoke-direct {v0, p1}, Ln3/y/e/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ln3/y/e/f0;->h:Ln3/y/e/k;

    .line 40
    invoke-virtual {v0, v3}, Ln3/y/e/k;->setAttachedToVideoView(Z)V

    .line 41
    iget-object p1, p0, Ln3/y/e/f0;->h:Ln3/y/e/k;

    iget-object v0, p0, Ln3/y/e/f0;->j:Ln3/y/e/y$a;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    iget-object p1, p0, Ln3/y/e/f0;->e:Ln3/y/e/e0;

    invoke-virtual {p1, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 43
    iget-object p1, p0, Ln3/y/e/f0;->f:Ln3/y/e/d0;

    invoke-virtual {p1, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 44
    iget-object p1, p0, Ln3/y/e/f0;->f:Ln3/y/e/d0;

    iput-object p1, p0, Ln3/y/e/f0;->c:Ln3/y/e/i0;

    .line 45
    iput-object p1, p0, Ln3/y/e/f0;->d:Ln3/y/e/i0;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Ln3/y/e/v;->a:Z

    .line 2
    iget-object v0, p0, Ln3/y/e/f0;->g:Ln3/y/e/x;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Ln3/y/e/f0;->d:Ln3/y/e/i0;

    invoke-interface {p1, v0}, Ln3/y/e/i0;->b(Ln3/y/e/x;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {v0, p1}, Ln3/y/e/x;->o(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    const-wide/16 v0, 0x64

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/y/a/a;

    .line 5
    invoke-interface {p1}, Ln3/y/a/a;->d()I
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/y/e/f0;->g:Ln3/y/e/x;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ln3/y/e/x;->o(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 2
    new-instance v1, Ln3/y/e/f0$b;

    invoke-direct {v1, p0, v0}, Ln3/y/e/f0$b;-><init>(Ln3/y/e/f0;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ln3/k/b/a;->e(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 4
    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public c(Landroidx/media2/common/MediaItem;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    iget v2, p0, Ln3/y/e/f0;->k:I

    if-lez v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v2, p0, Ln3/y/e/f0;->g:Ln3/y/e/x;

    invoke-virtual {v2}, Ln3/y/e/x;->l()Landroidx/media2/common/VideoSize;

    move-result-object v2

    .line 3
    iget v3, v2, Landroidx/media2/common/VideoSize;->b:I

    if-lez v3, :cond_1

    .line 4
    iget v2, v2, Landroidx/media2/common/VideoSize;->a:I

    if-lez v2, :cond_1

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-nez v2, :cond_2

    .line 5
    iget v2, p0, Ln3/y/e/f0;->l:I

    if-lez v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    if-eqz v2, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    const/4 v3, 0x0

    if-eqz v2, :cond_a

    .line 6
    iget-object v2, p0, Ln3/y/e/f0;->i:Ln3/y/e/w;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    invoke-virtual {p1}, Landroidx/media2/common/MediaItem;->e()Landroidx/media2/common/MediaMetadata;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroidx/media2/widget/R$drawable;->media2_widget_ic_default_album_image:I

    .line 10
    sget-object v6, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 11
    invoke-static {v4, v5}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz p1, :cond_4

    const-string v5, "android.media.metadata.ALBUM_ART"

    .line 12
    invoke-virtual {p1, v5}, Landroidx/media2/common/MediaMetadata;->e(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 13
    :try_start_0
    iget-object v6, p1, Landroidx/media2/common/MediaMetadata;->a:Landroid/os/Bundle;

    invoke-virtual {v6, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    :catch_0
    :cond_4
    if-eqz v3, :cond_5

    .line 14
    new-instance v4, Ln3/a0/a/b$b;

    invoke-direct {v4, v3}, Ln3/a0/a/b$b;-><init>(Landroid/graphics/Bitmap;)V

    .line 15
    new-instance v5, Ln3/y/e/h0;

    invoke-direct {v5, p0}, Ln3/y/e/h0;-><init>(Ln3/y/e/f0;)V

    .line 16
    new-instance v6, Ln3/a0/a/c;

    invoke-direct {v6, v4, v5}, Ln3/a0/a/c;-><init>(Ln3/a0/a/b$b;Ln3/a0/a/b$d;)V

    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iget-object v4, v4, Ln3/a0/a/b$b;->a:Landroid/graphics/Bitmap;

    aput-object v4, v0, v1

    .line 17
    invoke-virtual {v6, v5, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 18
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 19
    :cond_5
    iget-object v0, p0, Ln3/y/e/f0;->i:Ln3/y/e/w;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Landroidx/media2/widget/R$color;->media2_widget_music_view_default_background:I

    .line 20
    sget-object v5, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 21
    invoke-static {v1, v3}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 23
    :goto_4
    sget v0, Landroidx/media2/widget/R$string;->mcv2_music_title_unknown_text:I

    .line 24
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_6

    move-object v1, v0

    goto :goto_5

    :cond_6
    const-string v1, "android.media.metadata.TITLE"

    .line 25
    invoke-virtual {p1, v1}, Landroidx/media2/common/MediaMetadata;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    if-nez v1, :cond_7

    goto :goto_6

    :cond_7
    move-object v0, v1

    .line 26
    :goto_6
    sget v1, Landroidx/media2/widget/R$string;->mcv2_music_artist_unknown_text:I

    .line 27
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_8

    move-object p1, v1

    goto :goto_7

    :cond_8
    const-string v2, "android.media.metadata.ARTIST"

    .line 28
    invoke-virtual {p1, v2}, Landroidx/media2/common/MediaMetadata;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_7
    if-nez p1, :cond_9

    goto :goto_8

    :cond_9
    move-object v1, p1

    .line 29
    :goto_8
    iget-object p1, p0, Ln3/y/e/f0;->i:Ln3/y/e/w;

    invoke-virtual {p1, v4}, Ln3/y/e/w;->b(Landroid/graphics/drawable/Drawable;)V

    .line 30
    iget-object p1, p0, Ln3/y/e/f0;->i:Ln3/y/e/w;

    invoke-virtual {p1, v0}, Ln3/y/e/w;->d(Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Ln3/y/e/f0;->i:Ln3/y/e/w;

    invoke-virtual {p1, v1}, Ln3/y/e/w;->c(Ljava/lang/String;)V

    goto :goto_9

    .line 32
    :cond_a
    iget-object p1, p0, Ln3/y/e/f0;->i:Ln3/y/e/w;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 33
    iget-object p1, p0, Ln3/y/e/f0;->i:Ln3/y/e/w;

    invoke-virtual {p1, v3}, Ln3/y/e/w;->b(Landroid/graphics/drawable/Drawable;)V

    .line 34
    iget-object p1, p0, Ln3/y/e/f0;->i:Ln3/y/e/w;

    invoke-virtual {p1, v3}, Ln3/y/e/w;->d(Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Ln3/y/e/f0;->i:Ln3/y/e/w;

    invoke-virtual {p1, v3}, Ln3/y/e/w;->c(Ljava/lang/String;)V

    :goto_9
    return-void
.end method

.method public d(Ln3/y/e/x;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/y/e/x;",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ln3/y/e/f0;->m:Ljava/util/Map;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ln3/y/e/f0;->k:I

    .line 3
    iput v0, p0, Ln3/y/e/f0;->l:I

    .line 4
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v0, v1, :cond_6

    .line 5
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 6
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 7
    iget v3, v3, Landroidx/media2/common/SessionPlayer$TrackInfo;->b:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 8
    iget v1, p0, Ln3/y/e/f0;->k:I

    add-int/2addr v1, v4

    iput v1, p0, Ln3/y/e/f0;->k:I

    goto :goto_2

    :cond_0
    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    .line 9
    iget v1, p0, Ln3/y/e/f0;->l:I

    add-int/2addr v1, v4

    iput v1, p0, Ln3/y/e/f0;->l:I

    goto :goto_2

    :cond_1
    if-ne v3, v2, :cond_5

    .line 10
    iget-object v2, p0, Ln3/y/e/f0;->n:Ln3/y/e/a0;

    invoke-virtual {v1}, Landroidx/media2/common/SessionPlayer$TrackInfo;->e()Landroid/media/MediaFormat;

    move-result-object v3

    .line 11
    iget-object v4, v2, Ln3/y/e/a0;->d:Ljava/lang/Object;

    monitor-enter v4

    .line 12
    :try_start_0
    iget-object v5, v2, Ln3/y/e/a0;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln3/y/e/a0$e;

    .line 13
    invoke-virtual {v6, v3}, Ln3/y/e/a0$e;->b(Landroid/media/MediaFormat;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 14
    invoke-virtual {v6, v3}, Ln3/y/e/a0$e;->a(Landroid/media/MediaFormat;)Ln3/y/e/b0;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 15
    iget-object v3, v2, Ln3/y/e/a0;->e:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    iget-object v5, v2, Ln3/y/e/a0;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 17
    iget-object v5, v2, Ln3/y/e/a0;->g:Landroid/view/accessibility/CaptioningManager;

    iget-object v7, v2, Ln3/y/e/a0;->h:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v5, v7}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 18
    :cond_3
    iget-object v2, v2, Ln3/y/e/a0;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 21
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 22
    :cond_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_5

    .line 23
    iget-object v2, p0, Ln3/y/e/f0;->m:Ljava/util/Map;

    invoke-interface {v2, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 24
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    :cond_6
    invoke-virtual {p1, v2}, Ln3/y/e/x;->i(I)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object p1

    iput-object p1, p0, Ln3/y/e/f0;->o:Landroidx/media2/common/SessionPlayer$TrackInfo;

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "androidx.media2.widget.VideoView"

    return-object v0
.end method

.method public getMediaControlView()Ln3/y/e/k;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/e/f0;->h:Ln3/y/e/k;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/e/f0;->c:Ln3/y/e/i0;

    invoke-interface {v0}, Ln3/y/e/i0;->a()I

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Ln3/y/e/f0;->g:Ln3/y/e/x;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ln3/y/e/x;->a()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Ln3/y/e/f0;->g:Ln3/y/e/x;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ln3/y/e/x;->c()V

    :cond_0
    return-void
.end method

.method public setMediaController(Landroidx/media2/session/MediaController;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public setOnViewTypeChangedListener(Ln3/y/e/f0$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/e/f0;->b:Ln3/y/e/f0$c;

    return-void
.end method

.method public setPlayer(Landroidx/media2/common/SessionPlayer;)V
    .locals 3

    const-string v0, "player must not be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ln3/y/e/f0;->g:Ln3/y/e/x;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ln3/y/e/x;->c()V

    .line 4
    :cond_0
    new-instance v0, Ln3/y/e/x;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ln3/k/b/a;->e(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Ln3/y/e/f0$d;

    invoke-direct {v2, p0}, Ln3/y/e/f0$d;-><init>(Ln3/y/e/f0;)V

    invoke-direct {v0, p1, v1, v2}, Ln3/y/e/x;-><init>(Landroidx/media2/common/SessionPlayer;Ljava/util/concurrent/Executor;Ln3/y/e/x$a;)V

    iput-object v0, p0, Ln3/y/e/f0;->g:Ln3/y/e/x;

    .line 5
    sget-object v0, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Ln3/y/e/f0;->g:Ln3/y/e/x;

    invoke-virtual {v0}, Ln3/y/e/x;->a()V

    .line 8
    :cond_1
    iget-boolean v0, p0, Ln3/y/e/v;->a:Z

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Ln3/y/e/f0;->d:Ln3/y/e/i0;

    iget-object v1, p0, Ln3/y/e/f0;->g:Ln3/y/e/x;

    invoke-interface {v0, v1}, Ln3/y/e/i0;->b(Ln3/y/e/x;)Z

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Ln3/y/e/f0;->b()V

    .line 11
    :goto_0
    iget-object v0, p0, Ln3/y/e/f0;->h:Ln3/y/e/k;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0, p1}, Ln3/y/e/k;->setPlayerInternal(Landroidx/media2/common/SessionPlayer;)V

    :cond_3
    return-void
.end method

.method public setViewType(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/e/f0;->d:Ln3/y/e/i0;

    invoke-interface {v0}, Ln3/y/e/i0;->a()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Ln3/y/e/f0;->e:Ln3/y/e/e0;

    goto :goto_0

    :cond_1
    if-nez p1, :cond_3

    .line 3
    iget-object p1, p0, Ln3/y/e/f0;->f:Ln3/y/e/d0;

    .line 4
    :goto_0
    iput-object p1, p0, Ln3/y/e/f0;->d:Ln3/y/e/i0;

    .line 5
    iget-boolean v0, p0, Ln3/y/e/v;->a:Z

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Ln3/y/e/f0;->g:Ln3/y/e/x;

    invoke-interface {p1, v0}, Ln3/y/e/i0;->b(Ln3/y/e/x;)Z

    :cond_2
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void

    .line 9
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown view type: "

    invoke-static {v1, p1}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
