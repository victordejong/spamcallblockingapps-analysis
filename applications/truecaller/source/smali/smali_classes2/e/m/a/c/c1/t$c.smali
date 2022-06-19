.class public final Le/m/a/c/c1/t$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/c1/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Z

.field public final j:Z

.field public final k:[Le/m/a/c/c1/l;


# direct methods
.method public constructor <init>(ZIIIIIIIZZ[Le/m/a/c/c1/l;)V
    .locals 14

    move-object v0, p0

    move v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean v1, v0, Le/m/a/c/c1/t$c;->a:Z

    move/from16 v5, p2

    .line 3
    iput v5, v0, Le/m/a/c/c1/t$c;->b:I

    move/from16 v5, p3

    .line 4
    iput v5, v0, Le/m/a/c/c1/t$c;->c:I

    .line 5
    iput v2, v0, Le/m/a/c/c1/t$c;->d:I

    .line 6
    iput v3, v0, Le/m/a/c/c1/t$c;->e:I

    move/from16 v5, p6

    .line 7
    iput v5, v0, Le/m/a/c/c1/t$c;->f:I

    .line 8
    iput v4, v0, Le/m/a/c/c1/t$c;->g:I

    if-eqz p8, :cond_0

    move/from16 v1, p8

    goto/16 :goto_3

    :cond_0
    const-wide/32 v6, 0x3d090

    const-wide/32 v8, 0xf4240

    if-eqz v1, :cond_2

    .line 9
    invoke-static/range {p5 .. p7}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v1

    const/4 v4, -0x2

    if-eq v1, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 10
    :goto_0
    invoke-static {v4}, Ln3/g0/y;->x(Z)V

    mul-int/lit8 v4, v1, 0x4

    int-to-long v10, v3

    mul-long/2addr v6, v10

    .line 11
    div-long/2addr v6, v8

    long-to-int v3, v6

    mul-int/2addr v3, v2

    int-to-long v5, v1

    const-wide/32 v12, 0xb71b0

    mul-long/2addr v10, v12

    .line 12
    div-long/2addr v10, v8

    int-to-long v1, v2

    mul-long/2addr v10, v1

    .line 13
    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 14
    invoke-static {v4, v3, v1}, Le/m/a/c/q1/d0;->f(III)I

    move-result v1

    goto :goto_3

    :cond_2
    const/4 v1, 0x5

    if-eq v4, v1, :cond_9

    const/4 v2, 0x6

    if-eq v4, v2, :cond_8

    const/4 v2, 0x7

    if-eq v4, v2, :cond_7

    const/16 v2, 0x8

    if-eq v4, v2, :cond_6

    const/16 v2, 0xe

    if-eq v4, v2, :cond_5

    const/16 v2, 0x11

    if-eq v4, v2, :cond_4

    const/16 v2, 0x12

    if-ne v4, v2, :cond_3

    goto :goto_1

    .line 15
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_4
    const v2, 0x52080

    goto :goto_2

    :cond_5
    const v2, 0x2ebae4

    goto :goto_2

    :cond_6
    const v2, 0x225510

    goto :goto_2

    :cond_7
    const v2, 0x2ee00

    goto :goto_2

    :cond_8
    :goto_1
    const v2, 0xbb800

    goto :goto_2

    :cond_9
    const v2, 0x13880

    :goto_2
    if-ne v4, v1, :cond_a

    mul-int/lit8 v2, v2, 0x2

    :cond_a
    int-to-long v1, v2

    mul-long/2addr v1, v6

    .line 16
    div-long/2addr v1, v8

    long-to-int v1, v1

    .line 17
    :goto_3
    iput v1, v0, Le/m/a/c/c1/t$c;->h:I

    move/from16 v1, p9

    .line 18
    iput-boolean v1, v0, Le/m/a/c/c1/t$c;->i:Z

    move/from16 v1, p10

    .line 19
    iput-boolean v1, v0, Le/m/a/c/c1/t$c;->j:Z

    move-object/from16 v1, p11

    .line 20
    iput-object v1, v0, Le/m/a/c/c1/t$c;->k:[Le/m/a/c/c1/l;

    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    .line 1
    iget v0, p0, Le/m/a/c/c1/t$c;->e:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method
