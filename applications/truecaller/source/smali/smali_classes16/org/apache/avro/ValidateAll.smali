.class public final Lorg/apache/avro/ValidateAll;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/SchemaValidator;


# instance fields
.field private final strategy:Lorg/apache/avro/SchemaValidationStrategy;


# direct methods
.method public constructor <init>(Lorg/apache/avro/SchemaValidationStrategy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/avro/ValidateAll;->strategy:Lorg/apache/avro/SchemaValidationStrategy;

    return-void
.end method


# virtual methods
.method public validate(Lorg/apache/avro/Schema;Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/Schema;",
            "Ljava/lang/Iterable<",
            "Lorg/apache/avro/Schema;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/avro/SchemaValidationException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/Schema;

    .line 2
    iget-object v1, p0, Lorg/apache/avro/ValidateAll;->strategy:Lorg/apache/avro/SchemaValidationStrategy;

    invoke-interface {v1, p1, v0}, Lorg/apache/avro/SchemaValidationStrategy;->validate(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)V

    goto :goto_0

    :cond_0
    return-void
.end method
