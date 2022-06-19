.class public abstract Lorg/apache/avro/specific/SpecificErrorBuilderBase;
.super Lorg/apache/avro/data/RecordBuilderBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/data/ErrorBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/apache/avro/specific/SpecificExceptionBase;",
        ">",
        "Lorg/apache/avro/data/RecordBuilderBase<",
        "TT;>;",
        "Lorg/apache/avro/data/ErrorBuilder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private cause:Ljava/lang/Throwable;

.field private errorConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation
.end field

.field private hasCause:Z

.field private hasValue:Z

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/apache/avro/Schema;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/avro/specific/SpecificData;->get()Lorg/apache/avro/specific/SpecificData;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/avro/data/RecordBuilderBase;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/specific/SpecificErrorBuilderBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/specific/SpecificErrorBuilderBase<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-static {}, Lorg/apache/avro/specific/SpecificData;->get()Lorg/apache/avro/specific/SpecificData;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/avro/data/RecordBuilderBase;-><init>(Lorg/apache/avro/data/RecordBuilderBase;Lorg/apache/avro/generic/GenericData;)V

    .line 3
    iget-object v0, p1, Lorg/apache/avro/specific/SpecificErrorBuilderBase;->errorConstructor:Ljava/lang/reflect/Constructor;

    iput-object v0, p0, Lorg/apache/avro/specific/SpecificErrorBuilderBase;->errorConstructor:Ljava/lang/reflect/Constructor;

    .line 4
    iget-object v0, p1, Lorg/apache/avro/specific/SpecificErrorBuilderBase;->value:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/avro/specific/SpecificErrorBuilderBase;->value:Ljava/lang/Object;

    .line 5
    iget-boolean v0, p1, Lorg/apache/avro/specific/SpecificErrorBuilderBase;->hasValue:Z

    iput-boolean v0, p0, Lorg/apache/avro/specific/SpecificErrorBuilderBase;->hasValue:Z

    .line 6
    iget-object v0, p1, Lorg/apache/avro/specific/SpecificErrorBuilderBase;->cause:Ljava/lang/Throwable;

    iput-object v0, p0, Lorg/apache/avro/specific/SpecificErrorBuilderBase;->cause:Ljava/lang/Throwable;

    .line 7
    iget-boolean p1, p1, Lorg/apache/avro/specific/SpecificErrorBuilderBase;->hasCause:Z

    iput-boolean p1, p0, Lorg/apache/avro/specific/SpecificErrorBuilderBase;->hasCause:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/specific/SpecificExceptionBase;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 8
    invoke-virtual {p1}, Lorg/apache/avro/specific/SpecificExceptionBase;->getSchema()Lorg/apache/avro/Schema;

    move-result-object v0

    invoke-static {}, Lorg/apache/avro/specific/SpecificData;->get()Lorg/apache/avro/specific/SpecificData;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/avro/data/RecordBuilderBase;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;)V

    .line 9
    invoke-virtual {p1}, Lorg/apache/avro/AvroRemoteException;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0, v0}, Lorg/apache/avro/specific/SpecificErrorBuilderBase;->setValue(Ljava/lang/Object;)Lorg/apache/avro/specific/SpecificErrorBuilderBase;

    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p0, p1}, Lorg/apache/avro/specific/SpecificErrorBuilderBase;->setCause(Ljava/lang/Throwable;)Lorg/apache/avro/specific/SpecificErrorBuilderBase;

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic clearCause()Lorg/apache/avro/data/ErrorBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/specific/SpecificErrorBuilderBase;->clearCause()Lorg/apache/avro/specific/SpecificErrorBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public clearCause()Lorg/apache/avro/specific/SpecificErrorBuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/specific/SpecificErrorBuilderBase<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/avro/specific/SpecificErrorBuilderBase;->cause:Ljava/lang/Throwable;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/apache/avro/specific/SpecificErrorBuilderBase;->hasCause:Z

    return-object p0
.end method

.method public bridge synthetic clearValue()Lorg/apache/avro/data/ErrorBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/specific/SpecificErrorBuilderBase;->clearValue()Lorg/apache/avro/specific/SpecificErrorBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public clearValue()Lorg/apache/avro/specific/SpecificErrorBuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/avro/specific/SpecificErrorBuilderBase<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/avro/specific/SpecificErrorBuilderBase;->value:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/apache/avro/specific/SpecificErrorBuilderBase;->hasValue:Z

    return-object p0
.end method

.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/specific/SpecificErrorBuilderBase;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/specific/SpecificErrorBuilderBase;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hasCause()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/avro/specific/SpecificErrorBuilderBase;->hasCause:Z

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/avro/specific/SpecificErrorBuilderBase;->hasValue:Z

    return v0
.end method

.method public bridge synthetic setCause(Ljava/lang/Throwable;)Lorg/apache/avro/data/ErrorBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/avro/specific/SpecificErrorBuilderBase;->setCause(Ljava/lang/Throwable;)Lorg/apache/avro/specific/SpecificErrorBuilderBase;

    move-result-object p1

    return-object p1
.end method

.method public setCause(Ljava/lang/Throwable;)Lorg/apache/avro/specific/SpecificErrorBuilderBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lorg/apache/avro/specific/SpecificErrorBuilderBase<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lorg/apache/avro/specific/SpecificErrorBuilderBase;->cause:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lorg/apache/avro/specific/SpecificErrorBuilderBase;->hasCause:Z

    return-object p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Lorg/apache/avro/data/ErrorBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/avro/specific/SpecificErrorBuilderBase;->setValue(Ljava/lang/Object;)Lorg/apache/avro/specific/SpecificErrorBuilderBase;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;)Lorg/apache/avro/specific/SpecificErrorBuilderBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/avro/specific/SpecificErrorBuilderBase<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lorg/apache/avro/specific/SpecificErrorBuilderBase;->value:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lorg/apache/avro/specific/SpecificErrorBuilderBase;->hasValue:Z

    return-object p0
.end method
