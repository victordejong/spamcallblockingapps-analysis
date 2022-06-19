.class public abstract Lorg/apache/avro/io/ParsingEncoder;
.super Lorg/apache/avro/io/Encoder;
.source "SourceFile"


# instance fields
.field private counts:[J

.field public pos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/io/Encoder;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [J

    .line 2
    iput-object v0, p0, Lorg/apache/avro/io/ParsingEncoder;->counts:[J

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lorg/apache/avro/io/ParsingEncoder;->pos:I

    return-void
.end method


# virtual methods
.method public final depth()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/avro/io/ParsingEncoder;->pos:I

    return v0
.end method

.method public final pop()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ParsingEncoder;->counts:[J

    iget v1, p0, Lorg/apache/avro/io/ParsingEncoder;->pos:I

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 2
    iput v1, p0, Lorg/apache/avro/io/ParsingEncoder;->pos:I

    return-void

    .line 3
    :cond_0
    new-instance v0, Lorg/apache/avro/AvroTypeException;

    const-string v1, "Incorrect number of items written. "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/avro/io/ParsingEncoder;->counts:[J

    iget v3, p0, Lorg/apache/avro/io/ParsingEncoder;->pos:I

    aget-wide v3, v2, v3

    const-string v2, " more required."

    invoke-static {v1, v3, v4, v2}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final push()V
    .locals 4

    .line 1
    iget v0, p0, Lorg/apache/avro/io/ParsingEncoder;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/avro/io/ParsingEncoder;->pos:I

    iget-object v1, p0, Lorg/apache/avro/io/ParsingEncoder;->counts:[J

    array-length v2, v1

    if-ne v0, v2, :cond_0

    add-int/lit8 v0, v0, 0xa

    .line 2
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lorg/apache/avro/io/ParsingEncoder;->counts:[J

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/avro/io/ParsingEncoder;->counts:[J

    iget v1, p0, Lorg/apache/avro/io/ParsingEncoder;->pos:I

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    return-void
.end method

.method public setItemCount(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ParsingEncoder;->counts:[J

    iget v1, p0, Lorg/apache/avro/io/ParsingEncoder;->pos:I

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 2
    aput-wide p1, v0, v1

    return-void

    .line 3
    :cond_0
    new-instance p1, Lorg/apache/avro/AvroTypeException;

    const-string p2, "Incorrect number of items written. "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/avro/io/ParsingEncoder;->counts:[J

    iget v1, p0, Lorg/apache/avro/io/ParsingEncoder;->pos:I

    aget-wide v1, v0, v1

    const-string v0, " more required."

    invoke-static {p2, v1, v2, v0}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startItem()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/ParsingEncoder;->counts:[J

    iget v1, p0, Lorg/apache/avro/io/ParsingEncoder;->pos:I

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    aput-wide v2, v0, v1

    return-void
.end method
