.class public final Le/m/a/c/g1/z/a;
.super Le/m/a/c/g1/z/d;
.source "SourceFile"


# static fields
.field public static final e:[I


# instance fields
.field public b:Z

.field public c:Z

.field public d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Le/m/a/c/g1/z/a;->e:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1588
        0x2b11
        0x5622
        0xac44
    .end array-data
.end method

.method public constructor <init>(Le/m/a/c/g1/s;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/m/a/c/g1/z/d;-><init>(Le/m/a/c/g1/s;)V

    return-void
.end method


# virtual methods
.method public b(Le/m/a/c/q1/t;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/g1/z/d$a;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/m/a/c/g1/z/a;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 2
    invoke-virtual {p1}, Le/m/a/c/q1/t;->q()I

    move-result p1

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    .line 3
    iput v0, p0, Le/m/a/c/g1/z/a;->d:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    shr-int/2addr p1, v2

    and-int/lit8 p1, p1, 0x3

    .line 4
    sget-object v0, Le/m/a/c/g1/z/a;->e:[I

    aget v8, v0, p1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v3, "audio/mpeg"

    .line 5
    invoke-static/range {v2 .. v12}, Lcom/google/android/exoplayer2/Format;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 6
    iget-object v0, p0, Le/m/a/c/g1/z/d;->a:Le/m/a/c/g1/s;

    invoke-interface {v0, p1}, Le/m/a/c/g1/s;->b(Lcom/google/android/exoplayer2/Format;)V

    .line 7
    iput-boolean v1, p0, Le/m/a/c/g1/z/a;->c:Z

    goto :goto_2

    :cond_0
    const/4 p1, 0x7

    if-eq v0, p1, :cond_3

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0xa

    if-ne v0, p1, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    new-instance p1, Le/m/a/c/g1/z/d$a;

    const-string v0, "Audio format not supported: "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Le/m/a/c/g1/z/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Le/m/a/c/g1/z/d$a;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    if-ne v0, p1, :cond_4

    const-string p1, "audio/g711-alaw"

    goto :goto_1

    :cond_4
    const-string p1, "audio/g711-mlaw"

    :goto_1
    move-object v3, p1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/16 v8, 0x1f40

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 9
    invoke-static/range {v2 .. v13}, Lcom/google/android/exoplayer2/Format;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 10
    iget-object v0, p0, Le/m/a/c/g1/z/d;->a:Le/m/a/c/g1/s;

    invoke-interface {v0, p1}, Le/m/a/c/g1/s;->b(Lcom/google/android/exoplayer2/Format;)V

    .line 11
    iput-boolean v1, p0, Le/m/a/c/g1/z/a;->c:Z

    .line 12
    :goto_2
    iput-boolean v1, p0, Le/m/a/c/g1/z/a;->b:Z

    goto :goto_3

    .line 13
    :cond_5
    invoke-virtual {p1, v1}, Le/m/a/c/q1/t;->D(I)V

    :goto_3
    return v1
.end method

.method public c(Le/m/a/c/q1/t;J)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/m0;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v0, Le/m/a/c/g1/z/a;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 2
    invoke-virtual/range {p1 .. p1}, Le/m/a/c/q1/t;->a()I

    move-result v9

    .line 3
    iget-object v2, v0, Le/m/a/c/g1/z/d;->a:Le/m/a/c/g1/s;

    invoke-interface {v2, v1, v9}, Le/m/a/c/g1/s;->a(Le/m/a/c/q1/t;I)V

    .line 4
    iget-object v5, v0, Le/m/a/c/g1/z/d;->a:Le/m/a/c/g1/s;

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide/from16 v6, p2

    invoke-interface/range {v5 .. v11}, Le/m/a/c/g1/s;->c(JIIILe/m/a/c/g1/s$a;)V

    return v3

    .line 5
    :cond_0
    invoke-virtual/range {p1 .. p1}, Le/m/a/c/q1/t;->q()I

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 6
    iget-boolean v5, v0, Le/m/a/c/g1/z/a;->c:Z

    if-nez v5, :cond_1

    .line 7
    invoke-virtual/range {p1 .. p1}, Le/m/a/c/q1/t;->a()I

    move-result v2

    new-array v5, v2, [B

    .line 8
    iget-object v6, v1, Le/m/a/c/q1/t;->a:[B

    iget v7, v1, Le/m/a/c/q1/t;->b:I

    invoke-static {v6, v7, v5, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget v6, v1, Le/m/a/c/q1/t;->b:I

    add-int/2addr v6, v2

    iput v6, v1, Le/m/a/c/q1/t;->b:I

    .line 10
    new-instance v1, Le/m/a/c/q1/s;

    invoke-direct {v1, v5}, Le/m/a/c/q1/s;-><init>([B)V

    invoke-static {v1, v4}, Le/m/a/c/q1/g;->b(Le/m/a/c/q1/s;Z)Landroid/util/Pair;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    .line 11
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 12
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 13
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v7, "audio/mp4a-latm"

    .line 14
    invoke-static/range {v6 .. v16}, Lcom/google/android/exoplayer2/Format;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 15
    iget-object v2, v0, Le/m/a/c/g1/z/d;->a:Le/m/a/c/g1/s;

    invoke-interface {v2, v1}, Le/m/a/c/g1/s;->b(Lcom/google/android/exoplayer2/Format;)V

    .line 16
    iput-boolean v3, v0, Le/m/a/c/g1/z/a;->c:Z

    return v4

    .line 17
    :cond_1
    iget v5, v0, Le/m/a/c/g1/z/a;->d:I

    const/16 v6, 0xa

    if-ne v5, v6, :cond_3

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    return v4

    .line 18
    :cond_3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Le/m/a/c/q1/t;->a()I

    move-result v11

    .line 19
    iget-object v2, v0, Le/m/a/c/g1/z/d;->a:Le/m/a/c/g1/s;

    invoke-interface {v2, v1, v11}, Le/m/a/c/g1/s;->a(Le/m/a/c/q1/t;I)V

    .line 20
    iget-object v7, v0, Le/m/a/c/g1/z/d;->a:Le/m/a/c/g1/s;

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide/from16 v8, p2

    invoke-interface/range {v7 .. v13}, Le/m/a/c/g1/s;->c(JIIILe/m/a/c/g1/s$a;)V

    return v3
.end method
