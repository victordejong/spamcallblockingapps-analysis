.class public final Ln3/y/c/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/c/j0$e;,
        Ln3/y/c/j0$b;,
        Ln3/y/c/j0$d;,
        Ln3/y/c/j0$f;,
        Ln3/y/c/j0$a;,
        Ln3/y/c/j0$c;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ln3/y/c/j0$c;

.field public final c:Landroid/os/Looper;

.field public final d:Landroid/os/Handler;

.field public final e:Ln3/y/b/a/w0/n;

.field public final f:Ljava/lang/Runnable;

.field public g:Ln3/y/b/a/k0;

.field public h:Landroid/os/Handler;

.field public i:Ln3/y/b/a/n0/u;

.field public j:Ln3/y/c/d1;

.field public k:Ln3/y/c/j0$e;

.field public l:Z

.field public m:I

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:I

.field public s:I

.field public t:Ln3/y/c/z0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ln3/y/c/j0$c;Landroid/os/Looper;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ln3/y/c/j0;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Ln3/y/c/j0;->b:Ln3/y/c/j0$c;

    .line 4
    iput-object p3, p0, Ln3/y/c/j0;->c:Landroid/os/Looper;

    .line 5
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Ln3/y/c/j0;->d:Landroid/os/Handler;

    .line 6
    new-instance p1, Ln3/y/b/a/w0/n;

    .line 7
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sget-object v4, Ln3/y/b/a/x0/a;->a:Ln3/y/b/a/x0/a;

    const/4 v1, 0x0

    const/16 v3, 0x7d0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Ln3/y/b/a/w0/n;-><init>(Landroid/content/Context;Landroid/util/SparseArray;ILn3/y/b/a/x0/a;Z)V

    .line 8
    iput-object p1, p0, Ln3/y/c/j0;->e:Ln3/y/b/a/w0/n;

    .line 9
    new-instance p1, Ln3/y/c/j0$f;

    invoke-direct {p1, p0}, Ln3/y/c/j0$f;-><init>(Ln3/y/c/j0;)V

    iput-object p1, p0, Ln3/y/c/j0;->f:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a()Landroidx/media2/common/MediaItem;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/c/j0;->k:Ln3/y/c/j0$e;

    invoke-virtual {v0}, Ln3/y/c/j0$e;->b()Landroidx/media2/common/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public b()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Ln3/y/c/j0;->c()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 3
    iget-object v2, p0, Ln3/y/c/j0;->g:Ln3/y/b/a/k0;

    invoke-virtual {v2}, Ln3/y/b/a/k0;->getCurrentPosition()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()I
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/y/c/j0;->g:Ln3/y/b/a/k0;

    .line 2
    invoke-virtual {v0}, Ln3/y/b/a/k0;->n()V

    .line 3
    iget-object v0, v0, Ln3/y/b/a/k0;->c:Ln3/y/b/a/t;

    .line 4
    iget-object v0, v0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-object v0, v0, Ln3/y/b/a/d0;->f:Ln3/y/b/a/f;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/16 v0, 0x3ed

    return v0

    .line 5
    :cond_1
    iget-boolean v0, p0, Ln3/y/c/j0;->o:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x3ea

    return v0

    .line 6
    :cond_2
    iget-object v0, p0, Ln3/y/c/j0;->g:Ln3/y/b/a/k0;

    invoke-virtual {v0}, Ln3/y/b/a/k0;->e()I

    move-result v0

    .line 7
    iget-object v2, p0, Ln3/y/c/j0;->g:Ln3/y/b/a/k0;

    invoke-virtual {v2}, Ln3/y/b/a/k0;->d()Z

    move-result v2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    const/16 v3, 0x3eb

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_4
    if-eqz v2, :cond_5

    const/16 v3, 0x3ec

    :cond_5
    :goto_1
    return v3

    :cond_6
    const/16 v0, 0x3e9

    return v0
.end method

