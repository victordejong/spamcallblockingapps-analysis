.class public Le/m/a/c/r1/k;
.super Le/m/a/c/h1/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/r1/k$b;,
        Le/m/a/c/r1/k$a;
    }
.end annotation


# static fields
.field public static final s1:[I

.field public static t1:Z

.field public static u1:Z


# instance fields
.field public final E0:Landroid/content/Context;

.field public final F0:Le/m/a/c/r1/p;

.field public final G0:Le/m/a/c/r1/s$a;

.field public final H0:J

.field public final I0:I

.field public final J0:Z

.field public final K0:[J

.field public final L0:[J

.field public M0:Le/m/a/c/r1/k$a;

.field public N0:Z

.field public O0:Z

.field public P0:Landroid/view/Surface;

.field public Q0:Landroid/view/Surface;

.field public R0:I

.field public S0:Z

.field public T0:J

.field public U0:J

.field public V0:J

.field public W0:I

.field public X0:I

.field public Y0:I

.field public Z0:J

.field public a1:I

.field public b1:F

.field public c1:Landroid/media/MediaFormat;

.field public d1:I

.field public e1:I

.field public f1:I

.field public g1:F

.field public h1:I

.field public i1:I

.field public j1:I

.field public k1:F

.field public l1:Z

.field public m1:I

.field public n1:Le/m/a/c/r1/k$b;

.field public o1:J

.field public p1:J

.field public q1:I

.field public r1:Le/m/a/c/r1/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Le/m/a/c/r1/k;->s1:[I

    return-void

    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Le/m/a/c/h1/g;JLe/m/a/c/f1/e;ZZLandroid/os/Handler;Le/m/a/c/r1/s;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/m/a/c/h1/g;",
            "J",
            "Le/m/a/c/f1/e<",
            "Le/m/a/c/f1/h;",
            ">;ZZ",
            "Landroid/os/Handler;",
            "Le/m/a/c/r1/s;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v7, p0

    const/4 v1, 0x2

    const/high16 v6, 0x41f00000    # 30.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p7

    .line 1
    invoke-direct/range {v0 .. v6}, Le/m/a/c/h1/f;-><init>(ILe/m/a/c/h1/g;Le/m/a/c/f1/e;ZZF)V

    move-wide v0, p3

    .line 2
    iput-wide v0, v7, Le/m/a/c/r1/k;->H0:J

    move/from16 v0, p10

    .line 3
    iput v0, v7, Le/m/a/c/r1/k;->I0:I

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v7, Le/m/a/c/r1/k;->E0:Landroid/content/Context;

    .line 5
    new-instance v1, Le/m/a/c/r1/p;

    invoke-direct {v1, v0}, Le/m/a/c/r1/p;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Le/m/a/c/r1/k;->F0:Le/m/a/c/r1/p;

    .line 6
    new-instance v0, Le/m/a/c/r1/s$a;

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    invoke-direct {v0, v1, v2}, Le/m/a/c/r1/s$a;-><init>(Landroid/os/Handler;Le/m/a/c/r1/s;)V

    iput-object v0, v7, Le/m/a/c/r1/k;->G0:Le/m/a/c/r1/s$a;

    .line 7
    sget-object v0, Le/m/a/c/q1/d0;->c:Ljava/lang/String;

    const-string v1, "NVIDIA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 8
    iput-boolean v0, v7, Le/m/a/c/r1/k;->J0:Z

    const/16 v0, 0xa

    new-array v1, v0, [J

    .line 9
    iput-object v1, v7, Le/m/a/c/r1/k;->K0:[J

    new-array v0, v0, [J

    .line 10
    iput-object v0, v7, Le/m/a/c/r1/k;->L0:[J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    iput-wide v0, v7, Le/m/a/c/r1/k;->p1:J

    .line 12
    iput-wide v0, v7, Le/m/a/c/r1/k;->o1:J

    .line 13
    iput-wide v0, v7, Le/m/a/c/r1/k;->U0:J

    const/4 v0, -0x1

    .line 14
    iput v0, v7, Le/m/a/c/r1/k;->d1:I

    .line 15
    iput v0, v7, Le/m/a/c/r1/k;->e1:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 16
    iput v0, v7, Le/m/a/c/r1/k;->g1:F

    .line 17
    iput v0, v7, Le/m/a/c/r1/k;->b1:F

    const/4 v0, 0x1

    .line 18
    iput v0, v7, Le/m/a/c/r1/k;->R0:I

    .line 19
    invoke-virtual {p0}, Le/m/a/c/r1/k;->r0()V

    return-void
.end method

.method public static t0(Le/m/a/c/h1/e;Ljava/lang/String;II)I
    .locals 5

    const/4 v0, -0x1

    if-eq p2, v0, :cond_9

    if-ne p3, v0, :cond_0

    goto/16 :goto_5

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move p1, v0

    goto :goto_1

    :sswitch_0
    const-string v1, "video/x-vnd.on2.vp9"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_1
    const-string v1, "video/x-vnd.on2.vp8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v2

    goto :goto_1

    :sswitch_2
    const-string v1, "video/avc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move p1, v3

    goto :goto_1

    :sswitch_3
    const-string v1, "video/mp4v-es"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move p1, v4

    goto :goto_1

    :sswitch_4
    const-string v1, "video/hevc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_5
    const-string v1, "video/3gpp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_0

    return v0

    .line 2
    :pswitch_0
    sget-object p1, Le/m/a/c/q1/d0;->d:Ljava/lang/String;

    const-string v1, "BRAVIA 4K 2015"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Le/m/a/c/q1/d0;->c:Ljava/lang/String;

    const-string v2, "Amazon"

    .line 3
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "KFSOWI"

    .line 4
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "AFTS"

    .line 5
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-boolean p0, p0, Le/m/a/c/h1/e;->f:Z

    if-eqz p0, :cond_7

    goto :goto_2

    :cond_7
    const/16 p0, 0x10

    .line 6
    invoke-static {p2, p0}, Le/m/a/c/q1/d0;->d(II)I

    move-result p1

    invoke-static {p3, p0}, Le/m/a/c/q1/d0;->d(II)I

    move-result p2

    mul-int/2addr p2, p1

    mul-int/2addr p2, p0

    mul-int/2addr p2, p0

    goto :goto_3

    :cond_8
    :goto_2
    return v0

    :pswitch_1
    mul-int/2addr p2, p3

    goto :goto_4

    :pswitch_2
    mul-int/2addr p2, p3

    :goto_3
    move v2, v4

    :goto_4
    mul-int/2addr p2, v3

    mul-int/2addr v2, v4

    .line 7
    div-int/2addr p2, v2

    return p2

    :cond_9
    :goto_5
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static u0(Le/m/a/c/h1/g;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/c/h1/g;",
            "Lcom/google/android/exoplayer2/Format;",
            "ZZ)",
            "Ljava/util/List<",
            "Le/m/a/c/h1/e;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/h1/h$c;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p0, v0, p2, p3}, Le/m/a/c/h1/g;->b(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    .line 4
    sget-object v2, Le/m/a/c/h1/h;->a:Ljava/util/regex/Pattern;

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    new-instance v1, Le/m/a/c/h1/c;

    invoke-direct {v1, p1}, Le/m/a/c/h1/c;-><init>(Lcom/google/android/exoplayer2/Format;)V

    invoke-static {v2, v1}, Le/m/a/c/h1/h;->j(Ljava/util/List;Le/m/a/c/h1/h$g;)V

    const-string v1, "video/dolby-vision"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-static {p1}, Le/m/a/c/h1/h;->c(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_2

    const/16 v0, 0x100

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x200

    if-ne p1, v0, :cond_3

    const-string p1, "video/avc"

    .line 10
    invoke-interface {p0, p1, p2, p3}, Le/m/a/c/h1/g;->b(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 11
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "video/hevc"

    .line 12
    invoke-interface {p0, p1, p2, p3}, Le/m/a/c/h1/g;->b(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 13
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 14
    :cond_3
    :goto_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static v0(Le/m/a/c/h1/e;Lcom/google/android/exoplayer2/Format;)I
    .locals 3

    .line 1
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2
    iget-object p0, p1, Lcom/google/android/exoplayer2/Format;->k:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 3
    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->k:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget p0, p1, Lcom/google/android/exoplayer2/Format;->j:I

    add-int/2addr p0, v1

    return p0

    .line 5
    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->n:I

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->o:I

    invoke-static {p0, v0, v1, p1}, Le/m/a/c/r1/k;->t0(Le/m/a/c/h1/e;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static w0(J)Z
    .locals 2

    const-wide/16 v0, -0x7530

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public A()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-super {p0}, Le/m/a/c/h1/f;->A()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v1, p0, Le/m/a/c/r1/k;->Q0:Landroid/view/Surface;

    if-eqz v1, :cond_1

    .line 3
    iget-object v2, p0, Le/m/a/c/r1/k;->P0:Landroid/view/Surface;

    if-ne v2, v1, :cond_0

    .line 4
    iput-object v0, p0, Le/m/a/c/r1/k;->P0:Landroid/view/Surface;

    .line 5
    :cond_0
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 6
    iput-object v0, p0, Le/m/a/c/r1/k;->Q0:Landroid/view/Surface;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 7
    iget-object v2, p0, Le/m/a/c/r1/k;->Q0:Landroid/view/Surface;

    if-eqz v2, :cond_3

    .line 8
    iget-object v2, p0, Le/m/a/c/r1/k;->P0:Landroid/view/Surface;

    iget-object v3, p0, Le/m/a/c/r1/k;->Q0:Landroid/view/Surface;

    if-ne v2, v3, :cond_2

    .line 9
    iput-object v0, p0, Le/m/a/c/r1/k;->P0:Landroid/view/Surface;

    .line 10
    :cond_2
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 11
    iput-object v0, p0, Le/m/a/c/r1/k;->Q0:Landroid/view/Surface;

    .line 12
    :cond_3
    throw v1
.end method

.method public final A0()V
    .locals 5

    .line 1
    iget v0, p0, Le/m/a/c/r1/k;->h1:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v2, p0, Le/m/a/c/r1/k;->i1:I

    if-eq v2, v1, :cond_1

    .line 2
    :cond_0
    iget-object v1, p0, Le/m/a/c/r1/k;->G0:Le/m/a/c/r1/s$a;

    iget v2, p0, Le/m/a/c/r1/k;->i1:I

    iget v3, p0, Le/m/a/c/r1/k;->j1:I

    iget v4, p0, Le/m/a/c/r1/k;->k1:F

    invoke-virtual {v1, v0, v2, v3, v4}, Le/m/a/c/r1/s$a;->a(IIIF)V

    :cond_1
    return-void
.end method

.method public B()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Le/m/a/c/r1/k;->W0:I

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Le/m/a/c/r1/k;->V0:J

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Le/m/a/c/r1/k;->Z0:J

    return-void
.end method

.method public final B0(JJLcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V
    .locals 7

    .line 1
    iget-object v0, p0, Le/m/a/c/r1/k;->r1:Le/m/a/c/r1/o;

    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    .line 2
    invoke-interface/range {v0 .. v6}, Le/m/a/c/r1/o;->a(JJLcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method

.method public C()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide v0, p0, Le/m/a/c/r1/k;->U0:J

    .line 2
    invoke-virtual {p0}, Le/m/a/c/r1/k;->x0()V

    return-void
.end method

.method public C0(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/c/h1/f;->s:Le/m/a/c/q1/b0;

    invoke-virtual {v0, p1, p2}, Le/m/a/c/q1/b0;->e(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_0

    .line 2
    iput-object v0, p0, Le/m/a/c/h1/f;->x:Lcom/google/android/exoplayer2/Format;

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Le/m/a/c/h1/f;->E:Landroid/media/MediaCodec;

    .line 4
    iget v2, v0, Lcom/google/android/exoplayer2/Format;->n:I

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->o:I

    invoke-virtual {p0, v1, v2, v0}, Le/m/a/c/r1/k;->D0(Landroid/media/MediaCodec;II)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Le/m/a/c/r1/k;->z0()V

    .line 6
    iget-object v0, p0, Le/m/a/c/h1/f;->C0:Le/m/a/c/e1/d;

    iget v1, v0, Le/m/a/c/e1/d;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Le/m/a/c/e1/d;->e:I

    .line 7
    invoke-virtual {p0}, Le/m/a/c/r1/k;->y0()V

    .line 8
    invoke-virtual {p0, p1, p2}, Le/m/a/c/r1/k;->b0(J)V

    return-void
.end method

.method public D([Lcom/google/android/exoplayer2/Format;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Le/m/a/c/r1/k;->p1:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 2
    iput-wide p2, p0, Le/m/a/c/r1/k;->p1:J

    goto :goto_1

    .line 3
    :cond_0
    iget p1, p0, Le/m/a/c/r1/k;->q1:I

    iget-object v0, p0, Le/m/a/c/r1/k;->K0:[J

    array-length v1, v0

    if-ne p1, v1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 4
    aget-wide v1, v0, p1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 5
    iput p1, p0, Le/m/a/c/r1/k;->q1:I

    .line 6
    :goto_0
    iget p1, p0, Le/m/a/c/r1/k;->q1:I

    add-int/lit8 p1, p1, -0x1

    aput-wide p2, v0, p1

    .line 7
    iget-object p2, p0, Le/m/a/c/r1/k;->L0:[J

    iget-wide v0, p0, Le/m/a/c/r1/k;->o1:J

    aput-wide v0, p2, p1

    :goto_1
    return-void
.end method

.method public final D0(Landroid/media/MediaCodec;II)V
    .locals 3

    .line 1
    iput p2, p0, Le/m/a/c/r1/k;->d1:I

    .line 2
    iput p3, p0, Le/m/a/c/r1/k;->e1:I

    .line 3
    iget v0, p0, Le/m/a/c/r1/k;->b1:F

    iput v0, p0, Le/m/a/c/r1/k;->g1:F

    .line 4
    sget v1, Le/m/a/c/q1/d0;->a:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 5
    iget v1, p0, Le/m/a/c/r1/k;->a1:I

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_0

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_2

    .line 6
    :cond_0
    iput p3, p0, Le/m/a/c/r1/k;->d1:I

    .line 7
    iput p2, p0, Le/m/a/c/r1/k;->e1:I

    const/high16 p2, 0x3f800000    # 1.0f

    div-float/2addr p2, v0

    .line 8
    iput p2, p0, Le/m/a/c/r1/k;->g1:F

    goto :goto_0

    .line 9
    :cond_1
    iget p2, p0, Le/m/a/c/r1/k;->a1:I

    iput p2, p0, Le/m/a/c/r1/k;->f1:I

    .line 10
    :cond_2
    :goto_0
    iget p2, p0, Le/m/a/c/r1/k;->R0:I

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method

.method public E0(Landroid/media/MediaCodec;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/m/a/c/r1/k;->z0()V

    const-string v0, "releaseOutputBuffer"

    .line 2
    invoke-static {v0}, Ln3/g0/y;->n(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 4
    invoke-static {}, Ln3/g0/y;->Q()V

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 v1, 0x3e8

    mul-long/2addr p1, v1

    iput-wide p1, p0, Le/m/a/c/r1/k;->Z0:J

    .line 6
    iget-object p1, p0, Le/m/a/c/h1/f;->C0:Le/m/a/c/e1/d;

    iget p2, p1, Le/m/a/c/e1/d;->e:I

    add-int/2addr p2, v0

    iput p2, p1, Le/m/a/c/e1/d;->e:I

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Le/m/a/c/r1/k;->X0:I

    .line 8
    invoke-virtual {p0}, Le/m/a/c/r1/k;->y0()V

    return-void
.end method

.method public F0(Landroid/media/MediaCodec;IJ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/a/c/r1/k;->z0()V

    const-string v0, "releaseOutputBuffer"

    .line 2
    invoke-static {v0}, Ln3/g0/y;->n(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, p2, p3, p4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 4
    invoke-static {}, Ln3/g0/y;->Q()V

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    mul-long/2addr p1, p3

    iput-wide p1, p0, Le/m/a/c/r1/k;->Z0:J

    .line 6
    iget-object p1, p0, Le/m/a/c/h1/f;->C0:Le/m/a/c/e1/d;

    iget p2, p1, Le/m/a/c/e1/d;->e:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Le/m/a/c/e1/d;->e:I

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Le/m/a/c/r1/k;->X0:I

    .line 8
    invoke-virtual {p0}, Le/m/a/c/r1/k;->y0()V

    return-void
.end method

.method public final G0()V
    .locals 4

    .line 1
    iget-wide v0, p0, Le/m/a/c/r1/k;->H0:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Le/m/a/c/r1/k;->H0:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v0, p0, Le/m/a/c/r1/k;->U0:J

    return-void
.end method

.method public final H0(Le/m/a/c/h1/e;)Z
    .locals 2

    .line 1
    sget v0, Le/m/a/c/q1/d0;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Le/m/a/c/r1/k;->l1:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Le/m/a/c/h1/e;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p0, v0}, Le/m/a/c/r1/k;->s0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p1, p1, Le/m/a/c/h1/e;->f:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/m/a/c/r1/k;->E0:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/video/DummySurface;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public I(Landroid/media/MediaCodec;Le/m/a/c/h1/e;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)I
    .locals 2

    const/4 p1, 0x1

    .line 1
    invoke-virtual {p2, p3, p4, p1}, Le/m/a/c/h1/e;->f(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p4, Lcom/google/android/exoplayer2/Format;->n:I

    iget-object v0, p0, Le/m/a/c/r1/k;->M0:Le/m/a/c/r1/k$a;

    iget v1, v0, Le/m/a/c/r1/k$a;->a:I

    if-gt p1, v1, :cond_1

    iget p1, p4, Lcom/google/android/exoplayer2/Format;->o:I

    iget v0, v0, Le/m/a/c/r1/k$a;->b:I

    if-gt p1, v0, :cond_1

    .line 2
    invoke-static {p2, p4}, Le/m/a/c/r1/k;->v0(Le/m/a/c/h1/e;Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    iget-object p2, p0, Le/m/a/c/r1/k;->M0:Le/m/a/c/r1/k$a;

    iget p2, p2, Le/m/a/c/r1/k$a;->c:I

    if-gt p1, p2, :cond_1

    .line 3
    invoke-virtual {p3, p4}, Lcom/google/android/exoplayer2/Format;->r(Lcom/google/android/exoplayer2/Format;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public I0(Landroid/media/MediaCodec;I)V
    .locals 1

    const-string v0, "skipVideoBuffer"

    .line 1
    invoke-static {v0}, Ln3/g0/y;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 3
    invoke-static {}, Ln3/g0/y;->Q()V

    .line 4
    iget-object p1, p0, Le/m/a/c/h1/f;->C0:Le/m/a/c/e1/d;

    iget p2, p1, Le/m/a/c/e1/d;->f:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Le/m/a/c/e1/d;->f:I

    return-void
.end method

.method public J(Le/m/a/c/h1/e;Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;F)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p5

    .line 1
    iget-object v5, v1, Le/m/a/c/h1/e;->c:Ljava/lang/String;

    .line 2
    iget-object v6, v0, Le/m/a/c/u;->g:[Lcom/google/android/exoplayer2/Format;

    .line 3
    iget v7, v3, Lcom/google/android/exoplayer2/Format;->n:I

    .line 4
    iget v8, v3, Lcom/google/android/exoplayer2/Format;->o:I

    .line 5
    invoke-static {v1, v3}, Le/m/a/c/r1/k;->v0(Le/m/a/c/h1/e;Lcom/google/android/exoplayer2/Format;)I

    move-result v9

    .line 6
    array-length v10, v6

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, -0x1

    if-ne v10, v11, :cond_1

    if-eq v9, v13, :cond_0

    .line 7
    iget-object v6, v3, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    iget v10, v3, Lcom/google/android/exoplayer2/Format;->n:I

    iget v14, v3, Lcom/google/android/exoplayer2/Format;->o:I

    .line 8
    invoke-static {v1, v6, v10, v14}, Le/m/a/c/r1/k;->t0(Le/m/a/c/h1/e;Ljava/lang/String;II)I

    move-result v6

    if-eq v6, v13, :cond_0

    int-to-float v9, v9

    const/high16 v10, 0x3fc00000    # 1.5f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    .line 9
    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 10
    :cond_0
    new-instance v6, Le/m/a/c/r1/k$a;

    invoke-direct {v6, v7, v8, v9}, Le/m/a/c/r1/k$a;-><init>(III)V

    move-object/from16 v22, v5

    goto/16 :goto_10

    .line 11
    :cond_1
    array-length v10, v6

    move v14, v12

    move v15, v14

    :goto_0
    if-ge v14, v10, :cond_5

    aget-object v11, v6, v14

    .line 12
    invoke-virtual {v1, v3, v11, v12}, Le/m/a/c/h1/e;->f(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Z)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 13
    iget v12, v11, Lcom/google/android/exoplayer2/Format;->n:I

    move-object/from16 v17, v6

    if-eq v12, v13, :cond_3

    iget v6, v11, Lcom/google/android/exoplayer2/Format;->o:I

    if-ne v6, v13, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v6, 0x1

    :goto_2
    or-int/2addr v15, v6

    .line 14
    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 15
    iget v7, v11, Lcom/google/android/exoplayer2/Format;->o:I

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 16
    invoke-static {v1, v11}, Le/m/a/c/r1/k;->v0(Le/m/a/c/h1/e;Lcom/google/android/exoplayer2/Format;)I

    move-result v8

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v9, v8

    move v8, v7

    move v7, v6

    goto :goto_3

    :cond_4
    move-object/from16 v17, v6

    :goto_3
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v6, v17

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto :goto_0

    :cond_5
    if-eqz v15, :cond_13

    .line 17
    iget v6, v3, Lcom/google/android/exoplayer2/Format;->o:I

    iget v10, v3, Lcom/google/android/exoplayer2/Format;->n:I

    if-le v6, v10, :cond_6

    const/4 v11, 0x1

    goto :goto_4

    :cond_6
    const/4 v11, 0x0

    :goto_4
    if-eqz v11, :cond_7

    move v12, v6

    goto :goto_5

    :cond_7
    move v12, v10

    :goto_5
    if-eqz v11, :cond_8

    move v6, v10

    :cond_8
    int-to-float v10, v6

    int-to-float v13, v12

    div-float/2addr v10, v13

    .line 18
    sget-object v13, Le/m/a/c/r1/k;->s1:[I

    array-length v14, v13

    const/4 v15, 0x0

    :goto_6
    const/16 v17, 0x0

    if-ge v15, v14, :cond_12

    move/from16 v18, v14

    aget v14, v13, v15

    move-object/from16 v19, v13

    int-to-float v13, v14

    mul-float/2addr v13, v10

    float-to-int v13, v13

    if-le v14, v12, :cond_12

    if-gt v13, v6, :cond_9

    goto/16 :goto_d

    :cond_9
    move/from16 v20, v6

    .line 19
    sget v6, Le/m/a/c/q1/d0;->a:I

    move/from16 v21, v10

    const/16 v10, 0x15

    if-lt v6, v10, :cond_e

    if-eqz v11, :cond_a

    move v6, v13

    goto :goto_7

    :cond_a
    move v6, v14

    :goto_7
    if-eqz v11, :cond_b

    goto :goto_8

    :cond_b
    move v14, v13

    .line 20
    :goto_8
    iget-object v10, v1, Le/m/a/c/h1/e;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v10, :cond_c

    goto :goto_9

    .line 21
    :cond_c
    invoke-virtual {v10}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v10

    if-nez v10, :cond_d

    :goto_9
    move-object/from16 v6, v17

    goto :goto_a

    .line 22
    :cond_d
    invoke-static {v10, v6, v14}, Le/m/a/c/h1/e;->a(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;

    move-result-object v17

    goto :goto_9

    .line 23
    :goto_a
    iget v10, v3, Lcom/google/android/exoplayer2/Format;->p:F

    .line 24
    iget v13, v6, Landroid/graphics/Point;->x:I

    iget v14, v6, Landroid/graphics/Point;->y:I

    move-object/from16 v22, v5

    float-to-double v4, v10

    invoke-virtual {v1, v13, v14, v4, v5}, Le/m/a/c/h1/e;->g(IID)Z

    move-result v4

    if-eqz v4, :cond_11

    move-object v4, v6

    goto :goto_e

    :cond_e
    move-object/from16 v22, v5

    const/16 v4, 0x10

    .line 25
    :try_start_0
    invoke-static {v14, v4}, Le/m/a/c/q1/d0;->d(II)I

    move-result v5

    mul-int/2addr v5, v4

    .line 26
    invoke-static {v13, v4}, Le/m/a/c/q1/d0;->d(II)I

    move-result v6

    mul-int/2addr v6, v4

    mul-int v4, v5, v6

    .line 27
    invoke-static {}, Le/m/a/c/h1/h;->i()I

    move-result v10

    if-gt v4, v10, :cond_11

    .line 28
    new-instance v4, Landroid/graphics/Point;

    if-eqz v11, :cond_f

    move v10, v6

    goto :goto_b

    :cond_f
    move v10, v5

    :goto_b
    if-eqz v11, :cond_10

    goto :goto_c

    :cond_10
    move v5, v6

    :goto_c
    invoke-direct {v4, v10, v5}, Landroid/graphics/Point;-><init>(II)V
    :try_end_0
    .catch Le/m/a/c/h1/h$c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_e

    :cond_11
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, p5

    move/from16 v14, v18

    move-object/from16 v13, v19

    move/from16 v6, v20

    move/from16 v10, v21

    move-object/from16 v5, v22

    goto :goto_6

    :cond_12
    :goto_d
    move-object/from16 v22, v5

    :catch_0
    move-object/from16 v4, v17

    :goto_e
    if-eqz v4, :cond_14

    .line 29
    iget v5, v4, Landroid/graphics/Point;->x:I

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 30
    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 31
    iget-object v4, v3, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    .line 32
    invoke-static {v1, v4, v7, v8}, Le/m/a/c/r1/k;->t0(Le/m/a/c/h1/e;Ljava/lang/String;II)I

    move-result v4

    .line 33
    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_f

    :cond_13
    move-object/from16 v22, v5

    .line 34
    :cond_14
    :goto_f
    new-instance v6, Le/m/a/c/r1/k$a;

    invoke-direct {v6, v7, v8, v9}, Le/m/a/c/r1/k$a;-><init>(III)V

    .line 35
    :goto_10
    iput-object v6, v0, Le/m/a/c/r1/k;->M0:Le/m/a/c/r1/k$a;

    .line 36
    iget-boolean v4, v0, Le/m/a/c/r1/k;->J0:Z

    iget v5, v0, Le/m/a/c/r1/k;->m1:I

    .line 37
    new-instance v7, Landroid/media/MediaFormat;

    invoke-direct {v7}, Landroid/media/MediaFormat;-><init>()V

    const-string v8, "mime"

    move-object/from16 v9, v22

    .line 38
    invoke-virtual {v7, v8, v9}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget v8, v3, Lcom/google/android/exoplayer2/Format;->n:I

    const-string v9, "width"

    invoke-virtual {v7, v9, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 40
    iget v8, v3, Lcom/google/android/exoplayer2/Format;->o:I

    const-string v9, "height"

    invoke-virtual {v7, v9, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 41
    iget-object v8, v3, Lcom/google/android/exoplayer2/Format;->k:Ljava/util/List;

    invoke-static {v7, v8}, Ln3/g0/y;->P1(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 42
    iget v8, v3, Lcom/google/android/exoplayer2/Format;->p:F

    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v10, v8, v9

    if-eqz v10, :cond_15

    const-string v10, "frame-rate"

    .line 43
    invoke-virtual {v7, v10, v8}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 44
    :cond_15
    iget v8, v3, Lcom/google/android/exoplayer2/Format;->q:I

    const-string v10, "rotation-degrees"

    invoke-static {v7, v10, v8}, Ln3/g0/y;->f1(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 45
    iget-object v8, v3, Lcom/google/android/exoplayer2/Format;->u:Lcom/google/android/exoplayer2/video/ColorInfo;

    if-eqz v8, :cond_16

    .line 46
    iget v10, v8, Lcom/google/android/exoplayer2/video/ColorInfo;->c:I

    const-string v11, "color-transfer"

    invoke-static {v7, v11, v10}, Ln3/g0/y;->f1(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 47
    iget v10, v8, Lcom/google/android/exoplayer2/video/ColorInfo;->a:I

    const-string v11, "color-standard"

    invoke-static {v7, v11, v10}, Ln3/g0/y;->f1(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 48
    iget v10, v8, Lcom/google/android/exoplayer2/video/ColorInfo;->b:I

    const-string v11, "color-range"

    invoke-static {v7, v11, v10}, Ln3/g0/y;->f1(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 49
    iget-object v8, v8, Lcom/google/android/exoplayer2/video/ColorInfo;->d:[B

    if-eqz v8, :cond_16

    .line 50
    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    const-string v10, "hdr-static-info"

    invoke-virtual {v7, v10, v8}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 51
    :cond_16
    iget-object v8, v3, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    const-string v10, "video/dolby-vision"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 52
    invoke-static/range {p3 .. p3}, Le/m/a/c/h1/h;->c(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 53
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 54
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v8, "profile"

    .line 55
    invoke-static {v7, v8, v3}, Ln3/g0/y;->f1(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 56
    :cond_17
    iget v3, v6, Le/m/a/c/r1/k$a;->a:I

    const-string v8, "max-width"

    invoke-virtual {v7, v8, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 57
    iget v3, v6, Le/m/a/c/r1/k$a;->b:I

    const-string v8, "max-height"

    invoke-virtual {v7, v8, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 58
    iget v3, v6, Le/m/a/c/r1/k$a;->c:I

    const-string v6, "max-input-size"

    invoke-static {v7, v6, v3}, Ln3/g0/y;->f1(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 59
    sget v3, Le/m/a/c/q1/d0;->a:I

    const/16 v6, 0x17

    if-lt v3, v6, :cond_18

    const-string v8, "priority"

    const/4 v10, 0x0

    .line 60
    invoke-virtual {v7, v8, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    move/from16 v8, p5

    cmpl-float v9, v8, v9

    if-eqz v9, :cond_18

    const-string v9, "operating-rate"

    .line 61
    invoke-virtual {v7, v9, v8}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_18
    if-eqz v4, :cond_19

    const-string v4, "no-post-process"

    const/4 v8, 0x1

    .line 62
    invoke-virtual {v7, v4, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "auto-frc"

    const/4 v9, 0x0

    .line 63
    invoke-virtual {v7, v4, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_11

    :cond_19
    const/4 v8, 0x1

    :goto_11
    if-eqz v5, :cond_1a

    const-string v4, "tunneled-playback"

    .line 64
    invoke-virtual {v7, v4, v8}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    const-string v4, "audio-session-id"

    .line 65
    invoke-virtual {v7, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 66
    :cond_1a
    iget-object v4, v0, Le/m/a/c/r1/k;->P0:Landroid/view/Surface;

    if-nez v4, :cond_1c

    .line 67
    invoke-virtual/range {p0 .. p1}, Le/m/a/c/r1/k;->H0(Le/m/a/c/h1/e;)Z

    move-result v4

    invoke-static {v4}, Ln3/g0/y;->x(Z)V

    .line 68
    iget-object v4, v0, Le/m/a/c/r1/k;->Q0:Landroid/view/Surface;

    if-nez v4, :cond_1b

    .line 69
    iget-object v4, v0, Le/m/a/c/r1/k;->E0:Landroid/content/Context;

    iget-boolean v1, v1, Le/m/a/c/h1/e;->f:Z

    invoke-static {v4, v1}, Lcom/google/android/exoplayer2/video/DummySurface;->c(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/video/DummySurface;

    move-result-object v1

    iput-object v1, v0, Le/m/a/c/r1/k;->Q0:Landroid/view/Surface;

    .line 70
    :cond_1b
    iget-object v1, v0, Le/m/a/c/r1/k;->Q0:Landroid/view/Surface;

    iput-object v1, v0, Le/m/a/c/r1/k;->P0:Landroid/view/Surface;

    .line 71
    :cond_1c
    iget-object v1, v0, Le/m/a/c/r1/k;->P0:Landroid/view/Surface;

    move-object/from16 v4, p4

    const/4 v5, 0x0

    invoke-virtual {v2, v7, v1, v4, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    if-lt v3, v6, :cond_1d

    .line 72
    iget-boolean v1, v0, Le/m/a/c/r1/k;->l1:Z

    if-eqz v1, :cond_1d

    .line 73
    new-instance v1, Le/m/a/c/r1/k$b;

    invoke-direct {v1, v0, v2}, Le/m/a/c/r1/k$b;-><init>(Le/m/a/c/r1/k;Landroid/media/MediaCodec;)V

    iput-object v1, v0, Le/m/a/c/r1/k;->n1:Le/m/a/c/r1/k$b;

    :cond_1d
    return-void
.end method

.method public J0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/h1/f;->C0:Le/m/a/c/e1/d;

    iget v1, v0, Le/m/a/c/e1/d;->g:I

    add-int/2addr v1, p1

    iput v1, v0, Le/m/a/c/e1/d;->g:I

    .line 2
    iget v1, p0, Le/m/a/c/r1/k;->W0:I

    add-int/2addr v1, p1

    iput v1, p0, Le/m/a/c/r1/k;->W0:I

    .line 3
    iget v1, p0, Le/m/a/c/r1/k;->X0:I

    add-int/2addr v1, p1

    iput v1, p0, Le/m/a/c/r1/k;->X0:I

    .line 4
    iget p1, v0, Le/m/a/c/e1/d;->h:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Le/m/a/c/e1/d;->h:I

    .line 5
    iget p1, p0, Le/m/a/c/r1/k;->I0:I

    if-lez p1, :cond_0

    iget v0, p0, Le/m/a/c/r1/k;->W0:I

    if-lt v0, p1, :cond_0

    .line 6
    invoke-virtual {p0}, Le/m/a/c/r1/k;->x0()V

    :cond_0
    return-void
.end method

.method public P()Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-super {p0}, Le/m/a/c/h1/f;->P()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iput v0, p0, Le/m/a/c/r1/k;->Y0:I

    return v1

    :catchall_0
    move-exception v1

    iput v0, p0, Le/m/a/c/r1/k;->Y0:I

    .line 3
    throw v1
.end method

.method public R()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/m/a/c/r1/k;->l1:Z

    if-eqz v0, :cond_0

    sget v0, Le/m/a/c/q1/d0;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public S(FLcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)F
    .locals 5

    .line 1
    array-length p2, p3

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v3, p3, v1

    .line 2
    iget v3, v3, Lcom/google/android/exoplayer2/Format;->p:F

    cmpl-float v4, v3, v0

    if-eqz v4, :cond_0

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    cmpl-float p2, v2, v0

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    mul-float v0, v2, p1

    :goto_1
    return v0
.end method

.method public T(Le/m/a/c/h1/g;Lcom/google/android/exoplayer2/Format;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/c/h1/g;",
            "Lcom/google/android/exoplayer2/Format;",
            "Z)",
            "Ljava/util/List<",
            "Le/m/a/c/h1/e;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/h1/h$c;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/m/a/c/r1/k;->l1:Z

    invoke-static {p1, p2, p3, v0}, Le/m/a/c/r1/k;->u0(Le/m/a/c/h1/g;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public U(Le/m/a/c/e1/e;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/m/a/c/r1/k;->O0:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p1, Le/m/a/c/e1/e;->e:Ljava/nio/ByteBuffer;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/4 v5, 0x0

    .line 10
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v6, -0x4b

    if-ne v0, v6, :cond_1

    const/16 v0, 0x3c

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    if-ne v2, v0, :cond_1

    const/4 v0, 0x4

    if-ne v3, v0, :cond_1

    if-nez v4, :cond_1

    .line 11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 12
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 13
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 14
    iget-object p1, p0, Le/m/a/c/h1/f;->E:Landroid/media/MediaCodec;

    .line 15
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "hdr10-plus-info"

    .line 16
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 17
    invoke-virtual {p1, v1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public Y(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    iget-object v1, p0, Le/m/a/c/r1/k;->G0:Le/m/a/c/r1/s$a;

    .line 2
    iget-object v7, v1, Le/m/a/c/r1/s$a;->a:Landroid/os/Handler;

    if-eqz v7, :cond_0

    .line 3
    new-instance v8, Le/m/a/c/r1/d;

    move-object v0, v8

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Le/m/a/c/r1/d;-><init>(Le/m/a/c/r1/s$a;Ljava/lang/String;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Le/m/a/c/r1/k;->s0(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Le/m/a/c/r1/k;->N0:Z

    .line 5
    iget-object p1, p0, Le/m/a/c/h1/f;->N:Le/m/a/c/h1/e;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget p2, Le/m/a/c/q1/d0;->a:I

    const/4 p3, 0x0

    const/16 p4, 0x1d

    if-lt p2, p4, :cond_2

    iget-object p2, p1, Le/m/a/c/h1/e;->b:Ljava/lang/String;

    const-string p4, "video/x-vnd.on2.vp9"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p1}, Le/m/a/c/h1/e;->c()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object p1

    array-length p2, p1

    move p4, p3

    :goto_0
    if-ge p4, p2, :cond_2

    aget-object p5, p1, p4

    .line 9
    iget p5, p5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/16 v0, 0x4000

    if-ne p5, v0, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 10
    :cond_2
    :goto_1
    iput-boolean p3, p0, Le/m/a/c/r1/k;->O0:Z

    return-void
.end method

.method public Z(Le/m/a/c/g0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Le/m/a/c/h1/f;->Z(Le/m/a/c/g0;)V

    .line 2
    iget-object p1, p1, Le/m/a/c/g0;->c:Lcom/google/android/exoplayer2/Format;

    .line 3
    iget-object v0, p0, Le/m/a/c/r1/k;->G0:Le/m/a/c/r1/s$a;

    .line 4
    iget-object v1, v0, Le/m/a/c/r1/s$a;->a:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 5
    new-instance v2, Le/m/a/c/r1/a;

    invoke-direct {v2, v0, p1}, Le/m/a/c/r1/a;-><init>(Le/m/a/c/r1/s$a;Lcom/google/android/exoplayer2/Format;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    :cond_0
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->r:F

    iput v0, p0, Le/m/a/c/r1/k;->b1:F

    .line 7
    iget p1, p1, Lcom/google/android/exoplayer2/Format;->q:I

    iput p1, p0, Le/m/a/c/r1/k;->a1:I

    return-void
.end method

.method public a0(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 6

    .line 1
    iput-object p2, p0, Le/m/a/c/r1/k;->c1:Landroid/media/MediaFormat;

    const-string v0, "crop-right"

    .line 2
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "crop-top"

    const-string v3, "crop-bottom"

    const-string v4, "crop-left"

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 7
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v0, v4

    add-int/2addr v0, v5

    goto :goto_1

    :cond_1
    const-string v0, "width"

    .line 8
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_1
    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 10
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v1, p2

    add-int/2addr v1, v5

    goto :goto_2

    :cond_2
    const-string v1, "height"

    .line 11
    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 12
    :goto_2
    invoke-virtual {p0, p1, v0, v1}, Le/m/a/c/r1/k;->D0(Landroid/media/MediaCodec;II)V

    return-void
.end method

.method public b()Z
    .locals 9

    .line 1
    invoke-super {p0}, Le/m/a/c/h1/f;->b()Z

    move-result v0

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Le/m/a/c/r1/k;->S0:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Le/m/a/c/r1/k;->Q0:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v4, p0, Le/m/a/c/r1/k;->P0:Landroid/view/Surface;

    if-eq v4, v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Le/m/a/c/h1/f;->E:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v0, p0, Le/m/a/c/r1/k;->l1:Z

    if-eqz v0, :cond_2

    .line 4
    :cond_1
    iput-wide v2, p0, Le/m/a/c/r1/k;->U0:J

    return v1

    .line 5
    :cond_2
    iget-wide v4, p0, Le/m/a/c/r1/k;->U0:J

    cmp-long v0, v4, v2

    const/4 v4, 0x0

    if-nez v0, :cond_3

    return v4

    .line 6
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Le/m/a/c/r1/k;->U0:J

    cmp-long v0, v5, v7

    if-gez v0, :cond_4

    return v1

    .line 7
    :cond_4
    iput-wide v2, p0, Le/m/a/c/r1/k;->U0:J

    return v4
.end method

.method public b0(J)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Le/m/a/c/r1/k;->l1:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Le/m/a/c/r1/k;->Y0:I

    sub-int/2addr v0, v1

    iput v0, p0, Le/m/a/c/r1/k;->Y0:I

    .line 3
    :cond_0
    :goto_0
    iget v0, p0, Le/m/a/c/r1/k;->q1:I

    if-eqz v0, :cond_1

    iget-object v2, p0, Le/m/a/c/r1/k;->L0:[J

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    cmp-long v2, p1, v4

    if-ltz v2, :cond_1

    .line 4
    iget-object v2, p0, Le/m/a/c/r1/k;->K0:[J

    aget-wide v4, v2, v3

    iput-wide v4, p0, Le/m/a/c/r1/k;->p1:J

    add-int/lit8 v0, v0, -0x1

    .line 5
    iput v0, p0, Le/m/a/c/r1/k;->q1:I

    .line 6
    invoke-static {v2, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget-object v0, p0, Le/m/a/c/r1/k;->L0:[J

    iget v2, p0, Le/m/a/c/r1/k;->q1:I

    invoke-static {v0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    invoke-virtual {p0}, Le/m/a/c/r1/k;->q0()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c0(Le/m/a/c/e1/e;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Le/m/a/c/r1/k;->l1:Z

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Le/m/a/c/r1/k;->Y0:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/m/a/c/r1/k;->Y0:I

    .line 3
    :cond_0
    iget-wide v0, p1, Le/m/a/c/e1/e;->d:J

    iget-wide v2, p0, Le/m/a/c/r1/k;->o1:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Le/m/a/c/r1/k;->o1:J

    .line 4
    sget v0, Le/m/a/c/q1/d0;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    iget-boolean v0, p0, Le/m/a/c/r1/k;->l1:Z

    if-eqz v0, :cond_1

    .line 5
    iget-wide v0, p1, Le/m/a/c/e1/e;->d:J

    invoke-virtual {p0, v0, v1}, Le/m/a/c/r1/k;->C0(J)V

    :cond_1
    return-void
.end method

.method public e0(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZZLcom/google/android/exoplayer2/Format;)Z
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    move-object/from16 v7, p0

    move-wide/from16 v0, p1

    move-object/from16 v8, p5

    move/from16 v9, p7

    move-wide/from16 v2, p9

    .line 1
    iget-wide v4, v7, Le/m/a/c/r1/k;->T0:J

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v10

    if-nez v4, :cond_0

    .line 2
    iput-wide v0, v7, Le/m/a/c/r1/k;->T0:J

    .line 3
    :cond_0
    iget-wide v4, v7, Le/m/a/c/r1/k;->p1:J

    sub-long v4, v2, v4

    const/4 v12, 0x1

    if-eqz p11, :cond_1

    if-nez p12, :cond_1

    .line 4
    invoke-virtual {v7, v8, v9}, Le/m/a/c/r1/k;->I0(Landroid/media/MediaCodec;I)V

    return v12

    :cond_1
    sub-long v13, v2, v0

    .line 5
    iget-object v6, v7, Le/m/a/c/r1/k;->P0:Landroid/view/Surface;

    iget-object v15, v7, Le/m/a/c/r1/k;->Q0:Landroid/view/Surface;

    const/4 v10, 0x0

    if-ne v6, v15, :cond_3

    .line 6
    invoke-static {v13, v14}, Le/m/a/c/r1/k;->w0(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v7, v8, v9}, Le/m/a/c/r1/k;->I0(Landroid/media/MediaCodec;I)V

    return v12

    :cond_2
    return v10

    .line 8
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    mul-long v16, v16, v18

    .line 9
    iget-wide v10, v7, Le/m/a/c/r1/k;->Z0:J

    sub-long v10, v16, v10

    .line 10
    iget v6, v7, Le/m/a/c/u;->e:I

    const/4 v15, 0x2

    if-ne v6, v15, :cond_4

    move v6, v12

    move-wide/from16 v20, v13

    goto :goto_0

    :cond_4
    move-wide/from16 v20, v13

    const/4 v6, 0x0

    .line 11
    :goto_0
    iget-wide v12, v7, Le/m/a/c/r1/k;->U0:J

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v12, v12, v14

    if-nez v12, :cond_7

    iget-wide v12, v7, Le/m/a/c/r1/k;->p1:J

    cmp-long v12, v0, v12

    if-ltz v12, :cond_7

    iget-boolean v12, v7, Le/m/a/c/r1/k;->S0:Z

    if-eqz v12, :cond_6

    if-eqz v6, :cond_7

    .line 12
    invoke-static/range {v20 .. v21}, Le/m/a/c/r1/k;->w0(J)Z

    move-result v12

    if-eqz v12, :cond_5

    const-wide/32 v12, 0x186a0

    cmp-long v10, v10, v12

    if-lez v10, :cond_5

    const/4 v10, 0x1

    goto :goto_1

    :cond_5
    const/4 v10, 0x0

    :goto_1
    if-eqz v10, :cond_7

    :cond_6
    const/4 v10, 0x1

    goto :goto_2

    :cond_7
    const/4 v10, 0x0

    :goto_2
    const/16 v11, 0x15

    if-eqz v10, :cond_9

    .line 13
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 14
    iget-object v6, v7, Le/m/a/c/r1/k;->c1:Landroid/media/MediaFormat;

    move-object/from16 v0, p0

    move-wide v1, v4

    move-wide v3, v12

    move-object/from16 v5, p13

    invoke-virtual/range {v0 .. v6}, Le/m/a/c/r1/k;->B0(JJLcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V

    .line 15
    sget v0, Le/m/a/c/q1/d0;->a:I

    if-lt v0, v11, :cond_8

    .line 16
    invoke-virtual {v7, v8, v9, v12, v13}, Le/m/a/c/r1/k;->F0(Landroid/media/MediaCodec;IJ)V

    goto :goto_3

    .line 17
    :cond_8
    invoke-virtual {v7, v8, v9}, Le/m/a/c/r1/k;->E0(Landroid/media/MediaCodec;I)V

    :goto_3
    const/4 v0, 0x1

    return v0

    :cond_9
    if-eqz v6, :cond_21

    .line 18
    iget-wide v12, v7, Le/m/a/c/r1/k;->T0:J

    cmp-long v6, v0, v12

    if-nez v6, :cond_a

    goto/16 :goto_11

    :cond_a
    sub-long v16, v16, p3

    sub-long v13, v20, v16

    .line 19
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    mul-long v13, v13, v18

    add-long v13, v13, v16

    .line 20
    iget-object v6, v7, Le/m/a/c/r1/k;->F0:Le/m/a/c/r1/p;

    mul-long v11, v2, v18

    .line 21
    iget-boolean v10, v6, Le/m/a/c/r1/p;->i:Z

    move-wide/from16 v20, v4

    if-eqz v10, :cond_e

    .line 22
    iget-wide v4, v6, Le/m/a/c/r1/p;->f:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_b

    .line 23
    iget-wide v4, v6, Le/m/a/c/r1/p;->l:J

    const-wide/16 v22, 0x1

    add-long v4, v4, v22

    iput-wide v4, v6, Le/m/a/c/r1/p;->l:J

    .line 24
    iget-wide v4, v6, Le/m/a/c/r1/p;->h:J

    iput-wide v4, v6, Le/m/a/c/r1/p;->g:J

    .line 25
    :cond_b
    iget-wide v4, v6, Le/m/a/c/r1/p;->l:J

    const-wide/16 v22, 0x6

    cmp-long v10, v4, v22

    if-ltz v10, :cond_d

    .line 26
    iget-wide v8, v6, Le/m/a/c/r1/p;->k:J

    sub-long v8, v11, v8

    div-long/2addr v8, v4

    .line 27
    iget-wide v4, v6, Le/m/a/c/r1/p;->g:J

    add-long/2addr v4, v8

    .line 28
    invoke-virtual {v6, v4, v5, v13, v14}, Le/m/a/c/r1/p;->a(JJ)Z

    move-result v8

    if-eqz v8, :cond_c

    const/4 v8, 0x0

    .line 29
    iput-boolean v8, v6, Le/m/a/c/r1/p;->i:Z

    goto :goto_4

    :cond_c
    const/4 v8, 0x0

    .line 30
    iget-wide v9, v6, Le/m/a/c/r1/p;->j:J

    add-long/2addr v9, v4

    move-wide/from16 p3, v4

    iget-wide v4, v6, Le/m/a/c/r1/p;->k:J

    sub-long/2addr v9, v4

    move-wide/from16 v4, p3

    goto :goto_5

    :cond_d
    const/4 v8, 0x0

    .line 31
    invoke-virtual {v6, v11, v12, v13, v14}, Le/m/a/c/r1/p;->a(JJ)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 32
    iput-boolean v8, v6, Le/m/a/c/r1/p;->i:Z

    :cond_e
    :goto_4
    move-wide v4, v11

    move-wide v9, v13

    .line 33
    :goto_5
    iget-boolean v8, v6, Le/m/a/c/r1/p;->i:Z

    if-nez v8, :cond_f

    .line 34
    iput-wide v11, v6, Le/m/a/c/r1/p;->k:J

    .line 35
    iput-wide v13, v6, Le/m/a/c/r1/p;->j:J

    const-wide/16 v11, 0x0

    .line 36
    iput-wide v11, v6, Le/m/a/c/r1/p;->l:J

    const/4 v8, 0x1

    .line 37
    iput-boolean v8, v6, Le/m/a/c/r1/p;->i:Z

    .line 38
    :cond_f
    iput-wide v2, v6, Le/m/a/c/r1/p;->f:J

    .line 39
    iput-wide v4, v6, Le/m/a/c/r1/p;->h:J

    .line 40
    iget-object v2, v6, Le/m/a/c/r1/p;->b:Le/m/a/c/r1/p$b;

    if-eqz v2, :cond_14

    iget-wide v3, v6, Le/m/a/c/r1/p;->d:J

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v3, v11

    if-nez v3, :cond_10

    goto :goto_8

    .line 41
    :cond_10
    iget-wide v2, v2, Le/m/a/c/r1/p$b;->a:J

    cmp-long v4, v2, v11

    if-nez v4, :cond_11

    goto :goto_8

    .line 42
    :cond_11
    iget-wide v4, v6, Le/m/a/c/r1/p;->d:J

    sub-long v11, v9, v2

    .line 43
    div-long/2addr v11, v4

    mul-long/2addr v11, v4

    add-long/2addr v11, v2

    cmp-long v2, v9, v11

    if-gtz v2, :cond_12

    sub-long v2, v11, v4

    goto :goto_6

    :cond_12
    add-long/2addr v4, v11

    move-wide v2, v11

    move-wide v11, v4

    :goto_6
    sub-long v4, v11, v9

    sub-long/2addr v9, v2

    cmp-long v4, v4, v9

    if-gez v4, :cond_13

    goto :goto_7

    :cond_13
    move-wide v11, v2

    .line 44
    :goto_7
    iget-wide v2, v6, Le/m/a/c/r1/p;->e:J

    sub-long/2addr v11, v2

    move-wide v9, v11

    :cond_14
    :goto_8
    sub-long v2, v9, v16

    .line 45
    div-long v2, v2, v18

    .line 46
    iget-wide v4, v7, Le/m/a/c/r1/k;->U0:J

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v11

    if-eqz v4, :cond_15

    const/4 v4, 0x1

    goto :goto_9

    :cond_15
    const/4 v4, 0x0

    :goto_9
    const-wide/32 v5, -0x7a120

    cmp-long v5, v2, v5

    if-gez v5, :cond_16

    const/4 v5, 0x1

    goto :goto_a

    :cond_16
    const/4 v5, 0x0

    :goto_a
    if-eqz v5, :cond_17

    if-nez p12, :cond_17

    const/4 v5, 0x1

    goto :goto_b

    :cond_17
    const/4 v5, 0x0

    :goto_b
    if-eqz v5, :cond_1a

    .line 47
    iget-object v5, v7, Le/m/a/c/u;->f:Le/m/a/c/l1/w;

    iget-wide v11, v7, Le/m/a/c/u;->h:J

    sub-long/2addr v0, v11

    invoke-interface {v5, v0, v1}, Le/m/a/c/l1/w;->c(J)I

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x0

    goto :goto_d

    .line 48
    :cond_18
    iget-object v1, v7, Le/m/a/c/h1/f;->C0:Le/m/a/c/e1/d;

    iget v5, v1, Le/m/a/c/e1/d;->i:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v1, Le/m/a/c/e1/d;->i:I

    .line 49
    iget v5, v7, Le/m/a/c/r1/k;->Y0:I

    add-int/2addr v5, v0

    if-eqz v4, :cond_19

    .line 50
    iget v0, v1, Le/m/a/c/e1/d;->f:I

    add-int/2addr v0, v5

    iput v0, v1, Le/m/a/c/e1/d;->f:I

    goto :goto_c

    .line 51
    :cond_19
    invoke-virtual {v7, v5}, Le/m/a/c/r1/k;->J0(I)V

    .line 52
    :goto_c
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/h1/f;->O()Z

    const/4 v0, 0x1

    :goto_d
    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    return v0

    .line 53
    :cond_1a
    invoke-static {v2, v3}, Le/m/a/c/r1/k;->w0(J)Z

    move-result v0

    if-eqz v0, :cond_1b

    if-nez p12, :cond_1b

    const/4 v0, 0x1

    goto :goto_e

    :cond_1b
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_1d

    if-eqz v4, :cond_1c

    move-object/from16 v8, p5

    move/from16 v11, p7

    .line 54
    invoke-virtual {v7, v8, v11}, Le/m/a/c/r1/k;->I0(Landroid/media/MediaCodec;I)V

    const/4 v0, 0x1

    goto :goto_f

    :cond_1c
    move-object/from16 v8, p5

    move/from16 v11, p7

    const-string v0, "dropVideoBuffer"

    .line 55
    invoke-static {v0}, Ln3/g0/y;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 56
    invoke-virtual {v8, v11, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 57
    invoke-static {}, Ln3/g0/y;->Q()V

    const/4 v0, 0x1

    .line 58
    invoke-virtual {v7, v0}, Le/m/a/c/r1/k;->J0(I)V

    :goto_f
    return v0

    :cond_1d
    move-object/from16 v8, p5

    move/from16 v11, p7

    .line 59
    sget v0, Le/m/a/c/q1/d0;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1e

    const-wide/32 v0, 0xc350

    cmp-long v0, v2, v0

    if-gez v0, :cond_20

    .line 60
    iget-object v6, v7, Le/m/a/c/r1/k;->c1:Landroid/media/MediaFormat;

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move-wide v3, v9

    move-object/from16 v5, p13

    invoke-virtual/range {v0 .. v6}, Le/m/a/c/r1/k;->B0(JJLcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V

    .line 61
    invoke-virtual {v7, v8, v11, v9, v10}, Le/m/a/c/r1/k;->F0(Landroid/media/MediaCodec;IJ)V

    const/4 v0, 0x1

    return v0

    :cond_1e
    const-wide/16 v0, 0x7530

    cmp-long v0, v2, v0

    if-gez v0, :cond_20

    const-wide/16 v0, 0x2af8

    cmp-long v0, v2, v0

    if-lez v0, :cond_1f

    const-wide/16 v0, 0x2710

    sub-long/2addr v2, v0

    .line 62
    :try_start_0
    div-long v2, v2, v18

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_10

    .line 63
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    return v0

    .line 64
    :cond_1f
    :goto_10
    iget-object v6, v7, Le/m/a/c/r1/k;->c1:Landroid/media/MediaFormat;

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move-wide v3, v9

    move-object/from16 v5, p13

    invoke-virtual/range {v0 .. v6}, Le/m/a/c/r1/k;->B0(JJLcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V

    .line 65
    invoke-virtual {v7, v8, v11}, Le/m/a/c/r1/k;->E0(Landroid/media/MediaCodec;I)V

    const/4 v0, 0x1

    return v0

    :cond_20
    const/4 v0, 0x0

    return v0

    :cond_21
    :goto_11
    const/4 v0, 0x0

    return v0
.end method

.method public f(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 1
    check-cast p2, Landroid/view/Surface;

    if-nez p2, :cond_1

    .line 2
    iget-object p1, p0, Le/m/a/c/r1/k;->Q0:Landroid/view/Surface;

    if-eqz p1, :cond_0

    move-object p2, p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Le/m/a/c/h1/f;->N:Le/m/a/c/h1/e;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Le/m/a/c/r1/k;->H0(Le/m/a/c/h1/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p2, p0, Le/m/a/c/r1/k;->E0:Landroid/content/Context;

    iget-boolean p1, p1, Le/m/a/c/h1/e;->f:Z

    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/video/DummySurface;->c(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/video/DummySurface;

    move-result-object p2

    iput-object p2, p0, Le/m/a/c/r1/k;->Q0:Landroid/view/Surface;

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Le/m/a/c/r1/k;->P0:Landroid/view/Surface;

    if-eq p1, p2, :cond_5

    .line 7
    iput-object p2, p0, Le/m/a/c/r1/k;->P0:Landroid/view/Surface;

    .line 8
    iget p1, p0, Le/m/a/c/u;->e:I

    .line 9
    iget-object v0, p0, Le/m/a/c/h1/f;->E:Landroid/media/MediaCodec;

    if-eqz v0, :cond_3

    .line 10
    sget v1, Le/m/a/c/q1/d0;->a:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    if-eqz p2, :cond_2

    iget-boolean v1, p0, Le/m/a/c/r1/k;->N0:Z

    if-nez v1, :cond_2

    .line 11
    invoke-virtual {v0, p2}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p0}, Le/m/a/c/r1/k;->g0()V

    .line 13
    invoke-virtual {p0}, Le/m/a/c/h1/f;->W()V

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 14
    iget-object v0, p0, Le/m/a/c/r1/k;->Q0:Landroid/view/Surface;

    if-eq p2, v0, :cond_4

    .line 15
    invoke-virtual {p0}, Le/m/a/c/r1/k;->A0()V

    .line 16
    invoke-virtual {p0}, Le/m/a/c/r1/k;->q0()V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_8

    .line 17
    invoke-virtual {p0}, Le/m/a/c/r1/k;->G0()V

    goto :goto_2

    .line 18
    :cond_4
    invoke-virtual {p0}, Le/m/a/c/r1/k;->r0()V

    .line 19
    invoke-virtual {p0}, Le/m/a/c/r1/k;->q0()V

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_8

    .line 20
    iget-object p1, p0, Le/m/a/c/r1/k;->Q0:Landroid/view/Surface;

    if-eq p2, p1, :cond_8

    .line 21
    invoke-virtual {p0}, Le/m/a/c/r1/k;->A0()V

    .line 22
    iget-boolean p1, p0, Le/m/a/c/r1/k;->S0:Z

    if-eqz p1, :cond_8

    .line 23
    iget-object p1, p0, Le/m/a/c/r1/k;->G0:Le/m/a/c/r1/s$a;

    iget-object p2, p0, Le/m/a/c/r1/k;->P0:Landroid/view/Surface;

    .line 24
    iget-object v0, p1, Le/m/a/c/r1/s$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_8

    .line 25
    new-instance v1, Le/m/a/c/r1/e;

    invoke-direct {v1, p1, p2}, Le/m/a/c/r1/e;-><init>(Le/m/a/c/r1/s$a;Landroid/view/Surface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_6
    const/4 v0, 0x4

    if-ne p1, v0, :cond_7

    .line 26
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Le/m/a/c/r1/k;->R0:I

    .line 27
    iget-object p2, p0, Le/m/a/c/h1/f;->E:Landroid/media/MediaCodec;

    if-eqz p2, :cond_8

    .line 28
    invoke-virtual {p2, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    goto :goto_2

    :cond_7
    const/4 v0, 0x6

    if-ne p1, v0, :cond_8

    .line 29
    check-cast p2, Le/m/a/c/r1/o;

    iput-object p2, p0, Le/m/a/c/r1/k;->r1:Le/m/a/c/r1/o;

    :cond_8
    :goto_2
    return-void
.end method

.method public g0()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-super {p0}, Le/m/a/c/h1/f;->g0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iput v0, p0, Le/m/a/c/r1/k;->Y0:I

    return-void

    :catchall_0
    move-exception v1

    iput v0, p0, Le/m/a/c/r1/k;->Y0:I

    .line 3
    throw v1
.end method

.method public m0(Le/m/a/c/h1/e;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/r1/k;->P0:Landroid/view/Surface;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Le/m/a/c/r1/k;->H0(Le/m/a/c/h1/e;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public n0(Le/m/a/c/h1/g;Le/m/a/c/f1/e;Lcom/google/android/exoplayer2/Format;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/c/h1/g;",
            "Le/m/a/c/f1/e<",
            "Le/m/a/c/f1/h;",
            ">;",
            "Lcom/google/android/exoplayer2/Format;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/h1/h$c;
        }
    .end annotation

    .line 1
    iget-object v0, p3, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Le/m/a/c/q1/q;->g(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p3, Lcom/google/android/exoplayer2/Format;->l:Lcom/google/android/exoplayer2/drm/DrmInitData;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 4
    :goto_0
    invoke-static {p1, p3, v3, v1}, Le/m/a/c/r1/k;->u0(Le/m/a/c/h1/g;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object v4

    if-eqz v3, :cond_2

    .line 5
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6
    invoke-static {p1, p3, v1, v1}, Le/m/a/c/r1/k;->u0(Le/m/a/c/h1/g;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object v4

    .line 7
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    return v2

    :cond_3
    if-eqz v0, :cond_5

    .line 8
    const-class v5, Le/m/a/c/f1/h;

    iget-object v6, p3, Lcom/google/android/exoplayer2/Format;->C:Ljava/lang/Class;

    .line 9
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p3, Lcom/google/android/exoplayer2/Format;->C:Ljava/lang/Class;

    if-nez v5, :cond_4

    .line 10
    invoke-static {p2, v0}, Le/m/a/c/u;->G(Le/m/a/c/f1/e;Lcom/google/android/exoplayer2/drm/DrmInitData;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    move p2, v1

    goto :goto_2

    :cond_5
    :goto_1
    move p2, v2

    :goto_2
    if-nez p2, :cond_6

    const/4 p1, 0x2

    return p1

    .line 11
    :cond_6
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/m/a/c/h1/e;

    .line 12
    invoke-virtual {p2, p3}, Le/m/a/c/h1/e;->d(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    .line 13
    invoke-virtual {p2, p3}, Le/m/a/c/h1/e;->e(Lcom/google/android/exoplayer2/Format;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/16 p2, 0x10

    goto :goto_3

    :cond_7
    const/16 p2, 0x8

    :goto_3
    if-eqz v0, :cond_8

    .line 14
    invoke-static {p1, p3, v3, v2}, Le/m/a/c/r1/k;->u0(Le/m/a/c/h1/g;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 16
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/a/c/h1/e;

    .line 17
    invoke-virtual {p1, p3}, Le/m/a/c/h1/e;->d(Lcom/google/android/exoplayer2/Format;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 18
    invoke-virtual {p1, p3}, Le/m/a/c/h1/e;->e(Lcom/google/android/exoplayer2/Format;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/16 v1, 0x20

    :cond_8
    if-eqz v0, :cond_9

    const/4 p1, 0x4

    goto :goto_4

    :cond_9
    const/4 p1, 0x3

    :goto_4
    or-int/2addr p1, p2

    or-int/2addr p1, v1

    return p1
.end method

.method public final q0()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Le/m/a/c/r1/k;->S0:Z

    .line 2
    sget v0, Le/m/a/c/q1/d0;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Le/m/a/c/r1/k;->l1:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/m/a/c/h1/f;->E:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Le/m/a/c/r1/k$b;

    invoke-direct {v1, p0, v0}, Le/m/a/c/r1/k$b;-><init>(Le/m/a/c/r1/k;Landroid/media/MediaCodec;)V

    iput-object v1, p0, Le/m/a/c/r1/k;->n1:Le/m/a/c/r1/k$b;

    :cond_0
    return-void
.end method

.method public final r0()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Le/m/a/c/r1/k;->h1:I

    .line 2
    iput v0, p0, Le/m/a/c/r1/k;->i1:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 3
    iput v1, p0, Le/m/a/c/r1/k;->k1:F

    .line 4
    iput v0, p0, Le/m/a/c/r1/k;->j1:I

    return-void
.end method

.method public s0(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "OMX.google"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 2
    :cond_0
    const-class p1, Le/m/a/c/r1/k;

    monitor-enter p1

    .line 3
    :try_start_0
    sget-boolean v1, Le/m/a/c/r1/k;->t1:Z

    if-nez v1, :cond_a

    const-string v1, "dangal"

    .line 4
    sget-object v2, Le/m/a/c/q1/d0;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 5
    sput-boolean v3, Le/m/a/c/r1/k;->u1:Z

    goto/16 :goto_5

    .line 6
    :cond_1
    sget v1, Le/m/a/c/q1/d0;->a:I

    const/16 v4, 0x1b

    if-gt v1, v4, :cond_2

    const-string v5, "HWEML"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 7
    sput-boolean v3, Le/m/a/c/r1/k;->u1:Z

    goto/16 :goto_5

    :cond_2
    if-lt v1, v4, :cond_3

    goto/16 :goto_5

    .line 8
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v5, -0x1

    const/4 v6, 0x2

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "HWWAS-H"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x37

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "HWVNS-H"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x36

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "ELUGA_Prim"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x1c

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "ELUGA_Note"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "ASUS_X00AD_2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0xc

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "HWCAM-H"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x35

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "HWBLN-H"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x34

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "BRAVIA_ATV3_4K"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x10

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "Infinix-X572"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x3a

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "PB2-670M"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x57

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "santoni"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x67

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "iball8735_9806"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x39

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "CPH1609"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x14

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "woods_f"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x77

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "htc_e56ml_dtul"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x32

    goto/16 :goto_1

    :sswitch_f
    const-string v1, "EverStar_S"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x1e

    goto/16 :goto_1

    :sswitch_10
    const-string v1, "hwALE-H"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x33

    goto/16 :goto_1

    :sswitch_11
    const-string v1, "itel_S41"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x3c

    goto/16 :goto_1

    :sswitch_12
    const-string v1, "LS-5017"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x43

    goto/16 :goto_1

    :sswitch_13
    const-string v1, "panell_d"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x53

    goto/16 :goto_1

    :sswitch_14
    const-string v1, "j2xlteins"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x3d

    goto/16 :goto_1

    :sswitch_15
    const-string v1, "A7000plus"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x8

    goto/16 :goto_1

    :sswitch_16
    const-string v1, "manning"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x45

    goto/16 :goto_1

    :sswitch_17
    const-string v1, "GIONEE_WBL7519"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x30

    goto/16 :goto_1

    :sswitch_18
    const-string v1, "GIONEE_WBL7365"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x2f

    goto/16 :goto_1

    :sswitch_19
    const-string v1, "GIONEE_WBL5708"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x2e

    goto/16 :goto_1

    :sswitch_1a
    const-string v1, "QM16XE_U"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x65

    goto/16 :goto_1

    :sswitch_1b
    const-string v1, "Pixi5-10_4G"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x5d

    goto/16 :goto_1

    :sswitch_1c
    const-string v1, "TB3-850M"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x6f

    goto/16 :goto_1

    :sswitch_1d
    const-string v1, "TB3-850F"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x6e

    goto/16 :goto_1

    :sswitch_1e
    const-string v1, "TB3-730X"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x6d

    goto/16 :goto_1

    :sswitch_1f
    const-string v1, "TB3-730F"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x6c

    goto/16 :goto_1

    :sswitch_20
    const-string v1, "A7020a48"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0xa

    goto/16 :goto_1

    :sswitch_21
    const-string v1, "A7010a48"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x9

    goto/16 :goto_1

    :sswitch_22
    const-string v1, "griffin"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x31

    goto/16 :goto_1

    :sswitch_23
    const-string v1, "marino_f"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x46

    goto/16 :goto_1

    :sswitch_24
    const-string v1, "CPY83_I00"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x15

    goto/16 :goto_1

    :sswitch_25
    const-string v1, "A2016a40"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v4, 0x6

    goto/16 :goto_1

    :sswitch_26
    const-string v1, "le_x6"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x42

    goto/16 :goto_1

    :sswitch_27
    const-string v1, "l5460"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x41

    goto/16 :goto_1

    :sswitch_28
    const-string v1, "i9031"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x38

    goto/16 :goto_1

    :sswitch_29
    const-string v1, "X3_HK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x79

    goto/16 :goto_1

    :sswitch_2a
    const-string v1, "V23GB"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x72

    goto/16 :goto_1

    :sswitch_2b
    const-string v1, "Q4310"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x63

    goto/16 :goto_1

    :sswitch_2c
    const-string v1, "Q4260"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x61

    goto/16 :goto_1

    :sswitch_2d
    const-string v1, "PRO7S"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x5f

    goto/16 :goto_1

    :sswitch_2e
    const-string v1, "F3311"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x25

    goto/16 :goto_1

    :sswitch_2f
    const-string v1, "F3215"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x24

    goto/16 :goto_1

    :sswitch_30
    const-string v1, "F3213"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x23

    goto/16 :goto_1

    :sswitch_31
    const-string v1, "F3211"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x22

    goto/16 :goto_1

    :sswitch_32
    const-string v1, "F3116"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x21

    goto/16 :goto_1

    :sswitch_33
    const-string v1, "F3113"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x20

    goto/16 :goto_1

    :sswitch_34
    const-string v1, "F3111"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x1f

    goto/16 :goto_1

    :sswitch_35
    const-string v1, "E5643"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x19

    goto/16 :goto_1

    :sswitch_36
    const-string v1, "A1601"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v4, 0x5

    goto/16 :goto_1

    :sswitch_37
    const-string v1, "Aura_Note_2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0xd

    goto/16 :goto_1

    :sswitch_38
    const-string v1, "MEIZU_M5"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x47

    goto/16 :goto_1

    :sswitch_39
    const-string v1, "p212"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x50

    goto/16 :goto_1

    :sswitch_3a
    const-string v1, "mido"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x49

    goto/16 :goto_1

    :sswitch_3b
    const-string v1, "kate"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x40

    goto/16 :goto_1

    :sswitch_3c
    const-string v1, "fugu"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x27

    goto/16 :goto_1

    :sswitch_3d
    const-string v1, "XE2X"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x7a

    goto/16 :goto_1

    :sswitch_3e
    const-string v1, "Q427"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x62

    goto/16 :goto_1

    :sswitch_3f
    const-string v1, "Q350"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x60

    goto/16 :goto_1

    :sswitch_40
    const-string v1, "P681"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x51

    goto/16 :goto_1

    :sswitch_41
    const-string v1, "1714"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v4, v6

    goto/16 :goto_1

    :sswitch_42
    const-string v1, "1713"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v4, v3

    goto/16 :goto_1

    :sswitch_43
    const-string v1, "1601"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v4, v0

    goto/16 :goto_1

    :sswitch_44
    const-string v1, "flo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x26

    goto/16 :goto_1

    :sswitch_45
    const-string v1, "deb"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x18

    goto/16 :goto_1

    :sswitch_46
    const-string v1, "cv3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x17

    goto/16 :goto_1

    :sswitch_47
    const-string v1, "cv1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x16

    goto/16 :goto_1

    :sswitch_48
    const-string v1, "Z80"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x7d

    goto/16 :goto_1

    :sswitch_49
    const-string v1, "QX1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x66

    goto/16 :goto_1

    :sswitch_4a
    const-string v1, "PLE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x5e

    goto/16 :goto_1

    :sswitch_4b
    const-string v1, "P85"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x52

    goto/16 :goto_1

    :sswitch_4c
    const-string v1, "MX6"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x4a

    goto/16 :goto_1

    :sswitch_4d
    const-string v1, "M5c"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x44

    goto/16 :goto_1

    :sswitch_4e
    const-string v1, "JGZ"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x3e

    goto/16 :goto_1

    :sswitch_4f
    const-string v1, "mh"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x48

    goto/16 :goto_1

    :sswitch_50
    const-string v1, "V5"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x73

    goto/16 :goto_1

    :sswitch_51
    const-string v1, "V1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x71

    goto/16 :goto_1

    :sswitch_52
    const-string v1, "Q5"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x64

    goto/16 :goto_1

    :sswitch_53
    const-string v1, "C1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x11

    goto/16 :goto_1

    :sswitch_54
    const-string v1, "woods_fn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x78

    goto/16 :goto_1

    :sswitch_55
    const-string v1, "ELUGA_A3_Pro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x1a

    goto/16 :goto_1

    :sswitch_56
    const-string v1, "Z12_PRO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x7c

    goto/16 :goto_1

    :sswitch_57
    const-string v1, "BLACK-1X"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0xe

    goto/16 :goto_1

    :sswitch_58
    const-string v1, "taido_row"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x6b

    goto/16 :goto_1

    :sswitch_59
    const-string v1, "Pixi4-7_3G"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x5c

    goto/16 :goto_1

    :sswitch_5a
    const-string v1, "GIONEE_GBL7360"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x2a

    goto/16 :goto_1

    :sswitch_5b
    const-string v1, "GiONEE_CBL7513"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x28

    goto/16 :goto_1

    :sswitch_5c
    const-string v1, "OnePlus5T"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x4f

    goto/16 :goto_1

    :sswitch_5d
    const-string v1, "whyred"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x76

    goto/16 :goto_1

    :sswitch_5e
    const-string v1, "watson"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x75

    goto/16 :goto_1

    :sswitch_5f
    const-string v1, "SVP-DTV15"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x69

    goto/16 :goto_1

    :sswitch_60
    const-string v1, "A7000-a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v4, 0x7

    goto/16 :goto_1

    :sswitch_61
    const-string v1, "nicklaus_f"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x4c

    goto/16 :goto_1

    :sswitch_62
    const-string v1, "tcl_eu"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x70

    goto/16 :goto_1

    :sswitch_63
    const-string v1, "ELUGA_Ray_X"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x1d

    goto/16 :goto_1

    :sswitch_64
    const-string v1, "s905x018"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x6a

    goto/16 :goto_1

    :sswitch_65
    const-string v1, "A10-70L"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v4, 0x4

    goto/16 :goto_1

    :sswitch_66
    const-string v1, "A10-70F"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v4, 0x3

    goto/16 :goto_1

    :sswitch_67
    const-string v1, "namath"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x4b

    goto/16 :goto_1

    :sswitch_68
    const-string v1, "Slate_Pro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x68

    goto/16 :goto_1

    :sswitch_69
    const-string v1, "iris60"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x3b

    goto/16 :goto_1

    :sswitch_6a
    const-string v1, "BRAVIA_ATV2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0xf

    goto/16 :goto_1

    :sswitch_6b
    const-string v1, "GiONEE_GBL7319"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x29

    goto/16 :goto_1

    :sswitch_6c
    const-string v1, "panell_dt"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x56

    goto/16 :goto_1

    :sswitch_6d
    const-string v1, "panell_ds"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x55

    goto/16 :goto_1

    :sswitch_6e
    const-string v1, "panell_dl"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x54

    goto/16 :goto_1

    :sswitch_6f
    const-string v1, "vernee_M5"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x74

    goto/16 :goto_1

    :sswitch_70
    const-string v1, "Phantom6"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x5b

    goto/16 :goto_1

    :sswitch_71
    const-string v1, "ComioS1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x12

    goto/16 :goto_1

    :sswitch_72
    const-string v1, "XT1663"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x7b

    goto/16 :goto_1

    :sswitch_73
    const-string v1, "AquaPowerM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0xb

    goto/16 :goto_1

    :sswitch_74
    const-string v1, "PGN611"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x5a

    goto/16 :goto_1

    :sswitch_75
    const-string v1, "PGN610"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x59

    goto :goto_1

    :sswitch_76
    const-string v1, "PGN528"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x58

    goto :goto_1

    :sswitch_77
    const-string v1, "NX573J"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x4e

    goto :goto_1

    :sswitch_78
    const-string v1, "NX541J"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x4d

    goto :goto_1

    :sswitch_79
    const-string v1, "CP8676_I02"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x13

    goto :goto_1

    :sswitch_7a
    const-string v1, "K50a40"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x3f

    goto :goto_1

    :sswitch_7b
    const-string v1, "GIONEE_SWW1631"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x2d

    goto :goto_1

    :sswitch_7c
    const-string v1, "GIONEE_SWW1627"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x2c

    goto :goto_1

    :sswitch_7d
    const-string v1, "GIONEE_SWW1609"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x2b

    goto :goto_1

    :cond_4
    :goto_0
    move v4, v5

    :goto_1
    packed-switch v4, :pswitch_data_0

    goto :goto_2

    .line 9
    :pswitch_0
    sput-boolean v3, Le/m/a/c/r1/k;->u1:Z

    .line 10
    :goto_2
    sget-object v1, Le/m/a/c/q1/d0;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v4, -0x236fe21d

    if-eq v2, v4, :cond_7

    const v4, 0x1e9d52

    if-eq v2, v4, :cond_6

    const v0, 0x1e9d5f

    if-eq v2, v0, :cond_5

    goto :goto_3

    :cond_5
    const-string v0, "AFTN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v3

    goto :goto_4

    :cond_6
    const-string v2, "AFTA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_7
    const-string v0, "JSN-L21"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v6

    goto :goto_4

    :cond_8
    :goto_3
    move v0, v5

    :goto_4
    if-eqz v0, :cond_9

    if-eq v0, v3, :cond_9

    if-eq v0, v6, :cond_9

    goto :goto_5

    .line 11
    :cond_9
    sput-boolean v3, Le/m/a/c/r1/k;->u1:Z

    .line 12
    :goto_5
    sput-boolean v3, Le/m/a/c/r1/k;->t1:Z

    .line 13
    :cond_a
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    sget-boolean p1, Le/m/a/c/r1/k;->u1:Z

    return p1

    :catchall_0
    move-exception v0

    .line 15
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_7d
        -0x7fd6c381 -> :sswitch_7c
        -0x7fd6c368 -> :sswitch_7b
        -0x7d026749 -> :sswitch_7a
        -0x78929d6a -> :sswitch_79
        -0x75f50a1e -> :sswitch_78
        -0x75f4fe9d -> :sswitch_77
        -0x736f875c -> :sswitch_76
        -0x736f83c2 -> :sswitch_75
        -0x736f83c1 -> :sswitch_74
        -0x7327ce1c -> :sswitch_73
        -0x651ebb62 -> :sswitch_72
        -0x6423293b -> :sswitch_71
        -0x604f5117 -> :sswitch_70
        -0x5ca40cc4 -> :sswitch_6f
        -0x58520ec1 -> :sswitch_6e
        -0x58520eba -> :sswitch_6d
        -0x58520eb9 -> :sswitch_6c
        -0x4eaed329 -> :sswitch_6b
        -0x4892fb4f -> :sswitch_6a
        -0x465b3df3 -> :sswitch_69
        -0x43e6c939 -> :sswitch_68
        -0x3ec0fcc5 -> :sswitch_67
        -0x3b33cca0 -> :sswitch_66
        -0x3b33cc9a -> :sswitch_65
        -0x398ae3f6 -> :sswitch_64
        -0x391f0fb4 -> :sswitch_63
        -0x346837ae -> :sswitch_62
        -0x323788e3 -> :sswitch_61
        -0x30f57652 -> :sswitch_60
        -0x2f88a116 -> :sswitch_5f
        -0x2f61ed98 -> :sswitch_5e
        -0x2efd0837 -> :sswitch_5d
        -0x2e9e9441 -> :sswitch_5c
        -0x2247b8b1 -> :sswitch_5b
        -0x1f0fa2b7 -> :sswitch_5a
        -0x19af3b41 -> :sswitch_59
        -0x114fad3e -> :sswitch_58
        -0x10dae90b -> :sswitch_57
        -0x1084b7b7 -> :sswitch_56
        -0xa5988e9 -> :sswitch_55
        -0x35f9fbf -> :sswitch_54
        0x84e -> :sswitch_53
        0xa04 -> :sswitch_52
        0xa9b -> :sswitch_51
        0xa9f -> :sswitch_50
        0xd9b -> :sswitch_4f
        0x11ebd -> :sswitch_4e
        0x127db -> :sswitch_4d
        0x12beb -> :sswitch_4c
        0x1334d -> :sswitch_4b
        0x135c9 -> :sswitch_4a
        0x13aea -> :sswitch_49
        0x158d2 -> :sswitch_48
        0x1821e -> :sswitch_47
        0x18220 -> :sswitch_46
        0x18401 -> :sswitch_45
        0x18c69 -> :sswitch_44
        0x1716e6 -> :sswitch_43
        0x171ac8 -> :sswitch_42
        0x171ac9 -> :sswitch_41
        0x252f5f -> :sswitch_40
        0x25981d -> :sswitch_3f
        0x259b88 -> :sswitch_3e
        0x290a13 -> :sswitch_3d
        0x3021fd -> :sswitch_3c
        0x321e47 -> :sswitch_3b
        0x332327 -> :sswitch_3a
        0x33ab63 -> :sswitch_39
        0x27691fb -> :sswitch_38
        0x349f581 -> :sswitch_37
        0x3ab0ea7 -> :sswitch_36
        0x3e53ea5 -> :sswitch_35
        0x3f25a44 -> :sswitch_34
        0x3f25a46 -> :sswitch_33
        0x3f25a49 -> :sswitch_32
        0x3f25e05 -> :sswitch_31
        0x3f25e07 -> :sswitch_30
        0x3f25e09 -> :sswitch_2f
        0x3f261c6 -> :sswitch_2e
        0x48dce49 -> :sswitch_2d
        0x48dd589 -> :sswitch_2c
        0x48dd8af -> :sswitch_2b
        0x4d36832 -> :sswitch_2a
        0x4f0b0e7 -> :sswitch_29
        0x5e2479e -> :sswitch_28
        0x60acc05 -> :sswitch_27
        0x6214744 -> :sswitch_26
        0x9d91379 -> :sswitch_25
        0xadc0551 -> :sswitch_24
        0xea056b3 -> :sswitch_23
        0x1121dbc3 -> :sswitch_22
        0x1255818c -> :sswitch_21
        0x1263990d -> :sswitch_20
        0x12d90f3a -> :sswitch_1f
        0x12d90f4c -> :sswitch_1e
        0x12d98b1b -> :sswitch_1d
        0x12d98b22 -> :sswitch_1c
        0x1844c711 -> :sswitch_1b
        0x1e3e8044 -> :sswitch_1a
        0x2f5336ed -> :sswitch_19
        0x2f54115e -> :sswitch_18
        0x2f541849 -> :sswitch_17
        0x31cf010e -> :sswitch_16
        0x36ad82f4 -> :sswitch_15
        0x391a0b61 -> :sswitch_14
        0x3f3728cd -> :sswitch_13
        0x448ec687 -> :sswitch_12
        0x46260f63 -> :sswitch_11
        0x4c505106 -> :sswitch_10
        0x4de67084 -> :sswitch_f
        0x506ac5a9 -> :sswitch_e
        0x5abad9cd -> :sswitch_d
        0x64d2e6e9 -> :sswitch_c
        0x65e4085b -> :sswitch_b
        0x6f373556 -> :sswitch_a
        0x719f1dcb -> :sswitch_9
        0x75d9a0f0 -> :sswitch_8
        0x7796d144 -> :sswitch_7
        0x78fc0e50 -> :sswitch_6
        0x790521fb -> :sswitch_5
        0x7933207f -> :sswitch_4
        0x7a05a409 -> :sswitch_3
        0x7a0696bd -> :sswitch_2
        0x7a16dfe7 -> :sswitch_1
        0x7a1f0e95 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public x()V
    .locals 5

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide v0, p0, Le/m/a/c/r1/k;->o1:J

    .line 2
    iput-wide v0, p0, Le/m/a/c/r1/k;->p1:J

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Le/m/a/c/r1/k;->q1:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Le/m/a/c/r1/k;->c1:Landroid/media/MediaFormat;

    .line 5
    invoke-virtual {p0}, Le/m/a/c/r1/k;->r0()V

    .line 6
    invoke-virtual {p0}, Le/m/a/c/r1/k;->q0()V

    .line 7
    iget-object v1, p0, Le/m/a/c/r1/k;->F0:Le/m/a/c/r1/p;

    .line 8
    iget-object v2, v1, Le/m/a/c/r1/p;->a:Landroid/view/WindowManager;

    if-eqz v2, :cond_1

    .line 9
    iget-object v2, v1, Le/m/a/c/r1/p;->c:Le/m/a/c/r1/p$a;

    if-eqz v2, :cond_0

    .line 10
    iget-object v3, v2, Le/m/a/c/r1/p$a;->a:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 11
    :cond_0
    iget-object v1, v1, Le/m/a/c/r1/p;->b:Le/m/a/c/r1/p$b;

    .line 12
    iget-object v1, v1, Le/m/a/c/r1/p$b;->b:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 13
    :cond_1
    iput-object v0, p0, Le/m/a/c/r1/k;->n1:Le/m/a/c/r1/k$b;

    .line 14
    :try_start_0
    invoke-super {p0}, Le/m/a/c/h1/f;->x()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object v0, p0, Le/m/a/c/r1/k;->G0:Le/m/a/c/r1/s$a;

    iget-object v1, p0, Le/m/a/c/h1/f;->C0:Le/m/a/c/e1/d;

    .line 16
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    monitor-enter v1

    .line 18
    monitor-exit v1

    .line 19
    iget-object v2, v0, Le/m/a/c/r1/s$a;->a:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 20
    new-instance v3, Le/m/a/c/r1/f;

    invoke-direct {v3, v0, v1}, Le/m/a/c/r1/f;-><init>(Le/m/a/c/r1/s$a;Le/m/a/c/e1/d;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 21
    iget-object v1, p0, Le/m/a/c/r1/k;->G0:Le/m/a/c/r1/s$a;

    iget-object v2, p0, Le/m/a/c/h1/f;->C0:Le/m/a/c/e1/d;

    .line 22
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    monitor-enter v2

    .line 24
    monitor-exit v2

    .line 25
    iget-object v3, v1, Le/m/a/c/r1/s$a;->a:Landroid/os/Handler;

    if-eqz v3, :cond_3

    .line 26
    new-instance v4, Le/m/a/c/r1/f;

    invoke-direct {v4, v1, v2}, Le/m/a/c/r1/f;-><init>(Le/m/a/c/r1/s$a;Le/m/a/c/e1/d;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    :cond_3
    throw v0
.end method

.method public final x0()V
    .locals 8

    .line 1
    iget v0, p0, Le/m/a/c/r1/k;->W0:I

    if-lez v0, :cond_1

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Le/m/a/c/r1/k;->V0:J

    sub-long v2, v0, v2

    .line 4
    iget-object v4, p0, Le/m/a/c/r1/k;->G0:Le/m/a/c/r1/s$a;

    iget v5, p0, Le/m/a/c/r1/k;->W0:I

    .line 5
    iget-object v6, v4, Le/m/a/c/r1/s$a;->a:Landroid/os/Handler;

    if-eqz v6, :cond_0

    .line 6
    new-instance v7, Le/m/a/c/r1/c;

    invoke-direct {v7, v4, v5, v2, v3}, Le/m/a/c/r1/c;-><init>(Le/m/a/c/r1/s$a;IJ)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v2, 0x0

    .line 7
    iput v2, p0, Le/m/a/c/r1/k;->W0:I

    .line 8
    iput-wide v0, p0, Le/m/a/c/r1/k;->V0:J

    :cond_1
    return-void
.end method

.method public y(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Le/m/a/c/h1/f;->y(Z)V

    .line 2
    iget p1, p0, Le/m/a/c/r1/k;->m1:I

    .line 3
    iget-object v0, p0, Le/m/a/c/u;->c:Le/m/a/c/v0;

    .line 4
    iget v0, v0, Le/m/a/c/v0;->a:I

    iput v0, p0, Le/m/a/c/r1/k;->m1:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 5
    :goto_0
    iput-boolean v3, p0, Le/m/a/c/r1/k;->l1:Z

    if-eq v0, p1, :cond_1

    .line 6
    invoke-virtual {p0}, Le/m/a/c/r1/k;->g0()V

    .line 7
    :cond_1
    iget-object p1, p0, Le/m/a/c/r1/k;->G0:Le/m/a/c/r1/s$a;

    iget-object v0, p0, Le/m/a/c/h1/f;->C0:Le/m/a/c/e1/d;

    .line 8
    iget-object v3, p1, Le/m/a/c/r1/s$a;->a:Landroid/os/Handler;

    if-eqz v3, :cond_2

    .line 9
    new-instance v4, Le/m/a/c/r1/b;

    invoke-direct {v4, p1, v0}, Le/m/a/c/r1/b;-><init>(Le/m/a/c/r1/s$a;Le/m/a/c/e1/d;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    :cond_2
    iget-object p1, p0, Le/m/a/c/r1/k;->F0:Le/m/a/c/r1/p;

    .line 11
    iput-boolean v2, p1, Le/m/a/c/r1/p;->i:Z

    .line 12
    iget-object v0, p1, Le/m/a/c/r1/p;->a:Landroid/view/WindowManager;

    if-eqz v0, :cond_4

    .line 13
    iget-object v0, p1, Le/m/a/c/r1/p;->b:Le/m/a/c/r1/p$b;

    .line 14
    iget-object v0, v0, Le/m/a/c/r1/p$b;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 15
    iget-object v0, p1, Le/m/a/c/r1/p;->c:Le/m/a/c/r1/p$a;

    if-eqz v0, :cond_3

    .line 16
    iget-object v1, v0, Le/m/a/c/r1/p$a;->a:Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 17
    :cond_3
    invoke-virtual {p1}, Le/m/a/c/r1/p;->b()V

    :cond_4
    return-void
.end method

.method public y0()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Le/m/a/c/r1/k;->S0:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/m/a/c/r1/k;->S0:Z

    .line 3
    iget-object v0, p0, Le/m/a/c/r1/k;->G0:Le/m/a/c/r1/s$a;

    iget-object v1, p0, Le/m/a/c/r1/k;->P0:Landroid/view/Surface;

    .line 4
    iget-object v2, v0, Le/m/a/c/r1/s$a;->a:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 5
    new-instance v3, Le/m/a/c/r1/e;

    invoke-direct {v3, v0, v1}, Le/m/a/c/r1/e;-><init>(Le/m/a/c/r1/s$a;Landroid/view/Surface;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public z(JZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Le/m/a/c/h1/f;->w0:Z

    .line 2
    iput-boolean p1, p0, Le/m/a/c/h1/f;->x0:Z

    .line 3
    iput-boolean p1, p0, Le/m/a/c/h1/f;->B0:Z

    .line 4
    invoke-virtual {p0}, Le/m/a/c/h1/f;->O()Z

    .line 5
    iget-object p2, p0, Le/m/a/c/h1/f;->s:Le/m/a/c/q1/b0;

    invoke-virtual {p2}, Le/m/a/c/q1/b0;->b()V

    .line 6
    invoke-virtual {p0}, Le/m/a/c/r1/k;->q0()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide v0, p0, Le/m/a/c/r1/k;->T0:J

    .line 8
    iput p1, p0, Le/m/a/c/r1/k;->X0:I

    .line 9
    iput-wide v0, p0, Le/m/a/c/r1/k;->o1:J

    .line 10
    iget p2, p0, Le/m/a/c/r1/k;->q1:I

    if-eqz p2, :cond_0

    .line 11
    iget-object v2, p0, Le/m/a/c/r1/k;->K0:[J

    add-int/lit8 p2, p2, -0x1

    aget-wide v3, v2, p2

    iput-wide v3, p0, Le/m/a/c/r1/k;->p1:J

    .line 12
    iput p1, p0, Le/m/a/c/r1/k;->q1:I

    :cond_0
    if-eqz p3, :cond_1

    .line 13
    invoke-virtual {p0}, Le/m/a/c/r1/k;->G0()V

    goto :goto_0

    .line 14
    :cond_1
    iput-wide v0, p0, Le/m/a/c/r1/k;->U0:J

    :goto_0
    return-void
.end method

.method public final z0()V
    .locals 5

    .line 1
    iget v0, p0, Le/m/a/c/r1/k;->d1:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v2, p0, Le/m/a/c/r1/k;->e1:I

    if-eq v2, v1, :cond_2

    :cond_0
    iget v1, p0, Le/m/a/c/r1/k;->h1:I

    if-ne v1, v0, :cond_1

    iget v1, p0, Le/m/a/c/r1/k;->i1:I

    iget v2, p0, Le/m/a/c/r1/k;->e1:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Le/m/a/c/r1/k;->j1:I

    iget v2, p0, Le/m/a/c/r1/k;->f1:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Le/m/a/c/r1/k;->k1:F

    iget v2, p0, Le/m/a/c/r1/k;->g1:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 2
    :cond_1
    iget-object v1, p0, Le/m/a/c/r1/k;->G0:Le/m/a/c/r1/s$a;

    iget v2, p0, Le/m/a/c/r1/k;->e1:I

    iget v3, p0, Le/m/a/c/r1/k;->f1:I

    iget v4, p0, Le/m/a/c/r1/k;->g1:F

    invoke-virtual {v1, v0, v2, v3, v4}, Le/m/a/c/r1/s$a;->a(IIIF)V

    .line 3
    iget v0, p0, Le/m/a/c/r1/k;->d1:I

    iput v0, p0, Le/m/a/c/r1/k;->h1:I

    .line 4
    iget v0, p0, Le/m/a/c/r1/k;->e1:I

    iput v0, p0, Le/m/a/c/r1/k;->i1:I

    .line 5
    iget v0, p0, Le/m/a/c/r1/k;->f1:I

    iput v0, p0, Le/m/a/c/r1/k;->j1:I

    .line 6
    iget v0, p0, Le/m/a/c/r1/k;->g1:F

    iput v0, p0, Le/m/a/c/r1/k;->k1:F

    :cond_2
    return-void
.end method
