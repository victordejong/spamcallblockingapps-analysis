.class public final Le/m/a/c/q1/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/q1/m$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:J

.field public final k:Le/m/a/c/q1/m$a;

.field public final l:Lcom/google/android/exoplayer2/metadata/Metadata;


# direct methods
.method public constructor <init>(IIIIIIIJLe/m/a/c/q1/m$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Le/m/a/c/q1/m;->a:I

    .line 20
    iput p2, p0, Le/m/a/c/q1/m;->b:I

    .line 21
    iput p3, p0, Le/m/a/c/q1/m;->c:I

    .line 22
    iput p4, p0, Le/m/a/c/q1/m;->d:I

    .line 23
    iput p5, p0, Le/m/a/c/q1/m;->e:I

    .line 24
    invoke-static {p5}, Le/m/a/c/q1/m;->h(I)I

    move-result p1

    iput p1, p0, Le/m/a/c/q1/m;->f:I

    .line 25
    iput p6, p0, Le/m/a/c/q1/m;->g:I

    .line 26
    iput p7, p0, Le/m/a/c/q1/m;->h:I

    .line 27
    invoke-static {p7}, Le/m/a/c/q1/m;->c(I)I

    move-result p1

    iput p1, p0, Le/m/a/c/q1/m;->i:I

    .line 28
    iput-wide p8, p0, Le/m/a/c/q1/m;->j:J

    .line 29
    iput-object p10, p0, Le/m/a/c/q1/m;->k:Le/m/a/c/q1/m$a;

    .line 30
    iput-object p11, p0, Le/m/a/c/q1/m;->l:Lcom/google/android/exoplayer2/metadata/Metadata;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/m/a/c/q1/s;

    invoke-direct {v0, p1}, Le/m/a/c/q1/s;-><init>([B)V

    mul-int/lit8 p2, p2, 0x8

    .line 3
    invoke-virtual {v0, p2}, Le/m/a/c/q1/s;->j(I)V

    const/16 p1, 0x10

    .line 4
    invoke-virtual {v0, p1}, Le/m/a/c/q1/s;->f(I)I

    move-result p2

    iput p2, p0, Le/m/a/c/q1/m;->a:I

    .line 5
    invoke-virtual {v0, p1}, Le/m/a/c/q1/s;->f(I)I

    move-result p1

    iput p1, p0, Le/m/a/c/q1/m;->b:I

    const/16 p1, 0x18

    .line 6
    invoke-virtual {v0, p1}, Le/m/a/c/q1/s;->f(I)I

    move-result p2

    iput p2, p0, Le/m/a/c/q1/m;->c:I

    .line 7
    invoke-virtual {v0, p1}, Le/m/a/c/q1/s;->f(I)I

    move-result p1

    iput p1, p0, Le/m/a/c/q1/m;->d:I

    const/16 p1, 0x14

    .line 8
    invoke-virtual {v0, p1}, Le/m/a/c/q1/s;->f(I)I

    move-result p1

    iput p1, p0, Le/m/a/c/q1/m;->e:I

    .line 9
    invoke-static {p1}, Le/m/a/c/q1/m;->h(I)I

    move-result p1

    iput p1, p0, Le/m/a/c/q1/m;->f:I

    const/4 p1, 0x3

    .line 10
    invoke-virtual {v0, p1}, Le/m/a/c/q1/s;->f(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Le/m/a/c/q1/m;->g:I

    const/4 p1, 0x5

    .line 11
    invoke-virtual {v0, p1}, Le/m/a/c/q1/s;->f(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Le/m/a/c/q1/m;->h:I

    .line 12
    invoke-static {p1}, Le/m/a/c/q1/m;->c(I)I

    move-result p1

    iput p1, p0, Le/m/a/c/q1/m;->i:I

    const/16 p1, 0x20

    const/4 p2, 0x4

    .line 13
    invoke-virtual {v0, p2}, Le/m/a/c/q1/s;->f(I)I

    move-result p2

    invoke-virtual {v0, p1}, Le/m/a/c/q1/s;->f(I)I

    move-result v0

    .line 14
    invoke-static {p2}, Le/m/a/c/q1/d0;->E(I)J

    move-result-wide v1

    shl-long p1, v1, p1

    invoke-static {v0}, Le/m/a/c/q1/d0;->E(I)J

    move-result-wide v0

    or-long/2addr p1, v0

    .line 15
    iput-wide p1, p0, Le/m/a/c/q1/m;->j:J

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Le/m/a/c/q1/m;->k:Le/m/a/c/q1/m$a;

    .line 17
    iput-object p1, p0, Le/m/a/c/q1/m;->l:Lcom/google/android/exoplayer2/metadata/Metadata;

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;",
            ">;)",
            "Lcom/google/android/exoplayer2/metadata/Metadata;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 3
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 4
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "="

    .line 5
    invoke-static {v4, v5}, Le/m/a/c/q1/d0;->C(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 6
    array-length v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    new-instance v5, Lcom/google/android/exoplayer2/metadata/flac/VorbisComment;

    aget-object v6, v4, v2

    const/4 v7, 0x1

    aget-object v4, v4, v7

    invoke-direct {v5, v6, v4}, Lcom/google/android/exoplayer2/metadata/flac/VorbisComment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    :goto_2
    return-object v1
.end method

.method public static c(I)I
    .locals 1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_4

    const/16 v0, 0xc

    if-eq p0, v0, :cond_3

    const/16 v0, 0x10

    if-eq p0, v0, :cond_2

    const/16 v0, 0x14

    if-eq p0, v0, :cond_1

    const/16 v0, 0x18

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x6

    return p0

    :cond_1
    const/4 p0, 0x5

    return p0

    :cond_2
    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x2

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static h(I)I
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, -0x1

    return p0

    :sswitch_0
    const/4 p0, 0x3

    return p0

    :sswitch_1
    const/4 p0, 0x2

    return p0

    :sswitch_2
    const/16 p0, 0xb

    return p0

    :sswitch_3
    const/4 p0, 0x1

    return p0

    :sswitch_4
    const/16 p0, 0xa

    return p0

    :sswitch_5
    const/16 p0, 0x9

    return p0

    :sswitch_6
    const/16 p0, 0x8

    return p0

    :sswitch_7
    const/4 p0, 0x7

    return p0

    :sswitch_8
    const/4 p0, 0x6

    return p0

    :sswitch_9
    const/4 p0, 0x5

    return p0

    :sswitch_a
    const/4 p0, 0x4

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1f40 -> :sswitch_a
        0x3e80 -> :sswitch_9
        0x5622 -> :sswitch_8
        0x5dc0 -> :sswitch_7
        0x7d00 -> :sswitch_6
        0xac44 -> :sswitch_5
        0xbb80 -> :sswitch_4
        0x15888 -> :sswitch_3
        0x17700 -> :sswitch_2
        0x2b110 -> :sswitch_1
        0x2ee00 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public b(Le/m/a/c/q1/m$a;)Le/m/a/c/q1/m;
    .locals 13

    .line 1
    new-instance v12, Le/m/a/c/q1/m;

    iget v1, p0, Le/m/a/c/q1/m;->a:I

    iget v2, p0, Le/m/a/c/q1/m;->b:I

    iget v3, p0, Le/m/a/c/q1/m;->c:I

    iget v4, p0, Le/m/a/c/q1/m;->d:I

    iget v5, p0, Le/m/a/c/q1/m;->e:I

    iget v6, p0, Le/m/a/c/q1/m;->g:I

    iget v7, p0, Le/m/a/c/q1/m;->h:I

    iget-wide v8, p0, Le/m/a/c/q1/m;->j:J

    iget-object v11, p0, Le/m/a/c/q1/m;->l:Lcom/google/android/exoplayer2/metadata/Metadata;

    move-object v0, v12

    move-object v10, p1

    invoke-direct/range {v0 .. v11}, Le/m/a/c/q1/m;-><init>(IIIIIIIJLe/m/a/c/q1/m$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v12
.end method

.method public d()J
    .locals 4

    .line 1
    iget-wide v0, p0, Le/m/a/c/q1/m;->j:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget v2, p0, Le/m/a/c/q1/m;->e:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public e([BLcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x4

    const/16 v2, -0x80

    .line 1
    aput-byte v2, p1, v1

    .line 2
    iget v1, v0, Le/m/a/c/q1/m;->d:I

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    move v6, v1

    move-object/from16 v1, p2

    .line 3
    invoke-virtual {v0, v1}, Le/m/a/c/q1/m;->f(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v16

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 4
    iget v1, v0, Le/m/a/c/q1/m;->h:I

    iget v8, v0, Le/m/a/c/q1/m;->e:I

    mul-int/2addr v1, v8

    iget v7, v0, Le/m/a/c/q1/m;->g:I

    mul-int v5, v1, v7

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 5
    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v3, "audio/flac"

    .line 6
    invoke-static/range {v2 .. v16}, Lcom/google/android/exoplayer2/Format;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    return-object v1
.end method

.method public f(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/q1/m;->l:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_1

    move-object p1, v0

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p1, Lcom/google/android/exoplayer2/metadata/Metadata;->a:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->a([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public g(J)J
    .locals 8

    .line 1
    iget v0, p0, Le/m/a/c/q1/m;->e:I

    int-to-long v0, v0

    mul-long/2addr p1, v0

    const-wide/32 v0, 0xf4240

    div-long v2, p1, v0

    .line 2
    iget-wide p1, p0, Le/m/a/c/q1/m;->j:J

    const-wide/16 v0, 0x1

    sub-long v6, p1, v0

    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, Le/m/a/c/q1/d0;->g(JJJ)J

    move-result-wide p1

    return-wide p1
.end method
