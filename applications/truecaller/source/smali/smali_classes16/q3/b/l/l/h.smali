.class public final Lq3/b/l/l/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:B

.field public c:I

.field public d:I

.field public e:I

.field public f:[C

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/b/l/l/h;->g:Ljava/lang/String;

    const/16 p1, 0xc

    .line 2
    iput-byte p1, p0, Lq3/b/l/l/h;->b:B

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lq3/b/l/l/h;->d:I

    const/16 p1, 0x10

    new-array p1, p1, [C

    .line 4
    iput-object p1, p0, Lq3/b/l/l/h;->f:[C

    .line 5
    invoke-virtual {p0}, Lq3/b/l/l/h;->g()V

    return-void
.end method

.method public static synthetic d(Lq3/b/l/l/h;Ljava/lang/String;II)Ljava/lang/Void;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 1
    iget p2, p0, Lq3/b/l/l/h;->a:I

    :cond_0
    invoke-virtual {p0, p1, p2}, Lq3/b/l/l/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a(C)V
    .locals 3

    .line 1
    iget v0, p0, Lq3/b/l/l/h;->e:I

    iget-object v1, p0, Lq3/b/l/l/h;->f:[C

    array-length v2, v1

    if-lt v0, v2, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    const-string v1, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lq3/b/l/l/h;->f:[C

    .line 2
    :cond_0
    iget-object v0, p0, Lq3/b/l/l/h;->f:[C

    iget v1, p0, Lq3/b/l/l/h;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lq3/b/l/l/h;->e:I

    aput-char p1, v0, v1

    return-void
.end method

.method public final b(Ljava/lang/String;II)V
    .locals 5

    sub-int/2addr p3, p2

    .line 1
    iget v0, p0, Lq3/b/l/l/h;->e:I

    add-int v1, v0, p3

    .line 2
    iget-object v2, p0, Lq3/b/l/l/h;->f:[C

    array-length v3, v2

    if-le v1, v3, :cond_1

    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    if-ge v1, v3, :cond_0

    move v1, v3

    :cond_0
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v1

    const-string v2, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lq3/b/l/l/h;->f:[C

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_2

    .line 3
    iget-object v2, p0, Lq3/b/l/l/h;->f:[C

    add-int v3, v0, v1

    add-int v4, p2, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_2
    iget p1, p0, Lq3/b/l/l/h;->e:I

    add-int/2addr p1, p3

    iput p1, p0, Lq3/b/l/l/h;->e:I

    return-void
.end method

.method public final c(Ljava/lang/String;I)Ljava/lang/Void;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lq3/b/l/l/h;->g:Ljava/lang/String;

    invoke-static {p2, p1, v0}, Ls1/a/a/a/v0/f/d;->l(ILjava/lang/String;Ljava/lang/String;)Lq3/b/l/l/d;

    move-result-object p1

    throw p1
.end method

.method public final e(Ljava/lang/String;I)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x39

    const/16 v0, 0x30

    if-le v0, p1, :cond_1

    goto :goto_1

    :cond_1
    if-lt p2, p1, :cond_2

    sub-int/2addr p1, v0

    goto :goto_4

    :cond_2
    :goto_1
    const/16 p2, 0x66

    const/16 v0, 0x61

    if-le v0, p1, :cond_3

    goto :goto_2

    :cond_3
    if-lt p2, p1, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    const/16 p2, 0x46

    const/16 v0, 0x41

    if-gt v0, p1, :cond_5

    if-lt p2, p1, :cond_5

    :goto_3
    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0xa

    :goto_4
    return p1

    :cond_5
    const-string p2, "Invalid toHexChar char \'"

    const-string v0, "\' in unicode escape"

    .line 3
    invoke-static {p2, p1, v0}, Le/d/c/a/a;->h2(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget p2, p0, Lq3/b/l/l/h;->a:I

    invoke-virtual {p0, p1, p2}, Lq3/b/l/l/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v1

    :cond_6
    const-string p1, "Unexpected EOF during unicode escape"

    .line 5
    invoke-virtual {p0, p1, p2}, Lq3/b/l/l/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v1
.end method

.method public final f()Z
    .locals 3

    .line 1
    iget-byte v0, p0, Lq3/b/l/l/h;->b:B

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method public final g()V
    .locals 12

    .line 1
    iget-object v0, p0, Lq3/b/l/l/h;->g:Ljava/lang/String;

    .line 2
    iget v1, p0, Lq3/b/l/l/h;->a:I

    .line 3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-ge v1, v2, :cond_13

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 5
    invoke-static {v2}, Lq3/b/l/l/i;->a(C)B

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-eqz v2, :cond_d

    if-eq v2, v6, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 6
    iput v1, p0, Lq3/b/l/l/h;->c:I

    .line 7
    iput-byte v2, p0, Lq3/b/l/l/h;->b:B

    add-int/2addr v1, v6

    .line 8
    iput v1, p0, Lq3/b/l/l/h;->a:I

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iput v1, p0, Lq3/b/l/l/h;->c:I

    .line 10
    iput v4, p0, Lq3/b/l/l/h;->e:I

    add-int/2addr v1, v6

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v7, "EOF"

    const/4 v8, 0x0

    if-ge v1, v2, :cond_c

    move v2, v1

    move v9, v2

    .line 12
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x22

    if-eq v10, v11, :cond_a

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x5c

    if-ne v10, v11, :cond_8

    .line 14
    invoke-virtual {p0, v0, v9, v2}, Lq3/b/l/l/h;->b(Ljava/lang/String;II)V

    add-int/lit8 v2, v2, 0x1

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_2

    move v9, v6

    goto :goto_2

    :cond_2
    move v9, v4

    :goto_2
    if-eqz v9, :cond_7

    add-int/lit8 v9, v2, 0x1

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v10, 0x75

    if-ne v2, v10, :cond_3

    add-int/lit8 v2, v9, 0x1

    .line 17
    invoke-virtual {p0, v0, v9}, Lq3/b/l/l/h;->e(Ljava/lang/String;I)I

    move-result v9

    shl-int/2addr v9, v3

    add-int/lit8 v10, v2, 0x1

    .line 18
    invoke-virtual {p0, v0, v2}, Lq3/b/l/l/h;->e(Ljava/lang/String;I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v9, v2

    add-int/lit8 v2, v10, 0x1

    .line 19
    invoke-virtual {p0, v0, v10}, Lq3/b/l/l/h;->e(Ljava/lang/String;I)I

    move-result v10

    shl-int/2addr v10, v5

    add-int/2addr v9, v10

    add-int/lit8 v10, v2, 0x1

    .line 20
    invoke-virtual {p0, v0, v2}, Lq3/b/l/l/h;->e(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v2, v9

    int-to-char v2, v2

    .line 21
    invoke-virtual {p0, v2}, Lq3/b/l/l/h;->a(C)V

    move v9, v10

    goto :goto_5

    .line 22
    :cond_3
    sget-object v11, Lq3/b/l/l/i;->a:[B

    if-ge v2, v10, :cond_4

    .line 23
    sget-object v10, Lq3/b/l/l/b;->a:[C

    aget-char v10, v10, v2

    goto :goto_3

    :cond_4
    move v10, v4

    :goto_3
    if-eqz v10, :cond_5

    move v11, v6

    goto :goto_4

    :cond_5
    move v11, v4

    :goto_4
    if-eqz v11, :cond_6

    .line 24
    invoke-virtual {p0, v10}, Lq3/b/l/l/h;->a(C)V

    :goto_5
    move v2, v9

    goto :goto_1

    .line 25
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid escaped char \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v9}, Lq3/b/l/l/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v8

    :cond_7
    const-string v0, "Unexpected EOF after escape character"

    .line 26
    invoke-virtual {p0, v0, v2}, Lq3/b/l/l/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v8

    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v2, v10, :cond_9

    goto/16 :goto_1

    .line 28
    :cond_9
    invoke-virtual {p0, v7, v2}, Lq3/b/l/l/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v8

    :cond_a
    if-ne v9, v1, :cond_b

    .line 29
    iput v9, p0, Lq3/b/l/l/h;->d:I

    sub-int v0, v2, v9

    .line 30
    iput v0, p0, Lq3/b/l/l/h;->e:I

    goto :goto_6

    .line 31
    :cond_b
    invoke-virtual {p0, v0, v9, v2}, Lq3/b/l/l/h;->b(Ljava/lang/String;II)V

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lq3/b/l/l/h;->d:I

    :goto_6
    add-int/2addr v2, v6

    .line 33
    iput v2, p0, Lq3/b/l/l/h;->a:I

    .line 34
    iput-byte v6, p0, Lq3/b/l/l/h;->b:B

    return-void

    .line 35
    :cond_c
    invoke-virtual {p0, v7, v1}, Lq3/b/l/l/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v8

    .line 36
    :cond_d
    iput v1, p0, Lq3/b/l/l/h;->c:I

    .line 37
    iput v1, p0, Lq3/b/l/l/h;->d:I

    .line 38
    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_e

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lq3/b/l/l/i;->a(C)B

    move-result v2

    if-nez v2, :cond_e

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 39
    :cond_e
    iput v1, p0, Lq3/b/l/l/h;->a:I

    .line 40
    iget v2, p0, Lq3/b/l/l/h;->d:I

    sub-int/2addr v1, v2

    iput v1, p0, Lq3/b/l/l/h;->e:I

    .line 41
    sget-object v3, Lq3/b/l/l/i;->a:[B

    if-eq v1, v5, :cond_f

    goto :goto_9

    :cond_f
    move v1, v4

    :goto_8
    if-ge v1, v5, :cond_11

    add-int v3, v2, v1

    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const-string v7, "null"

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v3, v7, :cond_10

    :goto_9
    move v6, v4

    goto :goto_a

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_11
    :goto_a
    if-eqz v6, :cond_12

    const/16 v4, 0xa

    .line 43
    :cond_12
    iput-byte v4, p0, Lq3/b/l/l/h;->b:B

    return-void

    .line 44
    :cond_13
    iput v1, p0, Lq3/b/l/l/h;->c:I

    .line 45
    iput-byte v3, p0, Lq3/b/l/l/h;->b:B

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    .line 1
    iget-byte v0, p0, Lq3/b/l/l/h;->b:B

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lq3/b/l/l/h;->c:I

    const-string v1, "Expected string or non-null literal"

    .line 3
    invoke-virtual {p0, v1, v0}, Lq3/b/l/l/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    const/4 v0, 0x0

    throw v0

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lq3/b/l/l/h;->i(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i(Z)Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lq3/b/l/l/h;->d:I

    if-gez v0, :cond_2

    .line 2
    iget-object v0, p0, Lq3/b/l/l/h;->f:[C

    iget v1, p0, Lq3/b/l/l/h;->e:I

    const/4 v2, 0x0

    add-int/2addr v1, v2

    const-string v3, "$this$concatToString"

    .line 3
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    array-length v3, v0

    const-string v4, "startIndex: "

    if-gt v1, v3, :cond_1

    if-ltz v1, :cond_0

    sub-int/2addr v1, v2

    .line 5
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v2, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, " > endIndex: "

    invoke-static {v4, v2, v0, v1}, Le/d/c/a/a;->m2(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, ", endIndex: "

    const-string v5, ", size: "

    invoke-static {v4, v2, v0, v1, v5}, Le/d/c/a/a;->F(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    iget-object v1, p0, Lq3/b/l/l/h;->g:Ljava/lang/String;

    iget v2, p0, Lq3/b/l/l/h;->e:I

    add-int/2addr v2, v0

    const-string v3, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p0}, Lq3/b/l/l/h;->g()V

    :cond_3
    return-object v3
.end method

.method public final j()Ljava/lang/String;
    .locals 3

    .line 1
    iget-byte v0, p0, Lq3/b/l/l/h;->b:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 2
    iget v0, p0, Lq3/b/l/l/h;->c:I

    const-string v1, "Expected string literal with quotes.\nUse \'isLenient = true\' in \'Json {}` builder to accept non-compliant JSON."

    .line 3
    invoke-virtual {p0, v1, v0}, Lq3/b/l/l/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v2

    .line 4
    :cond_0
    iget v0, p0, Lq3/b/l/l/h;->c:I

    const-string v1, "Expected string literal but \'null\' literal was found.\nUse \'coerceInputValues = true\' in \'Json {}` builder to coerce nulls to default values."

    .line 5
    invoke-virtual {p0, v1, v0}, Lq3/b/l/l/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v2

    .line 6
    :cond_1
    invoke-virtual {p0, v1}, Lq3/b/l/l/h;->i(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "JsonReader(source=\'"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lq3/b/l/l/h;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', currentPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lq3/b/l/l/h;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tokenClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lq3/b/l/l/h;->b:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tokenPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lq3/b/l/l/h;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lq3/b/l/l/h;->d:I

    const/16 v2, 0x29

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->I2(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
