.class public abstract Lorg/apache/avro/specific/SpecificExceptionBase;
.super Lorg/apache/avro/AvroRemoteException;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/specific/SpecificRecord;
.implements Ljava/io/Externalizable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/AvroRemoteException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/avro/AvroRemoteException;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/apache/avro/AvroRemoteException;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/avro/AvroRemoteException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/apache/avro/specific/SpecificExceptionBase;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_2

    return v2

    .line 3
    :cond_2
    invoke-static {}, Lorg/apache/avro/specific/SpecificData;->get()Lorg/apache/avro/specific/SpecificData;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/avro/specific/SpecificExceptionBase;->getSchema()Lorg/apache/avro/Schema;

    move-result-object v3

    invoke-virtual {v1, p0, p1, v3}, Lorg/apache/avro/generic/GenericData;->compare(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/avro/Schema;)I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0
.end method

.method public abstract get(I)Ljava/lang/Object;
.end method

.method public abstract getSchema()Lorg/apache/avro/Schema;
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-static {}, Lorg/apache/avro/specific/SpecificData;->get()Lorg/apache/avro/specific/SpecificData;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/avro/specific/SpecificExceptionBase;->getSchema()Lorg/apache/avro/Schema;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/avro/generic/GenericData;->hashCode(Ljava/lang/Object;Lorg/apache/avro/Schema;)I

    move-result v0

    return v0
.end method

.method public abstract put(ILjava/lang/Object;)V
.end method

.method public abstract readExternal(Ljava/io/ObjectInput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeExternal(Ljava/io/ObjectOutput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
