.class public Lorg/apache/avro/io/BinaryData$Decoders;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/io/BinaryData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Decoders"
.end annotation


# instance fields
.field private final d1:Lorg/apache/avro/io/BinaryDecoder;

.field private final d2:Lorg/apache/avro/io/BinaryDecoder;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/apache/avro/io/BinaryDecoder;

    const/4 v1, 0x0

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1, v1}, Lorg/apache/avro/io/BinaryDecoder;-><init>([BII)V

    iput-object v0, p0, Lorg/apache/avro/io/BinaryData$Decoders;->d1:Lorg/apache/avro/io/BinaryDecoder;

    .line 3
    new-instance v0, Lorg/apache/avro/io/BinaryDecoder;

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1, v1}, Lorg/apache/avro/io/BinaryDecoder;-><init>([BII)V

    iput-object v0, p0, Lorg/apache/avro/io/BinaryData$Decoders;->d2:Lorg/apache/avro/io/BinaryDecoder;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/avro/io/BinaryData$Decoders;)Lorg/apache/avro/io/BinaryDecoder;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/avro/io/BinaryData$Decoders;->d1:Lorg/apache/avro/io/BinaryDecoder;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/apache/avro/io/BinaryData$Decoders;)Lorg/apache/avro/io/BinaryDecoder;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/avro/io/BinaryData$Decoders;->d2:Lorg/apache/avro/io/BinaryDecoder;

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/BinaryData$Decoders;->d1:Lorg/apache/avro/io/BinaryDecoder;

    invoke-virtual {v0}, Lorg/apache/avro/io/BinaryDecoder;->clearBuf()V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/BinaryData$Decoders;->d2:Lorg/apache/avro/io/BinaryDecoder;

    invoke-virtual {v0}, Lorg/apache/avro/io/BinaryDecoder;->clearBuf()V

    return-void
.end method

.method public set([BII[BII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/BinaryData$Decoders;->d1:Lorg/apache/avro/io/BinaryDecoder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/avro/io/BinaryDecoder;->setBuf([BII)V

    .line 2
    iget-object p1, p0, Lorg/apache/avro/io/BinaryData$Decoders;->d2:Lorg/apache/avro/io/BinaryDecoder;

    invoke-virtual {p1, p4, p5, p6}, Lorg/apache/avro/io/BinaryDecoder;->setBuf([BII)V

    return-void
.end method
