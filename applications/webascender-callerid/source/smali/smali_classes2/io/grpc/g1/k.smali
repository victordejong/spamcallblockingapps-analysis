.class Lio/grpc/g1/k;
.super Lio/grpc/f1/c;
.source "SourceFile"


# instance fields
.field private final f:Ln/f;


# direct methods
.method constructor <init>(Ln/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/f1/c;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/g1/k;->f:Ln/f;

    return-void
.end method


# virtual methods
.method public I(I)Lio/grpc/f1/s1;
    .locals 4

    .line 1
    new-instance v0, Ln/f;

    invoke-direct {v0}, Ln/f;-><init>()V

    .line 2
    iget-object v1, p0, Lio/grpc/g1/k;->f:Ln/f;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Ln/f;->B0(Ln/f;J)V

    .line 3
    new-instance p1, Lio/grpc/g1/k;

    invoke-direct {p1, v0}, Lio/grpc/g1/k;-><init>(Ln/f;)V

    return-object p1
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/g1/k;->f:Ln/f;

    invoke-virtual {v0}, Ln/f;->a()V

    return-void
.end method

.method public k()I
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/g1/k;->f:Ln/f;

    invoke-virtual {v0}, Ln/f;->p0()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public readUnsignedByte()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/g1/k;->f:Ln/f;

    invoke-virtual {v0}, Ln/f;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public w0([BII)V
    .locals 2

    :goto_0
    if-lez p3, :cond_1

    .line 1
    iget-object v0, p0, Lio/grpc/g1/k;->f:Ln/f;

    invoke-virtual {v0, p1, p2, p3}, Ln/f;->C([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EOF trying to read "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " bytes"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method
