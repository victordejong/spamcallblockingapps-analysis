.class public final Lp3/a/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/a1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lp3/a/a1<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:[Lp3/a/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lp3/a/a1<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final c:I


# direct methods
.method public constructor <init>(I[Lp3/a/a1;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lp3/a/a1<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lp3/a/y0;->a:I

    .line 3
    iput-object p2, p0, Lp3/a/y0;->b:[Lp3/a/a1;

    .line 4
    iput p3, p0, Lp3/a/y0;->c:I

    return-void
.end method

.method public static c(Lp3/a/a1;ILp3/a/a1;II)Lp3/a/a1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lp3/a/a1<",
            "TK;TV;>;I",
            "Lp3/a/a1<",
            "TK;TV;>;II)",
            "Lp3/a/a1<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p4}, Lp3/a/y0;->d(II)I

    move-result v0

    .line 2
    invoke-static {p3, p4}, Lp3/a/y0;->d(II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    add-int/lit8 p4, p4, 0x5

    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Lp3/a/y0;->c(Lp3/a/a1;ILp3/a/a1;II)Lp3/a/a1;

    move-result-object p0

    new-array p1, v3, [Lp3/a/a1;

    aput-object p0, p1, v2

    .line 4
    new-instance p2, Lp3/a/y0;

    invoke-interface {p0}, Lp3/a/a1;->size()I

    move-result p0

    invoke-direct {p2, v0, p1, p0}, Lp3/a/y0;-><init>(I[Lp3/a/a1;I)V

    return-object p2

    :cond_0
    ushr-int/2addr p1, p4

    and-int/lit8 p1, p1, 0x1f

    ushr-int/2addr p3, p4

    and-int/lit8 p3, p3, 0x1f

    if-le p1, p3, :cond_1

    move-object v4, p2

    move-object p2, p0

    move-object p0, v4

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [Lp3/a/a1;

    aput-object p0, p1, v2

    aput-object p2, p1, v3

    .line 5
    new-instance p3, Lp3/a/y0;

    or-int p4, v0, v1

    invoke-interface {p0}, Lp3/a/a1;->size()I

    move-result p0

    invoke-interface {p2}, Lp3/a/a1;->size()I

    move-result p2

    add-int/2addr p2, p0

    invoke-direct {p3, p4, p1, p2}, Lp3/a/y0;-><init>(I[Lp3/a/a1;I)V

    return-object p3
.end method

.method public static d(II)I
    .locals 0

    ushr-int/2addr p0, p1

    and-int/lit8 p0, p0, 0x1f

    const/4 p1, 0x1

    shl-int p0, p1, p0

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;II)TV;"
        }
    .end annotation

    .line 1
    invoke-static {p2, p3}, Lp3/a/y0;->d(II)I

    move-result v0

    .line 2
    iget v1, p0, Lp3/a/y0;->a:I

    and-int v2, v1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    .line 4
    iget-object v1, p0, Lp3/a/y0;->b:[Lp3/a/a1;

    aget-object v0, v1, v0

    add-int/lit8 p3, p3, 0x5

    invoke-interface {v0, p1, p2, p3}, Lp3/a/a1;->a(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;II)Lp3/a/a1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;II)",
            "Lp3/a/a1<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {p3, p4}, Lp3/a/y0;->d(II)I

    move-result v0

    .line 2
    iget v1, p0, Lp3/a/y0;->a:I

    add-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    .line 3
    iget v2, p0, Lp3/a/y0;->a:I

    and-int v3, v2, v0

    if-nez v3, :cond_0

    or-int p3, v2, v0

    .line 4
    iget-object p4, p0, Lp3/a/y0;->b:[Lp3/a/a1;

    array-length v0, p4

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lp3/a/a1;

    const/4 v2, 0x0

    .line 5
    invoke-static {p4, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    new-instance p4, Lp3/a/z0;

    invoke-direct {p4, p1, p2}, Lp3/a/z0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p4, v0, v1

    .line 7
    iget-object p1, p0, Lp3/a/y0;->b:[Lp3/a/a1;

    add-int/lit8 p2, v1, 0x1

    array-length p4, p1

    sub-int/2addr p4, v1

    invoke-static {p1, v1, v0, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    new-instance p1, Lp3/a/y0;

    .line 9
    iget p2, p0, Lp3/a/y0;->c:I

    add-int/lit8 p2, p2, 0x1

    .line 10
    invoke-direct {p1, p3, v0, p2}, Lp3/a/y0;-><init>(I[Lp3/a/a1;I)V

    return-object p1

    .line 11
    :cond_0
    iget-object v0, p0, Lp3/a/y0;->b:[Lp3/a/a1;

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lp3/a/a1;

    .line 12
    iget-object v2, p0, Lp3/a/y0;->b:[Lp3/a/a1;

    aget-object v2, v2, v1

    add-int/lit8 p4, p4, 0x5

    .line 13
    invoke-interface {v2, p1, p2, p3, p4}, Lp3/a/a1;->b(Ljava/lang/Object;Ljava/lang/Object;II)Lp3/a/a1;

    move-result-object p1

    aput-object p1, v0, v1

    .line 14
    iget p1, p0, Lp3/a/y0;->c:I

    .line 15
    aget-object p2, v0, v1

    invoke-interface {p2}, Lp3/a/a1;->size()I

    move-result p2

    add-int/2addr p2, p1

    .line 16
    iget-object p1, p0, Lp3/a/y0;->b:[Lp3/a/a1;

    aget-object p1, p1, v1

    invoke-interface {p1}, Lp3/a/a1;->size()I

    move-result p1

    sub-int/2addr p2, p1

    .line 17
    new-instance p1, Lp3/a/y0;

    iget p3, p0, Lp3/a/y0;->a:I

    invoke-direct {p1, p3, v0, p2}, Lp3/a/y0;-><init>(I[Lp3/a/a1;I)V

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lp3/a/y0;->c:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, "CompressedIndex("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    iget v2, p0, Lp3/a/y0;->a:I

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "bitmap=%s "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lp3/a/y0;->b:[Lp3/a/a1;

    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v1, ")"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
