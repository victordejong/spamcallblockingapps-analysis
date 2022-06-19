.class public final Lorg/apache/avro/io/parsing/ResolvingGrammarGenerator$1;
.super Lorg/apache/avro/util/internal/Accessor$ResolvingGrammarGeneratorAccessor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/io/parsing/ResolvingGrammarGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/util/internal/Accessor$ResolvingGrammarGeneratorAccessor;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Lorg/apache/avro/io/Encoder;Lorg/apache/avro/Schema;Le/k/a/c/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lorg/apache/avro/io/parsing/ResolvingGrammarGenerator;->encode(Lorg/apache/avro/io/Encoder;Lorg/apache/avro/Schema;Le/k/a/c/l;)V

    return-void
.end method
