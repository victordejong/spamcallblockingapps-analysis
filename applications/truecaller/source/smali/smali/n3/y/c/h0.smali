.class public Ln3/y/c/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ln3/y/b/a/q0/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ln3/y/b/a/q0/e;

    invoke-direct {v0}, Ln3/y/b/a/q0/e;-><init>()V

    .line 2
    monitor-enter v0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    iput v1, v0, Ln3/y/b/a/q0/e;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    .line 5
    sput-object v0, Ln3/y/c/h0;->a:Ln3/y/b/a/q0/i;

    return-void

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0

    throw v1
.end method

.method public static a(Landroidx/media2/exoplayer/external/Format;)Landroid/media/MediaFormat;
    .locals 10

    .line 1
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 2
    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->i:Ljava/lang/String;

    const-string v2, "mime"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {v1}, Ln3/y/b/a/x0/j;->e(Ljava/lang/String;)I

    move-result v3

    const-string v4, "language"

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 5
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->v:I

    const-string v2, "channel-count"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 6
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->w:I

    const-string v2, "sample-rate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 7
    iget-object p0, p0, Landroidx/media2/exoplayer/external/Format;->A:Ljava/lang/String;

    if-eqz p0, :cond_8

    .line 8
    invoke-virtual {v0, v4, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_0
    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    .line 9
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->n:I

    const-string v2, "width"

    invoke-static {v0, v2, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->T0(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 10
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->o:I

    const-string v2, "height"

    invoke-static {v0, v2, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->T0(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 11
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->p:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    const-string v2, "frame-rate"

    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 13
    :cond_1
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->q:I

    const-string v2, "rotation-degrees"

    invoke-static {v0, v2, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->T0(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 14
    iget-object p0, p0, Landroidx/media2/exoplayer/external/Format;->u:Landroidx/media2/exoplayer/external/video/ColorInfo;

    invoke-static {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat;->S0(Landroid/media/MediaFormat;Landroidx/media2/exoplayer/external/video/ColorInfo;)V

    goto :goto_4

    :cond_2
    const/4 v7, 0x3

    if-ne v3, v7, :cond_8

    .line 15
    iget v3, p0, Landroidx/media2/exoplayer/external/Format;->c:I

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-ne v3, v7, :cond_3

    move v7, v5

    goto :goto_0

    :cond_3
    move v7, v8

    :goto_0
    if-ne v3, v5, :cond_4

    move v9, v5

    goto :goto_1

    :cond_4
    move v9, v8

    :goto_1
    if-ne v3, v6, :cond_5

    goto :goto_2

    :cond_5
    move v5, v8

    :goto_2
    const-string v3, "is-autoselect"

    .line 16
    invoke-virtual {v0, v3, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "is-default"

    .line 17
    invoke-virtual {v0, v3, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "is-forced-subtitle"

    .line 18
    invoke-virtual {v0, v3, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 19
    iget-object p0, p0, Landroidx/media2/exoplayer/external/Format;->A:Ljava/lang/String;

    if-nez p0, :cond_6

    const-string p0, "und"

    .line 20
    invoke-virtual {v0, v4, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 21
    :cond_6
    invoke-virtual {v0, v4, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const-string p0, "application/cea-608"

    .line 22
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "text/cea-608"

    .line 23
    invoke-virtual {v0, v2, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const-string p0, "application/cea-708"

    .line 24
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "text/cea-708"

    .line 25
    invoke-virtual {v0, v2, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_4
    return-object v0
.end method
