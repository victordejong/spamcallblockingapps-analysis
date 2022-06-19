.class public Le/m/a/c/g1/a0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/g1/a0/d$c;,
        Le/m/a/c/g1/a0/d$d;,
        Le/m/a/c/g1/a0/d$b;
    }
.end annotation


# static fields
.field public static final b0:[B

.field public static final c0:[B

.field public static final d0:[B

.field public static final e0:Ljava/util/UUID;


# instance fields
.field public A:J

.field public B:J

.field public C:Le/m/a/c/q1/o;

.field public D:Le/m/a/c/q1/o;

.field public E:Z

.field public F:Z

.field public G:I

.field public H:J

.field public I:J

.field public J:I

.field public K:I

.field public L:[I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:Z

.field public R:I

.field public S:I

.field public T:I

.field public U:Z

.field public V:Z

.field public W:Z

.field public X:I

.field public Y:B

.field public Z:Z

.field public final a:Le/m/a/c/g1/a0/c;

.field public a0:Le/m/a/c/g1/i;

.field public final b:Le/m/a/c/g1/a0/f;

.field public final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Le/m/a/c/g1/a0/d$c;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Z

.field public final e:Le/m/a/c/q1/t;

.field public final f:Le/m/a/c/q1/t;

.field public final g:Le/m/a/c/q1/t;

.field public final h:Le/m/a/c/q1/t;

.field public final i:Le/m/a/c/q1/t;

.field public final j:Le/m/a/c/q1/t;

.field public final k:Le/m/a/c/q1/t;

.field public final l:Le/m/a/c/q1/t;

.field public final m:Le/m/a/c/q1/t;

.field public final n:Le/m/a/c/q1/t;

.field public o:Ljava/nio/ByteBuffer;

.field public p:J

.field public q:J

.field public r:J

.field public s:J

.field public t:J

.field public u:Le/m/a/c/g1/a0/d$c;

.field public v:Z

.field public w:I

.field public x:J

.field public y:Z

.field public z:J


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Le/m/a/c/g1/a0/d;->b0:[B

    const-string v1, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    .line 2
    invoke-static {v1}, Le/m/a/c/q1/d0;->r(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Le/m/a/c/g1/a0/d;->c0:[B

    new-array v0, v0, [B

    .line 3
    fill-array-data v0, :array_1

    sput-object v0, Le/m/a/c/g1/a0/d;->d0:[B

    .line 4
    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Le/m/a/c/g1/a0/d;->e0:Ljava/util/UUID;

    return-void

    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 5

    .line 1
    new-instance v0, Le/m/a/c/g1/a0/a;

    invoke-direct {v0}, Le/m/a/c/g1/a0/a;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, -0x1

    .line 3
    iput-wide v1, p0, Le/m/a/c/g1/a0/d;->q:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v3, p0, Le/m/a/c/g1/a0/d;->r:J

    .line 5
    iput-wide v3, p0, Le/m/a/c/g1/a0/d;->s:J

    .line 6
    iput-wide v3, p0, Le/m/a/c/g1/a0/d;->t:J

    .line 7
    iput-wide v1, p0, Le/m/a/c/g1/a0/d;->z:J

    .line 8
    iput-wide v1, p0, Le/m/a/c/g1/a0/d;->A:J

    .line 9
    iput-wide v3, p0, Le/m/a/c/g1/a0/d;->B:J

    .line 10
    iput-object v0, p0, Le/m/a/c/g1/a0/d;->a:Le/m/a/c/g1/a0/c;

    .line 11
    new-instance v1, Le/m/a/c/g1/a0/d$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/m/a/c/g1/a0/d$b;-><init>(Le/m/a/c/g1/a0/d;Le/m/a/c/g1/a0/d$a;)V

    .line 12
    iput-object v1, v0, Le/m/a/c/g1/a0/a;->d:Le/m/a/c/g1/a0/b;

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    iput-boolean v0, p0, Le/m/a/c/g1/a0/d;->d:Z

    .line 14
    new-instance p1, Le/m/a/c/g1/a0/f;

    invoke-direct {p1}, Le/m/a/c/g1/a0/f;-><init>()V

    iput-object p1, p0, Le/m/a/c/g1/a0/d;->b:Le/m/a/c/g1/a0/f;

    .line 15
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Le/m/a/c/g1/a0/d;->c:Landroid/util/SparseArray;

    .line 16
    new-instance p1, Le/m/a/c/q1/t;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Le/m/a/c/q1/t;-><init>(I)V

    iput-object p1, p0, Le/m/a/c/g1/a0/d;->g:Le/m/a/c/q1/t;

    .line 17
    new-instance p1, Le/m/a/c/q1/t;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {p1, v1}, Le/m/a/c/q1/t;-><init>([B)V

    iput-object p1, p0, Le/m/a/c/g1/a0/d;->h:Le/m/a/c/q1/t;

    .line 18
    new-instance p1, Le/m/a/c/q1/t;

    invoke-direct {p1, v0}, Le/m/a/c/q1/t;-><init>(I)V

    iput-object p1, p0, Le/m/a/c/g1/a0/d;->i:Le/m/a/c/q1/t;

    .line 19
    new-instance p1, Le/m/a/c/q1/t;

    sget-object v1, Le/m/a/c/q1/r;->a:[B

    invoke-direct {p1, v1}, Le/m/a/c/q1/t;-><init>([B)V

    iput-object p1, p0, Le/m/a/c/g1/a0/d;->e:Le/m/a/c/q1/t;

    .line 20
    new-instance p1, Le/m/a/c/q1/t;

    invoke-direct {p1, v0}, Le/m/a/c/q1/t;-><init>(I)V

    iput-object p1, p0, Le/m/a/c/g1/a0/d;->f:Le/m/a/c/q1/t;

    .line 21
    new-instance p1, Le/m/a/c/q1/t;

    invoke-direct {p1}, Le/m/a/c/q1/t;-><init>()V

    iput-object p1, p0, Le/m/a/c/g1/a0/d;->j:Le/m/a/c/q1/t;

    .line 22
    new-instance p1, Le/m/a/c/q1/t;

    invoke-direct {p1}, Le/m/a/c/q1/t;-><init>()V

    iput-object p1, p0, Le/m/a/c/g1/a0/d;->k:Le/m/a/c/q1/t;

    .line 23
    new-instance p1, Le/m/a/c/q1/t;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Le/m/a/c/q1/t;-><init>(I)V

    iput-object p1, p0, Le/m/a/c/g1/a0/d;->l:Le/m/a/c/q1/t;

    .line 24
    new-instance p1, Le/m/a/c/q1/t;

    invoke-direct {p1}, Le/m/a/c/q1/t;-><init>()V

    iput-object p1, p0, Le/m/a/c/g1/a0/d;->m:Le/m/a/c/q1/t;

    .line 25
    new-instance p1, Le/m/a/c/q1/t;

    invoke-direct {p1}, Le/m/a/c/q1/t;-><init>()V

    iput-object p1, p0, Le/m/a/c/g1/a0/d;->n:Le/m/a/c/q1/t;

    return-void
.end method

.method public static c([II)[I
    .locals 1

    if-nez p0, :cond_0

    .line 1
    new-array p0, p1, [I

    return-object p0

    .line 2
    :cond_0
    array-length v0, p0

    if-lt v0, p1, :cond_1

    return-object p0

    .line 3
    :cond_1
    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [I

    return-object p0
.end method

.method public static e(JLjava/lang/String;J)[B
    .locals 9

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1
    :goto_0
    invoke-static {v0}, Ln3/g0/y;->r(Z)V

    const-wide v3, 0xd693a400L

    .line 2
    div-long v3, p0, v3

    long-to-int v0, v3

    mul-int/lit16 v3, v0, 0xe10

    int-to-long v3, v3

    const-wide/32 v5, 0xf4240

    mul-long/2addr v3, v5

    sub-long/2addr p0, v3

    const-wide/32 v3, 0x3938700

    .line 3
    div-long v3, p0, v3

    long-to-int v3, v3

    mul-int/lit8 v4, v3, 0x3c

    int-to-long v7, v4

    mul-long/2addr v7, v5

    sub-long/2addr p0, v7

    .line 4
    div-long v7, p0, v5

    long-to-int v4, v7

    int-to-long v7, v4

    mul-long/2addr v7, v5

    sub-long/2addr p0, v7

    .line 5
    div-long/2addr p0, p3

    long-to-int p0, p0

    .line 6
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v1

    const/4 p4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, p4

    const/4 p4, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p3, p4

    invoke-static {p1, p2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-static {p0}, Le/m/a/c/q1/d0;->r(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(JJ)V
    .locals 0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide p1, p0, Le/m/a/c/g1/a0/d;->B:J

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Le/m/a/c/g1/a0/d;->G:I

    .line 3
    iget-object p2, p0, Le/m/a/c/g1/a0/d;->a:Le/m/a/c/g1/a0/c;

    check-cast p2, Le/m/a/c/g1/a0/a;

    .line 4
    iput p1, p2, Le/m/a/c/g1/a0/a;->e:I

    .line 5
    iget-object p3, p2, Le/m/a/c/g1/a0/a;->b:Ljava/util/ArrayDeque;

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->clear()V

    .line 6
    iget-object p2, p2, Le/m/a/c/g1/a0/a;->c:Le/m/a/c/g1/a0/f;

    .line 7
    iput p1, p2, Le/m/a/c/g1/a0/f;->b:I

    .line 8
    iput p1, p2, Le/m/a/c/g1/a0/f;->c:I

    .line 9
    iget-object p2, p0, Le/m/a/c/g1/a0/d;->b:Le/m/a/c/g1/a0/f;

    .line 10
    iput p1, p2, Le/m/a/c/g1/a0/f;->b:I

    .line 11
    iput p1, p2, Le/m/a/c/g1/a0/f;->c:I

    .line 12
    invoke-virtual {p0}, Le/m/a/c/g1/a0/d;->g()V

    move p2, p1

    .line 13
    :goto_0
    iget-object p3, p0, Le/m/a/c/g1/a0/d;->c:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 14
    iget-object p3, p0, Le/m/a/c/g1/a0/d;->c:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/m/a/c/g1/a0/d$c;

    .line 15
    iget-object p3, p3, Le/m/a/c/g1/a0/d$c;->R:Le/m/a/c/g1/a0/d$d;

    if-eqz p3, :cond_0

    .line 16
    iput-boolean p1, p3, Le/m/a/c/g1/a0/d$d;->b:Z

    .line 17
    iput p1, p3, Le/m/a/c/g1/a0/d$d;->c:I

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b(Le/m/a/c/g1/a0/d$c;JIII)V
    .locals 9

    .line 1
    iget-object v0, p1, Le/m/a/c/g1/a0/d$c;->R:Le/m/a/c/g1/a0/d$d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v3, v0, Le/m/a/c/g1/a0/d$d;->b:Z

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    iget v3, v0, Le/m/a/c/g1/a0/d$d;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Le/m/a/c/g1/a0/d$d;->c:I

    if-nez v3, :cond_1

    .line 4
    iput-wide p2, v0, Le/m/a/c/g1/a0/d$d;->d:J

    .line 5
    iput p4, v0, Le/m/a/c/g1/a0/d$d;->e:I

    .line 6
    iput v2, v0, Le/m/a/c/g1/a0/d$d;->f:I

    .line 7
    :cond_1
    iget p2, v0, Le/m/a/c/g1/a0/d$d;->f:I

    add-int/2addr p2, p5

    iput p2, v0, Le/m/a/c/g1/a0/d$d;->f:I

    .line 8
    iput p6, v0, Le/m/a/c/g1/a0/d$d;->g:I

    const/16 p2, 0x10

    if-lt v4, p2, :cond_b

    .line 9
    invoke-virtual {v0, p1}, Le/m/a/c/g1/a0/d$d;->a(Le/m/a/c/g1/a0/d$c;)V

    goto/16 :goto_3

    .line 10
    :cond_2
    iget-object v0, p1, Le/m/a/c/g1/a0/d$c;->b:Ljava/lang/String;

    const-string v3, "S_TEXT/UTF8"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "S_TEXT/ASS"

    if-nez v0, :cond_3

    iget-object v0, p1, Le/m/a/c/g1/a0/d$c;->b:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 11
    :cond_3
    iget v0, p0, Le/m/a/c/g1/a0/d;->K:I

    if-le v0, v1, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    iget-wide v5, p0, Le/m/a/c/g1/a0/d;->I:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v7

    if-nez v0, :cond_5

    goto :goto_1

    .line 13
    :cond_5
    iget-object v0, p1, Le/m/a/c/g1/a0/d$c;->b:Ljava/lang/String;

    iget-object v7, p0, Le/m/a/c/g1/a0/d;->k:Le/m/a/c/q1/t;

    iget-object v7, v7, Le/m/a/c/q1/t;->a:[B

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-wide/16 v3, 0x3e8

    const-string v0, "%02d:%02d:%02d,%03d"

    .line 15
    invoke-static {v5, v6, v0, v3, v4}, Le/m/a/c/g1/a0/d;->e(JLjava/lang/String;J)[B

    move-result-object v0

    const/16 v3, 0x13

    goto :goto_0

    .line 16
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_7
    const-wide/16 v3, 0x2710

    const-string v0, "%01d:%02d:%02d:%02d"

    .line 17
    invoke-static {v5, v6, v0, v3, v4}, Le/m/a/c/g1/a0/d;->e(JLjava/lang/String;J)[B

    move-result-object v0

    const/16 v3, 0x15

    .line 18
    :goto_0
    array-length v4, v0

    invoke-static {v0, v2, v7, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iget-object v0, p1, Le/m/a/c/g1/a0/d$c;->V:Le/m/a/c/g1/s;

    iget-object v2, p0, Le/m/a/c/g1/a0/d;->k:Le/m/a/c/q1/t;

    .line 20
    iget v3, v2, Le/m/a/c/q1/t;->c:I

    .line 21
    invoke-interface {v0, v2, v3}, Le/m/a/c/g1/s;->a(Le/m/a/c/q1/t;I)V

    .line 22
    iget-object v0, p0, Le/m/a/c/g1/a0/d;->k:Le/m/a/c/q1/t;

    .line 23
    iget v0, v0, Le/m/a/c/q1/t;->c:I

    add-int/2addr p5, v0

    :cond_8
    :goto_1
    const/high16 v0, 0x10000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_a

    .line 24
    iget v0, p0, Le/m/a/c/g1/a0/d;->K:I

    if-le v0, v1, :cond_9

    const v0, -0x10000001

    and-int/2addr p4, v0

    goto :goto_2

    .line 25
    :cond_9
    iget-object v0, p0, Le/m/a/c/g1/a0/d;->n:Le/m/a/c/q1/t;

    .line 26
    iget v2, v0, Le/m/a/c/q1/t;->c:I

    .line 27
    iget-object v3, p1, Le/m/a/c/g1/a0/d$c;->V:Le/m/a/c/g1/s;

    invoke-interface {v3, v0, v2}, Le/m/a/c/g1/s;->a(Le/m/a/c/q1/t;I)V

    add-int/2addr p5, v2

    :cond_a
    :goto_2
    move v5, p4

    move v6, p5

    .line 28
    iget-object v2, p1, Le/m/a/c/g1/a0/d$c;->V:Le/m/a/c/g1/s;

    iget-object v8, p1, Le/m/a/c/g1/a0/d$c;->i:Le/m/a/c/g1/s$a;

    move-wide v3, p2

    move v7, p6

    invoke-interface/range {v2 .. v8}, Le/m/a/c/g1/s;->c(JIIILe/m/a/c/g1/s$a;)V

    .line 29
    :cond_b
    :goto_3
    iput-boolean v1, p0, Le/m/a/c/g1/a0/d;->F:Z

    return-void
.end method

.method public final d(Le/m/a/c/g1/e;Le/m/a/c/g1/p;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Le/m/a/c/g1/a0/d;->F:Z

    const/4 v1, 0x1

    move v2, v1

    :cond_0
    if-eqz v2, :cond_3

    .line 2
    iget-boolean v3, p0, Le/m/a/c/g1/a0/d;->F:Z

    if-nez v3, :cond_3

    .line 3
    iget-object v2, p0, Le/m/a/c/g1/a0/d;->a:Le/m/a/c/g1/a0/c;

    check-cast v2, Le/m/a/c/g1/a0/a;

    invoke-virtual {v2, p1}, Le/m/a/c/g1/a0/a;->b(Le/m/a/c/g1/e;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-wide v3, p1, Le/m/a/c/g1/e;->d:J

    .line 5
    iget-boolean v5, p0, Le/m/a/c/g1/a0/d;->y:Z

    if-eqz v5, :cond_1

    .line 6
    iput-wide v3, p0, Le/m/a/c/g1/a0/d;->A:J

    .line 7
    iget-wide v3, p0, Le/m/a/c/g1/a0/d;->z:J

    iput-wide v3, p2, Le/m/a/c/g1/p;->a:J

    .line 8
    iput-boolean v0, p0, Le/m/a/c/g1/a0/d;->y:Z

    :goto_0
    move v3, v1

    goto :goto_1

    .line 9
    :cond_1
    iget-boolean v3, p0, Le/m/a/c/g1/a0/d;->v:Z

    if-eqz v3, :cond_2

    iget-wide v3, p0, Le/m/a/c/g1/a0/d;->A:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    .line 10
    iput-wide v3, p2, Le/m/a/c/g1/p;->a:J

    .line 11
    iput-wide v5, p0, Le/m/a/c/g1/a0/d;->A:J

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_1
    if-eqz v3, :cond_0

    return v1

    :cond_3
    if-nez v2, :cond_6

    .line 12
    :goto_2
    iget-object p1, p0, Le/m/a/c/g1/a0/d;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v0, p1, :cond_5

    .line 13
    iget-object p1, p0, Le/m/a/c/g1/a0/d;->c:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/a/c/g1/a0/d$c;

    .line 14
    iget-object p2, p1, Le/m/a/c/g1/a0/d$c;->R:Le/m/a/c/g1/a0/d$d;

    if-eqz p2, :cond_4

    .line 15
    invoke-virtual {p2, p1}, Le/m/a/c/g1/a0/d$d;->a(Le/m/a/c/g1/a0/d$c;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, -0x1

    return p1

    :cond_6
    return v0
.end method

.method public final f(Le/m/a/c/g1/e;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/g1/a0/d;->g:Le/m/a/c/q1/t;

    .line 2
    iget v1, v0, Le/m/a/c/q1/t;->c:I

    if-lt v1, p2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, v0, Le/m/a/c/q1/t;->a:[B

    array-length v2, v1

    if-ge v2, p2, :cond_1

    .line 4
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v2, p0, Le/m/a/c/g1/a0/d;->g:Le/m/a/c/q1/t;

    .line 5
    iget v2, v2, Le/m/a/c/q1/t;->c:I

    .line 6
    invoke-virtual {v0, v1, v2}, Le/m/a/c/q1/t;->A([BI)V

    .line 7
    :cond_1
    iget-object v0, p0, Le/m/a/c/g1/a0/d;->g:Le/m/a/c/q1/t;

    iget-object v1, v0, Le/m/a/c/q1/t;->a:[B

    .line 8
    iget v0, v0, Le/m/a/c/q1/t;->c:I

    sub-int v2, p2, v0

    const/4 v3, 0x0

    .line 9
    invoke-virtual {p1, v1, v0, v2, v3}, Le/m/a/c/g1/e;->h([BIIZ)Z

    .line 10
    iget-object p1, p0, Le/m/a/c/g1/a0/d;->g:Le/m/a/c/q1/t;

    invoke-virtual {p1, p2}, Le/m/a/c/q1/t;->B(I)V

    return-void
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Le/m/a/c/g1/a0/d;->R:I

    .line 2
    iput v0, p0, Le/m/a/c/g1/a0/d;->S:I

    .line 3
    iput v0, p0, Le/m/a/c/g1/a0/d;->T:I

    .line 4
    iput-boolean v0, p0, Le/m/a/c/g1/a0/d;->U:Z

    .line 5
    iput-boolean v0, p0, Le/m/a/c/g1/a0/d;->V:Z

    .line 6
    iput-boolean v0, p0, Le/m/a/c/g1/a0/d;->W:Z

    .line 7
    iput v0, p0, Le/m/a/c/g1/a0/d;->X:I

    .line 8
    iput-byte v0, p0, Le/m/a/c/g1/a0/d;->Y:B

    .line 9
    iput-boolean v0, p0, Le/m/a/c/g1/a0/d;->Z:Z

    .line 10
    iget-object v0, p0, Le/m/a/c/g1/a0/d;->j:Le/m/a/c/q1/t;

    invoke-virtual {v0}, Le/m/a/c/q1/t;->x()V

    return-void
.end method

.method public final h(Le/m/a/c/g1/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/c/g1/a0/d;->a0:Le/m/a/c/g1/i;

    return-void
.end method

.method public final i(Le/m/a/c/g1/e;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    new-instance v0, Le/m/a/c/g1/a0/e;

    invoke-direct {v0}, Le/m/a/c/g1/a0/e;-><init>()V

    .line 2
    iget-wide v1, p1, Le/m/a/c/g1/e;->c:J

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    const-wide/16 v4, 0x400

    if-eqz v3, :cond_1

    cmp-long v6, v1, v4

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    move-wide v4, v1

    :cond_1
    :goto_0
    long-to-int v4, v4

    .line 3
    iget-object v5, v0, Le/m/a/c/g1/a0/e;->a:Le/m/a/c/q1/t;

    iget-object v5, v5, Le/m/a/c/q1/t;->a:[B

    const/4 v6, 0x0

    const/4 v7, 0x4

    .line 4
    invoke-virtual {p1, v5, v6, v7, v6}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 5
    iget-object v5, v0, Le/m/a/c/g1/a0/e;->a:Le/m/a/c/q1/t;

    invoke-virtual {v5}, Le/m/a/c/q1/t;->r()J

    move-result-wide v8

    .line 6
    iput v7, v0, Le/m/a/c/g1/a0/e;->b:I

    :goto_1
    const-wide/32 v10, 0x1a45dfa3

    cmp-long v5, v8, v10

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    .line 7
    iget v5, v0, Le/m/a/c/g1/a0/e;->b:I

    add-int/2addr v5, v7

    iput v5, v0, Le/m/a/c/g1/a0/e;->b:I

    if-ne v5, v4, :cond_2

    goto :goto_3

    .line 8
    :cond_2
    iget-object v5, v0, Le/m/a/c/g1/a0/e;->a:Le/m/a/c/q1/t;

    iget-object v5, v5, Le/m/a/c/q1/t;->a:[B

    .line 9
    invoke-virtual {p1, v5, v6, v7, v6}, Le/m/a/c/g1/e;->e([BIIZ)Z

    const/16 v5, 0x8

    shl-long v7, v8, v5

    const-wide/16 v9, -0x100

    and-long/2addr v7, v9

    .line 10
    iget-object v5, v0, Le/m/a/c/g1/a0/e;->a:Le/m/a/c/q1/t;

    iget-object v5, v5, Le/m/a/c/q1/t;->a:[B

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-long v9, v5

    or-long v8, v7, v9

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {v0, p1}, Le/m/a/c/g1/a0/e;->a(Le/m/a/c/g1/e;)J

    move-result-wide v4

    .line 12
    iget v8, v0, Le/m/a/c/g1/a0/e;->b:I

    int-to-long v8, v8

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v12, v4, v10

    if-eqz v12, :cond_8

    if-eqz v3, :cond_4

    add-long v12, v8, v4

    cmp-long v1, v12, v1

    if-ltz v1, :cond_4

    goto :goto_3

    .line 13
    :cond_4
    :goto_2
    iget v1, v0, Le/m/a/c/g1/a0/e;->b:I

    int-to-long v1, v1

    add-long v12, v8, v4

    cmp-long v1, v1, v12

    if-gez v1, :cond_7

    .line 14
    invoke-virtual {v0, p1}, Le/m/a/c/g1/a0/e;->a(Le/m/a/c/g1/e;)J

    move-result-wide v1

    cmp-long v1, v1, v10

    if-nez v1, :cond_5

    goto :goto_3

    .line 15
    :cond_5
    invoke-virtual {v0, p1}, Le/m/a/c/g1/a0/e;->a(Le/m/a/c/g1/e;)J

    move-result-wide v1

    const-wide/16 v12, 0x0

    cmp-long v3, v1, v12

    if-ltz v3, :cond_8

    const-wide/32 v12, 0x7fffffff

    cmp-long v12, v1, v12

    if-lez v12, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v3, :cond_4

    long-to-int v1, v1

    .line 16
    invoke-virtual {p1, v1, v6}, Le/m/a/c/g1/e;->a(IZ)Z

    .line 17
    iget v2, v0, Le/m/a/c/g1/a0/e;->b:I

    add-int/2addr v2, v1

    iput v2, v0, Le/m/a/c/g1/a0/e;->b:I

    goto :goto_2

    :cond_7
    if-nez v1, :cond_8

    move v6, v7

    :cond_8
    :goto_3
    return v6
.end method

.method public final j(J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/m0;
        }
    .end annotation

    .line 1
    iget-wide v2, p0, Le/m/a/c/g1/a0/d;->r:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    .line 2
    invoke-static/range {v0 .. v5}, Le/m/a/c/q1/d0;->z(JJJ)J

    move-result-wide p1

    return-wide p1

    .line 3
    :cond_0
    new-instance p1, Le/m/a/c/m0;

    const-string p2, "Can\'t scale timecode prior to timecodeScale being set."

    invoke-direct {p1, p2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k(Le/m/a/c/g1/e;Le/m/a/c/g1/a0/d$c;I)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p2, Le/m/a/c/g1/a0/d$c;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p2, Le/m/a/c/g1/a0/d;->b0:[B

    invoke-virtual {p0, p1, p2, p3}, Le/m/a/c/g1/a0/d;->l(Le/m/a/c/g1/e;[BI)V

    .line 3
    iget p1, p0, Le/m/a/c/g1/a0/d;->S:I

    .line 4
    invoke-virtual {p0}, Le/m/a/c/g1/a0/d;->g()V

    return p1

    .line 5
    :cond_0
    iget-object v0, p2, Le/m/a/c/g1/a0/d$c;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/ASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget-object p2, Le/m/a/c/g1/a0/d;->d0:[B

    invoke-virtual {p0, p1, p2, p3}, Le/m/a/c/g1/a0/d;->l(Le/m/a/c/g1/e;[BI)V

    .line 7
    iget p1, p0, Le/m/a/c/g1/a0/d;->S:I

    .line 8
    invoke-virtual {p0}, Le/m/a/c/g1/a0/d;->g()V

    return p1

    .line 9
    :cond_1
    iget-object v0, p2, Le/m/a/c/g1/a0/d$c;->V:Le/m/a/c/g1/s;

    .line 10
    iget-boolean v1, p0, Le/m/a/c/g1/a0/d;->U:Z

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-nez v1, :cond_11

    .line 11
    iget-boolean v1, p2, Le/m/a/c/g1/a0/d$c;->g:Z

    if-eqz v1, :cond_e

    .line 12
    iget v1, p0, Le/m/a/c/g1/a0/d;->O:I

    const v7, -0x40000001    # -1.9999999f

    and-int/2addr v1, v7

    iput v1, p0, Le/m/a/c/g1/a0/d;->O:I

    .line 13
    iget-boolean v1, p0, Le/m/a/c/g1/a0/d;->V:Z

    const/16 v7, 0x80

    if-nez v1, :cond_3

    .line 14
    iget-object v1, p0, Le/m/a/c/g1/a0/d;->g:Le/m/a/c/q1/t;

    iget-object v1, v1, Le/m/a/c/q1/t;->a:[B

    .line 15
    invoke-virtual {p1, v1, v2, v6, v2}, Le/m/a/c/g1/e;->h([BIIZ)Z

    .line 16
    iget v1, p0, Le/m/a/c/g1/a0/d;->R:I

    add-int/2addr v1, v6

    iput v1, p0, Le/m/a/c/g1/a0/d;->R:I

    .line 17
    iget-object v1, p0, Le/m/a/c/g1/a0/d;->g:Le/m/a/c/q1/t;

    iget-object v1, v1, Le/m/a/c/q1/t;->a:[B

    aget-byte v8, v1, v2

    and-int/2addr v8, v7

    if-eq v8, v7, :cond_2

    .line 18
    aget-byte v1, v1, v2

    iput-byte v1, p0, Le/m/a/c/g1/a0/d;->Y:B

    .line 19
    iput-boolean v6, p0, Le/m/a/c/g1/a0/d;->V:Z

    goto :goto_0

    .line 20
    :cond_2
    new-instance p1, Le/m/a/c/m0;

    const-string p2, "Extension bit is set in signal byte"

    invoke-direct {p1, p2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_3
    :goto_0
    iget-byte v1, p0, Le/m/a/c/g1/a0/d;->Y:B

    and-int/lit8 v8, v1, 0x1

    if-ne v8, v6, :cond_4

    move v8, v6

    goto :goto_1

    :cond_4
    move v8, v2

    :goto_1
    if-eqz v8, :cond_f

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_5

    move v1, v6

    goto :goto_2

    :cond_5
    move v1, v2

    .line 22
    :goto_2
    iget v8, p0, Le/m/a/c/g1/a0/d;->O:I

    const/high16 v9, 0x40000000    # 2.0f

    or-int/2addr v8, v9

    iput v8, p0, Le/m/a/c/g1/a0/d;->O:I

    .line 23
    iget-boolean v8, p0, Le/m/a/c/g1/a0/d;->Z:Z

    if-nez v8, :cond_7

    .line 24
    iget-object v8, p0, Le/m/a/c/g1/a0/d;->l:Le/m/a/c/q1/t;

    iget-object v8, v8, Le/m/a/c/q1/t;->a:[B

    .line 25
    invoke-virtual {p1, v8, v2, v5, v2}, Le/m/a/c/g1/e;->h([BIIZ)Z

    .line 26
    iget v8, p0, Le/m/a/c/g1/a0/d;->R:I

    add-int/2addr v8, v5

    iput v8, p0, Le/m/a/c/g1/a0/d;->R:I

    .line 27
    iput-boolean v6, p0, Le/m/a/c/g1/a0/d;->Z:Z

    .line 28
    iget-object v8, p0, Le/m/a/c/g1/a0/d;->g:Le/m/a/c/q1/t;

    iget-object v9, v8, Le/m/a/c/q1/t;->a:[B

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move v7, v2

    :goto_3
    or-int/2addr v7, v5

    int-to-byte v7, v7

    aput-byte v7, v9, v2

    .line 29
    invoke-virtual {v8, v2}, Le/m/a/c/q1/t;->C(I)V

    .line 30
    iget-object v7, p0, Le/m/a/c/g1/a0/d;->g:Le/m/a/c/q1/t;

    invoke-interface {v0, v7, v6}, Le/m/a/c/g1/s;->a(Le/m/a/c/q1/t;I)V

    .line 31
    iget v7, p0, Le/m/a/c/g1/a0/d;->S:I

    add-int/2addr v7, v6

    iput v7, p0, Le/m/a/c/g1/a0/d;->S:I

    .line 32
    iget-object v7, p0, Le/m/a/c/g1/a0/d;->l:Le/m/a/c/q1/t;

    invoke-virtual {v7, v2}, Le/m/a/c/q1/t;->C(I)V

    .line 33
    iget-object v7, p0, Le/m/a/c/g1/a0/d;->l:Le/m/a/c/q1/t;

    invoke-interface {v0, v7, v5}, Le/m/a/c/g1/s;->a(Le/m/a/c/q1/t;I)V

    .line 34
    iget v7, p0, Le/m/a/c/g1/a0/d;->S:I

    add-int/2addr v7, v5

    iput v7, p0, Le/m/a/c/g1/a0/d;->S:I

    :cond_7
    if-eqz v1, :cond_f

    .line 35
    iget-boolean v1, p0, Le/m/a/c/g1/a0/d;->W:Z

    if-nez v1, :cond_8

    .line 36
    iget-object v1, p0, Le/m/a/c/g1/a0/d;->g:Le/m/a/c/q1/t;

    iget-object v1, v1, Le/m/a/c/q1/t;->a:[B

    .line 37
    invoke-virtual {p1, v1, v2, v6, v2}, Le/m/a/c/g1/e;->h([BIIZ)Z

    .line 38
    iget v1, p0, Le/m/a/c/g1/a0/d;->R:I

    add-int/2addr v1, v6

    iput v1, p0, Le/m/a/c/g1/a0/d;->R:I

    .line 39
    iget-object v1, p0, Le/m/a/c/g1/a0/d;->g:Le/m/a/c/q1/t;

    invoke-virtual {v1, v2}, Le/m/a/c/q1/t;->C(I)V

    .line 40
    iget-object v1, p0, Le/m/a/c/g1/a0/d;->g:Le/m/a/c/q1/t;

    invoke-virtual {v1}, Le/m/a/c/q1/t;->q()I

    move-result v1

    iput v1, p0, Le/m/a/c/g1/a0/d;->X:I

    .line 41
    iput-boolean v6, p0, Le/m/a/c/g1/a0/d;->W:Z

    .line 42
    :cond_8
    iget v1, p0, Le/m/a/c/g1/a0/d;->X:I

    mul-int/2addr v1, v3

    .line 43
    iget-object v7, p0, Le/m/a/c/g1/a0/d;->g:Le/m/a/c/q1/t;

    invoke-virtual {v7, v1}, Le/m/a/c/q1/t;->y(I)V

    .line 44
    iget-object v7, p0, Le/m/a/c/g1/a0/d;->g:Le/m/a/c/q1/t;

    iget-object v7, v7, Le/m/a/c/q1/t;->a:[B

    .line 45
    invoke-virtual {p1, v7, v2, v1, v2}, Le/m/a/c/g1/e;->h([BIIZ)Z

    .line 46
    iget v7, p0, Le/m/a/c/g1/a0/d;->R:I

    add-int/2addr v7, v1

    iput v7, p0, Le/m/a/c/g1/a0/d;->R:I

    .line 47
    iget v1, p0, Le/m/a/c/g1/a0/d;->X:I

    div-int/2addr v1, v4

    add-int/2addr v1, v6

    int-to-short v1, v1

    mul-int/lit8 v7, v1, 0x6

    add-int/2addr v7, v4

    .line 48
    iget-object v8, p0, Le/m/a/c/g1/a0/d;->o:Ljava/nio/ByteBuffer;

    if-eqz v8, :cond_9

    .line 49
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    if-ge v8, v7, :cond_a

    .line 50
    :cond_9
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    iput-object v8, p0, Le/m/a/c/g1/a0/d;->o:Ljava/nio/ByteBuffer;

    .line 51
    :cond_a
    iget-object v8, p0, Le/m/a/c/g1/a0/d;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 52
    iget-object v8, p0, Le/m/a/c/g1/a0/d;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move v1, v2

    move v8, v1

    .line 53
    :goto_4
    iget v9, p0, Le/m/a/c/g1/a0/d;->X:I

    if-ge v1, v9, :cond_c

    .line 54
    iget-object v9, p0, Le/m/a/c/g1/a0/d;->g:Le/m/a/c/q1/t;

    invoke-virtual {v9}, Le/m/a/c/q1/t;->t()I

    move-result v9

    .line 55
    rem-int/lit8 v10, v1, 0x2

    if-nez v10, :cond_b

    .line 56
    iget-object v10, p0, Le/m/a/c/g1/a0/d;->o:Ljava/nio/ByteBuffer;

    sub-int v8, v9, v8

    int-to-short v8, v8

    invoke-virtual {v10, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 57
    :cond_b
    iget-object v10, p0, Le/m/a/c/g1/a0/d;->o:Ljava/nio/ByteBuffer;

    sub-int v8, v9, v8

    invoke-virtual {v10, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_5
    add-int/lit8 v1, v1, 0x1

    move v8, v9

    goto :goto_4

    .line 58
    :cond_c
    iget v1, p0, Le/m/a/c/g1/a0/d;->R:I

    sub-int v1, p3, v1

    sub-int/2addr v1, v8

    .line 59
    rem-int/2addr v9, v4

    if-ne v9, v6, :cond_d

    .line 60
    iget-object v8, p0, Le/m/a/c/g1/a0/d;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_6

    .line 61
    :cond_d
    iget-object v8, p0, Le/m/a/c/g1/a0/d;->o:Ljava/nio/ByteBuffer;

    int-to-short v1, v1

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 62
    iget-object v1, p0, Le/m/a/c/g1/a0/d;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 63
    :goto_6
    iget-object v1, p0, Le/m/a/c/g1/a0/d;->m:Le/m/a/c/q1/t;

    iget-object v8, p0, Le/m/a/c/g1/a0/d;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v1, v8, v7}, Le/m/a/c/q1/t;->A([BI)V

    .line 64
    iget-object v1, p0, Le/m/a/c/g1/a0/d;->m:Le/m/a/c/q1/t;

    invoke-interface {v0, v1, v7}, Le/m/a/c/g1/s;->a(Le/m/a/c/q1/t;I)V

    .line 65
    iget v1, p0, Le/m/a/c/g1/a0/d;->S:I

    add-int/2addr v1, v7

    iput v1, p0, Le/m/a/c/g1/a0/d;->S:I

    goto :goto_7

    .line 66
    :cond_e
    iget-object v1, p2, Le/m/a/c/g1/a0/d$c;->h:[B

    if-eqz v1, :cond_f

    .line 67
    iget-object v7, p0, Le/m/a/c/g1/a0/d;->j:Le/m/a/c/q1/t;

    array-length v8, v1

    .line 68
    iput-object v1, v7, Le/m/a/c/q1/t;->a:[B

    .line 69
    iput v8, v7, Le/m/a/c/q1/t;->c:I

    .line 70
    iput v2, v7, Le/m/a/c/q1/t;->b:I

    .line 71
    :cond_f
    :goto_7
    iget v1, p2, Le/m/a/c/g1/a0/d$c;->f:I

    if-lez v1, :cond_10

    .line 72
    iget v1, p0, Le/m/a/c/g1/a0/d;->O:I

    const/high16 v7, 0x10000000

    or-int/2addr v1, v7

    iput v1, p0, Le/m/a/c/g1/a0/d;->O:I

    .line 73
    iget-object v1, p0, Le/m/a/c/g1/a0/d;->n:Le/m/a/c/q1/t;

    invoke-virtual {v1}, Le/m/a/c/q1/t;->x()V

    .line 74
    iget-object v1, p0, Le/m/a/c/g1/a0/d;->g:Le/m/a/c/q1/t;

    invoke-virtual {v1, v3}, Le/m/a/c/q1/t;->y(I)V

    .line 75
    iget-object v1, p0, Le/m/a/c/g1/a0/d;->g:Le/m/a/c/q1/t;

    iget-object v7, v1, Le/m/a/c/q1/t;->a:[B

    shr-int/lit8 v8, p3, 0x18

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v7, v2

    shr-int/lit8 v8, p3, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 76
    aput-byte v8, v7, v6

    shr-int/lit8 v8, p3, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 77
    aput-byte v8, v7, v4

    const/4 v8, 0x3

    and-int/lit16 v9, p3, 0xff

    int-to-byte v9, v9

    .line 78
    aput-byte v9, v7, v8

    .line 79
    invoke-interface {v0, v1, v3}, Le/m/a/c/g1/s;->a(Le/m/a/c/q1/t;I)V

    .line 80
    iget v1, p0, Le/m/a/c/g1/a0/d;->S:I

    add-int/2addr v1, v3

    iput v1, p0, Le/m/a/c/g1/a0/d;->S:I

    .line 81
    :cond_10
    iput-boolean v6, p0, Le/m/a/c/g1/a0/d;->U:Z

    .line 82
    :cond_11
    iget-object v1, p0, Le/m/a/c/g1/a0/d;->j:Le/m/a/c/q1/t;

    .line 83
    iget v1, v1, Le/m/a/c/q1/t;->c:I

    add-int/2addr p3, v1

    .line 84
    iget-object v1, p2, Le/m/a/c/g1/a0/d$c;->b:Ljava/lang/String;

    const-string v7, "V_MPEG4/ISO/AVC"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, p2, Le/m/a/c/g1/a0/d$c;->b:Ljava/lang/String;

    const-string v7, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto/16 :goto_d

    .line 85
    :cond_12
    iget-object v1, p2, Le/m/a/c/g1/a0/d$c;->R:Le/m/a/c/g1/a0/d$d;

    if-eqz v1, :cond_1a

    .line 86
    iget-object v1, p0, Le/m/a/c/g1/a0/d;->j:Le/m/a/c/q1/t;

    .line 87
    iget v1, v1, Le/m/a/c/q1/t;->c:I

    if-nez v1, :cond_13

    move v1, v6

    goto :goto_8

    :cond_13
    move v1, v2

    .line 88
    :goto_8
    invoke-static {v1}, Ln3/g0/y;->x(Z)V

    .line 89
    iget-object v1, p2, Le/m/a/c/g1/a0/d$c;->R:Le/m/a/c/g1/a0/d$d;

    .line 90
    iget-boolean v4, v1, Le/m/a/c/g1/a0/d$d;->b:Z

    if-eqz v4, :cond_14

    goto :goto_c

    .line 91
    :cond_14
    iget-object v4, v1, Le/m/a/c/g1/a0/d$d;->a:[B

    const/16 v7, 0xa

    .line 92
    invoke-virtual {p1, v4, v2, v7, v2}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 93
    iput v2, p1, Le/m/a/c/g1/e;->f:I

    .line 94
    iget-object v4, v1, Le/m/a/c/g1/a0/d$d;->a:[B

    .line 95
    aget-byte v7, v4, v3

    const/4 v8, -0x8

    if-ne v7, v8, :cond_18

    const/4 v7, 0x5

    aget-byte v7, v4, v7

    const/16 v8, 0x72

    if-ne v7, v8, :cond_18

    const/4 v7, 0x6

    aget-byte v7, v4, v7

    const/16 v8, 0x6f

    if-ne v7, v8, :cond_18

    const/4 v7, 0x7

    aget-byte v8, v4, v7

    and-int/lit16 v8, v8, 0xfe

    const/16 v9, 0xba

    if-eq v8, v9, :cond_15

    goto :goto_a

    .line 96
    :cond_15
    aget-byte v8, v4, v7

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0xbb

    if-ne v8, v9, :cond_16

    move v8, v6

    goto :goto_9

    :cond_16
    move v8, v2

    :goto_9
    const/16 v9, 0x28

    if-eqz v8, :cond_17

    const/16 v5, 0x9

    .line 97
    :cond_17
    aget-byte v4, v4, v5

    shr-int/2addr v4, v3

    and-int/2addr v4, v7

    shl-int v4, v9, v4

    goto :goto_b

    :cond_18
    :goto_a
    move v4, v2

    :goto_b
    if-nez v4, :cond_19

    goto :goto_c

    .line 98
    :cond_19
    iput-boolean v6, v1, Le/m/a/c/g1/a0/d$d;->b:Z

    .line 99
    :cond_1a
    :goto_c
    iget v1, p0, Le/m/a/c/g1/a0/d;->R:I

    if-ge v1, p3, :cond_1e

    sub-int v1, p3, v1

    .line 100
    invoke-virtual {p0, p1, v0, v1}, Le/m/a/c/g1/a0/d;->m(Le/m/a/c/g1/e;Le/m/a/c/g1/s;I)I

    move-result v1

    .line 101
    iget v4, p0, Le/m/a/c/g1/a0/d;->R:I

    add-int/2addr v4, v1

    iput v4, p0, Le/m/a/c/g1/a0/d;->R:I

    .line 102
    iget v4, p0, Le/m/a/c/g1/a0/d;->S:I

    add-int/2addr v4, v1

    iput v4, p0, Le/m/a/c/g1/a0/d;->S:I

    goto :goto_c

    .line 103
    :cond_1b
    :goto_d
    iget-object v1, p0, Le/m/a/c/g1/a0/d;->f:Le/m/a/c/q1/t;

    iget-object v1, v1, Le/m/a/c/q1/t;->a:[B

    .line 104
    aput-byte v2, v1, v2

    .line 105
    aput-byte v2, v1, v6

    .line 106
    aput-byte v2, v1, v4

    .line 107
    iget v4, p2, Le/m/a/c/g1/a0/d$c;->W:I

    rsub-int/lit8 v5, v4, 0x4

    .line 108
    :goto_e
    iget v6, p0, Le/m/a/c/g1/a0/d;->R:I

    if-ge v6, p3, :cond_1e

    .line 109
    iget v6, p0, Le/m/a/c/g1/a0/d;->T:I

    if-nez v6, :cond_1d

    .line 110
    iget-object v6, p0, Le/m/a/c/g1/a0/d;->j:Le/m/a/c/q1/t;

    invoke-virtual {v6}, Le/m/a/c/q1/t;->a()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v7, v5, v6

    sub-int v8, v4, v6

    .line 111
    invoke-virtual {p1, v1, v7, v8, v2}, Le/m/a/c/g1/e;->h([BIIZ)Z

    if-lez v6, :cond_1c

    .line 112
    iget-object v7, p0, Le/m/a/c/g1/a0/d;->j:Le/m/a/c/q1/t;

    .line 113
    iget-object v8, v7, Le/m/a/c/q1/t;->a:[B

    iget v9, v7, Le/m/a/c/q1/t;->b:I

    invoke-static {v8, v9, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    iget v8, v7, Le/m/a/c/q1/t;->b:I

    add-int/2addr v8, v6

    iput v8, v7, Le/m/a/c/q1/t;->b:I

    .line 115
    :cond_1c
    iget v6, p0, Le/m/a/c/g1/a0/d;->R:I

    add-int/2addr v6, v4

    iput v6, p0, Le/m/a/c/g1/a0/d;->R:I

    .line 116
    iget-object v6, p0, Le/m/a/c/g1/a0/d;->f:Le/m/a/c/q1/t;

    invoke-virtual {v6, v2}, Le/m/a/c/q1/t;->C(I)V

    .line 117
    iget-object v6, p0, Le/m/a/c/g1/a0/d;->f:Le/m/a/c/q1/t;

    invoke-virtual {v6}, Le/m/a/c/q1/t;->t()I

    move-result v6

    iput v6, p0, Le/m/a/c/g1/a0/d;->T:I

    .line 118
    iget-object v6, p0, Le/m/a/c/g1/a0/d;->e:Le/m/a/c/q1/t;

    invoke-virtual {v6, v2}, Le/m/a/c/q1/t;->C(I)V

    .line 119
    iget-object v6, p0, Le/m/a/c/g1/a0/d;->e:Le/m/a/c/q1/t;

    invoke-interface {v0, v6, v3}, Le/m/a/c/g1/s;->a(Le/m/a/c/q1/t;I)V

    .line 120
    iget v6, p0, Le/m/a/c/g1/a0/d;->S:I

    add-int/2addr v6, v3

    iput v6, p0, Le/m/a/c/g1/a0/d;->S:I

    goto :goto_e

    .line 121
    :cond_1d
    invoke-virtual {p0, p1, v0, v6}, Le/m/a/c/g1/a0/d;->m(Le/m/a/c/g1/e;Le/m/a/c/g1/s;I)I

    move-result v6

    .line 122
    iget v7, p0, Le/m/a/c/g1/a0/d;->R:I

    add-int/2addr v7, v6

    iput v7, p0, Le/m/a/c/g1/a0/d;->R:I

    .line 123
    iget v7, p0, Le/m/a/c/g1/a0/d;->S:I

    add-int/2addr v7, v6

    iput v7, p0, Le/m/a/c/g1/a0/d;->S:I

    .line 124
    iget v7, p0, Le/m/a/c/g1/a0/d;->T:I

    sub-int/2addr v7, v6

    iput v7, p0, Le/m/a/c/g1/a0/d;->T:I

    goto :goto_e

    .line 125
    :cond_1e
    iget-object p1, p2, Le/m/a/c/g1/a0/d$c;->b:Ljava/lang/String;

    const-string p2, "A_VORBIS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 126
    iget-object p1, p0, Le/m/a/c/g1/a0/d;->h:Le/m/a/c/q1/t;

    invoke-virtual {p1, v2}, Le/m/a/c/q1/t;->C(I)V

    .line 127
    iget-object p1, p0, Le/m/a/c/g1/a0/d;->h:Le/m/a/c/q1/t;

    invoke-interface {v0, p1, v3}, Le/m/a/c/g1/s;->a(Le/m/a/c/q1/t;I)V

    .line 128
    iget p1, p0, Le/m/a/c/g1/a0/d;->S:I

    add-int/2addr p1, v3

    iput p1, p0, Le/m/a/c/g1/a0/d;->S:I

    .line 129
    :cond_1f
    iget p1, p0, Le/m/a/c/g1/a0/d;->S:I

    .line 130
    invoke-virtual {p0}, Le/m/a/c/g1/a0/d;->g()V

    return p1
.end method

.method public final l(Le/m/a/c/g1/e;[BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    array-length v0, p2

    add-int/2addr v0, p3

    .line 2
    iget-object v1, p0, Le/m/a/c/g1/a0/d;->k:Le/m/a/c/q1/t;

    .line 3
    iget-object v2, v1, Le/m/a/c/q1/t;->a:[B

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v3, v0, :cond_0

    add-int v2, v0, p3

    .line 4
    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, v1, Le/m/a/c/q1/t;->a:[B

    goto :goto_0

    .line 5
    :cond_0
    array-length v1, p2

    invoke-static {p2, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    :goto_0
    iget-object v1, p0, Le/m/a/c/g1/a0/d;->k:Le/m/a/c/q1/t;

    iget-object v1, v1, Le/m/a/c/q1/t;->a:[B

    array-length p2, p2

    .line 7
    invoke-virtual {p1, v1, p2, p3, v4}, Le/m/a/c/g1/e;->h([BIIZ)Z

    .line 8
    iget-object p1, p0, Le/m/a/c/g1/a0/d;->k:Le/m/a/c/q1/t;

    invoke-virtual {p1, v0}, Le/m/a/c/q1/t;->y(I)V

    return-void
.end method

.method public final m(Le/m/a/c/g1/e;Le/m/a/c/g1/s;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/g1/a0/d;->j:Le/m/a/c/q1/t;

    invoke-virtual {v0}, Le/m/a/c/q1/t;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3
    iget-object p3, p0, Le/m/a/c/g1/a0/d;->j:Le/m/a/c/q1/t;

    invoke-interface {p2, p3, p1}, Le/m/a/c/g1/s;->a(Le/m/a/c/q1/t;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-interface {p2, p1, p3, v0}, Le/m/a/c/g1/s;->d(Le/m/a/c/g1/e;IZ)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final release()V
    .locals 0

    return-void
.end method
