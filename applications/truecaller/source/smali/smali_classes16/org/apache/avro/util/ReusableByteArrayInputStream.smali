.class public Lorg/apache/avro/util/ReusableByteArrayInputStream;
.super Ljava/io/ByteArrayInputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 1
    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-void
.end method


# virtual methods
.method public setByteArray([BII)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    .line 2
    iput p2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/2addr p3, p2

    .line 3
    array-length p1, p1

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Ljava/io/ByteArrayInputStream;->count:I

    .line 4
    iput p2, p0, Ljava/io/ByteArrayInputStream;->mark:I

    return-void
.end method
