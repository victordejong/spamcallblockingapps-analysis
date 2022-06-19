.class public Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/io/BinaryDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BufferAccessor"
.end annotation


# instance fields
.field private buf:[B

.field private final decoder:Lorg/apache/avro/io/BinaryDecoder;

.field public detached:Z

.field private limit:I

.field private pos:I


# direct methods
.method private constructor <init>(Lorg/apache/avro/io/BinaryDecoder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->detached:Z

    .line 4
    iput-object p1, p0, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->decoder:Lorg/apache/avro/io/BinaryDecoder;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/avro/io/BinaryDecoder;Lorg/apache/avro/io/BinaryDecoder$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;-><init>(Lorg/apache/avro/io/BinaryDecoder;)V

    return-void
.end method


# virtual methods
.method public detach()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->decoder:Lorg/apache/avro/io/BinaryDecoder;

    invoke-static {v0}, Lorg/apache/avro/io/BinaryDecoder;->access$200(Lorg/apache/avro/io/BinaryDecoder;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->buf:[B

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->decoder:Lorg/apache/avro/io/BinaryDecoder;

    invoke-static {v0}, Lorg/apache/avro/io/BinaryDecoder;->access$300(Lorg/apache/avro/io/BinaryDecoder;)I

    move-result v0

    iput v0, p0, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->pos:I

    .line 3
    iget-object v0, p0, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->decoder:Lorg/apache/avro/io/BinaryDecoder;

    invoke-static {v0}, Lorg/apache/avro/io/BinaryDecoder;->access$400(Lorg/apache/avro/io/BinaryDecoder;)I

    move-result v0

    iput v0, p0, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->limit:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->detached:Z

    return-void
.end method

.method public getBuf()[B
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->detached:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->buf:[B

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->decoder:Lorg/apache/avro/io/BinaryDecoder;

    invoke-static {v0}, Lorg/apache/avro/io/BinaryDecoder;->access$200(Lorg/apache/avro/io/BinaryDecoder;)[B

    move-result-object v0

    return-object v0
.end method

.method public getLim()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->detached:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->limit:I

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->decoder:Lorg/apache/avro/io/BinaryDecoder;

    invoke-static {v0}, Lorg/apache/avro/io/BinaryDecoder;->access$400(Lorg/apache/avro/io/BinaryDecoder;)I

    move-result v0

    return v0
.end method

.method public getPos()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->detached:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->pos:I

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->decoder:Lorg/apache/avro/io/BinaryDecoder;

    invoke-static {v0}, Lorg/apache/avro/io/BinaryDecoder;->access$300(Lorg/apache/avro/io/BinaryDecoder;)I

    move-result v0

    return v0
.end method

.method public setBuf([BII)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->detached:Z

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->buf:[B

    add-int/2addr p3, p2

    .line 3
    iput p3, p0, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->limit:I

    .line 4
    iput p2, p0, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->pos:I

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->decoder:Lorg/apache/avro/io/BinaryDecoder;

    invoke-static {v0, p1}, Lorg/apache/avro/io/BinaryDecoder;->access$202(Lorg/apache/avro/io/BinaryDecoder;[B)[B

    .line 6
    iget-object p1, p0, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->decoder:Lorg/apache/avro/io/BinaryDecoder;

    add-int/2addr p3, p2

    invoke-static {p1, p3}, Lorg/apache/avro/io/BinaryDecoder;->access$402(Lorg/apache/avro/io/BinaryDecoder;I)I

    .line 7
    iget-object p1, p0, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->decoder:Lorg/apache/avro/io/BinaryDecoder;

    invoke-static {p1, p2}, Lorg/apache/avro/io/BinaryDecoder;->access$302(Lorg/apache/avro/io/BinaryDecoder;I)I

    .line 8
    iget-object p1, p0, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->decoder:Lorg/apache/avro/io/BinaryDecoder;

    invoke-static {p1, p2}, Lorg/apache/avro/io/BinaryDecoder;->access$502(Lorg/apache/avro/io/BinaryDecoder;I)I

    :goto_0
    return-void
.end method

.method public setLimit(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->detached:Z

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->limit:I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->decoder:Lorg/apache/avro/io/BinaryDecoder;

    invoke-static {v0, p1}, Lorg/apache/avro/io/BinaryDecoder;->access$402(Lorg/apache/avro/io/BinaryDecoder;I)I

    :goto_0
    return-void
.end method

.method public setPos(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->detached:Z

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->pos:I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/avro/io/BinaryDecoder$BufferAccessor;->decoder:Lorg/apache/avro/io/BinaryDecoder;

    invoke-static {v0, p1}, Lorg/apache/avro/io/BinaryDecoder;->access$302(Lorg/apache/avro/io/BinaryDecoder;I)I

    :goto_0
    return-void
.end method
