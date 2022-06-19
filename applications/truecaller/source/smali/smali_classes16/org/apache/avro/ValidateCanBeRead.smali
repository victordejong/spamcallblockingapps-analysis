.class public Lorg/apache/avro/ValidateCanBeRead;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/SchemaValidationStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/avro/SchemaValidationException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lorg/apache/avro/ValidateMutualRead;->canRead(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)V

    return-void
.end method
