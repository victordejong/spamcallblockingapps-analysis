.class public Lorg/apache/avro/ValidateMutualRead;
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

.method public static canRead(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/avro/SchemaValidationException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/apache/avro/io/parsing/ResolvingGrammarGenerator;

    invoke-direct {v0}, Lorg/apache/avro/io/parsing/ResolvingGrammarGenerator;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/apache/avro/io/parsing/ResolvingGrammarGenerator;->generate(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/avro/io/parsing/Symbol;->hasErrors(Lorg/apache/avro/io/parsing/Symbol;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lorg/apache/avro/SchemaValidationException;

    invoke-direct {v0, p1, p0}, Lorg/apache/avro/SchemaValidationException;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)V

    throw v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Lorg/apache/avro/SchemaValidationException;

    invoke-direct {v1, p1, p0, v0}, Lorg/apache/avro/SchemaValidationException;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/lang/Throwable;)V

    throw v1
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

    .line 2
    invoke-static {p2, p1}, Lorg/apache/avro/ValidateMutualRead;->canRead(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)V

    return-void
.end method
