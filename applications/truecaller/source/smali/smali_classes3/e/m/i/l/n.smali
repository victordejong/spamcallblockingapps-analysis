.class public abstract Le/m/i/l/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/i/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b([ZI[IZ)I
    .locals 7

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    aget v4, p2, v2

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_0

    add-int/lit8 v6, p1, 0x1

    .line 2
    aput-boolean p3, p0, p1

    add-int/lit8 v5, v5, 0x1

    move p1, v6

    goto :goto_1

    :cond_0
    add-int/2addr v3, v4

    xor-int/lit8 p3, p3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method


# virtual methods
.method public a(Ljava/lang/String;Le/m/i/a;IILjava/util/Map;)Le/m/i/j/b;
    .locals 4
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
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    if-ltz p3, :cond_3

    if-ltz p4, :cond_3

    .line 2
    invoke-virtual {p0}, Le/m/i/l/n;->d()I

    move-result p2

    if-eqz p5, :cond_0

    .line 3
    sget-object v0, Le/m/i/c;->f:Le/m/i/c;

    invoke-interface {p5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Le/m/i/l/n;->c(Ljava/lang/String;)[Z

    move-result-object p1

    .line 6
    array-length p5, p1

    add-int/2addr p2, p5

    .line 7
    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p3

    const/4 v0, 0x1

    .line 8
    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 9
    div-int p2, p3, p2

    mul-int v0, p5, p2

    sub-int v0, p3, v0

    .line 10
    div-int/lit8 v0, v0, 0x2

    .line 11
    new-instance v1, Le/m/i/j/b;

    invoke-direct {v1, p3, p4}, Le/m/i/j/b;-><init>(II)V

    const/4 p3, 0x0

    move v2, p3

    :goto_0
    if-ge v2, p5, :cond_2

    .line 12
    aget-boolean v3, p1, v2

    if-eqz v3, :cond_1

    .line 13
    invoke-virtual {v1, v0, p3, p2, p4}, Le/m/i/j/b;->c(IIII)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, p2

    goto :goto_0

    :cond_2
    return-object v1

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "Negative size is not allowed. Input: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x78

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Found empty contents"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract c(Ljava/lang/String;)[Z
.end method

.method public d()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method
