.class public final Lorg/apache/avro/io/BinaryData$1;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/io/BinaryData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lorg/apache/avro/io/BinaryData$Decoders;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/io/BinaryData$1;->initialValue()Lorg/apache/avro/io/BinaryData$Decoders;

    move-result-object v0

    return-object v0
.end method

.method public initialValue()Lorg/apache/avro/io/BinaryData$Decoders;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/avro/io/BinaryData$Decoders;

    invoke-direct {v0}, Lorg/apache/avro/io/BinaryData$Decoders;-><init>()V

    return-object v0
.end method
