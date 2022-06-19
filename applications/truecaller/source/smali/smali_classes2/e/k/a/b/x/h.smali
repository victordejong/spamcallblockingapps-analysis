.class public Le/k/a/b/x/h;
.super Le/k/a/b/x/c;
.source "SourceFile"


# static fields
.field public static final A:[B

.field public static final x:[B

.field public static final y:[B

.field public static final z:[B


# instance fields
.field public final o:Ljava/io/OutputStream;

.field public p:B

.field public q:[B

.field public r:I

.field public final s:I

.field public final t:I

.field public u:[C

.field public final v:I

.field public w:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Le/k/a/b/w/a;->b:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 2
    sput-object v0, Le/k/a/b/x/h;->x:[B

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 3
    fill-array-data v1, :array_0

    sput-object v1, Le/k/a/b/x/h;->y:[B

    new-array v0, v0, [B

    .line 4
    fill-array-data v0, :array_1

    sput-object v0, Le/k/a/b/x/h;->z:[B

    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 5
    fill-array-data v0, :array_2

    sput-object v0, Le/k/a/b/x/h;->A:[B

    return-void

    :array_0
    .array-data 1
        0x6et
        0x75t
        0x6ct
        0x6ct
    .end array-data

    :array_1
    .array-data 1
        0x74t
        0x72t
        0x75t
        0x65t
    .end array-data

    :array_2
    .array-data 1
        0x66t
        0x61t
        0x6ct
        0x73t
        0x65t
    .end array-data
.end method

.method public constructor <init>(Le/k/a/b/w/b;ILe/k/a/b/n;Ljava/io/OutputStream;C)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Le/k/a/b/x/c;-><init>(Le/k/a/b/w/b;ILe/k/a/b/n;)V

    .line 2
    iput-object p4, p0, Le/k/a/b/x/h;->o:Ljava/io/OutputStream;

    int-to-byte p2, p5

    .line 3
    iput-byte p2, p0, Le/k/a/b/x/h;->p:B

    const/16 p2, 0x22

    if-eq p5, p2, :cond_0

    .line 4
    invoke-static {p5}, Le/k/a/b/w/a;->a(I)[I

    move-result-object p2

    iput-object p2, p0, Le/k/a/b/x/c;->j:[I

    :cond_0
    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Le/k/a/b/x/h;->w:Z

    .line 6
    iget-object p3, p1, Le/k/a/b/w/b;->f:[B

    invoke-virtual {p1, p3}, Le/k/a/b/w/b;->a(Ljava/lang/Object;)V

    .line 7
    iget-object p3, p1, Le/k/a/b/w/b;->d:Le/k/a/b/a0/a;

    invoke-virtual {p3, p2}, Le/k/a/b/a0/a;->a(I)[B

    move-result-object p3

    iput-object p3, p1, Le/k/a/b/w/b;->f:[B

    .line 8
    iput-object p3, p0, Le/k/a/b/x/h;->q:[B

    .line 9
    array-length p3, p3

    iput p3, p0, Le/k/a/b/x/h;->s:I

    shr-int/lit8 p3, p3, 0x3

    .line 10
    iput p3, p0, Le/k/a/b/x/h;->t:I

    .line 11
    iget-object p3, p1, Le/k/a/b/w/b;->i:[C

    invoke-virtual {p1, p3}, Le/k/a/b/w/b;->a(Ljava/lang/Object;)V

    .line 12
    iget-object p3, p1, Le/k/a/b/w/b;->d:Le/k/a/b/a0/a;

    const/4 p4, 0x0

    .line 13
    invoke-virtual {p3, p2, p4}, Le/k/a/b/a0/a;->b(II)[C

    move-result-object p2

    .line 14
    iput-object p2, p1, Le/k/a/b/w/b;->i:[C

    .line 15
    iput-object p2, p0, Le/k/a/b/x/h;->u:[C

    .line 16
    array-length p1, p2

    iput p1, p0, Le/k/a/b/x/h;->v:I

    .line 17
    sget-object p1, Le/k/a/b/g$a;->h:Le/k/a/b/g$a;

    invoke-virtual {p0, p1}, Le/k/a/b/u/a;->E(Le/k/a/b/g$a;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x7f

    .line 18
    invoke-virtual {p0, p1}, Le/k/a/b/x/c;->P(I)Le/k/a/b/g;

    :cond_1
    return-void
.end method


# virtual methods
.method public final A2(Ljava/lang/String;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/2addr p3, p2

    .line 1
    iget v0, p0, Le/k/a/b/x/h;->r:I

    .line 2
    iget-object v1, p0, Le/k/a/b/x/h;->q:[B

    .line 3
    iget-object v2, p0, Le/k/a/b/x/c;->j:[I

    :goto_0
    const/16 v3, 0x7f

    if-ge p2, p3, :cond_1

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v4, v3, :cond_1

    .line 5
    aget v5, v2, v4

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v0, 0x1

    int-to-byte v4, v4

    .line 6
    aput-byte v4, v1, v0

    add-int/lit8 p2, p2, 0x1

    move v0, v3

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    iput v0, p0, Le/k/a/b/x/h;->r:I

    if-ge p2, p3, :cond_10

    .line 8
    iget v1, p0, Le/k/a/b/x/c;->k:I

    const/16 v2, 0x5c

    const/16 v4, 0x7ff

    if-nez v1, :cond_8

    const/4 v1, 0x6

    invoke-static {p3, p2, v1, v0}, Le/d/c/a/a;->y1(IIII)I

    move-result v0

    .line 9
    iget v1, p0, Le/k/a/b/x/h;->s:I

    if-le v0, v1, :cond_2

    .line 10
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 11
    :cond_2
    iget v0, p0, Le/k/a/b/x/h;->r:I

    .line 12
    iget-object v1, p0, Le/k/a/b/x/h;->q:[B

    .line 13
    iget-object v5, p0, Le/k/a/b/x/c;->j:[I

    :goto_2
    if-ge p2, p3, :cond_7

    add-int/lit8 v6, p2, 0x1

    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-gt p2, v3, :cond_5

    .line 15
    aget v7, v5, p2

    if-nez v7, :cond_3

    add-int/lit8 v7, v0, 0x1

    int-to-byte p2, p2

    .line 16
    aput-byte p2, v1, v0

    move p2, v6

    move v0, v7

    goto :goto_2

    .line 17
    :cond_3
    aget v7, v5, p2

    if-lez v7, :cond_4

    add-int/lit8 p2, v0, 0x1

    .line 18
    aput-byte v2, v1, v0

    add-int/lit8 v0, p2, 0x1

    int-to-byte v7, v7

    .line 19
    aput-byte v7, v1, p2

    goto :goto_4

    .line 20
    :cond_4
    invoke-virtual {p0, p2, v0}, Le/k/a/b/x/h;->x2(II)I

    move-result p2

    goto :goto_3

    :cond_5
    if-gt p2, v4, :cond_6

    add-int/lit8 v7, v0, 0x1

    shr-int/lit8 v8, p2, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    .line 21
    aput-byte v8, v1, v0

    add-int/lit8 v0, v7, 0x1

    and-int/lit8 p2, p2, 0x3f

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    .line 22
    aput-byte p2, v1, v7

    goto :goto_4

    .line 23
    :cond_6
    invoke-virtual {p0, p2, v0}, Le/k/a/b/x/h;->r2(II)I

    move-result p2

    :goto_3
    move v0, p2

    :goto_4
    move p2, v6

    goto :goto_2

    .line 24
    :cond_7
    iput v0, p0, Le/k/a/b/x/h;->r:I

    goto/16 :goto_8

    :cond_8
    const/4 v1, 0x6

    invoke-static {p3, p2, v1, v0}, Le/d/c/a/a;->y1(IIII)I

    move-result v0

    .line 25
    iget v1, p0, Le/k/a/b/x/h;->s:I

    if-le v0, v1, :cond_9

    .line 26
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 27
    :cond_9
    iget v0, p0, Le/k/a/b/x/h;->r:I

    .line 28
    iget-object v1, p0, Le/k/a/b/x/h;->q:[B

    .line 29
    iget-object v5, p0, Le/k/a/b/x/c;->j:[I

    .line 30
    iget v6, p0, Le/k/a/b/x/c;->k:I

    :goto_5
    if-ge p2, p3, :cond_f

    add-int/lit8 v7, p2, 0x1

    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-gt p2, v3, :cond_c

    .line 32
    aget v8, v5, p2

    if-nez v8, :cond_a

    add-int/lit8 v8, v0, 0x1

    int-to-byte p2, p2

    .line 33
    aput-byte p2, v1, v0

    move p2, v7

    move v0, v8

    goto :goto_5

    .line 34
    :cond_a
    aget v8, v5, p2

    if-lez v8, :cond_b

    add-int/lit8 p2, v0, 0x1

    .line 35
    aput-byte v2, v1, v0

    add-int/lit8 v0, p2, 0x1

    int-to-byte v8, v8

    .line 36
    aput-byte v8, v1, p2

    goto :goto_7

    .line 37
    :cond_b
    invoke-virtual {p0, p2, v0}, Le/k/a/b/x/h;->x2(II)I

    move-result p2

    goto :goto_6

    :cond_c
    if-le p2, v6, :cond_d

    .line 38
    invoke-virtual {p0, p2, v0}, Le/k/a/b/x/h;->x2(II)I

    move-result p2

    goto :goto_6

    :cond_d
    if-gt p2, v4, :cond_e

    add-int/lit8 v8, v0, 0x1

    shr-int/lit8 v9, p2, 0x6

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    .line 39
    aput-byte v9, v1, v0

    add-int/lit8 v0, v8, 0x1

    and-int/lit8 p2, p2, 0x3f

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    .line 40
    aput-byte p2, v1, v8

    goto :goto_7

    .line 41
    :cond_e
    invoke-virtual {p0, p2, v0}, Le/k/a/b/x/h;->r2(II)I

    move-result p2

    :goto_6
    move v0, p2

    :goto_7
    move p2, v7

    goto :goto_5

    .line 42
    :cond_f
    iput v0, p0, Le/k/a/b/x/h;->r:I

    :cond_10
    :goto_8
    return-void
.end method

.method public B0(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/g;->a:Le/k/a/b/o;

    const-string v1, "Can not write a field name, expecting a value"

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_8

    .line 2
    iget-object v0, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    invoke-virtual {v0, p1}, Le/k/a/b/x/f;->q(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_7

    if-ne v0, v4, :cond_0

    .line 3
    iget-object v0, p0, Le/k/a/b/g;->a:Le/k/a/b/o;

    invoke-interface {v0, p0}, Le/k/a/b/o;->writeObjectEntrySeparator(Le/k/a/b/g;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le/k/a/b/g;->a:Le/k/a/b/o;

    invoke-interface {v0, p0}, Le/k/a/b/o;->beforeObjectEntries(Le/k/a/b/g;)V

    .line 5
    :goto_0
    iget-boolean v0, p0, Le/k/a/b/x/c;->m:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, p1, v3}, Le/k/a/b/x/h;->C2(Ljava/lang/String;Z)V

    goto :goto_2

    .line 7
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 8
    iget v1, p0, Le/k/a/b/x/h;->v:I

    if-le v0, v1, :cond_2

    .line 9
    invoke-virtual {p0, p1, v4}, Le/k/a/b/x/h;->C2(Ljava/lang/String;Z)V

    goto :goto_2

    .line 10
    :cond_2
    iget v1, p0, Le/k/a/b/x/h;->r:I

    iget v2, p0, Le/k/a/b/x/h;->s:I

    if-lt v1, v2, :cond_3

    .line 11
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 12
    :cond_3
    iget-object v1, p0, Le/k/a/b/x/h;->q:[B

    iget v2, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Le/k/a/b/x/h;->r:I

    iget-byte v4, p0, Le/k/a/b/x/h;->p:B

    aput-byte v4, v1, v2

    .line 13
    iget-object v1, p0, Le/k/a/b/x/h;->u:[C

    invoke-virtual {p1, v3, v0, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 14
    iget p1, p0, Le/k/a/b/x/h;->t:I

    if-gt v0, p1, :cond_5

    .line 15
    iget p1, p0, Le/k/a/b/x/h;->r:I

    add-int/2addr p1, v0

    iget v1, p0, Le/k/a/b/x/h;->s:I

    if-le p1, v1, :cond_4

    .line 16
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 17
    :cond_4
    iget-object p1, p0, Le/k/a/b/x/h;->u:[C

    invoke-virtual {p0, p1, v3, v0}, Le/k/a/b/x/h;->B2([CII)V

    goto :goto_1

    .line 18
    :cond_5
    iget-object p1, p0, Le/k/a/b/x/h;->u:[C

    invoke-virtual {p0, p1, v3, v0}, Le/k/a/b/x/h;->D2([CII)V

    .line 19
    :goto_1
    iget p1, p0, Le/k/a/b/x/h;->r:I

    iget v0, p0, Le/k/a/b/x/h;->s:I

    if-lt p1, v0, :cond_6

    .line 20
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 21
    :cond_6
    iget-object p1, p0, Le/k/a/b/x/h;->q:[B

    iget v0, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Le/k/a/b/x/h;->r:I

    iget-byte v1, p0, Le/k/a/b/x/h;->p:B

    aput-byte v1, p1, v0

    :goto_2
    return-void

    .line 22
    :cond_7
    new-instance p1, Le/k/a/b/f;

    invoke-direct {p1, v1, p0}, Le/k/a/b/f;-><init>(Ljava/lang/String;Le/k/a/b/g;)V

    throw p1

    .line 23
    :cond_8
    iget-object v0, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    invoke-virtual {v0, p1}, Le/k/a/b/x/f;->q(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_12

    if-ne v0, v4, :cond_a

    .line 24
    iget v0, p0, Le/k/a/b/x/h;->r:I

    iget v1, p0, Le/k/a/b/x/h;->s:I

    if-lt v0, v1, :cond_9

    .line 25
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 26
    :cond_9
    iget-object v0, p0, Le/k/a/b/x/h;->q:[B

    iget v1, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/x/h;->r:I

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    .line 27
    :cond_a
    iget-boolean v0, p0, Le/k/a/b/x/c;->m:Z

    if-eqz v0, :cond_b

    .line 28
    invoke-virtual {p0, p1, v3}, Le/k/a/b/x/h;->C2(Ljava/lang/String;Z)V

    return-void

    .line 29
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 30
    iget v1, p0, Le/k/a/b/x/h;->v:I

    if-le v0, v1, :cond_c

    .line 31
    invoke-virtual {p0, p1, v4}, Le/k/a/b/x/h;->C2(Ljava/lang/String;Z)V

    return-void

    .line 32
    :cond_c
    iget v1, p0, Le/k/a/b/x/h;->r:I

    iget v2, p0, Le/k/a/b/x/h;->s:I

    if-lt v1, v2, :cond_d

    .line 33
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 34
    :cond_d
    iget-object v1, p0, Le/k/a/b/x/h;->q:[B

    iget v2, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Le/k/a/b/x/h;->r:I

    iget-byte v5, p0, Le/k/a/b/x/h;->p:B

    aput-byte v5, v1, v2

    .line 35
    iget v1, p0, Le/k/a/b/x/h;->t:I

    if-gt v0, v1, :cond_f

    add-int/2addr v4, v0

    .line 36
    iget v1, p0, Le/k/a/b/x/h;->s:I

    if-le v4, v1, :cond_e

    .line 37
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 38
    :cond_e
    invoke-virtual {p0, p1, v3, v0}, Le/k/a/b/x/h;->A2(Ljava/lang/String;II)V

    goto :goto_3

    .line 39
    :cond_f
    iget v1, p0, Le/k/a/b/x/h;->t:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 40
    iget v2, p0, Le/k/a/b/x/h;->r:I

    add-int/2addr v2, v1

    iget v4, p0, Le/k/a/b/x/h;->s:I

    if-le v2, v4, :cond_10

    .line 41
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 42
    :cond_10
    invoke-virtual {p0, p1, v3, v1}, Le/k/a/b/x/h;->A2(Ljava/lang/String;II)V

    add-int/2addr v3, v1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_f

    .line 43
    :goto_3
    iget p1, p0, Le/k/a/b/x/h;->r:I

    iget v0, p0, Le/k/a/b/x/h;->s:I

    if-lt p1, v0, :cond_11

    .line 44
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 45
    :cond_11
    iget-object p1, p0, Le/k/a/b/x/h;->q:[B

    iget v0, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Le/k/a/b/x/h;->r:I

    iget-byte v1, p0, Le/k/a/b/x/h;->p:B

    aput-byte v1, p1, v0

    return-void

    .line 46
    :cond_12
    new-instance p1, Le/k/a/b/f;

    invoke-direct {p1, v1, p0}, Le/k/a/b/f;-><init>(Ljava/lang/String;Le/k/a/b/g;)V

    throw p1
.end method

.method public B1(Le/k/a/b/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "write a raw (unencoded) value"

    .line 1
    invoke-virtual {p0, v0}, Le/k/a/b/x/h;->i2(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/k/a/b/x/h;->q:[B

    iget v1, p0, Le/k/a/b/x/h;->r:I

    invoke-interface {p1, v0, v1}, Le/k/a/b/p;->e([BI)I

    move-result v0

    if-gez v0, :cond_0

    .line 3
    invoke-interface {p1}, Le/k/a/b/p;->g()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Le/k/a/b/x/h;->w2([B)V

    goto :goto_0

    .line 4
    :cond_0
    iget p1, p0, Le/k/a/b/x/h;->r:I

    add-int/2addr p1, v0

    iput p1, p0, Le/k/a/b/x/h;->r:I

    :goto_0
    return-void
.end method

.method public final B2([CII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/2addr p3, p2

    .line 1
    iget v0, p0, Le/k/a/b/x/h;->r:I

    .line 2
    iget-object v1, p0, Le/k/a/b/x/h;->q:[B

    .line 3
    iget-object v2, p0, Le/k/a/b/x/c;->j:[I

    :goto_0
    const/16 v3, 0x7f

    if-ge p2, p3, :cond_1

    .line 4
    aget-char v4, p1, p2

    if-gt v4, v3, :cond_1

    .line 5
    aget v5, v2, v4

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v0, 0x1

    int-to-byte v4, v4

    .line 6
    aput-byte v4, v1, v0

    add-int/lit8 p2, p2, 0x1

    move v0, v3

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    iput v0, p0, Le/k/a/b/x/h;->r:I

    if-ge p2, p3, :cond_10

    .line 8
    iget v1, p0, Le/k/a/b/x/c;->k:I

    const/16 v2, 0x5c

    const/16 v4, 0x7ff

    if-nez v1, :cond_8

    const/4 v1, 0x6

    invoke-static {p3, p2, v1, v0}, Le/d/c/a/a;->y1(IIII)I

    move-result v0

    .line 9
    iget v1, p0, Le/k/a/b/x/h;->s:I

    if-le v0, v1, :cond_2

    .line 10
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 11
    :cond_2
    iget v0, p0, Le/k/a/b/x/h;->r:I

    .line 12
    iget-object v1, p0, Le/k/a/b/x/h;->q:[B

    .line 13
    iget-object v5, p0, Le/k/a/b/x/c;->j:[I

    :goto_2
    if-ge p2, p3, :cond_7

    add-int/lit8 v6, p2, 0x1

    .line 14
    aget-char p2, p1, p2

    if-gt p2, v3, :cond_5

    .line 15
    aget v7, v5, p2

    if-nez v7, :cond_3

    add-int/lit8 v7, v0, 0x1

    int-to-byte p2, p2

    .line 16
    aput-byte p2, v1, v0

    move p2, v6

    move v0, v7

    goto :goto_2

    .line 17
    :cond_3
    aget v7, v5, p2

    if-lez v7, :cond_4

    add-int/lit8 p2, v0, 0x1

    .line 18
    aput-byte v2, v1, v0

    add-int/lit8 v0, p2, 0x1

    int-to-byte v7, v7

    .line 19
    aput-byte v7, v1, p2

    goto :goto_4

    .line 20
    :cond_4
    invoke-virtual {p0, p2, v0}, Le/k/a/b/x/h;->x2(II)I

    move-result p2

    goto :goto_3

    :cond_5
    if-gt p2, v4, :cond_6

    add-int/lit8 v7, v0, 0x1

    shr-int/lit8 v8, p2, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    .line 21
    aput-byte v8, v1, v0

    add-int/lit8 v0, v7, 0x1

    and-int/lit8 p2, p2, 0x3f

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    .line 22
    aput-byte p2, v1, v7

    goto :goto_4

    .line 23
    :cond_6
    invoke-virtual {p0, p2, v0}, Le/k/a/b/x/h;->r2(II)I

    move-result p2

    :goto_3
    move v0, p2

    :goto_4
    move p2, v6

    goto :goto_2

    .line 24
    :cond_7
    iput v0, p0, Le/k/a/b/x/h;->r:I

    goto :goto_8

    :cond_8
    const/4 v1, 0x6

    invoke-static {p3, p2, v1, v0}, Le/d/c/a/a;->y1(IIII)I

    move-result v0

    .line 25
    iget v1, p0, Le/k/a/b/x/h;->s:I

    if-le v0, v1, :cond_9

    .line 26
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 27
    :cond_9
    iget v0, p0, Le/k/a/b/x/h;->r:I

    .line 28
    iget-object v1, p0, Le/k/a/b/x/h;->q:[B

    .line 29
    iget-object v5, p0, Le/k/a/b/x/c;->j:[I

    .line 30
    iget v6, p0, Le/k/a/b/x/c;->k:I

    :goto_5
    if-ge p2, p3, :cond_f

    add-int/lit8 v7, p2, 0x1

    .line 31
    aget-char p2, p1, p2

    if-gt p2, v3, :cond_c

    .line 32
    aget v8, v5, p2

    if-nez v8, :cond_a

    add-int/lit8 v8, v0, 0x1

    int-to-byte p2, p2

    .line 33
    aput-byte p2, v1, v0

    move p2, v7

    move v0, v8

    goto :goto_5

    .line 34
    :cond_a
    aget v8, v5, p2

    if-lez v8, :cond_b

    add-int/lit8 p2, v0, 0x1

    .line 35
    aput-byte v2, v1, v0

    add-int/lit8 v0, p2, 0x1

    int-to-byte v8, v8

    .line 36
    aput-byte v8, v1, p2

    goto :goto_7

    .line 37
    :cond_b
    invoke-virtual {p0, p2, v0}, Le/k/a/b/x/h;->x2(II)I

    move-result p2

    goto :goto_6

    :cond_c
    if-le p2, v6, :cond_d

    .line 38
    invoke-virtual {p0, p2, v0}, Le/k/a/b/x/h;->x2(II)I

    move-result p2

    goto :goto_6

    :cond_d
    if-gt p2, v4, :cond_e

    add-int/lit8 v8, v0, 0x1

    shr-int/lit8 v9, p2, 0x6

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    .line 39
    aput-byte v9, v1, v0

    add-int/lit8 v0, v8, 0x1

    and-int/lit8 p2, p2, 0x3f

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    .line 40
    aput-byte p2, v1, v8

    goto :goto_7

    .line 41
    :cond_e
    invoke-virtual {p0, p2, v0}, Le/k/a/b/x/h;->r2(II)I

    move-result p2

    :goto_6
    move v0, p2

    :goto_7
    move p2, v7

    goto :goto_5

    .line 42
    :cond_f
    iput v0, p0, Le/k/a/b/x/h;->r:I

    :cond_10
    :goto_8
    return-void
.end method

.method public final C2(Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 1
    iget v0, p0, Le/k/a/b/x/h;->r:I

    iget v1, p0, Le/k/a/b/x/h;->s:I

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/b/x/h;->q:[B

    iget v1, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/x/h;->r:I

    iget-byte v2, p0, Le/k/a/b/x/h;->p:B

    aput-byte v2, v0, v1

    .line 4
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lez v0, :cond_3

    .line 5
    iget v2, p0, Le/k/a/b/x/h;->t:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 6
    iget v3, p0, Le/k/a/b/x/h;->r:I

    add-int/2addr v3, v2

    iget v4, p0, Le/k/a/b/x/h;->s:I

    if-le v3, v4, :cond_2

    .line 7
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 8
    :cond_2
    invoke-virtual {p0, p1, v1, v2}, Le/k/a/b/x/h;->A2(Ljava/lang/String;II)V

    add-int/2addr v1, v2

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_5

    .line 9
    iget p1, p0, Le/k/a/b/x/h;->r:I

    iget p2, p0, Le/k/a/b/x/h;->s:I

    if-lt p1, p2, :cond_4

    .line 10
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 11
    :cond_4
    iget-object p1, p0, Le/k/a/b/x/h;->q:[B

    iget p2, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Le/k/a/b/x/h;->r:I

    iget-byte v0, p0, Le/k/a/b/x/h;->p:B

    aput-byte v0, p1, p2

    :cond_5
    return-void
.end method

.method public D0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "write a null"

    .line 1
    invoke-virtual {p0, v0}, Le/k/a/b/x/h;->i2(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Le/k/a/b/x/h;->y2()V

    return-void
.end method

.method public final D2([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    iget v0, p0, Le/k/a/b/x/h;->t:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2
    iget v1, p0, Le/k/a/b/x/h;->r:I

    add-int/2addr v1, v0

    iget v2, p0, Le/k/a/b/x/h;->s:I

    if-le v1, v2, :cond_1

    .line 3
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 4
    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Le/k/a/b/x/h;->B2([CII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    if-gtz p3, :cond_0

    return-void
.end method

.method public F0(D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/k/a/b/u/a;->f:Z

    if-nez v0, :cond_1

    .line 2
    invoke-static {p1, p2}, Le/k/a/b/w/g;->g(D)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Le/k/a/b/g$a;->g:Le/k/a/b/g$a;

    iget v1, p0, Le/k/a/b/u/a;->e:I

    .line 3
    invoke-virtual {v0, v1}, Le/k/a/b/g$a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "write a number"

    .line 4
    invoke-virtual {p0, v0}, Le/k/a/b/x/h;->i2(Ljava/lang/String;)V

    .line 5
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/k/a/b/x/h;->s1(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/k/a/b/x/h;->T1(Ljava/lang/String;)V

    return-void
.end method

.method public final F1()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "start an array"

    .line 1
    invoke-virtual {p0, v0}, Le/k/a/b/x/h;->i2(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    invoke-virtual {v0}, Le/k/a/b/x/f;->j()Le/k/a/b/x/f;

    move-result-object v0

    iput-object v0, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    .line 3
    iget-object v0, p0, Le/k/a/b/g;->a:Le/k/a/b/o;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p0}, Le/k/a/b/o;->writeStartArray(Le/k/a/b/g;)V

    goto :goto_0

    .line 5
    :cond_0
    iget v0, p0, Le/k/a/b/x/h;->r:I

    iget v1, p0, Le/k/a/b/x/h;->s:I

    if-lt v0, v1, :cond_1

    .line 6
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 7
    :cond_1
    iget-object v0, p0, Le/k/a/b/x/h;->q:[B

    iget v1, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/x/h;->r:I

    const/16 v2, 0x5b

    aput-byte v2, v0, v1

    :goto_0
    return-void
.end method

.method public G0(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/k/a/b/u/a;->f:Z

    if-nez v0, :cond_1

    .line 2
    invoke-static {p1}, Le/k/a/b/w/g;->h(F)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Le/k/a/b/g$a;->g:Le/k/a/b/g$a;

    iget v1, p0, Le/k/a/b/u/a;->e:I

    .line 3
    invoke-virtual {v0, v1}, Le/k/a/b/g$a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "write a number"

    .line 4
    invoke-virtual {p0, v0}, Le/k/a/b/x/h;->i2(Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/k/a/b/x/h;->s1(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/k/a/b/x/h;->T1(Ljava/lang/String;)V

    return-void
.end method

.method public final I1(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "start an array"

    .line 1
    invoke-virtual {p0, v0}, Le/k/a/b/x/h;->i2(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    invoke-virtual {v0, p1}, Le/k/a/b/x/f;->k(Ljava/lang/Object;)Le/k/a/b/x/f;

    move-result-object p1

    iput-object p1, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    .line 3
    iget-object p1, p0, Le/k/a/b/g;->a:Le/k/a/b/o;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1, p0}, Le/k/a/b/o;->writeStartArray(Le/k/a/b/g;)V

    goto :goto_0

    .line 5
    :cond_0
    iget p1, p0, Le/k/a/b/x/h;->r:I

    iget v0, p0, Le/k/a/b/x/h;->s:I

    if-lt p1, v0, :cond_1

    .line 6
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 7
    :cond_1
    iget-object p1, p0, Le/k/a/b/x/h;->q:[B

    iget v0, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Le/k/a/b/x/h;->r:I

    const/16 v1, 0x5b

    aput-byte v1, p1, v0

    :goto_0
    return-void
.end method

.method public J0(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "write a number"

    .line 1
    invoke-virtual {p0, v0}, Le/k/a/b/x/h;->i2(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v0, v0, 0xb

    iget v1, p0, Le/k/a/b/x/h;->s:I

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 4
    :cond_0
    iget-boolean v0, p0, Le/k/a/b/u/a;->f:Z

    if-eqz v0, :cond_2

    .line 5
    iget v0, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v0, v0, 0xd

    iget v1, p0, Le/k/a/b/x/h;->s:I

    if-lt v0, v1, :cond_1

    .line 6
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 7
    :cond_1
    iget-object v0, p0, Le/k/a/b/x/h;->q:[B

    iget v1, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/x/h;->r:I

    iget-byte v3, p0, Le/k/a/b/x/h;->p:B

    aput-byte v3, v0, v1

    .line 8
    invoke-static {p1, v0, v2}, Le/k/a/b/w/g;->i(I[BI)I

    move-result p1

    iput p1, p0, Le/k/a/b/x/h;->r:I

    .line 9
    iget-object v0, p0, Le/k/a/b/x/h;->q:[B

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Le/k/a/b/x/h;->r:I

    iget-byte v1, p0, Le/k/a/b/x/h;->p:B

    aput-byte v1, v0, p1

    return-void

    .line 10
    :cond_2
    iget-object v0, p0, Le/k/a/b/x/h;->q:[B

    iget v1, p0, Le/k/a/b/x/h;->r:I

    invoke-static {p1, v0, v1}, Le/k/a/b/w/g;->i(I[BI)I

    move-result p1

    iput p1, p0, Le/k/a/b/x/h;->r:I

    return-void
.end method

.method public K0(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "write a number"

    .line 1
    invoke-virtual {p0, v0}, Le/k/a/b/x/h;->i2(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Le/k/a/b/u/a;->f:Z

    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v0, v0, 0x17

    iget v1, p0, Le/k/a/b/x/h;->s:I

    if-lt v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 5
    :cond_0
    iget-object v0, p0, Le/k/a/b/x/h;->q:[B

    iget v1, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/x/h;->r:I

    iget-byte v3, p0, Le/k/a/b/x/h;->p:B

    aput-byte v3, v0, v1

    .line 6
    invoke-static {p1, p2, v0, v2}, Le/k/a/b/w/g;->k(J[BI)I

    move-result p1

    iput p1, p0, Le/k/a/b/x/h;->r:I

    .line 7
    iget-object p2, p0, Le/k/a/b/x/h;->q:[B

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Le/k/a/b/x/h;->r:I

    iget-byte v0, p0, Le/k/a/b/x/h;->p:B

    aput-byte v0, p2, p1

    return-void

    .line 8
    :cond_1
    iget v0, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v0, v0, 0x15

    iget v1, p0, Le/k/a/b/x/h;->s:I

    if-lt v0, v1, :cond_2

    .line 9
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 10
    :cond_2
    iget-object v0, p0, Le/k/a/b/x/h;->q:[B

    iget v1, p0, Le/k/a/b/x/h;->r:I

    invoke-static {p1, p2, v0, v1}, Le/k/a/b/w/g;->k(J[BI)I

    move-result p1

    iput p1, p0, Le/k/a/b/x/h;->r:I

    return-void
.end method

.method public L0(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "write a number"

    .line 1
    invoke-virtual {p0, v0}, Le/k/a/b/x/h;->i2(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/k/a/b/x/h;->y2()V

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Le/k/a/b/u/a;->f:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Le/k/a/b/x/h;->z2(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Le/k/a/b/x/h;->s1(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public L1(Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p2, "start an array"

    .line 1
    invoke-virtual {p0, p2}, Le/k/a/b/x/h;->i2(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    invoke-virtual {p2, p1}, Le/k/a/b/x/f;->k(Ljava/lang/Object;)Le/k/a/b/x/f;

    move-result-object p1

    iput-object p1, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    .line 3
    iget-object p1, p0, Le/k/a/b/g;->a:Le/k/a/b/o;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1, p0}, Le/k/a/b/o;->writeStartArray(Le/k/a/b/g;)V

    goto :goto_0

    .line 5
    :cond_0
    iget p1, p0, Le/k/a/b/x/h;->r:I

    iget p2, p0, Le/k/a/b/x/h;->s:I

    if-lt p1, p2, :cond_1

    .line 6
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 7
    :cond_1
    iget-object p1, p0, Le/k/a/b/x/h;->q:[B

    iget p2, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Le/k/a/b/x/h;->r:I

    const/16 v0, 0x5b

    aput-byte v0, p1, p2

    :goto_0
    return-void
.end method

.method public final M1()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "start an object"

    .line 1
    invoke-virtual {p0, v0}, Le/k/a/b/x/h;->i2(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    invoke-virtual {v0}, Le/k/a/b/x/f;->l()Le/k/a/b/x/f;

    move-result-object v0

    iput-object v0, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    .line 3
    iget-object v0, p0, Le/k/a/b/g;->a:Le/k/a/b/o;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p0}, Le/k/a/b/o;->writeStartObject(Le/k/a/b/g;)V

    goto :goto_0

    .line 5
    :cond_0
    iget v0, p0, Le/k/a/b/x/h;->r:I

    iget v1, p0, Le/k/a/b/x/h;->s:I

    if-lt v0, v1, :cond_1

    .line 6
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 7
    :cond_1
    iget-object v0, p0, Le/k/a/b/x/h;->q:[B

    iget v1, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/x/h;->r:I

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    :goto_0
    return-void
.end method

.method public O1(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "start an object"

    .line 1
    invoke-virtual {p0, v0}, Le/k/a/b/x/h;->i2(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    invoke-virtual {v0, p1}, Le/k/a/b/x/f;->m(Ljava/lang/Object;)Le/k/a/b/x/f;

    move-result-object p1

    .line 3
    iput-object p1, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    .line 4
    iget-object p1, p0, Le/k/a/b/g;->a:Le/k/a/b/o;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1, p0}, Le/k/a/b/o;->writeStartObject(Le/k/a/b/g;)V

    goto :goto_0

    .line 6
    :cond_0
    iget p1, p0, Le/k/a/b/x/h;->r:I

    iget v0, p0, Le/k/a/b/x/h;->s:I

    if-lt p1, v0, :cond_1

    .line 7
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 8
    :cond_1
    iget-object p1, p0, Le/k/a/b/x/h;->q:[B

    iget v0, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Le/k/a/b/x/h;->r:I

    const/16 v1, 0x7b

    aput-byte v1, p1, v0

    :goto_0
    return-void
.end method

.method public Q(Le/k/a/b/a;Ljava/io/InputStream;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/f;
        }
    .end annotation

    const-string v0, "write a binary value"

    .line 1
    invoke-virtual {p0, v0}, Le/k/a/b/x/h;->i2(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Le/k/a/b/x/h;->r:I

    iget v1, p0, Le/k/a/b/x/h;->s:I

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 4
    :cond_0
    iget-object v0, p0, Le/k/a/b/x/h;->q:[B

    iget v1, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/x/h;->r:I

    iget-byte v2, p0, Le/k/a/b/x/h;->p:B

    aput-byte v2, v0, v1

    .line 5
    iget-object v0, p0, Le/k/a/b/x/c;->i:Le/k/a/b/w/b;

    invoke-virtual {v0}, Le/k/a/b/w/b;->d()[B

    move-result-object v0

    if-gez p3, :cond_1

    .line 6
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Le/k/a/b/x/h;->u2(Le/k/a/b/a;Ljava/io/InputStream;[B)I

    move-result p3

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, p1, p2, v0, p3}, Le/k/a/b/x/h;->v2(Le/k/a/b/a;Ljava/io/InputStream;[BI)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz p1, :cond_3

    .line 8
    :goto_0
    iget-object p1, p0, Le/k/a/b/x/c;->i:Le/k/a/b/w/b;

    invoke-virtual {p1, v0}, Le/k/a/b/w/b;->e([B)V

    .line 9
    iget p1, p0, Le/k/a/b/x/h;->r:I

    iget p2, p0, Le/k/a/b/x/h;->s:I

    if-lt p1, p2, :cond_2

    .line 10
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 11
    :cond_2
    iget-object p1, p0, Le/k/a/b/x/h;->q:[B

    iget p2, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Le/k/a/b/x/h;->r:I

    iget-byte v0, p0, Le/k/a/b/x/h;->p:B

    aput-byte v0, p1, p2

    return p3

    .line 12
    :cond_3
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too few bytes available: missing "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes (out of "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    new-instance p2, Le/k/a/b/f;

    invoke-direct {p2, p1, p0}, Le/k/a/b/f;-><init>(Ljava/lang/String;Le/k/a/b/g;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 14
    iget-object p2, p0, Le/k/a/b/x/c;->i:Le/k/a/b/w/b;

    invoke-virtual {p2, v0}, Le/k/a/b/w/b;->e([B)V

    .line 15
    throw p1
.end method

.method public Q0(Ljava/math/BigDecimal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "write a number"

    .line 1
    invoke-virtual {p0, v0}, Le/k/a/b/x/h;->i2(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/k/a/b/x/h;->y2()V

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Le/k/a/b/u/a;->f:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Le/k/a/b/u/a;->b2(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/k/a/b/x/h;->z2(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Le/k/a/b/u/a;->b2(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/k/a/b/x/h;->s1(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public S(Le/k/a/b/a;[BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/f;
        }
    .end annotation

    const-string v0, "write a binary value"

    .line 1
    invoke-virtual {p0, v0}, Le/k/a/b/x/h;->i2(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Le/k/a/b/x/h;->r:I

    iget v1, p0, Le/k/a/b/x/h;->s:I

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 4
    :cond_0
    iget-object v0, p0, Le/k/a/b/x/h;->q:[B

    iget v1, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/x/h;->r:I

    iget-byte v2, p0, Le/k/a/b/x/h;->p:B

    aput-byte v2, v0, v1

    add-int/2addr p4, p3

    add-int/lit8 v0, p4, -0x3

    .line 5
    iget v1, p0, Le/k/a/b/x/h;->s:I

    add-int/lit8 v1, v1, -0x6

    .line 6
    iget v2, p1, Le/k/a/b/a;->f:I

    const/4 v3, 0x2

    shr-int/2addr v2, v3

    :goto_0
    if-gt p3, v0, :cond_3

    .line 7
    iget v4, p0, Le/k/a/b/x/h;->r:I

    if-le v4, v1, :cond_1

    .line 8
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    :cond_1
    add-int/lit8 v4, p3, 0x1

    .line 9
    aget-byte p3, p2, p3

    shl-int/lit8 p3, p3, 0x8

    add-int/lit8 v5, v4, 0x1

    .line 10
    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr p3, v4

    shl-int/lit8 p3, p3, 0x8

    add-int/lit8 v4, v5, 0x1

    .line 11
    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr p3, v5

    .line 12
    iget-object v5, p0, Le/k/a/b/x/h;->q:[B

    iget v6, p0, Le/k/a/b/x/h;->r:I

    invoke-virtual {p1, p3, v5, v6}, Le/k/a/b/a;->h(I[BI)I

    move-result p3

    iput p3, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v2, v2, -0x1

    if-gtz v2, :cond_2

    .line 13
    iget-object v2, p0, Le/k/a/b/x/h;->q:[B

    add-int/lit8 v5, p3, 0x1

    iput v5, p0, Le/k/a/b/x/h;->r:I

    const/16 v6, 0x5c

    aput-byte v6, v2, p3

    add-int/lit8 p3, v5, 0x1

    .line 14
    iput p3, p0, Le/k/a/b/x/h;->r:I

    const/16 p3, 0x6e

    aput-byte p3, v2, v5

    .line 15
    iget p3, p1, Le/k/a/b/a;->f:I

    shr-int/2addr p3, v3

    move v2, p3

    :cond_2
    move p3, v4

    goto :goto_0

    :cond_3
    sub-int/2addr p4, p3

    if-lez p4, :cond_6

    .line 16
    iget v0, p0, Le/k/a/b/x/h;->r:I

    if-le v0, v1, :cond_4

    .line 17
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    :cond_4
    add-int/lit8 v0, p3, 0x1

    .line 18
    aget-byte p3, p2, p3

    shl-int/lit8 p3, p3, 0x10

    if-ne p4, v3, :cond_5

    .line 19
    aget-byte p2, p2, v0

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p3, p2

    .line 20
    :cond_5
    iget-object p2, p0, Le/k/a/b/x/h;->q:[B

    iget v0, p0, Le/k/a/b/x/h;->r:I

    invoke-virtual {p1, p3, p4, p2, v0}, Le/k/a/b/a;->j(II[BI)I

    move-result p1

    iput p1, p0, Le/k/a/b/x/h;->r:I

    .line 21
    :cond_6
    iget p1, p0, Le/k/a/b/x/h;->r:I

    iget p2, p0, Le/k/a/b/x/h;->s:I

    if-lt p1, p2, :cond_7

    .line 22
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 23
    :cond_7
    iget-object p1, p0, Le/k/a/b/x/h;->q:[B

    iget p2, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Le/k/a/b/x/h;->r:I

    iget-byte p3, p0, Le/k/a/b/x/h;->p:B

    aput-byte p3, p1, p2

    return-void
.end method

.method public final S1(Le/k/a/b/p;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "write a string"

    .line 1
    invoke-virtual {p0, v0}, Le/k/a/b/x/h;->i2(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Le/k/a/b/x/h;->r:I

    iget v1, p0, Le/k/a/b/x/h;->s:I

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 4
    :cond_0
    iget-object v0, p0, Le/k/a/b/x/h;->q:[B

    iget v1, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/x/h;->r:I

    iget-byte v3, p0, Le/k/a/b/x/h;->p:B

    aput-byte v3, v0, v1

    .line 5
    invoke-interface {p1, v0, v2}, Le/k/a/b/p;->c([BI)I

    move-result v0

    if-gez v0, :cond_1

    .line 6
    invoke-interface {p1}, Le/k/a/b/p;->b()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Le/k/a/b/x/h;->w2([B)V

    goto :goto_0

    .line 7
    :cond_1
    iget p1, p0, Le/k/a/b/x/h;->r:I

    add-int/2addr p1, v0

    iput p1, p0, Le/k/a/b/x/h;->r:I

    .line 8
    :goto_0
    iget p1, p0, Le/k/a/b/x/h;->r:I

    iget v0, p0, Le/k/a/b/x/h;->s:I

    if-lt p1, v0, :cond_2

    .line 9
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 10
    :cond_2
    iget-object p1, p0, Le/k/a/b/x/h;->q:[B

    iget v0, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Le/k/a/b/x/h;->r:I

    iget-byte v1, p0, Le/k/a/b/x/h;->p:B

    aput-byte v1, p1, v0

    return-void
.end method

.method public T1(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "write a string"

    .line 1
    invoke-virtual {p0, v0}, Le/k/a/b/x/h;->i2(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/k/a/b/x/h;->y2()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 4
    iget v1, p0, Le/k/a/b/x/h;->t:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, p1, v0}, Le/k/a/b/x/h;->C2(Ljava/lang/String;Z)V

    return-void

    .line 6
    :cond_1
    iget v1, p0, Le/k/a/b/x/h;->r:I

    add-int/2addr v1, v0

    iget v2, p0, Le/k/a/b/x/h;->s:I

    if-lt v1, v2, :cond_2

    .line 7
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 8
    :cond_2
    iget-object v1, p0, Le/k/a/b/x/h;->q:[B

    iget v2, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Le/k/a/b/x/h;->r:I

    iget-byte v3, p0, Le/k/a/b/x/h;->p:B

    aput-byte v3, v1, v2

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, p1, v1, v0}, Le/k/a/b/x/h;->A2(Ljava/lang/String;II)V

    .line 10
    iget p1, p0, Le/k/a/b/x/h;->r:I

    iget v0, p0, Le/k/a/b/x/h;->s:I

    if-lt p1, v0, :cond_3

    .line 11
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 12
    :cond_3
    iget-object p1, p0, Le/k/a/b/x/h;->q:[B

    iget v0, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Le/k/a/b/x/h;->r:I

    iget-byte v1, p0, Le/k/a/b/x/h;->p:B

    aput-byte v1, p1, v0

    return-void
.end method

.method public U0(Ljava/math/BigInteger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "write a number"

    .line 1
    invoke-virtual {p0, v0}, Le/k/a/b/x/h;->i2(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/k/a/b/x/h;->y2()V

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Le/k/a/b/u/a;->f:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/k/a/b/x/h;->z2(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/k/a/b/x/h;->s1(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public V1([CII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "write a string"

    .line 1
    invoke-virtual {p0, v0}, Le/k/a/b/x/h;->i2(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Le/k/a/b/x/h;->r:I

    iget v1, p0, Le/k/a/b/x/h;->s:I

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 4
    :cond_0
    iget-object v0, p0, Le/k/a/b/x/h;->q:[B

    iget v1, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/x/h;->r:I

    iget-byte v3, p0, Le/k/a/b/x/h;->p:B

    aput-byte v3, v0, v1

    .line 5
    iget v0, p0, Le/k/a/b/x/h;->t:I

    if-gt p3, v0, :cond_2

    add-int/2addr v2, p3

    .line 6
    iget v0, p0, Le/k/a/b/x/h;->s:I

    if-le v2, v0, :cond_1

    .line 7
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 8
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/b/x/h;->B2([CII)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/b/x/h;->D2([CII)V

    .line 10
    :goto_0
    iget p1, p0, Le/k/a/b/x/h;->r:I

    iget p2, p0, Le/k/a/b/x/h;->s:I

    if-lt p1, p2, :cond_3

    .line 11
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 12
    :cond_3
    iget-object p1, p0, Le/k/a/b/x/h;->q:[B

    iget p2, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Le/k/a/b/x/h;->r:I

    iget-byte p3, p0, Le/k/a/b/x/h;->p:B

    aput-byte p3, p1, p2

    return-void
.end method

.method public W0(S)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "write a number"

    .line 1
    invoke-virtual {p0, v0}, Le/k/a/b/x/h;->i2(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v0, v0, 0x6

    iget v1, p0, Le/k/a/b/x/h;->s:I

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 4
    :cond_0
    iget-boolean v0, p0, Le/k/a/b/u/a;->f:Z

    if-eqz v0, :cond_2

    .line 5
    iget v0, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v0, v0, 0x8

    iget v1, p0, Le/k/a/b/x/h;->s:I

    if-lt v0, v1, :cond_1

    .line 6
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 7
    :cond_1
    iget-object v0, p0, Le/k/a/b/x/h;->q:[B

    iget v1, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/x/h;->r:I

    iget-byte v3, p0, Le/k/a/b/x/h;->p:B

    aput-byte v3, v0, v1

    .line 8
    invoke-static {p1, v0, v2}, Le/k/a/b/w/g;->i(I[BI)I

    move-result p1

    iput p1, p0, Le/k/a/b/x/h;->r:I

    .line 9
    iget-object v0, p0, Le/k/a/b/x/h;->q:[B

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Le/k/a/b/x/h;->r:I

    iget-byte v1, p0, Le/k/a/b/x/h;->p:B

    aput-byte v1, v0, p1

    return-void

    .line 10
    :cond_2
    iget-object v0, p0, Le/k/a/b/x/h;->q:[B

    iget v1, p0, Le/k/a/b/x/h;->r:I

    invoke-static {p1, v0, v1}, Le/k/a/b/w/g;->i(I[BI)I

    move-result p1

    iput p1, p0, Le/k/a/b/x/h;->r:I

    return-void
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/x/h;->q:[B

    if-eqz v0, :cond_1

    sget-object v0, Le/k/a/b/g$a;->d:Le/k/a/b/g$a;

    .line 2
    invoke-virtual {p0, v0}, Le/k/a/b/u/a;->E(Le/k/a/b/g$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :goto_0
    iget-object v0, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    .line 4
    invoke-virtual {v0}, Le/k/a/b/l;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0}, Le/k/a/b/x/h;->p0()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Le/k/a/b/l;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Le/k/a/b/x/h;->t0()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Le/k/a/b/x/h;->r:I

    .line 10
    iget-object v0, p0, Le/k/a/b/x/h;->o:Ljava/io/OutputStream;

    if-eqz v0, :cond_4

    .line 11
    iget-object v0, p0, Le/k/a/b/x/c;->i:Le/k/a/b/w/b;

    .line 12
    iget-boolean v0, v0, Le/k/a/b/w/b;->c:Z

    if-nez v0, :cond_3

    .line 13
    sget-object v0, Le/k/a/b/g$a;->c:Le/k/a/b/g$a;

    invoke-virtual {p0, v0}, Le/k/a/b/u/a;->E(Le/k/a/b/g$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    sget-object v0, Le/k/a/b/g$a;->e:Le/k/a/b/g$a;

    invoke-virtual {p0, v0}, Le/k/a/b/u/a;->E(Le/k/a/b/g$a;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, p0, Le/k/a/b/x/h;->o:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_2

    .line 16
    :cond_3
    :goto_1
    iget-object v0, p0, Le/k/a/b/x/h;->o:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 17
    :cond_4
    :goto_2
    iget-object v0, p0, Le/k/a/b/x/h;->q:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 18
    iget-boolean v3, p0, Le/k/a/b/x/h;->w:Z

    if-eqz v3, :cond_5

    .line 19
    iput-object v2, p0, Le/k/a/b/x/h;->q:[B

    .line 20
    iget-object v3, p0, Le/k/a/b/x/c;->i:Le/k/a/b/w/b;

    .line 21
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v4, v3, Le/k/a/b/w/b;->f:[B

    invoke-virtual {v3, v0, v4}, Le/k/a/b/w/b;->b([B[B)V

    .line 23
    iput-object v2, v3, Le/k/a/b/w/b;->f:[B

    .line 24
    iget-object v3, v3, Le/k/a/b/w/b;->d:Le/k/a/b/a0/a;

    .line 25
    iget-object v3, v3, Le/k/a/b/a0/a;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 26
    :cond_5
    iget-object v0, p0, Le/k/a/b/x/h;->u:[C

    if-eqz v0, :cond_6

    .line 27
    iput-object v2, p0, Le/k/a/b/x/h;->u:[C

    .line 28
    iget-object v3, p0, Le/k/a/b/x/c;->i:Le/k/a/b/w/b;

    .line 29
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v4, v3, Le/k/a/b/w/b;->i:[C

    invoke-virtual {v3, v0, v4}, Le/k/a/b/w/b;->c([C[C)V

    .line 31
    iput-object v2, v3, Le/k/a/b/w/b;->i:[C

    .line 32
    iget-object v2, v3, Le/k/a/b/w/b;->d:Le/k/a/b/a0/a;

    .line 33
    iget-object v2, v2, Le/k/a/b/a0/a;->b:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 2
    iget-object v0, p0, Le/k/a/b/x/h;->o:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Le/k/a/b/g$a;->e:Le/k/a/b/g$a;

    invoke-virtual {p0, v0}, Le/k/a/b/u/a;->E(Le/k/a/b/g$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Le/k/a/b/x/h;->o:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_0
    return-void
.end method

.method public final i2(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    invoke-virtual {v0}, Le/k/a/b/x/f;->r()I

    move-result v0

    .line 2
    iget-object v1, p0, Le/k/a/b/g;->a:Le/k/a/b/o;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, p1, v0}, Le/k/a/b/x/c;->p2(Ljava/lang/String;I)V

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Le/k/a/b/x/c;->o2(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 5
    :cond_2
    iget-object p1, p0, Le/k/a/b/x/c;->l:Le/k/a/b/p;

    if-eqz p1, :cond_3

    .line 6
    invoke-interface {p1}, Le/k/a/b/p;->g()[B

    move-result-object p1

    .line 7
    array-length v0, p1

    if-lez v0, :cond_3

    .line 8
    invoke-virtual {p0, p1}, Le/k/a/b/x/h;->w2([B)V

    :cond_3
    return-void

    :cond_4
    const/16 p1, 0x3a

    goto :goto_0

    :cond_5
    const/16 p1, 0x2c

    .line 9
    :goto_0
    iget v0, p0, Le/k/a/b/x/h;->r:I

    iget v1, p0, Le/k/a/b/x/h;->s:I

    if-lt v0, v1, :cond_6

    .line 10
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 11
    :cond_6
    iget-object v0, p0, Le/k/a/b/x/h;->q:[B

    iget v1, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/x/h;->r:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public k0(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "write a boolean value"

    .line 1
    invoke-virtual {p0, v0}, Le/k/a/b/x/h;->i2(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Le/k/a/b/x/h;->s:I

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    sget-object p1, Le/k/a/b/x/h;->z:[B

    goto :goto_0

    :cond_1
    sget-object p1, Le/k/a/b/x/h;->A:[B

    .line 5
    :goto_0
    array-length v0, p1

    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Le/k/a/b/x/h;->q:[B

    iget v3, p0, Le/k/a/b/x/h;->r:I

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget p1, p0, Le/k/a/b/x/h;->r:I

    add-int/2addr p1, v0

    iput p1, p0, Le/k/a/b/x/h;->r:I

    return-void
.end method

.method public m1(C)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v0, v0, 0x3

    iget v1, p0, Le/k/a/b/x/h;->s:I

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/b/x/h;->q:[B

    const/16 v1, 0x7f

    if-gt p1, v1, :cond_1

    .line 4
    iget v1, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/x/h;->r:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x800

    if-ge p1, v1, :cond_2

    .line 5
    iget v1, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/x/h;->r:I

    shr-int/lit8 v3, p1, 0x6

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 6
    iput v1, p0, Le/k/a/b/x/h;->r:I

    and-int/lit8 p1, p1, 0x3f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, p1, v0, v1, v1}, Le/k/a/b/x/h;->s2(I[CII)I

    :goto_0
    return-void
.end method

.method public n1(Le/k/a/b/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/x/h;->q:[B

    iget v1, p0, Le/k/a/b/x/h;->r:I

    invoke-interface {p1, v0, v1}, Le/k/a/b/p;->e([BI)I

    move-result v0

    if-gez v0, :cond_0

    .line 2
    invoke-interface {p1}, Le/k/a/b/p;->g()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Le/k/a/b/x/h;->w2([B)V

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Le/k/a/b/x/h;->r:I

    add-int/2addr p1, v0

    iput p1, p0, Le/k/a/b/x/h;->r:I

    :goto_0
    return-void
.end method

.method public final p0()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    invoke-virtual {v0}, Le/k/a/b/l;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Le/k/a/b/g;->a:Le/k/a/b/o;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    .line 4
    iget v1, v1, Le/k/a/b/l;->b:I

    add-int/lit8 v1, v1, 0x1

    .line 5
    invoke-interface {v0, p0, v1}, Le/k/a/b/o;->writeEndArray(Le/k/a/b/g;I)V

    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Le/k/a/b/x/h;->r:I

    iget v1, p0, Le/k/a/b/x/h;->s:I

    if-lt v0, v1, :cond_1

    .line 7
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 8
    :cond_1
    iget-object v0, p0, Le/k/a/b/x/h;->q:[B

    iget v1, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/x/h;->r:I

    const/16 v2, 0x5d

    aput-byte v2, v0, v1

    .line 9
    :goto_0
    iget-object v0, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    invoke-virtual {v0}, Le/k/a/b/x/f;->i()Le/k/a/b/x/f;

    move-result-object v0

    iput-object v0, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    return-void

    :cond_2
    const-string v0, "Current context not Array but "

    .line 10
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    invoke-virtual {v1}, Le/k/a/b/l;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v1, Le/k/a/b/f;

    invoke-direct {v1, v0, p0}, Le/k/a/b/f;-><init>(Ljava/lang/String;Le/k/a/b/g;)V

    throw v1
.end method

.method public final q2()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/x/h;->r:I

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Le/k/a/b/x/h;->r:I

    .line 3
    iget-object v2, p0, Le/k/a/b/x/h;->o:Ljava/io/OutputStream;

    iget-object v3, p0, Le/k/a/b/x/h;->q:[B

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    :cond_0
    return-void
.end method

.method public final r2(II)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/x/h;->q:[B

    const v1, 0xd800

    if-lt p1, v1, :cond_0

    const v1, 0xdfff

    if-gt p1, v1, :cond_0

    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0x5c

    .line 2
    aput-byte v2, v0, p2

    add-int/lit8 p2, v1, 0x1

    const/16 v2, 0x75

    .line 3
    aput-byte v2, v0, v1

    add-int/lit8 v1, p2, 0x1

    .line 4
    sget-object v2, Le/k/a/b/x/h;->x:[B

    shr-int/lit8 v3, p1, 0xc

    and-int/lit8 v3, v3, 0xf

    aget-byte v3, v2, v3

    aput-byte v3, v0, p2

    add-int/lit8 p2, v1, 0x1

    shr-int/lit8 v3, p1, 0x8

    and-int/lit8 v3, v3, 0xf

    .line 5
    aget-byte v3, v2, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, p2, 0x1

    shr-int/lit8 v3, p1, 0x4

    and-int/lit8 v3, v3, 0xf

    .line 6
    aget-byte v3, v2, v3

    aput-byte v3, v0, p2

    add-int/lit8 p2, v1, 0x1

    and-int/lit8 p1, p1, 0xf

    .line 7
    aget-byte p1, v2, p1

    aput-byte p1, v0, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p2, 0x1

    shr-int/lit8 v2, p1, 0xc

    or-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    .line 8
    aput-byte v2, v0, p2

    add-int/lit8 p2, v1, 0x1

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 9
    aput-byte v2, v0, v1

    add-int/lit8 v1, p2, 0x1

    and-int/lit8 p1, p1, 0x3f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    .line 10
    aput-byte p1, v0, p2

    move p2, v1

    :goto_0
    return p2
.end method

.method public s1(Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    iget-object v1, p0, Le/k/a/b/x/h;->u:[C

    .line 3
    array-length v2, v1

    const/4 v3, 0x0

    if-gt v0, v2, :cond_0

    .line 4
    invoke-virtual {p1, v3, v0, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 5
    invoke-virtual {p0, v1, v3, v0}, Le/k/a/b/x/h;->z1([CII)V

    goto/16 :goto_2

    .line 6
    :cond_0
    array-length v2, v1

    if-gt v0, v2, :cond_1

    add-int v2, v3, v0

    .line 7
    invoke-virtual {p1, v3, v2, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 8
    invoke-virtual {p0, v1, v3, v0}, Le/k/a/b/x/h;->z1([CII)V

    goto/16 :goto_2

    .line 9
    :cond_1
    iget v4, p0, Le/k/a/b/x/h;->s:I

    shr-int/lit8 v5, v4, 0x2

    shr-int/lit8 v4, v4, 0x4

    add-int/2addr v5, v4

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/lit8 v4, v2, 0x3

    move v5, v3

    :goto_0
    if-lez v0, :cond_8

    .line 10
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v7, v5, v6

    .line 11
    invoke-virtual {p1, v5, v7, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 12
    iget v7, p0, Le/k/a/b/x/h;->r:I

    add-int/2addr v7, v4

    iget v8, p0, Le/k/a/b/x/h;->s:I

    if-le v7, v8, :cond_2

    .line 13
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    :cond_2
    const/4 v7, 0x1

    if-le v6, v7, :cond_3

    add-int/lit8 v7, v6, -0x1

    .line 14
    aget-char v8, v1, v7

    const v9, 0xd800

    if-lt v8, v9, :cond_3

    const v9, 0xdbff

    if-gt v8, v9, :cond_3

    move v6, v7

    :cond_3
    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_7

    .line 15
    :cond_4
    aget-char v8, v1, v7

    const/16 v9, 0x7f

    if-le v8, v9, :cond_6

    add-int/lit8 v8, v7, 0x1

    .line 16
    aget-char v7, v1, v7

    const/16 v9, 0x800

    if-ge v7, v9, :cond_5

    .line 17
    iget-object v9, p0, Le/k/a/b/x/h;->q:[B

    iget v10, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Le/k/a/b/x/h;->r:I

    shr-int/lit8 v12, v7, 0x6

    or-int/lit16 v12, v12, 0xc0

    int-to-byte v12, v12

    aput-byte v12, v9, v10

    add-int/lit8 v10, v11, 0x1

    .line 18
    iput v10, p0, Le/k/a/b/x/h;->r:I

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v9, v11

    move v7, v8

    goto :goto_1

    .line 19
    :cond_5
    invoke-virtual {p0, v7, v1, v8, v6}, Le/k/a/b/x/h;->s2(I[CII)I

    move-result v7

    goto :goto_1

    .line 20
    :cond_6
    iget-object v9, p0, Le/k/a/b/x/h;->q:[B

    iget v10, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Le/k/a/b/x/h;->r:I

    int-to-byte v8, v8

    aput-byte v8, v9, v10

    add-int/lit8 v7, v7, 0x1

    if-lt v7, v6, :cond_4

    :cond_7
    add-int/2addr v5, v6

    sub-int/2addr v0, v6

    goto :goto_0

    :cond_8
    :goto_2
    return-void
.end method

.method public final s2(I[CII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0xd800

    if-lt p1, v0, :cond_3

    const v1, 0xdfff

    if-gt p1, v1, :cond_3

    const/4 v2, 0x1

    if-ge p3, p4, :cond_2

    if-eqz p2, :cond_2

    .line 1
    aget-char p2, p2, p3

    const p4, 0xdc00

    if-lt p2, p4, :cond_1

    if-gt p2, v1, :cond_1

    const/high16 v1, 0x10000

    sub-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0xa

    add-int/2addr p1, v1

    sub-int/2addr p2, p4

    add-int/2addr p2, p1

    .line 2
    iget p1, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 p1, p1, 0x4

    iget p4, p0, Le/k/a/b/x/h;->s:I

    if-le p1, p4, :cond_0

    .line 3
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 4
    :cond_0
    iget-object p1, p0, Le/k/a/b/x/h;->q:[B

    .line 5
    iget p4, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v0, p4, 0x1

    iput v0, p0, Le/k/a/b/x/h;->r:I

    shr-int/lit8 v1, p2, 0x12

    or-int/lit16 v1, v1, 0xf0

    int-to-byte v1, v1

    aput-byte v1, p1, p4

    add-int/lit8 p4, v0, 0x1

    .line 6
    iput p4, p0, Le/k/a/b/x/h;->r:I

    shr-int/lit8 v1, p2, 0xc

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p4, 0x1

    .line 7
    iput v0, p0, Le/k/a/b/x/h;->r:I

    shr-int/lit8 v1, p2, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, p4

    add-int/lit8 p4, v0, 0x1

    .line 8
    iput p4, p0, Le/k/a/b/x/h;->r:I

    and-int/lit8 p2, p2, 0x3f

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    add-int/2addr p3, v2

    return p3

    :cond_1
    const-string p3, "Incomplete surrogate pair: first char 0x"

    .line 9
    invoke-static {p3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", second 0x"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    new-instance p2, Le/k/a/b/f;

    invoke-direct {p2, p1, p0}, Le/k/a/b/f;-><init>(Ljava/lang/String;Le/k/a/b/g;)V

    throw p2

    :cond_2
    new-array p2, v2, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, p3

    const-string p1, "Split surrogate on writeRaw() input (last character): first character 0x%4x"

    .line 12
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 13
    new-instance p2, Le/k/a/b/f;

    invoke-direct {p2, p1, p0}, Le/k/a/b/f;-><init>(Ljava/lang/String;Le/k/a/b/g;)V

    throw p2

    .line 14
    :cond_3
    iget-object p2, p0, Le/k/a/b/x/h;->q:[B

    .line 15
    iget p4, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v0, p4, 0x1

    iput v0, p0, Le/k/a/b/x/h;->r:I

    shr-int/lit8 v1, p1, 0xc

    or-int/lit16 v1, v1, 0xe0

    int-to-byte v1, v1

    aput-byte v1, p2, p4

    add-int/lit8 p4, v0, 0x1

    .line 16
    iput p4, p0, Le/k/a/b/x/h;->r:I

    shr-int/lit8 v1, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p4, 0x1

    .line 17
    iput v0, p0, Le/k/a/b/x/h;->r:I

    and-int/lit8 p1, p1, 0x3f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, p2, p4

    return p3
.end method

.method public final t0()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    invoke-virtual {v0}, Le/k/a/b/l;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Le/k/a/b/g;->a:Le/k/a/b/o;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    .line 4
    iget v1, v1, Le/k/a/b/l;->b:I

    add-int/lit8 v1, v1, 0x1

    .line 5
    invoke-interface {v0, p0, v1}, Le/k/a/b/o;->writeEndObject(Le/k/a/b/g;I)V

    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Le/k/a/b/x/h;->r:I

    iget v1, p0, Le/k/a/b/x/h;->s:I

    if-lt v0, v1, :cond_1

    .line 7
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 8
    :cond_1
    iget-object v0, p0, Le/k/a/b/x/h;->q:[B

    iget v1, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/x/h;->r:I

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    .line 9
    :goto_0
    iget-object v0, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    invoke-virtual {v0}, Le/k/a/b/x/f;->i()Le/k/a/b/x/f;

    move-result-object v0

    iput-object v0, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    return-void

    :cond_2
    const-string v0, "Current context not Object but "

    .line 10
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    invoke-virtual {v1}, Le/k/a/b/l;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v1, Le/k/a/b/f;

    invoke-direct {v1, v0, p0}, Le/k/a/b/f;-><init>(Ljava/lang/String;Le/k/a/b/g;)V

    throw v1
.end method

.method public final t2(Ljava/io/InputStream;[BIII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge p3, p4, :cond_0

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, p3, 0x1

    .line 1
    aget-byte p3, p2, p3

    aput-byte p3, p2, v0

    move v0, v1

    move p3, v2

    goto :goto_0

    .line 2
    :cond_0
    array-length p3, p2

    invoke-static {p5, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    :cond_1
    sub-int p4, p3, v0

    if-nez p4, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {p1, p2, v0, p4}, Ljava/io/InputStream;->read([BII)I

    move-result p4

    if-gez p4, :cond_3

    return v0

    :cond_3
    add-int/2addr v0, p4

    const/4 p4, 0x3

    if-lt v0, p4, :cond_1

    :goto_1
    return v0
.end method

.method public final u2(Le/k/a/b/a;Ljava/io/InputStream;[B)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/f;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/x/h;->s:I

    add-int/lit8 v0, v0, -0x6

    .line 2
    iget v1, p1, Le/k/a/b/a;->f:I

    const/4 v2, 0x2

    shr-int/2addr v1, v2

    const/4 v3, -0x3

    const/4 v4, 0x0

    move v8, v4

    move v9, v8

    move v11, v9

    :cond_0
    :goto_0
    if-le v8, v3, :cond_5

    .line 3
    array-length v10, p3

    move-object v5, p0

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v5 .. v10}, Le/k/a/b/x/h;->t2(Ljava/io/InputStream;[BIII)I

    move-result v9

    const/4 v3, 0x3

    if-ge v9, v3, :cond_4

    if-lez v9, :cond_3

    .line 4
    iget p2, p0, Le/k/a/b/x/h;->r:I

    if-le p2, v0, :cond_1

    .line 5
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 6
    :cond_1
    aget-byte p2, p3, v4

    shl-int/lit8 p2, p2, 0x10

    const/4 v0, 0x1

    if-ge v0, v9, :cond_2

    .line 7
    aget-byte p3, p3, v0

    and-int/lit16 p3, p3, 0xff

    shl-int/lit8 p3, p3, 0x8

    or-int/2addr p2, p3

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    add-int/2addr v11, v2

    .line 8
    iget-object p3, p0, Le/k/a/b/x/h;->q:[B

    iget v0, p0, Le/k/a/b/x/h;->r:I

    invoke-virtual {p1, p2, v2, p3, v0}, Le/k/a/b/a;->j(II[BI)I

    move-result p1

    iput p1, p0, Le/k/a/b/x/h;->r:I

    :cond_3
    return v11

    :cond_4
    add-int/lit8 v3, v9, -0x3

    move v8, v4

    .line 9
    :cond_5
    iget v5, p0, Le/k/a/b/x/h;->r:I

    if-le v5, v0, :cond_6

    .line 10
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    :cond_6
    add-int/lit8 v5, v8, 0x1

    .line 11
    aget-byte v6, p3, v8

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v7, v5, 0x1

    .line 12
    aget-byte v5, p3, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v6

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v8, v7, 0x1

    .line 13
    aget-byte v6, p3, v7

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    add-int/lit8 v11, v11, 0x3

    .line 14
    iget-object v6, p0, Le/k/a/b/x/h;->q:[B

    iget v7, p0, Le/k/a/b/x/h;->r:I

    invoke-virtual {p1, v5, v6, v7}, Le/k/a/b/a;->h(I[BI)I

    move-result v5

    iput v5, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_0

    .line 15
    iget-object v1, p0, Le/k/a/b/x/h;->q:[B

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Le/k/a/b/x/h;->r:I

    const/16 v7, 0x5c

    aput-byte v7, v1, v5

    add-int/lit8 v5, v6, 0x1

    .line 16
    iput v5, p0, Le/k/a/b/x/h;->r:I

    const/16 v5, 0x6e

    aput-byte v5, v1, v6

    .line 17
    iget v1, p1, Le/k/a/b/a;->f:I

    shr-int/2addr v1, v2

    goto :goto_0
.end method

.method public final v2(Le/k/a/b/a;Ljava/io/InputStream;[BI)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/f;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/x/h;->s:I

    add-int/lit8 v0, v0, -0x6

    .line 2
    iget v1, p1, Le/k/a/b/a;->f:I

    const/4 v2, 0x2

    shr-int/2addr v1, v2

    const/4 v3, -0x3

    const/4 v4, 0x0

    move v8, v4

    move v9, v8

    :cond_0
    :goto_0
    if-le p4, v2, :cond_4

    if-le v8, v3, :cond_2

    move-object v5, p0

    move-object v6, p2

    move-object v7, p3

    move v10, p4

    .line 3
    invoke-virtual/range {v5 .. v10}, Le/k/a/b/x/h;->t2(Ljava/io/InputStream;[BIII)I

    move-result v9

    const/4 v3, 0x3

    if-ge v9, v3, :cond_1

    move v8, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v9, -0x3

    move v8, v4

    .line 4
    :cond_2
    iget v5, p0, Le/k/a/b/x/h;->r:I

    if-le v5, v0, :cond_3

    .line 5
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    :cond_3
    add-int/lit8 v5, v8, 0x1

    .line 6
    aget-byte v6, p3, v8

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v7, v5, 0x1

    .line 7
    aget-byte v5, p3, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v6

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v8, v7, 0x1

    .line 8
    aget-byte v6, p3, v7

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    add-int/lit8 p4, p4, -0x3

    .line 9
    iget-object v6, p0, Le/k/a/b/x/h;->q:[B

    iget v7, p0, Le/k/a/b/x/h;->r:I

    invoke-virtual {p1, v5, v6, v7}, Le/k/a/b/a;->h(I[BI)I

    move-result v5

    iput v5, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_0

    .line 10
    iget-object v1, p0, Le/k/a/b/x/h;->q:[B

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Le/k/a/b/x/h;->r:I

    const/16 v7, 0x5c

    aput-byte v7, v1, v5

    add-int/lit8 v5, v6, 0x1

    .line 11
    iput v5, p0, Le/k/a/b/x/h;->r:I

    const/16 v5, 0x6e

    aput-byte v5, v1, v6

    .line 12
    iget v1, p1, Le/k/a/b/a;->f:I

    shr-int/2addr v1, v2

    goto :goto_0

    :cond_4
    :goto_1
    if-lez p4, :cond_7

    move-object v5, p0

    move-object v6, p2

    move-object v7, p3

    move v10, p4

    .line 13
    invoke-virtual/range {v5 .. v10}, Le/k/a/b/x/h;->t2(Ljava/io/InputStream;[BIII)I

    move-result p2

    if-lez p2, :cond_7

    .line 14
    iget v1, p0, Le/k/a/b/x/h;->r:I

    if-le v1, v0, :cond_5

    .line 15
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 16
    :cond_5
    aget-byte v0, p3, v4

    shl-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    if-ge v1, p2, :cond_6

    .line 17
    aget-byte p2, p3, v1

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr v0, p2

    goto :goto_2

    :cond_6
    move v2, v1

    .line 18
    :goto_2
    iget-object p2, p0, Le/k/a/b/x/h;->q:[B

    iget p3, p0, Le/k/a/b/x/h;->r:I

    invoke-virtual {p1, v0, v2, p2, p3}, Le/k/a/b/a;->j(II[BI)I

    move-result p1

    iput p1, p0, Le/k/a/b/x/h;->r:I

    sub-int/2addr p4, v2

    :cond_7
    return p4
.end method

.method public final w2([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    iget v1, p0, Le/k/a/b/x/h;->r:I

    add-int/2addr v1, v0

    iget v2, p0, Le/k/a/b/x/h;->s:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    const/16 v1, 0x200

    if-le v0, v1, :cond_0

    .line 4
    iget-object v1, p0, Le/k/a/b/x/h;->o:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Le/k/a/b/x/h;->q:[B

    iget v2, p0, Le/k/a/b/x/h;->r:I

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget p1, p0, Le/k/a/b/x/h;->r:I

    add-int/2addr p1, v0

    iput p1, p0, Le/k/a/b/x/h;->r:I

    return-void
.end method

.method public final x2(II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/x/h;->q:[B

    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0x5c

    .line 2
    aput-byte v2, v0, p2

    add-int/lit8 p2, v1, 0x1

    const/16 v2, 0x75

    .line 3
    aput-byte v2, v0, v1

    const/16 v1, 0xff

    if-le p1, v1, :cond_0

    shr-int/lit8 v2, p1, 0x8

    and-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x1

    .line 4
    sget-object v3, Le/k/a/b/x/h;->x:[B

    shr-int/lit8 v4, v1, 0x4

    aget-byte v4, v3, v4

    aput-byte v4, v0, p2

    add-int/lit8 p2, v2, 0x1

    and-int/lit8 v1, v1, 0xf

    .line 5
    aget-byte v1, v3, v1

    aput-byte v1, v0, v2

    and-int/lit16 p1, p1, 0xff

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0x30

    .line 6
    aput-byte v2, v0, p2

    add-int/lit8 p2, v1, 0x1

    .line 7
    aput-byte v2, v0, v1

    :goto_0
    add-int/lit8 v1, p2, 0x1

    .line 8
    sget-object v2, Le/k/a/b/x/h;->x:[B

    shr-int/lit8 v3, p1, 0x4

    aget-byte v3, v2, v3

    aput-byte v3, v0, p2

    add-int/lit8 p2, v1, 0x1

    and-int/lit8 p1, p1, 0xf

    .line 9
    aget-byte p1, v2, p1

    aput-byte p1, v0, v1

    return p2
.end method

.method public final y2()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/x/h;->r:I

    const/4 v1, 0x4

    add-int/2addr v0, v1

    iget v2, p0, Le/k/a/b/x/h;->s:I

    if-lt v0, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 3
    :cond_0
    sget-object v0, Le/k/a/b/x/h;->y:[B

    const/4 v2, 0x0

    iget-object v3, p0, Le/k/a/b/x/h;->q:[B

    iget v4, p0, Le/k/a/b/x/h;->r:I

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget v0, p0, Le/k/a/b/x/h;->r:I

    add-int/2addr v0, v1

    iput v0, p0, Le/k/a/b/x/h;->r:I

    return-void
.end method

.method public z0(Le/k/a/b/p;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/g;->a:Le/k/a/b/o;

    const-string v1, "Can not write a field name, expecting a value"

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    .line 2
    iget-object v0, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    invoke-interface {p1}, Le/k/a/b/p;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Le/k/a/b/x/f;->q(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_6

    if-ne v0, v3, :cond_0

    .line 3
    iget-object v0, p0, Le/k/a/b/g;->a:Le/k/a/b/o;

    invoke-interface {v0, p0}, Le/k/a/b/o;->writeObjectEntrySeparator(Le/k/a/b/g;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le/k/a/b/g;->a:Le/k/a/b/o;

    invoke-interface {v0, p0}, Le/k/a/b/o;->beforeObjectEntries(Le/k/a/b/g;)V

    .line 5
    :goto_0
    iget-boolean v0, p0, Le/k/a/b/x/c;->m:Z

    xor-int/2addr v0, v3

    if-eqz v0, :cond_2

    .line 6
    iget v1, p0, Le/k/a/b/x/h;->r:I

    iget v2, p0, Le/k/a/b/x/h;->s:I

    if-lt v1, v2, :cond_1

    .line 7
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 8
    :cond_1
    iget-object v1, p0, Le/k/a/b/x/h;->q:[B

    iget v2, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Le/k/a/b/x/h;->r:I

    iget-byte v3, p0, Le/k/a/b/x/h;->p:B

    aput-byte v3, v1, v2

    .line 9
    :cond_2
    iget-object v1, p0, Le/k/a/b/x/h;->q:[B

    iget v2, p0, Le/k/a/b/x/h;->r:I

    invoke-interface {p1, v1, v2}, Le/k/a/b/p;->c([BI)I

    move-result v1

    if-gez v1, :cond_3

    .line 10
    invoke-interface {p1}, Le/k/a/b/p;->b()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Le/k/a/b/x/h;->w2([B)V

    goto :goto_1

    .line 11
    :cond_3
    iget p1, p0, Le/k/a/b/x/h;->r:I

    add-int/2addr p1, v1

    iput p1, p0, Le/k/a/b/x/h;->r:I

    :goto_1
    if-eqz v0, :cond_5

    .line 12
    iget p1, p0, Le/k/a/b/x/h;->r:I

    iget v0, p0, Le/k/a/b/x/h;->s:I

    if-lt p1, v0, :cond_4

    .line 13
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 14
    :cond_4
    iget-object p1, p0, Le/k/a/b/x/h;->q:[B

    iget v0, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Le/k/a/b/x/h;->r:I

    iget-byte v1, p0, Le/k/a/b/x/h;->p:B

    aput-byte v1, p1, v0

    :cond_5
    return-void

    .line 15
    :cond_6
    new-instance p1, Le/k/a/b/f;

    invoke-direct {p1, v1, p0}, Le/k/a/b/f;-><init>(Ljava/lang/String;Le/k/a/b/g;)V

    throw p1

    .line 16
    :cond_7
    iget-object v0, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    invoke-interface {p1}, Le/k/a/b/p;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Le/k/a/b/x/f;->q(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_f

    if-ne v0, v3, :cond_9

    .line 17
    iget v0, p0, Le/k/a/b/x/h;->r:I

    iget v1, p0, Le/k/a/b/x/h;->s:I

    if-lt v0, v1, :cond_8

    .line 18
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 19
    :cond_8
    iget-object v0, p0, Le/k/a/b/x/h;->q:[B

    iget v1, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/x/h;->r:I

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    .line 20
    :cond_9
    iget-boolean v0, p0, Le/k/a/b/x/c;->m:Z

    if-eqz v0, :cond_b

    .line 21
    iget-object v0, p0, Le/k/a/b/x/h;->q:[B

    iget v1, p0, Le/k/a/b/x/h;->r:I

    invoke-interface {p1, v0, v1}, Le/k/a/b/p;->c([BI)I

    move-result v0

    if-gez v0, :cond_a

    .line 22
    invoke-interface {p1}, Le/k/a/b/p;->b()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Le/k/a/b/x/h;->w2([B)V

    goto :goto_2

    .line 23
    :cond_a
    iget p1, p0, Le/k/a/b/x/h;->r:I

    add-int/2addr p1, v0

    iput p1, p0, Le/k/a/b/x/h;->r:I

    :goto_2
    return-void

    .line 24
    :cond_b
    iget v0, p0, Le/k/a/b/x/h;->r:I

    iget v1, p0, Le/k/a/b/x/h;->s:I

    if-lt v0, v1, :cond_c

    .line 25
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 26
    :cond_c
    iget-object v0, p0, Le/k/a/b/x/h;->q:[B

    iget v1, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/x/h;->r:I

    iget-byte v3, p0, Le/k/a/b/x/h;->p:B

    aput-byte v3, v0, v1

    .line 27
    invoke-interface {p1, v0, v2}, Le/k/a/b/p;->c([BI)I

    move-result v0

    if-gez v0, :cond_d

    .line 28
    invoke-interface {p1}, Le/k/a/b/p;->b()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Le/k/a/b/x/h;->w2([B)V

    goto :goto_3

    .line 29
    :cond_d
    iget p1, p0, Le/k/a/b/x/h;->r:I

    add-int/2addr p1, v0

    iput p1, p0, Le/k/a/b/x/h;->r:I

    .line 30
    :goto_3
    iget p1, p0, Le/k/a/b/x/h;->r:I

    iget v0, p0, Le/k/a/b/x/h;->s:I

    if-lt p1, v0, :cond_e

    .line 31
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 32
    :cond_e
    iget-object p1, p0, Le/k/a/b/x/h;->q:[B

    iget v0, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Le/k/a/b/x/h;->r:I

    iget-byte v1, p0, Le/k/a/b/x/h;->p:B

    aput-byte v1, p1, v0

    return-void

    .line 33
    :cond_f
    new-instance p1, Le/k/a/b/f;

    invoke-direct {p1, v1, p0}, Le/k/a/b/f;-><init>(Ljava/lang/String;Le/k/a/b/g;)V

    throw p1
.end method

.method public final z1([CII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v0, p3, p3

    add-int/2addr v0, p3

    .line 1
    iget v1, p0, Le/k/a/b/x/h;->r:I

    add-int/2addr v1, v0

    iget v2, p0, Le/k/a/b/x/h;->s:I

    const/16 v3, 0x800

    const/16 v4, 0x80

    if-le v1, v2, :cond_7

    if-ge v2, v0, :cond_6

    .line 2
    iget-object v0, p0, Le/k/a/b/x/h;->q:[B

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_5

    .line 3
    :cond_0
    aget-char v1, p1, p2

    if-lt v1, v4, :cond_3

    .line 4
    iget v1, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v1, v1, 0x3

    iget v5, p0, Le/k/a/b/x/h;->s:I

    if-lt v1, v5, :cond_1

    .line 5
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    :cond_1
    add-int/lit8 v1, p2, 0x1

    .line 6
    aget-char p2, p1, p2

    if-ge p2, v3, :cond_2

    .line 7
    iget v5, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Le/k/a/b/x/h;->r:I

    shr-int/lit8 v7, p2, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v0, v5

    add-int/lit8 v5, v6, 0x1

    .line 8
    iput v5, p0, Le/k/a/b/x/h;->r:I

    and-int/lit8 p2, p2, 0x3f

    or-int/2addr p2, v4

    int-to-byte p2, p2

    aput-byte p2, v0, v6

    move p2, v1

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0, p2, p1, v1, p3}, Le/k/a/b/x/h;->s2(I[CII)I

    move-result p2

    goto :goto_0

    .line 10
    :cond_3
    iget v5, p0, Le/k/a/b/x/h;->r:I

    if-lt v5, v2, :cond_4

    .line 11
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 12
    :cond_4
    iget v5, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Le/k/a/b/x/h;->r:I

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_0

    :cond_5
    return-void

    .line 13
    :cond_6
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    :cond_7
    add-int/2addr p3, p2

    :goto_1
    if-ge p2, p3, :cond_b

    .line 14
    :cond_8
    aget-char v0, p1, p2

    const/16 v1, 0x7f

    if-le v0, v1, :cond_a

    add-int/lit8 v0, p2, 0x1

    .line 15
    aget-char p2, p1, p2

    if-ge p2, v3, :cond_9

    .line 16
    iget-object v1, p0, Le/k/a/b/x/h;->q:[B

    iget v2, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Le/k/a/b/x/h;->r:I

    shr-int/lit8 v6, p2, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    .line 17
    iput v2, p0, Le/k/a/b/x/h;->r:I

    and-int/lit8 p2, p2, 0x3f

    or-int/2addr p2, v4

    int-to-byte p2, p2

    aput-byte p2, v1, v5

    move p2, v0

    goto :goto_1

    .line 18
    :cond_9
    invoke-virtual {p0, p2, p1, v0, p3}, Le/k/a/b/x/h;->s2(I[CII)I

    move-result p2

    goto :goto_1

    .line 19
    :cond_a
    iget-object v1, p0, Le/k/a/b/x/h;->q:[B

    iget v2, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Le/k/a/b/x/h;->r:I

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_8

    :cond_b
    return-void
.end method

.method public final z2(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/x/h;->r:I

    iget v1, p0, Le/k/a/b/x/h;->s:I

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/b/x/h;->q:[B

    iget v1, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/x/h;->r:I

    iget-byte v2, p0, Le/k/a/b/x/h;->p:B

    aput-byte v2, v0, v1

    .line 4
    invoke-virtual {p0, p1}, Le/k/a/b/x/h;->s1(Ljava/lang/String;)V

    .line 5
    iget p1, p0, Le/k/a/b/x/h;->r:I

    iget v0, p0, Le/k/a/b/x/h;->s:I

    if-lt p1, v0, :cond_1

    .line 6
    invoke-virtual {p0}, Le/k/a/b/x/h;->q2()V

    .line 7
    :cond_1
    iget-object p1, p0, Le/k/a/b/x/h;->q:[B

    iget v0, p0, Le/k/a/b/x/h;->r:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Le/k/a/b/x/h;->r:I

    iget-byte v1, p0, Le/k/a/b/x/h;->p:B

    aput-byte v1, p1, v0

    return-void
.end method
