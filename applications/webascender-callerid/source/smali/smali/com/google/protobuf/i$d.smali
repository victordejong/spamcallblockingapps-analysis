.class final Lcom/google/protobuf/i$d;
.super Lcom/google/protobuf/i$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final j:I

.field private final k:I


# direct methods
.method constructor <init>([BII)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/i$i;-><init>([B)V

    add-int v0, p2, p3

    .line 2
    array-length p1, p1

    invoke-static {p2, v0, p1}, Lcom/google/protobuf/i;->g(III)I

    .line 3
    iput p2, p0, Lcom/google/protobuf/i$d;->j:I

    .line 4
    iput p3, p0, Lcom/google/protobuf/i$d;->k:I

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "BoundedByteStream instances are not to be serialized directly"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected I()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/i$d;->j:I

    return v0
.end method

.method public c(I)B
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/i$d;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/protobuf/i;->d(II)V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/i$i;->i:[B

    iget v1, p0, Lcom/google/protobuf/i$d;->j:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method protected k([BIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/i$i;->i:[B

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/i$d;->I()I

    move-result v1

    add-int/2addr v1, p2

    .line 3
    invoke-static {v0, v1, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method m(I)B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/i$i;->i:[B

    iget v1, p0, Lcom/google/protobuf/i$d;->j:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/i$d;->k:I

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/i;->w()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/i;->E([B)Lcom/google/protobuf/i;

    move-result-object v0

    return-object v0
.end method
