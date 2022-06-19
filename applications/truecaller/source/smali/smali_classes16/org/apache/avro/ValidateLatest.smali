.class public final Lorg/apache/avro/ValidateLatest;
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
    iput-object p1, p0, Lorg/apache/avro/ValidateLatest;->strategy:Lorg/apache/avro/SchemaValidationStrategy;

    return-void
.end method


# virtual methods
.method public validate(Lorg/apache/avro/Schema;Ljava/lang/Iterable;)V
    .locals 1
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

    .line 2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/avro/Schema;

    .line 4
    iget-object v0, p0, Lorg/apache/avro/ValidateLatest;->strategy:Lorg/apache/avro/SchemaValidationStrategy;

    invoke-interface {v0, p1, p2}, Lorg/apache/avro/SchemaValidationStrategy;->validate(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)V

    :cond_0
    return-void
.end method
