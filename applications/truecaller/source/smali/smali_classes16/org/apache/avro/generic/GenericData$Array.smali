.class public Lorg/apache/avro/generic/GenericData$Array;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/generic/GenericArray;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/generic/GenericData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Array"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TT;>;",
        "Lorg/apache/avro/generic/GenericArray<",
        "TT;>;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/avro/generic/GenericArray<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final EMPTY:[Ljava/lang/Object;


# instance fields
.field private elements:[Ljava/lang/Object;

.field private final schema:Lorg/apache/avro/Schema;

.field private size:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    sput-object v0, Lorg/apache/avro/generic/GenericData$Array;->EMPTY:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILorg/apache/avro/Schema;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    sget-object v0, Lorg/apache/avro/generic/GenericData$Array;->EMPTY:[Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 3
    sget-object v0, Lorg/apache/avro/Schema$Type;->ARRAY:Lorg/apache/avro/Schema$Type;

    invoke-virtual {p2}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iput-object p2, p0, Lorg/apache/avro/generic/GenericData$Array;->schema:Lorg/apache/avro/Schema;

    if-eqz p1, :cond_0

    .line 5
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    :cond_0
    return-void

    .line 6
    :cond_1
    new-instance p1, Lorg/apache/avro/AvroRuntimeException;

    const-string v0, "Not an array schema: "

    invoke-static {v0, p2}, Le/d/c/a/a;->G2(Ljava/lang/String;Lorg/apache/avro/Schema;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/avro/Schema;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/Schema;",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 8
    sget-object v0, Lorg/apache/avro/generic/GenericData$Array;->EMPTY:[Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 9
    sget-object v0, Lorg/apache/avro/Schema$Type;->ARRAY:Lorg/apache/avro/Schema$Type;

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getType()Lorg/apache/avro/Schema$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iput-object p1, p0, Lorg/apache/avro/generic/GenericData$Array;->schema:Lorg/apache/avro/Schema;

    if-eqz p2, :cond_0

    .line 11
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    .line 12
    invoke-virtual {p0, p2}, Ljava/util/AbstractList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void

    .line 13
    :cond_1
    new-instance p2, Lorg/apache/avro/AvroRuntimeException;

    const-string v0, "Not an array schema: "

    invoke-static {v0, p1}, Le/d/c/a/a;->G2(Ljava/lang/String;Lorg/apache/avro/Schema;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static synthetic access$100(Lorg/apache/avro/generic/GenericData$Array;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/avro/generic/GenericData$Array;->size:I

    return p0
.end method

.method public static synthetic access$200(Lorg/apache/avro/generic/GenericData$Array;)[Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/avro/generic/GenericData$Array;->size:I

    if-gt p1, v0, :cond_1

    if-ltz p1, :cond_1

    .line 2
    iget-object v1, p0, Lorg/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    shr-int/lit8 v2, v0, 0x1

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    .line 3
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lorg/apache/avro/generic/GenericData$Array;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget-object v0, p0, Lorg/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 6
    iget p1, p0, Lorg/apache/avro/generic/GenericData$Array;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/avro/generic/GenericData$Array;->size:I

    return-void

    .line 7
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Index "

    const-string v1, " out of bounds."

    invoke-static {v0, p1, v1}, Le/d/c/a/a;->l2(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public clear()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/avro/generic/GenericData$Array;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 2
    iput v2, p0, Lorg/apache/avro/generic/GenericData$Array;->size:I

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/avro/generic/GenericArray;

    invoke-virtual {p0, p1}, Lorg/apache/avro/generic/GenericData$Array;->compareTo(Lorg/apache/avro/generic/GenericArray;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/avro/generic/GenericArray;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/generic/GenericArray<",
            "TT;>;)I"
        }
    .end annotation

    .line 2
    invoke-static {}, Lorg/apache/avro/generic/GenericData;->get()Lorg/apache/avro/generic/GenericData;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/avro/generic/GenericData$Array;->getSchema()Lorg/apache/avro/Schema;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lorg/apache/avro/generic/GenericData;->compare(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/avro/Schema;)I

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/avro/generic/GenericData$Array;->size:I

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index "

    const-string v2, " out of bounds."

    invoke-static {v1, p1, v2}, Le/d/c/a/a;->l2(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSchema()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/generic/GenericData$Array;->schema:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/generic/GenericData$Array$1;

    invoke-direct {v0, p0}, Lorg/apache/avro/generic/GenericData$Array$1;-><init>(Lorg/apache/avro/generic/GenericData$Array;)V

    return-object v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/avro/generic/GenericData$Array;->size:I

    iget-object v1, p0, Lorg/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public prune()V
    .locals 4

    .line 1
    iget v0, p0, Lorg/apache/avro/generic/GenericData$Array;->size:I

    iget-object v1, p0, Lorg/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/avro/generic/GenericData$Array;->size:I

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v1, p0, Lorg/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    aget-object v2, v1, p1

    add-int/lit8 v0, v0, -0x1

    .line 3
    iput v0, p0, Lorg/apache/avro/generic/GenericData$Array;->size:I

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v0, p1

    .line 4
    invoke-static {v1, v3, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget-object p1, p0, Lorg/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    iget v0, p0, Lorg/apache/avro/generic/GenericData$Array;->size:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    return-object v2

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index "

    const-string v2, " out of bounds."

    invoke-static {v1, p1, v2}, Le/d/c/a/a;->l2(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lorg/apache/avro/generic/GenericData$Array;->size:I

    return-void
.end method

.method public reverse()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Lorg/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    aget-object v3, v2, v1

    .line 3
    aget-object v4, v2, v0

    aput-object v4, v2, v1

    .line 4
    aput-object v3, v2, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/avro/generic/GenericData$Array;->size:I

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/avro/generic/GenericData$Array;->elements:[Ljava/lang/Object;

    aget-object v1, v0, p1

    .line 3
    aput-object p2, v0, p1

    return-object v1

    .line 4
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Index "

    const-string v1, " out of bounds."

    invoke-static {v0, p1, v1}, Le/d/c/a/a;->l2(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/avro/generic/GenericData$Array;->size:I

    return v0
.end method
