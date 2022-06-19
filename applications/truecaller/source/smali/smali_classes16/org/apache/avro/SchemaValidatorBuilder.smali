.class public final Lorg/apache/avro/SchemaValidatorBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private strategy:Lorg/apache/avro/SchemaValidationStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private valid()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaValidatorBuilder;->strategy:Lorg/apache/avro/SchemaValidationStrategy;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lorg/apache/avro/AvroRuntimeException;

    const-string v1, "SchemaValidationStrategy not specified in builder"

    invoke-direct {v0, v1}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public canBeReadStrategy()Lorg/apache/avro/SchemaValidatorBuilder;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/avro/ValidateCanBeRead;

    invoke-direct {v0}, Lorg/apache/avro/ValidateCanBeRead;-><init>()V

    iput-object v0, p0, Lorg/apache/avro/SchemaValidatorBuilder;->strategy:Lorg/apache/avro/SchemaValidationStrategy;

    return-object p0
.end method

.method public canReadStrategy()Lorg/apache/avro/SchemaValidatorBuilder;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/avro/ValidateCanRead;

    invoke-direct {v0}, Lorg/apache/avro/ValidateCanRead;-><init>()V

    iput-object v0, p0, Lorg/apache/avro/SchemaValidatorBuilder;->strategy:Lorg/apache/avro/SchemaValidationStrategy;

    return-object p0
.end method

.method public mutualReadStrategy()Lorg/apache/avro/SchemaValidatorBuilder;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/avro/ValidateMutualRead;

    invoke-direct {v0}, Lorg/apache/avro/ValidateMutualRead;-><init>()V

    iput-object v0, p0, Lorg/apache/avro/SchemaValidatorBuilder;->strategy:Lorg/apache/avro/SchemaValidationStrategy;

    return-object p0
.end method

.method public strategy(Lorg/apache/avro/SchemaValidationStrategy;)Lorg/apache/avro/SchemaValidatorBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/avro/SchemaValidatorBuilder;->strategy:Lorg/apache/avro/SchemaValidationStrategy;

    return-object p0
.end method

.method public validateAll()Lorg/apache/avro/SchemaValidator;
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/SchemaValidatorBuilder;->valid()V

    .line 2
    new-instance v0, Lorg/apache/avro/ValidateAll;

    iget-object v1, p0, Lorg/apache/avro/SchemaValidatorBuilder;->strategy:Lorg/apache/avro/SchemaValidationStrategy;

    invoke-direct {v0, v1}, Lorg/apache/avro/ValidateAll;-><init>(Lorg/apache/avro/SchemaValidationStrategy;)V

    return-object v0
.end method

.method public validateLatest()Lorg/apache/avro/SchemaValidator;
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/SchemaValidatorBuilder;->valid()V

    .line 2
    new-instance v0, Lorg/apache/avro/ValidateLatest;

    iget-object v1, p0, Lorg/apache/avro/SchemaValidatorBuilder;->strategy:Lorg/apache/avro/SchemaValidationStrategy;

    invoke-direct {v0, v1}, Lorg/apache/avro/ValidateLatest;-><init>(Lorg/apache/avro/SchemaValidationStrategy;)V

    return-object v0
.end method
