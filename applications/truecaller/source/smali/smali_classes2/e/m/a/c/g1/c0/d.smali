.class public Le/m/a/c/g1/c0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/g1/c0/d$b;,
        Le/m/a/c/g1/c0/d$a;
    }
.end annotation


# static fields
.field public static final F:[B

.field public static final G:Lcom/google/android/exoplayer2/Format;


# instance fields
.field public A:Z

.field public B:Le/m/a/c/g1/i;

.field public C:[Le/m/a/c/g1/s;

.field public D:[Le/m/a/c/g1/s;

.field public E:Z

.field public final a:I

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Le/m/a/c/g1/c0/d$b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/m/a/c/q1/t;

.field public final e:Le/m/a/c/q1/t;

.field public final f:Le/m/a/c/q1/t;

.field public final g:[B

.field public final h:Le/m/a/c/q1/t;

.field public final i:Le/m/a/c/i1/g/b;

.field public final j:Le/m/a/c/q1/t;

.field public final k:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Le/m/a/c/g1/c0/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Le/m/a/c/g1/c0/d$a;",
            ">;"
        }
    .end annotation
.end field

.field public m:I

.field public n:I

.field public o:J

.field public p:I

.field public q:Le/m/a/c/q1/t;

.field public r:J

.field public s:I

.field public t:J

.field public u:J

.field public v:J

.field public w:Le/m/a/c/g1/c0/d$b;

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Le/m/a/c/g1/c0/d;->F:[B

    const/4 v0, 0x0

    const-string v1, "application/x-emsg"

    const-wide v2, 0x7fffffffffffffffL

    .line 2
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/Format;->i(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    sput-object v0, Le/m/a/c/g1/c0/d;->G:Lcom/google/android/exoplayer2/Format;

    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    or-int/lit8 p1, p1, 0x0

    .line 3
    iput p1, p0, Le/m/a/c/g1/c0/d;->a:I

    .line 4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Le/m/a/c/g1/c0/d;->b:Ljava/util/List;

    .line 5
    new-instance p1, Le/m/a/c/i1/g/b;

    invoke-direct {p1}, Le/m/a/c/i1/g/b;-><init>()V

    iput-object p1, p0, Le/m/a/c/g1/c0/d;->i:Le/m/a/c/i1/g/b;

    .line 6
    new-instance p1, Le/m/a/c/q1/t;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Le/m/a/c/q1/t;-><init>(I)V

    iput-object p1, p0, Le/m/a/c/g1/c0/d;->j:Le/m/a/c/q1/t;

    .line 7
    new-instance p1, Le/m/a/c/q1/t;

    sget-object v1, Le/m/a/c/q1/r;->a:[B

    invoke-direct {p1, v1}, Le/m/a/c/q1/t;-><init>([B)V

    iput-object p1, p0, Le/m/a/c/g1/c0/d;->d:Le/m/a/c/q1/t;

    .line 8
    new-instance p1, Le/m/a/c/q1/t;

    const/4 v1, 0x5

    invoke-direct {p1, v1}, Le/m/a/c/q1/t;-><init>(I)V

    iput-object p1, p0, Le/m/a/c/g1/c0/d;->e:Le/m/a/c/q1/t;

    .line 9
    new-instance p1, Le/m/a/c/q1/t;

    invoke-direct {p1}, Le/m/a/c/q1/t;-><init>()V

    iput-object p1, p0, Le/m/a/c/g1/c0/d;->f:Le/m/a/c/q1/t;

    new-array p1, v0, [B

    .line 10
    iput-object p1, p0, Le/m/a/c/g1/c0/d;->g:[B

    .line 11
    new-instance v0, Le/m/a/c/q1/t;

    invoke-direct {v0, p1}, Le/m/a/c/q1/t;-><init>([B)V

    iput-object v0, p0, Le/m/a/c/g1/c0/d;->h:Le/m/a/c/q1/t;

    .line 12
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Le/m/a/c/g1/c0/d;->k:Ljava/util/ArrayDeque;

    .line 13
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Le/m/a/c/g1/c0/d;->l:Ljava/util/ArrayDeque;

    .line 14
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Le/m/a/c/g1/c0/d;->c:Landroid/util/SparseArray;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    iput-wide v0, p0, Le/m/a/c/g1/c0/d;->u:J

    .line 16
    iput-wide v0, p0, Le/m/a/c/g1/c0/d;->t:J

    .line 17
    iput-wide v0, p0, Le/m/a/c/g1/c0/d;->v:J

    .line 18
    invoke-virtual {p0}, Le/m/a/c/g1/c0/d;->b()V

    return-void
.end method

.method public static e(Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/m/a/c/g1/c0/a$b;",
            ">;)",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move-object v4, v2

    :goto_0
    if-ge v3, v0, :cond_a

    .line 2
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/m/a/c/g1/c0/a$b;

    .line 3
    iget v6, v5, Le/m/a/c/g1/c0/a;->a:I

    const v7, 0x70737368    # 3.013775E29f

    if-ne v6, v7, :cond_9

    if-nez v4, :cond_0

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :cond_0
    iget-object v5, v5, Le/m/a/c/g1/c0/a$b;->b:Le/m/a/c/q1/t;

    iget-object v5, v5, Le/m/a/c/q1/t;->a:[B

    .line 6
    new-instance v6, Le/m/a/c/q1/t;

    invoke-direct {v6, v5}, Le/m/a/c/q1/t;-><init>([B)V

    .line 7
    iget v8, v6, Le/m/a/c/q1/t;->c:I

    const/16 v9, 0x20

    if-ge v8, v9, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v6, v1}, Le/m/a/c/q1/t;->C(I)V

    .line 9
    invoke-virtual {v6}, Le/m/a/c/q1/t;->e()I

    move-result v8

    .line 10
    invoke-virtual {v6}, Le/m/a/c/q1/t;->a()I

    move-result v9

    add-int/lit8 v9, v9, 0x4

    if-eq v8, v9, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v6}, Le/m/a/c/q1/t;->e()I

    move-result v8

    if-eq v8, v7, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {v6}, Le/m/a/c/q1/t;->e()I

    move-result v7

    shr-int/lit8 v7, v7, 0x18

    and-int/lit16 v7, v7, 0xff

    const/4 v8, 0x1

    if-le v7, v8, :cond_4

    goto :goto_1

    .line 13
    :cond_4
    new-instance v9, Ljava/util/UUID;

    invoke-virtual {v6}, Le/m/a/c/q1/t;->k()J

    move-result-wide v10

    invoke-virtual {v6}, Le/m/a/c/q1/t;->k()J

    move-result-wide v12

    invoke-direct {v9, v10, v11, v12, v13}, Ljava/util/UUID;-><init>(JJ)V

    if-ne v7, v8, :cond_5

    .line 14
    invoke-virtual {v6}, Le/m/a/c/q1/t;->t()I

    move-result v8

    mul-int/lit8 v8, v8, 0x10

    .line 15
    invoke-virtual {v6, v8}, Le/m/a/c/q1/t;->D(I)V

    .line 16
    :cond_5
    invoke-virtual {v6}, Le/m/a/c/q1/t;->t()I

    move-result v8

    .line 17
    invoke-virtual {v6}, Le/m/a/c/q1/t;->a()I

    move-result v10

    if-eq v8, v10, :cond_6

    :goto_1
    move-object v6, v2

    goto :goto_2

    .line 18
    :cond_6
    new-array v10, v8, [B

    .line 19
    iget-object v11, v6, Le/m/a/c/q1/t;->a:[B

    iget v12, v6, Le/m/a/c/q1/t;->b:I

    invoke-static {v11, v12, v10, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    iget v11, v6, Le/m/a/c/q1/t;->b:I

    add-int/2addr v11, v8

    iput v11, v6, Le/m/a/c/q1/t;->b:I

    .line 21
    new-instance v6, Le/m/a/c/g1/c0/g;

    invoke-direct {v6, v9, v7, v10}, Le/m/a/c/g1/c0/g;-><init>(Ljava/util/UUID;I[B)V

    :goto_2
    if-nez v6, :cond_7

    move-object v6, v2

    goto :goto_3

    .line 22
    :cond_7
    iget-object v6, v6, Le/m/a/c/g1/c0/g;->a:Ljava/util/UUID;

    :goto_3
    if-nez v6, :cond_8

    goto :goto_4

    .line 23
    :cond_8
    new-instance v7, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    const-string v8, "video/mp4"

    invoke-direct {v7, v6, v8, v5}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    if-nez v4, :cond_b

    goto :goto_5

    .line 24
    :cond_b
    new-instance p0, Lcom/google/android/exoplayer2/drm/DrmInitData;

    new-array v0, v1, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 25
    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    invoke-direct {p0, v2, v1, v0}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/lang/String;Z[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)V

    move-object v2, p0

    :goto_5
    return-object v2
.end method

.method public static g(Le/m/a/c/q1/t;ILe/m/a/c/g1/c0/k;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/m0;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    .line 1
    invoke-virtual {p0, p1}, Le/m/a/c/q1/t;->C(I)V

    .line 2
    invoke-virtual {p0}, Le/m/a/c/q1/t;->e()I

    move-result p1

    const v0, 0xffffff

    and-int/2addr p1, v0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_2

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Le/m/a/c/q1/t;->t()I

    move-result v1

    .line 4
    iget v2, p2, Le/m/a/c/g1/c0/k;->e:I

    if-ne v1, v2, :cond_1

    .line 5
    iget-object v2, p2, Le/m/a/c/g1/c0/k;->m:[Z

    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 6
    invoke-virtual {p0}, Le/m/a/c/q1/t;->a()I

    move-result p1

    invoke-virtual {p2, p1}, Le/m/a/c/g1/c0/k;->a(I)V

    .line 7
    iget-object p1, p2, Le/m/a/c/g1/c0/k;->p:Le/m/a/c/q1/t;

    iget-object p1, p1, Le/m/a/c/q1/t;->a:[B

    iget v1, p2, Le/m/a/c/g1/c0/k;->o:I

    invoke-virtual {p0, p1, v0, v1}, Le/m/a/c/q1/t;->d([BII)V

    .line 8
    iget-object p0, p2, Le/m/a/c/g1/c0/k;->p:Le/m/a/c/q1/t;

    invoke-virtual {p0, v0}, Le/m/a/c/q1/t;->C(I)V

    .line 9
    iput-boolean v0, p2, Le/m/a/c/g1/c0/k;->q:Z

    return-void

    .line 10
    :cond_1
    new-instance p0, Le/m/a/c/m0;

    const-string p1, "Length mismatch: "

    const-string v0, ", "

    invoke-static {p1, v1, v0}, Le/d/c/a/a;->E(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p2, Le/m/a/c/g1/c0/k;->e:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_2
    new-instance p0, Le/m/a/c/m0;

    const-string p1, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-direct {p0, p1}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(JJ)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/m/a/c/g1/c0/d;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-ge v0, p1, :cond_0

    .line 2
    iget-object v1, p0, Le/m/a/c/g1/c0/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/c/g1/c0/d$b;

    invoke-virtual {v1}, Le/m/a/c/g1/c0/d$b;->e()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Le/m/a/c/g1/c0/d;->l:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 4
    iput p2, p0, Le/m/a/c/g1/c0/d;->s:I

    .line 5
    iput-wide p3, p0, Le/m/a/c/g1/c0/d;->t:J

    .line 6
    iget-object p1, p0, Le/m/a/c/g1/c0/d;->k:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 7
    invoke-virtual {p0}, Le/m/a/c/g1/c0/d;->b()V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Le/m/a/c/g1/c0/d;->m:I

    .line 2
    iput v0, p0, Le/m/a/c/g1/c0/d;->p:I

    return-void
.end method

.method public final c(Landroid/util/SparseArray;I)Le/m/a/c/g1/c0/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Le/m/a/c/g1/c0/c;",
            ">;I)",
            "Le/m/a/c/g1/c0/c;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/a/c/g1/c0/c;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    check-cast p1, Le/m/a/c/g1/c0/c;

    return-object p1
.end method

.method public d(Le/m/a/c/g1/e;Le/m/a/c/g1/p;)I
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    :cond_0
    :goto_0
    iget v2, v1, Le/m/a/c/g1/c0/d;->m:I

    const v3, 0x656d7367

    const v4, 0x73696478

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x1

    if-eqz v2, :cond_32

    if-eq v2, v9, :cond_23

    const-wide v3, 0x7fffffffffffffffL

    const/4 v11, 0x3

    if-eq v2, v6, :cond_1e

    const/4 v12, 0x6

    if-ne v2, v11, :cond_10

    .line 2
    iget-object v2, v1, Le/m/a/c/g1/c0/d;->w:Le/m/a/c/g1/c0/d$b;

    if-nez v2, :cond_7

    .line 3
    iget-object v2, v1, Le/m/a/c/g1/c0/d;->c:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v13

    move-object v15, v7

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_3

    .line 5
    invoke-virtual {v2, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Le/m/a/c/g1/c0/d$b;

    .line 6
    iget v10, v6, Le/m/a/c/g1/c0/d$b;->h:I

    iget-object v8, v6, Le/m/a/c/g1/c0/d$b;->b:Le/m/a/c/g1/c0/k;

    iget v5, v8, Le/m/a/c/g1/c0/k;->d:I

    if-ne v10, v5, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    iget-object v5, v8, Le/m/a/c/g1/c0/k;->f:[J

    aget-wide v19, v5, v10

    cmp-long v5, v19, v3

    if-gez v5, :cond_2

    move-object v15, v6

    move-wide/from16 v3, v19

    :cond_2
    :goto_2
    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x2

    goto :goto_1

    :cond_3
    if-nez v15, :cond_5

    .line 8
    iget-wide v2, v1, Le/m/a/c/g1/c0/d;->r:J

    .line 9
    iget-wide v4, v0, Le/m/a/c/g1/e;->d:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    if-ltz v2, :cond_4

    .line 10
    invoke-virtual {v0, v2}, Le/m/a/c/g1/e;->i(I)V

    .line 11
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/g1/c0/d;->b()V

    const/4 v9, 0x0

    goto/16 :goto_e

    .line 12
    :cond_4
    new-instance v0, Le/m/a/c/m0;

    const-string v2, "Offset to end of mdat was negative."

    invoke-direct {v0, v2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_5
    iget-object v2, v15, Le/m/a/c/g1/c0/d$b;->b:Le/m/a/c/g1/c0/k;

    iget-object v2, v2, Le/m/a/c/g1/c0/k;->f:[J

    iget v3, v15, Le/m/a/c/g1/c0/d$b;->h:I

    aget-wide v3, v2, v3

    .line 14
    iget-wide v5, v0, Le/m/a/c/g1/e;->d:J

    sub-long/2addr v3, v5

    long-to-int v2, v3

    if-gez v2, :cond_6

    const/4 v2, 0x0

    .line 15
    :cond_6
    invoke-virtual {v0, v2}, Le/m/a/c/g1/e;->i(I)V

    .line 16
    iput-object v15, v1, Le/m/a/c/g1/c0/d;->w:Le/m/a/c/g1/c0/d$b;

    .line 17
    :cond_7
    iget-object v2, v1, Le/m/a/c/g1/c0/d;->w:Le/m/a/c/g1/c0/d$b;

    iget-object v3, v2, Le/m/a/c/g1/c0/d$b;->b:Le/m/a/c/g1/c0/k;

    iget-object v3, v3, Le/m/a/c/g1/c0/k;->h:[I

    iget v4, v2, Le/m/a/c/g1/c0/d$b;->f:I

    aget v3, v3, v4

    iput v3, v1, Le/m/a/c/g1/c0/d;->x:I

    .line 18
    iget v5, v2, Le/m/a/c/g1/c0/d$b;->i:I

    if-ge v4, v5, :cond_d

    .line 19
    invoke-virtual {v0, v3}, Le/m/a/c/g1/e;->i(I)V

    .line 20
    iget-object v2, v1, Le/m/a/c/g1/c0/d;->w:Le/m/a/c/g1/c0/d$b;

    .line 21
    invoke-virtual {v2}, Le/m/a/c/g1/c0/d$b;->a()Le/m/a/c/g1/c0/j;

    move-result-object v3

    if-nez v3, :cond_8

    goto :goto_4

    .line 22
    :cond_8
    iget-object v4, v2, Le/m/a/c/g1/c0/d$b;->b:Le/m/a/c/g1/c0/k;

    iget-object v4, v4, Le/m/a/c/g1/c0/k;->p:Le/m/a/c/q1/t;

    .line 23
    iget v3, v3, Le/m/a/c/g1/c0/j;->d:I

    if-eqz v3, :cond_9

    .line 24
    invoke-virtual {v4, v3}, Le/m/a/c/q1/t;->D(I)V

    .line 25
    :cond_9
    iget-object v3, v2, Le/m/a/c/g1/c0/d$b;->b:Le/m/a/c/g1/c0/k;

    iget v2, v2, Le/m/a/c/g1/c0/d$b;->f:I

    .line 26
    iget-boolean v5, v3, Le/m/a/c/g1/c0/k;->l:Z

    if-eqz v5, :cond_a

    iget-object v3, v3, Le/m/a/c/g1/c0/k;->m:[Z

    aget-boolean v2, v3, v2

    if-eqz v2, :cond_a

    move v2, v9

    goto :goto_3

    :cond_a
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_b

    .line 27
    invoke-virtual {v4}, Le/m/a/c/q1/t;->v()I

    move-result v2

    mul-int/2addr v2, v12

    invoke-virtual {v4, v2}, Le/m/a/c/q1/t;->D(I)V

    .line 28
    :cond_b
    :goto_4
    iget-object v2, v1, Le/m/a/c/g1/c0/d;->w:Le/m/a/c/g1/c0/d$b;

    invoke-virtual {v2}, Le/m/a/c/g1/c0/d$b;->c()Z

    move-result v2

    if-nez v2, :cond_c

    .line 29
    iput-object v7, v1, Le/m/a/c/g1/c0/d;->w:Le/m/a/c/g1/c0/d$b;

    .line 30
    :cond_c
    iput v11, v1, Le/m/a/c/g1/c0/d;->m:I

    goto/16 :goto_e

    .line 31
    :cond_d
    iget-object v2, v2, Le/m/a/c/g1/c0/d$b;->d:Le/m/a/c/g1/c0/i;

    iget v2, v2, Le/m/a/c/g1/c0/i;->g:I

    if-ne v2, v9, :cond_e

    add-int/lit8 v3, v3, -0x8

    .line 32
    iput v3, v1, Le/m/a/c/g1/c0/d;->x:I

    const/16 v2, 0x8

    .line 33
    invoke-virtual {v0, v2}, Le/m/a/c/g1/e;->i(I)V

    .line 34
    :cond_e
    iget-object v2, v1, Le/m/a/c/g1/c0/d;->w:Le/m/a/c/g1/c0/d$b;

    iget-object v2, v2, Le/m/a/c/g1/c0/d$b;->d:Le/m/a/c/g1/c0/i;

    iget-object v2, v2, Le/m/a/c/g1/c0/i;->f:Lcom/google/android/exoplayer2/Format;

    iget-object v2, v2, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    const-string v3, "audio/ac4"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 35
    iget-object v2, v1, Le/m/a/c/g1/c0/d;->w:Le/m/a/c/g1/c0/d$b;

    iget v3, v1, Le/m/a/c/g1/c0/d;->x:I

    const/4 v4, 0x7

    .line 36
    invoke-virtual {v2, v3, v4}, Le/m/a/c/g1/c0/d$b;->d(II)I

    move-result v2

    iput v2, v1, Le/m/a/c/g1/c0/d;->y:I

    .line 37
    iget v2, v1, Le/m/a/c/g1/c0/d;->x:I

    iget-object v3, v1, Le/m/a/c/g1/c0/d;->h:Le/m/a/c/q1/t;

    invoke-static {v2, v3}, Le/m/a/c/c1/h;->a(ILe/m/a/c/q1/t;)V

    .line 38
    iget-object v2, v1, Le/m/a/c/g1/c0/d;->w:Le/m/a/c/g1/c0/d$b;

    iget-object v2, v2, Le/m/a/c/g1/c0/d$b;->a:Le/m/a/c/g1/s;

    iget-object v3, v1, Le/m/a/c/g1/c0/d;->h:Le/m/a/c/q1/t;

    invoke-interface {v2, v3, v4}, Le/m/a/c/g1/s;->a(Le/m/a/c/q1/t;I)V

    .line 39
    iget v2, v1, Le/m/a/c/g1/c0/d;->y:I

    add-int/2addr v2, v4

    iput v2, v1, Le/m/a/c/g1/c0/d;->y:I

    const/4 v4, 0x0

    goto :goto_5

    .line 40
    :cond_f
    iget-object v2, v1, Le/m/a/c/g1/c0/d;->w:Le/m/a/c/g1/c0/d$b;

    iget v3, v1, Le/m/a/c/g1/c0/d;->x:I

    const/4 v4, 0x0

    .line 41
    invoke-virtual {v2, v3, v4}, Le/m/a/c/g1/c0/d$b;->d(II)I

    move-result v2

    iput v2, v1, Le/m/a/c/g1/c0/d;->y:I

    .line 42
    :goto_5
    iget v2, v1, Le/m/a/c/g1/c0/d;->x:I

    iget v3, v1, Le/m/a/c/g1/c0/d;->y:I

    add-int/2addr v2, v3

    iput v2, v1, Le/m/a/c/g1/c0/d;->x:I

    const/4 v2, 0x4

    .line 43
    iput v2, v1, Le/m/a/c/g1/c0/d;->m:I

    .line 44
    iput v4, v1, Le/m/a/c/g1/c0/d;->z:I

    .line 45
    :cond_10
    iget-object v2, v1, Le/m/a/c/g1/c0/d;->w:Le/m/a/c/g1/c0/d$b;

    iget-object v3, v2, Le/m/a/c/g1/c0/d$b;->b:Le/m/a/c/g1/c0/k;

    .line 46
    iget-object v4, v2, Le/m/a/c/g1/c0/d$b;->d:Le/m/a/c/g1/c0/i;

    .line 47
    iget-object v5, v2, Le/m/a/c/g1/c0/d$b;->a:Le/m/a/c/g1/s;

    .line 48
    iget v2, v2, Le/m/a/c/g1/c0/d$b;->f:I

    .line 49
    iget-object v6, v3, Le/m/a/c/g1/c0/k;->j:[J

    aget-wide v13, v6, v2

    iget-object v6, v3, Le/m/a/c/g1/c0/k;->i:[I

    aget v6, v6, v2

    int-to-long v7, v6

    add-long/2addr v13, v7

    const-wide/16 v6, 0x3e8

    mul-long/2addr v13, v6

    .line 50
    iget v6, v4, Le/m/a/c/g1/c0/i;->j:I

    if-eqz v6, :cond_18

    .line 51
    iget-object v7, v1, Le/m/a/c/g1/c0/d;->e:Le/m/a/c/q1/t;

    iget-object v7, v7, Le/m/a/c/q1/t;->a:[B

    const/4 v8, 0x0

    .line 52
    aput-byte v8, v7, v8

    .line 53
    aput-byte v8, v7, v9

    const/4 v15, 0x2

    .line 54
    aput-byte v8, v7, v15

    add-int/lit8 v8, v6, 0x1

    rsub-int/lit8 v6, v6, 0x4

    .line 55
    :goto_6
    iget v15, v1, Le/m/a/c/g1/c0/d;->y:I

    iget v10, v1, Le/m/a/c/g1/c0/d;->x:I

    if-ge v15, v10, :cond_19

    .line 56
    iget v10, v1, Le/m/a/c/g1/c0/d;->z:I

    const-string v15, "video/hevc"

    if-nez v10, :cond_16

    const/4 v11, 0x0

    .line 57
    invoke-virtual {v0, v7, v6, v8, v11}, Le/m/a/c/g1/e;->h([BIIZ)Z

    .line 58
    iget-object v10, v1, Le/m/a/c/g1/c0/d;->e:Le/m/a/c/q1/t;

    invoke-virtual {v10, v11}, Le/m/a/c/q1/t;->C(I)V

    .line 59
    iget-object v10, v1, Le/m/a/c/g1/c0/d;->e:Le/m/a/c/q1/t;

    invoke-virtual {v10}, Le/m/a/c/q1/t;->e()I

    move-result v10

    if-lt v10, v9, :cond_15

    add-int/lit8 v10, v10, -0x1

    .line 60
    iput v10, v1, Le/m/a/c/g1/c0/d;->z:I

    .line 61
    iget-object v10, v1, Le/m/a/c/g1/c0/d;->d:Le/m/a/c/q1/t;

    invoke-virtual {v10, v11}, Le/m/a/c/q1/t;->C(I)V

    .line 62
    iget-object v10, v1, Le/m/a/c/g1/c0/d;->d:Le/m/a/c/q1/t;

    const/4 v11, 0x4

    invoke-interface {v5, v10, v11}, Le/m/a/c/g1/s;->a(Le/m/a/c/q1/t;I)V

    .line 63
    iget-object v10, v1, Le/m/a/c/g1/c0/d;->e:Le/m/a/c/q1/t;

    invoke-interface {v5, v10, v9}, Le/m/a/c/g1/s;->a(Le/m/a/c/q1/t;I)V

    .line 64
    iget-object v10, v1, Le/m/a/c/g1/c0/d;->D:[Le/m/a/c/g1/s;

    array-length v10, v10

    if-lez v10, :cond_14

    iget-object v10, v4, Le/m/a/c/g1/c0/i;->f:Lcom/google/android/exoplayer2/Format;

    iget-object v10, v10, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    aget-byte v18, v7, v11

    .line 65
    sget-object v11, Le/m/a/c/q1/r;->a:[B

    const-string v11, "video/avc"

    .line 66
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    and-int/lit8 v11, v18, 0x1f

    if-eq v11, v12, :cond_12

    .line 67
    :cond_11
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    and-int/lit8 v10, v18, 0x7e

    shr-int/2addr v10, v9

    const/16 v11, 0x27

    if-ne v10, v11, :cond_13

    :cond_12
    move v10, v9

    goto :goto_7

    :cond_13
    const/4 v10, 0x0

    :goto_7
    if-eqz v10, :cond_14

    move v10, v9

    goto :goto_8

    :cond_14
    const/4 v10, 0x0

    .line 68
    :goto_8
    iput-boolean v10, v1, Le/m/a/c/g1/c0/d;->A:Z

    .line 69
    iget v10, v1, Le/m/a/c/g1/c0/d;->y:I

    add-int/lit8 v10, v10, 0x5

    iput v10, v1, Le/m/a/c/g1/c0/d;->y:I

    .line 70
    iget v10, v1, Le/m/a/c/g1/c0/d;->x:I

    add-int/2addr v10, v6

    iput v10, v1, Le/m/a/c/g1/c0/d;->x:I

    goto :goto_a

    .line 71
    :cond_15
    new-instance v0, Le/m/a/c/m0;

    const-string v2, "Invalid NAL length"

    invoke-direct {v0, v2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_16
    iget-boolean v11, v1, Le/m/a/c/g1/c0/d;->A:Z

    if-eqz v11, :cond_17

    .line 73
    iget-object v11, v1, Le/m/a/c/g1/c0/d;->f:Le/m/a/c/q1/t;

    invoke-virtual {v11, v10}, Le/m/a/c/q1/t;->y(I)V

    .line 74
    iget-object v10, v1, Le/m/a/c/g1/c0/d;->f:Le/m/a/c/q1/t;

    iget-object v10, v10, Le/m/a/c/q1/t;->a:[B

    iget v11, v1, Le/m/a/c/g1/c0/d;->z:I

    const/4 v12, 0x0

    .line 75
    invoke-virtual {v0, v10, v12, v11, v12}, Le/m/a/c/g1/e;->h([BIIZ)Z

    .line 76
    iget-object v10, v1, Le/m/a/c/g1/c0/d;->f:Le/m/a/c/q1/t;

    iget v11, v1, Le/m/a/c/g1/c0/d;->z:I

    invoke-interface {v5, v10, v11}, Le/m/a/c/g1/s;->a(Le/m/a/c/q1/t;I)V

    .line 77
    iget v10, v1, Le/m/a/c/g1/c0/d;->z:I

    .line 78
    iget-object v11, v1, Le/m/a/c/g1/c0/d;->f:Le/m/a/c/q1/t;

    iget-object v12, v11, Le/m/a/c/q1/t;->a:[B

    .line 79
    iget v11, v11, Le/m/a/c/q1/t;->c:I

    .line 80
    invoke-static {v12, v11}, Le/m/a/c/q1/r;->e([BI)I

    move-result v11

    .line 81
    iget-object v12, v1, Le/m/a/c/g1/c0/d;->f:Le/m/a/c/q1/t;

    iget-object v9, v4, Le/m/a/c/g1/c0/i;->f:Lcom/google/android/exoplayer2/Format;

    iget-object v9, v9, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v12, v9}, Le/m/a/c/q1/t;->C(I)V

    .line 82
    iget-object v9, v1, Le/m/a/c/g1/c0/d;->f:Le/m/a/c/q1/t;

    invoke-virtual {v9, v11}, Le/m/a/c/q1/t;->B(I)V

    .line 83
    iget-object v9, v1, Le/m/a/c/g1/c0/d;->f:Le/m/a/c/q1/t;

    iget-object v11, v1, Le/m/a/c/g1/c0/d;->D:[Le/m/a/c/g1/s;

    invoke-static {v13, v14, v9, v11}, Ln3/g0/y;->D(JLe/m/a/c/q1/t;[Le/m/a/c/g1/s;)V

    goto :goto_9

    :cond_17
    const/4 v9, 0x0

    .line 84
    invoke-interface {v5, v0, v10, v9}, Le/m/a/c/g1/s;->d(Le/m/a/c/g1/e;IZ)I

    move-result v10

    .line 85
    :goto_9
    iget v9, v1, Le/m/a/c/g1/c0/d;->y:I

    add-int/2addr v9, v10

    iput v9, v1, Le/m/a/c/g1/c0/d;->y:I

    .line 86
    iget v9, v1, Le/m/a/c/g1/c0/d;->z:I

    sub-int/2addr v9, v10

    iput v9, v1, Le/m/a/c/g1/c0/d;->z:I

    :goto_a
    const/4 v9, 0x1

    const/4 v11, 0x3

    const/4 v12, 0x6

    goto/16 :goto_6

    .line 87
    :cond_18
    :goto_b
    iget v4, v1, Le/m/a/c/g1/c0/d;->y:I

    iget v6, v1, Le/m/a/c/g1/c0/d;->x:I

    if-ge v4, v6, :cond_19

    sub-int/2addr v6, v4

    const/4 v4, 0x0

    .line 88
    invoke-interface {v5, v0, v6, v4}, Le/m/a/c/g1/s;->d(Le/m/a/c/g1/e;IZ)I

    move-result v6

    .line 89
    iget v4, v1, Le/m/a/c/g1/c0/d;->y:I

    add-int/2addr v4, v6

    iput v4, v1, Le/m/a/c/g1/c0/d;->y:I

    goto :goto_b

    .line 90
    :cond_19
    iget-object v3, v3, Le/m/a/c/g1/c0/k;->k:[Z

    aget-boolean v2, v3, v2

    .line 91
    iget-object v3, v1, Le/m/a/c/g1/c0/d;->w:Le/m/a/c/g1/c0/d$b;

    .line 92
    invoke-virtual {v3}, Le/m/a/c/g1/c0/d$b;->a()Le/m/a/c/g1/c0/j;

    move-result-object v3

    if-eqz v3, :cond_1a

    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v2, v4

    .line 93
    iget-object v3, v3, Le/m/a/c/g1/c0/j;->c:Le/m/a/c/g1/s$a;

    move/from16 v21, v2

    move-object/from16 v24, v3

    goto :goto_c

    :cond_1a
    move/from16 v21, v2

    const/16 v24, 0x0

    .line 94
    :goto_c
    iget v2, v1, Le/m/a/c/g1/c0/d;->x:I

    const/16 v23, 0x0

    move-object/from16 v18, v5

    move-wide/from16 v19, v13

    move/from16 v22, v2

    invoke-interface/range {v18 .. v24}, Le/m/a/c/g1/s;->c(JIIILe/m/a/c/g1/s$a;)V

    .line 95
    :cond_1b
    iget-object v2, v1, Le/m/a/c/g1/c0/d;->l:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 96
    iget-object v2, v1, Le/m/a/c/g1/c0/d;->l:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/a/c/g1/c0/d$a;

    .line 97
    iget v3, v1, Le/m/a/c/g1/c0/d;->s:I

    iget v4, v2, Le/m/a/c/g1/c0/d$a;->b:I

    sub-int/2addr v3, v4

    iput v3, v1, Le/m/a/c/g1/c0/d;->s:I

    .line 98
    iget-wide v3, v2, Le/m/a/c/g1/c0/d$a;->a:J

    add-long/2addr v3, v13

    .line 99
    iget-object v12, v1, Le/m/a/c/g1/c0/d;->C:[Le/m/a/c/g1/s;

    array-length v15, v12

    const/4 v11, 0x0

    :goto_d
    if-ge v11, v15, :cond_1b

    aget-object v5, v12, v11

    const/4 v8, 0x1

    .line 100
    iget v9, v2, Le/m/a/c/g1/c0/d$a;->b:I

    iget v10, v1, Le/m/a/c/g1/c0/d;->s:I

    const/16 v16, 0x0

    move-wide v6, v3

    move/from16 v18, v11

    move-object/from16 v11, v16

    invoke-interface/range {v5 .. v11}, Le/m/a/c/g1/s;->c(JIIILe/m/a/c/g1/s$a;)V

    add-int/lit8 v11, v18, 0x1

    goto :goto_d

    .line 101
    :cond_1c
    iget-object v2, v1, Le/m/a/c/g1/c0/d;->w:Le/m/a/c/g1/c0/d$b;

    invoke-virtual {v2}, Le/m/a/c/g1/c0/d$b;->c()Z

    move-result v2

    if-nez v2, :cond_1d

    const/4 v2, 0x0

    .line 102
    iput-object v2, v1, Le/m/a/c/g1/c0/d;->w:Le/m/a/c/g1/c0/d$b;

    :cond_1d
    const/4 v2, 0x3

    .line 103
    iput v2, v1, Le/m/a/c/g1/c0/d;->m:I

    const/4 v9, 0x1

    :goto_e
    if-eqz v9, :cond_0

    const/4 v2, 0x0

    return v2

    .line 104
    :cond_1e
    iget-object v2, v1, Le/m/a/c/g1/c0/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_f
    if-ge v5, v2, :cond_20

    .line 105
    iget-object v6, v1, Le/m/a/c/g1/c0/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/m/a/c/g1/c0/d$b;

    iget-object v6, v6, Le/m/a/c/g1/c0/d$b;->b:Le/m/a/c/g1/c0/k;

    .line 106
    iget-boolean v8, v6, Le/m/a/c/g1/c0/k;->q:Z

    if-eqz v8, :cond_1f

    iget-wide v8, v6, Le/m/a/c/g1/c0/k;->c:J

    cmp-long v6, v8, v3

    if-gez v6, :cond_1f

    .line 107
    iget-object v3, v1, Le/m/a/c/g1/c0/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/a/c/g1/c0/d$b;

    move-object v7, v3

    move-wide v3, v8

    :cond_1f
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_20
    if-nez v7, :cond_21

    const/4 v2, 0x3

    .line 108
    iput v2, v1, Le/m/a/c/g1/c0/d;->m:I

    goto/16 :goto_0

    .line 109
    :cond_21
    iget-wide v5, v0, Le/m/a/c/g1/e;->d:J

    sub-long/2addr v3, v5

    long-to-int v2, v3

    if-ltz v2, :cond_22

    .line 110
    invoke-virtual {v0, v2}, Le/m/a/c/g1/e;->i(I)V

    .line 111
    iget-object v2, v7, Le/m/a/c/g1/c0/d$b;->b:Le/m/a/c/g1/c0/k;

    .line 112
    iget-object v3, v2, Le/m/a/c/g1/c0/k;->p:Le/m/a/c/q1/t;

    iget-object v3, v3, Le/m/a/c/q1/t;->a:[B

    iget v4, v2, Le/m/a/c/g1/c0/k;->o:I

    const/4 v5, 0x0

    .line 113
    invoke-virtual {v0, v3, v5, v4, v5}, Le/m/a/c/g1/e;->h([BIIZ)Z

    .line 114
    iget-object v3, v2, Le/m/a/c/g1/c0/k;->p:Le/m/a/c/q1/t;

    invoke-virtual {v3, v5}, Le/m/a/c/q1/t;->C(I)V

    .line 115
    iput-boolean v5, v2, Le/m/a/c/g1/c0/k;->q:Z

    goto/16 :goto_0

    .line 116
    :cond_22
    new-instance v0, Le/m/a/c/m0;

    const-string v2, "Offset to encryption data was negative."

    invoke-direct {v0, v2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_23
    iget-wide v5, v1, Le/m/a/c/g1/c0/d;->o:J

    long-to-int v2, v5

    iget v5, v1, Le/m/a/c/g1/c0/d;->p:I

    sub-int/2addr v2, v5

    .line 118
    iget-object v5, v1, Le/m/a/c/g1/c0/d;->q:Le/m/a/c/q1/t;

    if-eqz v5, :cond_31

    .line 119
    iget-object v5, v5, Le/m/a/c/q1/t;->a:[B

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 120
    invoke-virtual {v0, v5, v6, v2, v7}, Le/m/a/c/g1/e;->h([BIIZ)Z

    .line 121
    new-instance v2, Le/m/a/c/g1/c0/a$b;

    iget v5, v1, Le/m/a/c/g1/c0/d;->n:I

    iget-object v6, v1, Le/m/a/c/g1/c0/d;->q:Le/m/a/c/q1/t;

    invoke-direct {v2, v5, v6}, Le/m/a/c/g1/c0/a$b;-><init>(ILe/m/a/c/q1/t;)V

    .line 122
    iget-wide v5, v0, Le/m/a/c/g1/e;->d:J

    .line 123
    iget-object v7, v1, Le/m/a/c/g1/c0/d;->k:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_24

    .line 124
    iget-object v3, v1, Le/m/a/c/g1/c0/d;->k:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/a/c/g1/c0/a$a;

    .line 125
    iget-object v3, v3, Le/m/a/c/g1/c0/a$a;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18

    .line 126
    :cond_24
    iget v7, v2, Le/m/a/c/g1/c0/a;->a:I

    if-ne v7, v4, :cond_28

    .line 127
    iget-object v2, v2, Le/m/a/c/g1/c0/a$b;->b:Le/m/a/c/q1/t;

    const/16 v3, 0x8

    .line 128
    invoke-virtual {v2, v3}, Le/m/a/c/q1/t;->C(I)V

    .line 129
    invoke-virtual {v2}, Le/m/a/c/q1/t;->e()I

    move-result v3

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x4

    .line 130
    invoke-virtual {v2, v4}, Le/m/a/c/q1/t;->D(I)V

    .line 131
    invoke-virtual {v2}, Le/m/a/c/q1/t;->r()J

    move-result-wide v13

    if-nez v3, :cond_25

    .line 132
    invoke-virtual {v2}, Le/m/a/c/q1/t;->r()J

    move-result-wide v3

    .line 133
    invoke-virtual {v2}, Le/m/a/c/q1/t;->r()J

    move-result-wide v7

    goto :goto_10

    .line 134
    :cond_25
    invoke-virtual {v2}, Le/m/a/c/q1/t;->u()J

    move-result-wide v3

    .line 135
    invoke-virtual {v2}, Le/m/a/c/q1/t;->u()J

    move-result-wide v7

    :goto_10
    add-long/2addr v5, v7

    const-wide/32 v9, 0xf4240

    move-wide v7, v3

    move-wide v11, v13

    .line 136
    invoke-static/range {v7 .. v12}, Le/m/a/c/q1/d0;->z(JJJ)J

    move-result-wide v18

    const/4 v7, 0x2

    .line 137
    invoke-virtual {v2, v7}, Le/m/a/c/q1/t;->D(I)V

    .line 138
    invoke-virtual {v2}, Le/m/a/c/q1/t;->v()I

    move-result v15

    .line 139
    new-array v11, v15, [I

    .line 140
    new-array v12, v15, [J

    .line 141
    new-array v9, v15, [J

    .line 142
    new-array v10, v15, [J

    move-wide/from16 v20, v18

    const/4 v7, 0x0

    :goto_11
    if-ge v7, v15, :cond_27

    .line 143
    invoke-virtual {v2}, Le/m/a/c/q1/t;->e()I

    move-result v8

    const/high16 v17, -0x80000000

    and-int v17, v8, v17

    if-nez v17, :cond_26

    .line 144
    invoke-virtual {v2}, Le/m/a/c/q1/t;->r()J

    move-result-wide v22

    const v17, 0x7fffffff

    and-int v8, v8, v17

    .line 145
    aput v8, v11, v7

    .line 146
    aput-wide v5, v12, v7

    .line 147
    aput-wide v20, v10, v7

    add-long v3, v3, v22

    const-wide/32 v20, 0xf4240

    move/from16 v17, v7

    move-wide v7, v3

    move-wide/from16 v22, v3

    move-object v3, v9

    move-object v4, v10

    move-wide/from16 v9, v20

    move-object v0, v12

    move/from16 p2, v15

    move-object v15, v11

    move-wide v11, v13

    .line 148
    invoke-static/range {v7 .. v12}, Le/m/a/c/q1/d0;->z(JJJ)J

    move-result-wide v20

    .line 149
    aget-wide v7, v4, v17

    sub-long v7, v20, v7

    aput-wide v7, v3, v17

    const/4 v7, 0x4

    .line 150
    invoke-virtual {v2, v7}, Le/m/a/c/q1/t;->D(I)V

    .line 151
    aget v8, v15, v17

    int-to-long v8, v8

    add-long/2addr v5, v8

    add-int/lit8 v8, v17, 0x1

    move-object v12, v0

    move-object v9, v3

    move-object v10, v4

    move v7, v8

    move-object v11, v15

    move-wide/from16 v3, v22

    move-object/from16 v0, p1

    move/from16 v15, p2

    goto :goto_11

    .line 152
    :cond_26
    new-instance v0, Le/m/a/c/m0;

    const-string v2, "Unhandled indirect reference"

    invoke-direct {v0, v2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    move-object v3, v9

    move-object v4, v10

    move-object v15, v11

    move-object v0, v12

    .line 153
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v5, Le/m/a/c/g1/c;

    invoke-direct {v5, v15, v0, v3, v4}, Le/m/a/c/g1/c;-><init>([I[J[J[J)V

    invoke-static {v2, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 154
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Le/m/a/c/g1/c0/d;->v:J

    .line 155
    iget-object v2, v1, Le/m/a/c/g1/c0/d;->B:Le/m/a/c/g1/i;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Le/m/a/c/g1/q;

    invoke-interface {v2, v0}, Le/m/a/c/g1/i;->s(Le/m/a/c/g1/q;)V

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, v1, Le/m/a/c/g1/c0/d;->E:Z

    goto/16 :goto_17

    :cond_28
    if-ne v7, v3, :cond_30

    .line 157
    iget-object v0, v2, Le/m/a/c/g1/c0/a$b;->b:Le/m/a/c/q1/t;

    .line 158
    iget-object v2, v1, Le/m/a/c/g1/c0/d;->C:[Le/m/a/c/g1/s;

    if-eqz v2, :cond_30

    array-length v2, v2

    if-nez v2, :cond_29

    goto/16 :goto_17

    :cond_29
    const/16 v2, 0x8

    .line 159
    invoke-virtual {v0, v2}, Le/m/a/c/q1/t;->C(I)V

    .line 160
    invoke-virtual {v0}, Le/m/a/c/q1/t;->e()I

    move-result v2

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_2b

    const/4 v5, 0x1

    if-eq v2, v5, :cond_2a

    goto/16 :goto_17

    .line 161
    :cond_2a
    invoke-virtual {v0}, Le/m/a/c/q1/t;->r()J

    move-result-wide v12

    .line 162
    invoke-virtual {v0}, Le/m/a/c/q1/t;->u()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    move-wide v10, v12

    invoke-static/range {v6 .. v11}, Le/m/a/c/q1/d0;->z(JJJ)J

    move-result-wide v14

    .line 163
    invoke-virtual {v0}, Le/m/a/c/q1/t;->r()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    invoke-static/range {v6 .. v11}, Le/m/a/c/q1/d0;->z(JJJ)J

    move-result-wide v5

    .line 164
    invoke-virtual {v0}, Le/m/a/c/q1/t;->r()J

    move-result-wide v7

    .line 165
    invoke-virtual {v0}, Le/m/a/c/q1/t;->l()Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-virtual {v0}, Le/m/a/c/q1/t;->l()Ljava/lang/String;

    move-result-object v9

    .line 168
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v2

    move-wide/from16 v23, v5

    move-wide/from16 v25, v7

    move-object/from16 v22, v9

    move-wide/from16 v18, v14

    move-wide v7, v3

    goto :goto_13

    .line 169
    :cond_2b
    invoke-virtual {v0}, Le/m/a/c/q1/t;->l()Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-virtual {v0}, Le/m/a/c/q1/t;->l()Ljava/lang/String;

    move-result-object v9

    .line 172
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-virtual {v0}, Le/m/a/c/q1/t;->r()J

    move-result-wide v5

    .line 174
    invoke-virtual {v0}, Le/m/a/c/q1/t;->r()J

    move-result-wide v10

    const-wide/32 v12, 0xf4240

    move-wide v14, v5

    invoke-static/range {v10 .. v15}, Le/m/a/c/q1/d0;->z(JJJ)J

    move-result-wide v7

    .line 175
    iget-wide v10, v1, Le/m/a/c/g1/c0/d;->v:J

    cmp-long v12, v10, v3

    if-eqz v12, :cond_2c

    add-long/2addr v10, v7

    move-wide/from16 v18, v10

    goto :goto_12

    :cond_2c
    move-wide/from16 v18, v3

    .line 176
    :goto_12
    invoke-virtual {v0}, Le/m/a/c/q1/t;->r()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    move-wide v14, v5

    invoke-static/range {v10 .. v15}, Le/m/a/c/q1/d0;->z(JJJ)J

    move-result-wide v5

    .line 177
    invoke-virtual {v0}, Le/m/a/c/q1/t;->r()J

    move-result-wide v10

    move-object/from16 v21, v2

    move-wide/from16 v23, v5

    move-object/from16 v22, v9

    move-wide/from16 v25, v10

    .line 178
    :goto_13
    invoke-virtual {v0}, Le/m/a/c/q1/t;->a()I

    move-result v2

    new-array v2, v2, [B

    .line 179
    invoke-virtual {v0}, Le/m/a/c/q1/t;->a()I

    move-result v5

    .line 180
    iget-object v6, v0, Le/m/a/c/q1/t;->a:[B

    iget v9, v0, Le/m/a/c/q1/t;->b:I

    const/4 v10, 0x0

    invoke-static {v6, v9, v2, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    iget v6, v0, Le/m/a/c/q1/t;->b:I

    add-int/2addr v6, v5

    iput v6, v0, Le/m/a/c/q1/t;->b:I

    .line 182
    new-instance v0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-object/from16 v20, v0

    move-object/from16 v27, v2

    invoke-direct/range {v20 .. v27}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    .line 183
    new-instance v2, Le/m/a/c/q1/t;

    iget-object v5, v1, Le/m/a/c/g1/c0/d;->i:Le/m/a/c/i1/g/b;

    .line 184
    iget-object v6, v5, Le/m/a/c/i1/g/b;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 185
    :try_start_0
    iget-object v6, v5, Le/m/a/c/i1/g/b;->b:Ljava/io/DataOutputStream;

    iget-object v9, v0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->a:Ljava/lang/String;

    .line 186
    invoke-virtual {v6, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 187
    invoke-virtual {v6, v9}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 188
    iget-object v6, v0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->b:Ljava/lang/String;

    if-eqz v6, :cond_2d

    goto :goto_14

    :cond_2d
    const-string v6, ""

    .line 189
    :goto_14
    iget-object v9, v5, Le/m/a/c/i1/g/b;->b:Ljava/io/DataOutputStream;

    .line 190
    invoke-virtual {v9, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 191
    invoke-virtual {v9, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 192
    iget-object v6, v5, Le/m/a/c/i1/g/b;->b:Ljava/io/DataOutputStream;

    iget-wide v9, v0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->c:J

    invoke-static {v6, v9, v10}, Le/m/a/c/i1/g/b;->a(Ljava/io/DataOutputStream;J)V

    .line 193
    iget-object v6, v5, Le/m/a/c/i1/g/b;->b:Ljava/io/DataOutputStream;

    iget-wide v9, v0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->d:J

    invoke-static {v6, v9, v10}, Le/m/a/c/i1/g/b;->a(Ljava/io/DataOutputStream;J)V

    .line 194
    iget-object v6, v5, Le/m/a/c/i1/g/b;->b:Ljava/io/DataOutputStream;

    iget-object v0, v0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->e:[B

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 195
    iget-object v0, v5, Le/m/a/c/i1/g/b;->b:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 196
    iget-object v0, v5, Le/m/a/c/i1/g/b;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    invoke-direct {v2, v0}, Le/m/a/c/q1/t;-><init>([B)V

    .line 198
    invoke-virtual {v2}, Le/m/a/c/q1/t;->a()I

    move-result v0

    .line 199
    iget-object v5, v1, Le/m/a/c/g1/c0/d;->C:[Le/m/a/c/g1/s;

    array-length v6, v5

    const/4 v9, 0x0

    :goto_15
    if-ge v9, v6, :cond_2e

    aget-object v10, v5, v9

    const/4 v11, 0x0

    .line 200
    invoke-virtual {v2, v11}, Le/m/a/c/q1/t;->C(I)V

    .line 201
    invoke-interface {v10, v2, v0}, Le/m/a/c/g1/s;->a(Le/m/a/c/q1/t;I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    :cond_2e
    cmp-long v2, v18, v3

    if-nez v2, :cond_2f

    .line 202
    iget-object v2, v1, Le/m/a/c/g1/c0/d;->l:Ljava/util/ArrayDeque;

    new-instance v3, Le/m/a/c/g1/c0/d$a;

    invoke-direct {v3, v7, v8, v0}, Le/m/a/c/g1/c0/d$a;-><init>(JI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 203
    iget v2, v1, Le/m/a/c/g1/c0/d;->s:I

    add-int/2addr v2, v0

    iput v2, v1, Le/m/a/c/g1/c0/d;->s:I

    goto :goto_17

    .line 204
    :cond_2f
    iget-object v2, v1, Le/m/a/c/g1/c0/d;->C:[Le/m/a/c/g1/s;

    array-length v3, v2

    const/4 v8, 0x0

    :goto_16
    if-ge v8, v3, :cond_30

    aget-object v9, v2, v8

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide/from16 v10, v18

    move v13, v0

    .line 205
    invoke-interface/range {v9 .. v15}, Le/m/a/c/g1/s;->c(JIIILe/m/a/c/g1/s$a;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    :catch_0
    move-exception v0

    .line 206
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_30
    :goto_17
    move-object/from16 v0, p1

    goto :goto_18

    .line 207
    :cond_31
    invoke-virtual {v0, v2}, Le/m/a/c/g1/e;->i(I)V

    .line 208
    :goto_18
    iget-wide v2, v0, Le/m/a/c/g1/e;->d:J

    .line 209
    invoke-virtual {v1, v2, v3}, Le/m/a/c/g1/c0/d;->j(J)V

    goto/16 :goto_0

    .line 210
    :cond_32
    iget v2, v1, Le/m/a/c/g1/c0/d;->p:I

    if-nez v2, :cond_34

    .line 211
    iget-object v2, v1, Le/m/a/c/g1/c0/d;->j:Le/m/a/c/q1/t;

    iget-object v2, v2, Le/m/a/c/q1/t;->a:[B

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v0, v2, v6, v5, v7}, Le/m/a/c/g1/e;->h([BIIZ)Z

    move-result v2

    if-nez v2, :cond_33

    move v8, v6

    goto/16 :goto_21

    .line 212
    :cond_33
    iput v5, v1, Le/m/a/c/g1/c0/d;->p:I

    .line 213
    iget-object v2, v1, Le/m/a/c/g1/c0/d;->j:Le/m/a/c/q1/t;

    invoke-virtual {v2, v6}, Le/m/a/c/q1/t;->C(I)V

    .line 214
    iget-object v2, v1, Le/m/a/c/g1/c0/d;->j:Le/m/a/c/q1/t;

    invoke-virtual {v2}, Le/m/a/c/q1/t;->r()J

    move-result-wide v5

    iput-wide v5, v1, Le/m/a/c/g1/c0/d;->o:J

    .line 215
    iget-object v2, v1, Le/m/a/c/g1/c0/d;->j:Le/m/a/c/q1/t;

    invoke-virtual {v2}, Le/m/a/c/q1/t;->e()I

    move-result v2

    iput v2, v1, Le/m/a/c/g1/c0/d;->n:I

    .line 216
    :cond_34
    iget-wide v5, v1, Le/m/a/c/g1/c0/d;->o:J

    const-wide/16 v7, 0x1

    cmp-long v2, v5, v7

    if-nez v2, :cond_35

    .line 217
    iget-object v2, v1, Le/m/a/c/g1/c0/d;->j:Le/m/a/c/q1/t;

    iget-object v2, v2, Le/m/a/c/q1/t;->a:[B

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 218
    invoke-virtual {v0, v2, v5, v5, v6}, Le/m/a/c/g1/e;->h([BIIZ)Z

    .line 219
    iget v2, v1, Le/m/a/c/g1/c0/d;->p:I

    add-int/2addr v2, v5

    iput v2, v1, Le/m/a/c/g1/c0/d;->p:I

    .line 220
    iget-object v2, v1, Le/m/a/c/g1/c0/d;->j:Le/m/a/c/q1/t;

    invoke-virtual {v2}, Le/m/a/c/q1/t;->u()J

    move-result-wide v5

    iput-wide v5, v1, Le/m/a/c/g1/c0/d;->o:J

    goto :goto_19

    :cond_35
    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-nez v2, :cond_37

    .line 221
    iget-wide v5, v0, Le/m/a/c/g1/e;->c:J

    const-wide/16 v7, -0x1

    cmp-long v2, v5, v7

    if-nez v2, :cond_36

    .line 222
    iget-object v2, v1, Le/m/a/c/g1/c0/d;->k:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_36

    .line 223
    iget-object v2, v1, Le/m/a/c/g1/c0/d;->k:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/a/c/g1/c0/a$a;

    iget-wide v5, v2, Le/m/a/c/g1/c0/a$a;->b:J

    :cond_36
    cmp-long v2, v5, v7

    if-eqz v2, :cond_37

    .line 224
    iget-wide v7, v0, Le/m/a/c/g1/e;->d:J

    sub-long/2addr v5, v7

    .line 225
    iget v2, v1, Le/m/a/c/g1/c0/d;->p:I

    int-to-long v7, v2

    add-long/2addr v5, v7

    iput-wide v5, v1, Le/m/a/c/g1/c0/d;->o:J

    .line 226
    :cond_37
    :goto_19
    iget-wide v5, v1, Le/m/a/c/g1/c0/d;->o:J

    iget v2, v1, Le/m/a/c/g1/c0/d;->p:I

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-ltz v2, :cond_45

    .line 227
    iget-wide v5, v0, Le/m/a/c/g1/e;->d:J

    sub-long/2addr v5, v7

    .line 228
    iget v2, v1, Le/m/a/c/g1/c0/d;->n:I

    const v7, 0x6d6f6f66

    if-ne v2, v7, :cond_38

    .line 229
    iget-object v2, v1, Le/m/a/c/g1/c0/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v8, 0x0

    :goto_1a
    if-ge v8, v2, :cond_38

    .line 230
    iget-object v9, v1, Le/m/a/c/g1/c0/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/m/a/c/g1/c0/d$b;

    iget-object v9, v9, Le/m/a/c/g1/c0/d$b;->b:Le/m/a/c/g1/c0/k;

    .line 231
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iput-wide v5, v9, Le/m/a/c/g1/c0/k;->c:J

    .line 233
    iput-wide v5, v9, Le/m/a/c/g1/c0/k;->b:J

    add-int/lit8 v8, v8, 0x1

    goto :goto_1a

    .line 234
    :cond_38
    iget v2, v1, Le/m/a/c/g1/c0/d;->n:I

    const v8, 0x6d646174

    if-ne v2, v8, :cond_3a

    const/4 v8, 0x0

    .line 235
    iput-object v8, v1, Le/m/a/c/g1/c0/d;->w:Le/m/a/c/g1/c0/d$b;

    .line 236
    iget-wide v2, v1, Le/m/a/c/g1/c0/d;->o:J

    add-long/2addr v2, v5

    iput-wide v2, v1, Le/m/a/c/g1/c0/d;->r:J

    .line 237
    iget-boolean v2, v1, Le/m/a/c/g1/c0/d;->E:Z

    if-nez v2, :cond_39

    .line 238
    iget-object v2, v1, Le/m/a/c/g1/c0/d;->B:Le/m/a/c/g1/i;

    new-instance v3, Le/m/a/c/g1/q$b;

    iget-wide v7, v1, Le/m/a/c/g1/c0/d;->u:J

    invoke-direct {v3, v7, v8, v5, v6}, Le/m/a/c/g1/q$b;-><init>(JJ)V

    invoke-interface {v2, v3}, Le/m/a/c/g1/i;->s(Le/m/a/c/g1/q;)V

    const/4 v2, 0x1

    .line 239
    iput-boolean v2, v1, Le/m/a/c/g1/c0/d;->E:Z

    :cond_39
    const/4 v2, 0x2

    .line 240
    iput v2, v1, Le/m/a/c/g1/c0/d;->m:I

    const/4 v8, 0x1

    goto/16 :goto_21

    :cond_3a
    const v5, 0x6d6f6f76

    if-eq v2, v5, :cond_3c

    const v5, 0x7472616b

    if-eq v2, v5, :cond_3c

    const v5, 0x6d646961

    if-eq v2, v5, :cond_3c

    const v5, 0x6d696e66

    if-eq v2, v5, :cond_3c

    const v5, 0x7374626c

    if-eq v2, v5, :cond_3c

    if-eq v2, v7, :cond_3c

    const v5, 0x74726166

    if-eq v2, v5, :cond_3c

    const v5, 0x6d766578

    if-eq v2, v5, :cond_3c

    const v5, 0x65647473

    if-ne v2, v5, :cond_3b

    goto :goto_1b

    :cond_3b
    const/4 v5, 0x0

    goto :goto_1c

    :cond_3c
    :goto_1b
    const/4 v5, 0x1

    :goto_1c
    if-eqz v5, :cond_3e

    .line 241
    iget-wide v3, v0, Le/m/a/c/g1/e;->d:J

    .line 242
    iget-wide v5, v1, Le/m/a/c/g1/c0/d;->o:J

    add-long/2addr v3, v5

    const-wide/16 v5, 0x8

    sub-long/2addr v3, v5

    .line 243
    iget-object v5, v1, Le/m/a/c/g1/c0/d;->k:Ljava/util/ArrayDeque;

    new-instance v6, Le/m/a/c/g1/c0/a$a;

    invoke-direct {v6, v2, v3, v4}, Le/m/a/c/g1/c0/a$a;-><init>(IJ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 244
    iget-wide v5, v1, Le/m/a/c/g1/c0/d;->o:J

    iget v2, v1, Le/m/a/c/g1/c0/d;->p:I

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-nez v2, :cond_3d

    .line 245
    invoke-virtual {v1, v3, v4}, Le/m/a/c/g1/c0/d;->j(J)V

    goto :goto_1d

    .line 246
    :cond_3d
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/g1/c0/d;->b()V

    :goto_1d
    const/4 v2, 0x1

    goto/16 :goto_20

    :cond_3e
    const v5, 0x68646c72    # 4.3148E24f

    if-eq v2, v5, :cond_40

    const v5, 0x6d646864

    if-eq v2, v5, :cond_40

    const v5, 0x6d766864

    if-eq v2, v5, :cond_40

    if-eq v2, v4, :cond_40

    const v4, 0x73747364

    if-eq v2, v4, :cond_40

    const v4, 0x74666474

    if-eq v2, v4, :cond_40

    const v4, 0x74666864

    if-eq v2, v4, :cond_40

    const v4, 0x746b6864

    if-eq v2, v4, :cond_40

    const v4, 0x74726578

    if-eq v2, v4, :cond_40

    const v4, 0x7472756e

    if-eq v2, v4, :cond_40

    const v4, 0x70737368    # 3.013775E29f

    if-eq v2, v4, :cond_40

    const v4, 0x7361697a

    if-eq v2, v4, :cond_40

    const v4, 0x7361696f

    if-eq v2, v4, :cond_40

    const v4, 0x73656e63

    if-eq v2, v4, :cond_40

    const v4, 0x75756964

    if-eq v2, v4, :cond_40

    const v4, 0x73626770

    if-eq v2, v4, :cond_40

    const v4, 0x73677064

    if-eq v2, v4, :cond_40

    const v4, 0x656c7374

    if-eq v2, v4, :cond_40

    const v4, 0x6d656864

    if-eq v2, v4, :cond_40

    if-ne v2, v3, :cond_3f

    goto :goto_1e

    :cond_3f
    const/4 v4, 0x0

    goto :goto_1f

    :cond_40
    :goto_1e
    const/4 v4, 0x1

    :goto_1f
    const-wide/32 v2, 0x7fffffff

    if-eqz v4, :cond_43

    .line 247
    iget v4, v1, Le/m/a/c/g1/c0/d;->p:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_42

    .line 248
    iget-wide v6, v1, Le/m/a/c/g1/c0/d;->o:J

    cmp-long v2, v6, v2

    if-gtz v2, :cond_41

    .line 249
    new-instance v2, Le/m/a/c/q1/t;

    long-to-int v3, v6

    invoke-direct {v2, v3}, Le/m/a/c/q1/t;-><init>(I)V

    iput-object v2, v1, Le/m/a/c/g1/c0/d;->q:Le/m/a/c/q1/t;

    .line 250
    iget-object v3, v1, Le/m/a/c/g1/c0/d;->j:Le/m/a/c/q1/t;

    iget-object v3, v3, Le/m/a/c/q1/t;->a:[B

    iget-object v2, v2, Le/m/a/c/q1/t;->a:[B

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x1

    .line 251
    iput v2, v1, Le/m/a/c/g1/c0/d;->m:I

    goto :goto_20

    .line 252
    :cond_41
    new-instance v0, Le/m/a/c/m0;

    const-string v2, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {v0, v2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_42
    new-instance v0, Le/m/a/c/m0;

    const-string v2, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {v0, v2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_43
    iget-wide v4, v1, Le/m/a/c/g1/c0/d;->o:J

    cmp-long v2, v4, v2

    if-gtz v2, :cond_44

    const/4 v2, 0x0

    .line 255
    iput-object v2, v1, Le/m/a/c/g1/c0/d;->q:Le/m/a/c/q1/t;

    const/4 v2, 0x1

    .line 256
    iput v2, v1, Le/m/a/c/g1/c0/d;->m:I

    :goto_20
    move v8, v2

    :goto_21
    if-nez v8, :cond_0

    const/4 v0, -0x1

    return v0

    .line 257
    :cond_44
    new-instance v0, Le/m/a/c/m0;

    const-string v2, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {v0, v2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_45
    new-instance v0, Le/m/a/c/m0;

    const-string v2, "Atom size less than header length (unsupported)."

    invoke-direct {v0, v2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/m/a/c/g1/c0/d;->C:[Le/m/a/c/g1/s;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Le/m/a/c/g1/s;

    .line 2
    iput-object v0, p0, Le/m/a/c/g1/c0/d;->C:[Le/m/a/c/g1/s;

    .line 3
    iget v3, p0, Le/m/a/c/g1/c0/d;->a:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    .line 4
    iget-object v3, p0, Le/m/a/c/g1/c0/d;->B:Le/m/a/c/g1/i;

    iget-object v5, p0, Le/m/a/c/g1/c0/d;->c:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-interface {v3, v5, v4}, Le/m/a/c/g1/i;->i(II)Le/m/a/c/g1/s;

    move-result-object v3

    aput-object v3, v0, v1

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 6
    :goto_0
    iget-object v3, p0, Le/m/a/c/g1/c0/d;->C:[Le/m/a/c/g1/s;

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/m/a/c/g1/s;

    iput-object v0, p0, Le/m/a/c/g1/c0/d;->C:[Le/m/a/c/g1/s;

    .line 7
    array-length v3, v0

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 8
    sget-object v6, Le/m/a/c/g1/c0/d;->G:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v5, v6}, Le/m/a/c/g1/s;->b(Lcom/google/android/exoplayer2/Format;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 9
    :cond_1
    iget-object v0, p0, Le/m/a/c/g1/c0/d;->D:[Le/m/a/c/g1/s;

    if-nez v0, :cond_2

    .line 10
    iget-object v0, p0, Le/m/a/c/g1/c0/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Le/m/a/c/g1/s;

    iput-object v0, p0, Le/m/a/c/g1/c0/d;->D:[Le/m/a/c/g1/s;

    .line 11
    :goto_2
    iget-object v0, p0, Le/m/a/c/g1/c0/d;->D:[Le/m/a/c/g1/s;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 12
    iget-object v0, p0, Le/m/a/c/g1/c0/d;->B:Le/m/a/c/g1/i;

    iget-object v3, p0, Le/m/a/c/g1/c0/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    const/4 v4, 0x3

    invoke-interface {v0, v3, v4}, Le/m/a/c/g1/i;->i(II)Le/m/a/c/g1/s;

    move-result-object v0

    .line 13
    iget-object v3, p0, Le/m/a/c/g1/c0/d;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/Format;

    invoke-interface {v0, v3}, Le/m/a/c/g1/s;->b(Lcom/google/android/exoplayer2/Format;)V

    .line 14
    iget-object v3, p0, Le/m/a/c/g1/c0/d;->D:[Le/m/a/c/g1/s;

    aput-object v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public h(Le/m/a/c/g1/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/c/g1/c0/d;->B:Le/m/a/c/g1/i;

    return-void
.end method

.method public i(Le/m/a/c/g1/e;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, v0}, Le/m/a/c/g1/c0/h;->a(Le/m/a/c/g1/e;Z)Z

    move-result p1

    return p1
.end method

.method public final j(J)V
    .locals 50
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/m0;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object v1, v0

    .line 1
    :goto_0
    iget-object v2, v1, Le/m/a/c/g1/c0/d;->k:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_57

    iget-object v2, v1, Le/m/a/c/g1/c0/d;->k:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/a/c/g1/c0/a$a;

    iget-wide v2, v2, Le/m/a/c/g1/c0/a$a;->b:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_57

    .line 2
    iget-object v2, v1, Le/m/a/c/g1/c0/d;->k:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/a/c/g1/c0/a$a;

    .line 3
    iget v3, v2, Le/m/a/c/g1/c0/a;->a:I

    const v4, 0x6d6f6f76

    const/16 v5, 0xc

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-ne v3, v4, :cond_b

    const-string v3, "Unexpected moov box."

    .line 4
    invoke-static {v7, v3}, Ln3/g0/y;->y(ZLjava/lang/Object;)V

    .line 5
    iget-object v3, v2, Le/m/a/c/g1/c0/a$a;->c:Ljava/util/List;

    invoke-static {v3}, Le/m/a/c/g1/c0/d;->e(Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v3

    const v4, 0x6d766578

    .line 6
    invoke-virtual {v2, v4}, Le/m/a/c/g1/c0/a$a;->b(I)Le/m/a/c/g1/c0/a$a;

    move-result-object v4

    .line 7
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    .line 8
    iget-object v7, v4, Le/m/a/c/g1/c0/a$a;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    move-wide v15, v8

    :goto_1
    if-ge v10, v7, :cond_3

    .line 9
    iget-object v8, v4, Le/m/a/c/g1/c0/a$a;->c:Ljava/util/List;

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/m/a/c/g1/c0/a$b;

    .line 10
    iget v9, v8, Le/m/a/c/g1/c0/a;->a:I

    const v11, 0x74726578

    if-ne v9, v11, :cond_0

    .line 11
    iget-object v8, v8, Le/m/a/c/g1/c0/a$b;->b:Le/m/a/c/q1/t;

    .line 12
    invoke-virtual {v8, v5}, Le/m/a/c/q1/t;->C(I)V

    .line 13
    invoke-virtual {v8}, Le/m/a/c/q1/t;->e()I

    move-result v5

    .line 14
    invoke-virtual {v8}, Le/m/a/c/q1/t;->t()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    .line 15
    invoke-virtual {v8}, Le/m/a/c/q1/t;->t()I

    move-result v11

    .line 16
    invoke-virtual {v8}, Le/m/a/c/q1/t;->t()I

    move-result v12

    .line 17
    invoke-virtual {v8}, Le/m/a/c/q1/t;->e()I

    move-result v8

    .line 18
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v13, Le/m/a/c/g1/c0/c;

    invoke-direct {v13, v9, v11, v12, v8}, Le/m/a/c/g1/c0/c;-><init>(IIII)V

    invoke-static {v5, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .line 19
    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v14, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_0
    const v5, 0x6d656864

    if-ne v9, v5, :cond_2

    .line 20
    iget-object v5, v8, Le/m/a/c/g1/c0/a$b;->b:Le/m/a/c/q1/t;

    .line 21
    invoke-virtual {v5, v6}, Le/m/a/c/q1/t;->C(I)V

    .line 22
    invoke-virtual {v5}, Le/m/a/c/q1/t;->e()I

    move-result v8

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    if-nez v8, :cond_1

    .line 23
    invoke-virtual {v5}, Le/m/a/c/q1/t;->r()J

    move-result-wide v8

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Le/m/a/c/q1/t;->u()J

    move-result-wide v8

    :goto_2
    move-wide v15, v8

    :cond_2
    :goto_3
    add-int/lit8 v10, v10, 0x1

    const/16 v5, 0xc

    goto :goto_1

    .line 24
    :cond_3
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 25
    iget-object v5, v2, Le/m/a/c/g1/c0/a$a;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_6

    .line 26
    iget-object v7, v2, Le/m/a/c/g1/c0/a$a;->d:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/m/a/c/g1/c0/a$a;

    .line 27
    iget v8, v7, Le/m/a/c/g1/c0/a;->a:I

    const v9, 0x7472616b

    if-ne v8, v9, :cond_5

    const v8, 0x6d766864

    .line 28
    invoke-virtual {v2, v8}, Le/m/a/c/g1/c0/a$a;->c(I)Le/m/a/c/g1/c0/a$b;

    move-result-object v8

    iget v9, v1, Le/m/a/c/g1/c0/d;->a:I

    and-int/lit8 v9, v9, 0x10

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    goto :goto_5

    :cond_4
    const/4 v9, 0x0

    :goto_5
    move v12, v9

    const/4 v13, 0x0

    move-wide v9, v15

    move-object v11, v3

    .line 29
    invoke-static/range {v7 .. v13}, Le/m/a/c/g1/c0/b;->d(Le/m/a/c/g1/c0/a$a;Le/m/a/c/g1/c0/a$b;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZ)Le/m/a/c/g1/c0/i;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 30
    iget v8, v7, Le/m/a/c/g1/c0/i;->a:I

    invoke-virtual {v4, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 31
    :cond_6
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 32
    iget-object v3, v1, Le/m/a/c/g1/c0/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_7

    .line 33
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/m/a/c/g1/c0/i;

    .line 34
    new-instance v6, Le/m/a/c/g1/c0/d$b;

    iget-object v7, v1, Le/m/a/c/g1/c0/d;->B:Le/m/a/c/g1/i;

    iget v8, v5, Le/m/a/c/g1/c0/i;->b:I

    invoke-interface {v7, v3, v8}, Le/m/a/c/g1/i;->i(II)Le/m/a/c/g1/s;

    move-result-object v7

    invoke-direct {v6, v7}, Le/m/a/c/g1/c0/d$b;-><init>(Le/m/a/c/g1/s;)V

    .line 35
    iget v7, v5, Le/m/a/c/g1/c0/i;->a:I

    invoke-virtual {v1, v14, v7}, Le/m/a/c/g1/c0/d;->c(Landroid/util/SparseArray;I)Le/m/a/c/g1/c0/c;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Le/m/a/c/g1/c0/d$b;->b(Le/m/a/c/g1/c0/i;Le/m/a/c/g1/c0/c;)V

    .line 36
    iget-object v7, v1, Le/m/a/c/g1/c0/d;->c:Landroid/util/SparseArray;

    iget v8, v5, Le/m/a/c/g1/c0/i;->a:I

    invoke-virtual {v7, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    iget-wide v6, v1, Le/m/a/c/g1/c0/d;->u:J

    iget-wide v8, v5, Le/m/a/c/g1/c0/i;->e:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v1, Le/m/a/c/g1/c0/d;->u:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 38
    :cond_7
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/g1/c0/d;->f()V

    .line 39
    iget-object v2, v1, Le/m/a/c/g1/c0/d;->B:Le/m/a/c/g1/i;

    invoke-interface {v2}, Le/m/a/c/g1/i;->g()V

    goto :goto_9

    .line 40
    :cond_8
    iget-object v3, v1, Le/m/a/c/g1/c0/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ne v3, v2, :cond_9

    const/4 v3, 0x1

    goto :goto_7

    :cond_9
    const/4 v3, 0x0

    :goto_7
    invoke-static {v3}, Ln3/g0/y;->x(Z)V

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_a

    .line 41
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/m/a/c/g1/c0/i;

    .line 42
    iget-object v6, v1, Le/m/a/c/g1/c0/d;->c:Landroid/util/SparseArray;

    iget v7, v5, Le/m/a/c/g1/c0/i;->a:I

    .line 43
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/m/a/c/g1/c0/d$b;

    iget v7, v5, Le/m/a/c/g1/c0/i;->a:I

    .line 44
    invoke-virtual {v1, v14, v7}, Le/m/a/c/g1/c0/d;->c(Landroid/util/SparseArray;I)Le/m/a/c/g1/c0/c;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Le/m/a/c/g1/c0/d$b;->b(Le/m/a/c/g1/c0/i;Le/m/a/c/g1/c0/c;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_a
    :goto_9
    move-object v3, v0

    goto/16 :goto_38

    :cond_b
    const v4, 0x6d6f6f66

    if-ne v3, v4, :cond_55

    .line 45
    iget-object v3, v1, Le/m/a/c/g1/c0/d;->c:Landroid/util/SparseArray;

    iget v4, v1, Le/m/a/c/g1/c0/d;->a:I

    iget-object v1, v1, Le/m/a/c/g1/c0/d;->g:[B

    .line 46
    iget-object v5, v2, Le/m/a/c/g1/c0/a$a;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_a
    if-ge v7, v5, :cond_4e

    .line 47
    iget-object v8, v2, Le/m/a/c/g1/c0/a$a;->d:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/m/a/c/g1/c0/a$a;

    .line 48
    iget v9, v8, Le/m/a/c/g1/c0/a;->a:I

    const v10, 0x74726166

    if-ne v9, v10, :cond_4d

    const v9, 0x74666864

    .line 49
    invoke-virtual {v8, v9}, Le/m/a/c/g1/c0/a$a;->c(I)Le/m/a/c/g1/c0/a$b;

    move-result-object v9

    .line 50
    iget-object v9, v9, Le/m/a/c/g1/c0/a$b;->b:Le/m/a/c/q1/t;

    .line 51
    invoke-virtual {v9, v6}, Le/m/a/c/q1/t;->C(I)V

    .line 52
    invoke-virtual {v9}, Le/m/a/c/q1/t;->e()I

    move-result v10

    const v11, 0xffffff

    and-int/2addr v10, v11

    .line 53
    invoke-virtual {v9}, Le/m/a/c/q1/t;->e()I

    move-result v11

    .line 54
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_c

    const/4 v11, 0x0

    .line 55
    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Le/m/a/c/g1/c0/d$b;

    goto :goto_b

    .line 56
    :cond_c
    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Le/m/a/c/g1/c0/d$b;

    :goto_b
    if-nez v11, :cond_d

    const/4 v11, 0x0

    goto :goto_10

    :cond_d
    and-int/lit8 v12, v10, 0x1

    if-eqz v12, :cond_e

    .line 57
    invoke-virtual {v9}, Le/m/a/c/q1/t;->u()J

    move-result-wide v12

    .line 58
    iget-object v14, v11, Le/m/a/c/g1/c0/d$b;->b:Le/m/a/c/g1/c0/k;

    iput-wide v12, v14, Le/m/a/c/g1/c0/k;->b:J

    .line 59
    iput-wide v12, v14, Le/m/a/c/g1/c0/k;->c:J

    .line 60
    :cond_e
    iget-object v12, v11, Le/m/a/c/g1/c0/d$b;->e:Le/m/a/c/g1/c0/c;

    and-int/lit8 v13, v10, 0x2

    if-eqz v13, :cond_f

    .line 61
    invoke-virtual {v9}, Le/m/a/c/q1/t;->t()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    goto :goto_c

    :cond_f
    iget v13, v12, Le/m/a/c/g1/c0/c;->a:I

    :goto_c
    and-int/lit8 v14, v10, 0x8

    if-eqz v14, :cond_10

    .line 62
    invoke-virtual {v9}, Le/m/a/c/q1/t;->t()I

    move-result v14

    goto :goto_d

    :cond_10
    iget v14, v12, Le/m/a/c/g1/c0/c;->b:I

    :goto_d
    and-int/lit8 v15, v10, 0x10

    if-eqz v15, :cond_11

    .line 63
    invoke-virtual {v9}, Le/m/a/c/q1/t;->t()I

    move-result v15

    goto :goto_e

    :cond_11
    iget v15, v12, Le/m/a/c/g1/c0/c;->c:I

    :goto_e
    and-int/lit8 v10, v10, 0x20

    if-eqz v10, :cond_12

    .line 64
    invoke-virtual {v9}, Le/m/a/c/q1/t;->t()I

    move-result v9

    goto :goto_f

    :cond_12
    iget v9, v12, Le/m/a/c/g1/c0/c;->d:I

    .line 65
    :goto_f
    iget-object v10, v11, Le/m/a/c/g1/c0/d$b;->b:Le/m/a/c/g1/c0/k;

    new-instance v12, Le/m/a/c/g1/c0/c;

    invoke-direct {v12, v13, v14, v15, v9}, Le/m/a/c/g1/c0/c;-><init>(IIII)V

    iput-object v12, v10, Le/m/a/c/g1/c0/k;->a:Le/m/a/c/g1/c0/c;

    :goto_10
    if-nez v11, :cond_13

    goto/16 :goto_32

    .line 66
    :cond_13
    iget-object v9, v11, Le/m/a/c/g1/c0/d$b;->b:Le/m/a/c/g1/c0/k;

    .line 67
    iget-wide v12, v9, Le/m/a/c/g1/c0/k;->r:J

    .line 68
    invoke-virtual {v11}, Le/m/a/c/g1/c0/d$b;->e()V

    const v10, 0x74666474

    .line 69
    invoke-virtual {v8, v10}, Le/m/a/c/g1/c0/a$a;->c(I)Le/m/a/c/g1/c0/a$b;

    move-result-object v14

    if-eqz v14, :cond_15

    and-int/lit8 v14, v4, 0x2

    if-nez v14, :cond_15

    .line 70
    invoke-virtual {v8, v10}, Le/m/a/c/g1/c0/a$a;->c(I)Le/m/a/c/g1/c0/a$b;

    move-result-object v10

    iget-object v10, v10, Le/m/a/c/g1/c0/a$b;->b:Le/m/a/c/q1/t;

    .line 71
    invoke-virtual {v10, v6}, Le/m/a/c/q1/t;->C(I)V

    .line 72
    invoke-virtual {v10}, Le/m/a/c/q1/t;->e()I

    move-result v6

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v6, v6, 0xff

    const/4 v12, 0x1

    if-ne v6, v12, :cond_14

    .line 73
    invoke-virtual {v10}, Le/m/a/c/q1/t;->u()J

    move-result-wide v12

    goto :goto_11

    :cond_14
    invoke-virtual {v10}, Le/m/a/c/q1/t;->r()J

    move-result-wide v12

    .line 74
    :cond_15
    :goto_11
    iget-object v6, v8, Le/m/a/c/g1/c0/a$a;->c:Ljava/util/List;

    .line 75
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v17, v5

    move/from16 v49, v16

    move-object/from16 v16, v3

    move/from16 v3, v49

    :goto_12
    const v5, 0x7472756e

    if-ge v15, v10, :cond_17

    .line 76
    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-wide/from16 v19, v12

    move-object/from16 v12, v18

    check-cast v12, Le/m/a/c/g1/c0/a$b;

    .line 77
    iget v13, v12, Le/m/a/c/g1/c0/a;->a:I

    if-ne v13, v5, :cond_16

    .line 78
    iget-object v5, v12, Le/m/a/c/g1/c0/a$b;->b:Le/m/a/c/q1/t;

    const/16 v12, 0xc

    .line 79
    invoke-virtual {v5, v12}, Le/m/a/c/q1/t;->C(I)V

    .line 80
    invoke-virtual {v5}, Le/m/a/c/q1/t;->t()I

    move-result v5

    if-lez v5, :cond_16

    add-int/2addr v14, v5

    add-int/lit8 v3, v3, 0x1

    :cond_16
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v12, v19

    goto :goto_12

    :cond_17
    move-wide/from16 v19, v12

    const/4 v12, 0x0

    .line 81
    iput v12, v11, Le/m/a/c/g1/c0/d$b;->h:I

    .line 82
    iput v12, v11, Le/m/a/c/g1/c0/d$b;->g:I

    .line 83
    iput v12, v11, Le/m/a/c/g1/c0/d$b;->f:I

    .line 84
    iget-object v12, v11, Le/m/a/c/g1/c0/d$b;->b:Le/m/a/c/g1/c0/k;

    .line 85
    iput v3, v12, Le/m/a/c/g1/c0/k;->d:I

    .line 86
    iput v14, v12, Le/m/a/c/g1/c0/k;->e:I

    .line 87
    iget-object v13, v12, Le/m/a/c/g1/c0/k;->g:[I

    if-eqz v13, :cond_18

    array-length v13, v13

    if-ge v13, v3, :cond_19

    .line 88
    :cond_18
    new-array v13, v3, [J

    iput-object v13, v12, Le/m/a/c/g1/c0/k;->f:[J

    .line 89
    new-array v3, v3, [I

    iput-object v3, v12, Le/m/a/c/g1/c0/k;->g:[I

    .line 90
    :cond_19
    iget-object v3, v12, Le/m/a/c/g1/c0/k;->h:[I

    if-eqz v3, :cond_1a

    array-length v3, v3

    if-ge v3, v14, :cond_1b

    :cond_1a
    mul-int/lit8 v14, v14, 0x7d

    .line 91
    div-int/lit8 v14, v14, 0x64

    .line 92
    new-array v3, v14, [I

    iput-object v3, v12, Le/m/a/c/g1/c0/k;->h:[I

    .line 93
    new-array v3, v14, [I

    iput-object v3, v12, Le/m/a/c/g1/c0/k;->i:[I

    .line 94
    new-array v3, v14, [J

    iput-object v3, v12, Le/m/a/c/g1/c0/k;->j:[J

    .line 95
    new-array v3, v14, [Z

    iput-object v3, v12, Le/m/a/c/g1/c0/k;->k:[Z

    .line 96
    new-array v3, v14, [Z

    iput-object v3, v12, Le/m/a/c/g1/c0/k;->m:[Z

    :cond_1b
    const/4 v3, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_13
    if-ge v3, v10, :cond_30

    .line 97
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v14, v18

    check-cast v14, Le/m/a/c/g1/c0/a$b;

    .line 98
    iget v15, v14, Le/m/a/c/g1/c0/a;->a:I

    if-ne v15, v5, :cond_2f

    add-int/lit8 v5, v12, 0x1

    .line 99
    iget-object v14, v14, Le/m/a/c/g1/c0/a$b;->b:Le/m/a/c/q1/t;

    const/16 v15, 0x8

    .line 100
    invoke-virtual {v14, v15}, Le/m/a/c/q1/t;->C(I)V

    .line 101
    invoke-virtual {v14}, Le/m/a/c/q1/t;->e()I

    move-result v15

    const v18, 0xffffff

    and-int v15, v15, v18

    move/from16 v18, v5

    .line 102
    iget-object v5, v11, Le/m/a/c/g1/c0/d$b;->d:Le/m/a/c/g1/c0/i;

    move-object/from16 v23, v6

    .line 103
    iget-object v6, v11, Le/m/a/c/g1/c0/d$b;->b:Le/m/a/c/g1/c0/k;

    move/from16 v24, v10

    .line 104
    iget-object v10, v6, Le/m/a/c/g1/c0/k;->a:Le/m/a/c/g1/c0/c;

    .line 105
    iget-object v0, v6, Le/m/a/c/g1/c0/k;->g:[I

    invoke-virtual {v14}, Le/m/a/c/q1/t;->t()I

    move-result v25

    aput v25, v0, v12

    .line 106
    iget-object v0, v6, Le/m/a/c/g1/c0/k;->f:[J

    move-object/from16 v26, v1

    move-object/from16 v25, v2

    iget-wide v1, v6, Le/m/a/c/g1/c0/k;->b:J

    aput-wide v1, v0, v12

    and-int/lit8 v1, v15, 0x1

    if-eqz v1, :cond_1c

    .line 107
    aget-wide v1, v0, v12

    move/from16 v27, v7

    invoke-virtual {v14}, Le/m/a/c/q1/t;->e()I

    move-result v7

    move-object/from16 v28, v8

    int-to-long v7, v7

    add-long/2addr v1, v7

    aput-wide v1, v0, v12

    goto :goto_14

    :cond_1c
    move/from16 v27, v7

    move-object/from16 v28, v8

    :goto_14
    and-int/lit8 v0, v15, 0x4

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_15

    :cond_1d
    const/4 v0, 0x0

    .line 108
    :goto_15
    iget v1, v10, Le/m/a/c/g1/c0/c;->d:I

    if-eqz v0, :cond_1e

    .line 109
    invoke-virtual {v14}, Le/m/a/c/q1/t;->t()I

    move-result v1

    :cond_1e
    and-int/lit16 v2, v15, 0x100

    if-eqz v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_16

    :cond_1f
    const/4 v2, 0x0

    :goto_16
    and-int/lit16 v7, v15, 0x200

    if-eqz v7, :cond_20

    const/4 v7, 0x1

    goto :goto_17

    :cond_20
    const/4 v7, 0x0

    :goto_17
    and-int/lit16 v8, v15, 0x400

    if-eqz v8, :cond_21

    const/4 v8, 0x1

    goto :goto_18

    :cond_21
    const/4 v8, 0x0

    :goto_18
    and-int/lit16 v15, v15, 0x800

    if-eqz v15, :cond_22

    const/4 v15, 0x1

    goto :goto_19

    :cond_22
    const/4 v15, 0x0

    :goto_19
    move/from16 v29, v1

    .line 110
    iget-object v1, v5, Le/m/a/c/g1/c0/i;->h:[J

    if-eqz v1, :cond_24

    move-object/from16 v30, v9

    array-length v9, v1

    move-object/from16 v31, v11

    const/4 v11, 0x1

    if-ne v9, v11, :cond_23

    const/4 v9, 0x0

    aget-wide v32, v1, v9

    const-wide/16 v21, 0x0

    cmp-long v1, v32, v21

    if-nez v1, :cond_23

    .line 111
    iget-object v1, v5, Le/m/a/c/g1/c0/i;->i:[J

    aget-wide v32, v1, v9

    const-wide/16 v34, 0x3e8

    move v1, v8

    iget-wide v8, v5, Le/m/a/c/g1/c0/i;->c:J

    move-wide/from16 v36, v8

    .line 112
    invoke-static/range {v32 .. v37}, Le/m/a/c/q1/d0;->z(JJJ)J

    move-result-wide v8

    move-wide/from16 v21, v8

    goto :goto_1b

    :cond_23
    move v1, v8

    goto :goto_1a

    :cond_24
    move v1, v8

    move-object/from16 v30, v9

    move-object/from16 v31, v11

    :goto_1a
    const-wide/16 v21, 0x0

    .line 113
    :goto_1b
    iget-object v8, v6, Le/m/a/c/g1/c0/k;->h:[I

    .line 114
    iget-object v9, v6, Le/m/a/c/g1/c0/k;->i:[I

    .line 115
    iget-object v11, v6, Le/m/a/c/g1/c0/k;->j:[J

    move/from16 v32, v3

    .line 116
    iget-object v3, v6, Le/m/a/c/g1/c0/k;->k:[Z

    move-object/from16 v33, v3

    .line 117
    iget v3, v5, Le/m/a/c/g1/c0/i;->b:I

    move-object/from16 v34, v8

    const/4 v8, 0x2

    if-ne v3, v8, :cond_25

    and-int/lit8 v3, v4, 0x1

    if-eqz v3, :cond_25

    const/4 v3, 0x1

    goto :goto_1c

    :cond_25
    const/4 v3, 0x0

    .line 118
    :goto_1c
    iget-object v8, v6, Le/m/a/c/g1/c0/k;->g:[I

    aget v8, v8, v12

    add-int/2addr v8, v13

    move/from16 v41, v4

    .line 119
    iget-wide v4, v5, Le/m/a/c/g1/c0/i;->c:J

    if-lez v12, :cond_26

    move/from16 v35, v13

    .line 120
    iget-wide v12, v6, Le/m/a/c/g1/c0/k;->r:J

    move-object/from16 v42, v6

    goto :goto_1d

    :cond_26
    move/from16 v35, v13

    move-object/from16 v42, v6

    move-wide/from16 v12, v19

    :goto_1d
    move/from16 v6, v35

    :goto_1e
    if-ge v6, v8, :cond_2e

    if-eqz v2, :cond_27

    .line 121
    invoke-virtual {v14}, Le/m/a/c/q1/t;->t()I

    move-result v35

    move/from16 v43, v2

    move/from16 v2, v35

    goto :goto_1f

    :cond_27
    move/from16 v43, v2

    iget v2, v10, Le/m/a/c/g1/c0/c;->b:I

    :goto_1f
    if-eqz v7, :cond_28

    .line 122
    invoke-virtual {v14}, Le/m/a/c/q1/t;->t()I

    move-result v35

    move/from16 v44, v7

    move/from16 v7, v35

    goto :goto_20

    :cond_28
    move/from16 v44, v7

    iget v7, v10, Le/m/a/c/g1/c0/c;->c:I

    :goto_20
    if-nez v6, :cond_29

    if-eqz v0, :cond_29

    move/from16 v45, v0

    move/from16 v0, v29

    goto :goto_21

    :cond_29
    if-eqz v1, :cond_2a

    .line 123
    invoke-virtual {v14}, Le/m/a/c/q1/t;->e()I

    move-result v35

    move/from16 v45, v0

    move/from16 v0, v35

    goto :goto_21

    :cond_2a
    move/from16 v45, v0

    iget v0, v10, Le/m/a/c/g1/c0/c;->d:I

    :goto_21
    if-eqz v15, :cond_2b

    move/from16 v46, v1

    .line 124
    invoke-virtual {v14}, Le/m/a/c/q1/t;->e()I

    move-result v1

    move-object/from16 v47, v14

    move/from16 v48, v15

    int-to-long v14, v1

    const-wide/16 v35, 0x3e8

    mul-long v14, v14, v35

    .line 125
    div-long/2addr v14, v4

    long-to-int v1, v14

    aput v1, v9, v6

    goto :goto_22

    :cond_2b
    move/from16 v46, v1

    move-object/from16 v47, v14

    move/from16 v48, v15

    const/4 v1, 0x0

    .line 126
    aput v1, v9, v6

    :goto_22
    const-wide/16 v37, 0x3e8

    move-wide/from16 v35, v12

    move-wide/from16 v39, v4

    .line 127
    invoke-static/range {v35 .. v40}, Le/m/a/c/q1/d0;->z(JJJ)J

    move-result-wide v14

    sub-long v14, v14, v21

    aput-wide v14, v11, v6

    .line 128
    aput v7, v34, v6

    shr-int/lit8 v0, v0, 0x10

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2d

    if-eqz v3, :cond_2c

    if-nez v6, :cond_2d

    :cond_2c
    const/4 v0, 0x1

    goto :goto_23

    :cond_2d
    const/4 v0, 0x0

    .line 129
    :goto_23
    aput-boolean v0, v33, v6

    int-to-long v0, v2

    add-long/2addr v12, v0

    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v43

    move/from16 v7, v44

    move/from16 v0, v45

    move/from16 v1, v46

    move-object/from16 v14, v47

    move/from16 v15, v48

    goto/16 :goto_1e

    :cond_2e
    move-object/from16 v0, v42

    .line 130
    iput-wide v12, v0, Le/m/a/c/g1/c0/k;->r:J

    move v13, v8

    move/from16 v12, v18

    goto :goto_24

    :cond_2f
    move-object/from16 v26, v1

    move-object/from16 v25, v2

    move/from16 v32, v3

    move/from16 v41, v4

    move-object/from16 v23, v6

    move/from16 v27, v7

    move-object/from16 v28, v8

    move-object/from16 v30, v9

    move/from16 v24, v10

    move-object/from16 v31, v11

    move/from16 v35, v13

    :goto_24
    add-int/lit8 v3, v32, 0x1

    const v5, 0x7472756e

    move-object/from16 v0, p0

    move-object/from16 v6, v23

    move/from16 v10, v24

    move-object/from16 v2, v25

    move-object/from16 v1, v26

    move/from16 v7, v27

    move-object/from16 v8, v28

    move-object/from16 v9, v30

    move-object/from16 v11, v31

    move/from16 v4, v41

    goto/16 :goto_13

    :cond_30
    move-object/from16 v26, v1

    move-object/from16 v25, v2

    move/from16 v41, v4

    move/from16 v27, v7

    move-object/from16 v28, v8

    move-object/from16 v30, v9

    .line 131
    iget-object v0, v11, Le/m/a/c/g1/c0/d$b;->d:Le/m/a/c/g1/c0/i;

    move-object/from16 v1, v30

    iget-object v2, v1, Le/m/a/c/g1/c0/k;->a:Le/m/a/c/g1/c0/c;

    iget v2, v2, Le/m/a/c/g1/c0/c;->a:I

    .line 132
    invoke-virtual {v0, v2}, Le/m/a/c/g1/c0/i;->a(I)Le/m/a/c/g1/c0/j;

    move-result-object v0

    const v2, 0x7361697a

    .line 133
    invoke-virtual {v8, v2}, Le/m/a/c/g1/c0/a$a;->c(I)Le/m/a/c/g1/c0/a$b;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 134
    iget-object v2, v2, Le/m/a/c/g1/c0/a$b;->b:Le/m/a/c/q1/t;

    .line 135
    iget v3, v0, Le/m/a/c/g1/c0/j;->d:I

    const/16 v4, 0x8

    .line 136
    invoke-virtual {v2, v4}, Le/m/a/c/q1/t;->C(I)V

    .line 137
    invoke-virtual {v2}, Le/m/a/c/q1/t;->e()I

    move-result v5

    const v6, 0xffffff

    and-int/2addr v5, v6

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_31

    .line 138
    invoke-virtual {v2, v4}, Le/m/a/c/q1/t;->D(I)V

    .line 139
    :cond_31
    invoke-virtual {v2}, Le/m/a/c/q1/t;->q()I

    move-result v4

    .line 140
    invoke-virtual {v2}, Le/m/a/c/q1/t;->t()I

    move-result v5

    .line 141
    iget v6, v1, Le/m/a/c/g1/c0/k;->e:I

    if-ne v5, v6, :cond_36

    if-nez v4, :cond_33

    .line 142
    iget-object v4, v1, Le/m/a/c/g1/c0/k;->m:[Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_25
    if-ge v6, v5, :cond_35

    .line 143
    invoke-virtual {v2}, Le/m/a/c/q1/t;->q()I

    move-result v9

    add-int/2addr v7, v9

    if-le v9, v3, :cond_32

    const/4 v9, 0x1

    goto :goto_26

    :cond_32
    const/4 v9, 0x0

    .line 144
    :goto_26
    aput-boolean v9, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    :cond_33
    if-le v4, v3, :cond_34

    const/4 v2, 0x1

    goto :goto_27

    :cond_34
    const/4 v2, 0x0

    :goto_27
    mul-int/2addr v4, v5

    const/4 v3, 0x0

    add-int/lit8 v7, v4, 0x0

    .line 145
    iget-object v4, v1, Le/m/a/c/g1/c0/k;->m:[Z

    invoke-static {v4, v3, v5, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 146
    :cond_35
    invoke-virtual {v1, v7}, Le/m/a/c/g1/c0/k;->a(I)V

    goto :goto_28

    .line 147
    :cond_36
    new-instance v0, Le/m/a/c/m0;

    const-string v2, "Length mismatch: "

    const-string v3, ", "

    invoke-static {v2, v5, v3}, Le/d/c/a/a;->E(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Le/m/a/c/g1/c0/k;->e:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    :goto_28
    const v2, 0x7361696f

    .line 148
    invoke-virtual {v8, v2}, Le/m/a/c/g1/c0/a$a;->c(I)Le/m/a/c/g1/c0/a$b;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 149
    iget-object v2, v2, Le/m/a/c/g1/c0/a$b;->b:Le/m/a/c/q1/t;

    const/16 v3, 0x8

    .line 150
    invoke-virtual {v2, v3}, Le/m/a/c/q1/t;->C(I)V

    .line 151
    invoke-virtual {v2}, Le/m/a/c/q1/t;->e()I

    move-result v4

    const v5, 0xffffff

    and-int/2addr v5, v4

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_38

    .line 152
    invoke-virtual {v2, v3}, Le/m/a/c/q1/t;->D(I)V

    .line 153
    :cond_38
    invoke-virtual {v2}, Le/m/a/c/q1/t;->t()I

    move-result v3

    if-ne v3, v6, :cond_3a

    shr-int/lit8 v3, v4, 0x18

    and-int/lit16 v3, v3, 0xff

    .line 154
    iget-wide v4, v1, Le/m/a/c/g1/c0/k;->c:J

    if-nez v3, :cond_39

    .line 155
    invoke-virtual {v2}, Le/m/a/c/q1/t;->r()J

    move-result-wide v2

    goto :goto_29

    :cond_39
    invoke-virtual {v2}, Le/m/a/c/q1/t;->u()J

    move-result-wide v2

    :goto_29
    add-long/2addr v4, v2

    iput-wide v4, v1, Le/m/a/c/g1/c0/k;->c:J

    goto :goto_2a

    .line 156
    :cond_3a
    new-instance v0, Le/m/a/c/m0;

    const-string v1, "Unexpected saio entry count: "

    invoke-static {v1, v3}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    :goto_2a
    const v2, 0x73656e63

    .line 157
    invoke-virtual {v8, v2}, Le/m/a/c/g1/c0/a$a;->c(I)Le/m/a/c/g1/c0/a$b;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 158
    iget-object v2, v2, Le/m/a/c/g1/c0/a$b;->b:Le/m/a/c/q1/t;

    const/4 v3, 0x0

    .line 159
    invoke-static {v2, v3, v1}, Le/m/a/c/g1/c0/d;->g(Le/m/a/c/q1/t;ILe/m/a/c/g1/c0/k;)V

    :cond_3c
    const v2, 0x73626770

    .line 160
    invoke-virtual {v8, v2}, Le/m/a/c/g1/c0/a$a;->c(I)Le/m/a/c/g1/c0/a$b;

    move-result-object v2

    const v3, 0x73677064

    .line 161
    invoke-virtual {v8, v3}, Le/m/a/c/g1/c0/a$a;->c(I)Le/m/a/c/g1/c0/a$b;

    move-result-object v3

    if-eqz v2, :cond_49

    if-eqz v3, :cond_49

    .line 162
    iget-object v2, v2, Le/m/a/c/g1/c0/a$b;->b:Le/m/a/c/q1/t;

    iget-object v3, v3, Le/m/a/c/g1/c0/a$b;->b:Le/m/a/c/q1/t;

    if-eqz v0, :cond_3d

    iget-object v0, v0, Le/m/a/c/g1/c0/j;->b:Ljava/lang/String;

    const/16 v4, 0x8

    goto :goto_2b

    :cond_3d
    const/16 v4, 0x8

    const/4 v0, 0x0

    :goto_2b
    move-object/from16 v30, v0

    .line 163
    invoke-virtual {v2, v4}, Le/m/a/c/q1/t;->C(I)V

    .line 164
    invoke-virtual {v2}, Le/m/a/c/q1/t;->e()I

    move-result v0

    .line 165
    invoke-virtual {v2}, Le/m/a/c/q1/t;->e()I

    move-result v4

    const v5, 0x73656967

    if-eq v4, v5, :cond_3e

    goto/16 :goto_2f

    :cond_3e
    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    const/4 v4, 0x4

    const/4 v6, 0x1

    if-ne v0, v6, :cond_3f

    .line 166
    invoke-virtual {v2, v4}, Le/m/a/c/q1/t;->D(I)V

    .line 167
    :cond_3f
    invoke-virtual {v2}, Le/m/a/c/q1/t;->e()I

    move-result v0

    if-ne v0, v6, :cond_48

    const/16 v0, 0x8

    .line 168
    invoke-virtual {v3, v0}, Le/m/a/c/q1/t;->C(I)V

    .line 169
    invoke-virtual {v3}, Le/m/a/c/q1/t;->e()I

    move-result v0

    .line 170
    invoke-virtual {v3}, Le/m/a/c/q1/t;->e()I

    move-result v2

    if-eq v2, v5, :cond_40

    goto/16 :goto_2f

    :cond_40
    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v6, :cond_42

    .line 171
    invoke-virtual {v3}, Le/m/a/c/q1/t;->r()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_41

    goto :goto_2c

    .line 172
    :cond_41
    new-instance v0, Le/m/a/c/m0;

    const-string v1, "Variable length description in sgpd found (unsupported)"

    invoke-direct {v0, v1}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    const/4 v2, 0x2

    if-lt v0, v2, :cond_43

    .line 173
    invoke-virtual {v3, v4}, Le/m/a/c/q1/t;->D(I)V

    .line 174
    :cond_43
    :goto_2c
    invoke-virtual {v3}, Le/m/a/c/q1/t;->r()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_47

    const/4 v0, 0x1

    .line 175
    invoke-virtual {v3, v0}, Le/m/a/c/q1/t;->D(I)V

    .line 176
    invoke-virtual {v3}, Le/m/a/c/q1/t;->q()I

    move-result v2

    and-int/lit16 v4, v2, 0xf0

    shr-int/lit8 v33, v4, 0x4

    and-int/lit8 v34, v2, 0xf

    .line 177
    invoke-virtual {v3}, Le/m/a/c/q1/t;->q()I

    move-result v2

    if-ne v2, v0, :cond_44

    const/4 v0, 0x1

    goto :goto_2d

    :cond_44
    const/4 v0, 0x0

    :goto_2d
    move/from16 v29, v0

    if-nez v29, :cond_45

    goto :goto_2f

    .line 178
    :cond_45
    invoke-virtual {v3}, Le/m/a/c/q1/t;->q()I

    move-result v31

    const/16 v0, 0x10

    new-array v2, v0, [B

    .line 179
    iget-object v4, v3, Le/m/a/c/q1/t;->a:[B

    iget v5, v3, Le/m/a/c/q1/t;->b:I

    const/4 v6, 0x0

    invoke-static {v4, v5, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    iget v4, v3, Le/m/a/c/q1/t;->b:I

    add-int/2addr v4, v0

    iput v4, v3, Le/m/a/c/q1/t;->b:I

    if-nez v31, :cond_46

    .line 181
    invoke-virtual {v3}, Le/m/a/c/q1/t;->q()I

    move-result v0

    .line 182
    new-array v4, v0, [B

    .line 183
    iget-object v5, v3, Le/m/a/c/q1/t;->a:[B

    iget v7, v3, Le/m/a/c/q1/t;->b:I

    invoke-static {v5, v7, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    iget v5, v3, Le/m/a/c/q1/t;->b:I

    add-int/2addr v5, v0

    iput v5, v3, Le/m/a/c/q1/t;->b:I

    const/4 v0, 0x1

    move-object/from16 v35, v4

    goto :goto_2e

    :cond_46
    const/4 v0, 0x1

    const/4 v3, 0x0

    move-object/from16 v35, v3

    .line 185
    :goto_2e
    iput-boolean v0, v1, Le/m/a/c/g1/c0/k;->l:Z

    .line 186
    new-instance v0, Le/m/a/c/g1/c0/j;

    move-object/from16 v28, v0

    move-object/from16 v32, v2

    invoke-direct/range {v28 .. v35}, Le/m/a/c/g1/c0/j;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v0, v1, Le/m/a/c/g1/c0/k;->n:Le/m/a/c/g1/c0/j;

    goto :goto_2f

    .line 187
    :cond_47
    new-instance v0, Le/m/a/c/m0;

    const-string v1, "Entry count in sgpd != 1 (unsupported)."

    invoke-direct {v0, v1}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_48
    new-instance v0, Le/m/a/c/m0;

    const-string v1, "Entry count in sbgp != 1 (unsupported)."

    invoke-direct {v0, v1}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_49
    :goto_2f
    iget-object v0, v8, Le/m/a/c/g1/c0/a$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_30
    if-ge v2, v0, :cond_4c

    .line 190
    iget-object v3, v8, Le/m/a/c/g1/c0/a$a;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/a/c/g1/c0/a$b;

    .line 191
    iget v4, v3, Le/m/a/c/g1/c0/a;->a:I

    const v5, 0x75756964

    if-ne v4, v5, :cond_4b

    .line 192
    iget-object v3, v3, Le/m/a/c/g1/c0/a$b;->b:Le/m/a/c/q1/t;

    const/16 v4, 0x8

    .line 193
    invoke-virtual {v3, v4}, Le/m/a/c/q1/t;->C(I)V

    .line 194
    iget-object v4, v3, Le/m/a/c/q1/t;->a:[B

    iget v5, v3, Le/m/a/c/q1/t;->b:I

    const/4 v6, 0x0

    const/16 v7, 0x10

    move-object/from16 v9, v26

    invoke-static {v4, v5, v9, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    iget v4, v3, Le/m/a/c/q1/t;->b:I

    add-int/2addr v4, v7

    iput v4, v3, Le/m/a/c/q1/t;->b:I

    .line 196
    sget-object v4, Le/m/a/c/g1/c0/d;->F:[B

    invoke-static {v9, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_4a

    goto :goto_31

    .line 197
    :cond_4a
    invoke-static {v3, v7, v1}, Le/m/a/c/g1/c0/d;->g(Le/m/a/c/q1/t;ILe/m/a/c/g1/c0/k;)V

    goto :goto_31

    :cond_4b
    move-object/from16 v9, v26

    :goto_31
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v26, v9

    goto :goto_30

    :cond_4c
    move-object/from16 v9, v26

    const/16 v0, 0x8

    move v6, v0

    goto :goto_33

    :cond_4d
    :goto_32
    move-object v9, v1

    move-object/from16 v25, v2

    move-object/from16 v16, v3

    move/from16 v41, v4

    move/from16 v17, v5

    move/from16 v27, v7

    :goto_33
    add-int/lit8 v7, v27, 0x1

    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v3, v16

    move/from16 v5, v17

    move-object/from16 v2, v25

    move/from16 v4, v41

    goto/16 :goto_a

    :cond_4e
    move-object/from16 v25, v2

    const/4 v0, 0x0

    .line 198
    iget-object v1, v2, Le/m/a/c/g1/c0/a$a;->c:Ljava/util/List;

    invoke-static {v1}, Le/m/a/c/g1/c0/d;->e(Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v1

    move-object/from16 v3, p0

    if-eqz v1, :cond_50

    .line 199
    iget-object v2, v3, Le/m/a/c/g1/c0/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v4, v0

    :goto_34
    if-ge v4, v2, :cond_50

    .line 200
    iget-object v5, v3, Le/m/a/c/g1/c0/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/m/a/c/g1/c0/d$b;

    .line 201
    iget-object v6, v5, Le/m/a/c/g1/c0/d$b;->d:Le/m/a/c/g1/c0/i;

    iget-object v7, v5, Le/m/a/c/g1/c0/d$b;->b:Le/m/a/c/g1/c0/k;

    iget-object v7, v7, Le/m/a/c/g1/c0/k;->a:Le/m/a/c/g1/c0/c;

    iget v7, v7, Le/m/a/c/g1/c0/c;->a:I

    .line 202
    invoke-virtual {v6, v7}, Le/m/a/c/g1/c0/i;->a(I)Le/m/a/c/g1/c0/j;

    move-result-object v6

    if-eqz v6, :cond_4f

    .line 203
    iget-object v6, v6, Le/m/a/c/g1/c0/j;->b:Ljava/lang/String;

    goto :goto_35

    :cond_4f
    const/4 v6, 0x0

    .line 204
    :goto_35
    iget-object v7, v5, Le/m/a/c/g1/c0/d$b;->a:Le/m/a/c/g1/s;

    iget-object v5, v5, Le/m/a/c/g1/c0/d$b;->d:Le/m/a/c/g1/c0/i;

    iget-object v5, v5, Le/m/a/c/g1/c0/i;->f:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/drm/DrmInitData;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v6

    .line 205
    iget-object v8, v5, Lcom/google/android/exoplayer2/Format;->g:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v5, v6, v8}, Lcom/google/android/exoplayer2/Format;->a(Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    .line 206
    invoke-interface {v7, v5}, Le/m/a/c/g1/s;->b(Lcom/google/android/exoplayer2/Format;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 207
    :cond_50
    iget-wide v1, v3, Le/m/a/c/g1/c0/d;->t:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v4

    if-eqz v1, :cond_54

    .line 208
    iget-object v1, v3, Le/m/a/c/g1/c0/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_36
    if-ge v0, v1, :cond_53

    .line 209
    iget-object v2, v3, Le/m/a/c/g1/c0/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/a/c/g1/c0/d$b;

    iget-wide v4, v3, Le/m/a/c/g1/c0/d;->t:J

    .line 210
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-static {v4, v5}, Le/m/a/c/v;->b(J)J

    move-result-wide v4

    .line 212
    iget v6, v2, Le/m/a/c/g1/c0/d$b;->f:I

    .line 213
    :goto_37
    iget-object v7, v2, Le/m/a/c/g1/c0/d$b;->b:Le/m/a/c/g1/c0/k;

    iget v8, v7, Le/m/a/c/g1/c0/k;->e:I

    if-ge v6, v8, :cond_52

    .line 214
    iget-object v8, v7, Le/m/a/c/g1/c0/k;->j:[J

    aget-wide v9, v8, v6

    iget-object v8, v7, Le/m/a/c/g1/c0/k;->i:[I

    aget v8, v8, v6

    int-to-long v11, v8

    add-long/2addr v9, v11

    cmp-long v8, v9, v4

    if-gez v8, :cond_52

    .line 215
    iget-object v7, v7, Le/m/a/c/g1/c0/k;->k:[Z

    aget-boolean v7, v7, v6

    if-eqz v7, :cond_51

    .line 216
    iput v6, v2, Le/m/a/c/g1/c0/d$b;->i:I

    :cond_51
    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    :cond_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_53
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 217
    iput-wide v0, v3, Le/m/a/c/g1/c0/d;->t:J

    :cond_54
    move-object v1, v3

    goto :goto_38

    :cond_55
    move-object v3, v0

    .line 218
    iget-object v0, v1, Le/m/a/c/g1/c0/d;->k:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_56

    .line 219
    iget-object v0, v1, Le/m/a/c/g1/c0/d;->k:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/g1/c0/a$a;

    .line 220
    iget-object v0, v0, Le/m/a/c/g1/c0/a$a;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_56
    :goto_38
    move-object v0, v3

    goto/16 :goto_0

    :cond_57
    move-object v3, v0

    .line 221
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/g1/c0/d;->b()V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method
