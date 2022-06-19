.class public abstract Li/a/a/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final f:[Ljava/lang/Object;


# direct methods
.method protected constructor <init>([Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Li/a/a/d/a;-><init>([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method

.method protected constructor <init>([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator<",
            "*>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1, p2}, Li/a/a/d/a;->g([Ljava/lang/Object;Ljava/util/Comparator;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Li/a/a/d/a;->f:[Ljava/lang/Object;

    return-void
.end method

.method private static b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;TK;",
            "Ljava/util/Comparator<",
            "TK;>;)I"
        }
    .end annotation

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, 0x1

    return p0

    .line 1
    :cond_2
    invoke-interface {p2, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static c([Ljava/lang/Object;Ljava/util/Comparator;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator<",
            "TK;>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_3

    .line 2
    aget-object v4, p0, v2

    add-int/lit8 v5, v2, 0x1

    .line 3
    aget-object v5, p0, v5

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    .line 4
    invoke-interface {p1, v4, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-nez v6, :cond_1

    add-int/lit8 v3, v3, -0x2

    :cond_1
    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v3, 0x1

    .line 5
    aput-object v4, p0, v3

    add-int/lit8 v3, v1, 0x1

    .line 6
    aput-object v5, p0, v1

    move-object v1, v4

    :goto_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 7
    :cond_3
    array-length p1, p0

    if-eq p1, v3, :cond_4

    .line 8
    new-array p1, v3, [Ljava/lang/Object;

    .line 9
    invoke-static {p0, v0, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_4
    return-object p0
.end method

.method private static e([Ljava/lang/Object;III[Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "III[",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator<",
            "TK;>;)V"
        }
    .end annotation

    move v0, p1

    move v1, p2

    :goto_0
    if-ge p1, p3, :cond_2

    add-int/lit8 v2, p2, -0x1

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, p3, -0x1

    if-ge v1, v2, :cond_0

    .line 1
    aget-object v2, p0, v0

    aget-object v3, p0, v1

    .line 2
    invoke-static {v2, v3, p5}, Li/a/a/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    if-gtz v2, :cond_1

    .line 3
    :cond_0
    aget-object v2, p0, v0

    aput-object v2, p4, p1

    add-int/lit8 v2, p1, 0x1

    add-int/lit8 v3, v0, 0x1

    .line 4
    aget-object v3, p0, v3

    aput-object v3, p4, v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 5
    :cond_1
    aget-object v2, p0, v1

    aput-object v2, p4, p1

    add-int/lit8 v2, p1, 0x1

    add-int/lit8 v3, v1, 0x1

    .line 6
    aget-object v3, p0, v3

    aput-object v3, p4, v2

    add-int/lit8 v1, v1, 0x2

    :goto_1
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static f([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator<",
            "*>;)V"
        }
    .end annotation

    .line 1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    array-length v1, p0

    invoke-static {v0, v2, v1, p0, p1}, Li/a/a/d/a;->h([Ljava/lang/Object;II[Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method

.method private static g([Ljava/lang/Object;Ljava/util/Comparator;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator<",
            "*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "You must provide an even number of key/value pair arguments."

    invoke-static {v0, v1}, Li/a/a/d/d;->a(ZLjava/lang/String;)V

    .line 2
    array-length v0, p0

    if-nez v0, :cond_1

    return-object p0

    .line 3
    :cond_1
    invoke-static {p0, p1}, Li/a/a/d/a;->f([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 4
    invoke-static {p0, p1}, Li/a/a/d/a;->c([Ljava/lang/Object;Ljava/util/Comparator;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static h([Ljava/lang/Object;II[Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "II[",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator<",
            "*>;)V"
        }
    .end annotation

    sub-int v0, p2, p1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    add-int v0, p2, p1

    .line 1
    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v4, v0, 0x2

    .line 2
    invoke-static {p3, p1, v4, p0, p4}, Li/a/a/d/a;->h([Ljava/lang/Object;II[Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 3
    invoke-static {p3, v4, p2, p0, p4}, Li/a/a/d/a;->h([Ljava/lang/Object;II[Ljava/lang/Object;Ljava/util/Comparator;)V

    move-object v2, p0

    move v3, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 4
    invoke-static/range {v2 .. v7}, Li/a/a/d/a;->e([Ljava/lang/Object;III[Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Li/a/a/d/a;->f:[Ljava/lang/Object;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 2
    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    iget-object p1, p0, Li/a/a/d/a;->f:[Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    aget-object p1, p1, v1

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Li/a/a/d/a;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Li/a/a/d/a;

    .line 3
    iget-object v0, p0, Li/a/a/d/a;->f:[Ljava/lang/Object;

    iget-object p1, p1, Li/a/a/d/a;->f:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final forEach(Ljava/util/function/BiConsumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Li/a/a/d/a;->f:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2
    aget-object v2, v1, v0

    add-int/lit8 v3, v0, 0x1

    aget-object v1, v1, v3

    invoke-interface {p1, v2, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Li/a/a/d/a;->f:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/a/d/a;->f:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Li/a/a/d/a;->f:[Ljava/lang/Object;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    .line 3
    aget-object v2, v2, v3

    .line 4
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    :goto_1
    iget-object v3, p0, Li/a/a/d/a;->f:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    const-string v1, "}"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
