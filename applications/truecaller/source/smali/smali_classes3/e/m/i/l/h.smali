.class public Le/m/i/l/h;
.super Le/m/i/l/n;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/i/l/n;-><init>()V

    return-void
.end method

.method public static e([ZI[I)I
    .locals 5

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p2, v2

    add-int/lit8 v4, p1, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v1

    .line 2
    :goto_1
    aput-boolean v3, p0, p1

    add-int/lit8 v2, v2, 0x1

    move p1, v4

    goto :goto_0

    :cond_1
    const/16 p0, 0x9

    return p0
.end method

.method public static f(Ljava/lang/String;I)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const-string v5, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    mul-int/2addr v4, v3

    add-int/2addr v2, v4

    add-int/2addr v3, v1

    if-le v3, p1, :cond_0

    move v3, v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3
    :cond_1
    rem-int/lit8 v2, v2, 0x2f

    return v2
.end method

.method public static g(I[I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x9

    if-ge v1, v2, :cond_1

    rsub-int/lit8 v2, v1, 0x8

    const/4 v3, 0x1

    shl-int v2, v3, v2

    and-int/2addr v2, p0

    if-nez v2, :cond_0

    move v3, v0

    .line 1
    :cond_0
    aput v3, p1, v1

    add-int/lit8 v1, v1, 0x1

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
    sget-object v0, Le/m/i/a;->d:Le/m/i/a;

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

    const-string p3, "Can only encode CODE_93, but got "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/lang/String;)[Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x50

    if-gt v0, v1, :cond_1

    const/16 v1, 0x9

    new-array v2, v1, [I

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x2

    mul-int/2addr v3, v1

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 3
    sget-object v5, Le/m/i/l/g;->a:[I

    const/16 v6, 0x2f

    aget v5, v5, v6

    invoke-static {v5, v2}, Le/m/i/l/h;->g(I[I)V

    .line 4
    new-array v3, v3, [Z

    const/4 v5, 0x0

    .line 5
    invoke-static {v3, v5, v2}, Le/m/i/l/h;->e([ZI[I)I

    move v7, v1

    :goto_0
    const-string v8, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    if-ge v5, v0, :cond_0

    .line 6
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 7
    sget-object v9, Le/m/i/l/g;->a:[I

    aget v8, v9, v8

    invoke-static {v8, v2}, Le/m/i/l/h;->g(I[I)V

    .line 8
    invoke-static {v3, v7, v2}, Le/m/i/l/h;->e([ZI[I)I

    add-int/lit8 v7, v7, 0x9

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    .line 9
    invoke-static {p1, v0}, Le/m/i/l/h;->f(Ljava/lang/String;I)I

    move-result v0

    .line 10
    sget-object v5, Le/m/i/l/g;->a:[I

    aget v9, v5, v0

    invoke-static {v9, v2}, Le/m/i/l/h;->g(I[I)V

    .line 11
    invoke-static {v3, v7, v2}, Le/m/i/l/h;->e([ZI[I)I

    add-int/2addr v7, v1

    .line 12
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xf

    .line 13
    invoke-static {p1, v0}, Le/m/i/l/h;->f(Ljava/lang/String;I)I

    move-result p1

    .line 14
    aget p1, v5, p1

    invoke-static {p1, v2}, Le/m/i/l/h;->g(I[I)V

    .line 15
    invoke-static {v3, v7, v2}, Le/m/i/l/h;->e([ZI[I)I

    add-int/2addr v7, v1

    .line 16
    aget p1, v5, v6

    invoke-static {p1, v2}, Le/m/i/l/h;->g(I[I)V

    .line 17
    invoke-static {v3, v7, v2}, Le/m/i/l/h;->e([ZI[I)I

    add-int/2addr v7, v1

    .line 18
    aput-boolean v4, v3, v7

    return-object v3

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Requested contents should be less than 80 digits long, but got "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
