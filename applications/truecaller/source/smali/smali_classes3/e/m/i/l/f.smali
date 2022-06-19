.class public final Le/m/i/l/f;
.super Le/m/i/l/n;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/i/l/n;-><init>()V

    return-void
.end method

.method public static e(I[I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    rsub-int/lit8 v1, v0, 0x8

    const/4 v2, 0x1

    shl-int v1, v2, v1

    and-int/2addr v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    .line 1
    :goto_1
    aput v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Le/m/i/a;IILjava/util/Map;)Le/m/i/j/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le/m/i/a;",
            "II",
            "Ljava/util/Map<",
            "Le/m/i/c;",
            "*>;)",
            "Le/m/i/j/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/i/h;
        }
    .end annotation

    .line 1
    sget-object v0, Le/m/i/a;->c:Le/m/i/a;

    if-ne p2, v0, :cond_0

    .line 2
    invoke-super/range {p0 .. p5}, Le/m/i/l/n;->a(Ljava/lang/String;Le/m/i/a;IILjava/util/Map;)Le/m/i/j/b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Can only encode CODE_39, but got "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/lang/String;)[Z
    .locals 12

    .line 1
    sget-object v0, Le/m/i/l/e;->a:[I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Requested contents should be less than 80 digits long, but got "

    const/16 v3, 0x50

    if-gt v1, v3, :cond_15

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const-string v6, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

    if-ge v5, v1, :cond_11

    .line 2
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_10

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v7, v4

    :goto_1
    if-ge v7, v1, :cond_e

    .line 5
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eqz v8, :cond_d

    const/16 v9, 0x20

    if-eq v8, v9, :cond_c

    const/16 v10, 0x40

    if-eq v8, v10, :cond_b

    const/16 v10, 0x60

    if-eq v8, v10, :cond_a

    const/16 v10, 0x2d

    if-eq v8, v10, :cond_c

    const/16 v10, 0x2e

    if-eq v8, v10, :cond_c

    const/16 v10, 0x1a

    if-gt v8, v10, :cond_0

    const/16 v9, 0x24

    .line 6
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v8, v8, 0x41

    int-to-char v8, v8

    .line 7
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_0
    const/16 v10, 0x25

    if-ge v8, v9, :cond_1

    .line 8
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, -0x1b

    add-int/lit8 v8, v8, 0x41

    int-to-char v8, v8

    .line 9
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_1
    const/16 v9, 0x2c

    const/16 v11, 0x2f

    if-le v8, v9, :cond_9

    if-eq v8, v11, :cond_9

    const/16 v9, 0x3a

    if-ne v8, v9, :cond_2

    goto/16 :goto_2

    :cond_2
    const/16 v9, 0x39

    if-gt v8, v9, :cond_3

    add-int/lit8 v8, v8, -0x30

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    .line 10
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_3
    const/16 v9, 0x3f

    if-gt v8, v9, :cond_4

    .line 11
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, -0x3b

    add-int/lit8 v8, v8, 0x46

    int-to-char v8, v8

    .line 12
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_4
    const/16 v9, 0x5a

    if-gt v8, v9, :cond_5

    add-int/lit8 v8, v8, -0x41

    add-int/lit8 v8, v8, 0x41

    int-to-char v8, v8

    .line 13
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_5
    const/16 v9, 0x5f

    if-gt v8, v9, :cond_6

    .line 14
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, -0x5b

    add-int/lit8 v8, v8, 0x4b

    int-to-char v8, v8

    .line 15
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    const/16 v9, 0x7a

    if-gt v8, v9, :cond_7

    const/16 v9, 0x2b

    .line 16
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, -0x61

    add-int/lit8 v8, v8, 0x41

    int-to-char v8, v8

    .line 17
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    const/16 v9, 0x7f

    if-gt v8, v9, :cond_8

    .line 18
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, -0x7b

    add-int/2addr v8, v3

    int-to-char v8, v8

    .line 19
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 20
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested content contains a non-encodable character: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_9
    :goto_2
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, -0x21

    add-int/lit8 v8, v8, 0x41

    int-to-char v8, v8

    .line 22
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_a
    const-string v8, "%W"

    .line 23
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_b
    const-string v8, "%V"

    .line 24
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 25
    :cond_c
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_d
    const-string v8, "%U"

    .line 26
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 27
    :cond_e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v3, :cond_f

    goto :goto_4

    .line 29
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " (extended full ASCII mode)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_11
    :goto_4
    const/16 v2, 0x9

    new-array v3, v2, [I

    add-int/lit8 v5, v1, 0x19

    move v7, v4

    :goto_5
    if-ge v7, v1, :cond_13

    .line 30
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 31
    aget v8, v0, v8

    invoke-static {v8, v3}, Le/m/i/l/f;->e(I[I)V

    move v8, v4

    :goto_6
    if-ge v8, v2, :cond_12

    .line 32
    aget v9, v3, v8

    add-int/2addr v5, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 33
    :cond_13
    new-array v2, v5, [Z

    const/16 v5, 0x94

    .line 34
    invoke-static {v5, v3}, Le/m/i/l/f;->e(I[I)V

    const/4 v7, 0x1

    .line 35
    invoke-static {v2, v4, v3, v7}, Le/m/i/l/n;->b([ZI[IZ)I

    move-result v8

    new-array v9, v7, [I

    aput v7, v9, v4

    .line 36
    invoke-static {v2, v8, v9, v4}, Le/m/i/l/n;->b([ZI[IZ)I

    move-result v10

    add-int/2addr v10, v8

    move v8, v4

    :goto_7
    if-ge v8, v1, :cond_14

    .line 37
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 38
    aget v11, v0, v11

    invoke-static {v11, v3}, Le/m/i/l/f;->e(I[I)V

    .line 39
    invoke-static {v2, v10, v3, v7}, Le/m/i/l/n;->b([ZI[IZ)I

    move-result v11

    add-int/2addr v11, v10

    .line 40
    invoke-static {v2, v11, v9, v4}, Le/m/i/l/n;->b([ZI[IZ)I

    move-result v10

    add-int/2addr v10, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 41
    :cond_14
    invoke-static {v5, v3}, Le/m/i/l/f;->e(I[I)V

    .line 42
    invoke-static {v2, v10, v3, v7}, Le/m/i/l/n;->b([ZI[IZ)I

    return-object v2

    .line 43
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
