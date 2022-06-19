.class public Le/m/a/c/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/i0;


# instance fields
.field public final a:Le/m/a/c/p1/o;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:I

.field public final h:Z

.field public final i:J

.field public final j:Z

.field public k:I

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>(Le/m/a/c/p1/o;IIIIIIZIZ)V
    .locals 13

    move-object v0, p0

    move v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v7, 0x0

    const-string v8, "bufferForPlaybackMs"

    const-string v9, "0"

    .line 2
    invoke-static {v4, v7, v8, v9}, Le/m/a/c/y;->i(IILjava/lang/String;Ljava/lang/String;)V

    const-string v10, "bufferForPlaybackAfterRebufferMs"

    .line 3
    invoke-static {v5, v7, v10, v9}, Le/m/a/c/y;->i(IILjava/lang/String;Ljava/lang/String;)V

    const-string v11, "minBufferAudioMs"

    .line 4
    invoke-static {p2, v4, v11, v8}, Le/m/a/c/y;->i(IILjava/lang/String;Ljava/lang/String;)V

    const-string v12, "minBufferVideoMs"

    .line 5
    invoke-static {v2, v4, v12, v8}, Le/m/a/c/y;->i(IILjava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {p2, v5, v11, v10}, Le/m/a/c/y;->i(IILjava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {v2, v5, v12, v10}, Le/m/a/c/y;->i(IILjava/lang/String;Ljava/lang/String;)V

    const-string v8, "maxBufferMs"

    .line 8
    invoke-static {v3, p2, v8, v11}, Le/m/a/c/y;->i(IILjava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {v3, v2, v8, v12}, Le/m/a/c/y;->i(IILjava/lang/String;Ljava/lang/String;)V

    const-string v8, "backBufferDurationMs"

    .line 10
    invoke-static {v6, v7, v8, v9}, Le/m/a/c/y;->i(IILjava/lang/String;Ljava/lang/String;)V

    move-object v7, p1

    .line 11
    iput-object v7, v0, Le/m/a/c/y;->a:Le/m/a/c/p1/o;

    int-to-long v7, v1

    .line 12
    invoke-static {v7, v8}, Le/m/a/c/v;->a(J)J

    move-result-wide v7

    iput-wide v7, v0, Le/m/a/c/y;->b:J

    int-to-long v1, v2

    .line 13
    invoke-static {v1, v2}, Le/m/a/c/v;->a(J)J

    move-result-wide v1

    iput-wide v1, v0, Le/m/a/c/y;->c:J

    int-to-long v1, v3

    .line 14
    invoke-static {v1, v2}, Le/m/a/c/v;->a(J)J

    move-result-wide v1

    iput-wide v1, v0, Le/m/a/c/y;->d:J

    int-to-long v1, v4

    .line 15
    invoke-static {v1, v2}, Le/m/a/c/v;->a(J)J

    move-result-wide v1

    iput-wide v1, v0, Le/m/a/c/y;->e:J

    int-to-long v1, v5

    .line 16
    invoke-static {v1, v2}, Le/m/a/c/v;->a(J)J

    move-result-wide v1

    iput-wide v1, v0, Le/m/a/c/y;->f:J

    move/from16 v1, p7

    .line 17
    iput v1, v0, Le/m/a/c/y;->g:I

    move/from16 v1, p8

    .line 18
    iput-boolean v1, v0, Le/m/a/c/y;->h:Z

    int-to-long v1, v6

    .line 19
    invoke-static {v1, v2}, Le/m/a/c/v;->a(J)J

    move-result-wide v1

    iput-wide v1, v0, Le/m/a/c/y;->i:J

    move/from16 v1, p10

    .line 20
    iput-boolean v1, v0, Le/m/a/c/y;->j:Z

    return-void
.end method

.method public static i(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be less than "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ln3/g0/y;->s(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/m/a/c/y;->j:Z

    return v0
.end method

.method public b(JFZ)Z
    .locals 2

    .line 1
    sget v0, Le/m/a/c/q1/d0;->a:I

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    long-to-double p1, p1

    float-to-double v0, p3

    div-double/2addr p1, v0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    :goto_0
    if-eqz p4, :cond_1

    .line 3
    iget-wide p3, p0, Le/m/a/c/y;->f:J

    goto :goto_1

    :cond_1
    iget-wide p3, p0, Le/m/a/c/y;->e:J

    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_3

    cmp-long p1, p1, p3

    if-gez p1, :cond_3

    .line 4
    iget-boolean p1, p0, Le/m/a/c/y;->h:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Le/m/a/c/y;->a:Le/m/a/c/p1/o;

    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget p2, p1, Le/m/a/c/p1/o;->e:I

    iget p3, p1, Le/m/a/c/p1/o;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/2addr p2, p3

    monitor-exit p1

    .line 7
    iget p1, p0, Le/m/a/c/y;->k:I

    if-lt p2, p1, :cond_2

    goto :goto_2

    :catchall_0
    move-exception p2

    .line 8
    monitor-exit p1

    throw p2

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x1

    :goto_3
    return p1
.end method

.method public c([Le/m/a/c/u0;Lcom/google/android/exoplayer2/source/TrackGroupArray;Le/m/a/c/n1/g;)V
    .locals 4

    const/4 p2, 0x0

    move v0, p2

    .line 1
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 2
    aget-object v1, p1, v0

    invoke-interface {v1}, Le/m/a/c/u0;->p()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, p3, Le/m/a/c/n1/g;->b:[Le/m/a/c/n1/f;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, p2

    .line 4
    :goto_1
    iput-boolean v0, p0, Le/m/a/c/y;->m:Z

    .line 5
    iget v0, p0, Le/m/a/c/y;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    move v0, p2

    move v1, v0

    .line 6
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 7
    iget-object v2, p3, Le/m/a/c/n1/g;->b:[Le/m/a/c/n1/f;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    .line 8
    aget-object v2, p1, v1

    invoke-interface {v2}, Le/m/a/c/u0;->p()I

    move-result v2

    const/high16 v3, 0x20000

    packed-switch v2, :pswitch_data_0

    .line 9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    move v3, p2

    goto :goto_3

    :pswitch_1
    const/high16 v3, 0x1f40000

    goto :goto_3

    :pswitch_2
    const/high16 v3, 0x360000

    goto :goto_3

    :pswitch_3
    const/high16 v3, 0x22c0000

    :goto_3
    :pswitch_4
    add-int/2addr v0, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 10
    :cond_3
    iput v0, p0, Le/m/a/c/y;->k:I

    .line 11
    iget-object p1, p0, Le/m/a/c/y;->a:Le/m/a/c/p1/o;

    invoke-virtual {p1, v0}, Le/m/a/c/p1/o;->b(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Le/m/a/c/y;->j(Z)V

    return-void
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le/m/a/c/y;->i:J

    return-wide v0
.end method

.method public f()Le/m/a/c/p1/d;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/y;->a:Le/m/a/c/p1/o;

    return-object v0
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Le/m/a/c/y;->j(Z)V

    return-void
.end method

.method public h(JF)Z
    .locals 8

    .line 1
    iget-object v0, p0, Le/m/a/c/y;->a:Le/m/a/c/p1/o;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget v1, v0, Le/m/a/c/p1/o;->e:I

    iget v2, v0, Le/m/a/c/p1/o;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/2addr v1, v2

    monitor-exit v0

    .line 4
    iget v0, p0, Le/m/a/c/y;->k:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 5
    :goto_0
    iget-boolean v1, p0, Le/m/a/c/y;->m:Z

    if-eqz v1, :cond_1

    iget-wide v4, p0, Le/m/a/c/y;->c:J

    goto :goto_1

    :cond_1
    iget-wide v4, p0, Le/m/a/c/y;->b:J

    :goto_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v1

    if-lez v1, :cond_3

    .line 6
    sget v6, Le/m/a/c/q1/d0;->a:I

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    long-to-double v4, v4

    float-to-double v6, p3

    mul-double/2addr v4, v6

    .line 7
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 8
    :goto_2
    iget-wide v6, p0, Le/m/a/c/y;->d:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_3
    cmp-long p3, p1, v4

    if-gez p3, :cond_6

    .line 9
    iget-boolean p1, p0, Le/m/a/c/y;->h:Z

    if-nez p1, :cond_5

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    :cond_5
    :goto_3
    iput-boolean v2, p0, Le/m/a/c/y;->l:Z

    goto :goto_4

    .line 10
    :cond_6
    iget-wide v1, p0, Le/m/a/c/y;->d:J

    cmp-long p1, p1, v1

    if-gez p1, :cond_7

    if-eqz v0, :cond_8

    .line 11
    :cond_7
    iput-boolean v3, p0, Le/m/a/c/y;->l:Z

    .line 12
    :cond_8
    :goto_4
    iget-boolean p1, p0, Le/m/a/c/y;->l:Z

    return p1

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0

    throw p1
.end method

.method public final j(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Le/m/a/c/y;->k:I

    .line 2
    iput-boolean v0, p0, Le/m/a/c/y;->l:Z

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Le/m/a/c/y;->a:Le/m/a/c/p1/o;

    .line 4
    monitor-enter p1

    .line 5
    :try_start_0
    iget-boolean v1, p1, Le/m/a/c/p1/o;->a:Z

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p1, v0}, Le/m/a/c/p1/o;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public onPrepared()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Le/m/a/c/y;->j(Z)V

    return-void
.end method
