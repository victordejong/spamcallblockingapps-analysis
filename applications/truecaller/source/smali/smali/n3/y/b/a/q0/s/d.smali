.class public Ln3/y/b/a/q0/s/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/q0/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/q0/s/d$c;,
        Ln3/y/b/a/q0/s/d$d;,
        Ln3/y/b/a/q0/s/d$b;
    }
.end annotation


# static fields
.field public static final b0:[B

.field public static final c0:[B

.field public static final d0:[B

.field public static final e0:[B

.field public static final f0:[B

.field public static final g0:Ljava/util/UUID;


# instance fields
.field public A:J

.field public B:J

.field public C:Ln3/y/b/a/x0/h;

.field public D:Ln3/y/b/a/x0/h;

.field public E:Z

.field public F:I

.field public G:J

.field public H:J

.field public I:I

.field public J:I

.field public K:[I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:Z

.field public U:B

.field public V:I

.field public W:I

.field public X:I

.field public Y:Z

.field public Z:Z

.field public final a:Ln3/y/b/a/q0/s/c;

.field public a0:Ln3/y/b/a/q0/h;

.field public final b:Ln3/y/b/a/q0/s/f;

.field public final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ln3/y/b/a/q0/s/d$c;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Z

.field public final e:Ln3/y/b/a/x0/m;

.field public final f:Ln3/y/b/a/x0/m;

.field public final g:Ln3/y/b/a/x0/m;

.field public final h:Ln3/y/b/a/x0/m;

.field public final i:Ln3/y/b/a/x0/m;

.field public final j:Ln3/y/b/a/x0/m;

.field public final k:Ln3/y/b/a/x0/m;

.field public final l:Ln3/y/b/a/x0/m;

.field public final m:Ln3/y/b/a/x0/m;

.field public final n:Ln3/y/b/a/x0/m;

.field public o:Ljava/nio/ByteBuffer;

.field public p:J

.field public q:J

.field public r:J

.field public s:J

.field public t:J

.field public u:Ln3/y/b/a/q0/s/d$c;

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

    sput-object v1, Ln3/y/b/a/q0/s/d;->b0:[B

    const/16 v1, 0xc

    new-array v1, v1, [B

    .line 2
    fill-array-data v1, :array_1

    sput-object v1, Ln3/y/b/a/q0/s/d;->c0:[B

    const-string v1, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    .line 3
    invoke-static {v1}, Ln3/y/b/a/x0/x;->q(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Ln3/y/b/a/q0/s/d;->d0:[B

    new-array v0, v0, [B

    .line 4
    fill-array-data v0, :array_2

    sput-object v0, Ln3/y/b/a/q0/s/d;->e0:[B

    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 5
    fill-array-data v0, :array_3

    sput-object v0, Ln3/y/b/a/q0/s/d;->f0:[B

    .line 6
    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Ln3/y/b/a/q0/s/d;->g0:Ljava/util/UUID;

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
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data

    :array_2
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

    :array_3
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 5

    .line 1
    new-instance v0, Ln3/y/b/a/q0/s/a;

    invoke-direct {v0}, Ln3/y/b/a/q0/s/a;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, -0x1

    .line 3
    iput-wide v1, p0, Ln3/y/b/a/q0/s/d;->q:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v3, p0, Ln3/y/b/a/q0/s/d;->r:J

    .line 5
    iput-wide v3, p0, Ln3/y/b/a/q0/s/d;->s:J

    .line 6
    iput-wide v3, p0, Ln3/y/b/a/q0/s/d;->t:J

    .line 7
    iput-wide v1, p0, Ln3/y/b/a/q0/s/d;->z:J

    .line 8
    iput-wide v1, p0, Ln3/y/b/a/q0/s/d;->A:J

    .line 9
    iput-wide v3, p0, Ln3/y/b/a/q0/s/d;->B:J

    .line 10
    iput-object v0, p0, Ln3/y/b/a/q0/s/d;->a:Ln3/y/b/a/q0/s/c;

    .line 11
    new-instance v1, Ln3/y/b/a/q0/s/d$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ln3/y/b/a/q0/s/d$b;-><init>(Ln3/y/b/a/q0/s/d;Ln3/y/b/a/q0/s/d$a;)V

    .line 12
    iput-object v1, v0, Ln3/y/b/a/q0/s/a;->d:Ln3/y/b/a/q0/s/b;

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    iput-boolean v0, p0, Ln3/y/b/a/q0/s/d;->d:Z

    .line 14
    new-instance p1, Ln3/y/b/a/q0/s/f;

    invoke-direct {p1}, Ln3/y/b/a/q0/s/f;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/q0/s/d;->b:Ln3/y/b/a/q0/s/f;

    .line 15
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/q0/s/d;->c:Landroid/util/SparseArray;

    .line 16
    new-instance p1, Ln3/y/b/a/x0/m;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ln3/y/b/a/x0/m;-><init>(I)V

    iput-object p1, p0, Ln3/y/b/a/q0/s/d;->g:Ln3/y/b/a/x0/m;

    .line 17
    new-instance p1, Ln3/y/b/a/x0/m;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {p1, v1}, Ln3/y/b/a/x0/m;-><init>([B)V

    iput-object p1, p0, Ln3/y/b/a/q0/s/d;->h:Ln3/y/b/a/x0/m;

    .line 18
    new-instance p1, Ln3/y/b/a/x0/m;

    invoke-direct {p1, v0}, Ln3/y/b/a/x0/m;-><init>(I)V

    iput-object p1, p0, Ln3/y/b/a/q0/s/d;->i:Ln3/y/b/a/x0/m;

    .line 19
    new-instance p1, Ln3/y/b/a/x0/m;

    sget-object v1, Ln3/y/b/a/x0/k;->a:[B

    invoke-direct {p1, v1}, Ln3/y/b/a/x0/m;-><init>([B)V

    iput-object p1, p0, Ln3/y/b/a/q0/s/d;->e:Ln3/y/b/a/x0/m;

    .line 20
    new-instance p1, Ln3/y/b/a/x0/m;

    invoke-direct {p1, v0}, Ln3/y/b/a/x0/m;-><init>(I)V

    iput-object p1, p0, Ln3/y/b/a/q0/s/d;->f:Ln3/y/b/a/x0/m;

    .line 21
    new-instance p1, Ln3/y/b/a/x0/m;

    invoke-direct {p1}, Ln3/y/b/a/x0/m;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/q0/s/d;->j:Ln3/y/b/a/x0/m;

    .line 22
    new-instance p1, Ln3/y/b/a/x0/m;

    invoke-direct {p1}, Ln3/y/b/a/x0/m;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/q0/s/d;->k:Ln3/y/b/a/x0/m;

    .line 23
    new-instance p1, Ln3/y/b/a/x0/m;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Ln3/y/b/a/x0/m;-><init>(I)V

    iput-object p1, p0, Ln3/y/b/a/q0/s/d;->l:Ln3/y/b/a/x0/m;

    .line 24
    new-instance p1, Ln3/y/b/a/x0/m;

    invoke-direct {p1}, Ln3/y/b/a/x0/m;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/q0/s/d;->m:Ln3/y/b/a/x0/m;

    .line 25
    new-instance p1, Ln3/y/b/a/x0/m;

    invoke-direct {p1}, Ln3/y/b/a/x0/m;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/q0/s/d;->n:Ln3/y/b/a/x0/m;

    return-void
.end method

.method public static e([II)[I
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


# virtual methods
.method public a(JJ)V
    .locals 0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide p1, p0, Ln3/y/b/a/q0/s/d;->B:J

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Ln3/y/b/a/q0/s/d;->F:I

    .line 3
    iget-object p2, p0, Ln3/y/b/a/q0/s/d;->a:Ln3/y/b/a/q0/s/c;

    check-cast p2, Ln3/y/b/a/q0/s/a;

    .line 4
    iput p1, p2, Ln3/y/b/a/q0/s/a;->e:I

    .line 5
    iget-object p3, p2, Ln3/y/b/a/q0/s/a;->b:Ljava/util/ArrayDeque;

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->clear()V

    .line 6
    iget-object p2, p2, Ln3/y/b/a/q0/s/a;->c:Ln3/y/b/a/q0/s/f;

    .line 7
    iput p1, p2, Ln3/y/b/a/q0/s/f;->b:I

    .line 8
    iput p1, p2, Ln3/y/b/a/q0/s/f;->c:I

    .line 9
    iget-object p2, p0, Ln3/y/b/a/q0/s/d;->b:Ln3/y/b/a/q0/s/f;

    .line 10
    iput p1, p2, Ln3/y/b/a/q0/s/f;->b:I

    .line 11
    iput p1, p2, Ln3/y/b/a/q0/s/f;->c:I

    .line 12
    invoke-virtual {p0}, Ln3/y/b/a/q0/s/d;->j()V

    move p2, p1

    .line 13
    :goto_0
    iget-object p3, p0, Ln3/y/b/a/q0/s/d;->c:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 14
    iget-object p3, p0, Ln3/y/b/a/q0/s/d;->c:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ln3/y/b/a/q0/s/d$c;

    .line 15
    iget-object p3, p3, Ln3/y/b/a/q0/s/d$c;->R:Ln3/y/b/a/q0/s/d$d;

    if-eqz p3, :cond_0

    .line 16
    iput-boolean p1, p3, Ln3/y/b/a/q0/s/d$d;->b:Z

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b(Ln3/y/b/a/q0/s/d$c;J)V
    .locals 10

    .line 1
    iget-object v0, p1, Ln3/y/b/a/q0/s/d$c;->R:Ln3/y/b/a/q0/s/d$d;

    if-eqz v0, :cond_3

    .line 2
    iget-boolean v1, v0, Ln3/y/b/a/q0/s/d$d;->b:Z

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget v1, v0, Ln3/y/b/a/q0/s/d$d;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Ln3/y/b/a/q0/s/d$d;->c:I

    if-nez v1, :cond_1

    .line 4
    iput-wide p2, v0, Ln3/y/b/a/q0/s/d$d;->e:J

    :cond_1
    const/16 p2, 0x10

    if-ge v2, p2, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    iget-object v3, p1, Ln3/y/b/a/q0/s/d$c;->V:Ln3/y/b/a/q0/p;

    iget-wide v4, v0, Ln3/y/b/a/q0/s/d$d;->e:J

    iget v6, v0, Ln3/y/b/a/q0/s/d$d;->f:I

    iget v7, v0, Ln3/y/b/a/q0/s/d$d;->d:I

    const/4 v8, 0x0

    iget-object v9, p1, Ln3/y/b/a/q0/s/d$c;->i:Ln3/y/b/a/q0/p$a;

    invoke-interface/range {v3 .. v9}, Ln3/y/b/a/q0/p;->b(JIIILn3/y/b/a/q0/p$a;)V

    const/4 p1, 0x0

    .line 6
    iput p1, v0, Ln3/y/b/a/q0/s/d$d;->c:I

    goto :goto_1

    .line 7
    :cond_3
    iget-object v0, p1, Ln3/y/b/a/q0/s/d$c;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v4, 0x13

    const-wide/16 v5, 0x3e8

    .line 8
    sget-object v7, Ln3/y/b/a/q0/s/d;->c0:[B

    const-string v3, "%02d:%02d:%02d,%03d"

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Ln3/y/b/a/q0/s/d;->c(Ln3/y/b/a/q0/s/d$c;Ljava/lang/String;IJ[B)V

    goto :goto_0

    .line 9
    :cond_4
    iget-object v0, p1, Ln3/y/b/a/q0/s/d$c;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/ASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v4, 0x15

    const-wide/16 v5, 0x2710

    .line 10
    sget-object v7, Ln3/y/b/a/q0/s/d;->f0:[B

    const-string v3, "%01d:%02d:%02d:%02d"

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Ln3/y/b/a/q0/s/d;->c(Ln3/y/b/a/q0/s/d$c;Ljava/lang/String;IJ[B)V

    .line 11
    :cond_5
    :goto_0
    iget v0, p0, Ln3/y/b/a/q0/s/d;->N:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_6

    .line 12
    iget-object v0, p0, Ln3/y/b/a/q0/s/d;->n:Ln3/y/b/a/x0/m;

    .line 13
    iget v1, v0, Ln3/y/b/a/x0/m;->c:I

    .line 14
    iget-object v2, p1, Ln3/y/b/a/q0/s/d$c;->V:Ln3/y/b/a/q0/p;

    invoke-interface {v2, v0, v1}, Ln3/y/b/a/q0/p;->d(Ln3/y/b/a/x0/m;I)V

    .line 15
    iget v0, p0, Ln3/y/b/a/q0/s/d;->X:I

    add-int/2addr v0, v1

    iput v0, p0, Ln3/y/b/a/q0/s/d;->X:I

    .line 16
    :cond_6
    iget-object v1, p1, Ln3/y/b/a/q0/s/d$c;->V:Ln3/y/b/a/q0/p;

    iget v4, p0, Ln3/y/b/a/q0/s/d;->N:I

    iget v5, p0, Ln3/y/b/a/q0/s/d;->X:I

    const/4 v6, 0x0

    iget-object v7, p1, Ln3/y/b/a/q0/s/d$c;->i:Ln3/y/b/a/q0/p$a;

    move-wide v2, p2

    invoke-interface/range {v1 .. v7}, Ln3/y/b/a/q0/p;->b(JIIILn3/y/b/a/q0/p$a;)V

    :goto_1
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Ln3/y/b/a/q0/s/d;->Y:Z

    .line 18
    invoke-virtual {p0}, Ln3/y/b/a/q0/s/d;->j()V

    return-void
.end method

.method public final c(Ln3/y/b/a/q0/s/d$c;Ljava/lang/String;IJ[B)V
    .locals 12

    move-object v0, p0

    .line 1
    iget-object v1, v0, Ln3/y/b/a/q0/s/d;->k:Ln3/y/b/a/x0/m;

    iget-object v1, v1, Ln3/y/b/a/x0/m;->a:[B

    iget-wide v2, v0, Ln3/y/b/a/q0/s/d;->H:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move-object/from16 v2, p6

    move-object v3, v2

    goto :goto_0

    :cond_0
    const-wide v6, 0xd693a400L

    .line 2
    div-long v6, v2, v6

    long-to-int v4, v6

    mul-int/lit16 v6, v4, 0xe10

    int-to-long v6, v6

    const-wide/32 v8, 0xf4240

    mul-long/2addr v6, v8

    sub-long/2addr v2, v6

    const-wide/32 v6, 0x3938700

    .line 3
    div-long v6, v2, v6

    long-to-int v6, v6

    mul-int/lit8 v7, v6, 0x3c

    int-to-long v10, v7

    mul-long/2addr v10, v8

    sub-long/2addr v2, v10

    .line 4
    div-long v10, v2, v8

    long-to-int v7, v10

    int-to-long v10, v7

    mul-long/2addr v10, v8

    sub-long/2addr v2, v10

    .line 5
    div-long v2, v2, p4

    long-to-int v2, v2

    .line 6
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v5

    const/4 v4, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v4

    const/4 v4, 0x2

    .line 7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v4

    const/4 v4, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v4

    move-object v2, p2

    .line 8
    invoke-static {v3, p2, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ln3/y/b/a/x0/x;->q(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v3, p6

    .line 9
    :goto_0
    array-length v3, v3

    move v4, p3

    invoke-static {v2, v5, v1, p3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, p1

    .line 10
    iget-object v1, v1, Ln3/y/b/a/q0/s/d$c;->V:Ln3/y/b/a/q0/p;

    iget-object v2, v0, Ln3/y/b/a/q0/s/d;->k:Ln3/y/b/a/x0/m;

    .line 11
    iget v3, v2, Ln3/y/b/a/x0/m;->c:I

    .line 12
    invoke-interface {v1, v2, v3}, Ln3/y/b/a/q0/p;->d(Ln3/y/b/a/x0/m;I)V

    .line 13
    iget v1, v0, Ln3/y/b/a/q0/s/d;->X:I

    iget-object v2, v0, Ln3/y/b/a/q0/s/d;->k:Ln3/y/b/a/x0/m;

    .line 14
    iget v2, v2, Ln3/y/b/a/x0/m;->c:I

    add-int/2addr v1, v2

    .line 15
    iput v1, v0, Ln3/y/b/a/q0/s/d;->X:I

    return-void
.end method

.method public final d(Ln3/y/b/a/q0/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/b/a/q0/s/d;->a0:Ln3/y/b/a/q0/h;

    return-void
.end method

.method public final f(Ln3/y/b/a/q0/d;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/q0/s/d;->g:Ln3/y/b/a/x0/m;

    .line 2
    iget v1, v0, Ln3/y/b/a/x0/m;->c:I

    if-lt v1, p2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, v0, Ln3/y/b/a/x0/m;->a:[B

    array-length v2, v1

    if-ge v2, p2, :cond_1

    .line 4
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v2, p0, Ln3/y/b/a/q0/s/d;->g:Ln3/y/b/a/x0/m;

    .line 5
    iget v2, v2, Ln3/y/b/a/x0/m;->c:I

    .line 6
    invoke-virtual {v0, v1, v2}, Ln3/y/b/a/x0/m;->x([BI)V

    .line 7
    :cond_1
    iget-object v0, p0, Ln3/y/b/a/q0/s/d;->g:Ln3/y/b/a/x0/m;

    iget-object v1, v0, Ln3/y/b/a/x0/m;->a:[B

    .line 8
    iget v0, v0, Ln3/y/b/a/x0/m;->c:I

    sub-int v2, p2, v0

    const/4 v3, 0x0

    .line 9
    invoke-virtual {p1, v1, v0, v2, v3}, Ln3/y/b/a/q0/d;->g([BIIZ)Z

    .line 10
    iget-object p1, p0, Ln3/y/b/a/q0/s/d;->g:Ln3/y/b/a/x0/m;

    invoke-virtual {p1, p2}, Ln3/y/b/a/x0/m;->y(I)V

    return-void
.end method

.method public final g(Ln3/y/b/a/q0/d;Ln3/y/b/a/q0/p;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/q0/s/d;->j:Ln3/y/b/a/x0/m;

    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3
    iget-object p3, p0, Ln3/y/b/a/q0/s/d;->j:Ln3/y/b/a/x0/m;

    invoke-interface {p2, p3, p1}, Ln3/y/b/a/q0/p;->d(Ln3/y/b/a/x0/m;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-interface {p2, p1, p3, v0}, Ln3/y/b/a/q0/p;->a(Ln3/y/b/a/q0/d;IZ)I

    move-result p1

    .line 5
    :goto_0
    iget p2, p0, Ln3/y/b/a/q0/s/d;->P:I

    add-int/2addr p2, p1

    iput p2, p0, Ln3/y/b/a/q0/s/d;->P:I

    .line 6
    iget p2, p0, Ln3/y/b/a/q0/s/d;->X:I

    add-int/2addr p2, p1

    iput p2, p0, Ln3/y/b/a/q0/s/d;->X:I

    return p1
.end method

.method public final h(Ln3/y/b/a/q0/d;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    new-instance v0, Ln3/y/b/a/q0/s/e;

    invoke-direct {v0}, Ln3/y/b/a/q0/s/e;-><init>()V

    .line 2
    iget-wide v1, p1, Ln3/y/b/a/q0/d;->c:J

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
    iget-object v5, v0, Ln3/y/b/a/q0/s/e;->a:Ln3/y/b/a/x0/m;

    iget-object v5, v5, Ln3/y/b/a/x0/m;->a:[B

    const/4 v6, 0x0

    const/4 v7, 0x4

    .line 4
    invoke-virtual {p1, v5, v6, v7, v6}, Ln3/y/b/a/q0/d;->d([BIIZ)Z

    .line 5
    iget-object v5, v0, Ln3/y/b/a/q0/s/e;->a:Ln3/y/b/a/x0/m;

    invoke-virtual {v5}, Ln3/y/b/a/x0/m;->p()J

    move-result-wide v8

    .line 6
    iput v7, v0, Ln3/y/b/a/q0/s/e;->b:I

    :goto_1
    const-wide/32 v10, 0x1a45dfa3

    cmp-long v5, v8, v10

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    .line 7
    iget v5, v0, Ln3/y/b/a/q0/s/e;->b:I

    add-int/2addr v5, v7

    iput v5, v0, Ln3/y/b/a/q0/s/e;->b:I

    if-ne v5, v4, :cond_2

    goto :goto_3

    .line 8
    :cond_2
    iget-object v5, v0, Ln3/y/b/a/q0/s/e;->a:Ln3/y/b/a/x0/m;

    iget-object v5, v5, Ln3/y/b/a/x0/m;->a:[B

    .line 9
    invoke-virtual {p1, v5, v6, v7, v6}, Ln3/y/b/a/q0/d;->d([BIIZ)Z

    const/16 v5, 0x8

    shl-long v7, v8, v5

    const-wide/16 v9, -0x100

    and-long/2addr v7, v9

    .line 10
    iget-object v5, v0, Ln3/y/b/a/q0/s/e;->a:Ln3/y/b/a/x0/m;

    iget-object v5, v5, Ln3/y/b/a/x0/m;->a:[B

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-long v9, v5

    or-long v8, v7, v9

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {v0, p1}, Ln3/y/b/a/q0/s/e;->a(Ln3/y/b/a/q0/d;)J

    move-result-wide v4

    .line 12
    iget v8, v0, Ln3/y/b/a/q0/s/e;->b:I

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
    iget v1, v0, Ln3/y/b/a/q0/s/e;->b:I

    int-to-long v1, v1

    add-long v12, v8, v4

    cmp-long v1, v1, v12

    if-gez v1, :cond_7

    .line 14
    invoke-virtual {v0, p1}, Ln3/y/b/a/q0/s/e;->a(Ln3/y/b/a/q0/d;)J

    move-result-wide v1

    cmp-long v1, v1, v10

    if-nez v1, :cond_5

    goto :goto_3

    .line 15
    :cond_5
    invoke-virtual {v0, p1}, Ln3/y/b/a/q0/s/e;->a(Ln3/y/b/a/q0/d;)J

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
    invoke-virtual {p1, v1, v6}, Ln3/y/b/a/q0/d;->a(IZ)Z

    .line 17
    iget v2, v0, Ln3/y/b/a/q0/s/e;->b:I

    add-int/2addr v2, v1

    iput v2, v0, Ln3/y/b/a/q0/s/e;->b:I

    goto :goto_2

    :cond_7
    if-nez v1, :cond_8

    move v6, v7

    :cond_8
    :goto_3
    return v6
.end method

.method public final i(Ln3/y/b/a/q0/d;Ln3/y/b/a/q0/m;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Ln3/y/b/a/q0/s/d;->Y:Z

    const/4 v1, 0x1

    move v2, v1

    :cond_0
    if-eqz v2, :cond_3

    .line 2
    iget-boolean v3, p0, Ln3/y/b/a/q0/s/d;->Y:Z

    if-nez v3, :cond_3

    .line 3
    iget-object v2, p0, Ln3/y/b/a/q0/s/d;->a:Ln3/y/b/a/q0/s/c;

    check-cast v2, Ln3/y/b/a/q0/s/a;

    invoke-virtual {v2, p1}, Ln3/y/b/a/q0/s/a;->b(Ln3/y/b/a/q0/d;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-wide v3, p1, Ln3/y/b/a/q0/d;->d:J

    .line 5
    iget-boolean v5, p0, Ln3/y/b/a/q0/s/d;->y:Z

    if-eqz v5, :cond_1

    .line 6
    iput-wide v3, p0, Ln3/y/b/a/q0/s/d;->A:J

    .line 7
    iget-wide v3, p0, Ln3/y/b/a/q0/s/d;->z:J

    iput-wide v3, p2, Ln3/y/b/a/q0/m;->a:J

    .line 8
    iput-boolean v0, p0, Ln3/y/b/a/q0/s/d;->y:Z

    :goto_0
    move v3, v1

    goto :goto_1

    .line 9
    :cond_1
    iget-boolean v3, p0, Ln3/y/b/a/q0/s/d;->v:Z

    if-eqz v3, :cond_2

    iget-wide v3, p0, Ln3/y/b/a/q0/s/d;->A:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    .line 10
    iput-wide v3, p2, Ln3/y/b/a/q0/m;->a:J

    .line 11
    iput-wide v5, p0, Ln3/y/b/a/q0/s/d;->A:J

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_1
    if-eqz v3, :cond_0

    return v1

    :cond_3
    if-nez v2, :cond_6

    move p1, v0

    .line 12
    :goto_2
    iget-object p2, p0, Ln3/y/b/a/q0/s/d;->c:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_5

    .line 13
    iget-object p2, p0, Ln3/y/b/a/q0/s/d;->c:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln3/y/b/a/q0/s/d$c;

    .line 14
    iget-object v1, p2, Ln3/y/b/a/q0/s/d$c;->R:Ln3/y/b/a/q0/s/d$d;

    if-eqz v1, :cond_4

    .line 15
    iget-boolean v2, v1, Ln3/y/b/a/q0/s/d$d;->b:Z

    if-eqz v2, :cond_4

    iget v2, v1, Ln3/y/b/a/q0/s/d$d;->c:I

    if-lez v2, :cond_4

    .line 16
    iget-object v3, p2, Ln3/y/b/a/q0/s/d$c;->V:Ln3/y/b/a/q0/p;

    iget-wide v4, v1, Ln3/y/b/a/q0/s/d$d;->e:J

    iget v6, v1, Ln3/y/b/a/q0/s/d$d;->f:I

    iget v7, v1, Ln3/y/b/a/q0/s/d$d;->d:I

    const/4 v8, 0x0

    iget-object v9, p2, Ln3/y/b/a/q0/s/d$c;->i:Ln3/y/b/a/q0/p$a;

    invoke-interface/range {v3 .. v9}, Ln3/y/b/a/q0/p;->b(JIIILn3/y/b/a/q0/p$a;)V

    .line 17
    iput v0, v1, Ln3/y/b/a/q0/s/d$d;->c:I

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, -0x1

    return p1

    :cond_6
    return v0
.end method

.method public final j()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Ln3/y/b/a/q0/s/d;->P:I

    .line 2
    iput v0, p0, Ln3/y/b/a/q0/s/d;->X:I

    .line 3
    iput v0, p0, Ln3/y/b/a/q0/s/d;->W:I

    .line 4
    iput-boolean v0, p0, Ln3/y/b/a/q0/s/d;->Q:Z

    .line 5
    iput-boolean v0, p0, Ln3/y/b/a/q0/s/d;->R:Z

    .line 6
    iput-boolean v0, p0, Ln3/y/b/a/q0/s/d;->T:Z

    .line 7
    iput v0, p0, Ln3/y/b/a/q0/s/d;->V:I

    .line 8
    iput-byte v0, p0, Ln3/y/b/a/q0/s/d;->U:B

    .line 9
    iput-boolean v0, p0, Ln3/y/b/a/q0/s/d;->S:Z

    .line 10
    iget-object v0, p0, Ln3/y/b/a/q0/s/d;->j:Ln3/y/b/a/x0/m;

    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->u()V

    return-void
.end method

.method public final k(J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/c0;
        }
    .end annotation

    .line 1
    iget-wide v2, p0, Ln3/y/b/a/q0/s/d;->r:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    .line 2
    invoke-static/range {v0 .. v5}, Ln3/y/b/a/x0/x;->z(JJJ)J

    move-result-wide p1

    return-wide p1

    .line 3
    :cond_0
    new-instance p1, Ln3/y/b/a/c0;

    const-string p2, "Can\'t scale timecode prior to timecodeScale being set."

    invoke-direct {p1, p2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final l(Ln3/y/b/a/q0/d;Ln3/y/b/a/q0/s/d$c;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p2, Ln3/y/b/a/q0/s/d$c;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p2, Ln3/y/b/a/q0/s/d;->b0:[B

    invoke-virtual {p0, p1, p2, p3}, Ln3/y/b/a/q0/s/d;->m(Ln3/y/b/a/q0/d;[BI)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p2, Ln3/y/b/a/q0/s/d$c;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/ASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p2, Ln3/y/b/a/q0/s/d;->e0:[B

    invoke-virtual {p0, p1, p2, p3}, Ln3/y/b/a/q0/s/d;->m(Ln3/y/b/a/q0/d;[BI)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p2, Ln3/y/b/a/q0/s/d$c;->V:Ln3/y/b/a/q0/p;

    .line 6
    iget-boolean v1, p0, Ln3/y/b/a/q0/s/d;->Q:Z

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-nez v1, :cond_11

    .line 7
    iget-boolean v1, p2, Ln3/y/b/a/q0/s/d$c;->g:Z

    if-eqz v1, :cond_e

    .line 8
    iget v1, p0, Ln3/y/b/a/q0/s/d;->N:I

    const v7, -0x40000001    # -1.9999999f

    and-int/2addr v1, v7

    iput v1, p0, Ln3/y/b/a/q0/s/d;->N:I

    .line 9
    iget-boolean v1, p0, Ln3/y/b/a/q0/s/d;->R:Z

    const/16 v7, 0x80

    if-nez v1, :cond_3

    .line 10
    iget-object v1, p0, Ln3/y/b/a/q0/s/d;->g:Ln3/y/b/a/x0/m;

    iget-object v1, v1, Ln3/y/b/a/x0/m;->a:[B

    .line 11
    invoke-virtual {p1, v1, v2, v6, v2}, Ln3/y/b/a/q0/d;->g([BIIZ)Z

    .line 12
    iget v1, p0, Ln3/y/b/a/q0/s/d;->P:I

    add-int/2addr v1, v6

    iput v1, p0, Ln3/y/b/a/q0/s/d;->P:I

    .line 13
    iget-object v1, p0, Ln3/y/b/a/q0/s/d;->g:Ln3/y/b/a/x0/m;

    iget-object v1, v1, Ln3/y/b/a/x0/m;->a:[B

    aget-byte v8, v1, v2

    and-int/2addr v8, v7

    if-eq v8, v7, :cond_2

    .line 14
    aget-byte v1, v1, v2

    iput-byte v1, p0, Ln3/y/b/a/q0/s/d;->U:B

    .line 15
    iput-boolean v6, p0, Ln3/y/b/a/q0/s/d;->R:Z

    goto :goto_0

    .line 16
    :cond_2
    new-instance p1, Ln3/y/b/a/c0;

    const-string p2, "Extension bit is set in signal byte"

    invoke-direct {p1, p2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_3
    :goto_0
    iget-byte v1, p0, Ln3/y/b/a/q0/s/d;->U:B

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

    .line 18
    :goto_2
    iget v8, p0, Ln3/y/b/a/q0/s/d;->N:I

    const/high16 v9, 0x40000000    # 2.0f

    or-int/2addr v8, v9

    iput v8, p0, Ln3/y/b/a/q0/s/d;->N:I

    .line 19
    iget-boolean v8, p0, Ln3/y/b/a/q0/s/d;->S:Z

    if-nez v8, :cond_7

    .line 20
    iget-object v8, p0, Ln3/y/b/a/q0/s/d;->l:Ln3/y/b/a/x0/m;

    iget-object v8, v8, Ln3/y/b/a/x0/m;->a:[B

    .line 21
    invoke-virtual {p1, v8, v2, v5, v2}, Ln3/y/b/a/q0/d;->g([BIIZ)Z

    .line 22
    iget v8, p0, Ln3/y/b/a/q0/s/d;->P:I

    add-int/2addr v8, v5

    iput v8, p0, Ln3/y/b/a/q0/s/d;->P:I

    .line 23
    iput-boolean v6, p0, Ln3/y/b/a/q0/s/d;->S:Z

    .line 24
    iget-object v8, p0, Ln3/y/b/a/q0/s/d;->g:Ln3/y/b/a/x0/m;

    iget-object v9, v8, Ln3/y/b/a/x0/m;->a:[B

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move v7, v2

    :goto_3
    or-int/2addr v7, v5

    int-to-byte v7, v7

    aput-byte v7, v9, v2

    .line 25
    invoke-virtual {v8, v2}, Ln3/y/b/a/x0/m;->z(I)V

    .line 26
    iget-object v7, p0, Ln3/y/b/a/q0/s/d;->g:Ln3/y/b/a/x0/m;

    invoke-interface {v0, v7, v6}, Ln3/y/b/a/q0/p;->d(Ln3/y/b/a/x0/m;I)V

    .line 27
    iget v7, p0, Ln3/y/b/a/q0/s/d;->X:I

    add-int/2addr v7, v6

    iput v7, p0, Ln3/y/b/a/q0/s/d;->X:I

    .line 28
    iget-object v7, p0, Ln3/y/b/a/q0/s/d;->l:Ln3/y/b/a/x0/m;

    invoke-virtual {v7, v2}, Ln3/y/b/a/x0/m;->z(I)V

    .line 29
    iget-object v7, p0, Ln3/y/b/a/q0/s/d;->l:Ln3/y/b/a/x0/m;

    invoke-interface {v0, v7, v5}, Ln3/y/b/a/q0/p;->d(Ln3/y/b/a/x0/m;I)V

    .line 30
    iget v7, p0, Ln3/y/b/a/q0/s/d;->X:I

    add-int/2addr v7, v5

    iput v7, p0, Ln3/y/b/a/q0/s/d;->X:I

    :cond_7
    if-eqz v1, :cond_f

    .line 31
    iget-boolean v1, p0, Ln3/y/b/a/q0/s/d;->T:Z

    if-nez v1, :cond_8

    .line 32
    iget-object v1, p0, Ln3/y/b/a/q0/s/d;->g:Ln3/y/b/a/x0/m;

    iget-object v1, v1, Ln3/y/b/a/x0/m;->a:[B

    .line 33
    invoke-virtual {p1, v1, v2, v6, v2}, Ln3/y/b/a/q0/d;->g([BIIZ)Z

    .line 34
    iget v1, p0, Ln3/y/b/a/q0/s/d;->P:I

    add-int/2addr v1, v6

    iput v1, p0, Ln3/y/b/a/q0/s/d;->P:I

    .line 35
    iget-object v1, p0, Ln3/y/b/a/q0/s/d;->g:Ln3/y/b/a/x0/m;

    invoke-virtual {v1, v2}, Ln3/y/b/a/x0/m;->z(I)V

    .line 36
    iget-object v1, p0, Ln3/y/b/a/q0/s/d;->g:Ln3/y/b/a/x0/m;

    invoke-virtual {v1}, Ln3/y/b/a/x0/m;->o()I

    move-result v1

    iput v1, p0, Ln3/y/b/a/q0/s/d;->V:I

    .line 37
    iput-boolean v6, p0, Ln3/y/b/a/q0/s/d;->T:Z

    .line 38
    :cond_8
    iget v1, p0, Ln3/y/b/a/q0/s/d;->V:I

    mul-int/2addr v1, v3

    .line 39
    iget-object v7, p0, Ln3/y/b/a/q0/s/d;->g:Ln3/y/b/a/x0/m;

    invoke-virtual {v7, v1}, Ln3/y/b/a/x0/m;->v(I)V

    .line 40
    iget-object v7, p0, Ln3/y/b/a/q0/s/d;->g:Ln3/y/b/a/x0/m;

    iget-object v7, v7, Ln3/y/b/a/x0/m;->a:[B

    .line 41
    invoke-virtual {p1, v7, v2, v1, v2}, Ln3/y/b/a/q0/d;->g([BIIZ)Z

    .line 42
    iget v7, p0, Ln3/y/b/a/q0/s/d;->P:I

    add-int/2addr v7, v1

    iput v7, p0, Ln3/y/b/a/q0/s/d;->P:I

    .line 43
    iget v1, p0, Ln3/y/b/a/q0/s/d;->V:I

    div-int/2addr v1, v4

    add-int/2addr v1, v6

    int-to-short v1, v1

    mul-int/lit8 v7, v1, 0x6

    add-int/2addr v7, v4

    .line 44
    iget-object v8, p0, Ln3/y/b/a/q0/s/d;->o:Ljava/nio/ByteBuffer;

    if-eqz v8, :cond_9

    .line 45
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    if-ge v8, v7, :cond_a

    .line 46
    :cond_9
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    iput-object v8, p0, Ln3/y/b/a/q0/s/d;->o:Ljava/nio/ByteBuffer;

    .line 47
    :cond_a
    iget-object v8, p0, Ln3/y/b/a/q0/s/d;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 48
    iget-object v8, p0, Ln3/y/b/a/q0/s/d;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move v1, v2

    move v8, v1

    .line 49
    :goto_4
    iget v9, p0, Ln3/y/b/a/q0/s/d;->V:I

    if-ge v1, v9, :cond_c

    .line 50
    iget-object v9, p0, Ln3/y/b/a/q0/s/d;->g:Ln3/y/b/a/x0/m;

    invoke-virtual {v9}, Ln3/y/b/a/x0/m;->r()I

    move-result v9

    .line 51
    rem-int/lit8 v10, v1, 0x2

    if-nez v10, :cond_b

    .line 52
    iget-object v10, p0, Ln3/y/b/a/q0/s/d;->o:Ljava/nio/ByteBuffer;

    sub-int v8, v9, v8

    int-to-short v8, v8

    invoke-virtual {v10, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 53
    :cond_b
    iget-object v10, p0, Ln3/y/b/a/q0/s/d;->o:Ljava/nio/ByteBuffer;

    sub-int v8, v9, v8

    invoke-virtual {v10, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_5
    add-int/lit8 v1, v1, 0x1

    move v8, v9

    goto :goto_4

    .line 54
    :cond_c
    iget v1, p0, Ln3/y/b/a/q0/s/d;->P:I

    sub-int v1, p3, v1

    sub-int/2addr v1, v8

    .line 55
    rem-int/2addr v9, v4

    if-ne v9, v6, :cond_d

    .line 56
    iget-object v8, p0, Ln3/y/b/a/q0/s/d;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_6

    .line 57
    :cond_d
    iget-object v8, p0, Ln3/y/b/a/q0/s/d;->o:Ljava/nio/ByteBuffer;

    int-to-short v1, v1

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 58
    iget-object v1, p0, Ln3/y/b/a/q0/s/d;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 59
    :goto_6
    iget-object v1, p0, Ln3/y/b/a/q0/s/d;->m:Ln3/y/b/a/x0/m;

    iget-object v8, p0, Ln3/y/b/a/q0/s/d;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v1, v8, v7}, Ln3/y/b/a/x0/m;->x([BI)V

    .line 60
    iget-object v1, p0, Ln3/y/b/a/q0/s/d;->m:Ln3/y/b/a/x0/m;

    invoke-interface {v0, v1, v7}, Ln3/y/b/a/q0/p;->d(Ln3/y/b/a/x0/m;I)V

    .line 61
    iget v1, p0, Ln3/y/b/a/q0/s/d;->X:I

    add-int/2addr v1, v7

    iput v1, p0, Ln3/y/b/a/q0/s/d;->X:I

    goto :goto_7

    .line 62
    :cond_e
    iget-object v1, p2, Ln3/y/b/a/q0/s/d$c;->h:[B

    if-eqz v1, :cond_f

    .line 63
    iget-object v7, p0, Ln3/y/b/a/q0/s/d;->j:Ln3/y/b/a/x0/m;

    array-length v8, v1

    .line 64
    iput-object v1, v7, Ln3/y/b/a/x0/m;->a:[B

    .line 65
    iput v8, v7, Ln3/y/b/a/x0/m;->c:I

    .line 66
    iput v2, v7, Ln3/y/b/a/x0/m;->b:I

    .line 67
    :cond_f
    :goto_7
    iget v1, p2, Ln3/y/b/a/q0/s/d$c;->f:I

    if-lez v1, :cond_10

    .line 68
    iget v1, p0, Ln3/y/b/a/q0/s/d;->N:I

    const/high16 v7, 0x10000000

    or-int/2addr v1, v7

    iput v1, p0, Ln3/y/b/a/q0/s/d;->N:I

    .line 69
    iget-object v1, p0, Ln3/y/b/a/q0/s/d;->n:Ln3/y/b/a/x0/m;

    invoke-virtual {v1}, Ln3/y/b/a/x0/m;->u()V

    .line 70
    iget-object v1, p0, Ln3/y/b/a/q0/s/d;->g:Ln3/y/b/a/x0/m;

    invoke-virtual {v1, v3}, Ln3/y/b/a/x0/m;->v(I)V

    .line 71
    iget-object v1, p0, Ln3/y/b/a/q0/s/d;->g:Ln3/y/b/a/x0/m;

    iget-object v7, v1, Ln3/y/b/a/x0/m;->a:[B

    shr-int/lit8 v8, p3, 0x18

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v7, v2

    shr-int/lit8 v8, p3, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 72
    aput-byte v8, v7, v6

    shr-int/lit8 v8, p3, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 73
    aput-byte v8, v7, v4

    const/4 v8, 0x3

    and-int/lit16 v9, p3, 0xff

    int-to-byte v9, v9

    .line 74
    aput-byte v9, v7, v8

    .line 75
    invoke-interface {v0, v1, v3}, Ln3/y/b/a/q0/p;->d(Ln3/y/b/a/x0/m;I)V

    .line 76
    iget v1, p0, Ln3/y/b/a/q0/s/d;->X:I

    add-int/2addr v1, v3

    iput v1, p0, Ln3/y/b/a/q0/s/d;->X:I

    .line 77
    :cond_10
    iput-boolean v6, p0, Ln3/y/b/a/q0/s/d;->Q:Z

    .line 78
    :cond_11
    iget-object v1, p0, Ln3/y/b/a/q0/s/d;->j:Ln3/y/b/a/x0/m;

    .line 79
    iget v1, v1, Ln3/y/b/a/x0/m;->c:I

    add-int/2addr p3, v1

    .line 80
    iget-object v1, p2, Ln3/y/b/a/q0/s/d$c;->b:Ljava/lang/String;

    const-string v7, "V_MPEG4/ISO/AVC"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, p2, Ln3/y/b/a/q0/s/d$c;->b:Ljava/lang/String;

    const-string v7, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto/16 :goto_d

    .line 81
    :cond_12
    iget-object v1, p2, Ln3/y/b/a/q0/s/d$c;->R:Ln3/y/b/a/q0/s/d$d;

    if-eqz v1, :cond_1b

    .line 82
    iget-object v1, p0, Ln3/y/b/a/q0/s/d;->j:Ln3/y/b/a/x0/m;

    .line 83
    iget v1, v1, Ln3/y/b/a/x0/m;->c:I

    if-nez v1, :cond_13

    move v1, v6

    goto :goto_8

    :cond_13
    move v1, v2

    .line 84
    :goto_8
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 85
    iget-object v1, p2, Ln3/y/b/a/q0/s/d$c;->R:Ln3/y/b/a/q0/s/d$d;

    iget v4, p0, Ln3/y/b/a/q0/s/d;->N:I

    .line 86
    iget-boolean v7, v1, Ln3/y/b/a/q0/s/d$d;->b:Z

    if-nez v7, :cond_19

    .line 87
    iget-object v7, v1, Ln3/y/b/a/q0/s/d$d;->a:[B

    const/16 v8, 0xa

    .line 88
    invoke-virtual {p1, v7, v2, v8, v2}, Ln3/y/b/a/q0/d;->d([BIIZ)Z

    .line 89
    iput v2, p1, Ln3/y/b/a/q0/d;->f:I

    .line 90
    iget-object v7, v1, Ln3/y/b/a/q0/s/d$d;->a:[B

    .line 91
    aget-byte v8, v7, v3

    const/4 v9, -0x8

    if-ne v8, v9, :cond_17

    const/4 v8, 0x5

    aget-byte v8, v7, v8

    const/16 v9, 0x72

    if-ne v8, v9, :cond_17

    const/4 v8, 0x6

    aget-byte v8, v7, v8

    const/16 v9, 0x6f

    if-ne v8, v9, :cond_17

    const/4 v8, 0x7

    aget-byte v9, v7, v8

    and-int/lit16 v9, v9, 0xfe

    const/16 v10, 0xba

    if-eq v9, v10, :cond_14

    goto :goto_a

    .line 92
    :cond_14
    aget-byte v9, v7, v8

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0xbb

    if-ne v9, v10, :cond_15

    move v9, v6

    goto :goto_9

    :cond_15
    move v9, v2

    :goto_9
    const/16 v10, 0x28

    if-eqz v9, :cond_16

    const/16 v5, 0x9

    .line 93
    :cond_16
    aget-byte v5, v7, v5

    shr-int/2addr v5, v3

    and-int/2addr v5, v8

    shl-int v5, v10, v5

    goto :goto_b

    :cond_17
    :goto_a
    move v5, v2

    :goto_b
    if-nez v5, :cond_18

    goto :goto_c

    .line 94
    :cond_18
    iput-boolean v6, v1, Ln3/y/b/a/q0/s/d$d;->b:Z

    .line 95
    iput v2, v1, Ln3/y/b/a/q0/s/d$d;->c:I

    .line 96
    :cond_19
    iget v5, v1, Ln3/y/b/a/q0/s/d$d;->c:I

    if-nez v5, :cond_1a

    .line 97
    iput v4, v1, Ln3/y/b/a/q0/s/d$d;->f:I

    .line 98
    iput v2, v1, Ln3/y/b/a/q0/s/d$d;->d:I

    .line 99
    :cond_1a
    iget v4, v1, Ln3/y/b/a/q0/s/d$d;->d:I

    add-int/2addr v4, p3

    iput v4, v1, Ln3/y/b/a/q0/s/d$d;->d:I

    .line 100
    :cond_1b
    :goto_c
    iget v1, p0, Ln3/y/b/a/q0/s/d;->P:I

    if-ge v1, p3, :cond_1f

    sub-int v1, p3, v1

    .line 101
    invoke-virtual {p0, p1, v0, v1}, Ln3/y/b/a/q0/s/d;->g(Ln3/y/b/a/q0/d;Ln3/y/b/a/q0/p;I)I

    goto :goto_c

    .line 102
    :cond_1c
    :goto_d
    iget-object v1, p0, Ln3/y/b/a/q0/s/d;->f:Ln3/y/b/a/x0/m;

    iget-object v1, v1, Ln3/y/b/a/x0/m;->a:[B

    .line 103
    aput-byte v2, v1, v2

    .line 104
    aput-byte v2, v1, v6

    .line 105
    aput-byte v2, v1, v4

    .line 106
    iget v4, p2, Ln3/y/b/a/q0/s/d$c;->W:I

    rsub-int/lit8 v5, v4, 0x4

    .line 107
    :goto_e
    iget v6, p0, Ln3/y/b/a/q0/s/d;->P:I

    if-ge v6, p3, :cond_1f

    .line 108
    iget v6, p0, Ln3/y/b/a/q0/s/d;->W:I

    if-nez v6, :cond_1e

    .line 109
    iget-object v6, p0, Ln3/y/b/a/q0/s/d;->j:Ln3/y/b/a/x0/m;

    invoke-virtual {v6}, Ln3/y/b/a/x0/m;->a()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v7, v5, v6

    sub-int v8, v4, v6

    .line 110
    invoke-virtual {p1, v1, v7, v8, v2}, Ln3/y/b/a/q0/d;->g([BIIZ)Z

    if-lez v6, :cond_1d

    .line 111
    iget-object v7, p0, Ln3/y/b/a/q0/s/d;->j:Ln3/y/b/a/x0/m;

    .line 112
    iget-object v8, v7, Ln3/y/b/a/x0/m;->a:[B

    iget v9, v7, Ln3/y/b/a/x0/m;->b:I

    invoke-static {v8, v9, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    iget v8, v7, Ln3/y/b/a/x0/m;->b:I

    add-int/2addr v8, v6

    iput v8, v7, Ln3/y/b/a/x0/m;->b:I

    .line 114
    :cond_1d
    iget v6, p0, Ln3/y/b/a/q0/s/d;->P:I

    add-int/2addr v6, v4

    iput v6, p0, Ln3/y/b/a/q0/s/d;->P:I

    .line 115
    iget-object v6, p0, Ln3/y/b/a/q0/s/d;->f:Ln3/y/b/a/x0/m;

    invoke-virtual {v6, v2}, Ln3/y/b/a/x0/m;->z(I)V

    .line 116
    iget-object v6, p0, Ln3/y/b/a/q0/s/d;->f:Ln3/y/b/a/x0/m;

    invoke-virtual {v6}, Ln3/y/b/a/x0/m;->r()I

    move-result v6

    iput v6, p0, Ln3/y/b/a/q0/s/d;->W:I

    .line 117
    iget-object v6, p0, Ln3/y/b/a/q0/s/d;->e:Ln3/y/b/a/x0/m;

    invoke-virtual {v6, v2}, Ln3/y/b/a/x0/m;->z(I)V

    .line 118
    iget-object v6, p0, Ln3/y/b/a/q0/s/d;->e:Ln3/y/b/a/x0/m;

    invoke-interface {v0, v6, v3}, Ln3/y/b/a/q0/p;->d(Ln3/y/b/a/x0/m;I)V

    .line 119
    iget v6, p0, Ln3/y/b/a/q0/s/d;->X:I

    add-int/2addr v6, v3

    iput v6, p0, Ln3/y/b/a/q0/s/d;->X:I

    goto :goto_e

    .line 120
    :cond_1e
    invoke-virtual {p0, p1, v0, v6}, Ln3/y/b/a/q0/s/d;->g(Ln3/y/b/a/q0/d;Ln3/y/b/a/q0/p;I)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Ln3/y/b/a/q0/s/d;->W:I

    goto :goto_e

    .line 121
    :cond_1f
    iget-object p1, p2, Ln3/y/b/a/q0/s/d$c;->b:Ljava/lang/String;

    const-string p2, "A_VORBIS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 122
    iget-object p1, p0, Ln3/y/b/a/q0/s/d;->h:Ln3/y/b/a/x0/m;

    invoke-virtual {p1, v2}, Ln3/y/b/a/x0/m;->z(I)V

    .line 123
    iget-object p1, p0, Ln3/y/b/a/q0/s/d;->h:Ln3/y/b/a/x0/m;

    invoke-interface {v0, p1, v3}, Ln3/y/b/a/q0/p;->d(Ln3/y/b/a/x0/m;I)V

    .line 124
    iget p1, p0, Ln3/y/b/a/q0/s/d;->X:I

    add-int/2addr p1, v3

    iput p1, p0, Ln3/y/b/a/q0/s/d;->X:I

    :cond_20
    return-void
.end method

.method public final m(Ln3/y/b/a/q0/d;[BI)V
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
    iget-object v1, p0, Ln3/y/b/a/q0/s/d;->k:Ln3/y/b/a/x0/m;

    .line 3
    iget-object v2, v1, Ln3/y/b/a/x0/m;->a:[B

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v3, v0, :cond_0

    add-int v2, v0, p3

    .line 4
    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, v1, Ln3/y/b/a/x0/m;->a:[B

    goto :goto_0

    .line 5
    :cond_0
    array-length v1, p2

    invoke-static {p2, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    :goto_0
    iget-object v1, p0, Ln3/y/b/a/q0/s/d;->k:Ln3/y/b/a/x0/m;

    iget-object v1, v1, Ln3/y/b/a/x0/m;->a:[B

    array-length p2, p2

    .line 7
    invoke-virtual {p1, v1, p2, p3, v4}, Ln3/y/b/a/q0/d;->g([BIIZ)Z

    .line 8
    iget-object p1, p0, Ln3/y/b/a/q0/s/d;->k:Ln3/y/b/a/x0/m;

    invoke-virtual {p1, v0}, Ln3/y/b/a/x0/m;->v(I)V

    return-void
.end method

.method public final release()V
    .locals 0

    return-void
.end method