.method public d()Ln3/y/c/y0;
    .locals 8

    .line 1
    iget-object v0, p0, Ln3/y/c/j0;->g:Ln3/y/b/a/k0;

    invoke-virtual {v0}, Ln3/y/b/a/k0;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ln3/y/c/j0;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ln3/y/b/a/c;->a(J)J

    move-result-wide v0

    :goto_0
    move-wide v3, v0

    .line 3
    iget-object v0, p0, Ln3/y/c/j0;->g:Ln3/y/b/a/k0;

    invoke-virtual {v0}, Ln3/y/b/a/k0;->e()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ln3/y/c/j0;->g:Ln3/y/b/a/k0;

    invoke-virtual {v0}, Ln3/y/b/a/k0;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Ln3/y/c/j0;->t:Ln3/y/c/z0;

    invoke-virtual {v0}, Ln3/y/c/z0;->a()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move v7, v0

    .line 5
    new-instance v0, Ln3/y/c/y0;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Ln3/y/c/y0;-><init>(JJF)V

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/c/j0;->j:Ln3/y/c/d1;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/util/SparseArray;

    .line 4
    iget-object v3, v0, Ln3/y/c/d1;->e:Landroid/util/SparseArray;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v0, Ln3/y/c/d1;->f:Landroid/util/SparseArray;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, v0, Ln3/y/c/d1;->g:Landroid/util/SparseArray;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    iget-object v0, v0, Ln3/y/c/d1;->h:Landroid/util/SparseArray;

    const/4 v3, 0x3

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    move v3, v4

    .line 5
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 6
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/y/c/d1$b;

    iget-object v5, v5, Ln3/y/c/d1$b;->b:Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public f(IIF)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_0

    int-to-float p1, p1

    mul-float/2addr p3, p1

    float-to-int p1, p3

    .line 1
    :cond_0
    iget p3, p0, Ln3/y/c/j0;->r:I

    if-ne p3, p1, :cond_1

    iget p3, p0, Ln3/y/c/j0;->s:I

    if-ne p3, p2, :cond_1

    return-void

    .line 2
    :cond_1
    iput p1, p0, Ln3/y/c/j0;->r:I

    .line 3
    iput p2, p0, Ln3/y/c/j0;->s:I

    .line 4
    iget-object p3, p0, Ln3/y/c/j0;->b:Ln3/y/c/j0$c;

    iget-object v0, p0, Ln3/y/c/j0;->k:Ln3/y/c/j0$e;

    invoke-virtual {v0}, Ln3/y/c/j0$e;->b()Landroidx/media2/common/MediaItem;

    move-result-object v0

    check-cast p3, Ln3/y/c/m;

    .line 5
    new-instance v1, Ln3/y/c/x;

    invoke-direct {v1, p3, v0, p1, p2}, Ln3/y/c/x;-><init>(Ln3/y/c/m;Landroidx/media2/common/MediaItem;II)V

    invoke-virtual {p3, v1}, Ln3/y/c/m;->h(Ln3/y/c/m$j;)V

    return-void
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/c/j0;->g:Ln3/y/b/a/k0;

    .line 2
    invoke-virtual {v0}, Ln3/y/b/a/k0;->n()V

    .line 3
    iget-object v0, v0, Ln3/y/b/a/k0;->c:Ln3/y/b/a/t;

    .line 4
    iget-object v0, v0, Ln3/y/b/a/t;->s:Ln3/y/b/a/d0;

    iget-object v0, v0, Ln3/y/b/a/d0;->f:Ln3/y/b/a/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h()V
    .locals 7

    .line 1
    iget-object v0, p0, Ln3/y/c/j0;->k:Ln3/y/c/j0$e;

    invoke-virtual {v0}, Ln3/y/c/j0$e;->b()Landroidx/media2/common/MediaItem;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Ln3/y/c/j0;->n:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 3
    iget-boolean v3, p0, Ln3/y/c/j0;->q:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 4
    iput-boolean v2, p0, Ln3/y/c/j0;->n:Z

    .line 5
    iput-boolean v2, p0, Ln3/y/c/j0;->o:Z

    .line 6
    iget-object v1, p0, Ln3/y/c/j0;->k:Ln3/y/c/j0$e;

    invoke-virtual {v1, v4}, Ln3/y/c/j0$e;->d(Z)V

    .line 7
    iget-object v1, p0, Ln3/y/c/j0;->b:Ln3/y/c/j0$c;

    check-cast v1, Ln3/y/c/m;

    const/16 v2, 0x64

    .line 8
    invoke-static {v1, v0, v2, v4}, Le/d/c/a/a;->t0(Ln3/y/c/m;Landroidx/media2/common/MediaItem;II)V

    .line 9
    iget-object v2, v1, Ln3/y/c/m;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v3, v1, Ln3/y/c/m;->e:Ln3/y/c/m$k;

    if-eqz v3, :cond_0

    iget v5, v3, Ln3/y/c/m$k;->a:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_0

    iget-object v3, v3, Ln3/y/c/m$k;->c:Landroidx/media2/common/MediaItem;

    .line 11
    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, v1, Ln3/y/c/m;->e:Ln3/y/c/m$k;

    iget-boolean v3, v0, Ln3/y/c/m$k;->b:Z

    if-eqz v3, :cond_0

    .line 13
    invoke-virtual {v0, v4}, Ln3/y/c/m$k;->b(I)V

    const/4 v0, 0x0

    .line 14
    iput-object v0, v1, Ln3/y/c/m;->e:Ln3/y/c/m$k;

    .line 15
    invoke-virtual {v1}, Ln3/y/c/m;->l()V

    .line 16
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    if-eqz v3, :cond_2

    .line 17
    iput-boolean v4, p0, Ln3/y/c/j0;->q:Z

    .line 18
    iget-object v0, p0, Ln3/y/c/j0;->b:Ln3/y/c/j0$c;

    check-cast v0, Ln3/y/c/m;

    invoke-virtual {v0}, Ln3/y/c/m;->k()V

    .line 19
    :cond_2
    :goto_0
    iget-boolean v0, p0, Ln3/y/c/j0;->p:Z

    if-eqz v0, :cond_4

    .line 20
    iput-boolean v4, p0, Ln3/y/c/j0;->p:Z

    .line 21
    iget-object v0, p0, Ln3/y/c/j0;->k:Ln3/y/c/j0$e;

    invoke-virtual {v0}, Ln3/y/c/j0$e;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22
    iget-object v0, p0, Ln3/y/c/j0;->b:Ln3/y/c/j0$c;

    .line 23
    invoke-virtual {p0}, Ln3/y/c/j0;->a()Landroidx/media2/common/MediaItem;

    move-result-object v1

    iget-object v2, p0, Ln3/y/c/j0;->e:Ln3/y/b/a/w0/n;

    invoke-virtual {v2}, Ln3/y/b/a/w0/n;->c()J

    move-result-wide v2

    const-wide/16 v5, 0x3e8

    div-long/2addr v2, v5

    long-to-int v2, v2

    .line 24
    check-cast v0, Ln3/y/c/m;

    const/16 v3, 0x2bf

    .line 25
    invoke-static {v0, v1, v3, v2}, Le/d/c/a/a;->t0(Ln3/y/c/m;Landroidx/media2/common/MediaItem;II)V

    .line 26
    :cond_3
    iget-object v0, p0, Ln3/y/c/j0;->b:Ln3/y/c/j0$c;

    invoke-virtual {p0}, Ln3/y/c/j0;->a()Landroidx/media2/common/MediaItem;

    move-result-object v1

    check-cast v0, Ln3/y/c/m;

    const/16 v2, 0x2be

    .line 27
    invoke-static {v0, v1, v2, v4}, Le/d/c/a/a;->t0(Ln3/y/c/m;Landroidx/media2/common/MediaItem;II)V

    :cond_4
    return-void
