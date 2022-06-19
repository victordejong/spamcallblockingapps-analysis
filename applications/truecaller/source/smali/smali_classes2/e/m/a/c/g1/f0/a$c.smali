.class public final Le/m/a/c/g1/f0/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/f0/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/g1/f0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Le/m/a/c/g1/i;

.field public final b:Le/m/a/c/g1/s;

.field public final c:Le/m/a/c/g1/f0/b;

.field public final d:Lcom/google/android/exoplayer2/Format;

.field public final e:I

.field public f:J

.field public g:I

.field public h:J


# direct methods
.method public constructor <init>(Le/m/a/c/g1/i;Le/m/a/c/g1/s;Le/m/a/c/g1/f0/b;Ljava/lang/String;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/m0;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v2, p1

    .line 2
    iput-object v2, v0, Le/m/a/c/g1/f0/a$c;->a:Le/m/a/c/g1/i;

    move-object/from16 v2, p2

    .line 3
    iput-object v2, v0, Le/m/a/c/g1/f0/a$c;->b:Le/m/a/c/g1/s;

    .line 4
    iput-object v1, v0, Le/m/a/c/g1/f0/a$c;->c:Le/m/a/c/g1/f0/b;

    .line 5
    iget v2, v1, Le/m/a/c/g1/f0/b;->b:I

    iget v3, v1, Le/m/a/c/g1/f0/b;->e:I

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x8

    .line 6
    iget v3, v1, Le/m/a/c/g1/f0/b;->d:I

    if-ne v3, v2, :cond_0

    .line 7
    iget v3, v1, Le/m/a/c/g1/f0/b;->c:I

    mul-int/2addr v3, v2

    div-int/lit8 v3, v3, 0xa

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v0, Le/m/a/c/g1/f0/a$c;->e:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 9
    iget v10, v1, Le/m/a/c/g1/f0/b;->c:I

    mul-int/2addr v2, v10

    mul-int/lit8 v7, v2, 0x8

    iget v9, v1, Le/m/a/c/g1/f0/b;->b:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v5, p4

    move/from16 v11, p5

    .line 10
    invoke-static/range {v4 .. v15}, Lcom/google/android/exoplayer2/Format;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iput-object v1, v0, Le/m/a/c/g1/f0/a$c;->d:Lcom/google/android/exoplayer2/Format;

    return-void

    .line 11
    :cond_0
    new-instance v3, Le/m/a/c/m0;

    const-string v4, "Expected block size: "

    const-string v5, "; got: "

    invoke-static {v4, v2, v5}, Le/d/c/a/a;->E(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Le/m/a/c/g1/f0/b;->d:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public a(Le/m/a/c/g1/e;J)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const/4 v6, 0x1

    if-lez v5, :cond_1

    .line 1
    iget v7, v0, Le/m/a/c/g1/f0/a$c;->g:I

    iget v8, v0, Le/m/a/c/g1/f0/a$c;->e:I

    if-ge v7, v8, :cond_1

    sub-int/2addr v8, v7

    int-to-long v7, v8

    .line 2
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v5, v7

    .line 3
    iget-object v7, v0, Le/m/a/c/g1/f0/a$c;->b:Le/m/a/c/g1/s;

    move-object/from16 v8, p1

    invoke-interface {v7, v8, v5, v6}, Le/m/a/c/g1/s;->d(Le/m/a/c/g1/e;IZ)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    move-wide v1, v3

    goto :goto_0

    .line 4
    :cond_0
    iget v3, v0, Le/m/a/c/g1/f0/a$c;->g:I

    add-int/2addr v3, v5

    iput v3, v0, Le/m/a/c/g1/f0/a$c;->g:I

    int-to-long v3, v5

    sub-long/2addr v1, v3

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, v0, Le/m/a/c/g1/f0/a$c;->c:Le/m/a/c/g1/f0/b;

    iget v2, v1, Le/m/a/c/g1/f0/b;->d:I

    .line 6
    iget v3, v0, Le/m/a/c/g1/f0/a$c;->g:I

    div-int/2addr v3, v2

    if-lez v3, :cond_2

    .line 7
    iget-wide v7, v0, Le/m/a/c/g1/f0/a$c;->f:J

    iget-wide v9, v0, Le/m/a/c/g1/f0/a$c;->h:J

    const-wide/32 v11, 0xf4240

    iget v1, v1, Le/m/a/c/g1/f0/b;->c:I

    int-to-long v13, v1

    .line 8
    invoke-static/range {v9 .. v14}, Le/m/a/c/q1/d0;->z(JJJ)J

    move-result-wide v9

    add-long v12, v7, v9

    mul-int v15, v3, v2

    .line 9
    iget v1, v0, Le/m/a/c/g1/f0/a$c;->g:I

    sub-int/2addr v1, v15

    .line 10
    iget-object v11, v0, Le/m/a/c/g1/f0/a$c;->b:Le/m/a/c/g1/s;

    const/4 v14, 0x1

    const/16 v17, 0x0

    move/from16 v16, v1

    invoke-interface/range {v11 .. v17}, Le/m/a/c/g1/s;->c(JIIILe/m/a/c/g1/s$a;)V

    .line 11
    iget-wide v7, v0, Le/m/a/c/g1/f0/a$c;->h:J

    int-to-long v2, v3

    add-long/2addr v7, v2

    iput-wide v7, v0, Le/m/a/c/g1/f0/a$c;->h:J

    .line 12
    iput v1, v0, Le/m/a/c/g1/f0/a$c;->g:I

    :cond_2
    if-gtz v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    return v6
.end method

.method public b(IJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Le/m/a/c/g1/f0/a$c;->a:Le/m/a/c/g1/i;

    new-instance v8, Le/m/a/c/g1/f0/d;

    iget-object v2, p0, Le/m/a/c/g1/f0/a$c;->c:Le/m/a/c/g1/f0/b;

    int-to-long v4, p1

    const/4 v3, 0x1

    move-object v1, v8

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Le/m/a/c/g1/f0/d;-><init>(Le/m/a/c/g1/f0/b;IJJ)V

    invoke-interface {v0, v8}, Le/m/a/c/g1/i;->s(Le/m/a/c/g1/q;)V

    .line 2
    iget-object p1, p0, Le/m/a/c/g1/f0/a$c;->b:Le/m/a/c/g1/s;

    iget-object p2, p0, Le/m/a/c/g1/f0/a$c;->d:Lcom/google/android/exoplayer2/Format;

    invoke-interface {p1, p2}, Le/m/a/c/g1/s;->b(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Le/m/a/c/g1/f0/a$c;->f:J

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Le/m/a/c/g1/f0/a$c;->g:I

    const-wide/16 p1, 0x0

    .line 3
    iput-wide p1, p0, Le/m/a/c/g1/f0/a$c;->h:J

    return-void
.end method