.end method

.method public i()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Ln3/y/c/j0;->g:Ln3/y/b/a/k0;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v1, v2}, Ln3/y/b/a/k0;->k(Z)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Ln3/y/c/j0;->c()I

    move-result v1

    const/16 v3, 0x3e9

    if-eq v1, v3, :cond_0

    .line 4
    iget-object v1, v0, Ln3/y/c/j0;->b:Ln3/y/c/j0$c;

    invoke-virtual/range {p0 .. p0}, Ln3/y/c/j0;->a()Landroidx/media2/common/MediaItem;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Ln3/y/c/j0;->d()Ln3/y/c/y0;

    move-result-object v4

    check-cast v1, Ln3/y/c/m;

    invoke-virtual {v1, v3, v4}, Ln3/y/c/m;->j(Landroidx/media2/common/MediaItem;Ln3/y/c/y0;)V

    .line 5
    :cond_0
    iget-object v1, v0, Ln3/y/c/j0;->g:Ln3/y/b/a/k0;

    invoke-virtual {v1}, Ln3/y/b/a/k0;->g()V

    .line 6
    iget-object v1, v0, Ln3/y/c/j0;->k:Ln3/y/c/j0$e;

    invoke-virtual {v1}, Ln3/y/c/j0$e;->a()V

    .line 7
    :cond_1
    new-instance v1, Ln3/y/c/j0$a;

    invoke-direct {v1, v0}, Ln3/y/c/j0$a;-><init>(Ln3/y/c/j0;)V

    .line 8
    new-instance v3, Ln3/y/b/a/n0/u;

    iget-object v4, v0, Ln3/y/c/j0;->a:Landroid/content/Context;

    .line 9
    sget-object v5, Ln3/y/b/a/n0/d;->c:Ln3/y/b/a/n0/d;

    .line 10
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 11
    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v5

    .line 12
    sget v6, Ln3/y/b/a/x0/x;->a:I

    const/16 v7, 0x11

    const/4 v8, 0x1

    if-lt v6, v7, :cond_2

    sget-object v6, Ln3/y/b/a/x0/x;->c:Ljava/lang/String;

    const-string v7, "Amazon"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v8

    goto :goto_0

    :cond_2
    move v6, v2

    :goto_0
    if-eqz v6, :cond_3

    .line 13
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "external_surround_sound_enabled"

    invoke-static {v4, v6, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v8, :cond_3

    .line 14
    sget-object v4, Ln3/y/b/a/n0/d;->d:Ln3/y/b/a/n0/d;

    goto :goto_2

    :cond_3
    if-eqz v5, :cond_5

    const-string v4, "android.media.extra.AUDIO_PLUG_STATE"

    .line 15
    invoke-virtual {v5, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    .line 16
    :cond_4
    new-instance v4, Ln3/y/b/a/n0/d;

    const-string v6, "android.media.extra.ENCODINGS"

    .line 17
    invoke-virtual {v5, v6}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v6

    const/16 v7, 0x8

    const-string v9, "android.media.extra.MAX_CHANNEL_COUNT"

    .line 18
    invoke-virtual {v5, v9, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {v4, v6, v5}, Ln3/y/b/a/n0/d;-><init>([II)V

    goto :goto_2

    .line 19
    :cond_5
    :goto_1
    sget-object v4, Ln3/y/b/a/n0/d;->c:Ln3/y/b/a/n0/d;

    :goto_2
    new-array v5, v2, [Ln3/y/b/a/n0/g;

    .line 20
    invoke-direct {v3, v4, v5}, Ln3/y/b/a/n0/u;-><init>(Ln3/y/b/a/n0/d;[Ln3/y/b/a/n0/g;)V

    iput-object v3, v0, Ln3/y/c/j0;->i:Ln3/y/b/a/n0/u;

    .line 21
    new-instance v3, Ln3/y/c/b1;

    invoke-direct {v3, v1}, Ln3/y/c/b1;-><init>(Ln3/y/c/b1$c;)V

    .line 22
    new-instance v4, Ln3/y/c/a1;

    iget-object v5, v0, Ln3/y/c/j0;->a:Landroid/content/Context;

    iget-object v6, v0, Ln3/y/c/j0;->i:Ln3/y/b/a/n0/u;

    invoke-direct {v4, v5, v6, v3}, Ln3/y/c/a1;-><init>(Landroid/content/Context;Ln3/y/b/a/n0/o;Ln3/y/c/b1;)V

    .line 23
    new-instance v5, Ln3/y/c/d1;

    invoke-direct {v5, v3}, Ln3/y/c/d1;-><init>(Ln3/y/c/b1;)V

    iput-object v5, v0, Ln3/y/c/j0;->j:Ln3/y/c/d1;

    .line 24
    new-instance v3, Ln3/y/b/a/k0$b;

    iget-object v5, v0, Ln3/y/c/j0;->a:Landroid/content/Context;

    invoke-direct {v3, v5, v4}, Ln3/y/b/a/k0$b;-><init>(Landroid/content/Context;Ln3/y/c/a1;)V

    iget-object v4, v0, Ln3/y/c/j0;->j:Ln3/y/c/d1;

    .line 25
    iget-object v4, v4, Ln3/y/c/d1;->d:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    .line 26
    iget-boolean v5, v3, Ln3/y/b/a/k0$b;->i:Z

    xor-int/2addr v5, v8

    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 27
    iput-object v4, v3, Ln3/y/b/a/k0$b;->d:Ln3/y/b/a/v0/g;

    .line 28
    iget-object v4, v0, Ln3/y/c/j0;->e:Ln3/y/b/a/w0/n;

    .line 29
    iget-boolean v5, v3, Ln3/y/b/a/k0$b;->i:Z

    xor-int/2addr v5, v8

    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 30
    iput-object v4, v3, Ln3/y/b/a/k0$b;->f:Ln3/y/b/a/w0/d;

    .line 31
    iget-object v4, v0, Ln3/y/c/j0;->c:Landroid/os/Looper;

    .line 32
    iget-boolean v5, v3, Ln3/y/b/a/k0$b;->i:Z

    xor-int/2addr v5, v8

    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 33
    iput-object v4, v3, Ln3/y/b/a/k0$b;->h:Landroid/os/Looper;

    .line 34
    iget-boolean v4, v3, Ln3/y/b/a/k0$b;->i:Z

    xor-int/2addr v4, v8

    invoke-static {v4}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 35
    iput-boolean v8, v3, Ln3/y/b/a/k0$b;->i:Z

    .line 36
    new-instance v4, Ln3/y/b/a/k0;

    iget-object v10, v3, Ln3/y/b/a/k0$b;->a:Landroid/content/Context;

    iget-object v11, v3, Ln3/y/b/a/k0$b;->b:Ln3/y/c/a1;

    iget-object v12, v3, Ln3/y/b/a/k0$b;->d:Ln3/y/b/a/v0/g;

    iget-object v13, v3, Ln3/y/b/a/k0$b;->e:Ln3/y/b/a/d;

    iget-object v14, v3, Ln3/y/b/a/k0$b;->f:Ln3/y/b/a/w0/d;

    iget-object v15, v3, Ln3/y/b/a/k0$b;->g:Ln3/y/b/a/m0/a;

    iget-object v5, v3, Ln3/y/b/a/k0$b;->c:Ln3/y/b/a/x0/a;

    iget-object v3, v3, Ln3/y/b/a/k0$b;->h:Landroid/os/Looper;

    move-object v9, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v3

    invoke-direct/range {v9 .. v17}, Ln3/y/b/a/k0;-><init>(Landroid/content/Context;Ln3/y/c/a1;Ln3/y/b/a/v0/g;Ln3/y/b/a/d;Ln3/y/b/a/w0/d;Ln3/y/b/a/m0/a;Ln3/y/b/a/x0/a;Landroid/os/Looper;)V

    .line 37
    iput-object v4, v0, Ln3/y/c/j0;->g:Ln3/y/b/a/k0;

    .line 38
    new-instance v3, Landroid/os/Handler;

    iget-object v4, v0, Ln3/y/c/j0;->g:Ln3/y/b/a/k0;

    .line 39
    iget-object v4, v4, Ln3/y/b/a/k0;->c:Ln3/y/b/a/t;

    .line 40
    iget-object v4, v4, Ln3/y/b/a/t;->f:Ln3/y/b/a/v;

    .line 41
    iget-object v4, v4, Ln3/y/b/a/v;->h:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 42
    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, v0, Ln3/y/c/j0;->h:Landroid/os/Handler;

    .line 43
    new-instance v3, Ln3/y/c/j0$e;

    iget-object v4, v0, Ln3/y/c/j0;->a:Landroid/content/Context;

    iget-object v5, v0, Ln3/y/c/j0;->g:Ln3/y/b/a/k0;

    iget-object v6, v0, Ln3/y/c/j0;->b:Ln3/y/c/j0$c;

    invoke-direct {v3, v4, v5, v6}, Ln3/y/c/j0$e;-><init>(Landroid/content/Context;Ln3/y/b/a/k0;Ln3/y/c/j0$c;)V

    iput-object v3, v0, Ln3/y/c/j0;->k:Ln3/y/c/j0$e;

    .line 44
    iget-object v3, v0, Ln3/y/c/j0;->g:Ln3/y/b/a/k0;

    .line 45
    invoke-virtual {v3}, Ln3/y/b/a/k0;->n()V

    .line 46
    iget-object v3, v3, Ln3/y/b/a/k0;->c:Ln3/y/b/a/t;

    .line 47
    iget-object v3, v3, Ln3/y/b/a/t;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Ln3/y/b/a/a$a;

    invoke-direct {v4, v1}, Ln3/y/b/a/a$a;-><init>(Ln3/y/b/a/f0$b;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 48
    iget-object v3, v0, Ln3/y/c/j0;->g:Ln3/y/b/a/k0;

    .line 49
    iget-object v4, v3, Ln3/y/b/a/k0;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v5, v3, Ln3/y/b/a/k0;->l:Ln3/y/b/a/m0/a;

    invoke-static {v5}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArraySet;->retainAll(Ljava/util/Collection;)Z

    .line 50
    iget-object v3, v3, Ln3/y/b/a/k0;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v3, v0, Ln3/y/c/j0;->g:Ln3/y/b/a/k0;

    .line 52
    iget-object v3, v3, Ln3/y/b/a/k0;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 53
    iput v2, v0, Ln3/y/c/j0;->r:I

    .line 54
    iput v2, v0, Ln3/y/c/j0;->s:I

    .line 55
    iput-boolean v2, v0, Ln3/y/c/j0;->n:Z

    .line 56
    iput-boolean v2, v0, Ln3/y/c/j0;->o:Z

    .line 57
    iput-boolean v2, v0, Ln3/y/c/j0;->p:Z

    .line 58
    iput-boolean v2, v0, Ln3/y/c/j0;->q:Z

    .line 59
    iput-boolean v2, v0, Ln3/y/c/j0;->l:Z

    .line 60
    iput v2, v0, Ln3/y/c/j0;->m:I

    .line 61
    new-instance v1, Landroid/media/PlaybackParams;

    invoke-direct {v1}, Landroid/media/PlaybackParams;-><init>()V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 62
    invoke-virtual {v1, v3}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    .line 63
    invoke-virtual {v1, v3}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    .line 64
    invoke-virtual {v1, v2}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    .line 65
    new-instance v2, Ln3/y/c/z0;

    invoke-direct {v2, v1}, Ln3/y/c/z0;-><init>(Landroid/media/PlaybackParams;)V

    .line 66
    iput-object v2, v0, Ln3/y/c/j0;->t:Ln3/y/c/z0;

    return-void
.end method
